Return-Path: <linux-ntb+bncBC5JXFXXVEGRBPOW6KEQMGQEVHJIDMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id A88A34076D1
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 15:12:30 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id g73-20020a379d4c000000b003d3ed03ca28sf35020531qke.23
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 06:12:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631365949; cv=pass;
        d=google.com; s=arc-20160816;
        b=EkN2/QtABmkF1aN002pLJ8Mbpv+gFzdqIJMy3UFrpgALTKAALVZaRPhI/ik8v5a6Xp
         ZVs0Wk2QRg4nAbf413IlWCH8K1jbMMoH51i0X01DyEGJPaajgcsc1XJqbfmFX5mkeVhg
         8ngFMrl+8TDKx34+uMegmJy95dAnNPyR8hdyS+mLF3/bb/5TQFGeaGMX1eAB7vRJT5Xv
         Tnxc/9/nknz5q1xhBxq2vlUr6ha0eOaXbLDD9JRn8ZdQKqfb01d9eDY+U7P9wAYIXtpV
         aFKAF7aFjnTtrB64MXyNF7f3jX18G55eac/D0d7dOUa8xVKCxudngs2/4ygudfPdeRbM
         IHKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=USYs/bThO0MzRSRZeGEfSo8NJULypOcSU02MfmptuJk=;
        b=SyJ478AxgaFfZzWnxxWGiD69QaryoKIjlvA9EsulIF0Vkp3CNLRQh2hXXrfwpHe8XV
         5M1OInKgyjbNa1xoh8QBdVKHS4LClb3ZLM8xbVhY2Qkkdj9Zu/pw5xGSEnIaAJqBBz5M
         vn02/uQSf/oL1qIvzhu7oIjITmFQ8ghe8nvOczM+wzRV3QrIyLRJuJQm1qLRGv1D78wc
         KFQJgbWX3b1y6UHJGtmw2jvCJOzE8N3nki0m17bUY9Or4jSuDyh35ZRw4dFpIjnnoISq
         RkyxpfaosFoOEeWZf9l2xKPjq2U+kzFPgeocmjXow2gdHKrqPhSHWrRLtg6GJ8bV0a8N
         WGzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RlYKeFDp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=USYs/bThO0MzRSRZeGEfSo8NJULypOcSU02MfmptuJk=;
        b=tPw//kLcYYXxCEuN9tOyHB4EZR3lTJ4z9LbrJapQbS3tkZGlTsOc1ndQ/OrfYFjF0e
         ZuLOEgaZFucSmQdmZqeQxiqwCMYs0uikPECGpBIFIpiI6vTaCpZfLpnRDJO1Yl2FoNE0
         S3at0upL3b12itBawWy9VSMH+eKiVqnJ0mnWv9Cb3DwAw4F7gacs+jA2uieEvbRIqO+H
         YA1Wue6bWsOpqQIbK74jOQ81oc2e7yYwH5CNwZ2Tu5vaFuH0/MQ3V/EKOtzfjXpjPXLg
         mTeirMV2BiOkO3G0w6OokrmQs6+AwcB5YPIdxoD/g/OOJu5rnlTaaZkgHAJBqakFG6um
         XgCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=USYs/bThO0MzRSRZeGEfSo8NJULypOcSU02MfmptuJk=;
        b=11RXsvhD40vqtBJXJN2uFpCs7eKa5Dn+n2QxAGId2jfSr/1szl2U4JbEk+ZBYEsa5I
         ngGFvN3RzWMoBIbcd+dO5SdAu5jMiw4jMgeg8pvHgtkX0DuZEzRtux0/GPVxp9gAH831
         eSzAj2OYvq8aU3FCxzfSddDpXyirXfzHCQMKi7KgDwTtDupNjDSBx3AwnFCdTFsz/A35
         rs08LyDGZLl0Rui4leleG3BImg+EiW0Xvu8H9Hzeg7kSCsUgGrcgMwOATvVlouh0duuY
         K2TN0HvZgUw/vYgfAwedAHDFRvJf7JErLMb6BZ4RUNOpzWP1faHDOVmvBo7RNc48EAli
         qJXA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531jH93f6olDSZrCgXeCTC6PGplfKGL2WiQDiQP3VzLLe7J8PGpj
	26w+NZgScoSUPAJ5OvICI2I=
X-Google-Smtp-Source: ABdhPJwNSCnv2X5wkRbf6H1v+OyFYppo/xns/LumuYbUsnFsts4KTaGZZ6FDVrDe6AEhttvP/zHHMw==
X-Received: by 2002:ac8:5a86:: with SMTP id c6mr2150330qtc.171.1631365949721;
        Sat, 11 Sep 2021 06:12:29 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:622a:180c:: with SMTP id t12ls1298014qtc.10.gmail; Sat,
 11 Sep 2021 06:12:29 -0700 (PDT)
X-Received: by 2002:ac8:4e2b:: with SMTP id d11mr2173925qtw.384.1631365949297;
        Sat, 11 Sep 2021 06:12:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631365949; cv=none;
        d=google.com; s=arc-20160816;
        b=pDSSW2ABKS/SfiXNOd/aqWIOWer7lm4IxY2zV66UmoSytX42T0N7xN56EMHsfwOf71
         Kq1srVSYceHwe7iRmU1LqzRYZbsBDgbxAavjdrHWqriqqIk0R6U39PN4YRAh2c3Vzzpm
         qPEofZg8SojZZzHB8+Q/f2DLkjM5aHfRJgKRzYUpWBm6pgdhHnQsOepE9SZY9kIy66L6
         trEmt678Rs+loMapYPWJniQvnjheUazk9sLuOPViALMQgIeWi4yoYkXvBzPv2Z/7yggR
         VLuS9y6aZDR2qQsUgyzsU4ddthyA79JWYNdHTk4mdq00YUceZDd5joudlcfxvx1v2IO9
         oLdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=mzFjWi4UwZIvNo9XY3++yXPjx/0mnps15J8Mx8+sBw4=;
        b=MxjVN4KHzVH1kHJiOtJ6i+xbAscf497IfkhBgmpGUuecCtvVXGsP8denrMKLmjCo+Y
         N3Eqivj7OX+Zw9x1gUsXv3YsLb6NFoSRHdFOJAWWI9I3g7JaVmFogl9BiMOMjebeuGzH
         xTcr6/bDEv1o8tiWMd9I6ij8TfB46cjn1+TW73uIH/9gyDsiCogUnZUny1Jlih0//KTF
         L/ZOneH/1JZItvHZaKBenX6g1T1uzp3fySNVEXSePK/k8d7UqCima6slL2VwHCFJKsOk
         bFz2E03683BmrLMdOdrygOlw9b+GQf4iR68TQ47lD49LcdeUixelqKt8c/aaXZ3KH3iw
         pPQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RlYKeFDp;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si144369qko.2.2021.09.11.06.12.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 06:12:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7AA67611C3;
	Sat, 11 Sep 2021 13:12:27 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.14 29/32] NTB: Fix an error code in ntb_msit_probe()
Date: Sat, 11 Sep 2021 09:11:46 -0400
Message-Id: <20210911131149.284397-29-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210911131149.284397-1-sashal@kernel.org>
References: <20210911131149.284397-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RlYKeFDp;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: list
Mailing-list: list linux-ntb@googlegroups.com; contact linux-ntb+owners@googlegroups.com
List-ID: <linux-ntb.googlegroups.com>
X-Spam-Checked-In-Group: linux-ntb@googlegroups.com
X-Google-Group-Id: 859317214201
List-Post: <https://groups.google.com/group/linux-ntb/post>, <mailto:linux-ntb@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:linux-ntb+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/linux-ntb
List-Subscribe: <https://groups.google.com/group/linux-ntb/subscribe>, <mailto:linux-ntb+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+859317214201+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/linux-ntb/subscribe>

From: Yang Li <yang.lee@linux.alibaba.com>

[ Upstream commit 319f83ac98d7afaabab84ce5281a819a358b9895 ]

When the value of nm->isr_ctx is false, the value of ret is 0.
So, we set ret to -ENOMEM to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_msi_test.c:373 ntb_msit_probe() warn: missing
error code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_msi_test.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
index 7095ecd6223a..4e18e08776c9 100644
--- a/drivers/ntb/test/ntb_msi_test.c
+++ b/drivers/ntb/test/ntb_msi_test.c
@@ -369,8 +369,10 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
 	if (ret)
 		goto remove_dbgfs;
 
-	if (!nm->isr_ctx)
+	if (!nm->isr_ctx) {
+		ret = -ENOMEM;
 		goto remove_dbgfs;
+	}
 
 	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210911131149.284397-29-sashal%40kernel.org.

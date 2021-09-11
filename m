Return-Path: <linux-ntb+bncBC5JXFXXVEGRBPWW6KEQMGQETBDXNBI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 119BF4076D2
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 15:12:32 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id k6-20020a6b3c060000b0290568c2302268sf10780003iob.16
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 06:12:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631365950; cv=pass;
        d=google.com; s=arc-20160816;
        b=mSkEDzOzmeEsfAi1nQamxKlbqPBHfriRF6t/JWSNJeEQ+PnYVMmjUpfi4fb1K9JJTo
         MEad9hC6eJF8ugl6NfH3+pSQIGiXyaCR7nLicFvg5qkL1da04rp7H+j4GUO7qARtgSRS
         K7AcaX3VIwS4ZIOzAAP3SYE2PTKj9yZGikvVAOJNCVuHjZdk7Hp+4paj81nBNfq+Ioj7
         qCh3LPp1nl+kNBSVq7GvfzR+82X5dBXAiW+Pk/xdrukXAzbpsLkZsJnDRsph/SF7bVQT
         TToauXwwmNkVZSeOb3yb7gCTfQcbTVe6kKmp5pXqU3ZXAJC7R9ND1SSHdeZnjmFyH/oK
         I4HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QdaaX+cY+gG6ZPKUj3rzsh+ZQzzXuPjgFIxR3lQel9w=;
        b=L1vkwXDHnn2ku0axZ+kgXLslwgZtJro8kSUS93lMZs6SAkVtPg69APea/nziXj+QPW
         +Q3Ip3ZrnOnpQDxyBeniw9dm0w49O4GfYUb1k+49MkH21Uq3YLFSuFyeybLhuz79LoYq
         wKXD6P4uOMzqsqneK7FlzIkgLkhO6jS7XWf0R3Ty6gltyi4G5NFQ5fTC7/hg7L7sSmhD
         FOeQEubS0+f+RAatyWPzeWU3FJ0stiz8n01DdrjqwkDZfqglHLY5cPchCQiOJ9tw8gxZ
         lf9WJ/sV5HhHwvwPQ9mxalvT8TRqvPyS1XrEeyCcm6RsiXooMgmaXTjCB6zG7mZcUZZH
         zAWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AkJCGrkH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QdaaX+cY+gG6ZPKUj3rzsh+ZQzzXuPjgFIxR3lQel9w=;
        b=RAcLCEnfFreqMVEDDGzHF4u7P4LqZF+E7nhmHVMUifmk9o4BfOFxd5h8iRGNAbtXnP
         gE4tGBp8O2OTz8qqYBDOEQY5MoWbRKcU3MRSGljpfTW0BOK9aslr9oaQsW+krfQkZzny
         sPVhAZzPq0nOD4KCqPj+Jrp3xW2V74KjmfKADK/monKHNn2mpik/IjIMjpkquIIIdytp
         lSDTRo3UTc3MOl1JzqwgRfj6xDSbzwYabT8FAC9ENSMTImr5CObA/7LZchc7RgOJeuFI
         8795mSN37G/byrS0XKDRfan6W1Xy0WsEnDZKODrW66bgziwsgr7badcbsncspWCuOAhf
         F6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QdaaX+cY+gG6ZPKUj3rzsh+ZQzzXuPjgFIxR3lQel9w=;
        b=BO42VMZM7DICkIcFLR+uTztnHtQKLJgPs89wsu32jaTeqjEuyko2B30NpuSICglFRn
         sxBj+HiSQHP7NC2Dj+LX2H3VNXsCjb+Te4gkZrFizrPjp2FwsmWekWaoYcQt2U6JVbU8
         kD5T6h51EAPkycGPECqO5whOiuiya/2CnhlQ5IYWtcM3gKyU12oDRXajcJ0yQ4AwaWyk
         BpgQE6Mysz6DkUNvzCFWPMc5mEbT9uyt8nQr7+kvTOvixE9tHGkJLexMBhbzNNLu5ujZ
         ktBv7LqEkCYTl0CQ46QpxYsfRRKQihvYoTtLUUod4EH5tQufBwfwzanVoNnsPQvWqSHE
         HzTA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5300OeiJhQQ8YxN6iXaXMM8KULFAO8X/1TPm7hDodMJFi8lfRdx4
	mHEp/oZQcJ10KG1XZ1J3y/Y=
X-Google-Smtp-Source: ABdhPJyly1ZeoJO1IiAHGKO4WufU4apr8WP9rj63MdG6XdiAm4ENU1A+aFXf0/CfVc9Cq8aQuLpslw==
X-Received: by 2002:a92:d445:: with SMTP id r5mr1781730ilm.255.1631365950700;
        Sat, 11 Sep 2021 06:12:30 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:198c:: with SMTP id g12ls213095ilf.9.gmail; Sat, 11
 Sep 2021 06:12:30 -0700 (PDT)
X-Received: by 2002:a92:7114:: with SMTP id m20mr1752531ilc.114.1631365950319;
        Sat, 11 Sep 2021 06:12:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631365950; cv=none;
        d=google.com; s=arc-20160816;
        b=mt5c3CRb3lvgGm/4lcHdsTKXsLD6N/mSJSav1vUw+h4O7sT4SkobDpK4rduhXKEpoW
         Y4a0y7B9Tq9kZ37AqGE+PJtm/Zlxz9OsTVXFtxMERrujYR1CAMCzMOvRlqhItn8V05Uk
         hUvSHYZ0rEHUfXBuVEYUxSdAlB5/zvGJUp0SmciwRw3bjYHS1X/1zw+sDYpRZXyN8C71
         0cnuULm3VEW7M+sGJHPB4mWtd40zZEJqZ5tl6NH6Ip/5Xkvh1YHHINDSxcTRqt1HK94j
         1n6dKXqhRlUCq3lgD+kHn+ekXQp4tcG+8Hi04P5Yq4BCynxW9v5zTwMrH8cufJYz9l6E
         tr1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=82D2tQnPZtrclkJU4nis6AIQJVpse4IZIU3/9KO6uUY=;
        b=J/gGYa4dDm7yGAbOEnxiG1kY19GbQ8wPU+bncHCFpMeDnX27rtzE7t/ifsaOWGWsq8
         lipm9BOjo2hXR61NRhCD4qboIuUZmddW7m1v2RDJS0Dkg8Cz1tdmic0RkU7OZOxBKbeR
         21QoYwpptZTsnFl+j61aJQY9VW89BaCkrg1N2ELr43QqTmv5DhQOM+s7EVnxgia+bA4E
         vNz/PxJSmFVHhMmnIuz0mk6/TltRJPHA8Y8Qx98tlXRXbB1YPJxz3EHl28N7ikyHgaab
         iHjVDF8lR9/JFvZZeGas1L1NvcWG99h9U+EHlaN5Fk3z+BhPROMqEwPtLI7narnpxtHr
         hfgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AkJCGrkH;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l68si224199iof.1.2021.09.11.06.12.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 06:12:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BD63961206;
	Sat, 11 Sep 2021 13:12:28 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.14 30/32] NTB: perf: Fix an error code in perf_setup_inbuf()
Date: Sat, 11 Sep 2021 09:11:47 -0400
Message-Id: <20210911131149.284397-30-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210911131149.284397-1-sashal@kernel.org>
References: <20210911131149.284397-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AkJCGrkH;       spf=pass
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

[ Upstream commit 0097ae5f7af5684f961a5f803ff7ad3e6f933668 ]

When the function IS_ALIGNED() returns false, the value of ret is 0.
So, we set ret to -EINVAL to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_perf.c:602 perf_setup_inbuf() warn: missing error
code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 89df1350fefd..65e1e5cf1b29 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -598,6 +598,7 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 		return -ENOMEM;
 	}
 	if (!IS_ALIGNED(peer->inbuf_xlat, xlat_align)) {
+		ret = -EINVAL;
 		dev_err(&perf->ntb->dev, "Unaligned inbuf allocated\n");
 		goto err_free_inbuf;
 	}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210911131149.284397-30-sashal%40kernel.org.

Return-Path: <linux-ntb+bncBC5JXFXXVEGRBCGX6KEQMGQEFIFEB2Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 07C3C4076FF
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 15:13:46 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id v33-20020a634821000000b002530e4cca7bsf3752802pga.10
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 06:13:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631366024; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tjypenw1vULy6hFQUEykHpG5fFDavyUTItGlFWpyySA5z9k4De96N9F/BaoJHiK0aJ
         qlfVe8AEhrhcc45V8TXe6D0JqwClzT1ZOPlMUygkUZ+XlrYiSUnpVZdq7oz63ZASNcYz
         7fBks4XoN6JVP/DJa0yLGl8zMG5Gova5Dft+ki5w4uY0b2BgMqsafPeXlfsFS5/9MQXx
         WiQzLaVqyA6TzTFwo5blG15CJ8WXwiUkG0uS3olYcVjO62lP9CvPz+MshMatDkcUAwPf
         MLynIl1tluUKtUqWZrutDM9TJJOplN2vrcIU8VKb4BX6HYk8PfJjSyQdvH82P75UkpX2
         17yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HNTbqBLMe74mpiCGGeRjGR08WdOUpykDHtVaPqoyQpI=;
        b=F006VOvaaCkL9KNJE3K+/glTNfYA2r1Ed/penO20UH50jFC6gyF8WEOp1Tf5P+FCwb
         /CJKLzzDGyw/QK6NvGUf5XD/0j6slVCqdaztubGVtSMmslbpGqT5/+4G3SM/wdb05haZ
         eCO5v3vNx5a4VLBzCLK2vFyv+lkaySJG8sOhke2tpyXKu1HbaQePhKYVYn8u6R57XiM7
         cmc+EFEL7OXm/VPIj7LBklOv2ZjGCMEjH9w2gt4yMIQDcwl5oF4e7kuIJ/r6ajZGO4ih
         bbevcydEazr9yFm/oN1+AZroOeVei0GofImjiqWmr6t08NEkb3XeZOF1enNx11pm3eEx
         ZNrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=f94983Sc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HNTbqBLMe74mpiCGGeRjGR08WdOUpykDHtVaPqoyQpI=;
        b=NiFuBh+kTYm86Zywd6s3Oh1gthcJ3L8NKSIRCEa6M0KtBjEheaDGJBwUzXt3IBUBvl
         RuxiEzCTETC7KhxRynzXgTGwToO3jS+w4uFjrTSGSyFMnBMwpDIzJoRe7QO23PMedEMU
         eHXaGMEi/OxjgIcSg0nhdHZAmYk+xlNJQBmLghznuNI4YB8H+gOAgfAlEdkw9ToRyp74
         C5d7IV9GOuEllIlmw+fbErZKvn7hrFqJIzDLymcl3m8Ff7mLVXTIPrVsdT/bCqPo+dUK
         ukafS3NctQWEJ6MhBJ0gz4uncms/NHdph7nKRaUSMMSRFyOMY6X2SpfmXTihCITnXFfD
         Lw9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HNTbqBLMe74mpiCGGeRjGR08WdOUpykDHtVaPqoyQpI=;
        b=havcm/g5xD94p+a0b0AKidp059w5Bu2MRW+r8qHuL9gS5eWySW2/PpeLXGr5o1kHIe
         McMaZ/h4VXOqqY2u8XfMulp0ybciwkGgW2wou+az1yfbtBXML/o5lJgor2XlEzjfJF7Y
         5m+wp6zrskFjz2GWI4NwAwX8YTpt8kvJKAjetqwvibWP3kxCLBMSZ9DT+zg4309Avv7m
         F5o4fRU+fY0n6+FL9n50GMLmsYdK4FhsCspLgWJ3FRZzjASXwTBfgGsrQE7XlXoUiqJQ
         jU2rnFb93sxLTweOBFv0jctSWJveST6tci9ixIO83yeJ4oAdIkm7EB3f9cUGkida303U
         bERw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532+2G5klYSrNftuSshKH2/BQaQ57GHSbDK3ybcIyO2eHvgiR9ZX
	KoG+qvgElqt26yD9YGaOpjM=
X-Google-Smtp-Source: ABdhPJww2V68wLZqeAibGrXd2ksZnDWHLGM3XU84nPn4RFhu3cwh093M7itbOQXtQTZO6yRG/SdzXA==
X-Received: by 2002:a65:6288:: with SMTP id f8mr2445547pgv.81.1631366024787;
        Sat, 11 Sep 2021 06:13:44 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:7f82:: with SMTP id a124ls610534pfd.2.gmail; Sat, 11 Sep
 2021 06:13:43 -0700 (PDT)
X-Received: by 2002:a63:4f43:: with SMTP id p3mr2405501pgl.435.1631366023796;
        Sat, 11 Sep 2021 06:13:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631366023; cv=none;
        d=google.com; s=arc-20160816;
        b=flEDQCnyP6ZBfGahObiu4RVn+sf1gT2d993u/y/PAlgml0EBsGW3Ba9qDp08Qs8PGI
         Dcmn53f4rcu340WD/a9nb56bCmxvxOGALwDmiukjA3Az031SgNt0341q8nRD9Zez5P+l
         Na/spZCzPDan2VfsGDxKUNJbZ8ucz0EUX7vZq01LB8G7QwM7ZRgmtEyBe6j8EiIdHNEa
         mKMCkdpNWDTvNzsmxQf8PXV0aOd7ilCBfcpsqT+zi/KFHSv273YTJfBm0WpBhRICx6Ao
         KTmKNmVjuzbC13idsCrkLSzNeKbasQrhTAXRI+SHi2tnNQzdwwbvDiIEKyA1EQHsWhNF
         9lKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=82D2tQnPZtrclkJU4nis6AIQJVpse4IZIU3/9KO6uUY=;
        b=JmzVJInSfvAefRheDMg/dwJjWjCj6Y9CGPCtrqV15/EsIqjUfQgXW3SEakfR6WI7bU
         R55s/CDg7H9l44FB8JXIvtsJ/uOuiAImMfQNltTc9spBtio3E+EPGyHTpS/EwZIW3XyY
         /g7c3ynWwTXxJ40UdZUIghEwlD3sUzax6D5uuUhVlKkAPQWtBnmaJTn8kc+wP82Cai6r
         +7K11VBgZUBY4xFbWMprlHR9O2Gu6RibIIdkA8bzcMJzbHkCHmYGDi2WLqgnrHDTw8UL
         mycIu90FJi7ix8wprytiOP/D2XMqgSiDPSXFS7zdD3/c/KKmxismER5/CzgU0dWcNntZ
         yRhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=f94983Sc;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o2si182048pjj.1.2021.09.11.06.13.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 06:13:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B875261212;
	Sat, 11 Sep 2021 13:13:42 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.10 24/25] NTB: perf: Fix an error code in perf_setup_inbuf()
Date: Sat, 11 Sep 2021 09:13:11 -0400
Message-Id: <20210911131312.285225-24-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210911131312.285225-1-sashal@kernel.org>
References: <20210911131312.285225-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=f94983Sc;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210911131312.285225-24-sashal%40kernel.org.

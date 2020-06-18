Return-Path: <linux-ntb+bncBDTZTRGMXIFBBIUDVP3QKGQEH4DSZVI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 468791FDCB2
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:21:39 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id x29sf1937387ooc.3
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:21:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443298; cv=pass;
        d=google.com; s=arc-20160816;
        b=RtNyNX8Rm/9RuDhGjsi49N140e221dCVPUr7YJFb+iQUARbDPmlHvC6mJ6/yQBa/eY
         D+4nj4fezh8+rjcZJHkUkPsBUl0MV3zBUBloKUFgqRPT76/WVH20WEiRXb/x9ad7Q0q8
         hH8ZLneLlyr+Yz9Lbqn57zsjsQCN+QETnrS7M3wqKzHe3ADmRJXzglrtGV9g6FaDugf/
         0dHoO2g3DSyeRBivoM7PoDOWU9VwMSMflepu/GjXSAtc7g8t7+KlQxhaRBbEaQ3Dm/4/
         DyAEUKt52dLdqcSPUcwa4lHpGt3ZJrcuAozNAL2QnjDSHuU7TIZ76reJ0ZYPQrua/2E7
         QlxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/N6moTUxmp3spxdI5NyYLWvqi/4ctCrKq67FceO781Q=;
        b=PnkWo76yYi9vyVemk57KzkKuOeSFau9aAEiS8CW6ba5ZsrLJa1O49Y2CdNu4O/11qB
         M1ih4poby2Pqlu8fP0aTw+5bm2N2sQY3+muJA6k6WXR0yaPRC8yEINzeAGY7+lxduj2/
         K69QAkscKHo4vQxhcr1E32tYdX/88fHQGE4XI+sOh1RrDCxb1XPEnqYqEs7yIlcB96fs
         OVkwL7rMF6do1+deZcool103pimVfrLzeyGMsh0noCZfuZUtOfwsvgkhabsrLtPJ9qSZ
         UcMnoFcI4lNiav9PRKO8AhrhAKYQ/tAZherLYiY/uPrucOwHMjdkxugkfgV0lp+YlhdK
         hVTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K+jcCy3y;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/N6moTUxmp3spxdI5NyYLWvqi/4ctCrKq67FceO781Q=;
        b=aIow7H4EWxFPSpWt3ZXc/ETkuOSXrWxDJlYeaGp626RoxPFkELzhJmHQGo+vtziEGR
         XtEnMeBBHGZymyURJcdk/lHZFCXwJ3eX/KBdmNKBF38InwDt/CV2tyoXnjlK/DySk3hq
         1qrz/EvCm0tDmlhs7VtxmhHm8IhnzKcjKd4i01s0arynHVGTIfS2iiGxVYHjmzENwUHg
         i+IkqkwYY9mN7EbnlhN4LRATcTb5BFYJ8i17eYd24CcF3/OlP8VqoRwSzUXZ8HFq3m/Q
         vZk1HZgWXeRYFhnzOxQN/5QYoHz3PQonyBjsHyvMilqAIL7a7ZR4r9UyqSYG+JsWg+KZ
         1yjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/N6moTUxmp3spxdI5NyYLWvqi/4ctCrKq67FceO781Q=;
        b=IwvTYMSxozBr7AglPF0RjY+8NawF65H5tXY83MYCIm2KsjHdDNtfSFhvqGikP/H/sC
         +jrzkGellrxZ/9m8sNOH+Wf9OQyca+S+QIbs5lUss3I2NNhzO7vOvmqQCnt6ZkU2DIjo
         bNKc4KlGN4/wxnfcl8TXkis4KAh/Glkk/8GQ+IONjErDGi/Cci1jt12NWO5JNq+mD3Cf
         //YIWSDIM7dssoDfdIMd2fRAQump6yG/OVfHveABzrGXGyqwaWH0w4PYawkPO18ToD8Q
         GrFDbJaoaknqK3mNXE3cAjOV6TiARODJWypXkJWajJp8X8d9qxL8RPaE/UCRnLe1dznz
         uAUw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532Cz9UaK+pP4hycEaCl0EDHZCKBMjEdVEKcFuwKtzIj3NDrfQf9
	/dqZFGMU+LKZCyztEDuldFs=
X-Google-Smtp-Source: ABdhPJx/de1coktl0etnACLSK0iWWDCuKtw6B/EB+ciDa2iL4NM3r2uhQlfOuMEhQVPbpkffDe3vYQ==
X-Received: by 2002:aca:b357:: with SMTP id c84mr1176708oif.118.1592443298277;
        Wed, 17 Jun 2020 18:21:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1446:: with SMTP id w6ls941325otp.8.gmail; Wed, 17
 Jun 2020 18:21:38 -0700 (PDT)
X-Received: by 2002:a9d:631a:: with SMTP id q26mr1513225otk.220.1592443298020;
        Wed, 17 Jun 2020 18:21:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443298; cv=none;
        d=google.com; s=arc-20160816;
        b=lPUNe8G0PvayrbaeIm6K8+opddPkjX7Ud6FeKKKF1NUdZEap/4rCwNQcx4M5LDT5SO
         Z3SzW7zqA5eqXBiaY9dwr/eN2TWIbHd4oFGCVAghv5RTyXbgq5VuTMROwQEHLS5ybt1N
         AoJyfPFGrxCL/1jBrGftLi064FDgtMyVbWHreq5lEgdLKfvHA5OYPp9EeioLdPPzNdBB
         nxtY9ve8Kd1h00yrkc3Yg75FEHP2SliDJ01HJzKcTP74zIrSNqZTdUD90NuLnj5r/Ehj
         AV7516zmrigucigJl4V5ww+CyR3pnnOlDKXdTeY/qw2IIZ4AGfJKk5MuuaNt99YTdFWf
         FNpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=vgUkFSio96O5DjRzp6nNX4f97TXsvukEMhOrkpc2iro=;
        b=oBbTjBTpPWv0kjrHVQKa7pYFC04gB4Vpbyl0L2mf9rtSyw6xNC7rlQtuMuner9QYiD
         18JixV18wcbi+v9MRDXgTqmd+08azzFfuBNi69mrnYiZtyNJhS7EXMVtrTGuSM//2+Lo
         GfpoMr1QnItQ1DVbU35nE2wjunUpjsjipXVyWbUQLMMVOupYbaf1eEXR/A0wiAZdUfgG
         aew9G4mxv+6iJPp+i5x7cS6x33jO7SkzVQ5pDmtLbowhfV7kBAIRZlsqfa9BwrmWAurI
         kFPtm6VNI2uYn5WCKmrWyHs++r6TYt6Atu1ZuSvIFLhzGbi/Av4Gzhxct0tsCPHh0/lS
         fx5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=K+jcCy3y;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c26si36896otn.4.2020.06.17.18.21.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:21:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6645820CC7;
	Thu, 18 Jun 2020 01:21:36 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 237/266] ntb_perf: pass correct struct device to dma_alloc_coherent
Date: Wed, 17 Jun 2020 21:16:02 -0400
Message-Id: <20200618011631.604574-237-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=K+jcCy3y;       spf=pass
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

From: Sanjay R Mehta <sanju.mehta@amd.com>

[ Upstream commit 98f4e140264eeb52f22ff05be6b6dd48237255ac ]

Currently, ntb->dev is passed to dma_alloc_coherent
and dma_free_coherent calls. The returned dma_addr_t
is the CPU physical address. This works fine as long
as IOMMU is disabled. But when IOMMU is enabled, we
need to make sure that IOVA is returned for dma_addr_t.
So the correct way to achieve this is by changing the
first parameter of dma_alloc_coherent() as ntb->pdev->dev
instead.

Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_perf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index e9b7c2dfc730..52c29791fc02 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -556,7 +556,7 @@ static void perf_free_inbuf(struct perf_peer *peer)
 		return;
 
 	(void)ntb_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
-	dma_free_coherent(&peer->perf->ntb->dev, peer->inbuf_size,
+	dma_free_coherent(&peer->perf->ntb->pdev->dev, peer->inbuf_size,
 			  peer->inbuf, peer->inbuf_xlat);
 	peer->inbuf = NULL;
 }
@@ -585,8 +585,9 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 
 	perf_free_inbuf(peer);
 
-	peer->inbuf = dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_size,
-					 &peer->inbuf_xlat, GFP_KERNEL);
+	peer->inbuf = dma_alloc_coherent(&perf->ntb->pdev->dev,
+					 peer->inbuf_size, &peer->inbuf_xlat,
+					 GFP_KERNEL);
 	if (!peer->inbuf) {
 		dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
 			&peer->inbuf_size);
@@ -1517,4 +1518,3 @@ static void __exit perf_exit(void)
 	destroy_workqueue(perf_wq);
 }
 module_exit(perf_exit);
-
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618011631.604574-237-sashal%40kernel.org.

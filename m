Return-Path: <linux-ntb+bncBDTZTRGMXIFBBOEAVP3QKGQEZFLAIOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 092151FDBE6
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:15:38 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id e28sf2885347pgm.12
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:15:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442936; cv=pass;
        d=google.com; s=arc-20160816;
        b=ockb21VsIY5M5JAiowBWg1BJr+d6Ap+tbJqrhvm8JG0QIPYX553M/YnZgdJwqv0kZz
         NyVMKskuT0qC+HmOtOiKcft/rC6YwntT2UU9RNd60SOJ2XGv5ECCKusjJ5ijZhsCg+ss
         2a1GcqkPdZ9k2tM81tdRrnST0AFa60le9LPE4vMmLMpaNlkNmClVn5NAvjJhPOiNND2X
         Yd0u4YHHYzVg0x4bEC5jfeLfa0zUchSURPvuRXX2yjO8YPNPCqzCS7U6qZ8lrYwFdSqv
         L8dAjOK1YK++BmOKHkijFJM5/EWKuo2otJevB0/5wWEOqt3OPlnVmncQotjqvI8il5+G
         9LJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8eqB90WcQ5ccz2UNFiftQ7Dk6QLJ3oEeuKn5DLXpTh4=;
        b=S3kFcHmrHTU05oiVmF6xw8nlhEhXmk8wXRaf/WB82RwNcEr30BKMO2IGDW87zwY/s/
         U7/STh+vxuBbbPE6TEH1Rqq5GCmblnFCUmjlurBv0VBQkf+8XOySuPPku6xnm1bDV+mz
         6y9uH2/mVq4oklcY46n5Sl6i8FuFtlQsMB4e8xJfcut/MbmUSn8sPauBaWaB11VUeMei
         t/+uBRf8M604VaM7cNRbDofCt5QZtQY78fl+Qf+Fmio/haLNk8LB+Gctc5Tq7UpDSqLu
         8KUE2gdYJFr/zy2VFgNgzub5RTqZR/Plpr9rwzWA8TCFRvgjJrydjfVmEc2K30zEk5OO
         vKBw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nf7h00EK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8eqB90WcQ5ccz2UNFiftQ7Dk6QLJ3oEeuKn5DLXpTh4=;
        b=dgHa/o0YN9y4hBUehJRUSUEwyKkte7UJItMTwxwSMxMY3xJgzvPBL9qfoLYBjqMHhY
         ffHpWlHd2XtGMoEC61t0omsnju5r2cEVXxYGdT/HeAs76bULJe5Q9invPg74QlQpyGLE
         pDqvNksuKzvmokrFh9elDiYwQP66MhI+af+5K3Am9OG5Xs1S9LIn9i6g8xREjAHiiR6j
         lV10VWTz/vOdZ91tFU7jFJr0LwF95PSyJse6mGJEngjIpV1NMBZ2RJfVHc8h1cRTPtH/
         q85l5ADulei2Odzoy7b0c/Meu3HOsUHiMk1nY6ahsCZCzUF41ipKIILelMKPH4lSK75d
         8y5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8eqB90WcQ5ccz2UNFiftQ7Dk6QLJ3oEeuKn5DLXpTh4=;
        b=B5oI5+1OPXv9PehGE8CB2VXEay+Yuv49nrl+Rubleely1AgTk7IXgS2NcPAbDtxZMd
         h59DxV9J6Xjt1z9havktzM+Zh8myNEvvpQUW18PrRgA9Lk8ke/KhKuexzbFF2FMTWFZq
         nLCPnEJ5H8jh4UqydU69Zb+LzX2br0VMSSvNGKdB23svJBJ5nEl8SeXUJbF2SBqflgcV
         nJhZ/do8fnbkFAvhS8y0yBQ7I4vgqFOABk5nmmKGHAbDBbtKP77+hgwc2uD6nU4tAJMI
         atWTCxc/SQVvHyM24Cm31HOunBfpXJKuOAqPMQ/agIC4I4jlPzkkoiUCPRtBOYQSy1Oy
         bdsQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530ezadJtBOmHRD6kr/smqzTmK36cI8Pt/SLqtUd5+h+fZeLgvI7
	houaOiLBjdyX4rzsRM1q/bk=
X-Google-Smtp-Source: ABdhPJzJceu7y6ezqO9DLU7R5gR297ayAia/kTXnwhvIiYyEW54pbql2+715b/XUchC1OJp8VK04Qw==
X-Received: by 2002:a17:90a:d104:: with SMTP id l4mr1732696pju.65.1592442936694;
        Wed, 17 Jun 2020 18:15:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:6845:: with SMTP id f5ls1499062pln.8.gmail; Wed, 17
 Jun 2020 18:15:36 -0700 (PDT)
X-Received: by 2002:a17:90a:260e:: with SMTP id l14mr1796751pje.76.1592442936202;
        Wed, 17 Jun 2020 18:15:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442936; cv=none;
        d=google.com; s=arc-20160816;
        b=hE7fXDF4/iBGh0BfasPkny5NsrO6kgYZqLuKqm34Zim0WwO9Pv1KSN2jBousMIgTlw
         hz5fqGdhPTo2r93LTOq4yAc4HcAcim+469jOXPiGXNJ7yup06vcybFpI2U+Cclbx3CvK
         TADFGORvrNPzFbc9zn4B0ILW1j2Bb2bnHP1g6aPNg5PSR3vdtqv6Rm5AoL7kemWwVhZx
         AQlxRUrcK6JYwrD4AyFiorPqX+Uo26WMLW+AT8Ipm4Fgs4t+DUzAMj0pcXC0On4dDdRu
         luTPgc10MuhM1kzeR1FEKQDOq1NY9NfjA9fY68HAdptnW6p3R+GSpu6tuvDW4eMY5JNG
         xM5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=ReoBglsVrHXnL86X/DA0SxTtUYB8rSUCQpo1xVyH6Zw=;
        b=wj2gnOifLKeLXBtYBvrpaWJqqf4wlWU8q2q+3pjsAZRCE3eK57ZDVQh5pbD+4PId1E
         azegY6P/mpI3WgvofK4+/hE+VFO+inJ3w+AxGvuskqmZQTHDo6b3YiFwrbMM8zk+KTRz
         yfh3yJAGR55a+Sg2TseWRNtie+xSqCNKtkeRioBzJ6SQcCRW8twfuJkjoNoPgjqA+1N1
         qXGxuqTX92Fe/wqZm5EHh33eyn4AFqNTRij8wb3T1ClJ0HEBFUKw8xN6y++ZgjVa/3sR
         B6cGKVdUCrTrHwDBIJLDtBTn33BfyBZVQhgIQHXnrdI9HPhzupb3AuzUlKdtfg5uL6ll
         93KA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nf7h00EK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q194si120086pfq.4.2020.06.17.18.15.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:15:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2E6CF21D82;
	Thu, 18 Jun 2020 01:15:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 348/388] ntb_tool: pass correct struct device to dma_alloc_coherent
Date: Wed, 17 Jun 2020 21:07:25 -0400
Message-Id: <20200618010805.600873-348-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nf7h00EK;       spf=pass
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

[ Upstream commit 433efe720674efd9fdbcef78be75793393cf05db ]

Currently, ntb->dev is passed to dma_alloc_coherent
and dma_free_coherent calls. The returned dma_addr_t
is the CPU physical address. This works fine as long
as IOMMU is disabled. But when IOMMU is enabled, we
need to make sure that IOVA is returned for dma_addr_t.
So the correct way to achieve this is by changing the
first parameter of dma_alloc_coherent() as ntb->pdev->dev
instead.

Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_tool.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index 69da758fe64c..9eaeb221d980 100644
--- a/drivers/ntb/test/ntb_tool.c
+++ b/drivers/ntb/test/ntb_tool.c
@@ -590,7 +590,7 @@ static int tool_setup_mw(struct tool_ctx *tc, int pidx, int widx,
 	inmw->size = min_t(resource_size_t, req_size, size);
 	inmw->size = round_up(inmw->size, addr_align);
 	inmw->size = round_up(inmw->size, size_align);
-	inmw->mm_base = dma_alloc_coherent(&tc->ntb->dev, inmw->size,
+	inmw->mm_base = dma_alloc_coherent(&tc->ntb->pdev->dev, inmw->size,
 					   &inmw->dma_base, GFP_KERNEL);
 	if (!inmw->mm_base)
 		return -ENOMEM;
@@ -612,7 +612,7 @@ static int tool_setup_mw(struct tool_ctx *tc, int pidx, int widx,
 	return 0;
 
 err_free_dma:
-	dma_free_coherent(&tc->ntb->dev, inmw->size, inmw->mm_base,
+	dma_free_coherent(&tc->ntb->pdev->dev, inmw->size, inmw->mm_base,
 			  inmw->dma_base);
 	inmw->mm_base = NULL;
 	inmw->dma_base = 0;
@@ -629,7 +629,7 @@ static void tool_free_mw(struct tool_ctx *tc, int pidx, int widx)
 
 	if (inmw->mm_base != NULL) {
 		ntb_mw_clear_trans(tc->ntb, pidx, widx);
-		dma_free_coherent(&tc->ntb->dev, inmw->size,
+		dma_free_coherent(&tc->ntb->pdev->dev, inmw->size,
 				  inmw->mm_base, inmw->dma_base);
 	}
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618010805.600873-348-sashal%40kernel.org.

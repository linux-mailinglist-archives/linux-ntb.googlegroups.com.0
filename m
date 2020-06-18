Return-Path: <linux-ntb+bncBDTZTRGMXIFBBD4FVP3QKGQENQOOQYY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id B40451FDD3E
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:25:36 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id o6sf1926086oom.12
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:25:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443535; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fs4koSLhK6MFF12dUUI1xaPaiw3Oi3PCzwadX9v7Oku4e5QQoI5r1I+02SOqBzzv41
         sYWMoZGn/zmt6TWfiv0gC/T9jD4qB+REK8oV3tLcu32m9mMJKZCRUQTbZEyRux9HCslC
         vzvSWfEgGDN5qtfUsIlA0sQE1mW1Ytu6UGcTiBgRTP2vyoP/fcUAHPdLe3EPoefMviid
         ThYwhbotto52SlWZnSFN+TiLt91AvOZUsATU3SJNa0Jikmf327gkp9uCUWSddRhX43S6
         sETmFBgAZjZWtvhSFxiJV3qTutcriN6dUvquEVS9I+QvNbRFymMmegY3uqXPwY+MMWNo
         nhoQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=3ctRw+Qf8zXHg9OGjGJ5m0+9qfUlOJ4Ffe1hXyx4QE4=;
        b=NOzUKyLquzSnOBBtsG9VRWWzuQpT9Opgku5wlgiPUCVNCJCFtZhafBaEy8zyZNs6vV
         BzLdUfXagCYTvB6V8zrIQPGrb1iB4mA7MBEENCREcXeeDl0jqby7ZuKTpAM62aWKajdD
         B+iBLk3cU1ToLZKG09tAr9dgIQFjCefovSk6GZPSwm3gzsy23mBrtrlxnYqfnrH9Skcn
         1sD+QhLp9jhOBBn0xi62WumW9ZkBi4vt7hj3/Z7whErFLDStq4RmkUPQMpU76msLv0jl
         xKODJF9dLKF9RB6unULyuCoZ/6Zj8IyBWZWIAL1a+U4datGHRzByrRg/usiYhFwoq2nT
         o73w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="xLVfo0//";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ctRw+Qf8zXHg9OGjGJ5m0+9qfUlOJ4Ffe1hXyx4QE4=;
        b=fwr3WpBsogSA21BPVDvu0e9VZgZXirdEVN+iZhJfOgTaXVuv3Mi2TAmfhBBY/8IG87
         GmziK2iCG+2AI6l1GrShz9DQA3tMCTnlIl9CFxeBY9t8Z0A35vV5N/2/SDQknULw15bj
         ZmzDfak8J46ILDaCVd1w7F+RIg8e1A1EIr7s3yDxutzP8vw+YC9/Z/X0mn8Rl0THBXKC
         EobHYFIYTy+tR77gRuhybVhCj0h5mldQEdYYFSq/ejdxnlf53W84gmIGJGPXrXPkeHYu
         NF4lMolEPdvFpnXnQjElDzkA0n8+QUgvwiPlRauQnHF3nJcJefulU74TJ2Ezka8v9zj5
         aS9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ctRw+Qf8zXHg9OGjGJ5m0+9qfUlOJ4Ffe1hXyx4QE4=;
        b=LiJL8jkkGVGmSLj+cqnXVswErcLlT1ga5mG2NIbvNCh8ktbP1eLAT1MownryO4zkcJ
         SSY7uiMTszySJd0CkHSUOzSSf6a4hw3Gtkd9qZkaFC1rK2j3bUEf7UbPGrhvH4mXm65f
         iQzlhi/3RUhn7cmmWnlpkh3TLj7q8oGsCpBgIy71n/f5Zo613uKL7fWarI9GpM9NbsDQ
         FMDsA0IPx7U9ToVOGYLQn71TMx2H9Hu/hrlgAFqwu4lrLNqNIlFmzn15glYzZ6ky2FoJ
         7G6/r4d6u9uR3eZjf49+C5uCYgVuQ33OBBh5PJAowgCTRifqRgcqqhLpdOZ5NgpvceJa
         iydw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533bJfk0+RswlnSDMh6PJhB85mv0zIhS+ZcXrt/2SN12JEBmcRIC
	6s4FTLFZUTFY3mhjKOopzMQ=
X-Google-Smtp-Source: ABdhPJxEslwysgL1BqL8jOYBjJ/XPqoTrcGSE+pAXyufxVNo0bnWIVq/yV+43uENQHs5Ka5lcN9+Ug==
X-Received: by 2002:a05:6808:b35:: with SMTP id t21mr1264856oij.86.1592443535739;
        Wed, 17 Jun 2020 18:25:35 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:241:: with SMTP id m1ls825653oie.0.gmail; Wed, 17
 Jun 2020 18:25:35 -0700 (PDT)
X-Received: by 2002:aca:f0c:: with SMTP id 12mr1154579oip.93.1592443535422;
        Wed, 17 Jun 2020 18:25:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443535; cv=none;
        d=google.com; s=arc-20160816;
        b=AQ9YDtGeSm29rzuA6XzUzC2gncGe/jFtdwBSNaU/mq92UkByEC8sXFftdcq5SwHKuW
         ev7t2i8tt1abUihz7UU5scwUWPei75vAP3Lmo3K3nWSMSZoQYh4XTXe7BdRydbjlRfI5
         tGqCUBjZkEzLlp008RGtvQB7s6FJyVnjPJLl7BgNLx0JkcYpKgrg/EVl7MVnbAFTLYn4
         BsFpyx6SJiT16C01o19NUgTQEAP6PLpEjeUBezbNLMeY+mGg6B9ydkfJ0fR3x0qUyCOD
         h/q86I02tk3M5ADurZ+vMY1DSHdZWUM6/wDW3aCEB+XF66Ux+uamzKujeJp7WXQ9VSEt
         6hdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=S2LcWffqH7SjQgpumlh4wQV5lqD+3xyBfFeZ5TZYwfQ=;
        b=QJJqEiimcorvWk13r6eULbQqwHsBSG9gs3BE4+1Jt7PNrTens2w+Vyq/0u78Cupwp0
         EvA1i3kssUjCz11kk7QQ1NKc7uZcgj0B2P/+wc/xBUE2y1DIkGSoq4GlRtpw1pk9PuSD
         VWNIvIEW8UxP7g3jc/zr3Gky6OgegSLrWXWn5cM5hTJOi3s8TbscWZsfHOmbsmXOnHK7
         rRvmQJaahmbIKaQVBuNIdOlNvMkK6pn6qb2UfxqlrLaxig3/0awwVPM5Dz1/cRJz31Lt
         bMES9/1cYmdpPHDiQzElPTSfDIrVlMPQgnGdipCxoJLsD6iSJaucS1Rajr4IXRbypX0i
         Exdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="xLVfo0//";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f133si80824oib.5.2020.06.17.18.25.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CE83F2088E;
	Thu, 18 Jun 2020 01:25:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 153/172] ntb_perf: pass correct struct device to dma_alloc_coherent
Date: Wed, 17 Jun 2020 21:21:59 -0400
Message-Id: <20200618012218.607130-153-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="xLVfo0//";       spf=pass
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
index 80508da3c8b5..2ee41b988c5d 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -559,7 +559,7 @@ static void perf_free_inbuf(struct perf_peer *peer)
 		return;
 
 	(void)ntb_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
-	dma_free_coherent(&peer->perf->ntb->dev, peer->inbuf_size,
+	dma_free_coherent(&peer->perf->ntb->pdev->dev, peer->inbuf_size,
 			  peer->inbuf, peer->inbuf_xlat);
 	peer->inbuf = NULL;
 }
@@ -588,8 +588,9 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 
 	perf_free_inbuf(peer);
 
-	peer->inbuf = dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_size,
-					 &peer->inbuf_xlat, GFP_KERNEL);
+	peer->inbuf = dma_alloc_coherent(&perf->ntb->pdev->dev,
+					 peer->inbuf_size, &peer->inbuf_xlat,
+					 GFP_KERNEL);
 	if (!peer->inbuf) {
 		dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
 			&peer->inbuf_size);
@@ -1512,4 +1513,3 @@ static void __exit perf_exit(void)
 	destroy_workqueue(perf_wq);
 }
 module_exit(perf_exit);
-
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012218.607130-153-sashal%40kernel.org.

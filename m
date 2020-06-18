Return-Path: <linux-ntb+bncBDTZTRGMXIFBBI4DVP3QKGQECRCRVOY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 616DA1FDCB3
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:21:40 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id v3sf2847197pjy.7
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:21:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443299; cv=pass;
        d=google.com; s=arc-20160816;
        b=aFf+rkKB/ycQ6pAPg0umjVUTnVfBFklpwM7L8P/b9s/XO+/WK0vTUseLFM1AN8+ewz
         YZbz+wYZyS+u1KTybXDnE1F0WfopQntd6lc07UZ0bienhk+YXPX4+tr6UDOwAINMPeEf
         JClhR/tvXZR3XaOSuF1H+DETMouxE3rY9mnwc444JykHYezDPKLdEJxvHwaeUOPKQs/K
         dqeOoTUe7+8y8y6WfP/1dK1MPTunmEeih7YL6aKkWhjuY458EFkepe8/K/fRcqDUIC6P
         T0F/kpHCIsbUttZaY87gNfhMl+LmoRYoBC+akqjaQYkyRTytKYQReykaPnclCPor/HQK
         i/PA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/YrbXku6n83wbJJjMwZSiVfwQOOYffiip6dVzgXNkro=;
        b=Jy8T58r46k3WAkFAIBzUgSSRxniP8t3z5jRVvn+NpXMyR/e3vddrcxBVTD61TGYv60
         IWHSDXKHvNi1cHt2mzjh/VUA8gxcomI1sRHTgObLmEwmpB8a2hj+1/dw3Fja7zRX3Gkv
         FPRKJQLlc6MgFsiZmz/53j+Yi7r1xFx9GoHpbmzrUdBKUSVRXHa12k5dg0UqTebUSBhJ
         lK5xBoVDtaDkGP4hQPjPpv3OhPaqvxaMxbxLPT/OeMqYCA1VY861DK5ORgCayPp+mzS8
         eaOokKFjueM7arg8gfnlVfLemxcZy4JqHGWkTV0/0PCCUH2lVYXFE3npykZ48sRd0c0Z
         U8WQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PZ2ukCGN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/YrbXku6n83wbJJjMwZSiVfwQOOYffiip6dVzgXNkro=;
        b=Bu7p5ah+oAtKoiMa7Dbe13yYVfJbz6SKvjdkFnN3ekqdgUtSONb2wznTWkrk2FzobU
         eMjXGBL0z3K6rO5849ly5z17VK2lSY7pYZu+S+isv/SKdP2o7dYWVeesr6ykPKjGhRWO
         AAqBNFoeoijiyc0g82D6U2JLQMHIrHcqcsI3I8hNAe1Y2QpVGJYZ1p2jTlyqoc3/1IZ1
         n7J9bzeg4TXM48JCifK6WzpOBV2lZB1e8sN/ky5I0OL6UHIvraWHcEj6ZURfDs/ujMAA
         DdRVY9KFIFf85aPjjgfxVLnLstJDUiXQ6IF3pGw6tM+hFjbhm5/6PgYEdq+OmIHQmT2e
         zDrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/YrbXku6n83wbJJjMwZSiVfwQOOYffiip6dVzgXNkro=;
        b=CHM7R0DLhVlIGdeigCTxuvsS6ZNsnFJZAUfqAgi3YEiAgUgtLAg0s+BlATg6/z5lXj
         W0F13pPezjVJ7GGskEtO+6cNqcyBMSwuWrFXqxsStb3qd3XMgyb7aduXpXHIQha+AyiO
         JkTcu6texxHkD48uo+vmfvSjLMXIkx+YJnb3o4+wzHmp/NrWC6VCtxncGBOXsTB5XrFk
         yRH7ZyKEn1+Rcdy2Nj7rgF0ORrISQZWmlcFHbWWK8A+CzMRVYeKGpTci3dcGCDd2LyvB
         VodXc8r7G3HQ9iFYr5RtT1p1qwi90APuxyz8+0W/zXkJB00NJC+RgU0VC+WkZzLetfhg
         azPA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530r4PKaAd5WxV7oBx4VSkT4wvHY3V/fyHq9zam5U1L5WmeIfjE2
	VnlG4XvXsWg/VGhonaE809A=
X-Google-Smtp-Source: ABdhPJxltXHayZoI23R9XdzwUJSqYniLjz3SPPNFSO/fqNV+sDuz/rxbxjpAnmFDx4KY85RhvDXBVQ==
X-Received: by 2002:a63:6e4c:: with SMTP id j73mr1336556pgc.69.1592443299115;
        Wed, 17 Jun 2020 18:21:39 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:e28d:: with SMTP id d13ls1607124pjz.3.gmail; Wed, 17
 Jun 2020 18:21:38 -0700 (PDT)
X-Received: by 2002:a17:90b:895:: with SMTP id bj21mr1767192pjb.148.1592443298787;
        Wed, 17 Jun 2020 18:21:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443298; cv=none;
        d=google.com; s=arc-20160816;
        b=DXOGeWnQk4B6vGxcoFSJDn76mDBvtvftBfzC2O95Xitg4Cv+712KAHf1P7TnrvoXx+
         TEHpkfSTPw+GAdoF3iTT76OmjanSHskYlmu8WkRZsmDb9EsXeduDiXNL4Q9gauRXI421
         m3a/gNfd+AT47FIQ3b6w9BhL6m5C+Qc3UtXW/nisWg38bM5TxO/aFWuPQ+dkrjU4rRsc
         0bAx17qQeKQKaoBIgXoSb88b05MoJIdpf3ZEPzg3swTBTPAVCtYzaYT8rZIK1WxalH1G
         Fx7JOuusnkCtl9lxZWkEGDN4RF+FxDSN8Alp/ON13XUAcGO9+KOfX77Fa1J4bWTqo0Bi
         iO1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fJ5PhmiDFh2CBUABDfHHfDK8oAxY33PIEWP/pVq5xkw=;
        b=eM19/tTxc/xIYDDAYMvn+jPhM7+Gw+l3Fhh1K7t99WubnU/bsFOX/okAlc4iuOzGth
         kp2jS1wohw8ewOJISmLce0ncOhn6XHpIOGE5spE+RfyVx54VCk8sGGZ//kY0BtaN5ciC
         MqA1pCLymnqhWF04q4PVlLufoLgtwoV1FO49bbKF6vn6SbyhyAWRSR72XwMt4T+W52NB
         wt8CEBYY85zPU8lZ3K2Js1lGuOB3mpamwg2z6trlunJXL/nNuVhBl4jznp8SWlSbxgjU
         mIMA9E/v4aRrX2NTOPKA1DY2oCELRxMsqdeXAPi2MDQid1tz6FXrNYh47N6Dte5db0IR
         aZKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PZ2ukCGN;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x132si122506pgx.4.2020.06.17.18.21.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:21:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C6EEA20776;
	Thu, 18 Jun 2020 01:21:37 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 238/266] ntb_tool: pass correct struct device to dma_alloc_coherent
Date: Wed, 17 Jun 2020 21:16:03 -0400
Message-Id: <20200618011631.604574-238-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PZ2ukCGN;       spf=pass
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
index d592c0ffbd19..025747c1568e 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618011631.604574-238-sashal%40kernel.org.

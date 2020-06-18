Return-Path: <linux-ntb+bncBDTZTRGMXIFBBN4AVP3QKGQEDNXAG5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id F04CC1FDBE5
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:15:36 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id e8sf3139416qtq.22
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:15:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442936; cv=pass;
        d=google.com; s=arc-20160816;
        b=cG8ss4Sw2dSrkNXcOIAQMXcc2OUMoed7PoFegObBqubuloRSwSJ/h9aSmJqt3hEWGK
         Hb6oebb4477DJTWdkLYD+6lcGC4S1UqC5fCtq8HBdcpAtNtNx4lQKdHJUjW3GFmhhMhn
         scQxWCJBmHNS7HrLOZ8hW68saWOR/bapRf5GjAIk3v/2MUoQ/KtzIcV3kLTUPrLL4u1B
         KjngJ7mVHkDrqoGYKDyV79RANSld8A7ddFiSwj6zCtpbakIESJy7xC4+QBEenudi0cc7
         tcvm6P4MIvGbGDyPGVH6avfHpABbVGXSIzjBk8RV8fQIMIigUefhO3+NXED71IfRtB9J
         tzqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=AUZT0qFK5ygsHcFBrIpGm1BbhvlMooUl6H9FU0yxaAg=;
        b=X/mjlf8IqjuDDIM3h/Q5aY5IL9PxUOHQ1C47vwdKpjrGtS6S8A/4lW9VhROsPV7xks
         rHXBNjomXZWRlWX3XPhE4lOZ1WikPxnWZWzqJZxNwUbURwa1IDe0AjynM2ApkIz/QWRj
         c5lgrGP7xbEfZCdrSHG/4koWBqCrFT6hc6c8wd1xoifJUQRGs1UiRBs6+/7rXMM73hI7
         Kpbl4EkGPGQ5Q2aLOSls4MGfYkhTwUFEWvnH+T90lPEfVQKFJUgssV/7WCGHfYf7BANg
         BfRovLKl/BnW5jIBiWVsd7xWApFR+TpKcPLxiN0yEHsaSr6nYtdYadN38HIZYQLSqeAC
         DRQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tdiP2HD+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AUZT0qFK5ygsHcFBrIpGm1BbhvlMooUl6H9FU0yxaAg=;
        b=CZgS64Na5OL3G6/8BJen1gS4hxEeRVqqr4fyBiNEMTFNEYtkImU5Ljc+SSMyDwBTsO
         YjX0pgN1sjO817y5dc5yXqaUSTHn4pUlmTaWGXM7TDkpWjVZ4OY9Ox+rkqcGxtM0M27U
         s6qsDYycnzKGcOvEAaqYv92CWZ/lo4i2TmCL9Zvs69XTgB+wTbr6fxbQZ3Yt0l6eAzxZ
         /qrxGLF+bdGCg4rHSXlhl1FREAU31u59/eiShYLms1mxcXJli1LkDSim6K0YahG9cY6U
         gciD06rNkqvQ083mXG3wbwwlzr27miVmbJg7bN+XI8Oh7KYvVb32I/c2pWYH+asKVq9v
         LK0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AUZT0qFK5ygsHcFBrIpGm1BbhvlMooUl6H9FU0yxaAg=;
        b=dzJ3aYhLO8oU3Zq1SOK+/E9+7vtl3g9J7tqJQu428eN4v3yW7kjyrhOvISDuqp82IF
         ewL+72Kl2ubVeBV6egqYD3pMnepm37xlab0XWNKoXghmuSXZsbjRhsgUO2JpQHwtwd9i
         naymgBra1kKalzVLDdgMT9o8ulBEoYkdxI0rpgkuqOA77n8eFOpD6ZL5u49vntqQbNr3
         5cbbUk/EdRsys6CUbzm6nkFwD1vJdZdtH2ngeBLBgNfC2Gzm+kbm0A4hN4hR3bOjFCUp
         x/jbDG6GgZJWz0pWE1Mu4u0Ty7/Si6yWolw5wvuSVZb7zFZ9HAZezrLteBsmNMlkIU9o
         NnkA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530JWtChtWR2fO76rr5vIQXDEuQeMBSmLMLOto/wpbfaVVwP6B8J
	+AIWeQq6A2WTZzla88XQWmI=
X-Google-Smtp-Source: ABdhPJw/0JVvi7JhGsUmkQQdTZBl1hyWTpSZf0BXODx7v6PInsOA3zAZ+CGheWC4t4nyfhQ9t5vxdA==
X-Received: by 2002:a37:ef08:: with SMTP id j8mr1498354qkk.442.1592442936042;
        Wed, 17 Jun 2020 18:15:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:658:: with SMTP id 85ls1949995qkg.4.gmail; Wed, 17 Jun
 2020 18:15:35 -0700 (PDT)
X-Received: by 2002:a37:a147:: with SMTP id k68mr1523096qke.62.1592442935750;
        Wed, 17 Jun 2020 18:15:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442935; cv=none;
        d=google.com; s=arc-20160816;
        b=PSw8ozS+cYbDUJvZ4wfjjnhTrnbzRYXiZvPlmYFgFaO9L8U2JJrztFTb91gZKGrc5e
         BE1LNSVCi7wnEru5j5ntIKpitFYpZS7LBXP1dKH+KHjS+bMJWZyijQLHbh6Hjwu4RId1
         yz2Xi6gJMvrYRJIu3QHJ8E5e4YlHVsCUXiUBkx5xsVLrQA0GHSch96+yMmYfMiVt1s84
         sMyj2KjSFfoPry1CiXkPugXzWvmqThtj2ubFvavxRKvTsZ7qPkVEnRS/pfXtrUhJbuC1
         709b0AzNahmNJeTtetxGvzvMcUSDvPnlei2K5XKhY9ZUrUMlxJevpocY06s+8dYcHZqu
         4tXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kOJsyAmVueOVmvzV7e5FBHtQTO4+gMRxiZ6qsFibLF0=;
        b=dXswmf+XM7fJDnj88+0T3TXEhs5iucONfwlx5PAxsFty+Pmyhmp1a8ahxf4qIm8hb3
         S3Yy+QeIV6UjhkaJhJ/xs6jgN3PvfO10Bha5xH8xh3AF/sRoh7sBPmb2QmqmbSIYQvyl
         cF6iZXekxkafBx2bOlntaNnRvcTAiJyJXl7dG7HiwgK0xPXCdsXyxRrtzKYoXgaHuQi5
         Z1uR9dZwCXL1Ya60KSI1mXtjOYNAza9uVKh9mz1FVidP/cJZY43RJW3iEqHMWiejKBfl
         b3j66cNYm8qXrbk1svAxBom8OOjzhJe6SjSspBEWgrULNMl/Ir9TYs8F8qI7VbOofaky
         gPiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=tdiP2HD+;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p45si99149qtk.2.2020.06.17.18.15.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:15:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D85FC21D80;
	Thu, 18 Jun 2020 01:15:33 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 347/388] ntb_perf: pass correct struct device to dma_alloc_coherent
Date: Wed, 17 Jun 2020 21:07:24 -0400
Message-Id: <20200618010805.600873-347-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=tdiP2HD+;       spf=pass
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
index 972f6d984f6d..1c93b9f5c73b 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -557,7 +557,7 @@ static void perf_free_inbuf(struct perf_peer *peer)
 		return;
 
 	(void)ntb_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
-	dma_free_coherent(&peer->perf->ntb->dev, peer->inbuf_size,
+	dma_free_coherent(&peer->perf->ntb->pdev->dev, peer->inbuf_size,
 			  peer->inbuf, peer->inbuf_xlat);
 	peer->inbuf = NULL;
 }
@@ -586,8 +586,9 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 
 	perf_free_inbuf(peer);
 
-	peer->inbuf = dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_size,
-					 &peer->inbuf_xlat, GFP_KERNEL);
+	peer->inbuf = dma_alloc_coherent(&perf->ntb->pdev->dev,
+					 peer->inbuf_size, &peer->inbuf_xlat,
+					 GFP_KERNEL);
 	if (!peer->inbuf) {
 		dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
 			&peer->inbuf_size);
@@ -1554,4 +1555,3 @@ static void __exit perf_exit(void)
 	destroy_workqueue(perf_wq);
 }
 module_exit(perf_exit);
-
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618010805.600873-347-sashal%40kernel.org.

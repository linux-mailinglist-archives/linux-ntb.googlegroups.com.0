Return-Path: <linux-ntb+bncBCHK3VHCYUIBBPXR5PYQKGQEF2GNG3Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB28153631
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 18:17:51 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id p193sf4004144ywp.16
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 09:17:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580923070; cv=pass;
        d=google.com; s=arc-20160816;
        b=pdiACVStSDwiuk8g7yvJszwpebzZkSFtat2WbXVDkwBog9GQVYaZ/Cox585JiJgwGd
         rU62zncwJ6o8ZmDMd5ngj9B1ihlZ5ra4zaZZEWr3FojYHd64Hpsi1YkG4rp2TmgLBpiF
         d/2pef/InhSZuSNSmn83PrSwh8dKqSXD0FF9/MOq+NgBdMn4H95VBdHF88rRyHlBGjwm
         bHWXNB9lE6xxuCfRMLl8QLbiaqndsg2LOFt9V3170SOskuRi/8IfZnpwYKGjU4w7fToi
         g1Ljyvc/5FV4Xajfl4hhP2YCL9aSrYufclnepLB2VLeYS+uow1WtZ+p0yuyCORnp88Sv
         ERgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=sl1y4lHTyfMkP0x3As8YKJsDTFUe6GwTwthc9KdhAgE=;
        b=qzYvr9uKas6KW6XdstrmZ4Z4zYBTaUXlcbQ7AVmo9FKnJggvAQfiQ52YJZqyBsNyHS
         qjaGqDikRl/q66Nc+myUzZfnlG31ke1wkCi6xJJgm/kkNa905fivJwye9qesDWGM9Z6Y
         Kq8a8HUTe2eWut9P0ulxIMGqOFeBWgWeb0zCs/d6kSj4JjrehkGx0fxGPEnFApMZP9WJ
         8H51L8tG0+mG5//C/JO7ftn1hld9wwGZMVd7t5CLzU6GZ7x9RWVEDaIBtuhIkqDzkZTD
         deQJjU49rVHcX2eWuSUqJ1ZIOQnkf5myARqK04IIIm52VMvlTvAQRS9VOq/M5Bz+Qdih
         nKuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T5Ri62NQ;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sl1y4lHTyfMkP0x3As8YKJsDTFUe6GwTwthc9KdhAgE=;
        b=Y8bB5KzZs+bJSpWjYJxozL2dyOEsWMV4pJoVwRqCpJTOxnn59ohAmxUlwoM/PNgX8T
         neIPTcYGZTaUJStLZCQiEnAW22um47Ce+mRdV+nIOEluimrFf8qh5jcpTGm7CojZ/qpn
         nJw6BQKfLf5338Vk/TP1RTlFEgjfJSimDhPNPug7YUQtpEWE26HxdWOfrBKzj4dJfmEJ
         ZP7tq8tGl+j22eOIDNPJrlC7G/052y02YfJU9hw0lPnbR6h5hJ+kd8sDEwTi9xJqyw6p
         sMW3i6wnPEdH5ZEnNlHkh3UXKBgI/54c5zdui3OAf6fcQpzYPpa9338NDtLM0INcIqdw
         Xmcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sl1y4lHTyfMkP0x3As8YKJsDTFUe6GwTwthc9KdhAgE=;
        b=I48I6O8lcNg0RJBTaT5lv+Zy3dwKUQlfS4bbpJ9q9svoTtX0CCYODONXaGvvpf49C8
         0qOvYyXb6gfPG7K6siMMM5ehhrumzHytn0W0PdagvsJvsDCvHy3EH+c967LKoJofYO0S
         3KIVxk6AOEHF3N2E60D4uTDF1BQ3SmqdT558S5dsO9ZX9EjYWLGABLsJk+MkOnD9iq5p
         ktdWp/piEow6IPdzna1fD+KjX7lVLOH3Qo4oRw1wo/pFiXyYYGsmcAoga5Gi0oYXaMgC
         3uye6wJeXPNRKT177dCft48WulJrOjyg51FCO9+6tih46NTbU4LOL50wik+ujrB7Y1+M
         qy5w==
X-Gm-Message-State: APjAAAXh/nJegjDu2cCjcmJkEhGnuptjQ9bDjzG4azpmIGqoc7vNe9FQ
	xIPF+GhSAPymNv+bPbtBK9E=
X-Google-Smtp-Source: APXvYqxk16uqzoC3pYvq4WMgAiMOhiGbOShCAPIjRVq0kVNCwjM6cG8IFmWhDpVQucFAHdkB+d/Qbw==
X-Received: by 2002:a25:dd6:: with SMTP id 205mr31947705ybn.54.1580923070634;
        Wed, 05 Feb 2020 09:17:50 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0d:cc05:: with SMTP id o5ls652439ywd.1.gmail; Wed, 05 Feb
 2020 09:17:50 -0800 (PST)
X-Received: by 2002:a81:6742:: with SMTP id b63mr11623169ywc.205.1580923070274;
        Wed, 05 Feb 2020 09:17:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580923070; cv=none;
        d=google.com; s=arc-20160816;
        b=Wjr/xom71tXH2EbF43wugLubcijYrzUEpb50wJCXcttvs543bdiU1i0zKV4Ez1vmE9
         y4MDMmn2QLdoFADpLWGgoTtp4eUsqzNHkt2WWEtaKVCe5V73LHqPmpxhqtoYZocmq+Db
         uxgp50hG+HULQ5o3OVzY2dj7XkrOK9xRLHOUSA61Oy7QCia8g0ZnYup9zBqYx/wfgSj1
         wHU5TTGJ7v8vRjCq9l/DSV64LG6Rsz9e/Q4vywTE7+meaLMqgyuW4Xp4NyISe9g7cO1K
         0fXCtwqC7NoULjYMAJAJtLe0ufaBOaMex8D0MqDB6gK79+5rZITqkH4MhunrB6YrHZDi
         CpdQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=mUDsIDZABMZl51KhHVbThQf4Tq5Xiy3roaR+2Uewz3I=;
        b=wc7rylY5Hy2xsj9PmSrdnagy9eePjAVbR39lExBvdH3FqywcsFRgotdX9YERUsBZiT
         VFeFoeBSWNsXKqDdnSvq54cctbhdooNPjSkZELrxh+IptBJF15JlbBduJ1cEUJSSmbH6
         HIMku1utiSOsMVr5VK8vSLg6Gc1eOqKJ/n5EXCGYtB12X9qITVlR4snp7xYFfjRdwMfW
         Sl2yme/qoAxbffcubCU/uk2u48anC3MW/3W350ZT37Prqv0205ASusAsWZjtby+lpSU6
         MOyFGZmrveZP6+UXqu6YlvTrJpiVMnqY4/oPbnbfbaPwolQHhYcrpsTxRRiE/JF5gMfN
         VTSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T5Ri62NQ;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id g196si25485ybf.5.2020.02.05.09.17.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 09:17:50 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id a6so1141058plm.3
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 09:17:50 -0800 (PST)
X-Received: by 2002:a17:90a:d081:: with SMTP id k1mr6863551pju.57.1580923069539;
        Wed, 05 Feb 2020 09:17:49 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id l8sm357945pjy.24.2020.02.05.09.17.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 09:17:49 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 4/4] ntb_tool: pass correct struct device to dma_alloc_coherent
Date: Wed,  5 Feb 2020 22:46:58 +0530
Message-Id: <a408ec42122ec0d9ad9aa0d3287f485eb727a6d6.1580921119.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580921119.git.arindam.nath@amd.com>
References: <cover.1580921119.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580921119.git.arindam.nath@amd.com>
References: <cover.1580921119.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=T5Ri62NQ;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
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

Currently, ntb->dev is passed to dma_alloc_coherent
and dma_free_coherent calls. The returned dma_addr_t
is the CPU physical address. This works fine as long
as IOMMU is disabled. But when IOMMU is enabled, we
need to make sure that IOVA is returned for dma_addr_t.
So the correct way to achieve this is by changing the
first parameter of dma_alloc_coherent() as ntb->pdev->dev
instead.

Fixes: 5648e56 ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
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
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/a408ec42122ec0d9ad9aa0d3287f485eb727a6d6.1580921119.git.arindam.nath%40amd.com.

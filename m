Return-Path: <linux-ntb+bncBCOOP4VF5IDRB5N26X2QKGQED7MQL7A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 295DF1D33EA
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:02:15 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id o16sf1507026uar.14
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:02:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468534; cv=pass;
        d=google.com; s=arc-20160816;
        b=AZ0yG1vtnxEs/YQzE5oAlLI0uihe4wqcBwYjcJF+uLkp3JJqSRARO1bSm7D+i70wIY
         yKWRrsaI4KXJiwo9RbmkdyEd+RzuQ2AS9H9mTqtT+RDrrFRojOFLWULvhw+iNEylOXml
         6OqvbqZ2reQxGPIq9WtYN5nFkhSZ+GH33Mk5RLNoZHWShvp7ai5Tf4y5zgzSbZ5+Xd4l
         7t+T5Z2LQTZ2OUEYPknTJO1WjHSsnrWNf4/fFt/wr0dAzXxZRdxhPKVwBtRtEIfxALR6
         sIuZYH7HRjJd1UDpYGdt0z9+gtgNYWVC/Jaqz7TdISEgkhYhBB0D+Qlegaye36n6ttEW
         5SxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=yFiKQeysFF2giLPRltX7n7i08VtWU4Gz+ZGR5TXumPw=;
        b=Bpe/wnRZZcG1/OsY6ELl6h80fKX+kTbGt5g8ao8AtN1e0wTmphPoELEi1Cbi7WOT89
         REPG7lypNsqlde29zYY41Jh3h6tCPFDaRqw1E+FGhqPAqbjjFD5Jkk/TmtZcrDITRLRg
         ie0r2eLfgtIXVRnGUzRfyrvIEJq6sv57rhnE/RHurvIpLLnb5uLFoXK1X6SAXC1M15ZX
         QzXzR4zzgVpVCHG5GFvaAvAZM2RUIQnwJz1zcnCCdrso7k8nqlPF1REJR6MmQh/ItTEH
         CTZ6wFALNf+XdH1xJG5C1yOIhj9XvVbsH0gSAJigmgK1khZ2dOzN+lPSnbxoTbkkPKat
         2m3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=KG8A1qVY;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=yFiKQeysFF2giLPRltX7n7i08VtWU4Gz+ZGR5TXumPw=;
        b=C3v7ng9BQZb1f2uXeSzAqGhTcEhQ+HGwbeup3DZY1MyhiJeuOxpO4z9/GkdjavUo17
         aKz44oEbDBd9ZmjCGYkArzZ+o00HSqt7R/+ZYgWZk+kGAbRe9vyOT/qa2jV+JDCKSmOV
         VQWRGuAVJ+TzB7pdbxr9jri2WSvz8unxnW3SNS6KvHZT45wwkUt5MiJ6L+0fqck9DOnT
         FD17sLzzU2z04zPOaaqHl+GyZXPPFoiW/XONNmShsOSmNQ7+rTE6vK+i8l+C7AhKwaQb
         f8gGqXzt3JUvIixp4gbyXySL7tUpuXHNPJoKrJK8cqRuR5uxb7lFWSHGxq1MQn7zomtH
         0NYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yFiKQeysFF2giLPRltX7n7i08VtWU4Gz+ZGR5TXumPw=;
        b=iq8b3icINJEWqLXA0MGs2znmj2CGwDkh7mAsL2O+O98CryEMF5NJkcHFyfdpJf8P5m
         c/rFUCElgQk7pseLg7OShcIHbl45lhajXtaUBx9lMU/PTUsDOYdNrr/hgQulB1LTJPp9
         NSPF989iLGTwnjliGU6X/jazmg9UbSkSnVc+qPArsTopnLK58HjEWQVNQAZS9vZOtTx4
         kVkB8vH9wmWiTD5USGQ9UViy4bkJss2eqGyyaO+g/oa8aLyN56QuyV2znfnER26fpFWq
         thDmsdsTtUUI9nw68ZzzYmhLfs10kVra/w15YQ3F1KIYsClvhaXfGBospAuKOUd0iknp
         VnNw==
X-Gm-Message-State: AOAM533I8erli14QLUumgkmTTPFvM9UnwXRmp5gOM91Dl3fWqpRKuHYb
	60xWws2mScWjl6ehHAv9e7M=
X-Google-Smtp-Source: ABdhPJzNZWIyrpTFI1g78EoQUf3lyGfL9x7xKb7wL2vP0hVQuSQamrhjfJfWGThbK2N960gDm8DP1Q==
X-Received: by 2002:a9f:35cb:: with SMTP id u11mr4524849uad.38.1589468533869;
        Thu, 14 May 2020 08:02:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:b14c:: with SMTP id z12ls427600vsl.0.gmail; Thu, 14 May
 2020 08:02:13 -0700 (PDT)
X-Received: by 2002:a67:ee0d:: with SMTP id f13mr4113112vsp.188.1589468532946;
        Thu, 14 May 2020 08:02:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468532; cv=none;
        d=google.com; s=arc-20160816;
        b=u+ofCTXiMcTcO/vqyxClQmFbo36TcGT86yVtf6wz+S7lmNUlB++I9UnTj8FZokxY4R
         OOocx8JU+SG1CbNDVZ1NgiOQfVOoNAsWUgKsxRKwsKPjq7rpTWoGiXC3K+RctTSnkbRq
         Vv1UQD7sVSg366p9y/2+oPRjyEjHLndhdVsg6SJHOjApq8rY9xj3vVcJKO9us+7imqwF
         zvEz39EhFiYzSAYetuSwqDIdE1T6EzC+H+pnasBjNegCin03uiQDLgH6IeggRfbEtWcr
         Vvvm/qsWz0WIFouHRh68ZxDSqUgWbvJ6FQcVTK4GJxW5HbeHztE+8xO2iUGJ6nAIC4aG
         WFng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=4C0TWTfTSDRj2w7qQ6T4h7AbzhbqZ2/D2YKSd7EQANY=;
        b=u715xlTdPJqE/qs+f+isCx1Y72USDsD6o3Xu1BKOtD4cWJM7hizSa+IzEO3RVXlbpS
         8u4KWg8uuhwVDsGiID54E5iliWWa8jdjY7zzcM0zkIlfKZruT13BUOOJ8Sm3iDeLrQM/
         KSNnujT5tAYc2O6ZSfIZ/TIxapcBhEnNXhaSDX3Pb20SQe+QouPPzkFvgqgLG/NHOWhL
         yA9+356oYgPCMLnwWcj/pxL5dHkBL7GKh2aqlF14l3mbeIjLjE/quPlVFd3obQCtbONr
         bUKSjXz+ceig/KZKHtJ9DNuY+cT5SLZBXZIvDWOhOKSU8ojwwnRPwd5nBvUS17rwW8Ia
         oRsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=KG8A1qVY;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id a65si208622vki.2.2020.05.14.08.02.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:02:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF1I8J000696;
	Thu, 14 May 2020 10:01:18 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF1IQG104549
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:01:18 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:01:17 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:01:17 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgB3019279;
	Thu, 14 May 2020 10:01:13 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann
	<arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Tom Joseph
	<tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring
	<robh+dt@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet
	<corbet@lwn.net>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 19/19] NTB: ntb_perf/ntb_tool: Use PCI device for dma_alloc_coherent()
Date: Thu, 14 May 2020 20:29:27 +0530
Message-ID: <20200514145927.17555-20-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=KG8A1qVY;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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

NTB device is not a real device and the piece of hardware actually
doing the DMA is the PCI device itself. Fix ntb_perf.c and ntb_tool.c
to use PCI device for dma_alloc_coherent() instead of NTB device.
ntb_transport.c already uses PCI device for dma_alloc_coherent().

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/ntb/test/ntb_perf.c | 3 ++-
 drivers/ntb/test/ntb_tool.c | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 972f6d984f6d..7f830a3e5b14 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -566,6 +566,7 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 {
 	resource_size_t xlat_align, size_align, size_max;
 	struct perf_ctx *perf = peer->perf;
+	struct pci_dev *pdev = perf->ntb->pdev;
 	int ret;
 
 	/* Get inbound MW parameters */
@@ -586,7 +587,7 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 
 	perf_free_inbuf(peer);
 
-	peer->inbuf = dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_size,
+	peer->inbuf = dma_alloc_coherent(&pdev->dev, peer->inbuf_size,
 					 &peer->inbuf_xlat, GFP_KERNEL);
 	if (!peer->inbuf) {
 		dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index 4b4f9e2a2c43..5c9f034122b7 100644
--- a/drivers/ntb/test/ntb_tool.c
+++ b/drivers/ntb/test/ntb_tool.c
@@ -576,6 +576,7 @@ static int tool_setup_mw(struct tool_ctx *tc, int pidx, int widx,
 {
 	resource_size_t size, addr_align, size_align;
 	struct tool_mw *inmw = &tc->peers[pidx].inmws[widx];
+	struct pci_dev *pdev = tc->ntb->pdev;
 	char buf[TOOL_BUF_LEN];
 	int ret;
 
@@ -590,7 +591,7 @@ static int tool_setup_mw(struct tool_ctx *tc, int pidx, int widx,
 	inmw->size = min_t(resource_size_t, req_size, size);
 	inmw->size = round_up(inmw->size, addr_align);
 	inmw->size = round_up(inmw->size, size_align);
-	inmw->mm_base = dma_alloc_coherent(&tc->ntb->dev, inmw->size,
+	inmw->mm_base = dma_alloc_coherent(&pdev->dev, inmw->size,
 					   &inmw->dma_base, GFP_KERNEL);
 	if (!inmw->mm_base)
 		return -ENOMEM;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-20-kishon%40ti.com.

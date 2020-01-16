Return-Path: <linux-ntb+bncBDTZTRGMXIFBBNNVQLYQKGQET32B7MI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F1813E5CE
	for <lists+linux-ntb@lfdr.de>; Thu, 16 Jan 2020 18:17:42 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id u14sf16585445ilq.15
        for <lists+linux-ntb@lfdr.de>; Thu, 16 Jan 2020 09:17:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579195062; cv=pass;
        d=google.com; s=arc-20160816;
        b=XVA4bvahBI1YgfN9rmTM6PO/uwc9T4tnhO0DOQziDe15FoOe1l5mi3JP0a7Drphp48
         1Bv7onlGrTkHTWbReNaGNdd34LJ4tw/XsqNCmp49JS9avRPIe/IeT0+1kn0/sTpMrP28
         JLnBYa/72SRbAI5solj3v4S5khnILMp9xagnxj3Eby7WOYHGZY3XzqijdrnErr3egtm5
         jKn1rljdj5LnLxu5n29fCSJGKMBj3+Sa6M4XPVqDitCZs78y0XC2P6gC9ifKk0IquEjP
         n9EQByA8ftrGwBqPXC63VnaWgltvHrVic3cy+0Z5HvkBxtHbYCPDPyez/R8xN+7kgTrZ
         S38Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=F/9c+mgB+e5PBB4Pz+W6zrZGt5sGG9+HpjZ6Y6HgZnk=;
        b=gFuHq9FRLOvIkpCpkUxL0T/yF+KOEpHG0x2cPQq7MTOronrT7g6R/u75zHPqOHow5P
         bbg1A7Jc9vNeNsbY6QP8ZEf6ju2fKRDQXuMIlH02jnSaBCZHvjeQEiIoMY+Qia42VIJN
         uHnSHtHZCjqeD87PsgM50yx5Q37IeJ4mF1C+FllssIW7C9bD8azXru/Qru6m/8EJMEdW
         9gkIx3GZ1EBBR7bshjc0pl6ZoqyHQdgOsBSg0Ven+QK1CU04/3SU7SV4Ox0FspqD+EIy
         vDFr/x3kxEQ6mgLyFNB3SJmdOp+E29NVd75sG+VR+6Tl3U4AWLQLnrdCu4iebK9hTfxV
         +r3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uiwISQ4M;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F/9c+mgB+e5PBB4Pz+W6zrZGt5sGG9+HpjZ6Y6HgZnk=;
        b=FKFr4Fi2wFK2AaPTVHZfFCxXwOIAy4mvh+buN8dyVg9dej7GpCRzQhIe1stH8KSqON
         IAlIbM8BPBPd7VAoG7n9nFvtNLDkUtX9aRHfO6Ki32nnSIaXR2GrJAo7pcaZix46R1cv
         oXfZ3gkGLMy3QqmemXJxcnFbUVHpMC46FYT9SBsAFUFYoXQgKHgaXYNQmKNDlTvswQmI
         1JSPtMmt/Na3hMILaTs6CYsJaqIaWyBllIBfpi2JZSUTnd0hT5cN5p8F6pR3YQlMA6NZ
         bcHjK+9gz7H3oFL4Aayfc537FVNcNfEtV3lHUN9b1wQOmTPn5qwsTp2LQsOVhJT7u6xJ
         LYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F/9c+mgB+e5PBB4Pz+W6zrZGt5sGG9+HpjZ6Y6HgZnk=;
        b=abe/TEsu/d6XDzsDvBJCTUFReezPvBMFD9kASrC6Qx4v70g8s44ybiYPj8G8+rOtxt
         YSAmC7i3DxcmO5pOt+CGgKP6f73jkIFocpgZF8OwsjBdTEGwnEoH2mqkkf82TV35aEgp
         LTz8VI6l6WEc9RyQlDVtGD8+Nn8T5x4OdSSvYHRXe164P/yvqO+4ckFjl1tw9HXzaHVf
         HCA7LORa+1pDIa8Xn4alItYuGvH7fX/78EhDEsj7cWOYTerIYSnkvAHWB4UmQteippiH
         Z5lnfbpU2oAOh6Km53c5VUg5U8G7mbLUVfOa5HhLBLA1hvZLFUyOfhmCtO2LAbhQ43fd
         wTgg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXTLMGX6ZiJ1m6gTR5otZ0iF489d0kR3OruQmSItIFiadi90Xb2
	DiNusFacy9QEX8o8FKen+6Q=
X-Google-Smtp-Source: APXvYqz1dK1PVIZAXAcjoxKunt90ZMv0LFlfwDb+fMx3/j9Mun2H6qFvu+HfLSNHF/+7E8cqAVtc0g==
X-Received: by 2002:a92:d7c6:: with SMTP id g6mr4278123ilq.282.1579195061944;
        Thu, 16 Jan 2020 09:17:41 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:c411:: with SMTP id y17ls3633039ioa.8.gmail; Thu, 16 Jan
 2020 09:17:41 -0800 (PST)
X-Received: by 2002:a5e:c606:: with SMTP id f6mr11603527iok.71.1579195061566;
        Thu, 16 Jan 2020 09:17:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579195061; cv=none;
        d=google.com; s=arc-20160816;
        b=xSq2S8//wwqpXMcEBI9+6CwAzxmLmQzPSalnzcfiR3NzYVczWAF5kIFRu3LKDP37T7
         sHQDxJOhkuZKUC5voM+VvapXCyf5tgFKDN2ot//4qVaYVUAoCm+ab1zSCNy1oPDNAZaP
         FvuD9ACzq4Ps9teVH5rbvY00ZOZeWdB1HXfcMiMf0lJ7Y0ieFxeMZo0rZCc46w03aYqA
         acIF63MVqkQ4ZgydlrBqz/6RrnXWKLOmwqtLchWJ/IvrwplTUUZfDAdXQTflirtsYc8E
         oZEvQiZ1rjSwhAEGxJwcrstq9yEZ/j885+8bXQBQBbcaDk/1MRT48d1Z5Mvjl+P5LW8y
         ayiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=rvFYnZVknwiqXuZHTGfy1RTK3dfLh8VT6Z4ocZCnSFw=;
        b=ugV6NyJP0y6Fu4BBbvESfWrBa5Gj1aknIAxkTJcqycpSSLjccCNfPLBmd4VCzQefKh
         iXMH/dZCDJMHVQ1f7zeXLXYKoS5im8mXaR+cZeB1mxdOviIDZZkgCGW23blF0fxXNosr
         N/33LasND40SSkCEzgHMdgc8Zfyr3+ms1V73JGs7GCXGglChFvAKkzNTxhJCWrdHENuW
         YyRASxabF7+6KwpLFle01gorE8AJ3mIde4/qm83+FyArwhf6QkZuztRIoS7aRWuVaMzi
         DnU9q+B3VSgsHxpOLLqp2l0Qj3V0d6ztONr1k++yWQdRp+82wsCFHKl37nekcdsOmB5M
         Ipdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=uiwISQ4M;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f85si1078991ilg.2.2020.01.16.09.17.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:17:41 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4798024693;
	Thu, 16 Jan 2020 17:17:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.14 016/371] NTB: ntb_hw_idt: replace IS_ERR_OR_NULL with regular NULL checks
Date: Thu, 16 Jan 2020 12:11:24 -0500
Message-Id: <20200116171719.16965-16-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116171719.16965-1-sashal@kernel.org>
References: <20200116171719.16965-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=uiwISQ4M;       spf=pass
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

From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>

[ Upstream commit 1b7619828d0c341612f58683e73f279c37e70bbc ]

Both devm_kcalloc() and devm_kzalloc() return NULL on error. They
never return error pointers.

The use of IS_ERR_OR_NULL is currently applied to the wrong
context.

Fix this by replacing IS_ERR_OR_NULL with regular NULL checks.

Fixes: bf2a952d31d2 ("NTB: Add IDT 89HPESxNTx PCIe-switches support")
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/hw/idt/ntb_hw_idt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/hw/idt/ntb_hw_idt.c b/drivers/ntb/hw/idt/ntb_hw_idt.c
index d44d7ef38fe8..b68e2cad74cc 100644
--- a/drivers/ntb/hw/idt/ntb_hw_idt.c
+++ b/drivers/ntb/hw/idt/ntb_hw_idt.c
@@ -1105,9 +1105,9 @@ static struct idt_mw_cfg *idt_scan_mws(struct idt_ntb_dev *ndev, int port,
 	}
 
 	/* Allocate memory for memory window descriptors */
-	ret_mws = devm_kcalloc(&ndev->ntb.pdev->dev, *mw_cnt,
-				sizeof(*ret_mws), GFP_KERNEL);
-	if (IS_ERR_OR_NULL(ret_mws))
+	ret_mws = devm_kcalloc(&ndev->ntb.pdev->dev, *mw_cnt, sizeof(*ret_mws),
+			       GFP_KERNEL);
+	if (!ret_mws)
 		return ERR_PTR(-ENOMEM);
 
 	/* Copy the info of detected memory windows */
@@ -2393,7 +2393,7 @@ static struct idt_ntb_dev *idt_create_dev(struct pci_dev *pdev,
 
 	/* Allocate memory for the IDT PCIe-device descriptor */
 	ndev = devm_kzalloc(&pdev->dev, sizeof(*ndev), GFP_KERNEL);
-	if (IS_ERR_OR_NULL(ndev)) {
+	if (!ndev) {
 		dev_err(&pdev->dev, "Memory allocation failed for descriptor");
 		return ERR_PTR(-ENOMEM);
 	}
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200116171719.16965-16-sashal%40kernel.org.

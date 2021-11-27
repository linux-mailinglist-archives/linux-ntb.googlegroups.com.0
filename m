Return-Path: <linux-ntb+bncBDAMN6NI5EERBOURQ2GQMGQEDY3GKKY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E2D45F97D
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:11 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id q12-20020a9f2b4c000000b002ddac466f76sf7364478uaj.12
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976250; cv=pass;
        d=google.com; s=arc-20160816;
        b=TGpQ8Jrb+4P3XlX76gGYYPYATQhQ6VDFVDf/00HkEP5tj1h9mBSsWC0dfgf6nL+cET
         eMAEDjT494RQnhOXtycH/IScS7W6SPaggh3gPsq/Gnq60iJ/mH5gOJEHt/vjzLSUuPXL
         JZk5BFGVNQp3YgyhmVjBLirSMrvQ3bhGnFFHAoBaSgvUj4Esb6nfX3uy7Wob1sn1uwTd
         jHYRnU2XGXvu1TEEMl+WcsJmqNQBlR8C2C76eNswPUbOXGxghD/pdkoIOOiqZDjeTPbT
         Cv9C0n7C3V35Wvzgpn5AD1bGWb8eq7pBG5loAWqao+1c5ZWEi9YWbCPUYxk6LkM2A31N
         FjeA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=xcDkGJ9tG92DrrxklkNPsI+tTvBb0yiy4Wz4OGf2mRo=;
        b=xJlNbrHEovSXalvywWOn675AO6fGoUrziLTiTe6hBg0qgkixe4efkVFWFw4j4hEgyI
         jqoASBxeLtQCfbeD6pRfgpd8FUXUNXnBdGXMrIRY8oFAMbn6Kq7QWYcvlPqNdnljGsKZ
         0sPDng/+qdZEB68l21rAmiSj9oRjyfzLhGZt00y0OpxD/rHXzGMuOsvf34wVLJYFi5KL
         pdpLSzGK+FTimTBAVjyBlGRrf9ZtCc4o2CD5jUmTI/4lixtTqW5JwPKoyGIfQX/UIjW5
         pgJHwLyAO7fukMdUldxawtV0evjqIAqwAmKylOBGaby84Zbd+fAypOsnSLfYJmmbe5/J
         nKzQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=2D+SHUmx;
       dkim=neutral (no key) header.i=@linutronix.de header.b="ONl0VPO/";
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xcDkGJ9tG92DrrxklkNPsI+tTvBb0yiy4Wz4OGf2mRo=;
        b=uBL7qxOWd6WpESuWCgK+IY74m7pnZFPqqJev3VMk2yVk860PVy3Qqv9XG7TowuSLm/
         pmsyMPoSz05mEprMM7gEnk/PnYpUpduDJNRqiLjC1GzryPNu3kIap4KcF9LMSX/pHb5n
         0JZx0zdlk1HTCozroT1VxY1UJcG23eO7NTOZfVyEnMRYg5IxAE1LaJXHEws4ZfDjbTOi
         64b48V0ThUGr0OzkvhiNU7VoUPOZjYOZPk+Z5gyJ1MrRkDe0wVuyJn4W7D5CI/NeXPih
         MnQ+uLdyPCX2hz2doNz8T00vYE1PcJ0s0VHglqiD5bwJWCVZwJLlu9+us7OJuMmQzj0M
         2uYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xcDkGJ9tG92DrrxklkNPsI+tTvBb0yiy4Wz4OGf2mRo=;
        b=2B48tokxOv93tzEYqZzjh/LeZz7xLue5kTaQPCcznBmKu2mRevC+bozaZb+LFIcUkI
         9LQviLPIG3zTj1h5/MAWKxgfi47jDVHNlS8iVxCyAiu9CU3guKZptNNrtlstdKOFYGWs
         Nun07MNCOGZeb25zGmwZxwpEYuz7qLNMUVQHP9SLyMAlJMkmxof08y1oNGFowWB8iEtz
         CiMPDPyA15NgAE7Gf36//of13/qOlXa3fLt2CpMWupnapSENNQEi5WZIgpqAVjBPt9gl
         sbnzfLMr7h7hakXFCYpkogiidE2pYI4X/eBdgZLvq+7Wehkn2Oeuv+dKnasifFdKIR5P
         q0Uw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533vcb+wf0gmQOwaLN89akP6GSwcyxb/bHAv/KEJKUXQ18VbVW6m
	tRx5h+p6ed3vzqEJlrB9u9w=
X-Google-Smtp-Source: ABdhPJzfSwAvJxk08NHVvUscuoEVyhfM2bLtNrSYbjWGvHGvI7z1zSI4mIMDd8dll7TfUZprcEnH9Q==
X-Received: by 2002:ac5:c55a:: with SMTP id d26mr24552777vkl.25.1637976250170;
        Fri, 26 Nov 2021 17:24:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:e443:: with SMTP id n3ls2691425vsm.3.gmail; Fri, 26 Nov
 2021 17:24:09 -0800 (PST)
X-Received: by 2002:a05:6102:2859:: with SMTP id az25mr21135105vsb.25.1637976249755;
        Fri, 26 Nov 2021 17:24:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976249; cv=none;
        d=google.com; s=arc-20160816;
        b=VIQsbDs96NNsKsrEmfokr9XZOVGDe1JF6CsE8a8NaKAG8OFfZWUvvrvvXrhWYw4XU6
         WwrtoT/SJ80zxRx+Lxkf8E8SWUXtKGlOKZpHx/Ekt20MDjsvOWQDt9QQbKH92SJvA4gs
         7oKKYjAitUb7hnPRmSUtIUeBxORBDR37c+mg+kvpqBgXGb5w28gK2+Y53vi4PSpHlLlU
         H3VkxlXKiG3AyEfyB9SE4cKD94O+sJw08SRxTxaQr/jLVOVLFFdLdD3lMI3qjrA/IXT2
         OCq+b2B7VU/1m2LBKQzqTFnP5z/iVjW+YIG06bXh6Fz5kTNxl0GCjYM586trSQkaQGOp
         Pm9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=TGj6QTdrqi/+rBbBw9aAzTJFtE/Dj0UpsCqlfUJ2p/4=;
        b=paqEttthHCygz9TI2i530oe1j5aBWzlpJ+8O75KH05o8v24dzSLSfeKchftsINrFp+
         EFWzjrFdLlfnzINXplkrvQjqLpEZcZeOpUN1khGpxKfmA5zMAR9xTD/4wiwkpeOa3Z4F
         r5ELTHAakg20T++MIJzSCT4PafNttsW2FxIu+gYRLkv6JJ7xgG8Q/Snk1qSHbSdF6XUo
         Dq2dRdcAXJc7fcUFhQ4xIPT97hJW/QqsOidsqsSGLUpD9xmn/4eL8/1o9JjYNgBrP61S
         QbGYFqMDqMIrsfKnT+7tAfwvgfZFEmBGqv6cKqkoSkqnw0hoYbNIJF79LQqFUvSeZxh0
         g0CQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=2D+SHUmx;
       dkim=neutral (no key) header.i=@linutronix.de header.b="ONl0VPO/";
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id r20si909428vsn.2.2021.11.26.17.24.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:09 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.790472764@linutronix.de>
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch 25/32] platform-msi: Let core code handle MSI descriptors
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:07 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=2D+SHUmx;       dkim=neutral
 (no key) header.i=@linutronix.de header.b="ONl0VPO/";       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Use the core functionality for platform MSI interrupt domains. The platform
device MSI interrupt domains will be converted in a later step.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/base/platform-msi.c |  112 ++++++++++++++++++--------------------------
 1 file changed, 48 insertions(+), 64 deletions(-)

--- a/drivers/base/platform-msi.c
+++ b/drivers/base/platform-msi.c
@@ -107,57 +107,6 @@ static void platform_msi_update_chip_ops
 		info->flags &= ~MSI_FLAG_LEVEL_CAPABLE;
 }
 
-static void platform_msi_free_descs(struct device *dev, int base, int nvec)
-{
-	struct msi_desc *desc, *tmp;
-
-	list_for_each_entry_safe(desc, tmp, dev_to_msi_list(dev), list) {
-		if (desc->msi_index >= base &&
-		    desc->msi_index < (base + nvec)) {
-			list_del(&desc->list);
-			free_msi_entry(desc);
-		}
-	}
-}
-
-static int platform_msi_alloc_descs_with_irq(struct device *dev, int virq,
-					     int nvec)
-{
-	struct msi_desc *desc;
-	int i, base = 0;
-
-	if (!list_empty(dev_to_msi_list(dev))) {
-		desc = list_last_entry(dev_to_msi_list(dev),
-				       struct msi_desc, list);
-		base = desc->msi_index + 1;
-	}
-
-	for (i = 0; i < nvec; i++) {
-		desc = alloc_msi_entry(dev, 1, NULL);
-		if (!desc)
-			break;
-
-		desc->msi_index = base + i;
-		desc->irq = virq ? virq + i : 0;
-
-		list_add_tail(&desc->list, dev_to_msi_list(dev));
-	}
-
-	if (i != nvec) {
-		/* Clean up the mess */
-		platform_msi_free_descs(dev, base, nvec);
-
-		return -ENOMEM;
-	}
-
-	return 0;
-}
-
-static int platform_msi_alloc_descs(struct device *dev, int nvec)
-{
-	return platform_msi_alloc_descs_with_irq(dev, 0, nvec);
-}
-
 /**
  * platform_msi_create_irq_domain - Create a platform MSI interrupt domain
  * @fwnode:		Optional fwnode of the interrupt controller
@@ -180,7 +129,8 @@ struct irq_domain *platform_msi_create_i
 		platform_msi_update_dom_ops(info);
 	if (info->flags & MSI_FLAG_USE_DEF_CHIP_OPS)
 		platform_msi_update_chip_ops(info);
-	info->flags |= MSI_FLAG_DEV_SYSFS;
+	info->flags |= MSI_FLAG_DEV_SYSFS | MSI_FLAG_ALLOC_SIMPLE_MSI_DESCS |
+		       MSI_FLAG_FREE_MSI_DESCS;
 
 	domain = msi_create_irq_domain(fwnode, info, parent);
 	if (domain)
@@ -262,20 +212,10 @@ int platform_msi_domain_alloc_irqs(struc
 	if (err)
 		return err;
 
-	err = platform_msi_alloc_descs(dev, nvec);
-	if (err)
-		goto out_free_priv_data;
-
 	err = msi_domain_alloc_irqs(dev->msi.domain, dev, nvec);
 	if (err)
-		goto out_free_desc;
-
-	return 0;
+		platform_msi_free_priv_data(dev);
 
-out_free_desc:
-	platform_msi_free_descs(dev, 0, nvec);
-out_free_priv_data:
-	platform_msi_free_priv_data(dev);
 	return err;
 }
 EXPORT_SYMBOL_GPL(platform_msi_domain_alloc_irqs);
@@ -287,7 +227,6 @@ EXPORT_SYMBOL_GPL(platform_msi_domain_al
 void platform_msi_domain_free_irqs(struct device *dev)
 {
 	msi_domain_free_irqs(dev->msi.domain, dev);
-	platform_msi_free_descs(dev, 0, MAX_DEV_MSIS);
 	platform_msi_free_priv_data(dev);
 }
 EXPORT_SYMBOL_GPL(platform_msi_domain_free_irqs);
@@ -361,6 +300,51 @@ struct irq_domain *
 	return NULL;
 }
 
+static void platform_msi_free_descs(struct device *dev, int base, int nvec)
+{
+	struct msi_desc *desc, *tmp;
+
+	list_for_each_entry_safe(desc, tmp, dev_to_msi_list(dev), list) {
+		if (desc->msi_index >= base &&
+		    desc->msi_index < (base + nvec)) {
+			list_del(&desc->list);
+			free_msi_entry(desc);
+		}
+	}
+}
+
+static int platform_msi_alloc_descs_with_irq(struct device *dev, int virq,
+					     int nvec)
+{
+	struct msi_desc *desc;
+	int i, base = 0;
+
+	if (!list_empty(dev_to_msi_list(dev))) {
+		desc = list_last_entry(dev_to_msi_list(dev),
+				       struct msi_desc, list);
+		base = desc->msi_index + 1;
+	}
+
+	for (i = 0; i < nvec; i++) {
+		desc = alloc_msi_entry(dev, 1, NULL);
+		if (!desc)
+			break;
+
+		desc->msi_index = base + i;
+		desc->irq = virq + i;
+
+		list_add_tail(&desc->list, dev_to_msi_list(dev));
+	}
+
+	if (i != nvec) {
+		/* Clean up the mess */
+		platform_msi_free_descs(dev, base, nvec);
+		return -ENOMEM;
+	}
+
+	return 0;
+}
+
 /**
  * platform_msi_device_domain_free - Free interrupts associated with a platform-msi
  *				     device domain

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.790472764%40linutronix.de.

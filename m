Return-Path: <linux-ntb+bncBDAMN6NI5EERB7VHXKGQMGQEKPJLQAA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id D750446AD60
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:42 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id d7-20020a5d6447000000b00186a113463dsf2408294wrw.10
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831102; cv=pass;
        d=google.com; s=arc-20160816;
        b=j6RCTAlmODQ35u07H23mie19InqwXGFYnH/zmPqWE1y0cDiLpmtToalM3hc0GAHjL+
         /ZJR6Mt6cAWTn6abisk2sj/8HarV+IE1NcfQWIQCWohAjqDc+W15QEMo43Afl1udnfOQ
         HLoYHitKUC3TgqFUSPOQtkb3p6+yuoVSkj7otyeKhjm4pDsgjfdMoCoLsz/GCCLypSnE
         uSsPfXUv7YXfHVs+OVwpIvoZl0Oin8CBB7x16e4CR2PrWMoZgy4UrKgu5NeQ9BCT17NA
         GyoTdRp0gnHJXuqMBA+XTf04UAwRtX8pXVvobS2XXyWapWfuUtCyq5CmZwRzdvaQCFwY
         Kzcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=GDjBPsuGgGz8iLzPBEZG5VsI9RGcnRHHbgGzICK+30Y=;
        b=cdTAgdPWFrLqg1qbvxcdja57hYnoZw7LXiiXVmW0GvJ7AcdiGVMWj3/ikcyZ3fLe0i
         w6dOPL1XuQVu/p7W5kGyA+lTRd9UjO1uvjneHQiqWIU3dT9pnJxPONNfeZf2KNGV6oig
         1aW2riHiKn+bKEzH+CJ7n+euVXKAiZSzlHBVtANIfYIWIy7fNY8SyUIlrfZVgtU3xxKF
         YGhdlnjRxvvJAwtrpKfiLEAlwufL8j8z779GLD1kmGv/fkpjcaRiFl4PHrAL45uQwKF2
         N1s5lX101DQYmf6cIofj2jxpVY1Kql44d9EAWYI94TBsahgkYvhoVsHRkZr4QgGp8Cbf
         rHyQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=mVJN1RJZ;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GDjBPsuGgGz8iLzPBEZG5VsI9RGcnRHHbgGzICK+30Y=;
        b=LmgeA7G1sOLPY0h2W8esjH/SojYOr163L1Npr5zAzPxk2vFpQ04s4MQCNoj+SoFj2i
         D0krgK267O41YCRa4nu9O4Ci3kb8roeNwAc3FvyR2mRdpm/jOg8Jdb6e5heRg40Z7Fn0
         vjcldAJqdVllE+KWMq1RJDthJwEfIpswfFFUdkCvaXW+WTxNqDDPseRRmMICg+X43tMK
         AOzIdFEY7x5Lsxue96w0dPldpjoiQVm35K/66t3sjV4Bf0eQT8a0/0DkWKGeAZ/7J+dm
         F5RXKU8LMCCswEkf+Ed4Zvc6GUERbgxQyyGlz3B5oET72oSerVS4cJmMKff91eS33LGL
         VumQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GDjBPsuGgGz8iLzPBEZG5VsI9RGcnRHHbgGzICK+30Y=;
        b=LMY/hcW+bZGWdmaYMivCwl+MboIbK+UWLjqILeOlIi6FZUnUlU6YBOquZ9tbACa/Rs
         yXtLAR9/7i9LrbTQt0aVC0AFWeHAGRurhoMNGPg2l7aWBbLRylIomhTenVRLId7pGkxw
         /3dOpBsHamK4sosjIDEo/1h/UDed1U0694R2zClGxhvjxlzt/45Ey12mAAWMK7Pw2b+P
         WjSPXSC3K3KCO8swV74cZosVwX/8UNCsBebJBS4X7QaA8OP8CMdTEfnZGC2RJFvDddzz
         wjHPDDlZ2mLHWZjvnyyhWUBUg6+ROkZ/8jiZ02oma/rsHuZnnJNATy9E4K77oWo/Z5mq
         sOXg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5324hn4AnEMyqK8dnwQJs4tAp9DxEzPsTBb3I2hTnNcK5TK8w8D2
	mcmFHkdOKB/9GkLe4wCx9A0=
X-Google-Smtp-Source: ABdhPJwF1FhiAubTDuiwKw/8bcvTHVH5nDYxZqLyKMYX5aBGmodVU5aeKP+5GWqXrHQE7V46i96baQ==
X-Received: by 2002:a5d:568c:: with SMTP id f12mr46086767wrv.240.1638831102709;
        Mon, 06 Dec 2021 14:51:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:9d85:: with SMTP id g127ls43640wme.1.experimental-gmail;
 Mon, 06 Dec 2021 14:51:41 -0800 (PST)
X-Received: by 2002:a05:600c:354f:: with SMTP id i15mr1900563wmq.59.1638831101829;
        Mon, 06 Dec 2021 14:51:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831101; cv=none;
        d=google.com; s=arc-20160816;
        b=fsB5J+QqclwTnKIsDq71xu2yTRtT9nhqxUl8ldcPLbsCviaAPRMOBPkRNSPZ7eALgU
         2xa59yGwT1gtJOFLdE0FUDT/hbwNe+We9dYm2CshU5XOV0WivuVMI7rVXuOMcxZ6S6/N
         kHL4/+Jh3rxYrHOmX+bCcewguNCR/6Cs4GKnpLGlVBjNddT2h5LiyEgQT0cq0fl8d8aL
         V/qlfJ2Z7FKh74RVKNjCbFsBYkUIG3+P7K94IvKOg4K3S0Ur2OS007iU4Ezs35T90CYB
         FvVegiwTIdGuBmb+fz0ixI78TXVrVudHLswWhJAdqp/WdkXbaCuj+xxuij2BGrutBQJx
         goTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=TGj6QTdrqi/+rBbBw9aAzTJFtE/Dj0UpsCqlfUJ2p/4=;
        b=t/EbEY1P+0aqDaTSOGmw/ftuQY3V7Mj4FA+3ql1UktGp1VOuAeOqSiq2yQbSS8BBEm
         85xaIkDmOzzMJrQ3U06u9T1V2WwMbWWXeTnoXx5zqeLpEHDEda+BsDIRq6y3WLkiVjmy
         Xz65rcwwWQ3PZRAMOHD35zmbeR+Osa2IWBsXCYWvBmstWtS7nPPXtsmcJxlnQXpcG/aD
         qSkV4+B1cKVzDwxZ43zeqU8yIxN4YjMHehPiGwQcZdztLnfz3XvZKC1KMk2NNvi/Tpiw
         MfM9am76Fl0xBPgqPgEyQ9WUuZyYYxf5GkihLmVWm3NoaiBFQIteBlwOFpqc5LHQx38z
         JJdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=mVJN1RJZ;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id o29si156097wms.1.2021.12.06.14.51.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:41 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210748.903173257@linutronix.de>
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
 Cedric Le Goater <clg@kaod.org>,
 xen-devel@lists.xenproject.org,
 Juergen Gross <jgross@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch V2 24/31] platform-msi: Let core code handle MSI descriptors
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:41 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=mVJN1RJZ;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.903173257%40linutronix.de.

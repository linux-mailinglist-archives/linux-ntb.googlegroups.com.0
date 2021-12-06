Return-Path: <linux-ntb+bncBDAMN6NI5EERBZNHXKGQMGQENNV7LBY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id C64B046AD3D
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:17 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id h18-20020a05651c159200b0021cf7c089d0sf3735017ljq.21
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831077; cv=pass;
        d=google.com; s=arc-20160816;
        b=iDKMe6AWb3E2xDsAad2DwY6u4d8Fg3Whkn2TdS5e28At8lHpqcxO/b1f67tIV3Xgvk
         Xpk+xcF9+BjAUSYw7qEh/Et4ui7CkGkAoVYjdi1E7L3tFpZHs1rskyuTIcbqIk0wYnC6
         sD0y2WojIj/7V+8Rqi9vGbqw/HPnS2GcS+dl3qZfsi8Sxw/0WSpPeOILN/QYhL05zpof
         MvWW9MIhOczZTCAS5tjf6bfzQ02GvwkteugBuMH+Hh6dqeRWk5eA+U539DScFZvVlq4S
         8PgHavuxaOxHOszABMM8s/GAWXiHlvBEBIfwrrZJUaSKBS7eoSo3sGVJ6QJEYBDYGbwN
         XEOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=pHgWa7mKUbO06aI1ywjh1WGjYrSLP7AuI5tk66pTZ3g=;
        b=S0twKsCzo3N7DlxCyZ83gGCunKKke2prOnuvzoAQ5YUgoA+cwrSiqXldFPhGe1G0Yu
         ODj6Vc2Yv5LD8qG1yw1RSZuaXRZIeVl/29iPfbDbWI2FtC2mSHz7APGWdONUXeFIa3Rp
         O7ZwwWsR/8lst84dDEcX0POfsI4Yt4ks0XjAZslRdQYYxocxa3J+wB3XkoeFQ2YKgYO9
         ZCpJ3i9aJNEbciJUeesvJljYhZBGmp6idDfxh4T0xeXB7fNku/Mo2GQpju5WlFqqGNzt
         vKadmSvx8/vAMQpqv4mcLgQ0Y67WEyF1/5fCxtEGw4kQKFGHzIh/sLG2cGgY48lYbqtY
         7LZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=qaiiQOG6;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pHgWa7mKUbO06aI1ywjh1WGjYrSLP7AuI5tk66pTZ3g=;
        b=b5AcirDss9tLHRuN/0cZreWyzuCXXs4Q1rVbuPYC/DOeKQgUIaPyW2wwzs++Iu8mdI
         Is0VdLSAxoPp//mRytxwhd2pBwY2hZu7zp2vDykUUE1ylPTz/2F0yyLPktirZSnNRxSc
         4NgTV/OiPzqI2q+q03ZkzE4+yA3ueh8letPJDdjlTBK1soWAZoAgemkw/Sp/X1rJLIoB
         xvZqb0B3ymSC27pl7jEPVg9WEjXHsCAbg8DHS9nf25iRbRdMc4OJkuDA5YLgAjfidtzF
         HQYoltCMGg9ECl3BW1oCvh5c5JdIqZCpqbBt74oI40KHdQ1EfiR+7+4XjVSS7HGki9tc
         ZDUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pHgWa7mKUbO06aI1ywjh1WGjYrSLP7AuI5tk66pTZ3g=;
        b=H/PrcH/dTlbgGzKjW9QfccYw2Iz/T7vdF0VAbluEbnNFRsYlRuJNH2lnznMKZSlq3P
         IN8hjDBMiQTLxP9RmJj5TS8pVGt0zATQt4FlDmn3etO0jQ1+PhLoYCAQIroJOvx3QWrv
         EvBpmRnv3890RE8GbRXKsQUxVcu9on9eRP1DY2DhSfttv2QrwDnd/ghcHO3OZX7YYOzn
         QOqUYKaaNKoEFP+OAfCPtsg4Om6/+RIYYn6LVNN8GtrOyJzqc2nwlvKcFB/N2HvCrY6Y
         I4qU1B4xpibl4qmKl4HWfotqAQFeyZEXcG/fZ7Y7l/mEvseXsNUsh21bSxk2s4xrPF1D
         dq8w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533bo9XgPA/G2b4D47dVDrTtltTi2MmjAKn5tmeiCgMpC7rXtYlK
	undnHYFaTkG2thskrRoCuJk=
X-Google-Smtp-Source: ABdhPJznHmOrAbwzp7QJqKlN3WTojbvx+mTolGrFl9NT4dxcBTx8k+dKt1GPvNLQksMQ8Y5m51otrg==
X-Received: by 2002:a2e:9e43:: with SMTP id g3mr38072473ljk.291.1638831077356;
        Mon, 06 Dec 2021 14:51:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:a4c2:: with SMTP id p2ls2847251ljm.4.gmail; Mon, 06 Dec
 2021 14:51:16 -0800 (PST)
X-Received: by 2002:a2e:9355:: with SMTP id m21mr38814401ljh.419.1638831076424;
        Mon, 06 Dec 2021 14:51:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831076; cv=none;
        d=google.com; s=arc-20160816;
        b=QA2WQBMKoGR/BOHQ37suszLDbcSOA1FP88IgZ0xCRgiU2fbWbig3BUHU30vZu0jxp6
         j4gEBH9Nfi5um0k4zp5TNZOVzniRGmBuWJufo3V4OU/rXd1/VWaUqMMwSNVqD17J800p
         sasJAtUwtQ7v8pbNg5r40QF8YMC1wvPR4dDVJ43uWoey3Rm5CL/3Kb6UFhKGFMtNFgWA
         cT6GDyAQOp2Qpmfe7Q/AkRvsARF4SESVsQfZ+mmc/WdF+U8NJ1OI8Xqx4xR5Ef0k+Tas
         Vm+dlO734Rt88J9+jeUlIzzLSYvd0TPClpA5X3l9FYfKKg4yVvJ8b6XslKaUV4KE3ANy
         uMBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=wTyw9UHL4EZzi7S4TLWt2TYeHID6LO8QBUrMwBgaKko=;
        b=coGHIy4nqObXYM73HEQjOId7vpup2VKQqWPvANx74HV6Gzh0029hdnivh7wAsyX0UV
         O9Rq+HiBtJki/YTkHQSzCn4ll2DfR9HvNyI3ZByj/aBZoh+JRspYTUAiDc42nUmOVS4O
         kbyr51kGPozRyyCgI9vZEVB1N0AA+kJfPQ7P2nnyD5YHX2vWP4YPJJWuX0iCdkLKhZnW
         RYo0llNlrn/Y5a3IftD3P6BUffCFGQBeIAkNGymvPrGAp2cvo3p1aJwWaRwDc9KcD5wW
         hNXvvOPmS8ck+1D71lwMmhxQynfSbiGNUY5fDsE49o05NTM0XWyD4Oi4bm8fNAbazhde
         b78A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=qaiiQOG6;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id y7si873747ljp.7.2021.12.06.14.51.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:16 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210748.035348646@linutronix.de>
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
Subject: [patch V2 08/31] PCI/MSI: Use msi_add_msi_desc()
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:15 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=qaiiQOG6;       dkim=neutral
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

Simplify the allocation of MSI descriptors by using msi_add_msi_desc()
which moves the storage handling to core code and prepares for dynamic
extension of the MSI-X vector space.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/pci/msi/msi.c |  122 ++++++++++++++++++++++++--------------------------
 1 file changed, 59 insertions(+), 63 deletions(-)

--- a/drivers/pci/msi/msi.c
+++ b/drivers/pci/msi/msi.c
@@ -340,45 +340,51 @@ void pci_restore_msi_state(struct pci_de
 }
 EXPORT_SYMBOL_GPL(pci_restore_msi_state);
 
-static struct msi_desc *
-msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity_desc *masks)
+static int msi_setup_msi_desc(struct pci_dev *dev, int nvec,
+			      struct irq_affinity_desc *masks)
 {
-	struct msi_desc *entry;
+	struct msi_desc desc;
 	unsigned long prop;
 	u16 control;
+	int ret;
 
 	/* MSI Entry Initialization */
-	entry = alloc_msi_entry(&dev->dev, nvec, masks);
-	if (!entry)
-		return NULL;
+	memset(&desc, 0, sizeof(desc));
 
 	pci_read_config_word(dev, dev->msi_cap + PCI_MSI_FLAGS, &control);
 	/* Lies, damned lies, and MSIs */
 	if (dev->dev_flags & PCI_DEV_FLAGS_HAS_MSI_MASKING)
 		control |= PCI_MSI_FLAGS_MASKBIT;
+	/* Respect XEN's mask disabling */
+	if (pci_msi_ignore_mask)
+		control &= ~PCI_MSI_FLAGS_MASKBIT;
 
-	entry->pci.msi_attrib.is_64	= !!(control & PCI_MSI_FLAGS_64BIT);
-	entry->pci.msi_attrib.can_mask	= !pci_msi_ignore_mask &&
-					  !!(control & PCI_MSI_FLAGS_MASKBIT);
-	entry->pci.msi_attrib.default_irq = dev->irq;
-	entry->pci.msi_attrib.multi_cap	= (control & PCI_MSI_FLAGS_QMASK) >> 1;
-	entry->pci.msi_attrib.multiple	= ilog2(__roundup_pow_of_two(nvec));
+	desc.nvec_used			= nvec;
+	desc.pci.msi_attrib.is_64	= !!(control & PCI_MSI_FLAGS_64BIT);
+	desc.pci.msi_attrib.can_mask	= !!(control & PCI_MSI_FLAGS_MASKBIT);
+	desc.pci.msi_attrib.default_irq	= dev->irq;
+	desc.pci.msi_attrib.multi_cap	= (control & PCI_MSI_FLAGS_QMASK) >> 1;
+	desc.pci.msi_attrib.multiple	= ilog2(__roundup_pow_of_two(nvec));
+	desc.affinity			= masks;
 
 	if (control & PCI_MSI_FLAGS_64BIT)
-		entry->pci.mask_pos = dev->msi_cap + PCI_MSI_MASK_64;
+		desc.pci.mask_pos = dev->msi_cap + PCI_MSI_MASK_64;
 	else
-		entry->pci.mask_pos = dev->msi_cap + PCI_MSI_MASK_32;
+		desc.pci.mask_pos = dev->msi_cap + PCI_MSI_MASK_32;
 
 	/* Save the initial mask status */
-	if (entry->pci.msi_attrib.can_mask)
-		pci_read_config_dword(dev, entry->pci.mask_pos, &entry->pci.msi_mask);
+	if (desc.pci.msi_attrib.can_mask)
+		pci_read_config_dword(dev, desc.pci.mask_pos, &desc.pci.msi_mask);
 
-	prop = MSI_PROP_PCI_MSI;
-	if (entry->pci.msi_attrib.is_64)
-		prop |= MSI_PROP_64BIT;
-	msi_device_set_properties(&dev->dev, prop);
+	ret = msi_add_msi_desc(&dev->dev, &desc);
+	if (!ret) {
+		prop = MSI_PROP_PCI_MSI;
+		if (desc.pci.msi_attrib.is_64)
+			prop |= MSI_PROP_64BIT;
+		msi_device_set_properties(&dev->dev, prop);
+	}
 
-	return entry;
+	return ret;
 }
 
 static int msi_verify_entries(struct pci_dev *dev)
@@ -423,17 +429,14 @@ static int msi_capability_init(struct pc
 		masks = irq_create_affinity_masks(nvec, affd);
 
 	msi_lock_descs(&dev->dev);
-	entry = msi_setup_entry(dev, nvec, masks);
-	if (!entry) {
-		ret = -ENOMEM;
+	ret = msi_setup_msi_desc(dev, nvec, masks);
+	if (ret)
 		goto unlock;
-	}
 
 	/* All MSIs are unmasked by default; mask them all */
+	entry = first_pci_msi_entry(dev);
 	pci_msi_mask(entry, msi_multi_mask(entry));
 
-	list_add_tail(&entry->list, dev_to_msi_list(&dev->dev));
-
 	/* Configure MSI capability structure */
 	ret = pci_msi_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSI);
 	if (ret)
@@ -482,49 +485,40 @@ static void __iomem *msix_map_region(str
 	return ioremap(phys_addr, nr_entries * PCI_MSIX_ENTRY_SIZE);
 }
 
-static int msix_setup_entries(struct pci_dev *dev, void __iomem *base,
-			      struct msix_entry *entries, int nvec,
-			      struct irq_affinity_desc *masks)
+static int msix_setup_msi_descs(struct pci_dev *dev, void __iomem *base,
+				struct msix_entry *entries, int nvec,
+				struct irq_affinity_desc *masks)
 {
-	int i, vec_count = pci_msix_vec_count(dev);
+	int ret = 0, i, vec_count = pci_msix_vec_count(dev);
 	struct irq_affinity_desc *curmsk;
-	struct msi_desc *entry;
+	struct msi_desc desc;
 	void __iomem *addr;
 
-	for (i = 0, curmsk = masks; i < nvec; i++) {
-		entry = alloc_msi_entry(&dev->dev, 1, curmsk);
-		if (!entry) {
-			/* No enough memory. Don't try again */
-			return -ENOMEM;
-		}
-
-		entry->pci.msi_attrib.is_msix	= 1;
-		entry->pci.msi_attrib.is_64	= 1;
-
-		if (entries)
-			entry->msi_index = entries[i].entry;
-		else
-			entry->msi_index = i;
-
-		entry->pci.msi_attrib.is_virtual = entry->msi_index >= vec_count;
-
-		entry->pci.msi_attrib.can_mask	= !pci_msi_ignore_mask &&
-						  !entry->pci.msi_attrib.is_virtual;
-
-		entry->pci.msi_attrib.default_irq	= dev->irq;
-		entry->pci.mask_base			= base;
+	memset(&desc, 0, sizeof(desc));
 
-		if (entry->pci.msi_attrib.can_mask) {
-			addr = pci_msix_desc_addr(entry);
-			entry->pci.msix_ctrl = readl(addr + PCI_MSIX_ENTRY_VECTOR_CTRL);
+	desc.nvec_used			= 1;
+	desc.pci.msi_attrib.is_msix	= 1;
+	desc.pci.msi_attrib.is_64	= 1;
+	desc.pci.msi_attrib.default_irq	= dev->irq;
+	desc.pci.mask_base		= base;
+
+	for (i = 0, curmsk = masks; i < nvec; i++, curmsk++) {
+		desc.msi_index = entries ? entries[i].entry : i;
+		desc.affinity = masks ? curmsk : NULL;
+		desc.pci.msi_attrib.is_virtual = desc.msi_index >= vec_count;
+		desc.pci.msi_attrib.can_mask = !pci_msi_ignore_mask &&
+					       !desc.pci.msi_attrib.is_virtual;
+
+		if (!desc.pci.msi_attrib.can_mask) {
+			addr = pci_msix_desc_addr(&desc);
+			desc.pci.msix_ctrl = readl(addr + PCI_MSIX_ENTRY_VECTOR_CTRL);
 		}
 
-		list_add_tail(&entry->list, dev_to_msi_list(&dev->dev));
-		if (masks)
-			curmsk++;
+		ret = msi_add_msi_desc(&dev->dev, &desc);
+		if (ret)
+			break;
 	}
-	msi_device_set_properties(&dev->dev, MSI_PROP_PCI_MSIX | MSI_PROP_64BIT);
-	return 0;
+	return ret;
 }
 
 static void msix_update_entries(struct pci_dev *dev, struct msix_entry *entries)
@@ -562,10 +556,12 @@ static int msix_setup_interrupts(struct
 		masks = irq_create_affinity_masks(nvec, affd);
 
 	msi_lock_descs(&dev->dev);
-	ret = msix_setup_entries(dev, base, entries, nvec, masks);
+	ret = msix_setup_msi_descs(dev, base, entries, nvec, masks);
 	if (ret)
 		goto out_free;
 
+	msi_device_set_properties(&dev->dev, MSI_PROP_PCI_MSIX | MSI_PROP_64BIT);
+
 	ret = pci_msi_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSIX);
 	if (ret)
 		goto out_free;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.035348646%40linutronix.de.

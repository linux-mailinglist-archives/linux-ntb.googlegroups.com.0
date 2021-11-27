Return-Path: <linux-ntb+bncBDAMN6NI5EERBIERQ2GQMGQEDB5AK5Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 006EE45F944
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:46 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id p7-20020a05622a00c700b002b2f6944e7dsf11527692qtw.10
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976225; cv=pass;
        d=google.com; s=arc-20160816;
        b=JNt/+JvYM39REwA43YxPTNHw/y2WjODjje4LMS6+GJrWWqVxBDDcHAQQBAQnCTT7yo
         c2TVznLZ098vR/qgwILwPa3g5TOecJ9YZXnKfdIjaMkuSjLWP3j0HKgLXpRFMYCTpJt9
         n3/zgnF8kVU5VT3kwkOLAJPMUvDETaAYTng0dVLsP7BLnygY0jPy2BsYGUypVGc3ujnQ
         Jye7WAkwta9NbYutIGq6PgIEH5luphwuWpslcdpJjFvwmqD9pUzwPt/ZnbNjFWSeIzQ/
         B5K5THjoyG3S1AUTpf3tTYUqYx1UG04S9AVa5GeaVnSQWjVKQA5oaJUuKJiFRYtu6due
         s7UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=jwqi2qjd0Uz9wFXrr9zRn8R+j9N0L2oPAM3XFvbuw5c=;
        b=1FSRD5+cd9xDNB3/4QtmKPru1+b5lkTQ0pDzFKwYkHPUKfzgVDpw5RQ+Z2LcqONJcA
         WKUk+AWzBSaI46FqYOXwr5D/W1tz+SfjihpdpyuAAVtJOhjBOtmiAEOeCs88JVOYze9N
         C36XMyOEZDxosNljQaVDWQgKnbOJREiWABAUBprdhYA1KzbydbUjgQHQmCrR/F5arlxc
         /cvaAYMgxiSGy0L6bpoKFLuE8bM57LJE0r4vQV9F1j1Yr0xwd3qwgWWiXSbTroagBBFb
         WqoK4GFyddJ9OmN7LBLYwkpRlEk4iaQyCl125X5eJHAbxHM46Pgl9LdGwWT3ICdDjlZ8
         MBkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=GPWhMvXW;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=5Vbj68E+;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwqi2qjd0Uz9wFXrr9zRn8R+j9N0L2oPAM3XFvbuw5c=;
        b=i6ajuiJH5wn5KoWUb//tjg2tyGtn4Xt5yC6vWH5tY0yqVoS/qMb3KznMtKwOqP1b5M
         JWYA9MKivloZLVaLzuImg9E45Gh6BFnApArHl0ZC4dITTMDTYv1v4rpnILUOqxiNlRI5
         2pN/S9T76E5d966R3SkA3DgutAY0047a0TPbmqQLt28FnfDoTEWeIMX4fbL3/hnOPmo9
         0eENUoPp0NxxLBFM1Ht0qGv6oblJhfPIS135jc1hJaD96JEIrZLJ4ylLox0krLjC7dSb
         S18DLhek12KDusAq5G+uspb6eM+KJP6rt6xgwmsF0cg/jjvdJLSevZ9xMpKM+dnRgXWY
         wiPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwqi2qjd0Uz9wFXrr9zRn8R+j9N0L2oPAM3XFvbuw5c=;
        b=RUm5EGoI4Mck3EThTFC3LW0dYoN6yyUYqpkUqNNZxj+QE50EidIKg2Yte9vhgf7QSV
         2yqaeW4J5zLBeJFPfbacA1CTB8TBqlSYQpLduiqJ9ZAFql5Zf6xuQ3c8NCAgf8PoLKEH
         OJ2VwN4IjLTgP9Nm6Bp1rizZTFY15BhVy/MdzsIQVsqFEfuRBAvznSWW5Zc/VDZO5Xzn
         9AtU09fPtG2G2XM77/FNbXnOtgKuWugVNzdjI0bnuNAJeLSD04clAMChDSQldHe3HMfB
         lPdj1ZTyLwSftX5IU0kWJNPu5s3/CXDBb0YLtp+pkhWF2YMBynVd+GTI9Rx7u0ciLh1R
         Qd6Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533PJGFtof+vPfRKb1Kol0SnoSerBuBpZJMdwvH6jA5+fI8d+k51
	nMHYxYuRu0R1dMbUcCibgvw=
X-Google-Smtp-Source: ABdhPJwQMWiKVt7xElPoW8JV2/1JvafEkWx4Rd4S0HbiTZBh70jjcMMh3ZvgNUVyeMMArhu6AT8RDQ==
X-Received: by 2002:a05:6214:2589:: with SMTP id fq9mr29029444qvb.38.1637976224964;
        Fri, 26 Nov 2021 17:23:44 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:1926:: with SMTP id bj38ls4540655qkb.7.gmail; Fri,
 26 Nov 2021 17:23:44 -0800 (PST)
X-Received: by 2002:a37:2750:: with SMTP id n77mr26150500qkn.490.1637976224617;
        Fri, 26 Nov 2021 17:23:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976224; cv=none;
        d=google.com; s=arc-20160816;
        b=HBidkAPHqjInt5wi9yrTUoklQ4YvM0WbJSBWIJpuZSmIwvH3NK6ZCk3zwTv+r78i7y
         y1s1vblBhakRFPkL2qzVwuf1xnsysUHA9EPggqQ4QI6McHSYkw8CZwHKzLzkd8wfvqP9
         v31kCT9NiC4P2iQdTxOr101Fjs9id3M417TaIcPfsVuZlgvnfxGAAFQgbU7YRhIs42Sl
         2ULvRFgxnplKhmaWg54nu7MWVb42DWX4x53pd2MTIzt2ZNalhRSTos5mQzGMIWAlPM22
         Hm7l2Jn99SoKnjjUUyOqpG0dm4raH9HF8MVkWBPhFc7iwKtGFTcX4Om8hkZ+QamQH4Bm
         Z5Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=jqtFVAM7PnL3sv4Z1HtzZW/zRECsX5MQXu0tEubArI4=;
        b=KZegdUPIdkhK75j652WQRXKe1MvsaMfl7mzMtuR24Z39u1As9kd+v31NsS/wBb87rt
         GITi2UpbJbn1jcZOKtzplHyGQY/OGi/EYWHDK9k9YHB9IfxhMFUMURs9YXgjNIF/FmFo
         oJIM7C0ij75nklxE9RJUB0GNLu5dYvI8ZLzZXk9QrFQ+Acp6Ur1GNIvRAgHnFmxUe/cO
         1Alqk7akQumiK8uSjAFhenoKDYmVjFfuSoLBpIQjNZS+/S1tqBb79XokgAsYScjDhhPc
         kNKuVOraru/cAGQnZw6x4xwRnHuSBk9CL1nC2FmII2IsFssgxaHl3CnnUzB48Y54PUAm
         g7Cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=GPWhMvXW;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=5Vbj68E+;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id w22si1225783qkp.2.2021.11.26.17.23.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:44 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232734.828800907@linutronix.de>
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
Subject: [patch 09/32] PCI/MSI: Use msi_add_msi_desc()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:42 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=GPWhMvXW;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=5Vbj68E+;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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
 drivers/pci/msi/msi.c |  121 ++++++++++++++++++++++++--------------------------
 1 file changed, 59 insertions(+), 62 deletions(-)

--- a/drivers/pci/msi/msi.c
+++ b/drivers/pci/msi/msi.c
@@ -340,43 +340,49 @@ void pci_restore_msi_state(struct pci_de
 }
 EXPORT_SYMBOL_GPL(pci_restore_msi_state);
 
-static struct msi_desc *
-msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity_desc *masks)
+static int msi_setup_msi_desc(struct pci_dev *dev, int nvec,
+			      struct irq_affinity_desc *masks)
 {
-	struct msi_desc *entry;
+	struct msi_desc desc;
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
 
-	dev->dev.msi.data->properties = MSI_PROP_PCI_MSI;
-	if (entry->pci.msi_attrib.is_64)
-		dev->dev.msi.data->properties |= MSI_PROP_64BIT;
+	ret = msi_add_msi_desc(&dev->dev, &desc);
+	if (!ret) {
+		dev->dev.msi.data->properties = MSI_PROP_PCI_MSI;
+		if (desc.pci.msi_attrib.is_64)
+			dev->dev.msi.data->properties |= MSI_PROP_64BIT;
+	}
 
-	return entry;
+	return ret;
 }
 
 static int msi_verify_entries(struct pci_dev *dev)
@@ -421,17 +427,14 @@ static int msi_capability_init(struct pc
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
@@ -480,49 +483,41 @@ static void __iomem *msix_map_region(str
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
+	int ret, i, vec_count = pci_msix_vec_count(dev);
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
-	dev->dev.msi.data->properties = MSI_PROP_PCI_MSIX | MSI_PROP_64BIT;
-	return 0;
+
+	return ret;
 }
 
 static void msix_update_entries(struct pci_dev *dev, struct msix_entry *entries)
@@ -560,10 +555,12 @@ static int msix_setup_interrupts(struct
 		masks = irq_create_affinity_masks(nvec, affd);
 
 	msi_lock_descs(&dev->dev);
-	ret = msix_setup_entries(dev, base, entries, nvec, masks);
+	ret = msix_setup_msi_descs(dev, base, entries, nvec, masks);
 	if (ret)
 		goto out_free;
 
+	dev->dev.msi.data->properties = MSI_PROP_PCI_MSIX | MSI_PROP_64BIT;
+
 	ret = pci_msi_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSIX);
 	if (ret)
 		goto out_free;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.828800907%40linutronix.de.

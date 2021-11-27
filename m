Return-Path: <linux-ntb+bncBDAMN6NI5EERBY4QQ2GQMGQED55GEPQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D0D45F8DF
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:45 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id fn12-20020ad45d6c000000b003bd9c921c0esf11915610qvb.21
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976164; cv=pass;
        d=google.com; s=arc-20160816;
        b=pizW0IeqZx5eXb7W7QwJZvALWdMLG6BNYTy+1xbC0qb3jR27iNYybz7dDYFbu5SOQm
         uLvtiUZlcMbZHNlwPuQLscTBLvfOlrMbxCHoySCVWo3HtfQB1NjmitUXNjqCdIIaSL9s
         CL+WY1eaK8maLjWAPvVEV43FsbRg/AGWW6smlXd5QfrvNeqOraAfLDBpvJFgz83ZJogC
         k2eRVKgFSj1rTH80mrk/rSLQm/s1zyxm03vVk/Il5vIxZqXi0cJIL2xNJdUhlO6i5T/S
         CzMszFM9WjfLsdonMlfqTECNsQXFJo2fYE4j8pA/bi1IcyOk27jQgxHa8Zt5MAa3Uo35
         6ROA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=jwqi2qjd0Uz9wFXrr9zRn8R+j9N0L2oPAM3XFvbuw5c=;
        b=m+6nOZJdy0tKF4+cW+YcrvtGChXWG7kO5rpHW0zlCL99ob2L8S+v7f31ikE9xLsumq
         WociJRSOR5MaGtjSPvZSErWicDApKdp2qZm9Q77O5xcRoDm1M+e+3KnpSoXv9L2G3/hM
         2mrPIOXDO93U4lZYri9rHZJiWCLfa45ra78XT+0a2Zw+rWIQQ+5+c5nJk232vUFytwHH
         55y73uvr3p27A/oBzWR8H5iXf34DKmZ1wjts/+jtMNGrPpVTZA+UYEOBd4OcU+lc+526
         da0lcTwiBj/OUSkbloljSnDZ5VlcJTjZfkZ35TXZ1wrG63hOVcjRy63noCEtEQH6HasL
         dgug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=tXVYQnTV;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=PrxvQQcO;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwqi2qjd0Uz9wFXrr9zRn8R+j9N0L2oPAM3XFvbuw5c=;
        b=DKr1nPSGHkvf4aHhs+a1pnV+9ChgYpAeqCdZVkPeyPPqOPWiWeC78Tcx8EIqRDkmgl
         JbJEhuvOvv0KKJ/6kbTUaDxNA96FtdPB16uo+eUlpLv+aBZkFJ8OPucQFyP1JiVMLRgM
         1YP3BirIJCaERaxP27Adl8MsgpTAWnHGhLIbdeEsWYANHtfikFXxQonY4ZBIuibznnym
         0+5jtFPhBrSmA+iwcpnGSM1uBPziT9J0RsqPr9FZzuXV5r8vNyboHva4x+N6eV6f9uhV
         sosqS1dgY6AyPvIF+3D6Uy2PXX5q0qio5BFHq8m/ZJQe3LCQGnF3WCg5LsdlIeMBxKlY
         yvlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jwqi2qjd0Uz9wFXrr9zRn8R+j9N0L2oPAM3XFvbuw5c=;
        b=H7v5gClY40K7KGGetiXETYIocumeLGSvi2aBiSA5HHZEcn8htKBbBNb1qDbpqUvBf5
         TflWfTfeyK67Z6uDl3OA1TX+GsyJtQiBxjWl0C191NYPyciMeItEI1i5yZlq2xaauUqP
         Tv8p2ZTbwZH6AFNssDGA0KSzpILMcU5xWH1j6dZt5NIaDhPtNiCaJiPs/Hizqfqh7gYN
         naEH6eHuv30i2YOeo1xIPXkuvUf0OGELtCoRGaWOjwF0QvvQqt8r8LaUbU18IlSMxzIa
         GbGglZubeQOIgVNfx/1ssN8ai7YN0VvtPc7jYXzOhbDl6vt3Mo4YkEN1kYyXhttSpg5G
         38iA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531qI8emOMrT18u9JL0vhRJgOkjU/DcAcivk4aHAZ39Kf6Uajv5Q
	65cshRI7ZaH07uI3+CRKWnc=
X-Google-Smtp-Source: ABdhPJy8W8GAkbtl7W13hvTdEJgOCwMS3CT1GLjHSDdxMO4nrGuy5xwCTa9UkVHk87w6FjhMeXvlKg==
X-Received: by 2002:a05:622a:591:: with SMTP id c17mr28490862qtb.272.1637976163827;
        Fri, 26 Nov 2021 17:22:43 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:4613:: with SMTP id br19ls4542808qkb.6.gmail; Fri,
 26 Nov 2021 17:22:43 -0800 (PST)
X-Received: by 2002:a37:68ce:: with SMTP id d197mr17778930qkc.693.1637976163415;
        Fri, 26 Nov 2021 17:22:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976163; cv=none;
        d=google.com; s=arc-20160816;
        b=q5cTUVxyY0nkDibi7biOfLcFsk626ftvp0zM0HoDCWVJ2nU7tpGlW8BB0gUVMJRIji
         SUi0cr3PqaRvR1+mS2EKKreY5JTDXTHPKBwTpf+5ZUH+m74qi4UZ5Uv05RAUOcmwk4Up
         pgCeIiCgkgqGP0s9FZdWOvcl4OL5I6XhAGcwEAjNDlqQo1f9m7NXIwVFdL43hT0s/twB
         GB5nczoEXAuVM6+EjUzC4A6Sud91hnmzLEnWk1RYVp0d3/0NF8W5ANnw3uPSCJoRudik
         rcFyrYVVVZcFSaEJU2jJeuDR3mCtf9o7h6ZDl6aPfrcg26v3LXipku1zPEcj7g34mDjc
         1vNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=jqtFVAM7PnL3sv4Z1HtzZW/zRECsX5MQXu0tEubArI4=;
        b=PdH6t40FC6AlBPJPetDCegcDos0wcQiQ4NobREVTeVtd5GHqloBh+ogImPQfFKIfzD
         Cf0QxlClne0IDAvZUZAmonM5xpLfQGUuCb9dhe/DYMftYscqzWW+Ois9HnAA4wYzzQWm
         4NbDA6UAqKEJQJAuTOED3b+kNsYJu0ENFCi7IqsSgdDH4xPlhqmZfuZnZqGRCvPRvJ+K
         Ouy/bHxNHU27hEn1LfTHvhFhegTh/1hqz3D5oNuyua1fIijw/uf8MkbpnBhGPW3ym2WG
         T8+TCrNDpsmezw7qeB8dtFGEZPXfqxapgDU6b3pQGo6b6fWqawgvtcbjWbLlNbpzhn0e
         dLAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=tXVYQnTV;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=PrxvQQcO;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id i18si956510qtx.0.2021.11.26.17.22.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:43 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:22:41 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=tXVYQnTV;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=PrxvQQcO;
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

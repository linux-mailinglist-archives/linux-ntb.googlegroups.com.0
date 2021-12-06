Return-Path: <linux-ntb+bncBDAMN6NI5EERBY5HXKGQMGQEXLRBYAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD4646AD3A
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:15 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id z138-20020a1c7e90000000b003319c5f9164sf249970wmc.7
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831075; cv=pass;
        d=google.com; s=arc-20160816;
        b=D74AjH5h5KW9UttPFwCnBZyY+HR5kzEgjDEN0M0obk748Ar1QKzac1BK5QbbqiHGuZ
         SczJIPzokR/JzfVJPoIFOYJ7EBp9tby6ER7xzwOfIBL93nub1ZdYwZFjx2LmAwemia+8
         fQG3Po5AJ1qlaeRZpFyIY5qAKZ4njVibl+pKlqjcBBrbdXn7LlCFLZvDO2NBx9HJ17e2
         mftduj/WLWTaUmSApverAPWmKF7RU0V0VXg3jGpITK202rDl3tXgZszHcaN2UGQ6yp2e
         UANWeVQM3VGXOs81vbTBiysfmLhSz2o0D2+sCv3IyAtr8rpPqGiK05yh8CYEXzrgCLbz
         qkIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=08XNp4a9pjvs5oChJ8Z7kOL2Eiu5jOi4zQUgXXDESMM=;
        b=J4KLIoj6P7Xn0E1+bWfOEf9Uh66QLM0ExcL5xivx4Wz/y94xlmg/C+89USgoq3Fk0E
         zDYajaKrFsrEG5QWaG567BH63VRxf7Yt41joqWswGAqM3Kh6We4Jtha3FUBslXC7AXOK
         Yg8vWVYlfK7CEQa/4av4Tsc3+bYrfEfeCDPQl0u0EwRmeO5ArAqweOZzvhtP5bEaNN7P
         KwUABf+hTTYQwePqyTQ1oS7o6FBbI6Byn/9Ye2KBcGMrpWiyYbh44jqiQKQlxo404nTB
         hGYt1PPkfGo5KdUTaBsjcxSf/qfONizVpNDLUOIvYg3VDI9WRQJ9Su2CIwAK8pJHN9FR
         7o5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=HujDf40w;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=08XNp4a9pjvs5oChJ8Z7kOL2Eiu5jOi4zQUgXXDESMM=;
        b=gXSwxWdAKsad0wjI2XiQlqrVO5k7DbSe3LmLNGz9NYfbQ7b7VT60Rw4qYUg3nMjhHS
         +wPjYtewJu/JtyEWk/UZWn+oOWhcN0Xk+i+94qKQEZ1GeHwOFBUouJsfioxbG/qCGzh+
         uMKf2iSwup28z/vG+Rak+oe2uCcwqsW4WJqy5aock7ubhnZvlC+w5qXEEGoer/+cxm93
         p+8cXIhqnEecI043wgojEHsR7+NXgfnGuLgyj8YbYjvm8LLePwJ4QaHueI6vohq3my64
         8MHvr1TIBs7SNoI4K14hC8CjT7tH23Ljdmv33d7gbrbADaNLodPoDLs+zD57UG5RyN4u
         rTQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=08XNp4a9pjvs5oChJ8Z7kOL2Eiu5jOi4zQUgXXDESMM=;
        b=4DzeH4GfvMjGVjWZzRPq2EK7IsvJiBJzmi0oDEwnF/wpG3th5zjVackZFaSWBufoGo
         KkLU0Kbp6mbI0PktzD17/3cjo6x93uiqjFItmGJMOPqA8SrXT4CMYCG8THCCYaBE8D/c
         O10JEzHGESOCb6SPGs39Oh5nuMHGdi+5hbGytssUZCygT7eazlgrfnoVem1NrM/L0k/I
         d9eElYISSJ1VXvbTV1utWqSRgJ0m/Sc/WMa5//OpEc8p9v/PcoAF4h1sBj2g5vrWKyfB
         qVa+ldG4PqABAQ/H3t3DYPUlwFARMLlIA7zrFdUIhi6oN1C2RyPVgiP3ZuMGfPLRkw27
         PERQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530mU5LtLCB76bt7nih1PGK196IVNRqA7pmpp+tHwdMR8/RBTH/S
	o5nowqeCkC8bW+pQGBx/NWA=
X-Google-Smtp-Source: ABdhPJzRRi0i57di5G/7XfC6Si2Ek8RfSDFL11RRW6o1VRdIRs6kncfZJqlhJRxnd3Pjp5t1n+Q5Dg==
X-Received: by 2002:adf:edc6:: with SMTP id v6mr46549760wro.461.1638831075224;
        Mon, 06 Dec 2021 14:51:15 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:80c3:: with SMTP id b186ls264943wmd.2.gmail; Mon, 06 Dec
 2021 14:51:14 -0800 (PST)
X-Received: by 2002:a05:600c:354f:: with SMTP id i15mr1897936wmq.59.1638831074430;
        Mon, 06 Dec 2021 14:51:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831074; cv=none;
        d=google.com; s=arc-20160816;
        b=hQEQbqFnkCTUTPNKs4HrjXKgVcxf9l36zKkQwrMcQmz5onkSz78QEaxv3JeZZWXs7N
         R0GBb+OOryorGYJnpvva/bCsbisv34TmgTkcZpyDzKGLNhe02nxY2bgM3I1bA3mior0y
         QLlKicTKAILIiV6VVRQtVCgWHiL1vDpphgcYneyTHE9ax1ZTMyHanKLaL3HdUi0HwNsl
         VrqM4p9SltfkLuyPrAxoFlvjEqKE+6CU0XS7xXTpoemgW10r4lMJTtdZatStjsJffDN0
         KI1sY6U9t4DeCxfzpnOBwMT+3S0eaMh3rjJFOHMPEZwIU7gI0GPmI7JpzpRtKUcElybo
         j7VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=N57Dw29W0AnjW3yYUBfTixjB36XDU5ZjUD5ThYpSVNo=;
        b=tuyIMbHQaqSJo/JVV5XrRzAjgxsHqMate5EwBxCLOLeZ61Y85KQzqhuY054S4Z0klN
         poF2oeCcDY2OID8GdeD0QNZNBUnc2Mwhb/zLq8W/LleAAxcoKyHuWqvAlB09XGBZGPnG
         6KBnNGLOgQJWwvMfqDAW7ECh+YhVboxOOTBtZ0ayD9MOPUAq2UEv9gbK6sLP3Ia/Juw3
         C5RmPZDUq2ah11pE07Kp1QmWKU8QrV6guGGjhtaAZjUg4pfn0SURZ3p5PdJNntaGHvKj
         qUsBKoEL1lGgqfcx+zF9p1BTUDyRaiyzBy+mlvsRuBiMcNuReeSR3Qx+EnIfUJqwmIwo
         Hleg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=HujDf40w;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o29si155783wms.1.2021.12.06.14.51.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:14 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210747.982292705@linutronix.de>
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
Subject: [patch V2 07/31] PCI/MSI: Protect MSI operations
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:13 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=HujDf40w;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
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

To prepare for dynamic extension of MSI-X vectors, protect the MSI
operations for MSI and MSI-X. This requires to move the invocation of
irq_create_affinity_masks() out of the descriptor lock section to avoid
reverse lock ordering vs. CPU hotplug lock as some callers of the PCI/MSI
allocation interfaces already hold it.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/pci/msi/irqdomain.c |    4 -
 drivers/pci/msi/msi.c       |  120 ++++++++++++++++++++++++++------------------
 2 files changed, 73 insertions(+), 51 deletions(-)

--- a/drivers/pci/msi/irqdomain.c
+++ b/drivers/pci/msi/irqdomain.c
@@ -14,7 +14,7 @@ int pci_msi_setup_msi_irqs(struct pci_de
 
 	domain = dev_get_msi_domain(&dev->dev);
 	if (domain && irq_domain_is_hierarchy(domain))
-		return msi_domain_alloc_irqs(domain, &dev->dev, nvec);
+		return msi_domain_alloc_irqs_descs_locked(domain, &dev->dev, nvec);
 
 	return pci_msi_legacy_setup_msi_irqs(dev, nvec, type);
 }
@@ -25,7 +25,7 @@ void pci_msi_teardown_msi_irqs(struct pc
 
 	domain = dev_get_msi_domain(&dev->dev);
 	if (domain && irq_domain_is_hierarchy(domain))
-		msi_domain_free_irqs(domain, &dev->dev);
+		msi_domain_free_irqs_descs_locked(domain, &dev->dev);
 	else
 		pci_msi_legacy_teardown_msi_irqs(dev);
 }
--- a/drivers/pci/msi/msi.c
+++ b/drivers/pci/msi/msi.c
@@ -322,11 +322,13 @@ static void __pci_restore_msix_state(str
 
 	write_msg = arch_restore_msi_irqs(dev);
 
+	msi_lock_descs(&dev->dev);
 	for_each_pci_msi_entry(entry, dev) {
 		if (write_msg)
 			__pci_write_msi_msg(entry, &entry->msg);
 		pci_msix_write_vector_ctrl(entry, entry->pci.msix_ctrl);
 	}
+	msi_unlock_descs(&dev->dev);
 
 	pci_msix_clear_and_set_ctrl(dev, PCI_MSIX_FLAGS_MASKALL, 0);
 }
@@ -339,20 +341,16 @@ void pci_restore_msi_state(struct pci_de
 EXPORT_SYMBOL_GPL(pci_restore_msi_state);
 
 static struct msi_desc *
-msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity *affd)
+msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity_desc *masks)
 {
-	struct irq_affinity_desc *masks = NULL;
 	struct msi_desc *entry;
 	unsigned long prop;
 	u16 control;
 
-	if (affd)
-		masks = irq_create_affinity_masks(nvec, affd);
-
 	/* MSI Entry Initialization */
 	entry = alloc_msi_entry(&dev->dev, nvec, masks);
 	if (!entry)
-		goto out;
+		return NULL;
 
 	pci_read_config_word(dev, dev->msi_cap + PCI_MSI_FLAGS, &control);
 	/* Lies, damned lies, and MSIs */
@@ -379,8 +377,7 @@ msi_setup_entry(struct pci_dev *dev, int
 	if (entry->pci.msi_attrib.is_64)
 		prop |= MSI_PROP_64BIT;
 	msi_device_set_properties(&dev->dev, prop);
-out:
-	kfree(masks);
+
 	return entry;
 }
 
@@ -416,14 +413,21 @@ static int msi_verify_entries(struct pci
 static int msi_capability_init(struct pci_dev *dev, int nvec,
 			       struct irq_affinity *affd)
 {
+	struct irq_affinity_desc *masks = NULL;
 	struct msi_desc *entry;
 	int ret;
 
 	pci_msi_set_enable(dev, 0);	/* Disable MSI during set up */
 
-	entry = msi_setup_entry(dev, nvec, affd);
-	if (!entry)
-		return -ENOMEM;
+	if (affd)
+		masks = irq_create_affinity_masks(nvec, affd);
+
+	msi_lock_descs(&dev->dev);
+	entry = msi_setup_entry(dev, nvec, masks);
+	if (!entry) {
+		ret = -ENOMEM;
+		goto unlock;
+	}
 
 	/* All MSIs are unmasked by default; mask them all */
 	pci_msi_mask(entry, msi_multi_mask(entry));
@@ -446,11 +450,14 @@ static int msi_capability_init(struct pc
 
 	pcibios_free_irq(dev);
 	dev->irq = entry->irq;
-	return 0;
+	goto unlock;
 
 err:
 	pci_msi_unmask(entry, msi_multi_mask(entry));
 	free_msi_irqs(dev);
+unlock:
+	msi_unlock_descs(&dev->dev);
+	kfree(masks);
 	return ret;
 }
 
@@ -477,23 +484,18 @@ static void __iomem *msix_map_region(str
 
 static int msix_setup_entries(struct pci_dev *dev, void __iomem *base,
 			      struct msix_entry *entries, int nvec,
-			      struct irq_affinity *affd)
+			      struct irq_affinity_desc *masks)
 {
-	struct irq_affinity_desc *curmsk, *masks = NULL;
+	int i, vec_count = pci_msix_vec_count(dev);
+	struct irq_affinity_desc *curmsk;
 	struct msi_desc *entry;
 	void __iomem *addr;
-	int ret, i;
-	int vec_count = pci_msix_vec_count(dev);
-
-	if (affd)
-		masks = irq_create_affinity_masks(nvec, affd);
 
 	for (i = 0, curmsk = masks; i < nvec; i++) {
 		entry = alloc_msi_entry(&dev->dev, 1, curmsk);
 		if (!entry) {
 			/* No enough memory. Don't try again */
-			ret = -ENOMEM;
-			goto out;
+			return -ENOMEM;
 		}
 
 		entry->pci.msi_attrib.is_msix	= 1;
@@ -522,10 +524,7 @@ static int msix_setup_entries(struct pci
 			curmsk++;
 	}
 	msi_device_set_properties(&dev->dev, MSI_PROP_PCI_MSIX | MSI_PROP_64BIT);
-	ret = 0;
-out:
-	kfree(masks);
-	return ret;
+	return 0;
 }
 
 static void msix_update_entries(struct pci_dev *dev, struct msix_entry *entries)
@@ -552,6 +551,41 @@ static void msix_mask_all(void __iomem *
 		writel(ctrl, base + PCI_MSIX_ENTRY_VECTOR_CTRL);
 }
 
+static int msix_setup_interrupts(struct pci_dev *dev, void __iomem *base,
+				 struct msix_entry *entries, int nvec,
+				 struct irq_affinity *affd)
+{
+	struct irq_affinity_desc *masks = NULL;
+	int ret;
+
+	if (affd)
+		masks = irq_create_affinity_masks(nvec, affd);
+
+	msi_lock_descs(&dev->dev);
+	ret = msix_setup_entries(dev, base, entries, nvec, masks);
+	if (ret)
+		goto out_free;
+
+	ret = pci_msi_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSIX);
+	if (ret)
+		goto out_free;
+
+	/* Check if all MSI entries honor device restrictions */
+	ret = msi_verify_entries(dev);
+	if (ret)
+		goto out_free;
+
+	msix_update_entries(dev, entries);
+	goto out_unlock;
+
+out_free:
+	free_msi_irqs(dev);
+out_unlock:
+	msi_unlock_descs(&dev->dev);
+	kfree(masks);
+	return ret;
+}
+
 /**
  * msix_capability_init - configure device's MSI-X capability
  * @dev: pointer to the pci_dev data structure of MSI-X device function
@@ -592,20 +626,9 @@ static int msix_capability_init(struct p
 	/* Ensure that all table entries are masked. */
 	msix_mask_all(base, tsize);
 
-	ret = msix_setup_entries(dev, base, entries, nvec, affd);
+	ret = msix_setup_interrupts(dev, base, entries, nvec, affd);
 	if (ret)
-		goto out_free;
-
-	ret = pci_msi_setup_msi_irqs(dev, nvec, PCI_CAP_ID_MSIX);
-	if (ret)
-		goto out_free;
-
-	/* Check if all MSI entries honor device restrictions */
-	ret = msi_verify_entries(dev);
-	if (ret)
-		goto out_free;
-
-	msix_update_entries(dev, entries);
+		goto out_disable;
 
 	/* Set MSI-X enabled bits and unmask the function */
 	pci_intx_for_msi(dev, 0);
@@ -615,12 +638,8 @@ static int msix_capability_init(struct p
 	pcibios_free_irq(dev);
 	return 0;
 
-out_free:
-	free_msi_irqs(dev);
-
 out_disable:
 	pci_msix_clear_and_set_ctrl(dev, PCI_MSIX_FLAGS_ENABLE, 0);
-
 	return ret;
 }
 
@@ -725,8 +744,10 @@ void pci_disable_msi(struct pci_dev *dev
 	if (!pci_msi_enable || !dev || !dev->msi_enabled)
 		return;
 
+	msi_lock_descs(&dev->dev);
 	pci_msi_shutdown(dev);
 	free_msi_irqs(dev);
+	msi_unlock_descs(&dev->dev);
 }
 EXPORT_SYMBOL(pci_disable_msi);
 
@@ -812,8 +833,10 @@ void pci_disable_msix(struct pci_dev *de
 	if (!pci_msi_enable || !dev || !dev->msix_enabled)
 		return;
 
+	msi_lock_descs(&dev->dev);
 	pci_msix_shutdown(dev);
 	free_msi_irqs(dev);
+	msi_unlock_descs(&dev->dev);
 }
 EXPORT_SYMBOL(pci_disable_msix);
 
@@ -874,7 +897,6 @@ int pci_enable_msi(struct pci_dev *dev)
 
 	if (!rc)
 		rc = __pci_enable_msi_range(dev, 1, 1, NULL);
-
 	return rc < 0 ? rc : 0;
 }
 EXPORT_SYMBOL(pci_enable_msi);
@@ -961,11 +983,7 @@ int pci_alloc_irq_vectors_affinity(struc
 				   struct irq_affinity *affd)
 {
 	struct irq_affinity msi_default_affd = {0};
-	int ret = msi_setup_device_data(&dev->dev);
-	int nvecs = -ENOSPC;
-
-	if (ret)
-		return ret;
+	int ret, nvecs;
 
 	if (flags & PCI_IRQ_AFFINITY) {
 		if (!affd)
@@ -975,6 +993,10 @@ int pci_alloc_irq_vectors_affinity(struc
 			affd = NULL;
 	}
 
+	ret = msi_setup_device_data(&dev->dev);
+	if (ret)
+		return ret;
+
 	if (flags & PCI_IRQ_MSIX) {
 		nvecs = __pci_enable_msix_range(dev, NULL, min_vecs, max_vecs,
 						affd, flags);
@@ -1003,7 +1025,7 @@ int pci_alloc_irq_vectors_affinity(struc
 		}
 	}
 
-	return nvecs;
+	return -ENOSPC;
 }
 EXPORT_SYMBOL(pci_alloc_irq_vectors_affinity);
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210747.982292705%40linutronix.de.

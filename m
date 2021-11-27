Return-Path: <linux-ntb+bncBDAMN6NI5EERBYUQQ2GQMGQEHS364BY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CADC45F8DE
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:43 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id j125-20020aca3c83000000b002bc93dd9241sf7122944oia.4
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976162; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jmr3ezhoRT6wHm5L1cXApw9U0qau8XClYIFRVrynI0UulWb+sXl5rKZiKO6xPOQXZZ
         uMjPWMeZ833n5abTI4Lge6xgtK6KkmFsbTZRUMSuSep3qpE2jIzXJuUx6z/GGHfqmQvk
         a34tAvg1O9dNoGjEVA7MfYKTa3WkeV/s208WS6ntzKggctxc4oyglTverSsJCLB/etrH
         ll/fbo70XTMGIs3L92TUKpND8/jbCFbOw0z+xn41ISEPdqiwelbLLgOdFpkO+xbU5wQf
         cSwjFOXm4picTdSh3GWJ0uWzpqeU9vyIZ8pI731aM/mtYNtpeSj/7H6R44q1wUGeZVMC
         RAsA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=kjCXCEMg/8fEvsvuRtIA3S/hA/2PT0CkVgwihwGG/bM=;
        b=JhNUrAImuPy8r0hxWGnAIznaN21mqdI+JRKrdVvg6VN9VyRbIqXhoHejVsy9boxcOt
         oQBNaGeR28qa/hZtLIEPpFzGEnOEgfdeMY+cYR4/b3CX40RaCyD6oO7QjuqD8lulisBd
         MAfM6O49dEdaqK9XWLG6ONKgXIsB4XhhfHjFM349HMPk3k7o1pOeQmjAgdFBa0YMXQ0P
         zvKa5Zw9ktzwWZTaPzUak/7yqkqqs9khhthzl1+5d+/ZvAEhkg/wjTRJqpYh2T8DmcpK
         mBNPfpRGlJ55NBvJeGTTuY4Em1/2bbVSL7BBoynKdJxZXxNFObdKbYrFUyDoiLkf5OEK
         +WkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=iZYR47bo;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kjCXCEMg/8fEvsvuRtIA3S/hA/2PT0CkVgwihwGG/bM=;
        b=joQOPde9cXczKVbRpMb4HJBIt2whTvTUL0kAxlPFeWCGaV+Gx/YZbRU5CfOsKHGsGJ
         v+seQXEpMeg5J51/vJrjTxdm4F0QZEX5Q/AnRFdN6rQAPQZT3IqPfK7rmBqqRTf3kbLT
         2Eha/h6/coP3noiap1Iqu880mSE5AQToVFQetPfREIYPXskop0xjFTJdGxpUP0GtxBgX
         bheCgZdvmZrR/p1Ok9VNFqCuQpBTQxnZTaNFKnUN+YDTdaAT8XjmtwDG5dT7fpW/F0b7
         mhXWvGhnv/QORvCqy3BdT4ZQsu4QaxAQ9ynzNE53VTqOzPY0tt3x9jB1/ywgrr7Bvq6A
         WVAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kjCXCEMg/8fEvsvuRtIA3S/hA/2PT0CkVgwihwGG/bM=;
        b=gBjeEQahrwknLX6vHpUg+8dSOYfwUpuJ/l8qXuYcR/fm/10/tiMWis/3kdBJWfpYAH
         3F9xvYvt9Uu3qICp5d1C6avRLTOvfrG/4y1ELIDr0EYM2fLLXFkyVhVWSIHAJQPZzRiG
         FNfuq4fLv4BVv6HsQPCKEy+T12MZJY+wCvG74BOLS40RJMfK7S89p+zqmn8dlCNR4VxH
         0x113JuQUNdQ49A2Cd6nv0Wfh9qLTXQRlsPFT69skHPaGqvv5GzcUaQDhgPQoIf3Cepi
         0hsUvp0F7sMSGDnrXgvM4Cgm7UwbOpsZss7dicp/mkRoOx4Hnk5zsCZghQlcerzAemb9
         rrsg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530pGJBX15TpnLam2hj2NQwNENFLtrRoH46LcGC8KDEPApDrh25S
	J2dvv/o6xacBHHJSTPlNvyE=
X-Google-Smtp-Source: ABdhPJwNefTEQJSgOvs51Ar7qALpw8ZaHyzR+w1BqtRywJTUX2EGNyCuTYsef5jhEaZ0siuHIs9fdw==
X-Received: by 2002:a05:6830:348:: with SMTP id h8mr30070680ote.344.1637976162193;
        Fri, 26 Nov 2021 17:22:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:4c94:: with SMTP id a142ls515724oob.7.gmail; Fri, 26 Nov
 2021 17:22:41 -0800 (PST)
X-Received: by 2002:a4a:a641:: with SMTP id j1mr22785490oom.63.1637976161844;
        Fri, 26 Nov 2021 17:22:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976161; cv=none;
        d=google.com; s=arc-20160816;
        b=HUXKtqf4O5xZmZ4X55vpYS4eYeAFNpaHd0HpIab0MG0vy+PuUxOrCSHlFGqyVrDJA5
         g7j6A8yHBSQvPQAY6QVTroz+Nm5Y6UBAqJyDKfRpUps6HyhhN1Uqv/XzAfm4Y+Nqhcyb
         uI518ow/7i5sEA3AjdpP9QO3b0t1gpbprDg7SJ13J0MkfH2H2HaGOKWJoWRmGjCIukNn
         wcLIOjdjobjA8fuNWN6Pk0VQ9bbIbGCKGKl2XRwTZOTvqQJZRdAdE08L76EndgXIyyXx
         LvcmuzxmrwgPhaGq8FrNVQ9o0dW7WHFhmaJxF29dgpxG2wA8d324el97dICd6jJMwNO2
         8Iiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=WFZ5TbXOLHt4Y7UKwbwYSGaB1XnhSBfu8TcTJVhpL6E=;
        b=iIbMTDamPiJKHW9khRzZokfEEQdwwFS0tMmx9PorBU1abpOO25ceCB+rAYSZ9Td8N/
         n4ONViv1y9OLBNk1QorYLBClMK7O+acw7cxuii8TkD6+VJWE6zG8gox8jf7rB9lJPZVM
         221h46JebMXKvzFCkKRr/FnwYdV7vhU+e2MxnRFSwxGdrpabB84xP1FxhxRGgH4vgAw9
         rt6vlQ0auBttjSRN6T9szg0s9rQTOa19SVicqVdCC2AWtf5NMk/hYKlVddFIj6W4Uz6j
         rXj7IK2H9qxygwONEqTorREpIVpBWDtVV+DrCWZ+DLlWikljTDd+58+aCwaEuYpVEgIj
         Li/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=iZYR47bo;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id h14si741068otk.4.2021.11.26.17.22.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:41 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232734.767081423@linutronix.de>
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
Subject: [patch 08/32] PCI/MSI: Protect MSI operations
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:22:39 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=iZYR47bo;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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
@@ -339,19 +341,15 @@ void pci_restore_msi_state(struct pci_de
 EXPORT_SYMBOL_GPL(pci_restore_msi_state);
 
 static struct msi_desc *
-msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity *affd)
+msi_setup_entry(struct pci_dev *dev, int nvec, struct irq_affinity_desc *masks)
 {
-	struct irq_affinity_desc *masks = NULL;
 	struct msi_desc *entry;
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
@@ -377,8 +375,7 @@ msi_setup_entry(struct pci_dev *dev, int
 	dev->dev.msi.data->properties = MSI_PROP_PCI_MSI;
 	if (entry->pci.msi_attrib.is_64)
 		dev->dev.msi.data->properties |= MSI_PROP_64BIT;
-out:
-	kfree(masks);
+
 	return entry;
 }
 
@@ -414,14 +411,21 @@ static int msi_verify_entries(struct pci
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
@@ -444,11 +448,14 @@ static int msi_capability_init(struct pc
 
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
 
@@ -475,23 +482,18 @@ static void __iomem *msix_map_region(str
 
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
@@ -520,10 +522,7 @@ static int msix_setup_entries(struct pci
 			curmsk++;
 	}
 	dev->dev.msi.data->properties = MSI_PROP_PCI_MSIX | MSI_PROP_64BIT;
-	ret = 0;
-out:
-	kfree(masks);
-	return ret;
+	return 0;
 }
 
 static void msix_update_entries(struct pci_dev *dev, struct msix_entry *entries)
@@ -550,6 +549,41 @@ static void msix_mask_all(void __iomem *
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
@@ -590,20 +624,9 @@ static int msix_capability_init(struct p
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
@@ -613,12 +636,8 @@ static int msix_capability_init(struct p
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
 
@@ -723,8 +742,10 @@ void pci_disable_msi(struct pci_dev *dev
 	if (!pci_msi_enable || !dev || !dev->msi_enabled)
 		return;
 
+	msi_lock_descs(&dev->dev);
 	pci_msi_shutdown(dev);
 	free_msi_irqs(dev);
+	msi_unlock_descs(&dev->dev);
 }
 EXPORT_SYMBOL(pci_disable_msi);
 
@@ -810,8 +831,10 @@ void pci_disable_msix(struct pci_dev *de
 	if (!pci_msi_enable || !dev || !dev->msix_enabled)
 		return;
 
+	msi_lock_descs(&dev->dev);
 	pci_msix_shutdown(dev);
 	free_msi_irqs(dev);
+	msi_unlock_descs(&dev->dev);
 }
 EXPORT_SYMBOL(pci_disable_msix);
 
@@ -872,7 +895,6 @@ int pci_enable_msi(struct pci_dev *dev)
 
 	if (!rc)
 		rc = __pci_enable_msi_range(dev, 1, 1, NULL);
-
 	return rc < 0 ? rc : 0;
 }
 EXPORT_SYMBOL(pci_enable_msi);
@@ -959,11 +981,7 @@ int pci_alloc_irq_vectors_affinity(struc
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
@@ -973,6 +991,10 @@ int pci_alloc_irq_vectors_affinity(struc
 			affd = NULL;
 	}
 
+	ret = msi_setup_device_data(&dev->dev);
+	if (ret)
+		return ret;
+
 	if (flags & PCI_IRQ_MSIX) {
 		nvecs = __pci_enable_msix_range(dev, NULL, min_vecs, max_vecs,
 						affd, flags);
@@ -1001,7 +1023,7 @@ int pci_alloc_irq_vectors_affinity(struc
 		}
 	}
 
-	return nvecs;
+	return -ENOSPC;
 }
 EXPORT_SYMBOL(pci_alloc_irq_vectors_affinity);
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.767081423%40linutronix.de.

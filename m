Return-Path: <linux-ntb+bncBDAMN6NI5EERBH4RQ2GQMGQEGEBR5MY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C370045F941
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:44 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id 85-20020a6b0258000000b005ed47a95f03sf12630239ioc.0
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976223; cv=pass;
        d=google.com; s=arc-20160816;
        b=SU6jOcBEb95HovsBN9pg9H7ZnD61D+8RtxdvkV/WHffPNG/ZbrEzkAC08EcA/TVSje
         Dsuo35WQpvI5isNJRrJV8R14IxX5R5/7hoBbOA31E/8vFbSC+NOfqgnV6mtIeDPFPBDk
         C6/0lszAAKeYToP05NCMolJcTRN9zWZYwrrwSj7mafGH/N6g3SR2VInu0+5n6oxzEsbg
         JLbG8EOxngrPqcbBUEjq3LH2BhOl+tiovTBBmJcWAHWW3Gg9ZlcnRK65tY9eSuEzWReE
         ubbrvqTek4Pko0KHSM3Qd10yHFM3kc7YdGK2m2w9oZJ+bU7Bzrrf5CULz++buNrnN20k
         Gtnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=kjCXCEMg/8fEvsvuRtIA3S/hA/2PT0CkVgwihwGG/bM=;
        b=tgZxZRqidUqliuPfCwe1+db5Xy29oIz8TbaPnaH/OFw4uLxqUdsq//KDwp5wff9SSa
         Juqo3qCs7zBRj5icyagIaNm87mMTkja3JCvPSxCQd8HfzjMOBwHikrWJGX3Bzson6JtG
         YGLyh6f4hp5fAF8heC1EBmMaSjZM2sdtQisAUDs1Erss4bJ56JsU9eCMM4O8jWyizrj2
         qi/DJOiqoqYW+knZrKc0B1MeFAbQfKwnB37XWgcweyWF24KcN51FdY8GU26GyKJCGgDf
         sfDCR+vMoAFNwgx5g6Dwt0Fn3BmrQmKVPI7scvI54u5seMV62+G3fVqfFLmQURMFCnqt
         rkcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=eY7bUfv+;
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
        b=X5yNLvKxjk4EK0U0PjWUfiZD3ulaZzUSLbzv4MJXq6TVDpJzaHb6j3TpqXegBbiiN7
         PvOyrI0wa1cLHYzwt28ZvA1H1tGmU2CnlxujWsis1uxBjZNty/EFQh1s+KCf/8fCeGx0
         ANVC2qKhu4pBQMCdLQafonBsSK3KXD8r3CngdmvoVBnTIv3MnB2YrihxFkKQM3zcGik5
         Jd64T7qVXMbw4sMt2ksCe7bSUobOjiBrxjhPdFa2vZMt4lq2w8voVgNl/S/CequhOugc
         44MFsl6UaM1DkgbHoK+bj/hUTvgwjnJ24Fn34tyj6BnmnukXUxmw9OdVwMkjx0/i9mdI
         WXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kjCXCEMg/8fEvsvuRtIA3S/hA/2PT0CkVgwihwGG/bM=;
        b=qx6XLtS9r/qjaFj51D3+5tu84HsbSbZT9P/O043lwJD7bjUufcqZP36tI6lxYX2AiH
         89GRhnbGdH3WRmkzIWliqzruyKQHmeD+R1YOsFopThhxSqF9xiZjXFNf07yTTkU48xDf
         VSTScgsV+n0wPrDMPXYb/vSeYa+5TmhdgoH/7m9v17B3jZo55lmPspABIaXyaxE8ni0G
         zPpvUey7LaCG0rEjXY+WEY5T4QgyEZJz5cKTwrtq3hsiqvlm57q4VDsk94RF3YetyQiz
         v+XdN+YmH28+sSd3hd0QnUNxnq2tkOPsg8czNtsJ8RZsLabFuL4tkWxTI8ysrWehs3Cg
         fCXQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5308rqmI/I3HNucmW8PUGrws/g+FLoRS7bOU6EJH3xLgZVprImlv
	C4SmeduN7kxxDgqPBi515tQ=
X-Google-Smtp-Source: ABdhPJy6sMHMjmdMhzOSlvUHDNfaV/8nNu8tZ/evpia4wXgRL+Top+8TdTEm2Kq7yslFM4upJqRp5Q==
X-Received: by 2002:a05:6638:1395:: with SMTP id w21mr46713974jad.125.1637976223507;
        Fri, 26 Nov 2021 17:23:43 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:cf13:: with SMTP id o19ls790270ioa.1.gmail; Fri, 26 Nov
 2021 17:23:43 -0800 (PST)
X-Received: by 2002:a5e:c10d:: with SMTP id v13mr41231713iol.115.1637976223204;
        Fri, 26 Nov 2021 17:23:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976223; cv=none;
        d=google.com; s=arc-20160816;
        b=H29evmXxKfJEEamJJdYFViWEN0C7j+UfjHx830IA6MnO9IDi29+CcUnotfzoVbYB/A
         zoCI9QwbyNpviSg/Hd6p4x1f0WQzABuf6wnwO1r+EIxZFza9TIKSNhtFZTxXUi6Eocwi
         Tzpyqv6dGyAJ0z4JsCdYu2IyGmT/P8t1/iHhpsHpqyke/cDED4zY/IzrPsekpdefLx1E
         NbD8v4xj/qpvEir6JgUFRINgOZW0uuG3+sVPOu8skByY5rmuePuOoePZwDG7Ka+GGfBs
         sW4rPE3PYGQFg874Vua11CsWBEeUBVDqoZVzYw/Qme8Xz6mvNlUZWghLV9bU5g7QEEB3
         YF5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=WFZ5TbXOLHt4Y7UKwbwYSGaB1XnhSBfu8TcTJVhpL6E=;
        b=nCu+J2jxbs/6lZlgJliHsvVyW6IRDO+IxhKE5K9UF8HwugHFpC39a7GfYKWpeIAvq0
         bP07TbPeDlFKNzXK4Eg6Dn99l3tU4oTc0y/Q46gmucSUKRCLM5a2+TZviacvaDJ0POSz
         kWqA/YWHfyyBgkJqvcKD/6Gq/5/CIJIQVpIsCsbHS0dOj0oSUBW6g56Hv+gSamIdgBLA
         K3oHRjJRPQ2WF1JvaLVLeuEmh2HSbBqPSEhzucaPjQIdnnEJq8Ff1W9iM59vLTnI4a+j
         t0ODMNXx4i9M389K5R2ff+hQ+qWdqz/nBEH/Z5B4Jel7bp7qf1x54WLnBwKhD9BEUhja
         4//g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=eY7bUfv+;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id g8si1283794ilf.1.2021.11.26.17.23.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:43 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:23:41 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=eY7bUfv+;       dkim=neutral
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

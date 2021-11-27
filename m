Return-Path: <linux-ntb+bncBDAMN6NI5EERBJERQ2GQMGQEPLZH33A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E29745F94D
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:49 +0100 (CET)
Received: by mail-il1-x139.google.com with SMTP id e18-20020a926912000000b0029fda7bf17bsf13625026ilc.8
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976228; cv=pass;
        d=google.com; s=arc-20160816;
        b=TxfX6IBDMkSPBeKwF90yonW08lvRsEEf7oKWQ7QahOaCHOBOw6JxuswtYtGuN4a+vc
         LJhqO/2yVjJ710E2ycTtTGrMaR8neRsSetfY4fvrZ3O2UCtr2WIeZT4o3/SkrS3grpdW
         ziE1hzP88xjTFf4yaUkSc1uUhVg4cMYBJTSr+OjpA+KROauRl4FHKadi2Tp1vWy0WgQT
         zx0TIKsUSX0lcla2HrjQuonozLQz2VHy+6d9WUFXuvr18LdUjWXWbP/uvi4vceO4Nc7j
         BYtLoio8B10yN5iIi4ChT+Ya433u7AVFIrCbxHB1zgyWc8pBB2XMZs92rFDIU0xR3Lto
         lUpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=lLQFHXnV3haof0MqyupU+lsoVEN8H5faquo2fDPKctc=;
        b=rBnbjBn5mq3Vtqrg2TpQVqmdm1GQg4hrF826rb9E9se9/ITUjuJnTXOznaQPySklWr
         GQbAX2dnonoZz0xyPRr5LTt5fStdLSVR3p2j+gaG++ecwp0rHnBU9X6j3NTCtJ2nc9MH
         3hQ15MXDw7HDEGmBL11OboXHEecNsOcz4MeRxWu8qE7Yfv9iVHmT4PD4pATd+0kJM9ER
         uK3jfNOwo2TPODff7lnj1MPeVzzXKplOr4lxNUQsq1Fp0naa2xcmpCU0Hzef/XOm/W8H
         6Aem56wWC6a2QWqhb8zdZUGFvc/W/N/OUCXjPhqZEfTzk5xu+CWhX3joseYcVNRYYknm
         6Kbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=AaDcbnlx;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=oh8zj3SO;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lLQFHXnV3haof0MqyupU+lsoVEN8H5faquo2fDPKctc=;
        b=AmAMWvchK+uWKqlpVHfjU0JyFqDBiGZ/TYdJs1ta0Pjscyrmju/k8FumOJjOULNqm6
         71Ar24IUt5q9YbzXAiNhle73C7akabJ0+o5nnbT9qzyuOSJArCXd2u9/1lqo8OECjq5U
         v3yJNYiVHaxUOIhUjuBQnr5OcwuT/lL/TtXzo2WcIHtVAGAK7t8o03x4gfefZeM8m3oe
         QjnkqfQTLMCTwObLNNFr2Grx8ZKipzWKE2g9cA9Styp918jXXsO/WfkdJRENoWU+3A5O
         i48ylFLKwK/mKqVoVzJmDdW9SbEzmraJ5TpgtjBf8/R2Jh2LBolp3p/n/S+T5dZTxYfS
         shlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lLQFHXnV3haof0MqyupU+lsoVEN8H5faquo2fDPKctc=;
        b=iGLSyWSe4NAypA/lgweDJNr5KpEN027wvoPTPryd/O10P8B/ovQEoMQLk7331yAsEc
         9preKNiHc9m4/40HuwdPdzBQeneeCMSjwLZP/nV1w/oa1p8mUuJGGAPrfcKi19IoJET2
         KkRVqnAF0GLSIpGQb/K9L8nH1+VQ9nt6NHOPqQlMl3EKZtyDaw2GH3MbUqKsVE7x2ONB
         JDj3a43hgwknrKO8YiBKARP1QR5KiFHrgHPxuuRyH5GH7d+3chpJtLjRYPC5UeyfTLDW
         D71NcghLcY80P02TlVPq2rrixbUlzQsc6Zva64t5roCJpHI9zf24+0/nq4EFUOPhactk
         +9pA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533kuI9mwtOAns8WCZPsNXAVmjPP3ylonH3taaU9R+sLsKi2w25y
	un2h7lCsrlzGzEcMCVu+98c=
X-Google-Smtp-Source: ABdhPJwQrIjhLqFP5acH6JenuPEnIEo1hZ5M7WRW9o3aN9gue+PZj23Rigouyxpg7r4J7KsyKH1GEQ==
X-Received: by 2002:a6b:f70e:: with SMTP id k14mr36571205iog.173.1637976228099;
        Fri, 26 Nov 2021 17:23:48 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:1d9b:: with SMTP id h27ls1089659ila.5.gmail; Fri,
 26 Nov 2021 17:23:47 -0800 (PST)
X-Received: by 2002:a05:6e02:2146:: with SMTP id d6mr35373538ilv.45.1637976227759;
        Fri, 26 Nov 2021 17:23:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976227; cv=none;
        d=google.com; s=arc-20160816;
        b=HFw9wjV1+H0aQMTfM/m8vhv1PsqLA9YkiQk5HaldXvYARgxxNGsbt2hYWSqfd9RzYO
         1QghAU3aDarD7lw9kWpP0pfgv9OwxhBKRDsk3qTBQFVmBi2zKUKYXH6fdNMY8tlk7OK3
         gluZDj5tkdFT0Bnxmbnm5/I6gutwJ11J+xmd9hIUICuQbazvUIi/jUuMvT8HBkz5ZAu7
         gk3Yi44/1mTf+xa3HrIe8eH9zXfsOFizrmhjVMG8BiF20yAKqrKE/ynCZotXmGdWFNM7
         SoCoJZCYioS/QTuhSLBIIiFzGP7DrlIOR6eGJNypXsOx7IkQjYoxFq3KyXhZrgYWwH4f
         jiPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=QuU45eoyNuf+fgvpHD77GSISdDrHu7KnsGWmWgR8zuY=;
        b=cR1vZydX40Fwk4frKu3z1Tq/EvDSFE7+Tl6fQDVPruhrChxO6aneJoLvjN2osAbueN
         u6XX9ydMUn0BMvghD9PFYlQLf4fBAGOTgDnQ3X5LNNhZeCwP+g11XcCxLFQFXlUXMJ97
         +fcTpF05O8cW8Jizgj6XgXEgSbZDiwiHO2o6ETbweq0QFrQJlcOscuhj/p8d/rXv11G+
         Wy6XmZ7z0B6NiOk/AFq2/rVGJMGRHpfjM9AqLzd5/FQboiR6CNSxUH6IKRY+sC3svsf9
         VBBGQFZCCfeJkCSOTG5LwxdETRUNzdozQ2BWsJWvCkbLxepvi0qBBXI5KP1b/40aZQh5
         2CMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=AaDcbnlx;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=oh8zj3SO;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id q3si1194822ilu.0.2021.11.26.17.23.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:47 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232734.949173952@linutronix.de>
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
Subject: [patch 11/32] PCI/MSI: Use msi_on_each_desc()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:46 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=AaDcbnlx;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=oh8zj3SO;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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

Use the new iterator functions which pave the way for dynamically extending
MSI-X vectors.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/pci/msi/irqdomain.c |    4 ++--
 drivers/pci/msi/legacy.c    |   19 ++++++++-----------
 drivers/pci/msi/msi.c       |   30 ++++++++++++++----------------
 3 files changed, 24 insertions(+), 29 deletions(-)

--- a/drivers/pci/msi/irqdomain.c
+++ b/drivers/pci/msi/irqdomain.c
@@ -83,7 +83,7 @@ static int pci_msi_domain_check_cap(stru
 				    struct msi_domain_info *info,
 				    struct device *dev)
 {
-	struct msi_desc *desc = first_pci_msi_entry(to_pci_dev(dev));
+	struct msi_desc *desc = msi_first_desc(dev);
 
 	/* Special handling to support __pci_enable_msi_range() */
 	if (pci_msi_desc_is_multi_msi(desc) &&
@@ -98,7 +98,7 @@ static int pci_msi_domain_check_cap(stru
 			unsigned int idx = 0;
 
 			/* Check for gaps in the entry indices */
-			for_each_msi_entry(desc, dev) {
+			msi_for_each_desc(desc, dev, MSI_DESC_ALL) {
 				if (desc->msi_index != idx++)
 					return -ENOTSUPP;
 			}
--- a/drivers/pci/msi/legacy.c
+++ b/drivers/pci/msi/legacy.c
@@ -29,7 +29,7 @@ int __weak arch_setup_msi_irqs(struct pc
 	if (type == PCI_CAP_ID_MSI && nvec > 1)
 		return 1;
 
-	for_each_pci_msi_entry(desc, dev) {
+	msi_for_each_desc(desc, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		ret = arch_setup_msi_irq(dev, desc);
 		if (ret)
 			return ret < 0 ? ret : -ENOSPC;
@@ -43,27 +43,24 @@ void __weak arch_teardown_msi_irqs(struc
 	struct msi_desc *desc;
 	int i;
 
-	for_each_pci_msi_entry(desc, dev) {
-		if (desc->irq) {
-			for (i = 0; i < entry->nvec_used; i++)
-				arch_teardown_msi_irq(desc->irq + i);
-		}
+	msi_for_each_desc(desc, &dev->dev, MSI_DESC_ASSOCIATED) {
+		for (i = 0; i < desc->nvec_used; i++)
+			arch_teardown_msi_irq(desc->irq + i);
 	}
 }
 
 static int pci_msi_setup_check_result(struct pci_dev *dev, int type, int ret)
 {
-	struct msi_desc *entry;
+	struct msi_desc *desc;
 	int avail = 0;
 
 	if (type != PCI_CAP_ID_MSIX || ret >= 0)
 		return ret;
 
 	/* Scan the MSI descriptors for successfully allocated ones. */
-	for_each_pci_msi_entry(entry, dev) {
-		if (entry->irq != 0)
-			avail++;
-	}
+	msi_for_each_desc(desc, &dev->dev, MSI_DESC_ASSOCIATED)
+		avail++;
+
 	return avail ? avail : ret;
 }
 
--- a/drivers/pci/msi/msi.c
+++ b/drivers/pci/msi/msi.c
@@ -299,7 +299,6 @@ static void __pci_restore_msix_state(str
 
 	if (!dev->msix_enabled)
 		return;
-	BUG_ON(list_empty(dev_to_msi_list(&dev->dev)));
 
 	/* route the table */
 	pci_intx_for_msi(dev, 0);
@@ -309,7 +308,7 @@ static void __pci_restore_msix_state(str
 	write_msg = arch_restore_msi_irqs(dev);
 
 	msi_lock_descs(&dev->dev);
-	for_each_pci_msi_entry(entry, dev) {
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_ALL) {
 		if (write_msg)
 			__pci_write_msi_msg(entry, &entry->msg);
 		pci_msix_write_vector_ctrl(entry, entry->pci.msix_ctrl);
@@ -378,14 +377,14 @@ static int msi_verify_entries(struct pci
 	if (!dev->no_64bit_msi)
 		return 0;
 
-	for_each_pci_msi_entry(entry, dev) {
+	msi_for_each_desc(entry, &dev->dev, MSI_DESC_ALL) {
 		if (entry->msg.address_hi) {
 			pci_err(dev, "arch assigned 64-bit MSI address %#x%08x but device only supports 32 bits\n",
 				entry->msg.address_hi, entry->msg.address_lo);
-			return -EIO;
+			break;
 		}
 	}
-	return 0;
+	return !entry ? 0 : -EIO;
 }
 
 /**
@@ -418,7 +417,7 @@ static int msi_capability_init(struct pc
 		goto unlock;
 
 	/* All MSIs are unmasked by default; mask them all */
-	entry = first_pci_msi_entry(dev);
+	entry = msi_first_desc(&dev->dev);
 	pci_msi_mask(entry, msi_multi_mask(entry));
 
 	/* Configure MSI capability structure */
@@ -508,11 +507,11 @@ static int msix_setup_msi_descs(struct p
 
 static void msix_update_entries(struct pci_dev *dev, struct msix_entry *entries)
 {
-	struct msi_desc *entry;
+	struct msi_desc *desc;
 
 	if (entries) {
-		for_each_pci_msi_entry(entry, dev) {
-			entries->vector = entry->irq;
+		msi_for_each_desc(desc, &dev->dev, MSI_DESC_ALL) {
+			entries->vector = desc->irq;
 			entries++;
 		}
 	}
@@ -705,15 +704,14 @@ static void pci_msi_shutdown(struct pci_
 	if (!pci_msi_enable || !dev || !dev->msi_enabled)
 		return;
 
-	BUG_ON(list_empty(dev_to_msi_list(&dev->dev)));
-	desc = first_pci_msi_entry(dev);
-
 	pci_msi_set_enable(dev, 0);
 	pci_intx_for_msi(dev, 1);
 	dev->msi_enabled = 0;
 
 	/* Return the device with MSI unmasked as initial states */
-	pci_msi_unmask(desc, msi_multi_mask(desc));
+	desc = msi_first_desc(&dev->dev);
+	if (!WARN_ON_ONCE(!desc))
+		pci_msi_unmask(desc, msi_multi_mask(desc));
 
 	/* Restore dev->irq to its default pin-assertion IRQ */
 	dev->irq = desc->pci.msi_attrib.default_irq;
@@ -789,7 +787,7 @@ static int __pci_enable_msix(struct pci_
 
 static void pci_msix_shutdown(struct pci_dev *dev)
 {
-	struct msi_desc *entry;
+	struct msi_desc *desc;
 
 	if (!pci_msi_enable || !dev || !dev->msix_enabled)
 		return;
@@ -800,8 +798,8 @@ static void pci_msix_shutdown(struct pci
 	}
 
 	/* Return the device with MSI-X masked as initial states */
-	for_each_pci_msi_entry(entry, dev)
-		pci_msix_mask(entry);
+	msi_for_each_desc(desc, &dev->dev, MSI_DESC_ALL)
+		pci_msix_mask(desc);
 
 	pci_msix_clear_and_set_ctrl(dev, PCI_MSIX_FLAGS_ENABLE, 0);
 	pci_intx_for_msi(dev, 1);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.949173952%40linutronix.de.

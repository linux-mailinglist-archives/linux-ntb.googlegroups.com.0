Return-Path: <linux-ntb+bncBDAMN6NI5EERB2FHXKGQMGQE5UBIVCA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FAD546AD42
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:20 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id m17-20020aa7d351000000b003e7c0bc8523sf9656184edr.1
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831080; cv=pass;
        d=google.com; s=arc-20160816;
        b=WOEd4gOP/8OHGa6Tsx9JHXm5jPdRldp4Qs/bTG79jJPxhB+boCM3SnzDEadT2EnSFD
         NRm5gEFZJy01rARX5naPw/bwUZY5tgw7fzJM7vcyY+2hC2ttAw6w8mmmz3sYjlBDYU/k
         TclotFMniq0a79c7GX5DNrWo63kytZ8yFrjdGmqikdL+lMiFPM6ILQriBY2fUSlXDZH8
         CHAIOp/PZuoI1hFfuMDXmDiOw82p1LsrX9iBFG8QAPAxze7JlWhT7ySyzTUJuRy6i066
         zEdId/YJox4gKVad3oBXbcXCCwn8EVfgMDV744wi037qlIpOwuao6ozrRfIV31yPcglX
         B4FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=Ci1uvvSMvibh/G8rpvo9l59n1BwhGup5tJ9KKN0C1dA=;
        b=CKWvakSlkkWXQqMIFDhoEVKAWNZkZpylOhMkv4ZyKHUvhXcAPPuC4/308C2vHOqaF+
         HXVaqFFUOX2kTGH7lXqbBRggGPU/0xy/vMEX9ZYxSl4pcYtTsSj4aX427Tg+GCL8w2V0
         ju2gVlrRWrlSmvuf5D5PHWtJJmPFi7/PDP1vYpwV9wiZlQ/gDeZUsX6ws2CduK1H/lbS
         iTbH7GiarjWHzapGOUZlMCmJv2KPmgM6+V5VQX/qK5QwkZ7cVTJGMMHNmVwCRcEEnwZN
         QgOYxRotUCIfoBP4yqQDzWnU2re+jEnVAYwXntHgmnLBqzEAn1qrzHYt01yzOgSZwuAV
         Z6PQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=eyFASZgR;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ci1uvvSMvibh/G8rpvo9l59n1BwhGup5tJ9KKN0C1dA=;
        b=FRqAc0JNaMzcgPqcis2RIOYQtQW2pxmFaKomMv1m6xbPUmQxinIMZumsX1X84uSkky
         Xxy7/ZG06X3w0TxKmIB3sZ3dPt/fHhPVffhf06MFNBs50UVFqBz/Nm/q7EJhtqpwlWtc
         E5rnFASBDzB9S1VJMp5VFaSZrvBSfBk37q/mf/Yjfndbk1GsF1aMRi0mKHh/SzU6fYd6
         ugvSUkHAMXlsjVGxsdZgx9ZOy5ikzCSaWWUn+P0w/bUEad0v+YxJMN2sKYq3cklEpZTa
         DfxzfpXNBjuEw9tfIBku13n7si/tS1NtydnIC6VRvJRWwQbC9lNEjCYjNrymTKB97rQt
         HRNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ci1uvvSMvibh/G8rpvo9l59n1BwhGup5tJ9KKN0C1dA=;
        b=cUWJRGPi58LVLXV2/kAznFLRAfFT5Zbmfrq5GB2bWB0CgVgO3t4JVH7IVY4+HVolLl
         N7B1r2M5G7f+rrf8gDB/yJpb1B73WKmbeYeb8c00eYYGom0N/h+F2GGq31Fxne/BD+27
         gB0+gF0xwjrkM8yrRhd74A/VXq6xfWxChujNdgVWZkpPUezfbs5D3hFWre6Lb1scSX7J
         Nr3Equ1DOlGEdmI1QTNJhILfcyS/x4lbqQxKex2iMpbC91v9fGxIkPMeupe4qKpNimSi
         abLe7MP3jWOhT46gbg/phGcuYwOA+z4oTzeDX7eKM2/aIwLqiDnPvONpRY5fs8DA5aWa
         EDPg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531tOy+wCbk3Hmj25IFTIR/QojTuDtg65wZgA/hDC6wvGkV+3zmj
	7Jd23oFMcLu31NBxWCv8xD4=
X-Google-Smtp-Source: ABdhPJwgPINbZB71OzOTvYpeZygpEdAw/iv3YDw/NylJgxxYzMxwJfBjezaWYMbMa09Y2s1DpKLh7g==
X-Received: by 2002:a05:6402:354e:: with SMTP id f14mr2963310edd.245.1638831080322;
        Mon, 06 Dec 2021 14:51:20 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:c517:: with SMTP id o23ls2634377edq.2.gmail; Mon, 06 Dec
 2021 14:51:19 -0800 (PST)
X-Received: by 2002:a05:6402:1d50:: with SMTP id dz16mr2970431edb.309.1638831079485;
        Mon, 06 Dec 2021 14:51:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831079; cv=none;
        d=google.com; s=arc-20160816;
        b=VQTbfzm/mnBgTmhljieGkSV9SdFqSqacCm9whJQYpPl3NPz7U6au0aCHZTa3RV3HsG
         ZJYk8vMSrB+8XbKKvLav0PXM0IBPHgN0CxbO/8zpXNbSExy8Wpi0GPxm5dt+t0uDCjn5
         dpuGWIIDGyJSqhjdqO/m/LPWv/hVzCHWj788ep8Gfdad2Prp0eqoDzqGMaZE+J2K5OK3
         sEsGPWMj8OVTcdVZsuOe14iklCOFH6ysPNdjd/zJcoMUNhd/XrT78SFkxlnOo03RjNqv
         F2tJxNMg9UI6sdhRbwuZI94I5U5rV5axA6ckgYlArb9Yl80oMh4lcU2/B73eaY6d3em0
         ppbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=9yLJ7MKNr/rEir7S3uoWAbXOrCi2s6fUNKy3QjsOHtE=;
        b=psy6b1uJHah+3EmrL1ejGMUn7zxgA6rhH8+Z+9DXRe8vUBWfmtmyjd3saaSAXRgbjF
         K5jJh81CY9bNtn8PfBPV7wBPD/2jvHmT7cM3/I7fIyAF15Oinq0hITtnxcR3P8M+QeMF
         KEex6YuGZZV4UBdONmkPxtTTo3y4/TZZCxI3Y7MT1zg7IpLrCn/iDL+MG8rhuH74pmuX
         mw7ZFVyUleYnYxJZaqliwov0KA2FTLehmSImpHVB1AfZ4acZHKi05DDr1bFI/gy89niz
         k+eIVAWyPo+HdQfHsi1n+Hf41yzrbt0UqlnRhYtfRBlLNcVBhSBxgdQjY9lPxtcrXAV3
         8MwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=eyFASZgR;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id i23si832437edr.1.2021.12.06.14.51.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:19 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210748.142603657@linutronix.de>
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
Subject: [patch V2 10/31] PCI/MSI: Use msi_on_each_desc()
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:18 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=eyFASZgR;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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
+	struct msi_desc *desc = msi_first_desc(dev, MSI_DESC_ALL);
 
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
@@ -28,7 +28,7 @@ int __weak arch_setup_msi_irqs(struct pc
 	if (type == PCI_CAP_ID_MSI && nvec > 1)
 		return 1;
 
-	for_each_pci_msi_entry(desc, dev) {
+	msi_for_each_desc(desc, &dev->dev, MSI_DESC_NOTASSOCIATED) {
 		ret = arch_setup_msi_irq(dev, desc);
 		if (ret)
 			return ret < 0 ? ret : -ENOSPC;
@@ -42,27 +42,24 @@ void __weak arch_teardown_msi_irqs(struc
 	struct msi_desc *desc;
 	int i;
 
-	for_each_pci_msi_entry(desc, dev) {
-		if (desc->irq) {
-			for (i = 0; i < desc->nvec_used; i++)
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
+	entry = msi_first_desc(&dev->dev, MSI_DESC_ALL);
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
+	desc = msi_first_desc(&dev->dev, MSI_DESC_ALL);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210748.142603657%40linutronix.de.

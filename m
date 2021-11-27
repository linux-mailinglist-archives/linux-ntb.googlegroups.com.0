Return-Path: <linux-ntb+bncBDAMN6NI5EERBZUQQ2GQMGQE4KC2PRQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C2545F8E2
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:47 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id f3-20020a9d6c03000000b0055c9d337de8sf5087981otq.13
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976166; cv=pass;
        d=google.com; s=arc-20160816;
        b=dMh49FW49lK8+fBoV04Q4NEPGFQp2rqUySqqWtNo4PswPM9TLnoFAg8rg2FOgER5Jk
         bQmxqtfzMg3yR9Za4snNUUpt5tF0vjYEHGcbxOLlljIo7Ug30AQwaoX2ghBknGSmIIbG
         yglyyOATevb9P7dd23W2I1pcSlDlWDXTdAmogofKcwGrtnhUI6Krlubv55kYPpKfy1eJ
         1NPvvdfkmFoYhuKU/hHuZka6kcIz594ot15J1OCz8KyO7MpwI2Q8X6UgB+7Gyc0brDpW
         XY7b5ox1gJDbbaC4UU+gsT3kpkHFqsWxVRVe/xu55iyQI0ONvwyEq7v40XRCA85/Drhw
         +Hkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=lLQFHXnV3haof0MqyupU+lsoVEN8H5faquo2fDPKctc=;
        b=Qdm+K125iTGp458StBOBSsuxIOsv9WhushPhAuoxW7oCQTUrxsNyml/y3TSHeB/VRB
         Kxi2Wj64NqyXdqRjNtItJ5qU4upcDluEg4RNWQG0ZCU3hcN1tI2u2d+j/qK1uh9EcCWl
         uxnRt36jky4VkYinnPsBRtb18QBo8n8g/ILdhobbxk5ARG8HjEy8dzY3XQ0p24P+voZ1
         u238gWIofsuZjn/xFwtpHn3OzYTW5ssFPlimPc53yIZxxIZ4PyPn9uLjCeqmVgyB+eXv
         hs3zstbdQToLSoCUAAZPjrN4hZoiGMl7ifoBcNeMPLnWWXRIpIS6mdbuuInIgPcb7pff
         J2ew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=lk4ccf5+;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=4CHubqiA;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lLQFHXnV3haof0MqyupU+lsoVEN8H5faquo2fDPKctc=;
        b=IVtAix0wx9PIli/RFoRgyFSq/itFlyMbHXlm8HruO6zCIuAmPrySMpyprBXeZMh5IN
         W6EbXrq/oN4bkhx/NeupuPXKG9muXkufQvhjLHnh0RZCB/otHfNo0tycJ+79nRfaukTT
         D2gLqNt/4b5OK0Az/FsllvRiEX6u0DB5CD6ehEaUQ0E04C88/THcC4bu4MGgSGmJB5N6
         CimWG+Tw+vjLHMJb8Pv6YYsjp6wVNNtcZitcC1tUhxmn1BM7msCcEftlk+6cri2KUQSA
         Thbetqpv1sbQY+YQddftczdJUrIdur+cFvlA28nCY7MGAfUNV+XvGMfoHMjh3dbBNfFX
         FgyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lLQFHXnV3haof0MqyupU+lsoVEN8H5faquo2fDPKctc=;
        b=tIagINzZNcDCmecHxpos1gmqUQ6DLKZlfcD+V1nZVpPDW6pVBnCbrCdUtpKkili+vX
         cEUMfp0VyYZb7JACQ9gtw3jKsV+m/1JtF5wxKMiB+hB8WOlAnXUgH1cx9Rjwqj2SdLjN
         ypmz3CizB7ElBbKyEn9fuVGt6j+UUHugf0brY1NphBSJlo1JpuvBQBlvVgtvgit8c4Qe
         3zxb+FqKs30uKDiZ+wZ+47r8vmDxkjw/BBjunork7CmZnEujJmG8GpuZ5qy+2lC4vNJk
         MjQpd9TEUIJdOZSWOXZieh6YJ6SI0y8gtLTF61vk9feEitvvtgpNufoL4d8yJwJ8pKci
         aOYg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531r0zOqtYvDEeMhAz116s/Fx2CPCVrEOkdu3IU396s8f5PX5jYs
	lRO8YwQsgL3x64vg6EBOkeQ=
X-Google-Smtp-Source: ABdhPJzvqA2jtHox5Hcb00QYppIzBDlBbIOuOSuLw9cNVE52drRvbN9qeF81Vy+xUDzdHGJvYIAn1w==
X-Received: by 2002:a9d:da7:: with SMTP id 36mr32600436ots.300.1637976166589;
        Fri, 26 Nov 2021 17:22:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:3499:: with SMTP id c25ls2629165otu.4.gmail; Fri,
 26 Nov 2021 17:22:46 -0800 (PST)
X-Received: by 2002:a9d:63d2:: with SMTP id e18mr31687007otl.28.1637976166305;
        Fri, 26 Nov 2021 17:22:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976166; cv=none;
        d=google.com; s=arc-20160816;
        b=CMfP9gfer8hpMW2JGQ8+CTgLkgapspXO3acx5qNlMHb0a/R+C3liCrDdchlzXQ4zLe
         Cis0+a+/fSJVqN+JGSKnke0BWREuF6kgUec1HngV54T2cNwk0FaK9RSIT0MarWLPLib+
         OMM/mqwZC+ATs8llA4pXNzgcP+O03RTgryfUYVAZDxR8tQA95HEKGim09WjWHYfex6oN
         UhhSUA5Ki4wXsrQ7p6Fdbz5BJ/Y8d0ltsBhBEzOZScBaXpupp2tU1GddJVib6rb87zrW
         jLxQa2eOr8aIDb+qU7jqOd5/u4adGqK89MwMQXmedIkY6xSCXMzAlMExrE8pPxlKnogf
         +HRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=QuU45eoyNuf+fgvpHD77GSISdDrHu7KnsGWmWgR8zuY=;
        b=tcFUYun8Ofzg0WsCBLj/crj77Lp1FFIOhozFLBakUmoIVoJAMlkd4Tdk8+Wkh4LLoS
         ql7ztKwf5QnJU7qewWquiSZgJWw+/7VkDQ32n284ksRdFE3d2YCNlQpHUzB7kke4HEVt
         Cv6P5FLCmM2/DA8zzIaLyBs8ylmTmXTbSNEJYzmmhSgwvXhOfQMQAZJPQDFMWRSKPizr
         UlKJvt4yqrD+843B1wonZif59YuKeJOIaBbzMT0Z4+T4ym+/qD2l+sJuxqgPy+9tKUU4
         Kp+FYB1ZICrYOqbetjXvxf8JEosQasKQgvKcwHeuzkT8yJbWyU564VLc4rQi7Ubn486j
         V7BA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=lk4ccf5+;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=4CHubqiA;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id e20si749754otj.1.2021.11.26.17.22.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:46 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:22:44 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=lk4ccf5+;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=4CHubqiA;
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

Return-Path: <linux-ntb+bncBDAMN6NI5EERBA5IXKGQMGQECBVJVWQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 3659A46AD63
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:48 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id k24-20020a2e9a58000000b00218c7914524sf3896607ljj.17
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831107; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lh3s3VlnenPFoxz+xh6If2eCiGWHNGm8Wy4Yd0si/mEjRhWOvuLhM98v3jmvXXP4eK
         PVzAuhHJsPj/1U4ltfLrG7d3Jw5SKU43NhbyiYwtaWiICAUhCJwVw71wCOdfCSJ/6o6h
         93C21u8tLVJdI8ll6HBphGdU1I3RRDK3TYtfru1MdFRLVsglM2cVjEeQCjwen3lq3Mgq
         5KMqpskYcSVQkFisi3oArL4/0/s9ierhtZcniF+HtFtXkE2hloQe3L/xHXxOEfIvrEg6
         2Ke4ohTrTx5KFP+YvOSuECfPtp47uVlikF6hAoM6oSosExg8BpdZCxkHNUAdpbaXLQZw
         cIVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=3tEgoaf6SD1L3+y5Xbwjjl9zIf3qB+lwbKmpOrLwzIc=;
        b=wQ272lF1aG0GE7TvvZ2WSoJM4aVdOtgJS+ESlDix7d7zoEdk2QGJ/colqf2PRIf1p8
         Kay8obvpOVA+foj1LptLpOKe43MoHXqcj97BhPWWDiW3dRgPs+jyKdVtYxK2IIaV6Orn
         bZVvNBfZlT+82z3BWcQWunaj48TTmdHGpuTud1pZUx/9Z8kYwWlGe2JS8TiuegkoPlO3
         oxsMWqpjIark9IwmdyO21B0a4uF7dVBhTEqXILBKB8ak+mEX/b+j6YDUau59LqAj99PG
         QgchrHn2VU7NiL3vMoro2DjyoTMn4veINz6inKOWpH9rOMyBbYsRpYc4itjznZEWDUsz
         eXmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Y3Zk3Cvh;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=AjrNQMXU;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3tEgoaf6SD1L3+y5Xbwjjl9zIf3qB+lwbKmpOrLwzIc=;
        b=gbWz8KhjiGxeDytXzYpl8+v5xAMn1eFos3hbYr14233REUrUECwyJlXi8EUE6ti1rH
         FdCT1eg3AjO3jZkcPzAYL3SAu/3rhNWPvfF0x492VPDNqmW04jCxPLAmlF0lRw08uLMr
         ZciKFYF6mkQK6oiCjb+YL8mXRy1AiO8sr+LrHQ/yUicJDJM0bg+LS/6OXyqgIVxjfASz
         4eCbsTxwYLHiqXPHDrftEG7VKlL1abGuL6wQHRCSUjpr8LubQUt61tjusBuT2NHnhX+V
         cWzmZfPZItFjWL8uT6u4Fvh3OfWNqM32oS39wLt/ddhWT2tME0djAklkrCU0PjH0ftTM
         sLbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3tEgoaf6SD1L3+y5Xbwjjl9zIf3qB+lwbKmpOrLwzIc=;
        b=mXagUQHhtGBHolCrUO96MWNwFsoMG30zBYMX9avcZYCs+BDSg74pflGg1QYp4WGhjx
         G3NnxOS+r3NXUV7F8dAfzW0RBfYwyE/cYWGuf42qFpglKUDGiKdLRuESV2HLBPUkXaUv
         ON7sL/XmlpzHf7+KG0UMjkrJ76ge/6QNw/PODsz1KhFPQxDAn0/AU0s1AI67dflRMM3x
         7mXvr3zjXzJbyuyNP7in+xd5fbzDZYh5z4xpeP4Nj8rtoKFhewaiVU4aG2Lu3RSImpHG
         pZSnswH6ru8iBSBNK8wXzoilUogvZ5wAgfD6QRNQ73nbZTpFZz+j/ZeiSzCcpBFLeAhD
         LQlA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530ARynrVs0x78BUYhjiy4cFsMhfyMQBUbPQNopQlUyd0RqOOp+/
	nTm/8foLgoHvGbPQq8R7FXk=
X-Google-Smtp-Source: ABdhPJxwQqEEk2Gh0QysOsTFvt6Aam8HwgADHa32R33gWCgsjL1BVyuefvfZpQ2x4wOkNvRPsy85rA==
X-Received: by 2002:a2e:870b:: with SMTP id m11mr37458455lji.20.1638831107784;
        Mon, 06 Dec 2021 14:51:47 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:a378:: with SMTP id i24ls2845436ljn.3.gmail; Mon, 06 Dec
 2021 14:51:47 -0800 (PST)
X-Received: by 2002:a2e:9a02:: with SMTP id o2mr38531047lji.221.1638831107006;
        Mon, 06 Dec 2021 14:51:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831107; cv=none;
        d=google.com; s=arc-20160816;
        b=q6jll/EzIPEbYOdRymoV+KHgfkLmPU1P4HLGqils2Zf3WJVcjPmoHfzxURMr0e/HvY
         kC+r/iI+h7/yrvGICRzBmWfUPUemB8AbdI1CBEgNacA5x7n36Si1nITSVx1zTJAqv3cn
         kSi85oWGAfbz1UCexQP9ffw7vR+gbqglqfcPIEJZ5UCAVnR1O1QEBLy62EzrM1Km9Mns
         mtX2bJwuAmTREzomx69HZdxNaWyeMdrbg531YJombuyc20TjavnBnNnTVCxFoYPfpFRv
         SZCkh7ig6XEKC6LtYM/oaOIezX0ZL3EqAqYRNiE0SdxCVYWhmjVdxa+OesH6hV5DxesB
         Xkfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=9e4EOcKKPduqUhpCF4p+2UUYlWyoniP7lkjFDtpqz3Y=;
        b=rBysAEnV5E2jEe6/9RmFH52TrR1ciPVQK8v/MGKocQGw61dGPVz/uB2pZAFB7/6r5O
         /Erij2/QHzP1QcPtm9+HwyglLBoi4+LiaJRGPeGrW+Yn88eSnwLsiVaYzdeOyWc8WkR2
         SdlMW6wnoP4G7j1yjPuY7eHvsvuff71G553J/hJGvRPWpaky1L3juHgq4Gf43cW7A+SF
         ssTlsBqoYnONauQzJC/tt2YRULSaFk+6+Qk3nr4noSE+9egWmLoEqD05mHlGw0ihR1+t
         CKvBKE0bwBALCxSMJXS8jP/kiQV7BJhtyV5chONWyIFOAxgzuDc0iCd16pxdARjw+eQM
         U49Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Y3Zk3Cvh;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=AjrNQMXU;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id e15si1068143ljg.0.2021.12.06.14.51.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:46 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210749.063705667@linutronix.de>
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
Subject: [patch V2 27/31] genirq/msi: Convert to new functions
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:45 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Y3Zk3Cvh;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=AjrNQMXU;
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

Use the new iterator functions and add locking where required.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 kernel/irq/msi.c |   23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -348,6 +348,7 @@ EXPORT_SYMBOL_GPL(msi_next_desc);
 unsigned int msi_get_virq(struct device *dev, unsigned int index)
 {
 	struct msi_desc *desc;
+	unsigned int ret = 0;
 	bool pcimsi;
 
 	if (!dev->msi.data)
@@ -355,11 +356,12 @@ unsigned int msi_get_virq(struct device
 
 	pcimsi = msi_device_has_property(dev, MSI_PROP_PCI_MSI);
 
-	for_each_msi_entry(desc, dev) {
+	msi_lock_descs(dev);
+	msi_for_each_desc(desc, dev, MSI_DESC_ASSOCIATED) {
 		/* PCI-MSI has only one descriptor for multiple interrupts. */
 		if (pcimsi) {
-			if (desc->irq && index < desc->nvec_used)
-				return desc->irq + index;
+			if (index < desc->nvec_used)
+				ret = desc->irq + index;
 			break;
 		}
 
@@ -367,10 +369,13 @@ unsigned int msi_get_virq(struct device
 		 * PCI-MSIX and platform MSI use a descriptor per
 		 * interrupt.
 		 */
-		if (desc->msi_index == index)
-			return desc->irq;
+		if (desc->msi_index == index) {
+			ret = desc->irq;
+			break;
+		}
 	}
-	return 0;
+	msi_unlock_descs(dev);
+	return ret;
 }
 EXPORT_SYMBOL_GPL(msi_get_virq);
 
@@ -401,7 +406,7 @@ static const struct attribute_group **ms
 	int i;
 
 	/* Determine how many msi entries we have */
-	for_each_msi_entry(entry, dev)
+	msi_for_each_desc(entry, dev, MSI_DESC_ALL)
 		num_msi += entry->nvec_used;
 	if (!num_msi)
 		return NULL;
@@ -411,7 +416,7 @@ static const struct attribute_group **ms
 	if (!msi_attrs)
 		return ERR_PTR(-ENOMEM);
 
-	for_each_msi_entry(entry, dev) {
+	msi_for_each_desc(entry, dev, MSI_DESC_ALL) {
 		for (i = 0; i < entry->nvec_used; i++) {
 			msi_dev_attr = kzalloc(sizeof(*msi_dev_attr), GFP_KERNEL);
 			if (!msi_dev_attr)
@@ -831,7 +836,7 @@ static bool msi_check_reservation_mode(s
 	 * Checking the first MSI descriptor is sufficient. MSIX supports
 	 * masking and MSI does so when the can_mask attribute is set.
 	 */
-	desc = first_msi_entry(dev);
+	desc = msi_first_desc(dev, MSI_DESC_ALL);
 	return desc->pci.msi_attrib.is_msix || desc->pci.msi_attrib.can_mask;
 }
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210749.063705667%40linutronix.de.

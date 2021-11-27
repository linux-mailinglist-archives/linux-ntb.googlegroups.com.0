Return-Path: <linux-ntb+bncBDAMN6NI5EERBPURQ2GQMGQEBVCFGCI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5098E45F987
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:15 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id w23-20020a056830411700b00564e73edd41sf5061767ott.21
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976254; cv=pass;
        d=google.com; s=arc-20160816;
        b=0+EcopkbbEH1ydMp2rHm77iR0d/FxvUnXZZmG0/ldem5VBl8ALGbACGrdhTfeI+OdS
         K8uUOVGd9xhWqftS5qWSdzqQ/ajYUxlr1RL64s9s8GjUM2qvu4Z+XU4HR/FAnCD4UgjN
         TZpUFI3vpQoeDTKf6vT85OQX5iiA8eew9p4mvkk5Ghc3bE6j3MGdiIirFD6j/FF+yiJW
         ySud4HfGyjZ03FGxli9QhNwsrp83NlcmOJMrt2oa9RvC8b4vo3h5NX7usqQk4VStaou2
         azkECkuInVMX4ckwiR/wOFfBthzDuIK/fMyxp0juKXqwllVburMQ76Woq+m2rgHGN8oe
         uVtQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=IL+TYl0BzUl9PzjeOg1jwpHCJY5wt9b8cqy1KUV5D6Y=;
        b=Q31KmYHXqdB2ePq8q0E42ST8Ud1kBlP0R+5KdZojwqISq6uICZt/Glg4sENQ5IA0/z
         djkngZBMy0p+cSb79fpGA7wLFT5oDRyRM/zJ6I2usvY392pJzc0z3IoC+NYfjXpAIlvQ
         gHg0+9RxRvJ3fA8CsdDexrVQeI2vz61wK/j09gkEjWiraB5f207dz+YvvJ9xlhRFOoOv
         uRFg8brBaptvewntkhJo0LywjCnY0nfZiQ0UE3C/fhaGbJWe/zqRHmoW+IBRtIRltv4h
         v3SC8KzZxI4Bm0kIpneqCN5k5Q+UujjjGKHhZnqU/KxYP5HjRcexinBDbiCzmhEjbNOy
         76fA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="qnj/Q9+O";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=XLNIWs8b;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IL+TYl0BzUl9PzjeOg1jwpHCJY5wt9b8cqy1KUV5D6Y=;
        b=aZBWSVFbxruqty9yNyEubKn0DuCtyGHsxZ5MzKb4z54fX/QM/RU7Mp8cGB+6q06aKs
         H4q08IjyJkqdxyYtVHt+4/kYZEK5zCqUp4apYFSqj8Wg1abq6gkJRd5Gw9zCZZB3be6B
         XFGHn71l2daQlRuJiL8DtLxZLd9OsC38E+VgQBriZ+j2J6cdy0KN9kbWJqNAvhjEddBt
         k22tT5zlzJnsQJrDSZxo6YZHn736JYMKMR3TdQkaZSvgYMMqPIr1OFBeQv81yhNZY4xC
         RishksD0SdV/O/X55n3H+0YboJvBaNHcqUQuKm6U4Wnhpay86/2ePG094kG38yeUrsC+
         /73w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IL+TYl0BzUl9PzjeOg1jwpHCJY5wt9b8cqy1KUV5D6Y=;
        b=oEpfUBQIQ1pY1Wp9MWoCpQkqx7CSUnLpZ/K8YZMRwsUfXeHntCWPl3gQRaiucYiD5P
         hxXcTm2sRk7mLsJU0S079LwrRDM78gMOLrgFLdxmq16pxh43Xd+7eOgDViAxe1O27VQi
         FMTcy0bctybzrs81/ZLCUyuu+NY4uRbAJwFT9xcW/+0ZLawNkComYEyKZ5c6ftL7yZ4t
         IhRf6OsB+P4wcg2tDNyQXD353qPFsG0XHzGrWQlodRLL7qZXBfpiGkztWq4WOznuLz7b
         qXaGhW9AKBGpC4YL/Zfpe3nVe2Yrmw0/O9CgjOdBBG+Wgbsx1zmeepqH3V/cB1pDZKm0
         0Y+Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531RqCqt8eSS1vTkx37FrteUgtGa7B8fb8iwROx1jDg+NePkSrgO
	vFHnDU1lZRpQNmUBL2j4KMo=
X-Google-Smtp-Source: ABdhPJy9A7sNdyyObq1kVJKxy2lhDo8VDfqTo7/nLF1Xx3uBkSmIebQno3bYoLz2Mo7cCEoFpZ/ftw==
X-Received: by 2002:a05:6808:1315:: with SMTP id y21mr26816298oiv.103.1637976254370;
        Fri, 26 Nov 2021 17:24:14 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:bca:: with SMTP id 68ls2620600oth.8.gmail; Fri, 26 Nov
 2021 17:24:14 -0800 (PST)
X-Received: by 2002:a05:6830:3195:: with SMTP id p21mr28857244ots.56.1637976254024;
        Fri, 26 Nov 2021 17:24:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976254; cv=none;
        d=google.com; s=arc-20160816;
        b=k6O+2FCpcwoWOxLs8lgcH+bH2twpsxsL+cL3Wr0SZExcbt4CW0f4hjQzok6WpcZO2S
         Rc5zKCyVNUSY1jL/v/yBcZe/PDCyYPYOm4gC1pzfL3nCtK/yIADfaR2d+RVEuskvFpo/
         pHiFdO8yWpJKs7DloijFQFEYScrNVW7jc0XRiHhpTMRTuxCB5GKbh+BD9dNjjeGr5sLL
         J/ydOqeTBxRhmr8lwDmf/oTRPV60xHITdKR89EgKdfLYBJg3zCXSscWPPYNx2DSmqTaL
         iKtJ+VP0C9b7MjkAaAIXraX+GSwkGnqzt+wpw792yAlhLwlQa05hpRzHrxE3U4wWckFY
         fs6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=gSomj3s8jo8kjsKBojGfH3Sh/kAv2I0EDD9nvx4QgIA=;
        b=bHz3wCbcF7aT6sEdh4FqxHlYj+6Hh0BjjCBWotSJXroYrBYLKCHgumpKqf0U4qLQkw
         qvVaBudUQYLiu87EO2/xZ5j3LuIAuZUY3D3NXG2S/PNN7Pt/g/VZSzA8RZEDaS1vhtEi
         Ju8dPRoQ0K8ubcQRCpkrVRtZdvhypPtIlASWb7wV9L9G0I4aIKY7gayjhKw5phJ4dwmh
         0WBGVss9oMklWJwlO8He+BtHskLoZigQBiB6W918fgZFFRspiMFVSUb1T+3sQ3YbgRf0
         mhNrC+papQVfYBW7I3baEIeMvXV3S7NwaRXX0RE2M3GX1lz3dLYLRrpvBNgez7n1Qztf
         MEfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="qnj/Q9+O";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=XLNIWs8b;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id bg19si1168877oib.5.2021.11.26.17.24.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:14 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232735.966439698@linutronix.de>
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
Subject: [patch 28/32] genirq/msi: Convert to new functions
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:12 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="qnj/Q9+O";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=XLNIWs8b;
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

Use the new iterator functions and add locking where required.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 kernel/irq/msi.c |   23 ++++++++++++++---------
 1 file changed, 14 insertions(+), 9 deletions(-)

--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -354,6 +354,7 @@ struct msi_desc *msi_next_desc(struct de
 int __msi_get_virq(struct device *dev, unsigned int index)
 {
 	struct msi_desc *desc;
+	int ret = -ENOENT;
 	bool pcimsi;
 
 	if (!dev->msi.data)
@@ -361,11 +362,12 @@ int __msi_get_virq(struct device *dev, u
 
 	pcimsi = msi_device_has_property(dev, MSI_PROP_PCI_MSI);
 
-	for_each_msi_entry(desc, dev) {
+	msi_lock_descs(dev);
+	msi_for_each_desc_from(desc, dev, MSI_DESC_ASSOCIATED, index) {
 		/* PCI-MSI has only one descriptor for multiple interrupts. */
 		if (pcimsi) {
-			if (desc->irq && index < desc->nvec_used)
-				return desc->irq + index;
+			if (index < desc->nvec_used)
+				ret = desc->irq + index;
 			break;
 		}
 
@@ -373,10 +375,13 @@ int __msi_get_virq(struct device *dev, u
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
-	return -ENOENT;
+	msi_unlock_descs(dev);
+	return ret;
 }
 EXPORT_SYMBOL_GPL(__msi_get_virq);
 
@@ -407,7 +412,7 @@ static const struct attribute_group **ms
 	int i;
 
 	/* Determine how many msi entries we have */
-	for_each_msi_entry(entry, dev)
+	msi_for_each_desc(entry, dev, MSI_DESC_ALL)
 		num_msi += entry->nvec_used;
 	if (!num_msi)
 		return NULL;
@@ -417,7 +422,7 @@ static const struct attribute_group **ms
 	if (!msi_attrs)
 		return ERR_PTR(-ENOMEM);
 
-	for_each_msi_entry(entry, dev) {
+	msi_for_each_desc(entry, dev, MSI_DESC_ALL) {
 		for (i = 0; i < entry->nvec_used; i++) {
 			msi_dev_attr = kzalloc(sizeof(*msi_dev_attr), GFP_KERNEL);
 			if (!msi_dev_attr)
@@ -838,7 +843,7 @@ static bool msi_check_reservation_mode(s
 	 * Checking the first MSI descriptor is sufficient. MSIX supports
 	 * masking and MSI does so when the can_mask attribute is set.
 	 */
-	desc = first_msi_entry(dev);
+	desc = msi_first_desc(dev);
 	return desc->pci.msi_attrib.is_msix || desc->pci.msi_attrib.can_mask;
 }
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.966439698%40linutronix.de.

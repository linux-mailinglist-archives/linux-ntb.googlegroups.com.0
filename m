Return-Path: <linux-ntb+bncBDAMN6NI5EERBAERQ2GQMGQEHUKS7UA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A7D345F8FE
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:14 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id x5-20020a2584c5000000b005f89a35e57esf12778830ybm.19
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976193; cv=pass;
        d=google.com; s=arc-20160816;
        b=JDOAQ7eE3Tuw7pxt/+AWJAAN86nLuAUakTkTI+vXQ7pO1Ca/7xY4fpSgARA4ruIzup
         82x0w8a1bzxkN5J9kIBw9+98PZfPm3friW83gvtHXtRufxiNG2Dx/fExiv4jJceuJQOd
         0pR3kVnjxKrAVoERMzF7NxnPHRkbDmhJ3B1hgB4npCAW2UeYt0fuI+8H+1/xYIxR6NaQ
         dcAN4ZrixWFQ+166Umv0djf6dURfKl6liLFhMZAzmEo/UXXnEo3qKTAjYDO7FeOB8EyQ
         YhmNTdSQrFBodZoWyiohh/1vsvoexnK4lgUtbbsLhrRxcQiLlzZKsVG90nx/s2EG4Pzz
         37Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=IL+TYl0BzUl9PzjeOg1jwpHCJY5wt9b8cqy1KUV5D6Y=;
        b=LacIuHfhHypBJXdkci8xEs9jqnOROesVh666RC5dvcwkdTYWQin1yRBBYcz/wujLx7
         xwTjVFRf9COsxMetd0otNAHBT1/r7jR9yGTriU6XWmej4VgzwhKigF+RmeXtrwUXWgWe
         bzvx6CosaQl4yphAucgtBMOKAjanNsDhXm2SFxk7+USWB/cOlZaZ96ddkcca2Y7+nhw2
         wftFrV2ejbg5d039/BRY29FwGrTZgf2JcmYLeZ+mnoH7QA+IS4VTNS/eZclY2jU0knH3
         3Q2cS8F8vREOotxd+qnYUOf50wwibnlXIo57h9tmUk5Je2CjDeJmKXhfX58pim3nkjOJ
         F5Jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=4aLm6U11;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IL+TYl0BzUl9PzjeOg1jwpHCJY5wt9b8cqy1KUV5D6Y=;
        b=ELKbwTChljtojDRuHKym5pN8iwKIKFfXh5cj9Dz+p1PYCKxGLPfbJguMgyW2amcyBs
         0KB+ukZ4CZ1kMKprxgC/M9lIamUju+TtQ1llQ1+iHTR4JuF7tNbsRIVmWPcW+987Z5Qn
         1VLQ6ryaWMj4uvGz96CrlLWAK2SNo41EGBqPjkxjjHce45/fAzok0c3B6U8kCBQfCJ7y
         nczF95LKu8saqDBPRAlVutQMgELdPA7Mv5s4Us9ozcj24oGGInJPDLbT8CAjfn7pxM7c
         NFz35lWvcDIq/ILjppzHwEP+mW/XueZTaVuG8k3gKJzEUSe6BV0nlYkBSxy311gSkSNZ
         /70g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IL+TYl0BzUl9PzjeOg1jwpHCJY5wt9b8cqy1KUV5D6Y=;
        b=QZE73wPvnHWQqfdFObXzhf3osQB/87jt+HRY0Ppw/t+iP4ksYMoYGrL9VIKkWIDYg6
         pE4/3utAAe9XpekU5An8JqbosKVNHAVn2hy6ADd/Ctb2IRkkWAKncxlMPQpHS37SZKnc
         Mb866ZbxH3YyksIEu341L9AJivu3A2C3czbzyk7g08HxYDeI8QtK+5rutf4JQYuDI8Yt
         LZn5UeEEEPC7cehqjDWCkrJDmTb+lXhmxp5gHUBGtGDA1wH2tMvFdjWGme5nKwq1yGnX
         glbPEZIs5n1b5Yw5X+7t/fcjx+RyJUNJV2iyGysfDcvvAeBvcY2JTEokDAtIdKCGK6pL
         rUhw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5307qmH5EWhUB1GGe3oPCu3GJR2HKBRK13OtxnBvHWWk6Zc0LhMi
	3NCVQ5CMw1YxkP9VYPQEgRA=
X-Google-Smtp-Source: ABdhPJwq8nfrHSIGFccwk5H2tqBv4lcs75bXfJzfAt8Ctamq7Qf1zsRGKrncMQn6ZW2+YN8TvdDZcA==
X-Received: by 2002:a25:6152:: with SMTP id v79mr19168183ybb.400.1637976192940;
        Fri, 26 Nov 2021 17:23:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:6646:: with SMTP id z6ls4611229ybm.8.gmail; Fri, 26 Nov
 2021 17:23:12 -0800 (PST)
X-Received: by 2002:a25:a283:: with SMTP id c3mr19340497ybi.219.1637976192476;
        Fri, 26 Nov 2021 17:23:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976192; cv=none;
        d=google.com; s=arc-20160816;
        b=G7ihyR0ZqV13uiN8Vb5Va9HmyTRhjI1xQxW/+XOGuf894pZEvPx8QR6lA9FKsy3y9+
         lJeE11cEpdwsfHFZTu9/lVpC1MoUstSlH3SlNQgaerfHZ+vWaIZXdxrjsr9N4ibRD6dj
         zN3MCZ4DkI0jkk2mJOGm9WpJT9Ewp5hiOr48BtJcguzPMxKSaiuS0jbnGc3IDTk9RG6o
         BT9Tob52hziFYSzXwyrWJs/tW7nv/T66Cln9S4eWGoCTh2LkSa5nn1JAKzF+TirHsmn0
         vqOC0xlB8IzvjSOe8iLJfC1vUXGQypETOFkChD7s8IwXmXQLTq9zURe/IdyKvvdJDJ76
         v43g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=gSomj3s8jo8kjsKBojGfH3Sh/kAv2I0EDD9nvx4QgIA=;
        b=KYvsEOUg6QOwaZrZG0BcAKgxNrQsqjQ2qkwVXlySfx62hsPtPqaxI42+yhvX5dqZHC
         6i3y4NPN9JAPOMqU45oEmtXrm6y+veJbE4m90RExfs1nL6/EGPAm0JvVgkHbqwZDCuQO
         T/LdboMWaHvlESw5p539LuGPecY8xhryv9oybljQulrX4ouR1TljPBWA0s4a/rjPIDlt
         XzIDMpvdY2bGaq8SinK1AOOwcW8AZTVnLbfm3TBCQODGyCfd7AkGYz1vIDmufdxTCO/s
         Vg4FLWLG8c0fLBuwR8ILGkQEm81wdyWFpVb+RnGAuzyOewrumhY9dMpg8EhYR4v9i34Q
         9AAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=4aLm6U11;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id k1si738843ybp.1.2021.11.26.17.23.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:12 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:23:10 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=4aLm6U11;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

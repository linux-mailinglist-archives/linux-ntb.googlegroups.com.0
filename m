Return-Path: <linux-ntb+bncBDAMN6NI5EERBBFIXKGQMGQEQTFS6XI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB9546AD64
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:49 +0100 (CET)
Received: by mail-wm1-x33c.google.com with SMTP id j71-20020a1c234a000000b00342f418ae7csf264697wmj.1
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831109; cv=pass;
        d=google.com; s=arc-20160816;
        b=HpPnKlhfAQyMkYizrMKjRfx6xI4Mz9TTxu5xwBc0yZ3UG550fQxflfof6/PQFvN5/F
         B0esvcmgANUd1/baWRpZtN1GzKz1D15YZzaj5e3Ri1k+2FD0vVKjv0aBfl1XAciM5bRN
         TJGz2UxHmOrOFAXUE9hWW8gYZ+MHIycWFjK53RpA2XDPaiQA5O+UCOVw5jk79/IV0nQk
         tfzZ3L3djmzWDAK8BmFz9r6ekSVpHHHzNU2tuKZc9SWBabt4F3hentOxiwdAVidR6NrK
         yE5vs/D/dwcdjK5+nj9ss42ToEyElpC6UQ3s/5n8EEBGlnpxa9+7ujPYO78z2yYv2YmD
         B24A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=MuGMqTsdEZUXe0CZa0J67pnw+UCkrYHtxGeti26l/eo=;
        b=jlGyQSDiKiCvmMca+Gw6v9M7Jb4/jgq6+IPqpohoVW3yr+omDeZ2BX/KWUQtWUYdH9
         de2Rk95yntVUzyaD1AhRdud2ZMdjictQnoTpXx3+R8xMX+/qQjeKv2NmTK79Fhkxx+4g
         XVQlEummapvt61DNUscHO97MTQbOQslpY0QeOfMPJUy5bh+hE3wIs0m3Irt+bnwpDPLG
         hdjYbExor+FQKl2/7GkU7kvjIzK7sSV6CnzZ/5vmTlxvlzon7chGU/B3WvEJCk2Rksoq
         7N04T0wnALnvyVFLKPsuTRifXzsfIp9ehWeKiVC49CG9nLT4Po7yMZwkZg+qxkuIka84
         qAZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=j8YDzfjT;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=D+mlv+y+;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MuGMqTsdEZUXe0CZa0J67pnw+UCkrYHtxGeti26l/eo=;
        b=YCl2FXQXOLuH3cjXGs+l892HMYx5SlOyvheEa+WVweghvzLYzcrC7Yk1BVVgS9PCFP
         6ENJB5ig5xFAyDTAc0MsXAdpIZ03wtCrrItoi9g0q5h+uV4u4oydzAyR7f4AtHc0TD8G
         6RFVktK3y53VZ+CkVcdsIvhPMs7REDSjmtcj0ut8ihY3PXsSdnlGVZJPy2iZi9u4Ib/O
         HNcK2yLqH6uAtupa5zpRT29QyWpMTFE25nRwjrj/Zdw/xbrFtWtus3z31wT+A8pqPD1F
         /1lG70VAmE9Nu1WBVm5CnG0D/BNFVLMHJGuqs32LN70DsgA+0azvKuhMYTkxzoFfLCx8
         Li/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MuGMqTsdEZUXe0CZa0J67pnw+UCkrYHtxGeti26l/eo=;
        b=TL2n7DfuIVEUIl1I7AHtPsJiyYi9Tj+Kbwd/42XZl17MniNCe6lK4MR3O821Eiwnb1
         gPVSVQrcoRu3IavWcaRQCyeQq6V9+dyGUlswCBjzEAguXVNZoBWAYtqK8WGjmxy2HsyY
         XdfvTQ3ZsA15jg6aEhz6muFG354bpiG+B5XPs91jaEqUx9uGJvTn6kyFcaZgc88F5Ljp
         tNLJq/9ibPN03SOJEjmqLh1gzzMuspFxAJ/PHsmYwobXHhGdgVeG66l/MQLuzxWz5xeJ
         9/6kqY7CYAVL1hpLjIKSsy5wZHhb+d4Vo8tJHFJoWiDgwdHxySIxIdy8croUC7HSu2Px
         /T4g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533xGnfd24hL+NBAth4kIqt6XxJ157xe5Fi7njAHix9cG2PYCba1
	gn9aXhi0tsjhTChqZQAkqXM=
X-Google-Smtp-Source: ABdhPJyYMyiJhxa2LcxuZCd66pGZeuthL+TaU0hDx+nLjHS8WtLnILfbxgtRk2O39OLCDGVJ7dcJJw==
X-Received: by 2002:a7b:c102:: with SMTP id w2mr1877389wmi.151.1638831109037;
        Mon, 06 Dec 2021 14:51:49 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f885:: with SMTP id u5ls1276063wrp.3.gmail; Mon, 06 Dec
 2021 14:51:48 -0800 (PST)
X-Received: by 2002:a05:6000:143:: with SMTP id r3mr46855097wrx.236.1638831108290;
        Mon, 06 Dec 2021 14:51:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831108; cv=none;
        d=google.com; s=arc-20160816;
        b=01X/IFFqR91aG/m21FW8ogkfOHhrfIOoFtWmBAongooqv7vF+bnqHMVj2w8oAhqvyU
         UUgQUYNgBrq9JD26pLvJW/jSu6UqvHLtY8W+Qzrwvn8u1yagZmdUsG5UaLqA0Vz0aNxD
         JOBI6z7Bo2uIUb18q0oX8e0bGcKurYEH8qjHMYWTTuh0wzj3u9p5xkCQzl6pck7YDZbk
         EtxEs8ldmL/DjgPeQhdU3kIGSB0GF+H3KZNpRj1ZW4otOlQqKquMHXhAnNFmv8RxLWgU
         q1KZ1H58sXlN+QEmxIx6m24deyspAnQCs5wTpe8br0Oc2E69OJSxvT6dvEbSpq7Jg5zM
         BNtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=UQMeiJXeYiF947FjCPAG7vmRPuGlZ4RmWN1aFBAPWbY=;
        b=s6mW839BrUrUiq+ByRQWPHrBzf/THcKpH93aVPSkKGRDwVa2Bp0BN5sFv3EC4j6kwr
         emTDb7G6c+IRLZDhuEletHY5Qp1wcUnHm6FuA3HPMmvDWrHkkdEfzYrbsg9Wzbq1gifK
         wc2OMkDhr3bMqIksz1SeM+vcBgdU9eW2l0O4qC0gYX3gA92BcYpDneg3Olv3Suek1Wyq
         AQDWjxVrwF+GULEDYrFiaDMYa2D7d4erGGOVYf0TMxMrwbHo3qNpUDKE1X0fOIO6AkSJ
         k7gunI1aJ7P9blIqdoPyLFxDe4t37SZuGgI5RLdeWapbaHbLAC222yvkylT+y7D3EZ4F
         XotQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=j8YDzfjT;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=D+mlv+y+;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id o19si135351wme.2.2021.12.06.14.51.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:48 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211206210749.117395027@linutronix.de>
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
Subject: [patch V2 28/31] genirq/msi: Mop up old interfaces
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:47 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=j8YDzfjT;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=D+mlv+y+;
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

Get rid of the old iterators, alloc/free functions and adjust the core code
accordingly.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |   15 ---------------
 kernel/irq/msi.c    |   31 +++++++++++++++----------------
 2 files changed, 15 insertions(+), 31 deletions(-)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -214,15 +214,7 @@ struct msi_desc *msi_next_desc(struct de
 	for ((desc) = msi_first_desc((dev), (filter)); (desc);	\
 	     (desc) = msi_next_desc((dev), (filter)))
 
-/* Helpers to hide struct msi_desc implementation details */
 #define msi_desc_to_dev(desc)		((desc)->dev)
-#define dev_to_msi_list(dev)		(&(dev)->msi.data->list)
-#define first_msi_entry(dev)		\
-	list_first_entry(dev_to_msi_list((dev)), struct msi_desc, list)
-#define for_each_msi_entry(desc, dev)	\
-	list_for_each_entry((desc), dev_to_msi_list((dev)), list)
-#define for_each_msi_entry_safe(desc, tmp, dev)	\
-	list_for_each_entry_safe((desc), (tmp), dev_to_msi_list((dev)), list)
 
 #ifdef CONFIG_IRQ_MSI_IOMMU
 static inline const void *msi_desc_get_iommu_cookie(struct msi_desc *desc)
@@ -248,10 +240,6 @@ static inline void msi_desc_set_iommu_co
 #endif
 
 #ifdef CONFIG_PCI_MSI
-#define first_pci_msi_entry(pdev)	first_msi_entry(&(pdev)->dev)
-#define for_each_pci_msi_entry(desc, pdev)	\
-	for_each_msi_entry((desc), &(pdev)->dev)
-
 struct pci_dev *msi_desc_to_pci_dev(struct msi_desc *desc);
 void pci_write_msi_msg(unsigned int irq, struct msi_msg *msg);
 #else /* CONFIG_PCI_MSI */
@@ -273,9 +261,6 @@ static inline void msi_free_msi_descs(st
 	msi_free_msi_descs_range(dev, MSI_DESC_ALL, 0, MSI_MAX_INDEX);
 }
 
-struct msi_desc *alloc_msi_entry(struct device *dev, int nvec,
-				 const struct irq_affinity_desc *affinity);
-void free_msi_entry(struct msi_desc *entry);
 void __pci_read_msi_msg(struct msi_desc *entry, struct msi_msg *msg);
 void __pci_write_msi_msg(struct msi_desc *entry, struct msi_msg *msg);
 
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -19,8 +19,10 @@
 
 #include "internals.h"
 
+#define dev_to_msi_list(dev)	(&(dev)->msi.data->list)
+
 /**
- * alloc_msi_entry - Allocate an initialized msi_desc
+ * msi_alloc_desc - Allocate an initialized msi_desc
  * @dev:	Pointer to the device for which this is allocated
  * @nvec:	The number of vectors used in this entry
  * @affinity:	Optional pointer to an affinity mask array size of @nvec
@@ -30,12 +32,11 @@
  *
  * Return: pointer to allocated &msi_desc on success or %NULL on failure
  */
-struct msi_desc *alloc_msi_entry(struct device *dev, int nvec,
-				 const struct irq_affinity_desc *affinity)
+static struct msi_desc *msi_alloc_desc(struct device *dev, int nvec,
+					const struct irq_affinity_desc *affinity)
 {
-	struct msi_desc *desc;
+	struct msi_desc *desc = kzalloc(sizeof(*desc), GFP_KERNEL);
 
-	desc = kzalloc(sizeof(*desc), GFP_KERNEL);
 	if (!desc)
 		return NULL;
 
@@ -43,21 +44,19 @@ struct msi_desc *alloc_msi_entry(struct
 	desc->dev = dev;
 	desc->nvec_used = nvec;
 	if (affinity) {
-		desc->affinity = kmemdup(affinity,
-			nvec * sizeof(*desc->affinity), GFP_KERNEL);
+		desc->affinity = kmemdup(affinity, nvec * sizeof(*desc->affinity), GFP_KERNEL);
 		if (!desc->affinity) {
 			kfree(desc);
 			return NULL;
 		}
 	}
-
 	return desc;
 }
 
-void free_msi_entry(struct msi_desc *entry)
+static void msi_free_desc(struct msi_desc *desc)
 {
-	kfree(entry->affinity);
-	kfree(entry);
+	kfree(desc->affinity);
+	kfree(desc);
 }
 
 /**
@@ -73,7 +72,7 @@ int msi_add_msi_desc(struct device *dev,
 
 	lockdep_assert_held(&dev->msi.data->mutex);
 
-	desc = alloc_msi_entry(dev, init_desc->nvec_used, init_desc->affinity);
+	desc = msi_alloc_desc(dev, init_desc->nvec_used, init_desc->affinity);
 	if (!desc)
 		return -ENOMEM;
 
@@ -102,7 +101,7 @@ static int msi_add_simple_msi_descs(stru
 	lockdep_assert_held(&dev->msi.data->mutex);
 
 	for (i = 0; i < ndesc; i++) {
-		desc = alloc_msi_entry(dev, 1, NULL);
+		desc = msi_alloc_desc(dev, 1, NULL);
 		if (!desc)
 			goto fail;
 		desc->msi_index = index + i;
@@ -114,7 +113,7 @@ static int msi_add_simple_msi_descs(stru
 fail:
 	list_for_each_entry_safe(desc, tmp, &list, list) {
 		list_del(&desc->list);
-		free_msi_entry(desc);
+		msi_free_desc(desc);
 	}
 	return -ENOMEM;
 }
@@ -141,7 +140,7 @@ void msi_free_msi_descs_range(struct dev
 		if (desc->msi_index < first_index || desc->msi_index > last_index)
 			continue;
 		list_del(&desc->list);
-		free_msi_entry(desc);
+		msi_free_desc(desc);
 	}
 }
 
@@ -762,7 +761,7 @@ int msi_domain_populate_irqs(struct irq_
 
 	msi_lock_descs(dev);
 	for (virq = virq_base; virq < virq_base + nvec; virq++) {
-		desc = alloc_msi_entry(dev, 1, NULL);
+		desc = msi_alloc_desc(dev, 1, NULL);
 		if (!desc) {
 			ret = -ENOMEM;
 			goto fail;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210749.117395027%40linutronix.de.

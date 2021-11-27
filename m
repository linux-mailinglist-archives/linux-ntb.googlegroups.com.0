Return-Path: <linux-ntb+bncBDAMN6NI5EERBQERQ2GQMGQEH7E5K4Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE6D45F988
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:17 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id r13-20020a0562140c8d00b003bde7a2b8e2sf11972848qvr.6
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976256; cv=pass;
        d=google.com; s=arc-20160816;
        b=H3MKuc3WqOTQO5Pf1YSN+rrFiU2zbcbVceYyAeekz6nyjtT7PD6v0U/oZD8Sx3zEnt
         o0ec+IiK1ICl3qb8eEhV/JilxvP6Zmj9cOPkcItphvhhnBCUQXskb2IpYyFqJ6LUOtts
         0/Ll0WcLen+opzoCtvD3LGVkZE6VPGzu4IV8Bru1OVsDBFD5wUbT4K8XnA68XbQT7uF9
         UCVg0hPoy6EoNAc241polDac8/Zx+Ai2U/zcPCY43YgUOmmRlWCZruUp7nB5g2XjLcFr
         kDyW8fDRff73MBYCdSNbWsSwiUQopqjnWfCXznFx13lYsqs1AGjwEe3uril6grGU+o7F
         pMXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=gyzbDmoQO5Kh41R0ILxlUTwet8joJdFswF81t7cYjZw=;
        b=NJpg1yRhpCB1IWHfoshkpakwbnxl/CHwEI+/TjiHsJOWunbR99f4kDcBF8Eui+FLxF
         NAVyDponpzqO50nvcLH15ujkA/ys4YjGre90c2qa6UAdh4ySE2NVUqtVaOezZPw1NYxI
         0e7R7mQDsTGgNtijlw+bh7eZw25rFsCZVJoa/OkhL2dHK049LD6c3isH0NWcGichspgx
         jcRdQRZFzPZs2mi8mGQAsTQykAkpnk0CHx8DlHJ24B8eSMd7zAm1YfRWtfkEBAHBmjjg
         UZ1g6I61WYq3BLA8MhWO8Om7f7IGbsmEOKp/X1b9JZS+zIkL1N4ZN6rlxEV7CUA0qSmx
         +BOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="Nr/v8cXM";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=WeCfUtaA;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gyzbDmoQO5Kh41R0ILxlUTwet8joJdFswF81t7cYjZw=;
        b=N7wM8rCXoaPDUhhcONzeUj2A5y015M7iRmb3VBfhipeXpwETFdTq7ueBWvnCw5xtVU
         Ebsivo8w6718DLpUya0Dq/krihgESELMzTgJNy1gOfuwd7hoIkQ3rcw7pg6PwdMJb+mP
         akhv+cWI8EHEFEgOuaZ+eMPUYBFahEQDuVekh5NCQe3ozbLJW9X+9jxHBkjxSNsS2/hm
         LJcl9J1oIs3cWZHJXscURA892XaYHuSzurKXaMc0aMcCYNIpVHf14/aW+dVJn0VTQ0yl
         0K1EuX4ykrLm5Vos3QIM0JB6YgSsiG7kH47B+fgBoUut/Wqk0sZOkk4UIJAb69ij98ed
         9UhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gyzbDmoQO5Kh41R0ILxlUTwet8joJdFswF81t7cYjZw=;
        b=7p+zqn0gNxf9HZUZYolHtm/G/GHKcEhz09QTaQ7tvd1KtLe/MFCGJ57fh8SxSSJHtv
         huswLfLpARUjJL1mV1B4LJwk70eavhvZ1/8+yQTtYLnyAmGvNArnN7orZcVvMX8Iaw/r
         3tEToZbI8b6MkVkem9/O3UJSQqVmB5cG7ecJ/ztBxJVC6JgsfYn8v0CQGN3H8JLWlL7s
         7yif9mNmt3wjM1jfPngPz6tyMMROGAu4egGJsfvQkKIhljbvFMu82IQ1j3o20rnzKro9
         KAnAhKpopyzW/CirYk0ty+RiQ7ZTA/cSe2ZpdtoO9HExVVV8eEzVeEWSHSLrjeRkC5o7
         aEIQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5327Bfz3I8maSgV8j4+dM1+t2HrPaYLCb19CfHrL5Z+9TvsQ8MyX
	ZuMOvgUxeYNbYuUsSH0zmK0=
X-Google-Smtp-Source: ABdhPJz78msyrBP7O4hB8lDYE28p1HI5xaHV6ozZ/C1hi9CKIL7bsRKBORCEGp02sr43R2jWfZYXGg==
X-Received: by 2002:ae9:e905:: with SMTP id x5mr25870567qkf.468.1637976256699;
        Fri, 26 Nov 2021 17:24:16 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:e34c:: with SMTP id a12ls3029213qvm.2.gmail; Fri, 26 Nov
 2021 17:24:16 -0800 (PST)
X-Received: by 2002:a05:6214:27ee:: with SMTP id jt14mr16196665qvb.112.1637976256317;
        Fri, 26 Nov 2021 17:24:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976256; cv=none;
        d=google.com; s=arc-20160816;
        b=Zp6mg4JyBBwwahUORuxkKgAltdiHrsPtOipeVRqBuibTdCTMVV3HFKRTV++QktxdvY
         hm4yvUppQNmlZmUx+llTU2wsxEYOVqQj46XjUiaxDUZ+VhZDv6boTg5YVOxIJwDBchQ6
         doxvGk/9XQtkw7aF63cjEieWSWSuwZyOa3zuD/F0nkJjiBw5oJSNwxsAR5aCNMDehsAs
         RMZtYx0MkmHFGqKaaDoXUBUOMOSf4MtvFwb56XBP3PgtaIagJqHmKRNLKV8NeJ7s9VRN
         5X1zP3lwRP5yEvRt1vZvLZMO9PRr1cynVCYqur98gw3tGMixsw3B8jgZCWyDQUz+R5f8
         srMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=euBPx94YXqL9tbrX7AhRmxA+Sq6PMX/F5CZP7vo89bw=;
        b=S16jl+PrjfdFER9H2+ih017jZKsza2vO14vbnr2362bG65/Ypvx1b2dq4QDj4LKqzU
         PmK8PrtGxsBQh/NPI5FniqYs3iwfZINoN+Vya7kMY2HnZYsCEbhstJSlvxlpC31iAdDM
         1aVBme+pP/Ry+077gDFw55OUuXNsDH1HO06xJ5HeP57UcsX4DzQKMUZQvD3CGmLIvIv6
         Wu0yWRK1+C9nKFH0fTkrCr3faZwA/vXmUtTY1PHqghyxYdGNmB7dGoWRjDDOaKMd4YU/
         63b68nBQhLoAc5qb7bEObvfJNZnixt772qIBzVOgV3mqTIH6WYhtgrG1CHmgaFFfMOwp
         FHfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="Nr/v8cXM";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=WeCfUtaA;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i6si1270663qko.3.2021.11.26.17.24.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:16 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232736.024070925@linutronix.de>
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
Subject: [patch 29/32] genirq/msi: Mop up old interfaces
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:13 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="Nr/v8cXM";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=WeCfUtaA;
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
@@ -254,15 +254,7 @@ static inline struct msi_desc *msi_first
 #define msi_for_each_desc(desc, dev, filter)				\
 	msi_for_each_desc_from(desc, dev, filter, 0)
 
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
@@ -288,10 +280,6 @@ static inline void msi_desc_set_iommu_co
 #endif
 
 #ifdef CONFIG_PCI_MSI
-#define first_pci_msi_entry(pdev)	first_msi_entry(&(pdev)->dev)
-#define for_each_pci_msi_entry(desc, pdev)	\
-	for_each_msi_entry((desc), &(pdev)->dev)
-
 struct pci_dev *msi_desc_to_pci_dev(struct msi_desc *desc);
 void pci_write_msi_msg(unsigned int irq, struct msi_msg *msg);
 #else /* CONFIG_PCI_MSI */
@@ -314,9 +302,6 @@ static inline void msi_free_msi_descs(st
 	msi_free_msi_descs_range(dev, MSI_DESC_ALL, 0, UINT_MAX);
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
 
@@ -103,7 +102,7 @@ int msi_add_simple_msi_descs(struct devi
 	lockdep_assert_held(&dev->msi.data->mutex);
 
 	for (i = 0; i < ndesc; i++) {
-		desc = alloc_msi_entry(dev, 1, NULL);
+		desc = msi_alloc_desc(dev, 1, NULL);
 		if (!desc)
 			goto fail;
 		desc->msi_index = index + i;
@@ -116,7 +115,7 @@ int msi_add_simple_msi_descs(struct devi
 fail:
 	list_for_each_entry_safe(desc, tmp, &list, list) {
 		list_del(&desc->list);
-		free_msi_entry(desc);
+		msi_free_desc(desc);
 	}
 	return -ENOMEM;
 }
@@ -143,7 +142,7 @@ void msi_free_msi_descs_range(struct dev
 		if (desc->msi_index < base_index || desc->msi_index >= base_index + ndesc)
 			continue;
 		list_del(&desc->list);
-		free_msi_entry(desc);
+		msi_free_desc(desc);
 		dev->msi.data->num_descs--;
 	}
 }
@@ -779,7 +778,7 @@ int msi_domain_populate_irqs(struct irq_
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232736.024070925%40linutronix.de.

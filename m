Return-Path: <linux-ntb+bncBDAMN6NI5EERBAURQ2GQMGQEGLIQ7UI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6127A45F902
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:15 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id q198-20020a25d9cf000000b005f7a6a84f9fsf12848102ybg.6
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976194; cv=pass;
        d=google.com; s=arc-20160816;
        b=YqKMEFpUZTSMdZhkc1bGf2EsLdtq4R2QKCDgagxo651UKBWzRVMDmy/2JGQA3T4XXA
         Px/DfsXffFNkiWvt7t6jtcYR4hBBnAHsOigC8fPdoBTQJn1Bai/lkfddmoBFh+rKLdDB
         V/PSVRNHlzAfQkCI91CBaKJymxFU0AJNIwHgCcTXE/hxeK/+seREQNZhOGGKuWk3PX/v
         z0Brbi2ndRHViMwwFLpuLKe9yJ2Jugt6e0qXm3J25094etekaa77s/BhMMpQ6nDaQFJx
         N++09bsKARlj3lUf+4MhF4UkUv6sZFEloz+kh0CrcqK8M8L9CEoFxfqWB/14F3p7SFu1
         rUfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=gyzbDmoQO5Kh41R0ILxlUTwet8joJdFswF81t7cYjZw=;
        b=0Ee9NP3UYni116xiaFw3as7CG2BF0QlVytSvPKS/u5rQsSQdpUITmyWpt/EH88kJPs
         4h55NTYWNtfbuzNzHPOhLfRABTrR6R1Z99S54Ce5Llz6MybmlWPyLzXq5RpTPodQ/Rx/
         uCryLFoIoXaS47FxoQ8tcenpejcdqXc3sGoqo29FOICZd2WMGH0rV8e1uGzdE4LOdt+q
         FQKYv2pHTGWDzrBHl9cINLcQXVu3M/+tXn79qS+iPk2iMNl4tdAJdEvSSQION2f53Pgt
         ufpU5QDYydrhF9SqBGnF/PVpZ6xzQoqvFH/zfaOXSnj149Xpt8WJ7ZA9XfN9WUXt+m6Z
         +Tug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gQbrv+Dp;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gyzbDmoQO5Kh41R0ILxlUTwet8joJdFswF81t7cYjZw=;
        b=bfFz4GUlN8+a783eh4QJSvnL6ZtWxXU4uzP5BL2fPGno81BhBK05tCnXim1I2COXmI
         eNINQ5AZp7l2m2EMsTiefd97hGN1W83cgHohuiJ3U2CfJQO7UPcZ+5hxnS6cEbt/CHQE
         pn+2vm+SElHnUGdadJufa93majkKnJMOs+WPXy8+AXu3PhrjtRUIW0jlkx9fAanSt0vD
         +pUimJF1rLUh5rUA7pHFT5n2tbEtHf/epslea938mto/LLFSfGjPtuB8Mv/kWLb9GpOf
         nYY6h/hs7mQ1BeDoCX6oWHtUp4mtFWVLpXqDghOPcVVrJ2QKPWZb2UKGbmIUcb1g/XUO
         FQ1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gyzbDmoQO5Kh41R0ILxlUTwet8joJdFswF81t7cYjZw=;
        b=KjEeOGb8NN2Kv3JRFYp/l9oF46JxCwtoaN0aMo0NEIoRCBpUMEv4D/FiNRYMxzxCMP
         Dey2rLE822T8vmSnU70e/hFynHTuWjb6mnfsqbS0GBDYd3B8AksIeeZIDUnCKR6OtTpy
         tUGIN/7VXdBKZRnVBylz1GfodFopHnctqWeo4Ck4t7cDJw1alo07ffYFo8bcyzXwvzzD
         71ZtIbtNSrgHMXSYyfLxmPig8uwaaTnFccl/qmCh01LYBv4/Jais6t/R4BAl/urv5Rn8
         DfwVJqxmPRc+K6hGSyZfDp01NtoHR8MkEQn5CTLOA391FujIMjH8sgWwrQxsLirS1EN4
         aSIQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532Z46F3Z0yPI6QcxT0kpZoQugnW6XxEsst27SOqdVNSetUHG+m5
	HPtLjBsXlregj9vfkkAhDEM=
X-Google-Smtp-Source: ABdhPJzv57NDrnyLteMrjZ0g+wK1ZNu1o2t2VufxOL6oCbQbIxvrvL8PNLt21Jw848T6/qefD3mcgw==
X-Received: by 2002:a25:ec07:: with SMTP id j7mr19304411ybh.313.1637976194536;
        Fri, 26 Nov 2021 17:23:14 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:6e41:: with SMTP id j62ls4627764ybc.3.gmail; Fri, 26 Nov
 2021 17:23:14 -0800 (PST)
X-Received: by 2002:a5b:c8d:: with SMTP id i13mr20296036ybq.354.1637976194166;
        Fri, 26 Nov 2021 17:23:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976194; cv=none;
        d=google.com; s=arc-20160816;
        b=m6paryq67n5fk3TxHdO77McJLgLUpjRKgac/HxrTY/zHRpm2zyLFI36QBy9Mu7pXyq
         bQKMzlGpNqtC8IA1k1zdYWFC1+CpORX9ieYk2loepiOjaIj6NS7vZmMCW8dm8o1PTFnM
         /I5hSDhhv/2+WbVWMQNr1wF9pjlajMv84w7vb6/7p7HBO+aPFGwFVCLh47enUwTw4HB8
         h4XHu+0qrzfTNcXjrwWYD+nzgi5Wruw2KUVkU6QoZ61we/7qIXnwfgkuxPw+Dtcb+jij
         /YRNnPAGsaXDb9Qvn60tkmLX0pAgSslucC9Xt3npCVvE4a3B5MZN0uZIsgs6Xn81w6hf
         +aEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=euBPx94YXqL9tbrX7AhRmxA+Sq6PMX/F5CZP7vo89bw=;
        b=mvUjLA+4I60GuAmlhsuEE7YB1ax84ytZTVmwGuUanFP1BY3pOSs1gWr98qtcEpno+l
         c5S98Kn2rjkuTOa3JPzNQW1kGj5VfvjqIFOepn8Mn8CUkjy8XbxE8MKe0rciNYJwjQcV
         48zuMtNaXJFWpfFdJXFnVnw/brRsmHFH6TGcA2hNVHMMCRSdd3td4dVcQ2a4/WXJ1DA0
         XZSZ6xWN/x2ORfjHCWFHS1yMMUzstlxJGRyUq6JyPqBkFtFxFMYr/WGhsUyUJ6ylgD0f
         k4ObROeWEBG3bYvFtkBr9liRiQZo7pdVBzsxaPCRQWsRh/5zS3cBQ69yBVCD8H+P9Rar
         5WKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=gQbrv+Dp;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id k1si738851ybp.1.2021.11.26.17.23.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:14 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:23:12 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=gQbrv+Dp;       dkim=neutral
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

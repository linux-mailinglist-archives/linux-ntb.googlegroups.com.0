Return-Path: <linux-ntb+bncBDAMN6NI5EERBRMRQ2GQMGQE74HDCAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 78C7745F98B
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:22 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id c131-20020a621c89000000b004a343484969sf6194963pfc.3
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976261; cv=pass;
        d=google.com; s=arc-20160816;
        b=pkyyJF2Oak3WcOC8TPqBqJAlPxKv+RgBugvCZTN94LnMzh2m37kxl2zx6XXzL9eVsP
         gGL36v+pRIRyU5pJksK93LAjDBXSoKvg/w1ovMsVLL+LJyzR9r62SgkfzQBU3FosWr/m
         9bHLiakIzUFes/3jjKJF1VDqMdMmZ2Qls52wLNrtnOv66meTaOXGLS+ZvG+llBXEJ7LB
         br6/EHsN+rleLCa9ciEtmXWjVaAen/PjN3StkBDJso3CBJxGCF+7UX+1UcqCCNTJB2SR
         H7pi7KqvfaJUkfD7Yd3g/Y5KVxi2I1JnXxTn701vNxvIRBMVC5yev/APJlotrInT9K1O
         ZGfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=SQX60VImJAOoY5lvtm8O2YzIr5CD729uKpYTYMTd76I=;
        b=HyG8E2ut/AEB6pknU50NGrUwfvcGNoitaYJfz1Sh+zOXfC4pxVpcgF+n6ycJCHtHmh
         dc79CtdUaJXwU1MvuTWAyWwtOdnKxgJBmFVVEjg1wb5ZVzS+97zXEg57ofXWJX0qIW3F
         nEG/HJZw8ySW155OolHUIySOT6tYDOzd5cBIo5CspMexVAozxMvtyHqD6z+AqVV/v2kP
         j+1a5aOozpWoJUTLrlirDxIAOgu5Q53+Nl85C61sOsWAuLPjqpU2EROsEvXddFoVb15E
         Ol8M8kET3pM4N2plxw8L+oaKPDsQYmRELyDmHCwYkiswppq2/sBiCDAG37r6NxXK7U9C
         iC8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Gfa5k+3E;
       dkim=neutral (no key) header.i=@linutronix.de header.b=mN71jLqI;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SQX60VImJAOoY5lvtm8O2YzIr5CD729uKpYTYMTd76I=;
        b=U3sAp0+PG3IhbEKvwykr5EhSojRRuRmnmlMgZoMVrtyZXjCIdCjftIAC21G7IQhsj3
         /irTPwD4MbLMMVqFSEcvdPQEn31F8y44ACNnNdZAugvKxwPe++2lE6btLm7ZSK7Q9jP2
         3eY8PN8TsBXfHpYcsjAGrNwVI1qW0l5cc4JBHCHlFTfPkA+9nb22oqGX8dNdIpPZaTe7
         kimVApGuOv9J1J17OTwSK++Gt61YdMR3UT3R5WNaPSRSBVNtF/xyywRARtsNEIrPCoaf
         gKI54C3dIY59G9Gs0dLU9ch0EG9Uz6hXIoxG3yUr75vmLdEJD3FEuYLrsvmHKo6ZPF6Y
         +x0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SQX60VImJAOoY5lvtm8O2YzIr5CD729uKpYTYMTd76I=;
        b=As41Jv+cuSy22lrdEP95an++JVIjuO72gKrIu0sq/GX4eI2vIA+QkIff4IGBQgs9X0
         Hf79Wa+LcH+GlqbPdT0ILrWv9U3hZ5KnzC5/QEnAL2asJQS1Be5LSaU0RHPRFUiLBJww
         1BnzjqFA7oOqBB/dzwPXDU+fvOR8wnaQbNfvUdMhrROF/K1wTuZtedJrx7aqumQ+e9vR
         F8OX8VN0ylloICqmHKeWzUnmGsPlGWo0GtNQmsDFmYS9v2y6OhwKRZqtXD0xbDQjBS+t
         uRZZbALHfo8xEeUu0y+Q5jz6GywLK5H0bIERoAGEtoMD5143ZVmmKlUPEDZjefZH5K/m
         DfzQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533p5bnnH7yIJkGFCz1LHz1V3T88goVZyMAzknHfdgBhBvaKgwwd
	gkSzLJKNcRhCGsZI+P/HQ5s=
X-Google-Smtp-Source: ABdhPJw97lngGIc3jrNc0HRGwKO1dqXAfOKStlKzlklM3elp0hDE12xyhM7ZrNgWoH8Dh+6hsVSjEw==
X-Received: by 2002:a62:e508:0:b0:4a4:f06f:1cd9 with SMTP id n8-20020a62e508000000b004a4f06f1cd9mr24686145pff.21.1637976261198;
        Fri, 26 Nov 2021 17:24:21 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:d50e:: with SMTP id b14ls4153882plg.7.gmail; Fri, 26
 Nov 2021 17:24:20 -0800 (PST)
X-Received: by 2002:a17:90a:2ec8:: with SMTP id h8mr19124808pjs.168.1637976260688;
        Fri, 26 Nov 2021 17:24:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976260; cv=none;
        d=google.com; s=arc-20160816;
        b=JvU/zuLT8iAyU8HCZNhho07PkDf+0XHakVvyhdKeXot+NlAGn01HNpHqUPKtlvDdgx
         XWmCnoY8BoQmZ31WRRBapqApZxczGNazkbBWS0Lr8jW6d/x8xlx1fpjGjJ4Zr4CT4Kjk
         iohjm5FRYpG4Y3AgQy7z8nb+UDtToL+TS8BBI6JAaJYNXznL2fdC3yaTYynQA2ew3dTZ
         NqIYMlvdUHpcYkEHMQdp2WjflSBlZZ22+n+s6wZjuCT3jheuoqJuJU1lnA2jvYZaNSD2
         RqCtG9PdSyU4UNDn0xTvYF/33Llzby4ivskk3efZAXyxqdy2u4ZOxlo0UZj/9Y/JIRNl
         ILpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=PFuyUtIKHszvU7gtDYULmf7Bd4K09pORQBH8HusBKz0=;
        b=nWYbALyXANN3Y/etSUIgBnNoi0veyiOVp8ynxXvcei6iTW9dnvIm9c2wxFR8JVVuo6
         DLlzB48BlaPxlAIXAiWlcpwjIkqXeyyYwaKT05qjdyeptLG06UMagi9kb4KnnYdRmUec
         ncvl4mQ+cFFoutQ+iZGi66BJrT3k1kUYUWybA3JspQZpmzbUsahAxvGYbIfHALSgZF/y
         HdAS0HAx7RhiQlHvkCwKElBzpilLX3fjDmTWUXUK2NNH+xOQgE+obQaKIcnqZBafuNUu
         6lRCyrEoMfBPwvazTm09mLysE+oxBrE27SvqAntm/kUApGCnEKjLD+y9x9rB0zM3QN6R
         1wTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Gfa5k+3E;
       dkim=neutral (no key) header.i=@linutronix.de header.b=mN71jLqI;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id l5si781590pfc.2.2021.11.26.17.24.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:20 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232736.190744801@linutronix.de>
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
Subject: [patch 32/32] genirq/msi: Convert storage to xarray
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:18 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Gfa5k+3E;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=mN71jLqI;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

The current linked list storage for MSI descriptors is suboptimal in
several ways:

  1) Looking up a MSI desciptor requires a O(n) list walk in the worst case

  2) The upcoming support of runtime expansion of MSI-X vectors would need
     to do a full list walk to figure out whether a particular index is
     already associated.

  3) Runtime expansion of sparse allocations is even more complex as the
     current implementation assumes an ordered list (increasing MSI index).

Use an xarray which solves all of the above problems nicely.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |   19 ++---
 kernel/irq/msi.c    |  188 ++++++++++++++++++++++------------------------------
 2 files changed, 90 insertions(+), 117 deletions(-)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -17,6 +17,7 @@
  */
 
 #include <linux/spinlock.h>
+#include <linux/xarray.h>
 #include <linux/mutex.h>
 #include <linux/list.h>
 #include <linux/bits.h>
@@ -122,7 +123,6 @@ struct pci_msi_desc {
 
 /**
  * struct msi_desc - Descriptor structure for MSI based interrupts
- * @list:	List head for management
  * @irq:	The base interrupt number
  * @nvec_used:	The number of vectors used
  * @dev:	Pointer to the device which uses this descriptor
@@ -139,7 +139,6 @@ struct pci_msi_desc {
  */
 struct msi_desc {
 	/* Shared device/bus type independent data */
-	struct list_head		list;
 	unsigned int			irq;
 	unsigned int			nvec_used;
 	struct device			*dev;
@@ -177,20 +176,20 @@ enum msi_desc_filter {
  * @properties:		MSI properties which are interesting to drivers
  * @num_descs:		The number of allocated MSI descriptors for the device
  * @platform_data:	Platform-MSI specific data
- * @list:		List of MSI descriptors associated to the device
- * @mutex:		Mutex protecting the MSI list
- * @__next:		Cached pointer to the next entry for iterators
- * @__filter:		Cached descriptor filter
+ * @mutex:		Mutex protecting the MSI descriptor store
+ * @store:		Xarray for storing MSI descriptor pointers
+ * @__iter_idx:		Index to search the next entry for iterators
+ * @__iter_filter:	Cached descriptor filter
  */
 struct msi_device_data {
 	raw_spinlock_t			lock;
 	unsigned long			properties;
 	unsigned int			num_descs;
 	struct platform_msi_priv_data	*platform_data;
-	struct list_head		list;
 	struct mutex			mutex;
-	struct msi_desc			*__next;
-	enum msi_desc_filter		__filter;
+	struct xarray			store;
+	unsigned long			__iter_idx;
+	enum msi_desc_filter		__iter_filter;
 };
 
 int msi_setup_device_data(struct device *dev);
@@ -266,7 +265,7 @@ static inline struct msi_desc *msi_first
  * @dev:	struct device pointer - device to iterate
  * @filter:	Filter for descriptor selection
  *
- * See msi_for_each_desc_from()for further information.
+ * See msi_for_each_desc_from() for further information.
  */
 #define msi_for_each_desc(desc, dev, filter)				\
 	msi_for_each_desc_from(desc, dev, filter, 0)
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -20,7 +20,6 @@
 #include "internals.h"
 
 static inline int msi_sysfs_create_group(struct device *dev);
-#define dev_to_msi_list(dev)	(&(dev)->msi.data->list)
 
 /**
  * msi_alloc_desc - Allocate an initialized msi_desc
@@ -41,7 +40,6 @@ static struct msi_desc *msi_alloc_desc(s
 	if (!desc)
 		return NULL;
 
-	INIT_LIST_HEAD(&desc->list);
 	desc->dev = dev;
 	desc->nvec_used = nvec;
 	if (affinity) {
@@ -60,6 +58,19 @@ static void msi_free_desc(struct msi_des
 	kfree(desc);
 }
 
+static int msi_insert_desc(struct msi_device_data *md, struct msi_desc *desc, unsigned int index)
+{
+	int ret;
+
+	desc->msi_index = index;
+	ret = xa_insert(&md->store, index, desc, GFP_KERNEL);
+	if (!ret)
+		md->num_descs++;
+	else
+		msi_free_desc(desc);
+	return ret;
+}
+
 /**
  * msi_add_msi_desc - Allocate and initialize a MSI descriptor
  * @dev:	Pointer to the device for which the descriptor is allocated
@@ -77,13 +88,9 @@ int msi_add_msi_desc(struct device *dev,
 	if (!desc)
 		return -ENOMEM;
 
-	/* Copy the MSI index and type specific data to the new descriptor. */
-	desc->msi_index = init_desc->msi_index;
+	/* Copy type specific data to the new descriptor. */
 	desc->pci = init_desc->pci;
-
-	list_add_tail(&desc->list, &dev->msi.data->list);
-	dev->msi.data->num_descs++;
-	return 0;
+	return msi_insert_desc(dev->msi.data, desc, init_desc->msi_index);
 }
 
 /**
@@ -96,29 +103,41 @@ int msi_add_msi_desc(struct device *dev,
  */
 static int msi_add_simple_msi_descs(struct device *dev, unsigned int index, unsigned int ndesc)
 {
-	struct msi_desc *desc, *tmp;
-	LIST_HEAD(list);
-	unsigned int i;
+	struct msi_desc *desc;
+	unsigned long i;
+	int ret;
 
 	lockdep_assert_held(&dev->msi.data->mutex);
 
 	for (i = 0; i < ndesc; i++) {
 		desc = msi_alloc_desc(dev, 1, NULL);
 		if (!desc)
+			goto fail_mem;
+		ret = msi_insert_desc(dev->msi.data, desc, index + i);
+		if (ret)
 			goto fail;
-		desc->msi_index = index + i;
-		list_add_tail(&desc->list, &list);
 	}
-	list_splice_tail(&list, &dev->msi.data->list);
-	dev->msi.data->num_descs += ndesc;
 	return 0;
 
+fail_mem:
+	ret = -ENOMEM;
 fail:
-	list_for_each_entry_safe(desc, tmp, &list, list) {
-		list_del(&desc->list);
-		msi_free_desc(desc);
+	msi_free_msi_descs_range(dev, MSI_DESC_NOTASSOCIATED, index, ndesc);
+	return ret;
+}
+
+static bool msi_desc_match(struct msi_desc *desc, enum msi_desc_filter filter)
+{
+	switch (filter) {
+	case MSI_DESC_ALL:
+		return true;
+	case MSI_DESC_NOTASSOCIATED:
+		return !desc->irq;
+	case MSI_DESC_ASSOCIATED:
+		return !!desc->irq;
 	}
-	return -ENOMEM;
+	WARN_ON_ONCE(1);
+	return false;
 }
 
 /**
@@ -132,19 +151,16 @@ void msi_free_msi_descs_range(struct dev
 			      unsigned int base_index, unsigned int ndesc)
 {
 	struct msi_desc *desc;
+	unsigned long idx;
 
 	lockdep_assert_held(&dev->msi.data->mutex);
 
-	msi_for_each_desc(desc, dev, filter) {
-		/*
-		 * Stupid for now to handle MSI device domain until the
-		 * storage is switched over to an xarray.
-		 */
-		if (desc->msi_index < base_index || desc->msi_index >= base_index + ndesc)
-			continue;
-		list_del(&desc->list);
-		msi_free_desc(desc);
-		dev->msi.data->num_descs--;
+	xa_for_each_range(&dev->msi.data->store, idx, desc, base_index, base_index + ndesc - 1) {
+		if (msi_desc_match(desc, filter)) {
+			xa_erase(&dev->msi.data->store, idx);
+			msi_free_desc(desc);
+			dev->msi.data->num_descs--;
+		}
 	}
 }
 
@@ -192,7 +208,8 @@ static void msi_device_data_release(stru
 {
 	struct msi_device_data *md = res;
 
-	WARN_ON_ONCE(!list_empty(&md->list));
+	WARN_ON_ONCE(!xa_empty(&md->store));
+	xa_destroy(&md->store);
 	dev->msi.data = NULL;
 }
 
@@ -225,7 +242,7 @@ int msi_setup_device_data(struct device
 	}
 
 	raw_spin_lock_init(&md->lock);
-	INIT_LIST_HEAD(&md->list);
+	xa_init(&md->store);
 	mutex_init(&md->mutex);
 	dev->msi.data = md;
 	devres_add(dev, md);
@@ -252,38 +269,21 @@ void msi_unlock_descs(struct device *dev
 {
 	if (WARN_ON_ONCE(!dev->msi.data))
 		return;
-	/* Clear the next pointer which was cached by the iterator */
-	dev->msi.data->__next = NULL;
+	/* Invalidate the index wich was cached by the iterator */
+	dev->msi.data->__iter_idx = ULONG_MAX;
 	mutex_unlock(&dev->msi.data->mutex);
 }
 EXPORT_SYMBOL_GPL(msi_unlock_descs);
 
-static bool msi_desc_match(struct msi_desc *desc, enum msi_desc_filter filter)
-{
-	switch (filter) {
-	case MSI_DESC_ALL:
-		return true;
-	case MSI_DESC_NOTASSOCIATED:
-		return !desc->irq;
-	case MSI_DESC_ASSOCIATED:
-		return !!desc->irq;
-	}
-	WARN_ON_ONCE(1);
-	return false;
-}
-
-static struct msi_desc *msi_find_first_desc(struct device *dev, enum msi_desc_filter filter,
-					    unsigned int base_index)
+static struct msi_desc *msi_find_desc(struct msi_device_data *md)
 {
 	struct msi_desc *desc;
 
-	list_for_each_entry(desc, dev_to_msi_list(dev), list) {
-		if (desc->msi_index < base_index)
-			continue;
-		if (msi_desc_match(desc, filter))
-			return desc;
+	xa_for_each_start(&md->store, md->__iter_idx, desc, md->__iter_idx) {
+		if (msi_desc_match(desc, md->__iter_filter))
+			break;
 	}
-	return NULL;
+	return desc;
 }
 
 /**
@@ -301,43 +301,25 @@ static struct msi_desc *msi_find_first_d
 struct msi_desc *__msi_first_desc(struct device *dev, enum msi_desc_filter filter,
 				  unsigned int base_index)
 {
-	struct msi_desc *desc;
+	struct msi_device_data *md = dev->msi.data;
 
-	if (WARN_ON_ONCE(!dev->msi.data))
+	if (WARN_ON_ONCE(!md))
 		return NULL;
 
-	lockdep_assert_held(&dev->msi.data->mutex);
+	lockdep_assert_held(&md->mutex);
 
-	/* Invalidate a previous invocation within the same lock section */
-	dev->msi.data->__next = NULL;
-
-	desc = msi_find_first_desc(dev, filter, base_index);
-	if (desc) {
-		dev->msi.data->__next = list_next_entry(desc, list);
-		dev->msi.data->__filter = filter;
-	}
-	return desc;
+	md->__iter_filter = filter;
+	md->__iter_idx = base_index;
+	return msi_find_desc(md);
 }
 EXPORT_SYMBOL_GPL(__msi_first_desc);
 
-static struct msi_desc *__msi_next_desc(struct device *dev, enum msi_desc_filter filter,
-					struct msi_desc *from)
-{
-	struct msi_desc *desc = from;
-
-	list_for_each_entry_from(desc, dev_to_msi_list(dev), list) {
-		if (msi_desc_match(desc, filter))
-			return desc;
-	}
-	return NULL;
-}
-
 /**
  * msi_next_desc - Get the next MSI descriptor of a device
  * @dev:	Device to operate on
  *
  * The first invocation of msi_next_desc() has to be preceeded by a
- * successful incovation of __msi_first_desc(). Consecutive invocations are
+ * successful invocation of __msi_first_desc(). Consecutive invocations are
  * only valid if the previous one was successful. All these operations have
  * to be done within the same MSI mutex held region.
  *
@@ -346,20 +328,18 @@ static struct msi_desc *__msi_next_desc(
  */
 struct msi_desc *msi_next_desc(struct device *dev)
 {
-	struct msi_device_data *data = dev->msi.data;
-	struct msi_desc *desc;
+	struct msi_device_data *md = dev->msi.data;
 
-	if (WARN_ON_ONCE(!data))
+	if (WARN_ON_ONCE(!md))
 		return NULL;
 
-	lockdep_assert_held(&data->mutex);
+	lockdep_assert_held(&md->mutex);
 
-	if (!data->__next)
+	if (md->__iter_idx == ULONG_MAX)
 		return NULL;
 
-	desc = __msi_next_desc(dev, data->__filter, data->__next);
-	dev->msi.data->__next = desc ? list_next_entry(desc, list) : NULL;
-	return desc;
+	md->__iter_idx++;
+	return msi_find_desc(md);
 }
 EXPORT_SYMBOL_GPL(msi_next_desc);
 
@@ -384,21 +364,18 @@ int __msi_get_virq(struct device *dev, u
 	pcimsi = msi_device_has_property(dev, MSI_PROP_PCI_MSI);
 
 	msi_lock_descs(dev);
-	msi_for_each_desc_from(desc, dev, MSI_DESC_ASSOCIATED, index) {
-		/* PCI-MSI has only one descriptor for multiple interrupts. */
-		if (pcimsi) {
-			if (index < desc->nvec_used)
-				ret = desc->irq + index;
-			break;
-		}
-
+	desc = xa_load(&dev->msi.data->store, pcimsi ? 0 : index);
+	if (desc && desc->irq) {
 		/*
+		 * PCI-MSI has only one descriptor for multiple interrupts.
 		 * PCI-MSIX and platform MSI use a descriptor per
 		 * interrupt.
 		 */
-		if (desc->msi_index == index) {
+		if (pcimsi) {
+			if (index < desc->nvec_used)
+				ret = desc->irq + index;
+		} else {
 			ret = desc->irq;
-			break;
 		}
 	}
 	msi_unlock_descs(dev);
@@ -779,17 +756,13 @@ int msi_domain_populate_irqs(struct irq_
 	int ret, virq;
 
 	msi_lock_descs(dev);
-	for (virq = virq_base; virq < virq_base + nvec; virq++) {
-		desc = msi_alloc_desc(dev, 1, NULL);
-		if (!desc) {
-			ret = -ENOMEM;
-			goto fail;
-		}
+	ret = msi_add_simple_msi_descs(dev, virq_base, nvec);
+	if (ret)
+		goto unlock;
 
-		desc->msi_index = virq;
+	for (virq = virq_base; virq < virq_base + nvec; virq++) {
+		desc = xa_load(&dev->msi.data->store, virq);
 		desc->irq = virq;
-		list_add_tail(&desc->list, &dev->msi.data->list);
-		dev->msi.data->num_descs++;
 
 		ops->set_desc(arg, desc);
 		ret = irq_domain_alloc_irqs_hierarchy(domain, virq, 1, arg);
@@ -805,6 +778,7 @@ int msi_domain_populate_irqs(struct irq_
 	for (--virq; virq >= virq_base; virq--)
 		irq_domain_free_irqs_common(domain, virq, 1);
 	msi_free_msi_descs_range(dev, MSI_DESC_ALL, virq_base, nvec);
+unlock:
 	msi_unlock_descs(dev);
 	return ret;
 }

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232736.190744801%40linutronix.de.

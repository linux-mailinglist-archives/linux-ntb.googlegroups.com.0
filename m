Return-Path: <linux-ntb+bncBDAMN6NI5EERBCVIXKGQMGQEPCL5TUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id A369D46AD6C
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:54 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id 83-20020a2e0556000000b00218db3260bdsf3890515ljf.9
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831114; cv=pass;
        d=google.com; s=arc-20160816;
        b=cuVC2ye2zWkzTHBWBFvE0gI5HfxelnddL0X1RWHcJ5OWWpvFHfmxPg+gMvDAdLn8s/
         OIJYRi1J093U4J05y8k4jl32v8Ubqxw0jo27AstUTTLFOTFD7qpqg0MN03mZ8sw8Ho4D
         EMVCGVpcv3vT7Rl7g+SVFqQ6+R1uHvoIe/ISbz1YkbA3y28hqrkvfI4cV3Hk/8NAjOVh
         YErobh1LLRdUkgU3AVDctB6n0ZgQ0dtxqipjTZFmmuWKwoXGgCDws+hLl1U6SDK1e74O
         AI/6zL4km3FrYTx8f89NI8vX8qMp96MPjmy2n9cgV15RP/FiSRyEEIJBdxHdvWbq9ndi
         4BRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=52PuWoUHJo/8ekmGMM6LB70XTOCSD/XQiwB7e9JA7Tk=;
        b=ThFJDAEcwGrSXGd1GDZ1vumT1sRQYe/svTA6fSDpHgW8Q98EJdrwfA8CVvutoJfMDJ
         zufc97do5g0Kt9D7KwetsCPUtISnPcyt3PxpD1+QD0Bvhtcpyt0N6U9Twec3sFfQ4sVs
         qd43H6vI+dl2ElFAi2ebsA4qkrOFO/YQ+bYoBIm1oN4hjbXlWvLOf6I5eCz3+RHxo9R6
         a5s7HAxhJTrbR/fK2J5Dtv/2lhjduMVOEb2SMsTMsvFzAzBBsrvoXFUHRE4QTDOCLIq8
         xG+c5oai5S6XN1Golk5SqoM+FRL6ozUs2BbYB/XogUXYiSp4vUVfYgqEyYqYIg4dU/BB
         P3MQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=FqX6BU6X;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=l0xw52Vd;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=52PuWoUHJo/8ekmGMM6LB70XTOCSD/XQiwB7e9JA7Tk=;
        b=jzAZj0dnluei9re/+jADYIEqg+gMLPhQHr96uSnzlkES9V6pN+QoO17DzpVTrSDm13
         cJ5o4qdDja6DFfGblX+4Z/dJHlgT850N5Xpi/Jzw0fekhajCvR3qAjUWEyRxOf8w7wKC
         IVNI5T719g7G24vL3sa8T25t6UzssBjgSNL1NmrKWgTv/uBbgXu91Vdw/Z3jmHA0L6qF
         blqqdzrkhZfwM0mZYguH4XXT3hr01f0N3HkYKwMLBgt4T2skRo6/hwDQsG0EeecRLJK9
         RqHdVkGdRMNkDy8ESynaezpEAfYgE/nnZ7GPiYItzjrMQka1AzgYkzvssJnt5pu/erKH
         3txQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=52PuWoUHJo/8ekmGMM6LB70XTOCSD/XQiwB7e9JA7Tk=;
        b=vhx/up/u0eA4hyzPFuMXKXODgnfo++8O7kNwndgQhA1+MH9mZ2NGMhuWmbzpouZjFU
         NiFfzEWnh53cyLXAQfmMI+IN9bLiGST/r1Twc+tlD3ZxR67IdMBzsyM7X9yH8koFU2AC
         +7LR3gCmb0So004mhZbdMiib0BmUqWLiZXOFtfH1MLC2WLp6C1p7kw0ImJHQy0lG/2NT
         JRnBW+PDcQVFsEjFRvOcdaKtLZaK5bQ4GB6KUCwoBd/T5GfJkRc1ZM/0pI29qBSrGwii
         rGu+v7Wazd+EMP5CbwQ5rL28ujXQA7zJz+O4bKVI9Dd6Jyxfu8ldj9tgUPhSrZLRu0tY
         h/RQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5333hmw4JhMXmzG2dtQ+c4KMT/VpByEjdE/mEb5SKCZ9VKEDRfKf
	13Gklcr04Ujose8mzen/frc=
X-Google-Smtp-Source: ABdhPJzaqzbM9hA7a0gYsWvN8AYBpgW7F50NbP83AMds2d4Gv7Ff49Zr9ox/Voi8+SIlrgKM+IXVrw==
X-Received: by 2002:a05:6512:3f0c:: with SMTP id y12mr29266519lfa.579.1638831114172;
        Mon, 06 Dec 2021 14:51:54 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:a7c4:: with SMTP id x4ls2842029ljp.8.gmail; Mon, 06 Dec
 2021 14:51:53 -0800 (PST)
X-Received: by 2002:a05:651c:1548:: with SMTP id y8mr39197352ljp.481.1638831113329;
        Mon, 06 Dec 2021 14:51:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831113; cv=none;
        d=google.com; s=arc-20160816;
        b=TLTZK0qWqhj1K+IZMBynVkaozp45T+HAeWyCZipgNUIMkhzMwgDk/GbZ7peDLhFwms
         5Q/r5cWR5JLYpSQLAFFFK9giQ3ajbp5fD9lpZX6Q3Gz6623TBfAxIDo6JS864KwbKW1O
         ANPrTONRtmUiPj6QO+a4k5UuN1nZdWpPuFCzkXH3AbJG2L4KGVawTmnVyyMGLXHYW2QB
         UIZ8ACtEvEOwmhEeCT5PfiaBJvfLiTxdjU3d7JtOFd99eFxdtFNbEVY2/vvFy7W2jDhW
         Am2Ze94MN5kQbtgr4hohvEi7dtiD+nvpA3CD+YVN9UqyyXAHh4odWSrJJFvocbOZ+hYz
         Bx0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=MQ7ozWUaiArEmhCoyQn/2rQh7u+RDFLg8h0eBaFBoeM=;
        b=i+RpT0IbuoamN4AYpLNGKx8eFeVQUg1UClH/5iKxDtNqdbcEt2CsFUxhKKiY8lDv3G
         eaqVRWsbqLFdy06OpVtuF5c0HXniRIeQcaqbj0UVP236xLSJWI8bdak1eg8KyN301Bqt
         U11mADpqv0oZ40QDD4GY+wYVmigwZ7FWm1VzcXZtAl3AZeQ9Yrnhoahac5l5RIKUM4Vb
         LJym5ZZRNtexMGjOwbInrCrsho/2Q7n1050KREpL7QZ42iWUiNU+sLWIRNQ9QYkSeAdn
         VsL+2HgAR2QKGU/p8T5ti2p2siOLkMXL/RRCSsPTgtiF/tMdjuCkgEHmBJM48JN4D7iG
         nUVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=FqX6BU6X;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=l0xw52Vd;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id c15si867178lfv.8.2021.12.06.14.51.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:53 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210749.280627070@linutronix.de>
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
Subject: [patch V2 31/31] genirq/msi: Convert storage to xarray
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:52 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=FqX6BU6X;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=l0xw52Vd;
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
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 include/linux/msi.h |   13 +---
 kernel/irq/msi.c    |  169 +++++++++++++++++++++++-----------------------------
 2 files changed, 83 insertions(+), 99 deletions(-)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -17,6 +17,7 @@
  */
 
 #include <linux/cpumask.h>
+#include <linux/xarray.h>
 #include <linux/mutex.h>
 #include <linux/list.h>
 #include <linux/bits.h>
@@ -124,7 +125,6 @@ struct pci_msi_desc {
 
 /**
  * struct msi_desc - Descriptor structure for MSI based interrupts
- * @list:	List head for management
  * @irq:	The base interrupt number
  * @nvec_used:	The number of vectors used
  * @dev:	Pointer to the device which uses this descriptor
@@ -141,7 +141,6 @@ struct pci_msi_desc {
  */
 struct msi_desc {
 	/* Shared device/bus type independent data */
-	struct list_head		list;
 	unsigned int			irq;
 	unsigned int			nvec_used;
 	struct device			*dev;
@@ -177,16 +176,16 @@ enum msi_desc_filter {
  * msi_device_data - MSI per device data
  * @properties:		MSI properties which are interesting to drivers
  * @platform_data:	Platform-MSI specific data
- * @list:		List of MSI descriptors associated to the device
- * @mutex:		Mutex protecting the MSI list
- * @__next:		Cached pointer to the next entry for iterators
+ * @mutex:		Mutex protecting the MSI descriptor store
+ * @__store:		Xarray for storing MSI descriptor pointers
+ * @__iter_idx:		Index to search the next entry for iterators
  */
 struct msi_device_data {
 	unsigned long			properties;
 	struct platform_msi_priv_data	*platform_data;
-	struct list_head		list;
 	struct mutex			mutex;
-	struct msi_desc			*__next;
+	struct xarray			__store;
+	unsigned long			__iter_idx;
 };
 
 int msi_setup_device_data(struct device *dev);
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
@@ -60,6 +58,17 @@ static void msi_free_desc(struct msi_des
 	kfree(desc);
 }
 
+static int msi_insert_desc(struct msi_device_data *md, struct msi_desc *desc, unsigned int index)
+{
+	int ret;
+
+	desc->msi_index = index;
+	ret = xa_insert(&md->__store, index, desc, GFP_KERNEL);
+	if (ret)
+		msi_free_desc(desc);
+	return ret;
+}
+
 /**
  * msi_add_msi_desc - Allocate and initialize a MSI descriptor
  * @dev:	Pointer to the device for which the descriptor is allocated
@@ -77,12 +86,9 @@ int msi_add_msi_desc(struct device *dev,
 	if (!desc)
 		return -ENOMEM;
 
-	/* Copy the MSI index and type specific data to the new descriptor. */
-	desc->msi_index = init_desc->msi_index;
+	/* Copy type specific data to the new descriptor. */
 	desc->pci = init_desc->pci;
-
-	list_add_tail(&desc->list, &dev->msi.data->list);
-	return 0;
+	return msi_insert_desc(dev->msi.data, desc, init_desc->msi_index);
 }
 
 /**
@@ -95,28 +101,41 @@ int msi_add_msi_desc(struct device *dev,
  */
 static int msi_add_simple_msi_descs(struct device *dev, unsigned int index, unsigned int ndesc)
 {
-	struct msi_desc *desc, *tmp;
-	LIST_HEAD(list);
-	unsigned int i;
+	unsigned int idx, last = index + ndesc - 1;
+	struct msi_desc *desc;
+	int ret;
 
 	lockdep_assert_held(&dev->msi.data->mutex);
 
-	for (i = 0; i < ndesc; i++) {
+	for (idx = index; idx <= last; idx++) {
 		desc = msi_alloc_desc(dev, 1, NULL);
 		if (!desc)
+			goto fail_mem;
+		ret = msi_insert_desc(dev->msi.data, desc, idx);
+		if (ret)
 			goto fail;
-		desc->msi_index = index + i;
-		list_add_tail(&desc->list, &list);
 	}
-	list_splice_tail(&list, &dev->msi.data->list);
 	return 0;
 
+fail_mem:
+	ret = -ENOMEM;
 fail:
-	list_for_each_entry_safe(desc, tmp, &list, list) {
-		list_del(&desc->list);
-		msi_free_desc(desc);
+	msi_free_msi_descs_range(dev, MSI_DESC_NOTASSOCIATED, index, last);
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
@@ -141,19 +160,17 @@ void msi_device_set_properties(struct de
 void msi_free_msi_descs_range(struct device *dev, enum msi_desc_filter filter,
 			      unsigned int first_index, unsigned int last_index)
 {
+	struct xarray *xa = &dev->msi.data->__store;
 	struct msi_desc *desc;
+	unsigned long idx;
 
 	lockdep_assert_held(&dev->msi.data->mutex);
 
-	msi_for_each_desc(desc, dev, filter) {
-		/*
-		 * Stupid for now to handle MSI device domain until the
-		 * storage is switched over to an xarray.
-		 */
-		if (desc->msi_index < first_index || desc->msi_index > last_index)
-			continue;
-		list_del(&desc->list);
-		msi_free_desc(desc);
+	xa_for_each_range(xa, idx, desc, first_index, last_index) {
+		if (msi_desc_match(desc, filter)) {
+			xa_erase(xa, idx);
+			msi_free_desc(desc);
+		}
 	}
 }
 
@@ -186,7 +203,8 @@ static void msi_device_data_release(stru
 {
 	struct msi_device_data *md = res;
 
-	WARN_ON_ONCE(!list_empty(&md->list));
+	WARN_ON_ONCE(!xa_empty(&md->__store));
+	xa_destroy(&md->__store);
 	dev->msi.data = NULL;
 }
 
@@ -218,7 +236,7 @@ int msi_setup_device_data(struct device
 		return ret;
 	}
 
-	INIT_LIST_HEAD(&md->list);
+	xa_init(&md->__store);
 	mutex_init(&md->mutex);
 	dev->msi.data = md;
 	devres_add(dev, md);
@@ -245,34 +263,21 @@ void msi_unlock_descs(struct device *dev
 {
 	if (WARN_ON_ONCE(!dev->msi.data))
 		return;
-	/* Clear the next pointer which was cached by the iterator */
-	dev->msi.data->__next = NULL;
+	/* Invalidate the index wich was cached by the iterator */
+	dev->msi.data->__iter_idx = MSI_MAX_INDEX;
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
-static struct msi_desc *msi_find_first_desc(struct device *dev, enum msi_desc_filter filter)
+static struct msi_desc *msi_find_desc(struct msi_device_data *md, enum msi_desc_filter filter)
 {
 	struct msi_desc *desc;
 
-	list_for_each_entry(desc, dev_to_msi_list(dev), list) {
+	xa_for_each_start(&md->__store, md->__iter_idx, desc, md->__iter_idx) {
 		if (msi_desc_match(desc, filter))
 			return desc;
 	}
+	md->__iter_idx = MSI_MAX_INDEX;
 	return NULL;
 }
 
@@ -289,37 +294,24 @@ static struct msi_desc *msi_find_first_d
  */
 struct msi_desc *msi_first_desc(struct device *dev, enum msi_desc_filter filter)
 {
-	struct msi_desc *desc;
+	struct msi_device_data *md = dev->msi.data;
 
-	if (WARN_ON_ONCE(!dev->msi.data))
+	if (WARN_ON_ONCE(!md))
 		return NULL;
 
-	lockdep_assert_held(&dev->msi.data->mutex);
+	lockdep_assert_held(&md->mutex);
 
-	desc = msi_find_first_desc(dev, filter);
-	dev->msi.data->__next = desc ? list_next_entry(desc, list) : NULL;
-	return desc;
+	md->__iter_idx = 0;
+	return msi_find_desc(md, filter);
 }
 EXPORT_SYMBOL_GPL(msi_first_desc);
 
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
@@ -328,20 +320,18 @@ static struct msi_desc *__msi_next_desc(
  */
 struct msi_desc *msi_next_desc(struct device *dev, enum msi_desc_filter filter)
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
+	if (md->__iter_idx >= (unsigned long)MSI_MAX_INDEX)
 		return NULL;
 
-	desc = __msi_next_desc(dev, filter, data->__next);
-	dev->msi.data->__next = desc ? list_next_entry(desc, list) : NULL;
-	return desc;
+	md->__iter_idx++;
+	return msi_find_desc(md, filter);
 }
 EXPORT_SYMBOL_GPL(msi_next_desc);
 
@@ -364,21 +354,18 @@ unsigned int msi_get_virq(struct device
 	pcimsi = msi_device_has_property(dev, MSI_PROP_PCI_MSI);
 
 	msi_lock_descs(dev);
-	msi_for_each_desc(desc, dev, MSI_DESC_ASSOCIATED) {
-		/* PCI-MSI has only one descriptor for multiple interrupts. */
-		if (pcimsi) {
-			if (index < desc->nvec_used)
-				ret = desc->irq + index;
-			break;
-		}
-
+	desc = xa_load(&dev->msi.data->__store, pcimsi ? 0 : index);
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
@@ -759,16 +746,13 @@ int msi_domain_populate_irqs(struct irq_
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
+		desc = xa_load(&dev->msi.data->__store, virq);
 		desc->irq = virq;
-		list_add_tail(&desc->list, &dev->msi.data->list);
 
 		ops->set_desc(arg, desc);
 		ret = irq_domain_alloc_irqs_hierarchy(domain, virq, 1, arg);
@@ -784,6 +768,7 @@ int msi_domain_populate_irqs(struct irq_
 	for (--virq; virq >= virq_base; virq--)
 		irq_domain_free_irqs_common(domain, virq, 1);
 	msi_free_msi_descs_range(dev, MSI_DESC_ALL, virq_base, virq_base + nvec - 1);
+unlock:
 	msi_unlock_descs(dev);
 	return ret;
 }

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210749.280627070%40linutronix.de.

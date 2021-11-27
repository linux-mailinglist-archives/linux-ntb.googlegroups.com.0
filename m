Return-Path: <linux-ntb+bncBDAMN6NI5EERBB4RQ2GQMGQEZD6LC6I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 112CF45F90C
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:20 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id bk35-20020a05620a1a2300b0046d2a9b93dfsf7072908qkb.16
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976199; cv=pass;
        d=google.com; s=arc-20160816;
        b=E7jU0XJR4LkHmAdd2WiKslCq+8KMDngbQ+yK3lsPelzlsix1On/MXv5lN23ouUQWtZ
         6Zml/zxVOu1FlVzbb1sDOkAA9vsJJgoQTat5/KqL62ldn3rll6BKGhz3BMaS7TnGranh
         IezGabfjywlHpogoV4Oinv45R4Obb385iHqhh9XAvtZjI7HAHNWBvVIELZ/grNKY6yar
         aLWt15erLbliBRQrxK3kd8Qi3kW0VdK/3cecwaDyzbCfW/2oIrVRuggqxrcWllcw/kqo
         8DQPyd8p5my0JnLY/qXnAAavRqucdzYhKR/PrpEsYbU4PvrtOXyrBZ5OVMS9Znxy3STU
         HLgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=SQX60VImJAOoY5lvtm8O2YzIr5CD729uKpYTYMTd76I=;
        b=NBlbGJGRJCPlFkHquJ9W/mpP/DCrqcL4O98frDzX2f9Su1oiqEuEcGNxVn4P6+aCpP
         aZIOJlwhjYFccnNYKviqknlahmKOHUwVpSfMDuUorxi71hNW3fMu9t6Krpq91VuHWpZU
         nkrSPct1NXVv4m9RrpW/X8yZWMgt92TJENZSlrXDuuAA9ZzOeJC4JkQl6CJilG9aWOSr
         cYtRaEAiZmTVyYTqd3wbGo73LTy57CgD34dquIpPtJEU0MftCDE6joWMPI1hhGfjwZ/q
         jBrFwjGlBNv7X4RgQAMF4t0Hyqjqm2NL3gpAwJZooXcH6Gx2sDRJZDsZAWRQNhRU/ZzS
         LIhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=km0dQNrf;
       dkim=neutral (no key) header.i=@linutronix.de header.b=JkJbBoyW;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SQX60VImJAOoY5lvtm8O2YzIr5CD729uKpYTYMTd76I=;
        b=G8XOY+pxEIG4hFyQGOPIBHWYdzCpLwvVhFSubM9hsaQCRH24MPEKeJ8BPKNrYhvLnZ
         1k1lWwUOxb0XueRiGZP+rXRvlAydJkypq2xOfztSqh9/Osp10Quap3YdbcxVoqpMNne2
         ZAY/CaWVCBQSih56V012wmxTTxgftJrDDkzgwlMsMRrZn9Mju9hOSwzjaoKYur9DbIuC
         3qbnXFgkUGROejuJdybmcVr07/wjmSQ2aOQ3gAwmmzBlaq432Yg0Grmhf1r3kb9NVAVN
         v52mFt++z89H2PR4DP8Zz0s9cCr3kXzX2rm2qsXb+PNrAt9G0i/q7UHCL4f1k8NjyRgL
         BbHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SQX60VImJAOoY5lvtm8O2YzIr5CD729uKpYTYMTd76I=;
        b=JKiifF6e8l5e+EkoBJJnif76OKBIaBmA5bqOrzLfmsquvvBo4ydSHXqac7mSRjDpSC
         a9TV/xLbm69k0jKmbqVd9kPwTK4i13irM0y9b/hQ0a1iE4tENHI6A4fb8JbQRpiT3HBF
         YTiZNWsUHf3LYu+oHyshTroP9q0KhHC7Q0u+xenVm74j/L0bPlm2i6QBpXRclMcbf+YF
         JyiGXbDEl2tkd/SC/1Yrq+mkrlcS2eNBUD7rh/d/Cn4S0utPfeYmBHkFEaBqde4VtTNz
         F2EybRn9eokryfx3C8CtWnbIL41sIZmKnpbo5hcx2Gs9y9hIVw2x4oPdrgZxM2Qs3hX3
         +ChQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531yLYe8AYAkzeKFrH5neDtrRFDPN02e0z/QHsNRvPu+aTqI7396
	SnCyimQY9xDIe4wDt3AgqHY=
X-Google-Smtp-Source: ABdhPJz3Xcy+/deWkqM5t/269IZN1n7a1EHhdidtwM9VlzD32xrYp33SA2YC2Ud3/M0xgibyHRSIlg==
X-Received: by 2002:a05:620a:127b:: with SMTP id b27mr25839518qkl.183.1637976199200;
        Fri, 26 Nov 2021 17:23:19 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:24b:: with SMTP id o11ls4312386qtg.0.gmail; Fri, 26 Nov
 2021 17:23:18 -0800 (PST)
X-Received: by 2002:a05:622a:1888:: with SMTP id v8mr28611309qtc.206.1637976198851;
        Fri, 26 Nov 2021 17:23:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976198; cv=none;
        d=google.com; s=arc-20160816;
        b=e91dEaoxfN3VxVb5WGmxGHWIhb4vIGNHeDYgCeyWxiK3e24xqjJJcfZCRvsOd8snHq
         8KGc4MaONmT+zP65cxLgkBGrw8PlPsJgIP8bESSGWWWPpiOUVmUM54pZ3W/0BsIEaKM2
         aT5ChCzZD0xEYRl0ZLFG0Z7swf8uY8gqUeH1/9qWKcWPyNxO3vD7E2cmdKVHWdjmgrqx
         lsEdNvm3GkXTkBdR3i2sKIZGQXPnD7KHtrKsy7lYq2PRK31zlY69IStKFYizxfW6E9Aj
         4HLmmSNPGwYEYpPUt26TKAoZItSJS33dRhRBEExmiclHYkJuYH9mRHzkO/4RHsPL1FFF
         IheQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=PFuyUtIKHszvU7gtDYULmf7Bd4K09pORQBH8HusBKz0=;
        b=XcGHa8uqsDAUdrdtphdxm9rlw6aJ1ETerqMX7s+idx45kz3vA7yjdSN7lHwxmyo3We
         o6YMiT5MBfqw7TFhTZ6HBon6jMDEWQKNf5fK9Wn1i51QHhnP3NGWSNhOKNXCYiASTx/9
         mT4yrNzDS6MIgVT/LpCb/OP+AfpmmVhrbJJl6+M1Ygu05Xa1xyS01BT6jTALf5nifYlZ
         rsP/FnJmN5snetNGjwyA8OiZDwG3HPEfFARgP6i88B3KRHM6178UM9isvEzHln8v/vqL
         lMx6l/61z9IIyTCYt+pxwe7t9Flcw0DbzyYJTtZrphzNaswGaYvtXcR57J9R/iTT6eJc
         PPhg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=km0dQNrf;
       dkim=neutral (no key) header.i=@linutronix.de header.b=JkJbBoyW;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id d14si1101682qkn.4.2021.11.26.17.23.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:18 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:23:17 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=km0dQNrf;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=JkJbBoyW;       spf=pass
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

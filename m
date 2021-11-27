Return-Path: <linux-ntb+bncBDAMN6NI5EERBBMRQ2GQMGQEIUVQSOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 888FB45F908
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:18 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id q5-20020a05620a0d8500b0045edb4779dbsf11949911qkl.2
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976197; cv=pass;
        d=google.com; s=arc-20160816;
        b=URCQwgyCjbP6zOCVXLHc/qFPOpHPbbR5C8IWHdGfGgTfGaBdWfOgsanLREgjBUXse+
         Y8Iv1I/y8GsScmjsUYJkChTjkaXWe8q5h4NwjUK0I9Wjtnw8R1nDj+2ehqM0omsiS/pZ
         pR2IqMzHHM6DBb6Uz421VojCQo0+UzwWp8WGdJcL0cAqE+8G0BgOO6uVYvQTLsAzgtpH
         Go74my/aqpOYiLEmPw0ymyore18UVVLc/3TpNcXz+ZWo9GxJGOWW9cfDRKMOrOHRiKa/
         o+c76kCHkBKyzcpcxdYZiBZ+Cn1vWJgeFwzCLsDj0lNqqfBQkZf9CBCnBE8wT8/Jw4z0
         gu4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=/UuirWpq7Of+8ZAI2tcXpnoA3jXtJbn06wiuhMXdDfA=;
        b=yOeUD/teinbzd9IBuzaCbWVddiQCOLC8NiHWJwsnJ+4LC5eTjz5MO2gyyC/E5YtlZu
         cTtsUe5IwPYLJ9ah7PWOnCYO9G7BnLrYhQRd5CacWhl56/wrp6baOQ9JxooQtNtHJINk
         ebEgw430ZOSSe0E3SHoaB0tgN1czCPWMZzN2pdTxDFShxAZGnakK8uw1Nf1sxfKgQLLk
         c2O6oiKS1AHquvcJl3tDcJVUSmD/TVgU+NBJ7ZmwJxUatFwtK2tLd153m5h8l0QXSSyW
         zObJ9QKF1PBi53/HpLDrtqvNkvkBhJ/PXsZapjZlC+y3H3LQCJasHJDQHKCk+OWM8c8+
         O2aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=z2TX6WWN;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=4nSjHfLv;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/UuirWpq7Of+8ZAI2tcXpnoA3jXtJbn06wiuhMXdDfA=;
        b=nruHX430t7tkCP4klySOczOHiEqwLMAAw5ZR8klbKCkwo9GhOmWZjZzVzPRHy16uhZ
         WZgGKAsgLqqbjOsN333ZljGVsCD22grpzWD1DYMnIbvUa9DLdA9qTTjxyAwZltl+Mgw2
         7xoKhElVom5Fl+x57bY/ikV5xtAhvw1apLdby6kyTYupG1fNPc8c0dj6uAY+e0nnJ/9W
         Rqykk4pp6NDtc0lav/lCFCW2JAaXgq3HmMvqixBkTUhvEEMr3YLGROpS9B/VN0PjSR1h
         tKswuKOnXknUiopxCq3DK1+jJWh3SKGBHu011HNPfD/S5HJOSGt9Gb6SJlKSYv/6PmVg
         C1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/UuirWpq7Of+8ZAI2tcXpnoA3jXtJbn06wiuhMXdDfA=;
        b=AWIiqoS9kbEU68a7W8f+XUYlpuQlW/UPejhi8pzl8OHJz7C6JGwVrdsMhoBq2sElHw
         xkiOEV47gvh7a01+rnG3t35bYepcAgxhg9554+/JfnpF7n7pOnzlNs7+dfvutmsKnnIJ
         VO754ndQGJILiS5TGymtL2awqSUVD//OjTwlY/Dtaz3HZtUBDwbuSBmZatJ9VffGVWDW
         KGHtMd53SnN/RplzAOFKDfTfWtBUVwTQElj7NAnGLfB4XmMNtIgqcWKj6RKaMXwbdsmm
         kWKUzQ/u3nGaGE9AKnSRhwMkjf2v/1EUt76M46NIfKJX3yNhTu4YMq5e2bftAAdA1P9k
         0Xrw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530iKrkX3SobPipnpb7x7UhSfXsLXGNLh7U9NVKFjCjfRgbo5M1U
	49QiME2sayRUM3AsaLyGsvk=
X-Google-Smtp-Source: ABdhPJxksU3ICl93TaQe/9w29uwCwslHT27zmxDK1GJtXj4Nr0Vg73EWRrOv+aZ8dycSW6l/tf0UoQ==
X-Received: by 2002:a05:622a:1112:: with SMTP id e18mr28818011qty.226.1637976197679;
        Fri, 26 Nov 2021 17:23:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:f00c:: with SMTP id z12ls3020217qvk.9.gmail; Fri, 26 Nov
 2021 17:23:17 -0800 (PST)
X-Received: by 2002:a05:6214:96e:: with SMTP id do14mr27875175qvb.39.1637976197321;
        Fri, 26 Nov 2021 17:23:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976197; cv=none;
        d=google.com; s=arc-20160816;
        b=gIf/ccc5p+JD8DWT7z5l0MPWENNsnz2sxQb3Hy+/qFSXh3uvJGdJ6CWL0EFH8LZM5c
         UnEr/dvxp8EiMh4pQgTwUSlODLOcjBjKbnGQ5zKXywu2/rPEpfrOumSyBPyCvO2TP1Ha
         SZ+pnhJHk6z8ONWSAmnhIpQjlfDPc+eZFMCyxq7oJWmnxi6mzPo9V01Gfd9JhRJB4r1A
         BzAJY/lj9iwGEQvqcSz9wmdrQVF8LVzy6U1DZFC4BM27ZqPnN6Rfq2JbUmjeV39TZm6Y
         UBh7qz6YQY8MWOmDOy6foy6P4PHTvv0bcl29po5gHAqxCNapg8qMKltLdILoZRMoh6W6
         BCNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=2D8aNt4Gm/AldjGMDcfK5UGFdFdsKJp+Ma1rVxhtL/s=;
        b=s2w4YWs9362dQl5uyRPLHPEke2M8izyR6mTm3IwXnRqY0bNWeRNUlC7zEbfm5khlo0
         VSZALphLBWbb/ivkMSuVdW/AN34eK0BcKxKshFs+WU9U074mqyDRvVuYAuPACPwSzDpn
         95Ksez4QElgg/DFVv1n33uM6LxHRvoUJhi6FCYVdvwW+c7DAPIGKPspwFsC9Mefy/v0X
         YcEnv43Ur3N4YOJnU56qr9h2iYy0Bl6xfz5ENA1aPdWFH7U1VIb/ru9vodEaos3aV0z9
         l2rnEl6L2RUQ3kWw66miwIIwPQTA0FGU9DNJSYGCPPV6/VUjD05dyZEwFpWlg+IfRm1E
         gZjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=z2TX6WWN;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=4nSjHfLv;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i2si847519qtg.3.2021.11.26.17.23.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:17 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232736.135247787@linutronix.de>
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
Subject: [patch 31/32] genirq/msi: Simplify sysfs handling
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:15 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=z2TX6WWN;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=4nSjHfLv;
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

The sysfs handling for MSI is a convoluted maze and it is in the way of
supporting dynamic expansion of the MSI-X vectors because it only supports
a one off bulk population/free of the sysfs entries.

Change it to do:

   1) Creating an empty sysfs attribute group when msi_device_data is
      allocated

   2) Populate the entries when the MSI descriptor is initialized

   3) Free the entries when a MSI descriptor is detached from a Linux
      interrupt.

   4) Provide functions for the legacy non-irqdomain fallback code to
      do a bulk population/free. This code won't support dynamic
      expansion.

This makes the code simpler and reduces the number of allocations as the
empty attribute group can be shared.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |    7 +
 kernel/irq/msi.c    |  196 +++++++++++++++++++++++-----------------------------
 2 files changed, 95 insertions(+), 108 deletions(-)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -72,6 +72,7 @@ struct irq_data;
 struct msi_desc;
 struct pci_dev;
 struct platform_msi_priv_data;
+struct device_attribute;
 
 void __get_cached_msi_msg(struct msi_desc *entry, struct msi_msg *msg);
 #ifdef CONFIG_GENERIC_MSI_IRQ
@@ -127,6 +128,7 @@ struct pci_msi_desc {
  * @dev:	Pointer to the device which uses this descriptor
  * @msg:	The last set MSI message cached for reuse
  * @affinity:	Optional pointer to a cpu affinity mask for this descriptor
+ * @sysfs_attr:	Pointer to sysfs device attribute
  *
  * @write_msi_msg:	Callback that may be called when the MSI message
  *			address or data changes
@@ -146,6 +148,9 @@ struct msi_desc {
 #ifdef CONFIG_IRQ_MSI_IOMMU
 	const void			*iommu_cookie;
 #endif
+#ifdef CONFIG_SYSFS
+	struct device_attribute		*sysfs_attrs;
+#endif
 
 	void (*write_msi_msg)(struct msi_desc *entry, void *data);
 	void *write_msi_msg_data;
@@ -171,7 +176,6 @@ enum msi_desc_filter {
  * @lock:		Spinlock to protect register access
  * @properties:		MSI properties which are interesting to drivers
  * @num_descs:		The number of allocated MSI descriptors for the device
- * @attrs:		Pointer to the sysfs attribute group
  * @platform_data:	Platform-MSI specific data
  * @list:		List of MSI descriptors associated to the device
  * @mutex:		Mutex protecting the MSI list
@@ -182,7 +186,6 @@ struct msi_device_data {
 	raw_spinlock_t			lock;
 	unsigned long			properties;
 	unsigned int			num_descs;
-	const struct attribute_group    **attrs;
 	struct platform_msi_priv_data	*platform_data;
 	struct list_head		list;
 	struct mutex			mutex;
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -19,6 +19,7 @@
 
 #include "internals.h"
 
+static inline int msi_sysfs_create_group(struct device *dev);
 #define dev_to_msi_list(dev)	(&(dev)->msi.data->list)
 
 /**
@@ -208,6 +209,7 @@ static void msi_device_data_release(stru
 int msi_setup_device_data(struct device *dev)
 {
 	struct msi_device_data *md;
+	int ret;
 
 	if (dev->msi.data)
 		return 0;
@@ -216,6 +218,12 @@ int msi_setup_device_data(struct device
 	if (!md)
 		return -ENOMEM;
 
+	ret = msi_sysfs_create_group(dev);
+	if (ret) {
+		devres_free(md);
+		return ret;
+	}
+
 	raw_spin_lock_init(&md->lock);
 	INIT_LIST_HEAD(&md->list);
 	mutex_init(&md->mutex);
@@ -395,6 +403,20 @@ int __msi_get_virq(struct device *dev, u
 EXPORT_SYMBOL_GPL(__msi_get_virq);
 
 #ifdef CONFIG_SYSFS
+static struct attribute *msi_dev_attrs[] = {
+	NULL
+};
+
+static const struct attribute_group msi_irqs_group = {
+	.name	= "msi_irqs",
+	.attrs	= msi_dev_attrs,
+};
+
+static inline int msi_sysfs_create_group(struct device *dev)
+{
+	return devm_device_add_group(dev, &msi_irqs_group);
+}
+
 static ssize_t msi_mode_show(struct device *dev, struct device_attribute *attr,
 			     char *buf)
 {
@@ -404,97 +426,74 @@ static ssize_t msi_mode_show(struct devi
 	return sysfs_emit(buf, "%s\n", is_msix ? "msix" : "msi");
 }
 
-/**
- * msi_populate_sysfs - Populate msi_irqs sysfs entries for devices
- * @dev:	The device(PCI, platform etc) who will get sysfs entries
- */
-static const struct attribute_group **msi_populate_sysfs(struct device *dev)
+static void msi_sysfs_remove_desc(struct device *dev, struct msi_desc *desc)
 {
-	const struct attribute_group **msi_irq_groups;
-	struct attribute **msi_attrs, *msi_attr;
-	struct device_attribute *msi_dev_attr;
-	struct attribute_group *msi_irq_group;
-	struct msi_desc *entry;
-	int ret = -ENOMEM;
-	int num_msi = 0;
-	int count = 0;
+	struct device_attribute *attrs = desc->sysfs_attrs;
 	int i;
 
-	/* Determine how many msi entries we have */
-	msi_for_each_desc(entry, dev, MSI_DESC_ALL)
-		num_msi += entry->nvec_used;
-	if (!num_msi)
-		return NULL;
+	if (!attrs)
+		return;
 
-	/* Dynamically create the MSI attributes for the device */
-	msi_attrs = kcalloc(num_msi + 1, sizeof(void *), GFP_KERNEL);
-	if (!msi_attrs)
-		return ERR_PTR(-ENOMEM);
-
-	msi_for_each_desc(entry, dev, MSI_DESC_ALL) {
-		for (i = 0; i < entry->nvec_used; i++) {
-			msi_dev_attr = kzalloc(sizeof(*msi_dev_attr), GFP_KERNEL);
-			if (!msi_dev_attr)
-				goto error_attrs;
-			msi_attrs[count] = &msi_dev_attr->attr;
-
-			sysfs_attr_init(&msi_dev_attr->attr);
-			msi_dev_attr->attr.name = kasprintf(GFP_KERNEL, "%d",
-							    entry->irq + i);
-			if (!msi_dev_attr->attr.name)
-				goto error_attrs;
-			msi_dev_attr->attr.mode = 0444;
-			msi_dev_attr->show = msi_mode_show;
-			++count;
-		}
+	desc->sysfs_attrs = NULL;
+	for (i = 0; i < desc->nvec_used; i++) {
+		if (attrs[i].show)
+			sysfs_remove_file_from_group(&dev->kobj, &attrs[i].attr, msi_irqs_group.name);
+		kfree(attrs[i].attr.name);
 	}
+	kfree(attrs);
+}
 
-	msi_irq_group = kzalloc(sizeof(*msi_irq_group), GFP_KERNEL);
-	if (!msi_irq_group)
-		goto error_attrs;
-	msi_irq_group->name = "msi_irqs";
-	msi_irq_group->attrs = msi_attrs;
-
-	msi_irq_groups = kcalloc(2, sizeof(void *), GFP_KERNEL);
-	if (!msi_irq_groups)
-		goto error_irq_group;
-	msi_irq_groups[0] = msi_irq_group;
+static int msi_sysfs_populate_desc(struct device *dev, struct msi_desc *desc)
+{
+	struct device_attribute *attrs;
+	int ret, i;
 
-	ret = sysfs_create_groups(&dev->kobj, msi_irq_groups);
-	if (ret)
-		goto error_irq_groups;
+	attrs = kcalloc(desc->nvec_used, sizeof(*attrs), GFP_KERNEL);
+	if (!attrs)
+		return -ENOMEM;
+
+	desc->sysfs_attrs = attrs;
+	for (i = 0; i < desc->nvec_used; i++) {
+		sysfs_attr_init(&attrs[i].attr);
+		attrs[i].attr.name = kasprintf(GFP_KERNEL, "%d", desc->irq + i);
+		if (!attrs[i].attr.name) {
+			ret = -ENOMEM;
+			goto fail;
+		}
 
-	return msi_irq_groups;
+		attrs[i].attr.mode = 0444;
+		attrs[i].show = msi_mode_show;
 
-error_irq_groups:
-	kfree(msi_irq_groups);
-error_irq_group:
-	kfree(msi_irq_group);
-error_attrs:
-	count = 0;
-	msi_attr = msi_attrs[count];
-	while (msi_attr) {
-		msi_dev_attr = container_of(msi_attr, struct device_attribute, attr);
-		kfree(msi_attr->name);
-		kfree(msi_dev_attr);
-		++count;
-		msi_attr = msi_attrs[count];
+		ret = sysfs_add_file_to_group(&dev->kobj, &attrs[i].attr, msi_irqs_group.name);
+		if (ret) {
+			attrs[i].show = NULL;
+			goto fail;
+		}
 	}
-	kfree(msi_attrs);
-	return ERR_PTR(ret);
+	return 0;
+
+fail:
+	msi_sysfs_remove_desc(dev, desc);
+	return ret;
 }
 
+#ifdef CONFIG_PCI_MSI_ARCH_FALLBACK
 /**
  * msi_device_populate_sysfs - Populate msi_irqs sysfs entries for a device
  * @dev:	The device(PCI, platform etc) which will get sysfs entries
  */
 int msi_device_populate_sysfs(struct device *dev)
 {
-	const struct attribute_group **group = msi_populate_sysfs(dev);
+	struct msi_desc *desc;
+	int ret;
 
-	if (IS_ERR(group))
-		return PTR_ERR(group);
-	dev->msi.data->attrs = group;
+	msi_for_each_desc(desc, dev, MSI_DESC_ASSOCIATED) {
+		if (desc->sysfs_attrs)
+			continue;
+		ret = msi_sysfs_populate_desc(dev, desc);
+		if (ret)
+			return ret;
+	}
 	return 0;
 }
 
@@ -505,28 +504,17 @@ int msi_device_populate_sysfs(struct dev
  */
 void msi_device_destroy_sysfs(struct device *dev)
 {
-	const struct attribute_group **msi_irq_groups = dev->msi.data->attrs;
-	struct device_attribute *dev_attr;
-	struct attribute **msi_attrs;
-	int count = 0;
-
-	dev->msi.data->attrs = NULL;
-	if (!msi_irq_groups)
-		return;
+	struct msi_desc *desc;
 
-	sysfs_remove_groups(&dev->kobj, msi_irq_groups);
-	msi_attrs = msi_irq_groups[0]->attrs;
-	while (msi_attrs[count]) {
-		dev_attr = container_of(msi_attrs[count], struct device_attribute, attr);
-		kfree(dev_attr->attr.name);
-		kfree(dev_attr);
-		++count;
-	}
-	kfree(msi_attrs);
-	kfree(msi_irq_groups[0]);
-	kfree(msi_irq_groups);
+	msi_for_each_desc(desc, dev, MSI_DESC_ALL)
+		msi_sysfs_remove_desc(dev, desc);
 }
-#endif
+#endif /* CONFIG_PCI_MSI_ARCH_FALLBACK */
+#else /* CONFIG_SYSFS */
+static inline int msi_sysfs_create_group(struct device *dev) { return 0; }
+static inline int msi_sysfs_populate_desc(struct device *dev, struct msi_desc *desc) { return 0; }
+static inline void msi_sysfs_remove_desc(struct device *dev, struct msi_desc *desc) { }
+#endif /* !CONFIG_SYSFS */
 
 #ifdef CONFIG_GENERIC_MSI_IRQ_DOMAIN
 static inline void irq_chip_write_msi_msg(struct irq_data *data,
@@ -959,6 +947,12 @@ int __msi_domain_alloc_irqs(struct irq_d
 			ret = msi_init_virq(domain, virq + i, vflags);
 			if (ret)
 				return ret;
+
+			if (info->flags & MSI_FLAG_DEV_SYSFS) {
+				ret = msi_sysfs_populate_desc(dev, desc);
+				if (ret)
+					return ret;
+			}
 		}
 		allocated++;
 	}
@@ -1003,18 +997,7 @@ int msi_domain_alloc_irqs_descs_locked(s
 
 	ret = ops->domain_alloc_irqs(domain, dev, nvec);
 	if (ret)
-		goto cleanup;
-
-	if (!(info->flags & MSI_FLAG_DEV_SYSFS))
-		return 0;
-
-	ret = msi_device_populate_sysfs(dev);
-	if (ret)
-		goto cleanup;
-	return 0;
-
-cleanup:
-	msi_domain_free_irqs_descs_locked(domain, dev);
+		msi_domain_free_irqs_descs_locked(domain, dev);
 	return ret;
 }
 
@@ -1039,6 +1022,7 @@ int msi_domain_alloc_irqs(struct irq_dom
 
 void __msi_domain_free_irqs(struct irq_domain *domain, struct device *dev)
 {
+	struct msi_domain_info *info = domain->host_data;
 	struct irq_data *irqd;
 	struct msi_desc *desc;
 	int i;
@@ -1053,6 +1037,8 @@ void __msi_domain_free_irqs(struct irq_d
 		}
 
 		irq_domain_free_irqs(desc->irq, desc->nvec_used);
+		if (info->flags & MSI_FLAG_DEV_SYSFS)
+			msi_sysfs_remove_desc(dev, desc);
 		desc->irq = 0;
 	}
 }
@@ -1081,8 +1067,6 @@ void msi_domain_free_irqs_descs_locked(s
 
 	lockdep_assert_held(&dev->msi.data->mutex);
 
-	if (info->flags & MSI_FLAG_DEV_SYSFS)
-		msi_device_destroy_sysfs(dev);
 	ops->domain_free_irqs(domain, dev);
 	msi_domain_free_msi_descs(info, dev);
 }

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232736.135247787%40linutronix.de.

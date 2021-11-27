Return-Path: <linux-ntb+bncBDAMN6NI5EERBQ4RQ2GQMGQEUTBTUNA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3F745F98A
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:20 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id c1-20020a05620a0ce100b00468060d41ecsf11851619qkj.19
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976259; cv=pass;
        d=google.com; s=arc-20160816;
        b=VYsbaQpt56L9s8xGwiqgOG+wWmPf2awXyPVn2mv8EUwbe4SdZ5G4ORuIBs2KFj7nzC
         yySowC8OIW6Urt4rer/n8fb00jDa6HEA9v1nAjTMBgBaJ3JEX3yphL9dJ5Eq8TB3aCat
         4qTldi48LmJrNIR5pw8sBRhVffFz3RERxdfpsIyME+PLaKC6xbhSFQ+NChkK4SZ99SO5
         T5cKZP519IjL+27fOAaugRk+nYltmdDrS1uSPnH+/C4l3TZ8NVVgOyVgCOgmc0vDqwrJ
         gDOstr42pbLnZ7CcKLSbZEpF5NF10e2KifYxb8J1UKekyjs7d9qJtEJ2aK9fv1ciTUrK
         O5jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=/UuirWpq7Of+8ZAI2tcXpnoA3jXtJbn06wiuhMXdDfA=;
        b=ZAegtWwvI/dZPRCZJwcVaMO0p6gLcbO+u5P8Sh4OrraoaQrMmQx2eB4zt+OCejIrlV
         dPHfeISfPXjmDthXOjj7FnYbgZ/ZhpNkivZZW4FLBhzXeHbbOWwNsiKzjZBY/z3QSwzp
         EKmmlrIR6BB5zBAcbav/paJpN779bTpehRbFqNhesTfkh0VhYQSGaJBNeqd9gJyqpnS5
         hWFWlhq58P5XK72KFPs2wnIgPEuLoYYqxaPbtmMPg0xXRjcDoqhJCKXFkHQFtjPZoq9M
         bRvunpHYYH5q0o9Ykk5kRUSp4jsAADuACG5P0otHb21PUuALtmpV0t1x8IEw5vdVhgXi
         ulRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="IMu/M7Ho";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=3XpHFykv;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/UuirWpq7Of+8ZAI2tcXpnoA3jXtJbn06wiuhMXdDfA=;
        b=Db3dAUtkwjM0HmjQleiQIllMK5lBkk9NETwYJ6SsdABLHJ8HCytQSXHrdlCMLpAxJh
         qbTGBCM+BFca3rG3VJsl+U52RFmCgagZrJLdN7g93hZs0JQlKp+rX/WqPMfr9rjgwOMH
         qOP70rm8ku5CwHbgWDZtHgazXOkL9p/j5xqRlhR/Hlc/ZCnKHZc+zY3V9E/i+L3f83F3
         3+EqcleveOWyqR59XHT0/ywXXPilwIT9sl2BbZUGiRFY3yw7oSzK3cLaWMqUocy7WRt0
         rWW/qySZ4LFrCfGQR4Fng78JOJee8w3hmmPqf4YonVJL/c42WUt0Ha1QzXcVbIgs5dHp
         s4cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/UuirWpq7Of+8ZAI2tcXpnoA3jXtJbn06wiuhMXdDfA=;
        b=0t9VqxobOkI2bsAri10B75Iv4Z4OB/JHAWufSyuGFgLwwO8BpxzspO35MV2g42Gnt7
         BR97lOBOag6fzIf59omLnz2kMXSo5Iwq6jYtt99SDtkhrFpyGwCLb5pOR72TwZzlP0Fi
         TOLEfmBAV7rI8H1nmodwpAXAQDEHEPofbkEefEIUu/R1Bci7lmvUkpTN1THXsixc5LaW
         LQqgM37tuDyJHWgz2M06yfSrvzAyXpgIefj+YL+l8lz/OQlfPqXYEgT0bh/UkQaMJkQD
         db+nBX6RWGAUFZRwCs+4GGkx72v9bopu2MF4t13a7j6gM3+pDaMGJyv21BYr1vUWIQWw
         o/Cg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531/gWhR4V0Z/7F5IHFjFtSfGA11r3GdfNhR33xcKjbiyaS0VX0u
	nmcO8XlOy6liSwCd4FkWU1I=
X-Google-Smtp-Source: ABdhPJxo13Je88zY83d/tEDjMkGgn2VCXqY70bu+knDt7t3NOA4vx8iLN7dnmCFXcKMXthrFt/xkKA==
X-Received: by 2002:a05:620a:2229:: with SMTP id n9mr25487736qkh.155.1637976259815;
        Fri, 26 Nov 2021 17:24:19 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:5746:: with SMTP id 6ls4290594qtx.9.gmail; Fri, 26 Nov
 2021 17:24:19 -0800 (PST)
X-Received: by 2002:ac8:13cd:: with SMTP id i13mr28857339qtj.234.1637976259389;
        Fri, 26 Nov 2021 17:24:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976259; cv=none;
        d=google.com; s=arc-20160816;
        b=B0UvhQ3xazhMvYSGCzr93oH+WzDMwOCUgffMTXAaxzdqnxNxU1JqXIUpQZmdWuDSZ9
         i1wHFq85KUuCpdd6KO6EElUPhkHGC4Fn1QJcbvsFlbSK5Fps7gJ67Cvqf+iNQc7Lugu9
         t7Ode9c5OTWtwck35q0TpT29BjPImyx2rSHduTz1b3AmTl9yJZVx0YHnqzmz1dvw9IjY
         U6AdSAn4G/aDl0Bk/cRjtResBV0qr4Jaw39KX8Ky8hLn2YMkqquvJFwyIpaL8ScWIxW/
         Pay1o36nH4kc6g1j1TRpL6sV4kdvMgDKxY3B0A285qM5PzBkAO3jL7S65uuTSMSO0raR
         q/Lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=2D8aNt4Gm/AldjGMDcfK5UGFdFdsKJp+Ma1rVxhtL/s=;
        b=ygwWYxm3IEEQPaXlrbusG6INYGabxIIl1KmQfJgLAeumy4xrZFbeY8BZ1pnwpx2fWG
         26am1kOzePK1f+zDz52nzwz4dBi2b09ZeCPI+DVe+EfkbnBWs3QP59+aLZNpuCE0iuh6
         A6JNoFECgpjOiw2yCOuFzeoCCgxiCcz1BwcpHYJHDBHVxw9NF05uTv+hAEFfrY2Rjbkz
         CVQkulj/ehUoMGg3STY4U3L5K1bowj3mE+wj2yORjcX/ZndxMct6mtrHCGO9uqyjDM6D
         E6Ux63uGlbnUBczE2OZSEcMhvqblssbmvM54OEXmlc+OSeH+9j2Fe2BXcqltmC8ktN0E
         z+1g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="IMu/M7Ho";
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=3XpHFykv;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id i2si847632qtg.3.2021.11.26.17.24.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:19 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
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
Date: Sat, 27 Nov 2021 02:24:17 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="IMu/M7Ho";       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=3XpHFykv;
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

Return-Path: <linux-ntb+bncBDAMN6NI5EERBB5IXKGQMGQERMGGXKA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4207446AD66
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:52 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id c4-20020adfed84000000b00185ca4eba36sf2394311wro.21
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831112; cv=pass;
        d=google.com; s=arc-20160816;
        b=uNBxwNVhQYjx8z4l2WFpkMf8LynFE+jSRYp/IRjBibivMFcvWw+vt9rcIfWz4rvov2
         xiRrz0kY8Cv324KbsNBzu+JmuQEZpA/aaJSJS3yvnZLZqUJqLmw04G/WzOoynttwSQmD
         diE8N8IJlXftAz1bAWlGkQu4j9/Gix2mjEf3HlOsx3EYikuNXXsQ8p3fLZfo/K7kfkqE
         oOJ7xgsyuQftb84dxcFigapZGrEHFwWUG7PuV+APrPLXBRTMh1Qr0XkWKoSWiJpUedP0
         8D/v3bkd4Lzt5iJflkAKLtRGH1Kzg5XHWh+NHqh6zjJkjyM/rJOwI2za8yYB2sD9jmxG
         mpDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=CMCE23VryzrxVoU4z1fWU6MqRGiWcmVU4OutO0TsFDw=;
        b=BDQIGMe5o8zEmKT1fKy6WMr7sFttEF+bWghSub8d7dcmscLjwiJMWNSUFApP1zbF1B
         89UgwqzWI4drl6+mYXtSkVHMncYYKhofU2v7AGIJybuHZAwyxcvZJHiAu7dIuoQc0S8q
         /GDeB+3Z8mXY8qxyrLk2CingvLEcdRLfhkTPSNnG8CEDwJ/mRQihT0ckyNQbZSy/0Ppb
         wjEmQzse7dRj5fofvcfJCfmbT6SywPLEpuEgQLkIOxlx/glspmK8N9KyW2DFY25Dj8SV
         0txG9mxUb42j4gr2cda2lz0+eUu4rXqyWZw1hjlKtPmSv3eboJXAarrMJVb9yZ9+gVYz
         4VQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=e4ohXDN8;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CMCE23VryzrxVoU4z1fWU6MqRGiWcmVU4OutO0TsFDw=;
        b=B+j7Z/4GRyn3y9VPOpqbVGCOgwgBFQ7+mR6HYSQ8PDG+UCRI+a34y5K0qdFvSJghCK
         900i+6Uq+hWWv3q3OzHMUlv072OGAZTK02x+iLJtutvOBcc8cpzgq+dDLgNAjItHpD7j
         WYmA3OKxxtYTx1Sp2+PysZZOMyizqxj3WESwanhpJjb8zqazp+ToLprX/mUPqk3bBVST
         pNIpZ3VEJMQeq4t/vKJTIrDBTTet/6+8YQfQaHCt98lcymQi/W9hjRqaBETI3be5Luoh
         4DIEMzUqaaLG6zuJgFg1wUY/Q8quMogKMJ1gosga5n9cm5ESDPV1x8JASZMtkrDGTRnQ
         9Qbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CMCE23VryzrxVoU4z1fWU6MqRGiWcmVU4OutO0TsFDw=;
        b=69pT0TdnF0FZw+zofygr+SzYn7arFWWMIV8YBk0UR4PRbSg3oNkead42QaKr3HdEUc
         yOIMNl5p1UeaVXWVupT4j6KO7x9saSvmNVKWC1ekEQ4cK0/lN6yfBfPG7HKnNtJmr5SD
         f3aLzp/kAtSfX2+LX3rGr+9p8+ukIwxdIDuRTC0SxPeDvZYrOvBZ8lututqifvKqB5mY
         LnyIijGwtNg5ki3noRdME2fH16qm3Y7sGldSpt8vN4xG89ySeMttpJOqOJfw1xmShwID
         jcdNb9uq5TPVYZClXGENvMGFcIq0EFX8EFW1uqnx7HcTwdIldkUhjR9qEFGGF0mXPACA
         mGoQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532lemnDTqkPtOx1Wxzxq4IZUGtDlWeb7j7oH9ZzkC3byC0OIkX+
	YuYizrNZvOHPIiwUi/y6bbA=
X-Google-Smtp-Source: ABdhPJy6wILdNnwpDJt3BS4h1YPx2r925KsXpLRWlmxS2yl/rjSf/HT9S0Qqir98dhFRvkgjIZ9mKQ==
X-Received: by 2002:adf:f189:: with SMTP id h9mr48262599wro.463.1638831112070;
        Mon, 06 Dec 2021 14:51:52 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:fe0b:: with SMTP id n11ls1274839wrr.0.gmail; Mon, 06 Dec
 2021 14:51:51 -0800 (PST)
X-Received: by 2002:a05:6000:1568:: with SMTP id 8mr48443392wrz.76.1638831111374;
        Mon, 06 Dec 2021 14:51:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831111; cv=none;
        d=google.com; s=arc-20160816;
        b=VvW4GIWvnVY1hcCXCsm6BzwsiZ8drNzrBlcB+M/UR7ePsqVxuOQPEBWKwK9TXeVfzE
         GaBo7fPxHYYWXGkaV44xDjfo55idMABPsme3Cu9Y1erEmU4rtL1D5l63v4p1N1gqC+2Q
         thQ09l5WzM16Hainl8SBzLpX5I5F40aHNcZYmKa9Q7KjAp9u+HHWuQMUK0BNYxmncnN5
         m/cs2s7bdUnoWMdN9xEKbFoHG0lhM234gwzdDbNgiqXSJk//N/Lkbn1f22aVW59wYyRh
         oCoMwQhJUls3DTj7MTFgDduTbDVfnOBGXUI8HWwewPtA6ZDMS7HiZTaL0ZSptb8rvoAw
         5M5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=21WP0HmWXZNG6C0xaMrdmPLK4zT+1q4zI1Oc6dWMW6M=;
        b=KNsZbdV9QlCgNWdkhmmlA7w5hYmWpdgdrwDf45G99qsnwHZQ5QovA9E9GQDS6mIUvF
         +m+zpdY4l0PqvGyLTZ2WqTCwRtjd3FexS5BRNCCWgXseJ60HETuG1/Oycagi9IdSpD9I
         EDGa6UR90y0uLZAfK4PsHZprYJkpvtWqJcATxd2BHTG9yXnDbP/qbgosUD5awEJhzFlE
         HXVJzjuQp5PAUs4gKoCDVVPY0E/Ku3VaxZZcIRCig/1Z+wVUWGH3dLjfX6hZXrpC4vD8
         NcrT7P7qq65mycok12AazbsGsDjCW00MyZMvP3MzqlBXvLZ8vveFpxw3EsjW51AHJcgQ
         4CTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=e4ohXDN8;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id x20si564385wrg.3.2021.12.06.14.51.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:51 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210749.224917330@linutronix.de>
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
Subject: [patch V2 30/31] genirq/msi: Simplify sysfs handling
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:50 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=e4ohXDN8;       dkim=neutral
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
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 include/linux/msi.h |    8 +-
 kernel/irq/msi.c    |  196 +++++++++++++++++++++++-----------------------------
 2 files changed, 95 insertions(+), 109 deletions(-)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -72,7 +72,7 @@ struct irq_data;
 struct msi_desc;
 struct pci_dev;
 struct platform_msi_priv_data;
-struct attribute_group;
+struct device_attribute;
 
 void __get_cached_msi_msg(struct msi_desc *entry, struct msi_msg *msg);
 #ifdef CONFIG_GENERIC_MSI_IRQ
@@ -130,6 +130,7 @@ struct pci_msi_desc {
  * @dev:	Pointer to the device which uses this descriptor
  * @msg:	The last set MSI message cached for reuse
  * @affinity:	Optional pointer to a cpu affinity mask for this descriptor
+ * @sysfs_attr:	Pointer to sysfs device attribute
  *
  * @write_msi_msg:	Callback that may be called when the MSI message
  *			address or data changes
@@ -149,6 +150,9 @@ struct msi_desc {
 #ifdef CONFIG_IRQ_MSI_IOMMU
 	const void			*iommu_cookie;
 #endif
+#ifdef CONFIG_SYSFS
+	struct device_attribute		*sysfs_attrs;
+#endif
 
 	void (*write_msi_msg)(struct msi_desc *entry, void *data);
 	void *write_msi_msg_data;
@@ -172,7 +176,6 @@ enum msi_desc_filter {
 /**
  * msi_device_data - MSI per device data
  * @properties:		MSI properties which are interesting to drivers
- * @attrs:		Pointer to the sysfs attribute group
  * @platform_data:	Platform-MSI specific data
  * @list:		List of MSI descriptors associated to the device
  * @mutex:		Mutex protecting the MSI list
@@ -180,7 +183,6 @@ enum msi_desc_filter {
  */
 struct msi_device_data {
 	unsigned long			properties;
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
@@ -202,6 +203,7 @@ static void msi_device_data_release(stru
 int msi_setup_device_data(struct device *dev)
 {
 	struct msi_device_data *md;
+	int ret;
 
 	if (dev->msi.data)
 		return 0;
@@ -210,6 +212,12 @@ int msi_setup_device_data(struct device
 	if (!md)
 		return -ENOMEM;
 
+	ret = msi_sysfs_create_group(dev);
+	if (ret) {
+		devres_free(md);
+		return ret;
+	}
+
 	INIT_LIST_HEAD(&md->list);
 	mutex_init(&md->mutex);
 	dev->msi.data = md;
@@ -379,6 +387,20 @@ unsigned int msi_get_virq(struct device
 EXPORT_SYMBOL_GPL(msi_get_virq);
 
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
@@ -388,97 +410,74 @@ static ssize_t msi_mode_show(struct devi
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
 
+#ifdef CONFIG_PCI_MSI_ARCH_FALLBACKS
 /**
  * msi_device_populate_sysfs - Populate msi_irqs sysfs entries for a device
  * @dev:	The device (PCI, platform etc) which will get sysfs entries
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
 
@@ -489,28 +488,17 @@ int msi_device_populate_sysfs(struct dev
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
@@ -942,6 +930,12 @@ int __msi_domain_alloc_irqs(struct irq_d
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
@@ -986,18 +980,7 @@ int msi_domain_alloc_irqs_descs_locked(s
 
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
 
@@ -1022,6 +1005,7 @@ int msi_domain_alloc_irqs(struct irq_dom
 
 void __msi_domain_free_irqs(struct irq_domain *domain, struct device *dev)
 {
+	struct msi_domain_info *info = domain->host_data;
 	struct irq_data *irqd;
 	struct msi_desc *desc;
 	int i;
@@ -1036,6 +1020,8 @@ void __msi_domain_free_irqs(struct irq_d
 		}
 
 		irq_domain_free_irqs(desc->irq, desc->nvec_used);
+		if (info->flags & MSI_FLAG_DEV_SYSFS)
+			msi_sysfs_remove_desc(dev, desc);
 		desc->irq = 0;
 	}
 }
@@ -1064,8 +1050,6 @@ void msi_domain_free_irqs_descs_locked(s
 
 	lockdep_assert_held(&dev->msi.data->mutex);
 
-	if (info->flags & MSI_FLAG_DEV_SYSFS)
-		msi_device_destroy_sysfs(dev);
 	ops->domain_free_irqs(domain, dev);
 	msi_domain_free_msi_descs(info, dev);
 }

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210749.224917330%40linutronix.de.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBRNS633QKGQEFHXVQ6Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 21384211E16
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:22:31 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id k10sf16743666ioh.22
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:22:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678150; cv=pass;
        d=google.com; s=arc-20160816;
        b=KIfN5Nc+TbyFyDM1URLQ6Uopf9aYdC5fBd49DP9JLnI6gTpbRNf35fGd8sonlwQcMH
         i+9kYIP675rAboztTjrggF4WhQ4YxvQqPoG4kmVH83nbedhOJ59EOu/UHQ69d8OHNde+
         Vngjjy2D/GzdhdXNNLVoiqmSxWa4kqlqux/UjcrlwJ4kcrFRBEjTPKhGRexeWX5E+16I
         tgWxUZvzAV1DsohA2fiFsuy7HfhhRgo8cUgJcB+wG2mQk7Nm7MyCULN1YN81g2GcyBlT
         Tu93472eEYqms28SIsi9slzyrbgnW3iKUFb1Tm95jKBgZsL7+gf3rANxdNYjcn46zlWG
         EgBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ks0Nhgi0+zhWtKjPSh3h+mowUZBPsXllO9pvNOoFydE=;
        b=BcNjL9iDSFFsQHe1Sqot/3JxO28XxROwi0gKXWDfZqjbXPA+hxT2oBSV/9rnLaH1fO
         t0di3volO4kn1H/hlRpcM+wgR6Ar+Kf6gwN6ZNGQ/OiVrE2ltdQ3SGRL/b9F9FE8+ZoR
         lvt8D+IajzD0mFSCBBj9cBddWAURaARtiUiQpb70S3F6u+K4CXO9YLAYd/rIDKjFatRO
         cHFYa4bV7BtezsHoc0S2lbNIGhO08pg07fFBd9x2a6j/GLa4WzJGvUWy/lejyYzIpQYP
         iiYYLN76gC//r4CTGK6viZovy/CXH/6B0ttH0DhVhHaqotjTZRKcRWSgWJeSsVySE79H
         EgcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=bvbPsKl3;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ks0Nhgi0+zhWtKjPSh3h+mowUZBPsXllO9pvNOoFydE=;
        b=XfJZHvrTbjXDzydpf7lIsf1VBYdBgWlm32TrPLTRRpSoZOS44IzZMeg4iO9fRocZTK
         KtrWAqhu4IUoMc11DiZ9VX6MqSVtqn+Mk2YkDQyg7SkZn93WwSn/KNQjVk76ONtesE/w
         4mcGQVfefzN5s8xVERmnK7MNkBKeaDL78z3WSZ7Ij1XdhNVPgvSYQfTwgwf/yUF9YXyU
         1FxouefunaWv86lVdoHKDhSjdDvCk4reON1zhsDpNJkKTulAK+3exQu3/ci0zgkxDoiO
         y//diM5gux0BuhemWI7Bor+ZTx0SOiicvqKBNPyxNv6wqYYuBxLhUM0hMK/5KQxpVZo/
         dVZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ks0Nhgi0+zhWtKjPSh3h+mowUZBPsXllO9pvNOoFydE=;
        b=t46teWUPzOpcxO7EkLLqGO01/YD90zRKdZ9lASHWLj/V+Xk2L5HMhyTv6xXjNL8NP7
         YXbI7L473inhXo6wrx2VJOHAN2EDFQFVplxwPf4NcyChyoFLc7US7ZbR+AbwqKglhSqH
         azBcg7Ssl7GGYtivS/FvsZ9M0XYL69iRoz4HZs7R56m7SjkBdec8rUztSPvMs4mQ9ZR+
         +uC6oWz4nLL2nfcRtFRQmXzRtI93Yvaufwh0VvnepH5jQdkK3f0tH2CDZG8y/QWW9St5
         Xl8Yp+SMj7pb2snFoxtvXk7JaT1Nx+OtjxQSyw2524uF5trMu9gB+k87WlLrQKf0Iu7k
         NLpw==
X-Gm-Message-State: AOAM532OgkJCPkWKb3ufDtt6VkPKRRXeZsnQTJnscR6/p80Uru0Toltp
	nBlau8g+1sK5vmjFA3zCe5w=
X-Google-Smtp-Source: ABdhPJxA7eKKD5sSy2BeD2E4dlrmgj0/x1TizXV0dbqQiwXiRsE8mn/jHT+gWnzlX66hhh1F8tWBwQ==
X-Received: by 2002:a92:cd04:: with SMTP id z4mr11763514iln.165.1593678150048;
        Thu, 02 Jul 2020 01:22:30 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:bb4d:: with SMTP id w74ls1462818ili.6.gmail; Thu, 02 Jul
 2020 01:22:29 -0700 (PDT)
X-Received: by 2002:a92:cb10:: with SMTP id s16mr11877792ilo.192.1593678149715;
        Thu, 02 Jul 2020 01:22:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678149; cv=none;
        d=google.com; s=arc-20160816;
        b=bejBs1kAVhsYhcpyrT2LAwHFcEsGHqmy10v8JXcJ4vUOKRVmKv7gI/NiDvEdtDU6Uj
         P4v+Eh2rkd+eeVthTVLQMG8TBUNbik4frlFLyxq3kBEPi3NQ8xd10CNoVSvsY0omYQu8
         MVLEqzsOVjogDqsZvwxWetC3oVAbIEAq39kFQPYNQoFyDRlIslco+sqBUOHYMUnvQOg8
         FgKAIm4I+GBBHH92Vn1toORSOWPnxY4wALIdB6ijbIhZhsh6zRcg6Kkx/9tJmSAt+gdT
         DvfxyGjCqwVORq4IrGrDPryuCIhJyeFNQYoQTkCqysq8lev8IrQgPv2JftpwUdlaeSVT
         PbBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=iPErWFbFZdjeoHTdwXdeAC7MLZFVAu9f66Iyz/tSVV8=;
        b=Ac5QX1v25MBg5l28AllyHU50d8wZvaZzsDyKTaXaF0MKYJcyL34OmSHsE7SQbz4pSV
         78M27ZicabQmJK7TSM37AVfk2dr4XCwxqX/sBR13/sLSUZt/pElSpgceGIhJIEbtaUMz
         gxUZvJnxCwkcJJDxh8bE5Cq8fJX68iCki2g9bwrPxkMqVLYYASY9ZtIHlTkESn77lzI8
         utaLVTu1v8HuPB4/mgWJ+6Dp7fJ4D8Q06UuJBTJcj3VyJsVtC99zZoXKzWYUBGuSm73n
         uh1+9TxdoZoE5X2PMLmVfZKeSwGqABrfg9/cUVeaosw+g5JqVp4eqp+H5NRzd8okXHa3
         x07A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=bvbPsKl3;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id v16si542829iol.1.2020.07.02.01.22.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:22:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628MOtF017106;
	Thu, 2 Jul 2020 03:22:24 -0500
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628MOYp086031;
	Thu, 2 Jul 2020 03:22:24 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:22:24 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:22:24 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYI006145;
	Thu, 2 Jul 2020 03:22:19 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson
	<bjorn.andersson@linaro.org>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        "Michael S.
 Tsirkin" <mst@redhat.com>,
        Jason Wang <jasowang@redhat.com>, Paolo Bonzini
	<pbonzini@redhat.com>,
        Stefan Hajnoczi <stefanha@redhat.com>,
        Stefano
 Garzarella <sgarzare@redhat.com>
CC: <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-remoteproc@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        <linux-pci@vger.kernel.org>, <kvm@vger.kernel.org>,
        <virtualization@lists.linux-foundation.org>, <netdev@vger.kernel.org>
Subject: [RFC PATCH 06/22] vhost: Introduce configfs entry for configuring VHOST
Date: Thu, 2 Jul 2020 13:51:27 +0530
Message-ID: <20200702082143.25259-7-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=bvbPsKl3;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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

Create a configfs entry for each entry populated in
"struct vhost_device_id" in the VHOST driver and create a configfs entry
for each VHOST device. This is used to link VHOST driver to VHOST device
(by assigning deviceID and vendorID to the VHOST device) and register
VHOST device, thereby letting VHOST client driver to be selected in the
userspace.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/vhost/Makefile    |   2 +-
 drivers/vhost/vhost.c     |  63 +++++++
 drivers/vhost/vhost_cfs.c | 354 ++++++++++++++++++++++++++++++++++++++
 include/linux/vhost.h     |  11 ++
 4 files changed, 429 insertions(+), 1 deletion(-)
 create mode 100644 drivers/vhost/vhost_cfs.c

diff --git a/drivers/vhost/Makefile b/drivers/vhost/Makefile
index f3e1897cce85..6520c820c896 100644
--- a/drivers/vhost/Makefile
+++ b/drivers/vhost/Makefile
@@ -13,7 +13,7 @@ obj-$(CONFIG_VHOST_RING) += vringh.o
 obj-$(CONFIG_VHOST_VDPA) += vhost_vdpa.o
 vhost_vdpa-y := vdpa.o
 
-obj-$(CONFIG_VHOST)	+= vhost.o
+obj-$(CONFIG_VHOST)	+= vhost.o vhost_cfs.o
 
 obj-$(CONFIG_VHOST_IOTLB) += vhost_iotlb.o
 vhost_iotlb-y := iotlb.o
diff --git a/drivers/vhost/vhost.c b/drivers/vhost/vhost.c
index 8a3ad4698393..539619208783 100644
--- a/drivers/vhost/vhost.c
+++ b/drivers/vhost/vhost.c
@@ -3091,6 +3091,64 @@ static struct bus_type vhost_bus_type = {
 	.remove = vhost_dev_remove,
 };
 
+/**
+ * vhost_remove_cfs() - Remove configfs directory for vhost driver
+ * @driver: Vhost driver for which configfs directory has to be removed
+ *
+ * Remove configfs directory for vhost driver.
+ */
+static void vhost_remove_cfs(struct vhost_driver *driver)
+{
+	struct config_group *driver_group, *group;
+	struct config_item *item, *tmp;
+
+	driver_group = driver->group;
+
+	list_for_each_entry_safe(item, tmp, &driver_group->cg_children,
+				 ci_entry) {
+		group = to_config_group(item);
+		vhost_cfs_remove_driver_item(group);
+	}
+
+	vhost_cfs_remove_driver_group(driver_group);
+}
+
+/**
+ * vhost_add_cfs() - Add configfs directory for vhost driver
+ * @driver: Vhost driver for which configfs directory has to be added
+ *
+ * Add configfs directory for vhost driver.
+ */
+static int vhost_add_cfs(struct vhost_driver *driver)
+{
+	struct config_group *driver_group, *group;
+	const struct vhost_device_id *ids;
+	int ret, i;
+
+	driver_group = vhost_cfs_add_driver_group(driver->driver.name);
+	if (IS_ERR(driver_group))
+		return PTR_ERR(driver_group);
+
+	driver->group = driver_group;
+
+	ids = driver->id_table;
+	for (i = 0; ids[i].device; i++) {
+		group = vhost_cfs_add_driver_item(driver_group, ids[i].vendor,
+						  ids[i].device);
+		if (IS_ERR(group)) {
+			ret = PTR_ERR(driver_group);
+			goto err;
+		}
+	}
+
+	return 0;
+
+err:
+	vhost_remove_cfs(driver);
+
+	return ret;
+}
+
 /**
  * vhost_register_driver() - Register a vhost driver
  * @driver: Vhost driver that has to be registered
@@ -3107,6 +3165,10 @@ int vhost_register_driver(struct vhost_driver *driver)
 	if (ret)
 		return ret;
 
+	ret = vhost_add_cfs(driver);
+	if (ret)
+		return ret;
+
 	return 0;
 }
 EXPORT_SYMBOL_GPL(vhost_register_driver);
@@ -3119,6 +3181,7 @@ EXPORT_SYMBOL_GPL(vhost_register_driver);
  */
 void vhost_unregister_driver(struct vhost_driver *driver)
 {
+	vhost_remove_cfs(driver);
 	driver_unregister(&driver->driver);
 }
 EXPORT_SYMBOL_GPL(vhost_unregister_driver);
diff --git a/drivers/vhost/vhost_cfs.c b/drivers/vhost/vhost_cfs.c
new file mode 100644
index 000000000000..ae46e71968f1
--- /dev/null
+++ b/drivers/vhost/vhost_cfs.c
@@ -0,0 +1,354 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * configfs to configure VHOST
+ *
+ * Copyright (C) 2020 Texas Instruments
+ * Author: Kishon Vijay Abraham I <kishon@ti.com>
+ */
+
+#include <linux/configfs.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/vhost.h>
+#include <linux/slab.h>
+
+/* VHOST driver like net, scsi etc., */
+static struct config_group *vhost_driver_group;
+
+/* VHOST device like PCIe EP, NTB etc., */
+static struct config_group *vhost_device_group;
+
+struct vhost_driver_item {
+	struct config_group group;
+	u32 vendor;
+	u32 device;
+};
+
+struct vhost_driver_group {
+	struct config_group group;
+};
+
+struct vhost_device_item {
+	struct config_group group;
+	struct vhost_dev *vdev;
+};
+
+static inline
+struct vhost_driver_item *to_vhost_driver_item(struct config_item *item)
+{
+	return container_of(to_config_group(item), struct vhost_driver_item,
+			    group);
+}
+
+static inline
+struct vhost_device_item *to_vhost_device_item(struct config_item *item)
+{
+	return container_of(to_config_group(item), struct vhost_device_item,
+			    group);
+}
+
+/**
+ * vhost_cfs_device_link() - Create softlink of driver directory to device
+ *   directory
+ * @device_item: Represents configfs entry of vhost_dev
+ * @driver_item: Represents configfs of a particular entry of
+ *   vhost_device_id table in vhost driver
+ *
+ * Bind a vhost driver to vhost device in order to assign a particular
+ * device ID and vendor ID
+ */
+static int vhost_cfs_device_link(struct config_item *device_item,
+				 struct config_item *driver_item)
+{
+	struct vhost_driver_item *vdriver_item;
+	struct vhost_device_item *vdevice_item;
+	struct vhost_dev *vdev;
+	int ret;
+
+	vdriver_item = to_vhost_driver_item(driver_item);
+	vdevice_item = to_vhost_device_item(device_item);
+
+	vdev = vdevice_item->vdev;
+	vdev->id.device = vdriver_item->device;
+	vdev->id.vendor = vdriver_item->vendor;
+
+	ret = vhost_register_device(vdev);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+/**
+ * vhost_cfs_device_unlink() - Delete softlink of driver directory from device
+ *   directory
+ * @device_item: Represents configfs entry of vhost_dev
+ * @driver_item: Represents configfs of a particular entry of
+ *   vhost_device_id table in vhost driver
+ *
+ * Un-bind vhost driver from vhost device.
+ */
+static void vhost_cfs_device_unlink(struct config_item *device_item,
+				    struct config_item *driver_item)
+{
+	struct vhost_driver_item *vdriver_item;
+	struct vhost_device_item *vdevice_item;
+	struct vhost_dev *vdev;
+
+	vdriver_item = to_vhost_driver_item(driver_item);
+	vdevice_item = to_vhost_device_item(device_item);
+
+	vdev = vdevice_item->vdev;
+	vhost_unregister_device(vdev);
+}
+
+static struct configfs_item_operations vhost_cfs_device_item_ops = {
+	.allow_link	= vhost_cfs_device_link,
+	.drop_link	= vhost_cfs_device_unlink,
+};
+
+static const struct config_item_type vhost_cfs_device_item_type = {
+	.ct_item_ops	= &vhost_cfs_device_item_ops,
+	.ct_owner	= THIS_MODULE,
+};
+
+/**
+ * vhost_cfs_add_device_item() - Create configfs directory for new vhost_dev
+ * @vdev: vhost device for which configfs directory has to be created
+ *
+ * Create configfs directory for new vhost device. Drivers that create
+ * vhost device can invoke this API if they require the vhost device to
+ * be assigned a device ID and vendorID by the user.
+ */
+struct config_group *vhost_cfs_add_device_item(struct vhost_dev *vdev)
+{
+	struct device *dev = &vdev->dev;
+	struct vhost_device_item *vdevice_item;
+	struct config_group *group;
+	const char *name;
+	int ret;
+
+	vdevice_item = kzalloc(sizeof(*vdevice_item), GFP_KERNEL);
+	if (!vdevice_item)
+		return ERR_PTR(-ENOMEM);
+
+	name = dev_name(dev->parent);
+	group = &vdevice_item->group;
+	config_group_init_type_name(group, name, &vhost_cfs_device_item_type);
+
+	ret = configfs_register_group(vhost_device_group, group);
+	if (ret)
+		return ERR_PTR(ret);
+
+	vdevice_item->vdev = vdev;
+
+	return group;
+}
+EXPORT_SYMBOL(vhost_cfs_add_device_item);
+
+/**
+ * vhost_cfs_remove_device_item() - Remove configfs directory for the vhost_dev
+ * @vdev: vhost device for which configfs directory has to be removed
+ *
+ * Remove configfs directory for the vhost device.
+ */
+void vhost_cfs_remove_device_item(struct config_group *group)
+{
+	struct vhost_device_item *vdevice_item;
+
+	if (!group)
+		return;
+
+	vdevice_item = container_of(group, struct vhost_device_item, group);
+	configfs_unregister_group(&vdevice_item->group);
+	kfree(vdevice_item);
+}
+EXPORT_SYMBOL(vhost_cfs_remove_device_item);
+
+static const struct config_item_type vhost_driver_item_type = {
+	.ct_owner	= THIS_MODULE,
+};
+
+/**
+ * vhost_cfs_add_driver_item() - Add configfs directory for an entry in
+ *   vhost_device_id
+ * @driver_group: configfs directory corresponding to the vhost driver
+ * @vendor: vendor ID populated in vhost_device_id table by vhost driver
+ * @device: device ID populated in vhost_device_id table by vhost driver
+ *
+ * Add configfs directory for each entry in vhost_device_id populated by
+ * vhost driver. Store the device ID and vendor ID in a local data structure
+ * and use it when user links this directory with a vhost device configfs
+ * directory.
+ */
+struct config_group *
+vhost_cfs_add_driver_item(struct config_group *driver_group, u32 vendor,
+			  u32 device)
+{
+	struct vhost_driver_item *vdriver_item;
+	struct config_group *group;
+	char name[20];
+	int ret;
+
+	vdriver_item = kzalloc(sizeof(*vdriver_item), GFP_KERNEL);
+	if (!vdriver_item)
+		return ERR_PTR(-ENOMEM);
+
+	vdriver_item->vendor = vendor;
+	vdriver_item->device = device;
+
+	snprintf(name, sizeof(name), "%08x:%08x", vendor, device);
+	group = &vdriver_item->group;
+
+	config_group_init_type_name(group, name, &vhost_driver_item_type);
+	ret = configfs_register_group(driver_group, group);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return group;
+}
+EXPORT_SYMBOL(vhost_cfs_add_driver_item);
+
+/**
+ * vhost_cfs_remove_driver_item() - Remove configfs directory corresponding
+ *   to an entry in vhost_device_id
+ * @group: Configfs group corresponding to an entry in vhost_device_id
+ *
+ * Remove configfs directory corresponding to an entry in vhost_device_id
+ */
+void vhost_cfs_remove_driver_item(struct config_group *group)
+{
+	struct vhost_driver_item *vdriver_item;
+
+	if (!group)
+		return;
+
+	vdriver_item = container_of(group, struct vhost_driver_item, group);
+	configfs_unregister_group(&vdriver_item->group);
+	kfree(vdriver_item);
+}
+EXPORT_SYMBOL(vhost_cfs_remove_driver_item);
+
+static const struct config_item_type vhost_driver_group_type = {
+	.ct_owner	= THIS_MODULE,
+};
+
+/**
+ * vhost_cfs_add_driver_group() - Add configfs directory for vhost driver
+ * @name: Name of the vhost driver as populated in driver structure
+ *
+ * Add configfs directory for vhost driver.
+ */
+struct config_group *vhost_cfs_add_driver_group(const char *name)
+{
+	struct vhost_driver_group *vdriver_group;
+	struct config_group *group;
+
+	vdriver_group = kzalloc(sizeof(*vdriver_group), GFP_KERNEL);
+	if (!vdriver_group)
+		return ERR_PTR(-ENOMEM);
+
+	group = &vdriver_group->group;
+
+	config_group_init_type_name(group, name, &vhost_driver_group_type);
+	configfs_register_group(vhost_driver_group, group);
+
+	return group;
+}
+EXPORT_SYMBOL(vhost_cfs_add_driver_group);
+
+/**
+ * vhost_cfs_remove_driver_group() - Remove configfs directory for vhost driver
+ * @group: Configfs group corresponding to the vhost driver
+ *
+ * Remove configfs directory for vhost driver.
+ */
+void vhost_cfs_remove_driver_group(struct config_group *group)
+{
+	if (IS_ERR_OR_NULL(group))
+		return;
+
+	configfs_unregister_default_group(group);
+}
+EXPORT_SYMBOL(vhost_cfs_remove_driver_group);
+
+static const struct config_item_type vhost_driver_type = {
+	.ct_owner	= THIS_MODULE,
+};
+
+static const struct config_item_type vhost_device_type = {
+	.ct_owner	= THIS_MODULE,
+};
+
+static const struct config_item_type vhost_type = {
+	.ct_owner	= THIS_MODULE,
+};
+
+static struct configfs_subsystem vhost_cfs_subsys = {
+	.su_group = {
+		.cg_item = {
+			.ci_namebuf = "vhost",
+			.ci_type = &vhost_type,
+		},
+	},
+	.su_mutex = __MUTEX_INITIALIZER(vhost_cfs_subsys.su_mutex),
+};
+
+static int __init vhost_cfs_init(void)
+{
+	int ret;
+	struct config_group *root = &vhost_cfs_subsys.su_group;
+
+	config_group_init(root);
+
+	ret = configfs_register_subsystem(&vhost_cfs_subsys);
+	if (ret) {
+		pr_err("Error %d while registering subsystem %s\n",
+		       ret, root->cg_item.ci_namebuf);
+		goto err;
+	}
+
+	vhost_driver_group =
+		configfs_register_default_group(root, "vhost-client",
+						&vhost_driver_type);
+	if (IS_ERR(vhost_driver_group)) {
+		ret = PTR_ERR(vhost_driver_group);
+		pr_err("Error %d while registering channel group\n",
+		       ret);
+		goto err_vhost_driver_group;
+	}
+
+	vhost_device_group =
+		configfs_register_default_group(root, "vhost-transport",
+						&vhost_device_type);
+	if (IS_ERR(vhost_device_group)) {
+		ret = PTR_ERR(vhost_device_group);
+		pr_err("Error %d while registering virtproc group\n",
+		       ret);
+		goto err_vhost_device_group;
+	}
+
+	return 0;
+
+err_vhost_device_group:
+	configfs_unregister_default_group(vhost_driver_group);
+
+err_vhost_driver_group:
+	configfs_unregister_subsystem(&vhost_cfs_subsys);
+
+err:
+	return ret;
+}
+module_init(vhost_cfs_init);
+
+static void __exit vhost_cfs_exit(void)
+{
+	configfs_unregister_default_group(vhost_device_group);
+	configfs_unregister_default_group(vhost_driver_group);
+	configfs_unregister_subsystem(&vhost_cfs_subsys);
+}
+module_exit(vhost_cfs_exit);
+
+MODULE_DESCRIPTION("PCI VHOST CONFIGFS");
+MODULE_AUTHOR("Kishon Vijay Abraham I <kishon@ti.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/include/linux/vhost.h b/include/linux/vhost.h
index 8efb9829c1b1..be9341ffd266 100644
--- a/include/linux/vhost.h
+++ b/include/linux/vhost.h
@@ -2,6 +2,7 @@
 #ifndef _VHOST_H
 #define _VHOST_H
 
+#include <linux/configfs.h>
 #include <linux/eventfd.h>
 #include <linux/mm.h>
 #include <linux/mutex.h>
@@ -181,6 +182,7 @@ struct vhost_config_ops {
 struct vhost_driver {
 	struct device_driver driver;
 	struct vhost_device_id *id_table;
+	struct config_group *group;
 	int (*probe)(struct vhost_dev *dev);
 	int (*remove)(struct vhost_dev *dev);
 };
@@ -233,6 +235,15 @@ void vhost_unregister_driver(struct vhost_driver *driver);
 int vhost_register_device(struct vhost_dev *vdev);
 void vhost_unregister_device(struct vhost_dev *vdev);
 
+struct config_group *vhost_cfs_add_driver_group(const char *name);
+void vhost_cfs_remove_driver_group(struct config_group *group);
+struct config_group *
+vhost_cfs_add_driver_item(struct config_group *driver_group, u32 vendor,
+			  u32 device);
+void vhost_cfs_remove_driver_item(struct config_group *group);
+struct config_group *vhost_cfs_add_device_item(struct vhost_dev *vdev);
+void vhost_cfs_remove_device_item(struct config_group *group);
+
 int vhost_create_vqs(struct vhost_dev *vdev, unsigned int nvqs,
 		     unsigned int num_bufs, struct vhost_virtqueue *vqs[],
 		     vhost_vq_callback_t *callbacks[],
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-7-kishon%40ti.com.

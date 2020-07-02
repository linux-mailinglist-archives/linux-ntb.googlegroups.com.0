Return-Path: <linux-ntb+bncBCOOP4VF5IDRBWFS633QKGQEAO7EN2I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 87043211E23
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:22:49 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id y136sf277955ybe.5
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:22:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678168; cv=pass;
        d=google.com; s=arc-20160816;
        b=UmM16j+jmPjViuG5vo8bbyqCD6XzLa6GjNsB7viCW1Lj6ltH32gcN7CU4lghovAYl8
         6cbkMqkomyfIyryedPfTesRwE4zHAxFL9+F4qRMIvrY+ixzybB+JkoLJeJPvolEVhMN7
         uSsfgbxpjpNx+gkN9d04bchw0Zyc5ljtg08INuKej4XF90Ou47ks/7PUktq/wgDLbfZw
         i+9iKJKzvnc8vXmmoAxKGlo9naUn5NfyJq6okXwlubR3hrZyV8hmVK6uA00t4BF+UWEJ
         0bOBtuhPjehtpZRxkii5+b2FZaDMGkGe/TJ4ISDBD/RVyvptWlJ4T5akYocKWXaOZZdn
         0owg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=LOIxYBdX4gR+nhn2Ap5JtDzVtd5YWeCaTztv+8eKS8g=;
        b=uRN2wr3BdstvhgZz6omJfN4kFKYOxNnYYIjsm4dh//aaQFcnGILjUsjnK80/DFngcG
         dYIKUWoh4hc4+aFmZ5FHedaf8t9MaLa9hr2B6PDimsKYOIjZst9owTvUiW82BEEBdoxB
         GfX3ypZoxPyrzXmvL/5hixvBrCXDO/HCovzlOgN8RFAvQPdZ4VS5qU2rdBdX8XQEoV7g
         UDHMvAKTsMuimmE/fbMQ+0IurGjhWEmTwK5llyT+Blf1TGjXFkCiHjILA7QpvWbklc1b
         gL4/u8BQmGN0P0P9qm+4tmrkFcGdyyt6O6GSXHcbYB8rpye+XrKSbHP2uctqJ9DVzxu+
         tPGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=AoUMUelO;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LOIxYBdX4gR+nhn2Ap5JtDzVtd5YWeCaTztv+8eKS8g=;
        b=Qo3mjklmxnCj7myMxHBJJdnJwmjvb6U+5F4AXlVJvntNvxMjz0Rq2lc+8qxAhzlmT9
         b6gDc0zTu+lfZpquStBzf2ho+IglS/RnA4fCnaZiRhNb9FZmHCOkPlTq0Fe7ATF7kAkm
         xACX+UMiF9Uy+fLJyP/d1aHFPMPu1r2nh2yxbC8Fbq0HvRNDgMlwneGBH3/qaCJnOFxJ
         LlzbnLo9rjFpq1v6XoOq8DsejezzoGJUIOGbICCZo+sgtvVmHa89sMXT/CpSFbPTn8HR
         scg6gX8XhAC81Hx7bsBJcZbSHDnVe58SVyCgTS0OSQYBmT7afNQcjKCycoQ1osG4IXa0
         jHfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LOIxYBdX4gR+nhn2Ap5JtDzVtd5YWeCaTztv+8eKS8g=;
        b=sg9hqQ6otGgpf/HbbwSko/TmiOYe0Bi5uzjbTKf7vhPf2uGKazUupXqgakVrnEj9v+
         7OL2A2xA62UiHDqsW4jAOL4+9/fOln1QTNnx+7pJfHNHOqNxgiCmPGUrqx7IpkVB1+xk
         BdiiUhgYPM7UkhrEwZ2bLJ8NpuyrH6AsGy/POOo2XtQIJ5pPe928IN8MUo5dVhXbVPNB
         WpRetuVlKH7YNqAkj2kn7T+s1sYDwWRpjkstC7UwsMhxL1QszCbE0Bj60tz3Awp0k1s1
         8a8kaS0CMPwogyeXNaFr8oglVZ2WJYHHY7MDP65pN/gEwvBaEFfaZW7uXdgf/Sv2EUo1
         NIoQ==
X-Gm-Message-State: AOAM530/rVJ1PrWT7Y2HE1JOwU8RsQcR1HPOYQB2m5MgOnif+Oe923VP
	jMWafj/oiOKA38zXtIG4R+U=
X-Google-Smtp-Source: ABdhPJyKfUyfC/NQUVqwW2wJg9+kw04MUrjJLoApWKFiBSOL/uFsC/yR97sX5tE2in/b8Qfhrp17Tw==
X-Received: by 2002:a25:b7cc:: with SMTP id u12mr33503643ybj.173.1593678168327;
        Thu, 02 Jul 2020 01:22:48 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:7003:: with SMTP id l3ls2043054ybc.2.gmail; Thu, 02 Jul
 2020 01:22:48 -0700 (PDT)
X-Received: by 2002:a25:9081:: with SMTP id t1mr44358368ybl.425.1593678168010;
        Thu, 02 Jul 2020 01:22:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678168; cv=none;
        d=google.com; s=arc-20160816;
        b=mG+4yyDvNn92jEw17MnjjZbZLL2boxtGYnjjm2pdqxxoekzugm1Ay9OQl2JnAcMMiy
         +tgKvohRBxV1mXXXUuAuT/9GYJHRB7E0BpIc6k9dVUZcSigz/27+futk4ncsjWIRjcg6
         Z2VxIxqDKZfFfBdLRbcIZ84uqpSOkQGkbxYV51R1pUVXvsudmfkoRq8AxwMIAAaJogAf
         wwIPYALSV4qc14i2g1ms7IdTJZqOJ52MGsXLSiMK0l4QeKYSz0zFx/VCvPKLr08fS+Zo
         X6qCIggNXzTBQhR/6+tBLZjwFOLvU21vbdsj0tIA7TxcskZU+QnCjZ54tsw9soZ1ktNX
         lVgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=1qzLaSMoiyDzc/yo3NiznOfrfn9/79kRBidf51KJ/xI=;
        b=WNFu/HWdeAoMAFisN+ZQpIg6EI7u1TYDKaIKkC9KANps9fnyBNFjQUPGyVlfID5ZOW
         1zgHDL+/0nfgmtlhv8KuejUc1gzAkZ/8tOdkqLWCIdIj0Jl8sdbxFns0twIOiUHSMV+N
         bkky0OI9TWXVbci/hF29HDr8ybJ8LZDzRMnZOHRNzEfuzL32/GQyeuTMTRxmpzZL4KDa
         GNnVlChAYQE5nJWwcCTDDyEsWvR1HLVkIeI8tZvyBJNPDWqze/fFiREvoX//hjrADwFm
         0s7iysJjVwTcWnJvkTfQLbjQLAk6SYBnMQ7T81pcq0bnyuCptF9uYLWkPp/O7hGsyfei
         icQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=AoUMUelO;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id a7si408890ybj.5.2020.07.02.01.22.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:22:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628Mf2X042283;
	Thu, 2 Jul 2020 03:22:41 -0500
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628Mfc5065436
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:22:41 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:22:41 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:22:41 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYL006145;
	Thu, 2 Jul 2020 03:22:36 -0500
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
Subject: [RFC PATCH 09/22] rpmsg: Introduce configfs entry for configuring rpmsg
Date: Thu, 2 Jul 2020 13:51:30 +0530
Message-ID: <20200702082143.25259-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=AoUMUelO;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted
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

Create a configfs entry for each "struct rpmsg_device_id" populated
in rpmsg client driver and create a configfs entry for each rpmsg
device. This will be used to bind a rpmsg client driver to a rpmsg
device in order to create a new rpmsg channel.

This is used for creating channel for VHOST based rpmsg bus (channels
are created in VIRTIO based bus during namespace announcement).

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/rpmsg/Makefile         |   2 +-
 drivers/rpmsg/rpmsg_cfs.c      | 394 +++++++++++++++++++++++++++++++++
 drivers/rpmsg/rpmsg_core.c     |   7 +
 drivers/rpmsg/rpmsg_internal.h |  16 ++
 include/linux/rpmsg.h          |   5 +
 5 files changed, 423 insertions(+), 1 deletion(-)
 create mode 100644 drivers/rpmsg/rpmsg_cfs.c

diff --git a/drivers/rpmsg/Makefile b/drivers/rpmsg/Makefile
index ae92a7fb08f6..047acfda518a 100644
--- a/drivers/rpmsg/Makefile
+++ b/drivers/rpmsg/Makefile
@@ -1,5 +1,5 @@
 # SPDX-License-Identifier: GPL-2.0
-obj-$(CONFIG_RPMSG)		+= rpmsg_core.o
+obj-$(CONFIG_RPMSG)		+= rpmsg_core.o rpmsg_cfs.o
 obj-$(CONFIG_RPMSG_CHAR)	+= rpmsg_char.o
 obj-$(CONFIG_RPMSG_MTK_SCP)	+= mtk_rpmsg.o
 obj-$(CONFIG_RPMSG_QCOM_GLINK_RPM) += qcom_glink_rpm.o
diff --git a/drivers/rpmsg/rpmsg_cfs.c b/drivers/rpmsg/rpmsg_cfs.c
new file mode 100644
index 000000000000..a5c77aba00ee
--- /dev/null
+++ b/drivers/rpmsg/rpmsg_cfs.c
@@ -0,0 +1,394 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * configfs to configure RPMSG
+ *
+ * Copyright (C) 2020 Texas Instruments
+ * Author: Kishon Vijay Abraham I <kishon@ti.com>
+ */
+
+#include <linux/configfs.h>
+#include <linux/device.h>
+#include <linux/module.h>
+#include <linux/idr.h>
+#include <linux/slab.h>
+
+#include "rpmsg_internal.h"
+
+static struct config_group *channel_group;
+static struct config_group *virtproc_group;
+
+enum rpmsg_channel_status {
+	STATUS_FREE,
+	STATUS_BUSY,
+};
+
+struct rpmsg_channel {
+	struct config_item item;
+	struct device *dev;
+	enum rpmsg_channel_status status;
+};
+
+struct rpmsg_channel_group {
+	struct config_group group;
+};
+
+struct rpmsg_virtproc_group {
+	struct config_group group;
+	struct device *dev;
+	const struct rpmsg_virtproc_ops *ops;
+};
+
+static inline
+struct rpmsg_channel *to_rpmsg_channel(struct config_item *channel_item)
+{
+	return container_of(channel_item, struct rpmsg_channel, item);
+}
+
+static inline struct rpmsg_channel_group
+*to_rpmsg_channel_group(struct config_group *channel_group)
+{
+	return container_of(channel_group, struct rpmsg_channel_group, group);
+}
+
+static inline
+struct rpmsg_virtproc_group *to_rpmsg_virtproc_group(struct config_item *item)
+{
+	return container_of(to_config_group(item), struct rpmsg_virtproc_group,
+			    group);
+}
+
+/**
+ * rpmsg_virtproc_channel_link() - Create softlink of rpmsg client device
+ *   directory to virtproc configfs directory
+ * @virtproc_item: Config item representing configfs entry of virtual remote
+ *   processor
+ * @channel_item: Config item representing configfs entry of rpmsg client
+ *   driver
+ *
+ * Bind rpmsg client device to virtual remote processor by creating softlink
+ * between rpmsg client device directory to virtproc configfs directory
+ * in order to create a new rpmsg channel.
+ */
+static int rpmsg_virtproc_channel_link(struct config_item *virtproc_item,
+				       struct config_item *channel_item)
+{
+	struct rpmsg_virtproc_group *vgroup;
+	struct rpmsg_channel *channel;
+	struct config_group *cgroup;
+	struct device *dev;
+
+	vgroup = to_rpmsg_virtproc_group(virtproc_item);
+	channel = to_rpmsg_channel(channel_item);
+
+	if (channel->status == STATUS_BUSY)
+		return -EBUSY;
+
+	cgroup = channel_item->ci_group;
+
+	if (vgroup->ops && vgroup->ops->create_channel) {
+		dev = vgroup->ops->create_channel(vgroup->dev,
+						  cgroup->cg_item.ci_name);
+		if (IS_ERR_OR_NULL(dev))
+			return PTR_ERR(dev);
+	}
+
+	channel->dev = dev;
+	channel->status = STATUS_BUSY;
+
+	return 0;
+}
+
+/**
+ * rpmsg_virtproc_channel_unlink() - Remove softlink of rpmsg client device
+ *   directory from virtproc configfs directory
+ * @virtproc_item: Config item representing configfs entry of virtual remote
+ *   processor
+ * @channel_item: Config item representing configfs entry of rpmsg client
+ *   driver
+ *
+ * Unbind rpmsg client device from virtual remote processor by removing softlink
+ * of rpmsg client device directory from virtproc configfs directory which
+ * deletes the rpmsg channel.
+ */
+static void rpmsg_virtproc_channel_unlink(struct config_item *virtproc_item,
+					  struct config_item *channel_item)
+{
+	struct rpmsg_virtproc_group *vgroup;
+	struct rpmsg_channel *channel;
+
+	channel = to_rpmsg_channel(channel_item);
+	vgroup = to_rpmsg_virtproc_group(virtproc_item);
+
+	if (vgroup->ops && vgroup->ops->delete_channel)
+		vgroup->ops->delete_channel(channel->dev);
+
+	channel->status = STATUS_FREE;
+}
+
+static struct configfs_item_operations rpmsg_virtproc_item_ops = {
+	.allow_link	= rpmsg_virtproc_channel_link,
+	.drop_link	= rpmsg_virtproc_channel_unlink,
+};
+
+static const struct config_item_type rpmsg_virtproc_item_type = {
+	.ct_item_ops	= &rpmsg_virtproc_item_ops,
+	.ct_owner	= THIS_MODULE,
+};
+
+/**
+ * rpmsg_cfs_add_virtproc_group() - Add new configfs directory for virtproc
+ *   device
+ * @dev: Device representing the virtual remote processor
+ * @ops: rpmsg_virtproc_ops to create or delete rpmsg channel
+ *
+ * Add new configfs directory for virtproc device. The rpmsg client driver's
+ * configfs entry can be linked with this directory for creating a new
+ * rpmsg channel and the link can be removed for deleting the rpmsg channel.
+ */
+struct config_group *
+rpmsg_cfs_add_virtproc_group(struct device *dev,
+			     const struct rpmsg_virtproc_ops *ops)
+{
+	struct rpmsg_virtproc_group *vgroup;
+	struct config_group *group;
+	struct device *vdev;
+	int ret;
+
+	vgroup = kzalloc(sizeof(*vgroup), GFP_KERNEL);
+	if (!vgroup)
+		return ERR_PTR(-ENOMEM);
+
+	group = &vgroup->group;
+	config_group_init_type_name(group, dev_name(dev),
+				    &rpmsg_virtproc_item_type);
+	ret = configfs_register_group(virtproc_group, group);
+	if (ret)
+		goto err_register_group;
+
+	if (!try_module_get(ops->owner)) {
+		ret = -EPROBE_DEFER;
+		goto err_module_get;
+	}
+
+	vdev = get_device(dev);
+	vgroup->dev = vdev;
+	vgroup->ops = ops;
+
+	return group;
+
+err_module_get:
+	configfs_unregister_group(group);
+
+err_register_group:
+	kfree(vgroup);
+
+	return ERR_PTR(ret);
+}
+EXPORT_SYMBOL(rpmsg_cfs_add_virtproc_group);
+
+/**
+ * rpmsg_cfs_remove_virtproc_group() - Remove the configfs directory for
+ *   virtproc device
+ * @group: config_group of the virtproc device
+ *
+ * Remove the configfs directory for virtproc device.
+ */
+void rpmsg_cfs_remove_virtproc_group(struct config_group *group)
+{
+	struct rpmsg_virtproc_group *vgroup;
+
+	if (!group)
+		return;
+
+	vgroup = container_of(group, struct rpmsg_virtproc_group, group);
+	put_device(vgroup->dev);
+	module_put(vgroup->ops->owner);
+	configfs_unregister_group(&vgroup->group);
+	kfree(vgroup);
+}
+EXPORT_SYMBOL(rpmsg_cfs_remove_virtproc_group);
+
+static const struct config_item_type rpmsg_channel_item_type = {
+	.ct_owner	= THIS_MODULE,
+};
+
+/**
+ * rpmsg_channel_make() - Allow user to create sub-directory of rpmsg client
+ *   driver
+ * @name: Name of the sub-directory created by the user.
+ *
+ * Invoked when user creates a sub-directory to the configfs directory
+ * representing the rpmsg client driver. This can be linked with the virtproc
+ * directory for creating a new rpmsg channel.
+ */
+static struct config_item *
+rpmsg_channel_make(struct config_group *group, const char *name)
+{
+	struct rpmsg_channel *channel;
+
+	channel = kzalloc(sizeof(*channel), GFP_KERNEL);
+	if (!channel)
+		return ERR_PTR(-ENOMEM);
+
+	channel->status = STATUS_FREE;
+
+	config_item_init_type_name(&channel->item, name, &rpmsg_channel_item_type);
+	return &channel->item;
+}
+
+/**
+ * rpmsg_channel_drop() - Allow user to delete sub-directory of rpmsg client
+ *   driver
+ * @item: Config item representing the sub-directory the user created returned
+ *   by rpmsg_channel_make()
+ *
+ * Invoked when user creates a sub-directory to the configfs directory
+ * representing the rpmsg client driver. This can be linked with the virtproc
+ * directory for creating a new rpmsg channel.
+ */
+static void rpmsg_channel_drop(struct config_group *group, struct config_item *item)
+{
+	struct rpmsg_channel *channel;
+
+	channel = to_rpmsg_channel(item);
+	kfree(channel);
+}
+
+static struct configfs_group_operations rpmsg_channel_group_ops = {
+	.make_item     = &rpmsg_channel_make,
+	.drop_item      = &rpmsg_channel_drop,
+};
+
+static const struct config_item_type rpmsg_channel_group_type = {
+	.ct_group_ops	= &rpmsg_channel_group_ops,
+	.ct_owner	= THIS_MODULE,
+};
+
+/**
+ * rpmsg_cfs_add_channel_group() - Create a configfs directory for each
+ *   registered rpmsg client driver
+ * @name: The name of the rpmsg client driver
+ *
+ * Create a configfs directory for each registered rpmsg client driver. The
+ * user can create sub-directory within this directory for creating
+ * rpmsg channels to be used by the rpmsg client driver.
+ */
+struct config_group *rpmsg_cfs_add_channel_group(const char *name)
+{
+	struct rpmsg_channel_group *cgroup;
+	struct config_group *group;
+	int ret;
+
+	cgroup = kzalloc(sizeof(*cgroup), GFP_KERNEL);
+	if (!cgroup)
+		return ERR_PTR(-ENOMEM);
+
+	group = &cgroup->group;
+	config_group_init_type_name(group, name, &rpmsg_channel_group_type);
+	ret = configfs_register_group(channel_group, group);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return group;
+}
+EXPORT_SYMBOL(rpmsg_cfs_add_channel_group);
+
+/**
+ * rpmsg_cfs_remove_channel_group() - Remove the configfs directory associated
+ *   with the rpmsg client driver
+ * @group: Config group representing the rpmsg client driver
+ *
+ * Remove the configfs directory associated with the rpmsg client driver.
+ */
+void rpmsg_cfs_remove_channel_group(struct config_group *group)
+{
+	struct rpmsg_channel_group *cgroup;
+
+	if (IS_ERR_OR_NULL(group))
+		return;
+
+	cgroup = to_rpmsg_channel_group(group);
+	configfs_unregister_default_group(group);
+	kfree(cgroup);
+}
+EXPORT_SYMBOL(rpmsg_cfs_remove_channel_group);
+
+static const struct config_item_type rpmsg_channel_type = {
+	.ct_owner	= THIS_MODULE,
+};
+
+static const struct config_item_type rpmsg_virtproc_type = {
+	.ct_owner	= THIS_MODULE,
+};
+
+static const struct config_item_type rpmsg_type = {
+	.ct_owner	= THIS_MODULE,
+};
+
+static struct configfs_subsystem rpmsg_cfs_subsys = {
+	.su_group = {
+		.cg_item = {
+			.ci_namebuf = "rpmsg",
+			.ci_type = &rpmsg_type,
+		},
+	},
+	.su_mutex = __MUTEX_INITIALIZER(rpmsg_cfs_subsys.su_mutex),
+};
+
+static int __init rpmsg_cfs_init(void)
+{
+	int ret;
+	struct config_group *root = &rpmsg_cfs_subsys.su_group;
+
+	config_group_init(root);
+
+	ret = configfs_register_subsystem(&rpmsg_cfs_subsys);
+	if (ret) {
+		pr_err("Error %d while registering subsystem %s\n",
+		       ret, root->cg_item.ci_namebuf);
+		goto err;
+	}
+
+	channel_group = configfs_register_default_group(root, "channel",
+							&rpmsg_channel_type);
+	if (IS_ERR(channel_group)) {
+		ret = PTR_ERR(channel_group);
+		pr_err("Error %d while registering channel group\n",
+		       ret);
+		goto err_channel_group;
+	}
+
+	virtproc_group =
+		configfs_register_default_group(root, "virtproc",
+						&rpmsg_virtproc_type);
+	if (IS_ERR(virtproc_group)) {
+		ret = PTR_ERR(virtproc_group);
+		pr_err("Error %d while registering virtproc group\n",
+		       ret);
+		goto err_virtproc_group;
+	}
+
+	return 0;
+
+err_virtproc_group:
+	configfs_unregister_default_group(channel_group);
+
+err_channel_group:
+	configfs_unregister_subsystem(&rpmsg_cfs_subsys);
+
+err:
+	return ret;
+}
+module_init(rpmsg_cfs_init);
+
+static void __exit rpmsg_cfs_exit(void)
+{
+	configfs_unregister_default_group(virtproc_group);
+	configfs_unregister_default_group(channel_group);
+	configfs_unregister_subsystem(&rpmsg_cfs_subsys);
+}
+module_exit(rpmsg_cfs_exit);
+
+MODULE_DESCRIPTION("PCI RPMSG CONFIGFS");
+MODULE_AUTHOR("Kishon Vijay Abraham I <kishon@ti.com>");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/rpmsg/rpmsg_core.c b/drivers/rpmsg/rpmsg_core.c
index e330ec4dfc33..68569fec03e2 100644
--- a/drivers/rpmsg/rpmsg_core.c
+++ b/drivers/rpmsg/rpmsg_core.c
@@ -563,8 +563,15 @@ EXPORT_SYMBOL(rpmsg_unregister_device);
  */
 int __register_rpmsg_driver(struct rpmsg_driver *rpdrv, struct module *owner)
 {
+	const struct rpmsg_device_id *ids = rpdrv->id_table;
 	rpdrv->drv.bus = &rpmsg_bus;
 	rpdrv->drv.owner = owner;
+
+	while (ids && ids->name[0]) {
+		rpmsg_cfs_add_channel_group(ids->name);
+		ids++;
+	}
+
 	return driver_register(&rpdrv->drv);
 }
 EXPORT_SYMBOL(__register_rpmsg_driver);
diff --git a/drivers/rpmsg/rpmsg_internal.h b/drivers/rpmsg/rpmsg_internal.h
index 3fc83cd50e98..39b3a5caf242 100644
--- a/drivers/rpmsg/rpmsg_internal.h
+++ b/drivers/rpmsg/rpmsg_internal.h
@@ -68,6 +68,18 @@ struct rpmsg_endpoint_ops {
 			     poll_table *wait);
 };
 
+/**
+ * struct rpmsg_virtproc_ops - indirection table for rpmsg_virtproc operations
+ * @create_channel: Create a new rpdev channel
+ * @delete_channel: Delete the rpdev channel
+ * @owner: Owner of the module holding the ops
+ */
+struct rpmsg_virtproc_ops {
+	struct device *(*create_channel)(struct device *dev, const char *name);
+	void (*delete_channel)(struct device *dev);
+	struct module *owner;
+};
+
 int rpmsg_register_device(struct rpmsg_device *rpdev);
 int rpmsg_unregister_device(struct device *parent,
 			    struct rpmsg_channel_info *chinfo);
@@ -75,6 +87,10 @@ int rpmsg_unregister_device(struct device *parent,
 struct device *rpmsg_find_device(struct device *parent,
 				 struct rpmsg_channel_info *chinfo);
 
+struct config_group *
+rpmsg_cfs_add_virtproc_group(struct device *dev,
+			     const struct rpmsg_virtproc_ops *ops);
+
 /**
  * rpmsg_chrdev_register_device() - register chrdev device based on rpdev
  * @rpdev:	prepared rpdev to be used for creating endpoints
diff --git a/include/linux/rpmsg.h b/include/linux/rpmsg.h
index 9fe156d1c018..b9d9283b46ac 100644
--- a/include/linux/rpmsg.h
+++ b/include/linux/rpmsg.h
@@ -135,6 +135,7 @@ int rpmsg_trysend_offchannel(struct rpmsg_endpoint *ept, u32 src, u32 dst,
 __poll_t rpmsg_poll(struct rpmsg_endpoint *ept, struct file *filp,
 			poll_table *wait);
 
+struct config_group *rpmsg_cfs_add_channel_group(const char *name);
 #else
 
 static inline int register_rpmsg_device(struct rpmsg_device *dev)
@@ -242,6 +243,10 @@ static inline __poll_t rpmsg_poll(struct rpmsg_endpoint *ept,
 	return 0;
 }
 
+static inline struct config_group *rpmsg_cfs_add_channel_group(const char *name)
+{
+	return NULL;
+}
 #endif /* IS_ENABLED(CONFIG_RPMSG) */
 
 /* use a macro to avoid include chaining to get THIS_MODULE */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-10-kishon%40ti.com.

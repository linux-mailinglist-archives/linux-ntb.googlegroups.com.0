Return-Path: <linux-ntb+bncBCOOP4VF5IDRBNNS633QKGQETNN4ZMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id C95AC211E09
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:22:14 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id u128sf18385302pfu.12
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:22:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678133; cv=pass;
        d=google.com; s=arc-20160816;
        b=mv+CUcJNaIl8PXSMaNc+aRXofPHO0VRbRlPqRxP1v+9vGHHHcPadkBUdLuZmHCcG+H
         wKZMstjSy5o2vLox88146qqWbWfCy+3TE44GO6yJiIFmeX61kFmMw8DbX2IEwPNqRO6z
         TZUjys/U24/ljI0oIx5TeFtNDspZcmVLNwSY83l2UjNNRQjKfm5yp2vrSHaSR+PJelNL
         +S5LPuOs6Yo3qk0cTyGNyiqNJCCYX8pYdvlInOw6QRv83YNXCKavGH/X/kOBgPmstBwd
         RilNKpRgyBq6jvdbYZF11aYLHs0v4gWZgYgEaiOAYN5PNcFovZxxulO7TZyY+g8fvWi+
         8KSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ONSLqkWN/LWc8vApbLnTiUy/6Jr3zj781pXbhS3KF+k=;
        b=b/uBW4q6pvR1gTQHBMguzcqUkTaAelhNXDuZwI0rgsETxqWGUR6joUuYanCl11lLLJ
         33qFuLRqiJ33eqIUh6TL1QndWTOH+NnDmcGwhW/iMdLej3Y8tUXd+Of5+OnTUJPUqKVN
         i1lHfR6KxgLzXtJ3oel+0CepKdajdVA+//GRFjvvELQe2PR6adfYkqn2t3Lbu7qrWH3W
         +6IdhKqXu36ApU67MdvOv1nn/aesTmbRoQp1bRvl0RRVNgEsXNuJIIZXXeYiFQ1oahK0
         Hv/7lPZDO2YYU/LcxwdlZRuoi4BvOPyf6Gb6bjKWuqdoJoXykNahPx2kfijX6qXuuT7i
         FPcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=NSF4RCGe;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ONSLqkWN/LWc8vApbLnTiUy/6Jr3zj781pXbhS3KF+k=;
        b=Gw30mZKEfw+i3pKdAt8hP74LJmRWyZH4kePdXPggY5iR83cJhcHCz3QzVY3qSFKzHz
         YCM5xxkVk3r1PseGfntZNAIPTEcAd88toUYwT1zbdrcaxyrDAhfAOSEwPd02Mq8nzZGa
         SX0r/ImDqRkq374AiioZVp/UfPRYdhlI/xd/6Franf4Mwtoph33h52z39lMivABjJtoH
         YfWr7SWjz/YlBNNsuGmegtzhUDXi96NC/iE/bCPtA6YiWGJZmb8JQPiseSErXBdF2yOb
         g5hY5e1xy165VwQMUoF86ut1sJsqOCtcIaKpxU+pIQEW/tMOAEeYl9exGJzbxFAIhZup
         ewyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ONSLqkWN/LWc8vApbLnTiUy/6Jr3zj781pXbhS3KF+k=;
        b=rruzjadn05LdEc/qpFB9yzA4WOA7LETQQd9yZ+yq855CtJfgTWyfjsszfSeO1TGAz4
         Lzi57NjJU/Xmj6z9gk50RRDvW7RSun0Yz7BJ1txRSdl22m85wLpcdytzVEGtHftsT1/E
         Lmh+w+wwV38NQNwo4mjjfcfFVgTExl34GuRLtZxN50koCrXJON/mEhS7vFlLx219v519
         UCKe9Qd8lFP6zMc799k72K1VeDHLyJrYjQuJBonqHHodj39McXhdZJq/lG9yDyeLfd/y
         7Ef7qRvpNz37ojGtmQOoMgVUNVEr78+ICruosZiNfkA8JqmsqVlZ/GxdMQNyI4bvROxu
         vhzw==
X-Gm-Message-State: AOAM5320vQ04I4Pbzw8Dg4XfraoNeQY+DUlOQ8b9YNJpv3mf1CZ1/gDB
	ixVwRi65LjuLXKV5P6he0tI=
X-Google-Smtp-Source: ABdhPJwvWxGUrqUlyDVamqQOk8b1BqNiHAYno1VXIEQHwyaZrGKyXSkmVBXD31g4/RI6AevTC2rTRQ==
X-Received: by 2002:a63:3308:: with SMTP id z8mr23052290pgz.409.1593678133277;
        Thu, 02 Jul 2020 01:22:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:b60d:: with SMTP id b13ls1985683pls.11.gmail; Thu,
 02 Jul 2020 01:22:12 -0700 (PDT)
X-Received: by 2002:a17:90a:db8a:: with SMTP id h10mr15939969pjv.197.1593678132909;
        Thu, 02 Jul 2020 01:22:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678132; cv=none;
        d=google.com; s=arc-20160816;
        b=oA9/Xx0CD2sZc5Ldy+yT9koKGDMdql1NnF0+oDhJgCBKGm21AFbX3QJOBBv9cWwv4r
         NyK5b0nlGGm3SpHone1sPoqroA8td10xCa4lYU3hp2EoTZB8WGeSHN6GXho189Q+RAb4
         hEzYetsGGIa1eVTYfm3cS3VzweAoXzaISsXwpyXpP84ADOC8x6uv2sQsb9k5UwBoZsMn
         lOJldsThqluvgFk7ZGhwfvETXjN0v4L/RA+P68/PDtnU/qziW2Vimn93k5+oon8zRjEa
         bk0tzU8mRkDNj1LEQ7LflONxgI7Sb8HbyJin83a+o2UvqqKHOSwiHoFUL0Ij2yv9rANt
         DsNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=TQCRsl2Wf/cBX19r3WcTQDbCBoCPjZmiqMgNeLy0j10=;
        b=jBKhobXHAgEC0Ri+0SDgfJzqikKNXhy1NUJKbTf1EJwPp6W0btmw3/M5IQKT2MtpK0
         IhJPQnhpkD5I/G+iiFmyN//crzKRpcAF0MMk8dhXD0qIuWIMB5SUvkf9gNtUBN7J8m0O
         kdyGCrYvxtibifw19ARioDqpKdhjQf6PaEweXmSthdiPn+bCwvFF8xD3Nj+AUUEWBv9E
         xFynMjLGTMWDeY7G4JfPk7zMNgLpna12qlVuS6howbglWiiR7afyoNmb0aBAX1Oimn0M
         hyoCYVHLiKh3T4h7zP8OQWCBUjBLIHiOFIrrTtwFPBNbhpvI1hlH5AWvnGXyh/s7zXJf
         6y5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=NSF4RCGe;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id d16si432292pgk.2.2020.07.02.01.22.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628M8wT042184;
	Thu, 2 Jul 2020 03:22:08 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628M8d7065901
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:22:08 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:22:07 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:22:07 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYF006145;
	Thu, 2 Jul 2020 03:22:02 -0500
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
Subject: [RFC PATCH 03/22] vhost: Add ops for the VHOST driver to configure VHOST device
Date: Thu, 2 Jul 2020 13:51:24 +0530
Message-ID: <20200702082143.25259-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=NSF4RCGe;       spf=pass
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

Add "vhost_config_ops" in *struct vhost_driver* for the VHOST driver to
configure VHOST device and add facility for VHOST device to notify
VHOST driver (whenever VIRTIO sets a new status or finalize features).
This is in preparation to use the same vhost_driver across different
VHOST devices (like PCIe or NTB or platform device).

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/vhost/vhost.c | 185 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/vhost.h |  57 +++++++++++++
 2 files changed, 242 insertions(+)

diff --git a/drivers/vhost/vhost.c b/drivers/vhost/vhost.c
index fa2bc6e68be2..f959abb0b1bb 100644
--- a/drivers/vhost/vhost.c
+++ b/drivers/vhost/vhost.c
@@ -2558,6 +2558,190 @@ struct vhost_msg_node *vhost_dequeue_msg(struct vhost_dev *dev,
 }
 EXPORT_SYMBOL_GPL(vhost_dequeue_msg);
 
+/**
+ * vhost_create_vqs() - Invoke vhost_config_ops to create virtqueue
+ * @vdev: Vhost device that provides create_vqs() callback to create virtqueue
+ * @nvqs: Number of vhost virtqueues to be created
+ * @num_bufs: The number of buffers that should be supported by the vhost
+ *   virtqueue (number of descriptors in the vhost virtqueue)
+ * @vqs: Pointers to all the created vhost virtqueues
+ * @callback: Callback function associated with the virtqueue
+ * @names: Names associated with each virtqueue
+ *
+ * Wrapper that invokes vhost_config_ops to create virtqueue.
+ */
+int vhost_create_vqs(struct vhost_dev *vdev, unsigned int nvqs,
+		     unsigned int num_bufs, struct vhost_virtqueue *vqs[],
+		     vhost_vq_callback_t *callbacks[],
+		     const char * const names[])
+{
+	int ret;
+
+	if (IS_ERR_OR_NULL(vdev))
+		return -EINVAL;
+
+	if (!vdev->ops && !vdev->ops->create_vqs)
+		return -EINVAL;
+
+	mutex_lock(&vdev->mutex);
+	ret = vdev->ops->create_vqs(vdev, nvqs, num_bufs, vqs, callbacks,
+				    names);
+	mutex_unlock(&vdev->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(vhost_create_vqs);
+
+/* vhost_del_vqs - Invoke vhost_config_ops to delete the created virtqueues
+ * @vdev: Vhost device that provides del_vqs() callback to delete virtqueue
+ *
+ * Wrapper that invokes vhost_config_ops to delete all the virtqueues
+ * associated with the vhost device.
+ */
+void vhost_del_vqs(struct vhost_dev *vdev)
+{
+	if (IS_ERR_OR_NULL(vdev))
+		return;
+
+	if (!vdev->ops && !vdev->ops->del_vqs)
+		return;
+
+	mutex_lock(&vdev->mutex);
+	vdev->ops->del_vqs(vdev);
+	mutex_unlock(&vdev->mutex);
+}
+EXPORT_SYMBOL_GPL(vhost_del_vqs);
+
+/* vhost_write - Invoke vhost_config_ops to write data to buffer provided
+ *   by remote virtio driver
+ * @vdev: Vhost device that provides write() callback to write data
+ * @dst: Buffer address in the remote device provided by the remote virtio
+ *   driver
+ * @src: Buffer address in the local device provided by the vhost client driver
+ * @len: Length of the data to be copied from @src to @dst
+ *
+ * Wrapper that invokes vhost_config_ops to write data to buffer provided by
+ * remote virtio driver from buffer provided by vhost client driver.
+ */
+int vhost_write(struct vhost_dev *vdev, u64 vhost_dst, void *src, int len)
+{
+	if (IS_ERR_OR_NULL(vdev))
+		return -EINVAL;
+
+	if (!vdev->ops && !vdev->ops->write)
+		return -EINVAL;
+
+	return vdev->ops->write(vdev, vhost_dst, src, len);
+}
+EXPORT_SYMBOL_GPL(vhost_write);
+
+/* vhost_read - Invoke vhost_config_ops to read data from buffers provided by
+ *   remote virtio driver
+ * @vdev: Vhost device that provides read() callback to read data
+ * @dst: Buffer address in the local device provided by the vhost client driver
+ * @src: Buffer address in the remote device provided by the remote virtio
+ *   driver
+ * @len: Length of the data to be copied from @src to @dst
+ *
+ * Wrapper that invokes vhost_config_ops to read data from buffers provided by
+ * remote virtio driver to the address provided by vhost client driver.
+ */
+int vhost_read(struct vhost_dev *vdev, void *dst, u64 vhost_src, int len)
+{
+	if (IS_ERR_OR_NULL(vdev))
+		return -EINVAL;
+
+	if (!vdev->ops && !vdev->ops->read)
+		return -EINVAL;
+
+	return vdev->ops->read(vdev, dst, vhost_src, len);
+}
+EXPORT_SYMBOL_GPL(vhost_read);
+
+/* vhost_set_status - Invoke vhost_config_ops to set vhost device status
+ * @vdev: Vhost device that provides set_status() callback to set device status
+ * @status: Vhost device status configured by vhost client driver
+ *
+ * Wrapper that invokes vhost_config_ops to set vhost device status.
+ */
+int vhost_set_status(struct vhost_dev *vdev, u8 status)
+{
+	int ret;
+
+	if (IS_ERR_OR_NULL(vdev))
+		return -EINVAL;
+
+	if (!vdev->ops && !vdev->ops->set_status)
+		return -EINVAL;
+
+	mutex_lock(&vdev->mutex);
+	ret = vdev->ops->set_status(vdev, status);
+	mutex_unlock(&vdev->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(vhost_set_status);
+
+/* vhost_get_status - Invoke vhost_config_ops to get vhost device status
+ * @vdev: Vhost device that provides get_status() callback to get device status
+ *
+ * Wrapper that invokes vhost_config_ops to get vhost device status.
+ */
+u8 vhost_get_status(struct vhost_dev *vdev)
+{
+	u8 status;
+
+	if (IS_ERR_OR_NULL(vdev))
+		return -EINVAL;
+
+	if (!vdev->ops && !vdev->ops->get_status)
+		return -EINVAL;
+
+	mutex_lock(&vdev->mutex);
+	status = vdev->ops->get_status(vdev);
+	mutex_unlock(&vdev->mutex);
+
+	return status;
+}
+EXPORT_SYMBOL_GPL(vhost_get_status);
+
+/* vhost_set_features - Invoke vhost_config_ops to set vhost device features
+ * @vdev: Vhost device that provides set_features() callback to set device
+ *   features
+ *
+ * Wrapper that invokes vhost_config_ops to set device features.
+ */
+int vhost_set_features(struct vhost_dev *vdev, u64 device_features)
+{
+	int ret;
+
+	if (IS_ERR_OR_NULL(vdev))
+		return -EINVAL;
+
+	if (!vdev->ops && !vdev->ops->set_features)
+		return -EINVAL;
+
+	mutex_lock(&vdev->mutex);
+	ret = vdev->ops->set_features(vdev, device_features);
+	mutex_unlock(&vdev->mutex);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(vhost_set_features);
+
+/* vhost_register_notifier - Register notifier to receive notification from
+ *   vhost device
+ * @vdev: Vhost device from which notification has to be received.
+ * @nb: Notifier block holding the callback function
+ *
+ * Invoked by vhost client to receive notification from vhost device.
+ */
+int vhost_register_notifier(struct vhost_dev *vdev, struct notifier_block *nb)
+{
+	return blocking_notifier_chain_register(&vdev->notifier, nb);
+}
+EXPORT_SYMBOL_GPL(vhost_register_notifier);
+
 static inline int vhost_id_match(const struct vhost_dev *vdev,
 				 const struct vhost_device_id *id)
 {
@@ -2669,6 +2853,7 @@ int vhost_register_device(struct vhost_dev *vdev)
 	device_initialize(dev);
 
 	dev_set_name(dev, "vhost%u", ret);
+	BLOCKING_INIT_NOTIFIER_HEAD(&vdev->notifier);
 
 	ret = device_add(dev);
 	if (ret) {
diff --git a/include/linux/vhost.h b/include/linux/vhost.h
index 16c374a8fa12..b22a19c66109 100644
--- a/include/linux/vhost.h
+++ b/include/linux/vhost.h
@@ -135,6 +135,37 @@ struct vhost_msg_node {
   struct list_head node;
 };
 
+enum vhost_notify_event {
+	NOTIFY_SET_STATUS,
+	NOTIFY_FINALIZE_FEATURES,
+	NOTIFY_RESET,
+};
+
+typedef void vhost_vq_callback_t(struct vhost_virtqueue *);
+/**
+ * struct vhost_config_ops - set of function pointers for performing vhost
+ *   device specific operation
+ * @create_vqs: ops to create vhost virtqueue
+ * @del_vqs: ops to delete vhost virtqueue
+ * @write: ops to write data to buffer provided by remote virtio driver
+ * @read: ops to read data from buffer provided by remote virtio driver
+ * @set_features: ops to set vhost device features
+ * @set_status: ops to set vhost device status
+ * @get_status: ops to get vhost device status
+ */
+struct vhost_config_ops {
+	int (*create_vqs)(struct vhost_dev *vdev, unsigned int nvqs,
+			  unsigned int num_bufs, struct vhost_virtqueue *vqs[],
+			  vhost_vq_callback_t *callbacks[],
+			  const char * const names[]);
+	void (*del_vqs)(struct vhost_dev *vdev);
+	int (*write)(struct vhost_dev *vdev, u64 vhost_dst, void *src, int len);
+	int (*read)(struct vhost_dev *vdev, void *dst, u64 vhost_src, int len);
+	int (*set_features)(struct vhost_dev *vdev, u64 device_features);
+	int (*set_status)(struct vhost_dev *vdev, u8 status);
+	u8 (*get_status)(struct vhost_dev *vdev);
+};
+
 struct vhost_driver {
 	struct device_driver driver;
 	struct vhost_device_id *id_table;
@@ -149,6 +180,8 @@ struct vhost_dev {
 	struct vhost_driver *driver;
 	struct vhost_device_id id;
 	int index;
+	const struct vhost_config_ops *ops;
+	struct blocking_notifier_head notifier;
 	struct mm_struct *mm;
 	struct mutex mutex;
 	struct vhost_virtqueue **vqs;
@@ -173,11 +206,35 @@ struct vhost_dev {
 
 #define to_vhost_dev(d) container_of((d), struct vhost_dev, dev)
 
+static inline void vhost_set_drvdata(struct vhost_dev *vdev, void *data)
+{
+	dev_set_drvdata(&vdev->dev, data);
+}
+
+static inline void *vhost_get_drvdata(struct vhost_dev *vdev)
+{
+	return dev_get_drvdata(&vdev->dev);
+}
+
 int vhost_register_driver(struct vhost_driver *driver);
 void vhost_unregister_driver(struct vhost_driver *driver);
 int vhost_register_device(struct vhost_dev *vdev);
 void vhost_unregister_device(struct vhost_dev *vdev);
 
+int vhost_create_vqs(struct vhost_dev *vdev, unsigned int nvqs,
+		     unsigned int num_bufs, struct vhost_virtqueue *vqs[],
+		     vhost_vq_callback_t *callbacks[],
+		     const char * const names[]);
+void vhost_del_vqs(struct vhost_dev *vdev);
+int vhost_write(struct vhost_dev *vdev, u64 vhost_dst, void *src, int len);
+int vhost_read(struct vhost_dev *vdev, void *dst, u64 vhost_src, int len);
+int vhost_set_features(struct vhost_dev *vdev, u64 device_features);
+u64 vhost_get_features(struct vhost_dev *vdev);
+int vhost_set_status(struct vhost_dev *vdev, u8 status);
+u8 vhost_get_status(struct vhost_dev *vdev);
+
+int vhost_register_notifier(struct vhost_dev *vdev, struct notifier_block *nb);
+
 bool vhost_exceeds_weight(struct vhost_virtqueue *vq, int pkts, int total_len);
 void vhost_dev_init(struct vhost_dev *, struct vhost_virtqueue **vqs,
 		    int nvqs, int iov_limit, int weight, int byte_weight,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-4-kishon%40ti.com.

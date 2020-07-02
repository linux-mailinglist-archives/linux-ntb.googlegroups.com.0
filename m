Return-Path: <linux-ntb+bncBCOOP4VF5IDRBQFS633QKGQEMRR5TYI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 451AD211E11
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:22:25 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id l193sf2334168ooc.5
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:22:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678144; cv=pass;
        d=google.com; s=arc-20160816;
        b=J6f67wU/kc5f1/ryH8JGBM0U2Ed3cCRAVI844KAhI5vLTeiAxA0dplqM3ds1byIaRM
         wHvjX7C0FB+mAvFozdUVABQmZwNxb0WCC8IpKVBFA+8yCcGMcJb/95CxQ1IMHQEabLbv
         FARrdkds12LW0k03pfTqgj7KMo85rg9qSyiWr0cC6XU7CDidAT5XPa6wU11PmQpMiB3o
         TEGpbObcMxQb384ullO0bISzvyKiYUVgMzF628/9hxB4SXfyVfEmyDyoZaAoO+U/xLS7
         33ndQK6lZsgrck1emWNeMV7roVe1bMBfCdmzuhshZO+uxjsBRCiur5Xnj3RiO6pOcaNr
         +n/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=1lAt1SGTjGWXvwWvXhHTLT4mzUbk6/fD7Runzm08dwQ=;
        b=em1Ku8vbgQ7NsrMGb7pG99gU8LB1Y4mLXET8S2weUhlehpPUeoLLW9JaAHVGgWrgta
         Iwo558QB2KVlwtttQ4DpSciM7RT9I5x25Zi3/auktskzcYy59CUG5hHUKQ3Onv5KDdPz
         BKR/reiiTwtr6X51CuktxUX6QzMJTRliOiRCp8ZU7fRcTz0/zXHR/Jykr34DnXgm1fqL
         cEOkw8efQFozB9m1nK5P+HG7x0ht5cxpdv81G2tfHPUoWBzT+iRL0QNzVX02n+8GuuDm
         XfTPu+m68mZAe2gE2vdkhJLYCAO56ybuI8BWYhlzXGd8BduGySdcuf5IxWRRwtySd8C1
         qsBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=UC+AmEhN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1lAt1SGTjGWXvwWvXhHTLT4mzUbk6/fD7Runzm08dwQ=;
        b=V7QEGuTyDigm69rnEIDhf+Sb27XHE32zljBbN6h5BJwTm/ZfJ4hKfSEU3hlFnUcgoc
         HWR2E2S/IdmQQ7gJvZewl4hMVVFAIjCCW0zmooznKGs4H9lV5DOEwNM01LRIERGxKMuo
         aEN+fduFnJmGfwILDPKGv1dvsFaNHb55Nex5k0XpfDY4EPqcW+qT1j9m88kJlTepflyR
         1rou6BnWcMMqV4uF3pFjsXs2VA1CgzYp1Hp2L9ZURgGZti+RajaUCuEZ0f89MjvItumK
         aoXcb9ED053DKCU0v5fGBb95lRlHok1RFgJqHR+cugeNjVq6WiPLtxeQPpJ3oI76g2pd
         tRww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1lAt1SGTjGWXvwWvXhHTLT4mzUbk6/fD7Runzm08dwQ=;
        b=tNfKJhrBMAq/RsMCg5nGb+7aRuby4rUOIFeOKXHiQWLSPUmolaxRDBZLdLUlsqNwAZ
         myOJDw9ayB4sA91jwX50ZJyPCa+baKsA2aOM8MiIfFtw1qniWKRR6njKV9Ajt7da9y4W
         HnO+2jyNfBVYBw+Gn0XG320+MvChRXKBDpEKE+PYp1yXkrqACBFGlF7KbkoivSOqtiQ3
         9CpL+12jtLmlnl1XrhvJgfXFdzARW3tYMdEKu0GGRIhEZ2i+BwppdjQC5yUbmCyTy4Fs
         5xZxORGaKjMmZjppms3s4uW2LdtX9KybFetFoZAVeXARAfEwzWOsvqF5qVVHAmoMVVPW
         w5sg==
X-Gm-Message-State: AOAM531msXXr9lzBaEtkZyRh+vv5jlLqF4uPMuf29bt8VtroIPoZCJEK
	3jMI5bw44JX/oR6/hRV40pE=
X-Google-Smtp-Source: ABdhPJyrcPihlA2DO4K2BGXE7VnBZwQ/2cw2j68gCPtzt5EVDcPm39YEVe+1eIg8XRtLMgQuMyXQRQ==
X-Received: by 2002:a9d:7d86:: with SMTP id j6mr8446527otn.12.1593678144201;
        Thu, 02 Jul 2020 01:22:24 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:520f:: with SMTP id g15ls1109408oib.7.gmail; Thu, 02 Jul
 2020 01:22:23 -0700 (PDT)
X-Received: by 2002:a54:408e:: with SMTP id i14mr11676025oii.175.1593678143855;
        Thu, 02 Jul 2020 01:22:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678143; cv=none;
        d=google.com; s=arc-20160816;
        b=ZytzeMk9rxVeZR4KkAX16cjUv4f4ZZJurpxqqwdwIpdfKulOeR8cHZfkovH+Hl2MlZ
         HEJRXt6B042GIiYmmOP8WAnD5lnMyWxWtykluCFqwL88mWQJEjnNwx83TNcbEZj3NJbc
         PeFFXwrzzunkU5jKu0D3Q1ONIapjomjBu4TzAO0Nuk+1nmSnqhJk9tW8jEyuYjwllGHg
         nFtkVFNecTPQOV6DYauIWlmTr4XDnlXugixz/C4B/vZ+9MgdjEEvQTyzuxSjjX5HX51r
         NcyvN/W8lzvmPNZC1AdzkJXW7RCI4JaM1uyQmSGjnInt0BriraqHWqzTeNRfc1rI6+KG
         kz6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=Uhwq7t9xmJ09dppFbQNiaS41cCziAqDB/ZcJ4oUfEXo=;
        b=t9I3QRPGM+MDlJGCt+YsDJSHN9bxGxXeDmEO0C6/7OnU85rY8tHuzAxlVcq04yy/y6
         WApHeFPt8Csoa+FijVtc0JoB+Q8iQmalc5yI4wtBrx5dqsMJXnoSjZKrWIUt7K+z+QD5
         AHczzJRMd5XxliQ2P/8d1YrWuKX8uJKHNuqr9dEyl6rklhF9kgJRFEq285tfb8eRtAWR
         aA9ahgiOm7KZUXhkdGWy4jIDyiBox063GZW+EU+uvDbgIs0xunm/brj0KR9TCWLbTNtT
         jAnfMboWwwhdADC05zeHItJTYMI31vgasUawOH9oigr9fC1vYc6A1WJ1lnMEWnQH2Yd2
         QMCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=UC+AmEhN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id n6si344706oor.1.2020.07.02.01.22.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:22:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628MJuo042209;
	Thu, 2 Jul 2020 03:22:19 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628MJW0065146
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:22:19 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:22:18 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:22:18 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYH006145;
	Thu, 2 Jul 2020 03:22:13 -0500
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
Subject: [RFC PATCH 05/22] vhost: Add MMIO helpers for operations on vhost virtqueue
Date: Thu, 2 Jul 2020 13:51:26 +0530
Message-ID: <20200702082143.25259-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=UC+AmEhN;       spf=pass
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

Add helpers for VHOST drivers to read descriptor data from
vhost_virtqueue for IN transfers or write descriptor data to
vhost_virtqueue for OUT transfers respectively. Also add
helpers to enable callback, disable callback and notify remote
virtio for events on virtqueue.

This adds helpers only for virtqueue in MMIO (helpers for virtqueue
in kernel space and user space can be added later).

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/vhost/Kconfig |   1 +
 drivers/vhost/vhost.c | 292 ++++++++++++++++++++++++++++++++++++++++++
 include/linux/vhost.h |  22 ++++
 3 files changed, 315 insertions(+)

diff --git a/drivers/vhost/Kconfig b/drivers/vhost/Kconfig
index c4f273793595..77e195a38469 100644
--- a/drivers/vhost/Kconfig
+++ b/drivers/vhost/Kconfig
@@ -24,6 +24,7 @@ config VHOST_DPN
 
 config VHOST
 	tristate
+	select VHOST_RING
 	select VHOST_IOTLB
 	help
 	  This option is selected by any driver which needs to access
diff --git a/drivers/vhost/vhost.c b/drivers/vhost/vhost.c
index f959abb0b1bb..8a3ad4698393 100644
--- a/drivers/vhost/vhost.c
+++ b/drivers/vhost/vhost.c
@@ -2558,6 +2558,298 @@ struct vhost_msg_node *vhost_dequeue_msg(struct vhost_dev *dev,
 }
 EXPORT_SYMBOL_GPL(vhost_dequeue_msg);
 
+/**
+ * vhost_virtqueue_disable_cb_mmio() - Write to used ring in virtio accessed
+ *   using MMIO to stop notification
+ * @vq: vhost_virtqueue for which callbacks have to be disabled
+ *
+ * Write to used ring in virtio accessed using MMIO to stop sending notification
+ * to the vhost virtqueue.
+ */
+static void vhost_virtqueue_disable_cb_mmio(struct vhost_virtqueue *vq)
+{
+	struct vringh *vringh;
+
+	vringh = &vq->vringh;
+	vringh_notify_disable_mmio(vringh);
+}
+
+/**
+ * vhost_virtqueue_disable_cb() - Write to used ring in virtio to stop
+ *   notification
+ * @vq: vhost_virtqueue for which callbacks have to be disabled
+ *
+ * Wrapper to write to used ring in virtio to stop sending notification
+ * to the vhost virtqueue.
+ */
+void vhost_virtqueue_disable_cb(struct vhost_virtqueue *vq)
+{
+	enum vhost_type type;
+
+	type = vq->type;
+
+	/* TODO: Add support for other VHOST TYPES */
+	if (type == VHOST_TYPE_MMIO)
+		return vhost_virtqueue_disable_cb_mmio(vq);
+}
+EXPORT_SYMBOL_GPL(vhost_virtqueue_disable_cb);
+
+/**
+ * vhost_virtqueue_enable_cb_mmio() - Write to used ring in virtio accessed
+ *   using MMIO to enable notification
+ * @vq: vhost_virtqueue for which callbacks have to be enabled
+ *
+ * Write to used ring in virtio accessed using MMIO to enable notification
+ * to the vhost virtqueue.
+ */
+static bool vhost_virtqueue_enable_cb_mmio(struct vhost_virtqueue *vq)
+{
+	struct vringh *vringh;
+
+	vringh = &vq->vringh;
+	return vringh_notify_enable_mmio(vringh);
+}
+
+/**
+ * vhost_virtqueue_enable_cb() - Write to used ring in virtio to enable
+ *   notification
+ * @vq: vhost_virtqueue for which callbacks have to be enabled
+ *
+ * Wrapper to write to used ring in virtio to enable notification to the
+ * vhost virtqueue.
+ */
+bool vhost_virtqueue_enable_cb(struct vhost_virtqueue *vq)
+{
+	enum vhost_type type;
+
+	type = vq->type;
+
+	/* TODO: Add support for other VHOST TYPES */
+	if (type == VHOST_TYPE_MMIO)
+		return vhost_virtqueue_enable_cb_mmio(vq);
+
+	return false;
+}
+EXPORT_SYMBOL_GPL(vhost_virtqueue_enable_cb);
+
+/**
+ * vhost_virtqueue_notify() - Send notification to the remote virtqueue
+ * @vq: vhost_virtqueue that sends the notification
+ *
+ * Invokes ->notify() callback to send notification to the remote virtqueue.
+ */
+void vhost_virtqueue_notify(struct vhost_virtqueue *vq)
+{
+	if (!vq->notify)
+		return;
+
+	vq->notify(vq);
+}
+EXPORT_SYMBOL_GPL(vhost_virtqueue_notify);
+
+/**
+ * vhost_virtqueue_kick_mmio() - Check if the remote virtqueue has enabled
+ *   notification (by reading available ring in virtio accessed using MMIO)
+ *   before sending notification
+ * @vq: vhost_virtqueue that sends the notification
+ *
+ * Check if the remote virtqueue has enabled notification (by reading available
+ * ring in virtio accessed using MMIO) and then invoke vhost_virtqueue_notify()
+ * to send notification to the remote virtqueue.
+ */
+static void vhost_virtqueue_kick_mmio(struct vhost_virtqueue *vq)
+{
+	if (vringh_need_notify_mmio(&vq->vringh))
+		vhost_virtqueue_notify(vq);
+}
+
+/**
+ * vhost_virtqueue_kick() - Check if the remote virtqueue has enabled
+ *   notification before sending notification
+ * @vq: vhost_virtqueue that sends the notification
+ *
+ * Wrapper to send notification to the remote virtqueue using
+ * vhost_virtqueue_kick_mmio() that checks if the remote virtqueue has
+ * enabled notification before sending the notification.
+ */
+void vhost_virtqueue_kick(struct vhost_virtqueue *vq)
+{
+	enum vhost_type type;
+
+	type = vq->type;
+
+	/* TODO: Add support for other VHOST TYPES */
+	if (type == VHOST_TYPE_MMIO)
+		return vhost_virtqueue_kick_mmio(vq);
+}
+EXPORT_SYMBOL_GPL(vhost_virtqueue_kick);
+
+/**
+ * vhost_virtqueue_callback() - Invoke vhost virtqueue callback provided by
+ *   vhost client driver
+ * @vq: vhost_virtqueue for which the callback is invoked
+ *
+ * Invoked by the driver that creates vhost device when the remote virtio
+ * driver sends notification to this virtqueue.
+ */
+void vhost_virtqueue_callback(struct vhost_virtqueue *vq)
+{
+	if (!vq->callback)
+		return;
+
+	vq->callback(vq);
+}
+EXPORT_SYMBOL_GPL(vhost_virtqueue_callback);
+
+/**
+ * vhost_virtqueue_get_outbuf_mmio() - Get the output buffer address by reading
+ *   virtqueue descriptor accessed using MMIO
+ * @vq: vhost_virtqueue used to access the descriptor
+ * @head: head index for passing to vhost_virtqueue_put_buf()
+ * @len: Length of the buffer
+ *
+ * Get the output buffer address by reading virtqueue descriptor accessed using
+ * MMIO.
+ */
+static u64 vhost_virtqueue_get_outbuf_mmio(struct vhost_virtqueue *vq,
+					   u16 *head, int *len)
+{
+	struct vringh_mmiov wiov;
+	struct mmiovec *mmiovec;
+	struct vringh *vringh;
+	int desc;
+
+	vringh = &vq->vringh;
+	vringh_mmiov_init(&wiov, NULL, 0);
+
+	desc = vringh_getdesc_mmio(vringh, NULL, &wiov, head, GFP_KERNEL);
+	if (!desc)
+		return 0;
+	mmiovec = &wiov.iov[0];
+
+	*len = mmiovec->iov_len;
+	return mmiovec->iov_base;
+}
+
+/**
+ * vhost_virtqueue_get_outbuf() - Get the output buffer address by reading
+ *   virtqueue descriptor
+ * @vq: vhost_virtqueue used to access the descriptor
+ * @head: head index for passing to vhost_virtqueue_put_buf()
+ * @len: Length of the buffer
+ *
+ * Wrapper to get the output buffer address by reading virtqueue descriptor.
+ */
+u64 vhost_virtqueue_get_outbuf(struct vhost_virtqueue *vq, u16 *head, int *len)
+{
+	enum vhost_type type;
+
+	type = vq->type;
+
+	/* TODO: Add support for other VHOST TYPES */
+	if (type == VHOST_TYPE_MMIO)
+		return vhost_virtqueue_get_outbuf_mmio(vq, head, len);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(vhost_virtqueue_get_outbuf);
+
+/**
+ * vhost_virtqueue_get_inbuf_mmio() - Get the input buffer address by reading
+ *   virtqueue descriptor accessed using MMIO
+ * @vq: vhost_virtqueue used to access the descriptor
+ * @head: Head index for passing to vhost_virtqueue_put_buf()
+ * @len: Length of the buffer
+ *
+ * Get the input buffer address by reading virtqueue descriptor accessed using
+ * MMIO.
+ */
+static u64 vhost_virtqueue_get_inbuf_mmio(struct vhost_virtqueue *vq,
+					  u16 *head, int *len)
+{
+	struct vringh_mmiov riov;
+	struct mmiovec *mmiovec;
+	struct vringh *vringh;
+	int desc;
+
+	vringh = &vq->vringh;
+	vringh_mmiov_init(&riov, NULL, 0);
+
+	desc = vringh_getdesc_mmio(vringh, &riov, NULL, head, GFP_KERNEL);
+	if (!desc)
+		return 0;
+
+	mmiovec = &riov.iov[0];
+
+	*len = mmiovec->iov_len;
+	return mmiovec->iov_base;
+}
+
+/**
+ * vhost_virtqueue_get_inbuf() - Get the input buffer address by reading
+ *   virtqueue descriptor
+ * @vq: vhost_virtqueue used to access the descriptor
+ * @head: head index for passing to vhost_virtqueue_put_buf()
+ * @len: Length of the buffer
+ *
+ * Wrapper to get the input buffer address by reading virtqueue descriptor.
+ */
+u64 vhost_virtqueue_get_inbuf(struct vhost_virtqueue *vq, u16 *head, int *len)
+{
+	enum vhost_type type;
+
+	type = vq->type;
+
+	/* TODO: Add support for other VHOST TYPES */
+	if (type == VHOST_TYPE_MMIO)
+		return vhost_virtqueue_get_inbuf_mmio(vq, head, len);
+
+	return 0;
+}
+EXPORT_SYMBOL_GPL(vhost_virtqueue_get_inbuf);
+
+/**
+ * vhost_virtqueue_put_buf_mmio() - Publish to the remote virtio (update
+ * used ring in virtio using MMIO) to indicate the buffer has been processed
+ * @vq: vhost_virtqueue used to update the used ring
+ * @head: Head index receive from vhost_virtqueue_get_*()
+ * @len: Length of the buffer
+ *
+ * Publish to the remote virtio (update used ring in virtio using MMIO) to
+ * indicate the buffer has been processed
+ */
+static void vhost_virtqueue_put_buf_mmio(struct vhost_virtqueue *vq,
+					 u16 head, int len)
+{
+	struct vringh *vringh;
+
+	vringh = &vq->vringh;
+
+	vringh_complete_mmio(vringh, head, len);
+}
+
+/**
+ * vhost_virtqueue_put_buf() - Publish to the remote virtio to indicate the
+ *   buffer has been processed
+ * @vq: vhost_virtqueue used to update the used ring
+ * @head: Head index receive from vhost_virtqueue_get_*()
+ * @len: Length of the buffer
+ *
+ * Wrapper to publish to the remote virtio to indicate the buffer has been
+ * processed.
+ */
+void vhost_virtqueue_put_buf(struct vhost_virtqueue *vq, u16 head, int len)
+{
+	enum vhost_type type;
+
+	type = vq->type;
+
+	/* TODO: Add support for other VHOST TYPES */
+	if (type == VHOST_TYPE_MMIO)
+		return vhost_virtqueue_put_buf_mmio(vq, head, len);
+}
+EXPORT_SYMBOL_GPL(vhost_virtqueue_put_buf);
+
 /**
  * vhost_create_vqs() - Invoke vhost_config_ops to create virtqueue
  * @vdev: Vhost device that provides create_vqs() callback to create virtqueue
diff --git a/include/linux/vhost.h b/include/linux/vhost.h
index b22a19c66109..8efb9829c1b1 100644
--- a/include/linux/vhost.h
+++ b/include/linux/vhost.h
@@ -10,6 +10,7 @@
 #include <linux/uio.h>
 #include <linux/virtio_config.h>
 #include <linux/virtio_ring.h>
+#include <linux/vringh.h>
 #include <linux/atomic.h>
 #include <linux/vhost_iotlb.h>
 #include <uapi/linux/vhost.h>
@@ -60,9 +61,20 @@ enum vhost_uaddr_type {
 	VHOST_NUM_ADDRS = 3,
 };
 
+enum vhost_type {
+	VHOST_TYPE_UNKNOWN,
+	VHOST_TYPE_USER,
+	VHOST_TYPE_KERN,
+	VHOST_TYPE_MMIO,
+};
+
 /* The virtqueue structure describes a queue attached to a device. */
 struct vhost_virtqueue {
 	struct vhost_dev *dev;
+	enum vhost_type type;
+	struct vringh vringh;
+	void (*callback)(struct vhost_virtqueue *vq);
+	void (*notify)(struct vhost_virtqueue *vq);
 
 	/* The actual ring of buffers. */
 	struct mutex mutex;
@@ -235,6 +247,16 @@ u8 vhost_get_status(struct vhost_dev *vdev);
 
 int vhost_register_notifier(struct vhost_dev *vdev, struct notifier_block *nb);
 
+u64 vhost_virtqueue_get_outbuf(struct vhost_virtqueue *vq, u16 *head, int *len);
+u64 vhost_virtqueue_get_inbuf(struct vhost_virtqueue *vq, u16 *head, int *len);
+void vhost_virtqueue_put_buf(struct vhost_virtqueue *vq, u16 head, int len);
+
+void vhost_virtqueue_disable_cb(struct vhost_virtqueue *vq);
+bool vhost_virtqueue_enable_cb(struct vhost_virtqueue *vq);
+void vhost_virtqueue_notify(struct vhost_virtqueue *vq);
+void vhost_virtqueue_kick(struct vhost_virtqueue *vq);
+void vhost_virtqueue_callback(struct vhost_virtqueue *vq);
+
 bool vhost_exceeds_weight(struct vhost_virtqueue *vq, int pkts, int total_len);
 void vhost_dev_init(struct vhost_dev *, struct vhost_virtqueue **vqs,
 		    int nvqs, int iov_limit, int weight, int byte_weight,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-6-kishon%40ti.com.

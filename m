Return-Path: <linux-ntb+bncBCOOP4VF5IDRBKNS633QKGQEYNLPRGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id EEA76211E05
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:22:02 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id e6sf8851700qva.2
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:22:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678121; cv=pass;
        d=google.com; s=arc-20160816;
        b=fKz1VzqvGPihHCQrOjbvMGMVhwinb1DbzsOevjMHRBy5BsZwD6CTJ7X9MJud7mJUsv
         hGCeyu3iFQtWWun7bmsyNl2E3RYPnfUgsxv1cJX7pvtGPA1yd9z2PbufkUxV77MhrGWZ
         QoJO9yhQbEAYfwyO5I06Wy0g10Rnn9NctQvUq5RvDk43ggFkTEQByHSPtSTXV8tPV3ub
         TPnQwsH6B9+IS0Ap8CETyoxx0KJqB4DCgv1chP5EQUm7XbY3lGTNGAAyUKPSjVNMy++O
         t+bp9l4biXAXmJNqPo2qMDgomgB+liIKIXB7kVXWz5qu9jxJ14rteo6iwlQb+CnJM6pN
         38ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=acCMMHTnNwmayFTDt5ivBVZIvaiPYZVQisrYj2dXfcM=;
        b=rECBpcyPJvVPlqOF76OKOnf5uQehHGaYXg6bHSUJDSoLR5R40Z4olrKN4GWDuU8jTu
         CrTAaEuROuwtFJLf4opHk6evPhWpYuwyadK86W2bzN3Ahtusl3SyAlgn5LA72NoKC13A
         XOlxvACd6XcZJ+cvIQN8TRftECOS9Ncfa1jPSeFrpV+sEHB/sEkeLn+xrU4Xr5PNLOql
         HAbvEjCvre5KN7pN9nA0C9QyhxJd7Q3hANcczgfu4aIwLeBvbKcqS2piE2kgqvaOhCOw
         GelVQUMn394xyJu3XM84cSMxxcHsnrZ6mBKA/9i70HBSSQHmhuG6/RLfcT6eyxcSn5pQ
         7Rrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=yXQ+RTwS;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=acCMMHTnNwmayFTDt5ivBVZIvaiPYZVQisrYj2dXfcM=;
        b=ifAXoGz9zDiYLDHdTLxPW/rdJK4c+7wTYGaboLcFcXyi8dRYU5pBiv0O/iRLusZx7l
         vDAjzg6hIQ/z7r8ToveuNRWyfAZS8G7BqC/Kv2mm3fZKK1XH+rKz8R5vL+ekNfHLW1sd
         2SYDv2nYfMa4bV2QR5c7o2gDtICrFdxoqmw55OARF5nahzJ+h3EE3pEYZLJzzPZDLTxP
         g33dNq5VnNMlJTmxbMSNJe9uXVQF2N+4VLpfOzaiomI5IbPdxfsh3x98YS7hh71ln0IS
         CKEq8ZibSqKMydf9+3wMpCJsnbNmsexsDjBOEmw+3czGmA1Z/7Lyji91qOwFnVbxpwQx
         GwvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=acCMMHTnNwmayFTDt5ivBVZIvaiPYZVQisrYj2dXfcM=;
        b=h4xe81JVkOC8bGAXLaW0ABN6JnvZGt4VhdI/kGb/zOe6UYTOmrmXHH0A+uX6hp/aVK
         lfMgc5B5GGut0yg5xHyUPkMmv5vQCrps5jZBHfpwK1crxMnhfG/6KVugOqYsMJA53sUW
         vDD1VQPFgMceGj6kby1ruudewIdaxoKo/oXLzVje19B9iR+2GFnMlYJXZpqXrUAiUMok
         JZfrGKGTQ491hg1eDnxrKtH8hmFvI/oggFsqHBTEWFEMZm4jl3KOkV+JkToJP/T61l8c
         TbDawEIvZR/dmTTInjavpnhkapkXr0fxmoXYW+IpTG0FyOZwcKcCdzeNWfr/V4mGdhF9
         yy+g==
X-Gm-Message-State: AOAM532j/zabLPyq1hfh3T+zFFAuz4SFAX9A/9u/NE5B249OtjFAuwkB
	+G9hL8kf6ZNvSsLa70XvV10=
X-Google-Smtp-Source: ABdhPJydm2qG6g24ZkEqvP3StJlmdzxy6i1jlsutAq+E6gD0cqnMsWeDCC5j+FxCskkSuCU2BaUEJw==
X-Received: by 2002:a37:a251:: with SMTP id l78mr10974667qke.313.1593678121638;
        Thu, 02 Jul 2020 01:22:01 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ae9:e415:: with SMTP id q21ls2346417qkc.9.gmail; Thu, 02 Jul
 2020 01:22:01 -0700 (PDT)
X-Received: by 2002:a37:4ccb:: with SMTP id z194mr8396191qka.312.1593678121266;
        Thu, 02 Jul 2020 01:22:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678121; cv=none;
        d=google.com; s=arc-20160816;
        b=NT09wMJcZ0FNLRXJbPaWq+/DSVK7jtXIbbRhEPEHa8GfKUuWLtIFFa9dkCXM4Ter5I
         51+9WC0M2wO0YmCOfvUzYmrjVfI9Wf1BBWKt0UODV9QxL3EcH+Le7Ppwz77u7fP9EfX5
         VuJDvet8NBkCbOBIjGMtJNJCzqLT0xycbLVHNJOVRQgk5TBdBInJVUR8tU9tu8Z1An4n
         OJChs0Xpz6H3BJywI/+5y22DOpgLqwgTrkvv3FqFJVJC3PGiHiYtB+OuCe5vJy1D6YhJ
         jS/NdBJoYNEs/Ntjc4sziT+rNG2g9BhxEmgb8Cusb/ZU0CPBzElV778FUsNB6kGryi3k
         SndQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=ABGiAo420c56SSOxSDxeuSuOeuV6cI8PSAJ9Fas2di4=;
        b=Nj2V+3EzDcEjfjMO7JREZIp5ubIPjviZs+7XBCGXsXYryBFMvQaWmBokolivTuxUgu
         iCqrT9f6jUfItJmUL2q5h6iz5dINw1yLjNoUMI77czaRbtCQgIcvgZbCtNX/MTYVYyY1
         VSgy681uMhlpOjLbtZ+NZLjelKovnDAJ888ift60RHlEkX3V9z5Ks0gUrJGMCPpOfWms
         SfFdRc3Gup5Emh9WhMRFWn4E7Jpg4oS4tMXoHOyUmwyqoxZQ+azxBbqXuHZXu8bvD1Br
         MuRkn9f13oH2m+BH0JALwkIdrv1/ZL+q0PFI663hWpsEhmQDz6okho2/LrB4Qs47X72G
         FjQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=yXQ+RTwS;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id w64si136760qkb.7.2020.07.02.01.22.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:22:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628LuLH016993;
	Thu, 2 Jul 2020 03:21:56 -0500
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628Lu9h029608
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:21:56 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:21:56 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:21:56 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYD006145;
	Thu, 2 Jul 2020 03:21:51 -0500
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
Subject: [RFC PATCH 01/22] vhost: Make _feature_ bits a property of vhost device
Date: Thu, 2 Jul 2020 13:51:22 +0530
Message-ID: <20200702082143.25259-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=yXQ+RTwS;       spf=pass
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

No functional change intended. The feature bits defined in virtio
specification is associated with virtio device and not virtqueue.
In order to correctly reflect this in the vhost backend, remove
"acked_features" from struct vhost_virtqueue and add "features" in
struct vhost_dev. This will also make it look symmetrical to virtio
in guest.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/vhost/net.c   |  7 ++++---
 drivers/vhost/scsi.c  | 22 ++++++++--------------
 drivers/vhost/test.c  | 14 +++++---------
 drivers/vhost/vhost.c | 33 +++++++++++++++++++++------------
 drivers/vhost/vhost.h |  6 +++---
 drivers/vhost/vsock.c | 18 ++++++------------
 6 files changed, 47 insertions(+), 53 deletions(-)

diff --git a/drivers/vhost/net.c b/drivers/vhost/net.c
index 516519dcc8ff..437126219116 100644
--- a/drivers/vhost/net.c
+++ b/drivers/vhost/net.c
@@ -1137,9 +1137,9 @@ static void handle_rx(struct vhost_net *net)
 	vhost_hlen = nvq->vhost_hlen;
 	sock_hlen = nvq->sock_hlen;
 
-	vq_log = unlikely(vhost_has_feature(vq, VHOST_F_LOG_ALL)) ?
+	vq_log = unlikely(vhost_has_feature(&net->dev, VHOST_F_LOG_ALL)) ?
 		vq->log : NULL;
-	mergeable = vhost_has_feature(vq, VIRTIO_NET_F_MRG_RXBUF);
+	mergeable = vhost_has_feature(&net->dev, VIRTIO_NET_F_MRG_RXBUF);
 
 	do {
 		sock_len = vhost_net_rx_peek_head_len(net, sock->sk,
@@ -1633,6 +1633,7 @@ static int vhost_net_set_backend_features(struct vhost_net *n, u64 features)
 static int vhost_net_set_features(struct vhost_net *n, u64 features)
 {
 	size_t vhost_hlen, sock_hlen, hdr_len;
+	struct vhost_dev *vdev = &n->dev;
 	int i;
 
 	hdr_len = (features & ((1ULL << VIRTIO_NET_F_MRG_RXBUF) |
@@ -1658,9 +1659,9 @@ static int vhost_net_set_features(struct vhost_net *n, u64 features)
 			goto out_unlock;
 	}
 
+	vdev->features = features;
 	for (i = 0; i < VHOST_NET_VQ_MAX; ++i) {
 		mutex_lock(&n->vqs[i].vq.mutex);
-		n->vqs[i].vq.acked_features = features;
 		n->vqs[i].vhost_hlen = vhost_hlen;
 		n->vqs[i].sock_hlen = sock_hlen;
 		mutex_unlock(&n->vqs[i].vq.mutex);
diff --git a/drivers/vhost/scsi.c b/drivers/vhost/scsi.c
index 8b104f76f324..f5138379659e 100644
--- a/drivers/vhost/scsi.c
+++ b/drivers/vhost/scsi.c
@@ -921,7 +921,7 @@ vhost_scsi_handle_vq(struct vhost_scsi *vs, struct vhost_virtqueue *vq)
 	int ret, prot_bytes, c = 0;
 	u16 lun;
 	u8 task_attr;
-	bool t10_pi = vhost_has_feature(vq, VIRTIO_SCSI_F_T10_PI);
+	bool t10_pi = vhost_has_feature(&vs->dev, VIRTIO_SCSI_F_T10_PI);
 	void *cdb;
 
 	mutex_lock(&vq->mutex);
@@ -1573,26 +1573,20 @@ vhost_scsi_clear_endpoint(struct vhost_scsi *vs,
 
 static int vhost_scsi_set_features(struct vhost_scsi *vs, u64 features)
 {
-	struct vhost_virtqueue *vq;
-	int i;
+	struct vhost_dev *vdev = &vs->dev;
 
 	if (features & ~VHOST_SCSI_FEATURES)
 		return -EOPNOTSUPP;
 
-	mutex_lock(&vs->dev.mutex);
+	mutex_lock(&vdev->mutex);
 	if ((features & (1 << VHOST_F_LOG_ALL)) &&
-	    !vhost_log_access_ok(&vs->dev)) {
-		mutex_unlock(&vs->dev.mutex);
+	    !vhost_log_access_ok(vdev)) {
+		mutex_unlock(&vdev->mutex);
 		return -EFAULT;
 	}
 
-	for (i = 0; i < VHOST_SCSI_MAX_VQ; i++) {
-		vq = &vs->vqs[i].vq;
-		mutex_lock(&vq->mutex);
-		vq->acked_features = features;
-		mutex_unlock(&vq->mutex);
-	}
-	mutex_unlock(&vs->dev.mutex);
+	vdev->features = features;
+	mutex_unlock(&vdev->mutex);
 	return 0;
 }
 
@@ -1789,7 +1783,7 @@ vhost_scsi_do_plug(struct vhost_scsi_tpg *tpg,
 
 	vq = &vs->vqs[VHOST_SCSI_VQ_EVT].vq;
 	mutex_lock(&vq->mutex);
-	if (vhost_has_feature(vq, VIRTIO_SCSI_F_HOTPLUG))
+	if (vhost_has_feature(&vs->dev, VIRTIO_SCSI_F_HOTPLUG))
 		vhost_scsi_send_evt(vs, tpg, lun,
 				   VIRTIO_SCSI_T_TRANSPORT_RESET, reason);
 	mutex_unlock(&vq->mutex);
diff --git a/drivers/vhost/test.c b/drivers/vhost/test.c
index 9a3a09005e03..6518b48c0633 100644
--- a/drivers/vhost/test.c
+++ b/drivers/vhost/test.c
@@ -247,19 +247,15 @@ static long vhost_test_reset_owner(struct vhost_test *n)
 
 static int vhost_test_set_features(struct vhost_test *n, u64 features)
 {
-	struct vhost_virtqueue *vq;
+	struct vhost_dev *vdev = &n->dev;
 
-	mutex_lock(&n->dev.mutex);
+	mutex_lock(&vdev->mutex);
 	if ((features & (1 << VHOST_F_LOG_ALL)) &&
-	    !vhost_log_access_ok(&n->dev)) {
-		mutex_unlock(&n->dev.mutex);
+	    !vhost_log_access_ok(vdev)) {
+		mutex_unlock(&vdev->mutex);
 		return -EFAULT;
 	}
-	vq = &n->vqs[VHOST_TEST_VQ];
-	mutex_lock(&vq->mutex);
-	vq->acked_features = features;
-	mutex_unlock(&vq->mutex);
-	mutex_unlock(&n->dev.mutex);
+	mutex_unlock(&vdev->mutex);
 	return 0;
 }
 
diff --git a/drivers/vhost/vhost.c b/drivers/vhost/vhost.c
index 21a59b598ed8..3c2633fb519d 100644
--- a/drivers/vhost/vhost.c
+++ b/drivers/vhost/vhost.c
@@ -104,12 +104,14 @@ static long vhost_get_vring_endian(struct vhost_virtqueue *vq, u32 idx,
 
 static void vhost_init_is_le(struct vhost_virtqueue *vq)
 {
+	struct vhost_dev *vdev = vq->dev;
+
 	/* Note for legacy virtio: user_be is initialized at reset time
 	 * according to the host endianness. If userspace does not set an
 	 * explicit endianness, the default behavior is native endian, as
 	 * expected by legacy virtio.
 	 */
-	vq->is_le = vhost_has_feature(vq, VIRTIO_F_VERSION_1) || !vq->user_be;
+	vq->is_le = vhost_has_feature(vdev, VIRTIO_F_VERSION_1) || !vq->user_be;
 }
 #else
 static void vhost_disable_cross_endian(struct vhost_virtqueue *vq)
@@ -129,7 +131,9 @@ static long vhost_get_vring_endian(struct vhost_virtqueue *vq, u32 idx,
 
 static void vhost_init_is_le(struct vhost_virtqueue *vq)
 {
-	vq->is_le = vhost_has_feature(vq, VIRTIO_F_VERSION_1)
+	struct vhost_dev *vdev = vq->dev;
+
+	vq->is_le = vhost_has_feature(vdev, VIRTIO_F_VERSION_1)
 		|| virtio_legacy_is_little_endian();
 }
 #endif /* CONFIG_VHOST_CROSS_ENDIAN_LEGACY */
@@ -310,7 +314,6 @@ static void vhost_vq_reset(struct vhost_dev *dev,
 	vq->log_used = false;
 	vq->log_addr = -1ull;
 	vq->private_data = NULL;
-	vq->acked_features = 0;
 	vq->acked_backend_features = 0;
 	vq->log_base = NULL;
 	vq->error_ctx = NULL;
@@ -428,8 +431,9 @@ EXPORT_SYMBOL_GPL(vhost_exceeds_weight);
 static size_t vhost_get_avail_size(struct vhost_virtqueue *vq,
 				   unsigned int num)
 {
+	struct vhost_dev *vdev = vq->dev;
 	size_t event __maybe_unused =
-	       vhost_has_feature(vq, VIRTIO_RING_F_EVENT_IDX) ? 2 : 0;
+	       vhost_has_feature(vdev, VIRTIO_RING_F_EVENT_IDX) ? 2 : 0;
 
 	return sizeof(*vq->avail) +
 	       sizeof(*vq->avail->ring) * num + event;
@@ -438,8 +442,9 @@ static size_t vhost_get_avail_size(struct vhost_virtqueue *vq,
 static size_t vhost_get_used_size(struct vhost_virtqueue *vq,
 				  unsigned int num)
 {
+	struct vhost_dev *vdev = vq->dev;
 	size_t event __maybe_unused =
-	       vhost_has_feature(vq, VIRTIO_RING_F_EVENT_IDX) ? 2 : 0;
+	       vhost_has_feature(vdev, VIRTIO_RING_F_EVENT_IDX) ? 2 : 0;
 
 	return sizeof(*vq->used) +
 	       sizeof(*vq->used->ring) * num + event;
@@ -468,6 +473,7 @@ void vhost_dev_init(struct vhost_dev *dev,
 	dev->iotlb = NULL;
 	dev->mm = NULL;
 	dev->worker = NULL;
+	dev->features = 0;
 	dev->iov_limit = iov_limit;
 	dev->weight = weight;
 	dev->byte_weight = byte_weight;
@@ -738,14 +744,15 @@ static inline void __user *vhost_vq_meta_fetch(struct vhost_virtqueue *vq,
 static bool memory_access_ok(struct vhost_dev *d, struct vhost_iotlb *umem,
 			     int log_all)
 {
+	bool log;
 	int i;
 
+	log = log_all || vhost_has_feature(d, VHOST_F_LOG_ALL);
+
 	for (i = 0; i < d->nvqs; ++i) {
 		bool ok;
-		bool log;
 
 		mutex_lock(&d->vqs[i]->mutex);
-		log = log_all || vhost_has_feature(d->vqs[i], VHOST_F_LOG_ALL);
 		/* If ring is inactive, will check when it's enabled. */
 		if (d->vqs[i]->private_data)
 			ok = vq_memory_access_ok(d->vqs[i]->log_base,
@@ -1329,8 +1336,10 @@ EXPORT_SYMBOL_GPL(vhost_log_access_ok);
 static bool vq_log_access_ok(struct vhost_virtqueue *vq,
 			     void __user *log_base)
 {
+	struct vhost_dev *vdev = vq->dev;
+
 	return vq_memory_access_ok(log_base, vq->umem,
-				   vhost_has_feature(vq, VHOST_F_LOG_ALL)) &&
+				   vhost_has_feature(vdev, VHOST_F_LOG_ALL)) &&
 		(!vq->log_used || log_access_ok(log_base, vq->log_addr,
 				  vhost_get_used_size(vq, vq->num)));
 }
@@ -2376,11 +2385,11 @@ static bool vhost_notify(struct vhost_dev *dev, struct vhost_virtqueue *vq)
 	 * interrupts. */
 	smp_mb();
 
-	if (vhost_has_feature(vq, VIRTIO_F_NOTIFY_ON_EMPTY) &&
+	if (vhost_has_feature(dev, VIRTIO_F_NOTIFY_ON_EMPTY) &&
 	    unlikely(vq->avail_idx == vq->last_avail_idx))
 		return true;
 
-	if (!vhost_has_feature(vq, VIRTIO_RING_F_EVENT_IDX)) {
+	if (!vhost_has_feature(dev, VIRTIO_RING_F_EVENT_IDX)) {
 		__virtio16 flags;
 		if (vhost_get_avail_flags(vq, &flags)) {
 			vq_err(vq, "Failed to get flags");
@@ -2459,7 +2468,7 @@ bool vhost_enable_notify(struct vhost_dev *dev, struct vhost_virtqueue *vq)
 	if (!(vq->used_flags & VRING_USED_F_NO_NOTIFY))
 		return false;
 	vq->used_flags &= ~VRING_USED_F_NO_NOTIFY;
-	if (!vhost_has_feature(vq, VIRTIO_RING_F_EVENT_IDX)) {
+	if (!vhost_has_feature(dev, VIRTIO_RING_F_EVENT_IDX)) {
 		r = vhost_update_used_flags(vq);
 		if (r) {
 			vq_err(vq, "Failed to enable notification at %p: %d\n",
@@ -2496,7 +2505,7 @@ void vhost_disable_notify(struct vhost_dev *dev, struct vhost_virtqueue *vq)
 	if (vq->used_flags & VRING_USED_F_NO_NOTIFY)
 		return;
 	vq->used_flags |= VRING_USED_F_NO_NOTIFY;
-	if (!vhost_has_feature(vq, VIRTIO_RING_F_EVENT_IDX)) {
+	if (!vhost_has_feature(dev, VIRTIO_RING_F_EVENT_IDX)) {
 		r = vhost_update_used_flags(vq);
 		if (r)
 			vq_err(vq, "Failed to enable notification at %p: %d\n",
diff --git a/drivers/vhost/vhost.h b/drivers/vhost/vhost.h
index f8403bd46b85..5d1d00363e79 100644
--- a/drivers/vhost/vhost.h
+++ b/drivers/vhost/vhost.h
@@ -111,7 +111,6 @@ struct vhost_virtqueue {
 	struct vhost_iotlb *umem;
 	struct vhost_iotlb *iotlb;
 	void *private_data;
-	u64 acked_features;
 	u64 acked_backend_features;
 	/* Log write descriptors */
 	void __user *log_base;
@@ -140,6 +139,7 @@ struct vhost_dev {
 	struct mm_struct *mm;
 	struct mutex mutex;
 	struct vhost_virtqueue **vqs;
+	u64 features;
 	int nvqs;
 	struct eventfd_ctx *log_ctx;
 	struct llist_head work_list;
@@ -258,9 +258,9 @@ static inline void *vhost_vq_get_backend(struct vhost_virtqueue *vq)
 	return vq->private_data;
 }
 
-static inline bool vhost_has_feature(struct vhost_virtqueue *vq, int bit)
+static inline bool vhost_has_feature(struct vhost_dev *vdev, int bit)
 {
-	return vq->acked_features & (1ULL << bit);
+	return vdev->features & (1ULL << bit);
 }
 
 static inline bool vhost_backend_has_feature(struct vhost_virtqueue *vq, int bit)
diff --git a/drivers/vhost/vsock.c b/drivers/vhost/vsock.c
index fb4e944c4d0d..8317ad026e3d 100644
--- a/drivers/vhost/vsock.c
+++ b/drivers/vhost/vsock.c
@@ -757,26 +757,20 @@ static int vhost_vsock_set_cid(struct vhost_vsock *vsock, u64 guest_cid)
 
 static int vhost_vsock_set_features(struct vhost_vsock *vsock, u64 features)
 {
-	struct vhost_virtqueue *vq;
-	int i;
+	struct vhost_dev *vdev = &vsock->dev;
 
 	if (features & ~VHOST_VSOCK_FEATURES)
 		return -EOPNOTSUPP;
 
-	mutex_lock(&vsock->dev.mutex);
+	mutex_lock(&vdev->mutex);
 	if ((features & (1 << VHOST_F_LOG_ALL)) &&
-	    !vhost_log_access_ok(&vsock->dev)) {
-		mutex_unlock(&vsock->dev.mutex);
+	    !vhost_log_access_ok(vdev)) {
+		mutex_unlock(&vdev->mutex);
 		return -EFAULT;
 	}
 
-	for (i = 0; i < ARRAY_SIZE(vsock->vqs); i++) {
-		vq = &vsock->vqs[i];
-		mutex_lock(&vq->mutex);
-		vq->acked_features = features;
-		mutex_unlock(&vq->mutex);
-	}
-	mutex_unlock(&vsock->dev.mutex);
+	vdev->features = features;
+	mutex_unlock(&vdev->mutex);
 	return 0;
 }
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-2-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB2FS633QKGQEYCAPNCA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 0818B211E30
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:23:06 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id bb8sf7814207plb.16
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:23:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678184; cv=pass;
        d=google.com; s=arc-20160816;
        b=dXM1FDKKmRkoeGIJMraF0mJzrFYuz3ouPBsYDPWbuO74iycJkdv71lgGCRLJV0OmIl
         hdaVBP/0m+6TRfWkvzaO9/40FK46HFLZYsJLZFQj9gxEH+hXQm5zVZea9ZhX4TBTJG75
         pjjvjLAn0sYKIPVP3tN6NYaBtKnGRfeCUj3VO69ra3DIL6K/Y2CHJbOQq7mqW1gFkmzR
         o9eoxZVv7sIBH1Z0wlLiCHv8WwYk8fYvLEuFmf1cDpGux9rRUSRI0coYnD0D4PgRuEKD
         JsJwRw7kpx6deEAZNZiEOw5rkM3j6LoBxVaoj9yqcOBNCetyQCS9NV/UhUkkblfUgQmj
         ueGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=BgfyDSnkbmEp73lwG7N1rfgyP3+CnPtzEvPGD8vtK4A=;
        b=QPvcTT6+hOIu1TV31yPARB5BjwQBflHsIXMwDPSWdrsGTeN3GC3Dfscu9nOek3PMZl
         rsnKRzHrb/R/4RlkpNQXPvgMLrAXTxjlN+/bdB/sD2DU9M3R3snSuqSJQ9sA/p56yYlV
         b4lnYQsY6avr2S/ru5LhsNIm9pDkAnG6STu3z90D810Ja6tldEPtUjareCVEdxcO8ZEn
         4pWt2eVqvIO4mGiwmssBb85YqNODb8UWeBi0B/0kl3u3o8MxH38a3Y7IqajyH/2Bbp0+
         6LLD7NDWT4ABDCRjyS70HIhaFEf7yWLPd6ylJbLVueVpIzPjHZ8MyccKjQPNxlLGPCgS
         KKQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=NTB4WUvW;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BgfyDSnkbmEp73lwG7N1rfgyP3+CnPtzEvPGD8vtK4A=;
        b=EEnkXn9P8fkJAcAEvNHw939zqAQfJnT1NfQyN1yd7efMHnyWJlPqfzkdiwfirp3KiC
         uqVBQcgyWWl72ug4dL42UeKAlXJhmypxxiBXUrPrB4B5LlCCfcwvofFptx/CwmhwOaft
         UGq9LoyHJTrWO4sCREg54j+BI/4bOnFt0lB4gRT6TxXqsSwPGsGq5Il5ZAgxnYFOBfId
         9jnNxU406JK3fBvVngFgm4MOopc06JdWzRGsJ2D4uRQ6gSpiMOKh6sfkrZPIeAUWGBux
         tczZSAt2CE65qqBEMsvKE4Z7pFqk9H9u5M1wGocYKOK4i5pVSw2IvB2sPnpTh2375Nb9
         5+GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BgfyDSnkbmEp73lwG7N1rfgyP3+CnPtzEvPGD8vtK4A=;
        b=BdCTyxtoQ9GRA0C5xi+iR4JZMyjyKV8PCzLxockfc7X1XPGxUU+gZ1tyaGIKvoAjFC
         oPeMEbgbHnnPeAdC0UkVngWNWn5iZnCnXElmtVMTv856M+uuLJaCkkRwSHt0Po7iA9AH
         ODFyHW94FWMTsDLoPPgwH8mEUbCM+f5DZKZ5A4ZIvnEHW0ywfyBIWQg+loRkYLdr0o75
         +CrLwRLSpNWncGuDHYKouT0fUf8qX+bmd92SG/ZA/C2uITkCzohOzoO/3sPldwUsFhXQ
         NvWlXJ5J8EgQ8Qtw08et5iLbeeSmcd1G8pnHj31XOcp6XqCdoyjnwRmva2oY1hGH4qk0
         Gdaw==
X-Gm-Message-State: AOAM5304wHfnR9zq7vb54+O5GZLEqk3aNDp8Yfe9T4V4Rqab/ADq+N7v
	CQbbOMO9KlL2Vuhq4jnWV5w=
X-Google-Smtp-Source: ABdhPJxuVdGnMeMHpuof+SW4JqrS9VTh/JF5Y6JhfH6stZd9ygbcmj7hBjurpidWiwfd8fGINhf3mQ==
X-Received: by 2002:a17:90b:4c8b:: with SMTP id my11mr31968294pjb.153.1593678184366;
        Thu, 02 Jul 2020 01:23:04 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:6b02:: with SMTP id o2ls2001283plk.7.gmail; Thu, 02
 Jul 2020 01:23:04 -0700 (PDT)
X-Received: by 2002:a17:902:8649:: with SMTP id y9mr26416990plt.60.1593678184001;
        Thu, 02 Jul 2020 01:23:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678183; cv=none;
        d=google.com; s=arc-20160816;
        b=FBGbWhiQv6KQiyJx24YNeJyHH6bFO+O3hyQVEWE3BpNe1xhfDtG1TH/fP6/sO4Qqbs
         tD8hgou73OjgTgKyMwzDC5yeh9FO/IPvTxRGEvQWoBgcs1xdZM3kPU6OFAOgiiY/5LP7
         b5eEV7UVPteOuai3y+pb+BSMAk0OUKCeHnXc5C0JwALZ/gz5wgHEvAQ/OkZw+jpqhAUL
         6+vDCq7UxFErnfS8s0sWORtbys9+pqfusO+PL1eT/hvBbxp1sM692KWJJZ2emX6I0Kde
         exDLFJHJAdYR+KgfbT9f9QGi8WqTA0kOmzQlYbORwoiTfNCghiruFeslBCdxikdg1nkd
         Xjyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=JPB+vJhEmEbr7wwXfNji0ZXjBCp2o1x06a2a2R9o46s=;
        b=L+eXTHniZCESUcpbo176uoOHe3/C78A7quPkMm8XJommPl945tVznt147f77aI5BVf
         uz8/Hwqof4LcVRyHdCjvNme/aLiadQRjWiHbLgFO7Y+tzc3VjNz++IslG8WgwSOqX2zG
         s9ctVsaWnRPfaW3+sD0cDzf3LwAyUWvfF/HqGMg6XzhLQo/iV8+Dmzd5f2VtTOuO5f05
         bSvdzjgDJbKwNkJaPSpO5op2KMhv6VuKqmgO+jgEC/lqvwQumOxOnr++7VZegMRgqdmQ
         OAY1aPzBjzRx+5rm3z/93XkVEIZQM8c6fXTxOGlAe+4YDScrd8HWHYSutd5wIfID3HMz
         qmvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=NTB4WUvW;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id cp21si498760pjb.3.2020.07.02.01.23.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:23:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628MwtA042318;
	Thu, 2 Jul 2020 03:22:58 -0500
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628Mw7t031199
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:22:58 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:22:58 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:22:58 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYO006145;
	Thu, 2 Jul 2020 03:22:53 -0500
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
Subject: [RFC PATCH 12/22] virtio: Add ops to allocate and free buffer
Date: Thu, 2 Jul 2020 13:51:33 +0530
Message-ID: <20200702082143.25259-13-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=NTB4WUvW;       spf=pass
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

Add ops to allocate and free buffer in struct virtio_config_ops.
Certain vhost devices can have restriction on the range of memory
it can access on the virtio. The virtio drivers attached to
such vhost devices reserves memory that can be accessed by
vhost. This function allocates buffer for such reserved region.

For instance when virtio-vhost is used by two hosts connected to
NTB, the vhost can access only memory exposed by memory windows
and the size of the memory window can be limited. Here the NTB
virtio driver can reserve a small region (few MBs) and provide
buffer address from this pool whenever requested by virtio client
driver.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 include/linux/virtio_config.h | 42 +++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/include/linux/virtio_config.h b/include/linux/virtio_config.h
index bb4cc4910750..419f733017c2 100644
--- a/include/linux/virtio_config.h
+++ b/include/linux/virtio_config.h
@@ -65,6 +65,9 @@ struct irq_affinity;
  *      the caller can then copy.
  * @set_vq_affinity: set the affinity for a virtqueue (optional).
  * @get_vq_affinity: get the affinity for a virtqueue (optional).
+ * @alloc_buffer: Allocate and provide buffer addresses that can be
+ *      accessed by both virtio and vhost
+ * @free_buffer: Free the allocated buffer address
  */
 typedef void vq_callback_t(struct virtqueue *);
 struct virtio_config_ops {
@@ -88,6 +91,9 @@ struct virtio_config_ops {
 			       const struct cpumask *cpu_mask);
 	const struct cpumask *(*get_vq_affinity)(struct virtio_device *vdev,
 			int index);
+	void * (*alloc_buffer)(struct virtio_device *vdev, size_t size);
+	void (*free_buffer)(struct virtio_device *vdev, void *addr,
+			    size_t size);
 };
 
 /* If driver didn't advertise the feature, it will never appear. */
@@ -232,6 +238,42 @@ const char *virtio_bus_name(struct virtio_device *vdev)
 	return vdev->config->bus_name(vdev);
 }
 
+/**
+ * virtio_alloc_buffer - Allocate buffer from the reserved memory
+ * @vdev: Virtio device which manages the reserved memory
+ * @size: Size of the buffer to be allocated
+ *
+ * Certain vhost devices can have restriction on the range of memory
+ * it can access on the virtio. The virtio drivers attached to
+ * such vhost devices reserves memory that can be accessed by
+ * vhost. This function allocates buffer for such reserved region.
+ */
+static inline void *
+virtio_alloc_buffer(struct virtio_device *vdev, size_t size)
+{
+	if (!vdev->config->alloc_buffer)
+		return NULL;
+
+	return vdev->config->alloc_buffer(vdev, size);
+}
+
+/**
+ * virtio_free_buffer - Free the allocated buffer
+ * @vdev: Virtio device which manages the reserved memory
+ * @addr: Address returned by virtio_alloc_buffer()
+ * @size: Size of the buffer that has to be freed
+ *
+ * Free the allocated buffer address given by virtio_alloc_buffer().
+ */
+static inline void
+virtio_free_buffer(struct virtio_device *vdev, void *addr, size_t size)
+{
+	if (!vdev->config->free_buffer)
+		return;
+
+	return vdev->config->free_buffer(vdev, addr, size);
+}
+
 /**
  * virtqueue_set_affinity - setting affinity for a virtqueue
  * @vq: the virtqueue
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-13-kishon%40ti.com.

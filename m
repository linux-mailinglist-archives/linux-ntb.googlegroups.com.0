Return-Path: <linux-ntb+bncBCOOP4VF5IDRBW5S633QKGQES2SE2OY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B7F211E2D
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:22:53 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id p4sf20025382pgf.10
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:22:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678172; cv=pass;
        d=google.com; s=arc-20160816;
        b=v8UJq9gaBArgZxuzR3D/MXXUnEWupCGyv4lBsMndGq/qwntN5lZP4akajNr9vYowz/
         h2vR6yozpn/tX95vYF5MXlkczHocH5SsDJnu6o5Ke/67SF6ZYtCKPWSyglt/Lqiq9XRv
         vcFYEcRrxEZPKwl5cyBMGiKoYMDOEmdJL53J3kVaZnAe7xo3u2kQx5Yw+A04qBTekIgI
         Rs6yvsx0Q0s1LpcHxwP6v7farXT7dX2AvTmr7Kdw4EsXUj+C6CJ/gVIwCnFOT0h6/2mY
         +co9N9cEvlWAHEEYchhG1eTg8j2BtJAN93Ly2qztrxanNaq/C9ub8fnyHipvutZpD06C
         A2ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=7hZPdXBjSn+20dh4IvZmSCG7PUi/gTCbFdr78fgWUts=;
        b=i0Cf1FS23X+PG/3fVjy1ccTLvy9wAIC6T9PiDZdcDrbUwO4WbAjqRyeioDfHe8Mih5
         lTyLy2LXREZf+Mq9DRx/UmDl19QMpKud36JgXulg57j7NQEDN30D0YMXikMxYhd9FaCL
         b1c09HlEm6ahEndjlVXc4WguU7Ls0ox64n23HMYeRQfigTX6vJjYDNUMHN5dlTuj56K+
         Z1ABeXbdKCfZZm4ETZUFdUfHTRjc2xmioo24sKMl0XdHe24yBSi3DO9TQkQIOdxZ//iA
         NN8UwAZrA1szEhORiwhhZFtwjL8wmG+qzWIjmBeJpRedW0R9gPWzwq+lvFa4wBkOyymQ
         i5PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=jsOM0ruA;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7hZPdXBjSn+20dh4IvZmSCG7PUi/gTCbFdr78fgWUts=;
        b=ETOnF+cy+kCUWkl39BYCAWW0qe0+AWyhr6fqcfjkc+uZFi45i8x3hq/Yovpe4L846K
         p5TA7kTjCF29HL6Xf5WZbfe8EyYRdMesDXFzlIFsOz0km87B0EGGmuuYTGnile8NMIWt
         ypvMBantZimAcWPlGZtb3kyi0I882W0H1bFa1tRyPxm0g7ULBo2d+5F6SmhWHAc6iCTf
         dQcx7yV2MqPDTZu+zo2Hvx4klINTJ/fpzg89oJ2JUD3PbwF/rufhKs6+pJeS2mDrJj1v
         Usbb/wUV90KxwIMXT+Rdas1Q3fAG3ctaKdVyKc/12BQakDIpeXXGhCmmH3jLLoZz/ce7
         9fgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7hZPdXBjSn+20dh4IvZmSCG7PUi/gTCbFdr78fgWUts=;
        b=jCs8sqX2aolXVFTMYO9d007sNXlBVffdMM9aIjSU5JyWPjPAMVBR112VJ4o6j5NQsG
         quyG4Af9AaJOBagaOU41RwH9tB/QAlNdISgrASL5YgJzw7IbGzyxzRZSqgH+Nf1XDy/a
         aDpONt9M1CEJYOSLh5Yb3HuwPtBd4eEPH+iSRGT+IqyoyMzhiO/30AYYnKFQXPUi+vMk
         ATN0FQhnf/5ST7RRbd0khkOL25R1FuaD4BZSALYdYFTLGQVi99Q/XUemVdMv9rYI1kL5
         NsIBVxyq6m6cAQ65pyFNOGWMS8FUCImDGWDFZABst8DOyNtj55qqmnBWIxu6Ju1Ojyye
         UzLw==
X-Gm-Message-State: AOAM533gZWmeNXXzFqiGYyRfBtd9UjSD0XdvIg5YlxfNL3EBzxOPUH7I
	Mmh95XU4uWDnrQkOn6wgea4=
X-Google-Smtp-Source: ABdhPJynri+7M/o7xaUBRQDAG36t2N33p+atREpEClLqeGB0q2qUt2+mCrnRo1HiJMHloHrpZR/3lA==
X-Received: by 2002:a17:902:690b:: with SMTP id j11mr17993094plk.313.1593678171878;
        Thu, 02 Jul 2020 01:22:51 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:9f8f:: with SMTP id g15ls1992477plq.6.gmail; Thu, 02
 Jul 2020 01:22:51 -0700 (PDT)
X-Received: by 2002:a17:90a:f996:: with SMTP id cq22mr34670550pjb.208.1593678171492;
        Thu, 02 Jul 2020 01:22:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678171; cv=none;
        d=google.com; s=arc-20160816;
        b=g8Sj5390msSoq5lqP0gf8VNbP5RqqS9+E0ySxKqBDgzL9WmCLONKAHjpQaYfN85n9N
         j6b9c6ZYBODYgMUg2IQB9/y0M4bqasOI/NlvXTYB10kd6N7URJnD2hQPSBcABMa8OCCQ
         byPQBxwa/QwSuCPJs1mXn6kLWw0Q0rlN6Qz3lKjNRmahGWygtEdm8S/5PmSzhv+2u9of
         SoDGxDb1ORG53tIj3V4YUynyLN8N/OiPSEWxWu1pKhITV+5dQbvE179OOofzklurRMQL
         QWNd0ATK2cGyALFXZFtp67en7qLCo9Kg5vZweW1G4cHiGoYMrr3A7YjmLhr33d0ILPYg
         qxTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=Am7wFkFFAaUQImlGyftO9CDeQuGJEcsN8HZMuWnBRcM=;
        b=eABPjzRzLFptQAFxMvVPANhHPjhZFqZALCP5rx10oqXcCdqT3hICtA9uje6Ki4yd6r
         qESlYiDjxbguoOtjpCY8Im/bcTqgMJDYJEl3ZzM1L7qhVGbwA0cToiYMTRs22xMld60a
         a8ue73n7ptYF7XxTr7Susf4gqHScPqp2jc97sVSIOBi624HYSW9MstfOFqMzUlDiWHgo
         OFneEZ0qtHp/wgBug5Liey/D4XEtDL+08GRKk/SJ/zzb0i9/+OU8CLy2sTwWpkIUFmNM
         HO1eX77dlDlX7dxf05f4U9HelGkvFOAp0A0swqVT66kSy7bNZYWCym78pcoPsJtssrop
         Qqog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=jsOM0ruA;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id j23si614708pfr.0.2020.07.02.01.22.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:22:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628Mld5086485;
	Thu, 2 Jul 2020 03:22:47 -0500
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628MlJN031070
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:22:47 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:22:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:22:47 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYM006145;
	Thu, 2 Jul 2020 03:22:41 -0500
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
Subject: [RFC PATCH 10/22] rpmsg: virtio_rpmsg_bus: Add Address Service Notification support
Date: Thu, 2 Jul 2020 13:51:31 +0530
Message-ID: <20200702082143.25259-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=jsOM0ruA;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted
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

Add support to send address service notification message to the backend
rpmsg device. This informs the backend rpmsg device about the address
allocated to the channel that is created in response to the name service
announce message from backend rpmsg device. This is in preparation to
add backend rpmsg device using VHOST framework in Linux.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/rpmsg/virtio_rpmsg_bus.c | 92 +++++++++++++++++++++++++++++---
 1 file changed, 85 insertions(+), 7 deletions(-)

diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
index 2d0d42084ac0..19d930c9fc2c 100644
--- a/drivers/rpmsg/virtio_rpmsg_bus.c
+++ b/drivers/rpmsg/virtio_rpmsg_bus.c
@@ -71,6 +71,7 @@ struct virtproc_info {
 
 /* The feature bitmap for virtio rpmsg */
 #define VIRTIO_RPMSG_F_NS	0 /* RP supports name service notifications */
+#define VIRTIO_RPMSG_F_AS	1 /* RP supports address service notifications */
 
 /**
  * struct rpmsg_hdr - common header for all rpmsg messages
@@ -110,6 +111,26 @@ struct rpmsg_ns_msg {
 	u32 flags;
 } __packed;
 
+/**
+ * struct rpmsg_as_msg - dynamic address service announcement message
+ * @name: name of the created channel
+ * @dst: destination address to be used by the backend rpdev
+ * @src: source address of the backend rpdev (the one that sent name service
+ * announcement message)
+ * @flags: indicates whether service is created or destroyed
+ *
+ * This message is sent (by virtio_rpmsg_bus) when a new channel is created
+ * in response to name service announcement message by backend rpdev to create
+ * a new channel. This sends the allocated source address for the channel
+ * (destination address for the backend rpdev) to the backend rpdev.
+ */
+struct rpmsg_as_msg {
+	char name[RPMSG_NAME_SIZE];
+	u32 dst;
+	u32 src;
+	u32 flags;
+} __packed;
+
 /**
  * enum rpmsg_ns_flags - dynamic name service announcement flags
  *
@@ -119,6 +140,19 @@ struct rpmsg_ns_msg {
 enum rpmsg_ns_flags {
 	RPMSG_NS_CREATE		= 0,
 	RPMSG_NS_DESTROY	= 1,
+	RPMSG_AS_ANNOUNCE	= 2,
+};
+
+/**
+ * enum rpmsg_as_flags - dynamic address service announcement flags
+ *
+ * @RPMSG_AS_ASSIGN: address has been assigned to the newly created channel
+ * @RPMSG_AS_FREE: assigned address is freed from the channel and no longer can
+ * be used
+ */
+enum rpmsg_as_flags {
+	RPMSG_AS_ASSIGN		= 1,
+	RPMSG_AS_FREE		= 2,
 };
 
 /**
@@ -164,6 +198,9 @@ struct virtio_rpmsg_channel {
 /* Address 53 is reserved for advertising remote services */
 #define RPMSG_NS_ADDR			(53)
 
+/* Address 54 is reserved for advertising address services */
+#define RPMSG_AS_ADDR			(54)
+
 static void virtio_rpmsg_destroy_ept(struct rpmsg_endpoint *ept);
 static int virtio_rpmsg_send(struct rpmsg_endpoint *ept, void *data, int len);
 static int virtio_rpmsg_sendto(struct rpmsg_endpoint *ept, void *data, int len,
@@ -329,9 +366,11 @@ static int virtio_rpmsg_announce_create(struct rpmsg_device *rpdev)
 	struct device *dev = &rpdev->dev;
 	int err = 0;
 
+	if (!rpdev->ept || !rpdev->announce)
+		return err;
+
 	/* need to tell remote processor's name service about this channel ? */
-	if (rpdev->announce && rpdev->ept &&
-	    virtio_has_feature(vrp->vdev, VIRTIO_RPMSG_F_NS)) {
+	if (virtio_has_feature(vrp->vdev, VIRTIO_RPMSG_F_NS)) {
 		struct rpmsg_ns_msg nsm;
 
 		strncpy(nsm.name, rpdev->id.name, RPMSG_NAME_SIZE);
@@ -343,6 +382,23 @@ static int virtio_rpmsg_announce_create(struct rpmsg_device *rpdev)
 			dev_err(dev, "failed to announce service %d\n", err);
 	}
 
+	/*
+	 * need to tell remote processor's address service about the address allocated
+	 * to this channel
+	 */
+	if (virtio_has_feature(vrp->vdev, VIRTIO_RPMSG_F_AS)) {
+		struct rpmsg_as_msg asmsg;
+
+		strncpy(asmsg.name, rpdev->id.name, RPMSG_NAME_SIZE);
+		asmsg.dst = rpdev->src;
+		asmsg.src = rpdev->dst;
+		asmsg.flags = RPMSG_AS_ASSIGN;
+
+		err = rpmsg_sendto(rpdev->ept, &asmsg, sizeof(asmsg), RPMSG_AS_ADDR);
+		if (err)
+			dev_err(dev, "failed to announce service %d\n", err);
+	}
+
 	return err;
 }
 
@@ -353,9 +409,28 @@ static int virtio_rpmsg_announce_destroy(struct rpmsg_device *rpdev)
 	struct device *dev = &rpdev->dev;
 	int err = 0;
 
+	if (!rpdev->ept || !rpdev->announce)
+		return err;
+
+	/*
+	 * need to tell remote processor's address service that we're freeing
+	 * the address allocated to this channel
+	 */
+	if (virtio_has_feature(vrp->vdev, VIRTIO_RPMSG_F_AS)) {
+		struct rpmsg_as_msg asmsg;
+
+		strncpy(asmsg.name, rpdev->id.name, RPMSG_NAME_SIZE);
+		asmsg.dst = rpdev->src;
+		asmsg.src = rpdev->dst;
+		asmsg.flags = RPMSG_AS_FREE;
+
+		err = rpmsg_sendto(rpdev->ept, &asmsg, sizeof(asmsg), RPMSG_AS_ADDR);
+		if (err)
+			dev_err(dev, "failed to announce service %d\n", err);
+	}
+
 	/* tell remote processor's name service we're removing this channel */
-	if (rpdev->announce && rpdev->ept &&
-	    virtio_has_feature(vrp->vdev, VIRTIO_RPMSG_F_NS)) {
+	if (virtio_has_feature(vrp->vdev, VIRTIO_RPMSG_F_NS)) {
 		struct rpmsg_ns_msg nsm;
 
 		strncpy(nsm.name, rpdev->id.name, RPMSG_NAME_SIZE);
@@ -390,7 +465,8 @@ static void virtio_rpmsg_release_device(struct device *dev)
  * channels.
  */
 static struct rpmsg_device *rpmsg_create_channel(struct virtproc_info *vrp,
-						 struct rpmsg_channel_info *chinfo)
+						 struct rpmsg_channel_info *chinfo,
+						 bool announce)
 {
 	struct virtio_rpmsg_channel *vch;
 	struct rpmsg_device *rpdev;
@@ -424,7 +500,8 @@ static struct rpmsg_device *rpmsg_create_channel(struct virtproc_info *vrp,
 	 * rpmsg server channels has predefined local address (for now),
 	 * and their existence needs to be announced remotely
 	 */
-	rpdev->announce = rpdev->src != RPMSG_ADDR_ANY;
+	if (rpdev->src != RPMSG_ADDR_ANY || announce)
+		rpdev->announce = true;
 
 	strncpy(rpdev->id.name, chinfo->name, RPMSG_NAME_SIZE);
 
@@ -873,7 +950,7 @@ static int rpmsg_ns_cb(struct rpmsg_device *rpdev, void *data, int len,
 		if (ret)
 			dev_err(dev, "rpmsg_destroy_channel failed: %d\n", ret);
 	} else {
-		newch = rpmsg_create_channel(vrp, &chinfo);
+		newch = rpmsg_create_channel(vrp, &chinfo, msg->flags & RPMSG_AS_ANNOUNCE);
 		if (!newch)
 			dev_err(dev, "rpmsg_create_channel failed\n");
 	}
@@ -1042,6 +1119,7 @@ static struct virtio_device_id id_table[] = {
 
 static unsigned int features[] = {
 	VIRTIO_RPMSG_F_NS,
+	VIRTIO_RPMSG_F_AS,
 };
 
 static struct virtio_driver virtio_ipc_driver = {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-11-kishon%40ti.com.

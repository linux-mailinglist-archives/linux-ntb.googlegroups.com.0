Return-Path: <linux-ntb+bncBCOOP4VF5IDRBUNS633QKGQERT2XKNI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F9CC211E22
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:22:42 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id w18sf17816950qvd.16
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:22:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678161; cv=pass;
        d=google.com; s=arc-20160816;
        b=FV2NFZxkkojeFr5lewuN/kvRWXGx0yEHVO6+GkUQyfwwc+FuzYUjC2tMgJxb0OqovO
         u8HfBcNLR6iiuzpRmNiugRwN9PrbnDW8yKPtnRXLGVM2VOagWSxCiNKXd9tlNdYZPzlC
         vugN6BZcy7EashU3YnAbwHeHY5skL11SuNEpso5GplKZo0I+JAXlkt9bBleP+q+vMs83
         +wulC1VCSajItBDq+h4YDE1+Hqw9EI08GY9NWxBY0I/iQV6UOeLZ0bWYgApavsgmkCGj
         P9VlF3TmSBQ+wy0zUYQCy43WAObzu1JSXKud/g9mJ4EWxGjvwbPa8WcIoNMKqtvJkixK
         RQ4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=kguw41tRn7HZt3gET9kRfhjw+U3zofkYysxza4wnQ4Y=;
        b=mrWuomzGB1755UXmCCVRV0Ni1Onq89sWmhi0bae/atUfxRXgaEfR+DHXfCLYRp4YWR
         dIe8qSybnGKRSUJhX7Zh4hByyj0Oq8o5C2SqPU81zoC5lwxT7XFCCbt+LcKmCkNHFx3E
         W90Ex/n5ka6hS5QM6VlVhkA8/EZnHo9BsbVo7xFu2ofRuM1nqfi1VuM42hmAH67hJab9
         3mGzEvO41nxHicTGHT3D2PYGw+qNnrDinwIt9BRXKoYiGzo7T3Zi+/YDpzB4Z3ZoJRQY
         tMbbWbhBD2UfD/TTe+RZ91tGV3u8O4/G8ZjaqiRRGFIKcyCVOf+omk27H09TEO76us59
         aivw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=tsLOiQk2;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kguw41tRn7HZt3gET9kRfhjw+U3zofkYysxza4wnQ4Y=;
        b=ShvIDEXpDwmHrHey74H6dmIEcrWWIEHFR5qn3v3wZ6Ol0pvygzFy634F4hgaGTOVL+
         AwHYAM7ATjmdwLEzAVn+Em0j5dq4sBrm5+l4VElggHyAsEHj2lM5aJK0O+UWwKZu4UUo
         4JndKpOSNMd6ghGAzSuMm3khDlYNRqVAtEiyZ0Eiu4g63Alpv6CvP2+kE1yH/Ysu+6S1
         xog+iX8oXhFmbuQksUHMtJDMERpdJw0CuhFXEvwKcM7d71j10o4a4TeI+1uKiDL4NZ8F
         Dlaiz4vPdORLz2Heaqv63dlDLJQYQkIJggBN89GhuBvMh3Z19g4WPcHAWHbux20iYmuA
         ueGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kguw41tRn7HZt3gET9kRfhjw+U3zofkYysxza4wnQ4Y=;
        b=Actt7gi2dKiCEijooCmstoXpLasPYvFOQGMec5dsT9nVurfT+aUsGtKXoW3YyW6h1J
         3WKQpEBSaiQRzr6CSQHM4ygAW3WucxelIt0IR46il3MVKg7d93GiVfqXIfZ/VbXxc8uA
         ZA19IITxOla8QqUMrYWuVHxfvIq693iGdgU6FUxkKgdGJ3uTr9l9GirlrwTCwKE44iw8
         6G0CaUU8iWmY6CbkOgOB7WGTTy7ejSqMqmn1PjcyJh4pT6GYwLbNiozokbCdpcg/1dXG
         GV25cF5XYtK48d1+kcC+i4bbQ8BYGpQE/5t0Ex9yyz3VFNsUP8qOzm8QEs2ELplh4dGI
         injw==
X-Gm-Message-State: AOAM532N7i+THh0OOlHOQKS5v1mUeztpXnvIKheJQhYH3xkl0sAf93DG
	u815VI+3xFmBSy9XPoF8S6w=
X-Google-Smtp-Source: ABdhPJxatoTo438diE9BGMN6J5etJNf7VSLdC+BakAyORpW1sZqj3pNt0stGfCco/T7fMlYZ95RrDg==
X-Received: by 2002:ae9:e60d:: with SMTP id z13mr28213801qkf.426.1593678161339;
        Thu, 02 Jul 2020 01:22:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:c1c4:: with SMTP id v4ls22285qvh.2.gmail; Thu, 02 Jul
 2020 01:22:41 -0700 (PDT)
X-Received: by 2002:a0c:d687:: with SMTP id k7mr21609172qvi.42.1593678161087;
        Thu, 02 Jul 2020 01:22:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678161; cv=none;
        d=google.com; s=arc-20160816;
        b=nez/WrGlxfSRPeZ0NqrqN6R7Sk50KXTUHtV3Bf+NV2FZJGim4n2f61Wp0sncWmxjvV
         pjw1kih6gQgP5yw083JU5aJ5qQrIZ8lpwDHPpaanTl+ZoeG1V8+aTGC6vr+pz8ZqIJ3a
         WrdJ5PuxD7xiXLM9qEEdqVErFxBCrEuyow8y2aq/yIYkSSfDL6BWvNKjaVeOhCy5CdWK
         GCJdY8q903KNQPETAyd0+4hW0yfpxphi5yULQ06TFyAEKqA8C50jqCxdK10jfoo049ih
         ciOoh/ZkxtnlNrQzeeSbIoNKgWjpd21y4txjLsvExC4qipgBGMzSfoI0QsgPozTy58WR
         PJWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=xFcqYzNmQgKuE1+hIXHcn1dlvHlbBiHv2NFJRAR7N1Q=;
        b=vrIVx3zVQVliID5xYUyKBSS4WiO+NaFUZD+TOXMXgNFrw6qXEwPUcnh2rqseR/hXwO
         ksVI6dBoRcKjtQbmdu1cLMNm8RWg8XqWBcouC+6Mxv8fon/qvRJ4vWUkSn3bX3bvDXQC
         QdiFP1viCoAfFlDTndLS/kJs4cqqiaA0Xcjj2+jUDShvQ1u26lqBVWd+aXGndrIM//FH
         /YZ95Ay660WJSvr8H7kpVHWXc2bdR1OjLVtLCCndtZwVs7Cr72igXaGM5ymbfV+ZrvSN
         Ka6WzHKllEj/4lGSnBdfeImfKi/Am4v7lvKM/hoVatR7vOucHLdYkdic6NRH/1ScpMzc
         l8fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=tsLOiQk2;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id b26si458589qtq.3.2020.07.02.01.22.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:22:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628Mawm081816;
	Thu, 2 Jul 2020 03:22:36 -0500
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628MaYH065363
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:22:36 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:22:35 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:22:35 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYK006145;
	Thu, 2 Jul 2020 03:22:30 -0500
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
Subject: [RFC PATCH 08/22] rpmsg: virtio_rpmsg_bus: Disable receive virtqueue callback when reading messages
Date: Thu, 2 Jul 2020 13:51:29 +0530
Message-ID: <20200702082143.25259-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=tsLOiQk2;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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

Since rpmsg_recv_done() reads messages in a while loop, disable
callbacks until the while loop exits. This helps to get rid of the
annoying "uhm, incoming signal, but no used buffer ?" message.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/rpmsg/virtio_rpmsg_bus.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
index 376ebbf880d6..2d0d42084ac0 100644
--- a/drivers/rpmsg/virtio_rpmsg_bus.c
+++ b/drivers/rpmsg/virtio_rpmsg_bus.c
@@ -777,6 +777,7 @@ static void rpmsg_recv_done(struct virtqueue *rvq)
 		return;
 	}
 
+	virtqueue_disable_cb(rvq);
 	while (msg) {
 		err = rpmsg_recv_single(vrp, dev, msg, len);
 		if (err)
@@ -786,6 +787,19 @@ static void rpmsg_recv_done(struct virtqueue *rvq)
 
 		msg = virtqueue_get_buf(rvq, &len);
 	}
+	virtqueue_enable_cb(rvq);
+
+	/*
+	 * Try to read message one more time in case a new message is submitted
+	 * after virtqueue_get_buf() inside the while loop but before enabling
+	 * callbacks
+	 */
+	msg = virtqueue_get_buf(rvq, &len);
+	if (msg) {
+		err = rpmsg_recv_single(vrp, dev, msg, len);
+		if (!err)
+			msgs_received++;
+	}
 
 	dev_dbg(dev, "Received %u messages\n", msgs_received);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-9-kishon%40ti.com.

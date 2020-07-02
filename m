Return-Path: <linux-ntb+bncBCOOP4VF5IDRBYNS633QKGQEREUAM6A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A06211E2E
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:22:58 +0200 (CEST)
Received: by mail-ot1-x33c.google.com with SMTP id g70sf3569611otg.1
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:22:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678177; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q58r0M4BRG+tOsBV9WyovzoOSbGv/nW5WuXaWciUHouNtvVClqkQT+e6jqQEedcacb
         orSYqV722LvWfDYZbHwfXsHrJw719avYlksvijWMcYPd81Hl8KxcyvPcV+tw7hmPAdsJ
         JpFo0WTIbd/OTqMjY213OCN6L1KvqM9zdlg4R5AMvhFENmYljcqo0QRjJDKEE39orkZb
         03T1Fus3HIrxhQmpGwVLekPTPomloarYCgNh0Nhe7fi8ycamhvvNmkrbvo1pXqFoZ7lS
         FykpeISbiX7Al20/kavKR4Jb8NZHEsbBfFsL6lcqlV/ruiKmbNeVQntEMs3tSNMUCFHT
         LCTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=6CErYhhGRsOUgZ6LHyPmklgmJ80KIEp0PilWEYwxRww=;
        b=OwJA99O4v+LbNFCg2MO6keB89qD1G3kJLj6RUrInUOI3OOIoYs9GchyM0VcUFxIit3
         7mBvf1aYyPlp8/qPWw3I9UPtWvUKB7bR9RYNVYUFudAL38OH2yi5OEedFN4qsj5OBI3h
         5pTJfNFRuH7kprdtWOgLMv/MdNWaO1IPO86kr5VKlzi+eYm6+sHGAG4PLFrXgUEP3DrR
         4Zwz5qPnRLc3jKyNaK5IsdEUijtCW3aVvJ/sXUjxbuHSnC54YwfIfYpBo6DIYOnfvAai
         XWfFSAjQn9LZSjyYMBqfjNTg4VHOasLmYVdiB+sOQW9jVU5y20ccxIB2GJuZhOSi4HGt
         rkxA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=aQhF8M4Y;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6CErYhhGRsOUgZ6LHyPmklgmJ80KIEp0PilWEYwxRww=;
        b=PEP3Pny1WlIO/aML7MXbaZCx07SowYd0B9z4yql7zPEpjbDE1S4Gym5otY6kBDi1HY
         DEkZkiLpn4uBFHlFr11YVXLpHvnv8kJqxSmC6gY1W1Jo+lOUIkYO1Y3WDWYoR3Un4gg1
         Xa3bsMlEADCsujS2SUgaKRpZ46wLyhNseSQLx4TjclYIlUDEIwceMS4Zhu5XazHe4uIK
         x89YN6pBWIn1UPSqsGq40hiNWo9M/x9ksEp5RG+hgf2TXhwc2hRFbIAcNe2n8+Wf6QYb
         4xP4DUAXDC/THUNIXe4b0gdvhVQeJZ3ytpBWughamHWUwuWHddN6/5eoqXbj9vY9oHxj
         BIAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6CErYhhGRsOUgZ6LHyPmklgmJ80KIEp0PilWEYwxRww=;
        b=TLJVyjkYVZcaeyKGfscHw1sj9/Ljh55IVM0jGoWs+NycLwlrxgbfKki7h8rQ65Pvuh
         FZpW5fflLNM2Yg4D9jW1OLd9eU2Cuy9cvB/jhzYnsfr3rK5OZZMHtjuattbfxy3zy60e
         IEDTJXedULJHMRBB7XWR34LeTTGQJ9tbQhMjbwZAhf73oSxG0doAceOQGZQegJwiIH3K
         vjd89n1hXo6oxKqwOcoQsVgp4pZjjYvNtIagVimpVaRrEu8iifa3MS/MYPFPOAq0PGg7
         He/rnXGskDQCmu293UXiT3vWLI5iAB6OAH0ZSJvnj+Pv0IBjUbzJh7x+3bp61WEGyxHr
         8big==
X-Gm-Message-State: AOAM533pdjwMCZ0p/n/Mn9Gfk2vSHvbrhwbCPWfuQ0ofHbDWuTZgndiW
	Q5Vu3+BfTNNvJsXEt3Apt7A=
X-Google-Smtp-Source: ABdhPJzcWYdDsI77TUrEEwflcdzdWxJsAPaNz9Sl5virPf6wOKk/BM0qa0WrZZLJUTiokI52XCNmPQ==
X-Received: by 2002:a4a:b202:: with SMTP id d2mr26068147ooo.92.1593678177681;
        Thu, 02 Jul 2020 01:22:57 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:3c9:: with SMTP id o9ls340881oie.6.gmail; Thu, 02
 Jul 2020 01:22:57 -0700 (PDT)
X-Received: by 2002:aca:aacb:: with SMTP id t194mr17236806oie.19.1593678177379;
        Thu, 02 Jul 2020 01:22:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678177; cv=none;
        d=google.com; s=arc-20160816;
        b=pRZ2QbbdjljUBZKAyCCwJMSrGFAwIdwteC5lczc6aFdOgUwQOvF3KFDimbwYBtSmbv
         FQ2TL6ACM1vaEtGmDto7D7cln1tCKmLg5JvcYxoPWqv7iP9nZ5HBizHyUzOmEUL1L6Bu
         o7JN/JaC2oOwsaHOAjKPIBzuzKquXw1sARg4qaJq2BRe0d5GUjeGe3pQxFDbpD1rm/KN
         VKXXcrkAs/cbnedCjP1KX1t0IihEmQOkDGLl/Fw4Wv30MJzmMdYax31XvkYLLUYo2Os9
         uGAzkv7Ftq3zya8m9gYvU2yTizJXjW5L4o3Ac2BuluMhZx5WqyAF3ICngHwcTaU7kqK0
         mJYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=YsmvRj9z3gDFXuXNfVPm9r+zKmA28FIRtmnlRZD7Iho=;
        b=T1B7QRHGoHL4UwbbWszzUx+4mAxrYwB5dboJnAXlT7FYwY4NYb+SO7Du3Q46d/k+EV
         XulPPVCXVo7DBK5HwEELuU7LdiUleDaj4plCJSlSghA+ryzXm99ZW+G8pCi2Sm8lJuei
         bIzyIlCoFkTIKKozmVDJONZDdvNVdKaxyUwoTqc4kLm+gHEBbjHlvC84jJZIb/zLPYCN
         UDG0rNOoWgFSsNpm7aHVF/2Ens9XgJz8axd0iQb3QDSfXx9T4GJSvnHDY0ieH1YpFZAi
         ZxFEor0Zh2TqsswyrjxEqkZYzGVfpu2BcezMORAI7tWdCEiVKkChWsCHc8NtKZd7GaEo
         1bHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=aQhF8M4Y;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id n25si26192otf.2.2020.07.02.01.22.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:22:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628MrUY017271;
	Thu, 2 Jul 2020 03:22:53 -0500
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628MruT086357;
	Thu, 2 Jul 2020 03:22:53 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:22:52 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:22:52 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYN006145;
	Thu, 2 Jul 2020 03:22:47 -0500
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
Subject: [RFC PATCH 11/22] rpmsg: virtio_rpmsg_bus: Move generic rpmsg structure to rpmsg_internal.h
Date: Thu, 2 Jul 2020 13:51:32 +0530
Message-ID: <20200702082143.25259-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=aQhF8M4Y;       spf=pass
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

No functional change intended. Move generic rpmsg structures like
"struct rpmsg_hdr", "struct rpmsg_ns_msg" and "struct rpmsg_as_msg",
its associated flags and generic macros to rpmsg_internal.h. This is
in preparation to add VHOST based vhost_rpmsg_bus.c which will use
the same structures and macros.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/rpmsg/rpmsg_internal.h   | 120 +++++++++++++++++++++++++++++++
 drivers/rpmsg/virtio_rpmsg_bus.c | 120 -------------------------------
 2 files changed, 120 insertions(+), 120 deletions(-)

diff --git a/drivers/rpmsg/rpmsg_internal.h b/drivers/rpmsg/rpmsg_internal.h
index 39b3a5caf242..69d9c9579b50 100644
--- a/drivers/rpmsg/rpmsg_internal.h
+++ b/drivers/rpmsg/rpmsg_internal.h
@@ -15,6 +15,126 @@
 #include <linux/rpmsg.h>
 #include <linux/poll.h>
 
+/* The feature bitmap for virtio rpmsg */
+#define VIRTIO_RPMSG_F_NS	0 /* RP supports name service notifications */
+#define VIRTIO_RPMSG_F_AS	1 /* RP supports address service notifications */
+
+/**
+ * struct rpmsg_hdr - common header for all rpmsg messages
+ * @src: source address
+ * @dst: destination address
+ * @reserved: reserved for future use
+ * @len: length of payload (in bytes)
+ * @flags: message flags
+ * @data: @len bytes of message payload data
+ *
+ * Every message sent(/received) on the rpmsg bus begins with this header.
+ */
+struct rpmsg_hdr {
+	u32 src;
+	u32 dst;
+	u32 reserved;
+	u16 len;
+	u16 flags;
+	u8 data[0];
+} __packed;
+
+/**
+ * struct rpmsg_ns_msg - dynamic name service announcement message
+ * @name: name of remote service that is published
+ * @addr: address of remote service that is published
+ * @flags: indicates whether service is created or destroyed
+ *
+ * This message is sent across to publish a new service, or announce
+ * about its removal. When we receive these messages, an appropriate
+ * rpmsg channel (i.e device) is created/destroyed. In turn, the ->probe()
+ * or ->remove() handler of the appropriate rpmsg driver will be invoked
+ * (if/as-soon-as one is registered).
+ */
+struct rpmsg_ns_msg {
+	char name[RPMSG_NAME_SIZE];
+	u32 addr;
+	u32 flags;
+} __packed;
+
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
+/**
+ * enum rpmsg_ns_flags - dynamic name service announcement flags
+ *
+ * @RPMSG_NS_CREATE: a new remote service was just created
+ * @RPMSG_NS_DESTROY: a known remote service was just destroyed
+ */
+enum rpmsg_ns_flags {
+	RPMSG_NS_CREATE		= 0,
+	RPMSG_NS_DESTROY	= 1,
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
+};
+
+/*
+ * We're allocating buffers of 512 bytes each for communications. The
+ * number of buffers will be computed from the number of buffers supported
+ * by the vring, upto a maximum of 512 buffers (256 in each direction).
+ *
+ * Each buffer will have 16 bytes for the msg header and 496 bytes for
+ * the payload.
+ *
+ * This will utilize a maximum total space of 256KB for the buffers.
+ *
+ * We might also want to add support for user-provided buffers in time.
+ * This will allow bigger buffer size flexibility, and can also be used
+ * to achieve zero-copy messaging.
+ *
+ * Note that these numbers are purely a decision of this driver - we
+ * can change this without changing anything in the firmware of the remote
+ * processor.
+ */
+#define MAX_RPMSG_NUM_BUFS	(512)
+#define MAX_RPMSG_BUF_SIZE	(512)
+
+/*
+ * Local addresses are dynamically allocated on-demand.
+ * We do not dynamically assign addresses from the low 1024 range,
+ * in order to reserve that address range for predefined services.
+ */
+#define RPMSG_RESERVED_ADDRESSES	(1024)
+
+/* Address 53 is reserved for advertising remote services */
+#define RPMSG_NS_ADDR			(53)
+
+/* Address 54 is reserved for advertising address services */
+#define RPMSG_AS_ADDR			(54)
+
 #define to_rpmsg_device(d) container_of(d, struct rpmsg_device, dev)
 #define to_rpmsg_driver(d) container_of(d, struct rpmsg_driver, drv)
 
diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
index 19d930c9fc2c..f91143b25af7 100644
--- a/drivers/rpmsg/virtio_rpmsg_bus.c
+++ b/drivers/rpmsg/virtio_rpmsg_bus.c
@@ -69,92 +69,6 @@ struct virtproc_info {
 	struct rpmsg_endpoint *ns_ept;
 };
 
-/* The feature bitmap for virtio rpmsg */
-#define VIRTIO_RPMSG_F_NS	0 /* RP supports name service notifications */
-#define VIRTIO_RPMSG_F_AS	1 /* RP supports address service notifications */
-
-/**
- * struct rpmsg_hdr - common header for all rpmsg messages
- * @src: source address
- * @dst: destination address
- * @reserved: reserved for future use
- * @len: length of payload (in bytes)
- * @flags: message flags
- * @data: @len bytes of message payload data
- *
- * Every message sent(/received) on the rpmsg bus begins with this header.
- */
-struct rpmsg_hdr {
-	u32 src;
-	u32 dst;
-	u32 reserved;
-	u16 len;
-	u16 flags;
-	u8 data[0];
-} __packed;
-
-/**
- * struct rpmsg_ns_msg - dynamic name service announcement message
- * @name: name of remote service that is published
- * @addr: address of remote service that is published
- * @flags: indicates whether service is created or destroyed
- *
- * This message is sent across to publish a new service, or announce
- * about its removal. When we receive these messages, an appropriate
- * rpmsg channel (i.e device) is created/destroyed. In turn, the ->probe()
- * or ->remove() handler of the appropriate rpmsg driver will be invoked
- * (if/as-soon-as one is registered).
- */
-struct rpmsg_ns_msg {
-	char name[RPMSG_NAME_SIZE];
-	u32 addr;
-	u32 flags;
-} __packed;
-
-/**
- * struct rpmsg_as_msg - dynamic address service announcement message
- * @name: name of the created channel
- * @dst: destination address to be used by the backend rpdev
- * @src: source address of the backend rpdev (the one that sent name service
- * announcement message)
- * @flags: indicates whether service is created or destroyed
- *
- * This message is sent (by virtio_rpmsg_bus) when a new channel is created
- * in response to name service announcement message by backend rpdev to create
- * a new channel. This sends the allocated source address for the channel
- * (destination address for the backend rpdev) to the backend rpdev.
- */
-struct rpmsg_as_msg {
-	char name[RPMSG_NAME_SIZE];
-	u32 dst;
-	u32 src;
-	u32 flags;
-} __packed;
-
-/**
- * enum rpmsg_ns_flags - dynamic name service announcement flags
- *
- * @RPMSG_NS_CREATE: a new remote service was just created
- * @RPMSG_NS_DESTROY: a known remote service was just destroyed
- */
-enum rpmsg_ns_flags {
-	RPMSG_NS_CREATE		= 0,
-	RPMSG_NS_DESTROY	= 1,
-	RPMSG_AS_ANNOUNCE	= 2,
-};
-
-/**
- * enum rpmsg_as_flags - dynamic address service announcement flags
- *
- * @RPMSG_AS_ASSIGN: address has been assigned to the newly created channel
- * @RPMSG_AS_FREE: assigned address is freed from the channel and no longer can
- * be used
- */
-enum rpmsg_as_flags {
-	RPMSG_AS_ASSIGN		= 1,
-	RPMSG_AS_FREE		= 2,
-};
-
 /**
  * @vrp: the remote processor this channel belongs to
  */
@@ -167,40 +81,6 @@ struct virtio_rpmsg_channel {
 #define to_virtio_rpmsg_channel(_rpdev) \
 	container_of(_rpdev, struct virtio_rpmsg_channel, rpdev)
 
-/*
- * We're allocating buffers of 512 bytes each for communications. The
- * number of buffers will be computed from the number of buffers supported
- * by the vring, upto a maximum of 512 buffers (256 in each direction).
- *
- * Each buffer will have 16 bytes for the msg header and 496 bytes for
- * the payload.
- *
- * This will utilize a maximum total space of 256KB for the buffers.
- *
- * We might also want to add support for user-provided buffers in time.
- * This will allow bigger buffer size flexibility, and can also be used
- * to achieve zero-copy messaging.
- *
- * Note that these numbers are purely a decision of this driver - we
- * can change this without changing anything in the firmware of the remote
- * processor.
- */
-#define MAX_RPMSG_NUM_BUFS	(512)
-#define MAX_RPMSG_BUF_SIZE	(512)
-
-/*
- * Local addresses are dynamically allocated on-demand.
- * We do not dynamically assign addresses from the low 1024 range,
- * in order to reserve that address range for predefined services.
- */
-#define RPMSG_RESERVED_ADDRESSES	(1024)
-
-/* Address 53 is reserved for advertising remote services */
-#define RPMSG_NS_ADDR			(53)
-
-/* Address 54 is reserved for advertising address services */
-#define RPMSG_AS_ADDR			(54)
-
 static void virtio_rpmsg_destroy_ept(struct rpmsg_endpoint *ept);
 static int virtio_rpmsg_send(struct rpmsg_endpoint *ept, void *data, int len);
 static int virtio_rpmsg_sendto(struct rpmsg_endpoint *ept, void *data, int len,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-12-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBA5T633QKGQEPQXE4ZI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAC7211E4A
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:23:32 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id d8sf15791937ilc.13
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:23:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678211; cv=pass;
        d=google.com; s=arc-20160816;
        b=fUifIHif6MF5bfRA58Zl9dF07bAWv4AUG8XW2uUKDWG2v+rXKOSqPBvkEYbJocChFx
         MRECYr49DJdmVQbDVhAb3yG4TZXzQ5l8n+KTW+W1/LHUVjHmz9FaDQKa5060oHVT4y0e
         aeiMhfKzKA3XzM/nIGW0EW7qc8DYrEneEra0pH7YKbHuy8ateyBS0XQabgOqouO1kkq0
         /TPNcf2TzI642ywVCjMzFoQhWiac0IDsNmXepIcJh8Ocoy6Os2VVYvHaMSxhB4dCQD1r
         YUCQJB+qCZ7XbyGkeNteh5caURTWQ1wM+jdo6NC5UoVRK0JWKIlrfBe+xWiDcchUQEzU
         xX2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=HqIOgZzXiHibvvblC6O8oB17Ig+Nx0ag1CBTyQxDWQg=;
        b=V/DcL5Zkv3I1pD81mf2ZbD6lGnkPgGuBk0c3tqKaPvonzpKfWZwNIg7I2tfudiQYuZ
         kKapRVaZbVXmjbJymEK5Dgaw6Sy+qUlXyRR/u4pNrj2RUzWtOe0crUfPae4HINFIhwb2
         HqPVAhCs9a7jXz0VysNOPdrhywAzYW8PhoSAfTIaKgMLh4jlVYICg7SWX/pCCO1XyaHy
         TcLvssymViE+92E9MOkIKea+IjZNsMhu2MNFJycHtX2CQe8ClfisvLHiQa3hV9+7x2HC
         GiRxOrz22cR8r3lE2tK//TAx7YSQavEK0u/Lt6DXsW4mP5jZxYqwcg2TPeudXcoC/eVg
         lG1Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=F0noB78A;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HqIOgZzXiHibvvblC6O8oB17Ig+Nx0ag1CBTyQxDWQg=;
        b=MBs6P2rmQurJ2oIFaagQORbDDVWohb4RSeVMPctPXwgDuwRMlJWimGY6HKl++Kxhuv
         rLJ9FKNMcFJ3mvRTOJb0bKG76EXjiyAslLLauMb8IiGVhwytgwsGz8cSb34gwH9QZvfS
         uO7epqYMZbFlZDpn/JeoT/Ru5Qv/dtuSZCgZxH6b/8vFD6Oy1VwWzsl4Ex3zjS+MvtSa
         DGHFHcqIj4v9TTxa3vRZrxUZsNLKju+lw6IRAP+aL6Lf+ur/cU+DJVBaggVG7OFMwhpg
         6tjMHiCYK0hAJ9l0Effm5g0l1XpTQjrVk3cX86UYZlmRpU4n9ti+PrI5H4fH7QTiRJHb
         savA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HqIOgZzXiHibvvblC6O8oB17Ig+Nx0ag1CBTyQxDWQg=;
        b=CyCCpAlhICzhrHAKMXd5feQhuOtArn4tdHifJn/7DIapmR771vE6lKUdL1/Hksz778
         Eafnnqcb2Q37RZBHbKH4jZz7fd43QeJz7BB9TmUya+0y2rtxU3VuuSq/jbdVUYDWvz3Q
         RiOnYq4bsmFQZDvMzkHY8r0ZEBmBeA8cLxkWl5pdyvKTJTHCzNVGiZiP5XioItPOL7Qg
         dzDsidxegFpX3x5kakoJz9v58kjGhhlpqvjHfKphZcMN6NgBQDoodEkbq1hudtSxOF3h
         8YLjeWwYxskiBqWW8baxRWbsfbnozv0zkIXTbxWcFhZhXvmD8DM0VxYsQd0wvEobNuu/
         7Rfg==
X-Gm-Message-State: AOAM532TVPol5MvuMEXZCFET0jWuGwU9hKItktfVBuuftKr3caCEmgU4
	oszmL6JzEtsdNNspwMmBD7g=
X-Google-Smtp-Source: ABdhPJwV8fMeXUVLLcMBrjAqN/zqzL9J2lyPbBtPPqdO9IepDEmH+FDFFFyBWjyasqszY3AKzDtsIQ==
X-Received: by 2002:a02:cf3b:: with SMTP id s27mr31938032jar.72.1593678211279;
        Thu, 02 Jul 2020 01:23:31 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6602:2b81:: with SMTP id r1ls1020896iov.11.gmail; Thu,
 02 Jul 2020 01:23:31 -0700 (PDT)
X-Received: by 2002:a5d:9c0e:: with SMTP id 14mr6350700ioe.109.1593678211013;
        Thu, 02 Jul 2020 01:23:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678211; cv=none;
        d=google.com; s=arc-20160816;
        b=gLD1J7IDGhfX2qgrqSSXe3W2AeWhl7L0fzo70+k1OhXUyeUILGtBxWC4uHB3i1RAiu
         /gpjXAgHS5kM8GZ2ZVRa5jigIIHk68EOClXtW86l8fmm9xVNUQGsFL9uEclBvumBzdWi
         jvkXOQZg9ayXpzMmCby36JTPaUMuosSGdBI172Uzkhn2VnfxLQAAUKSm+w4P1EtKaNq/
         X8b47ZbM3JysaycKw7xUrKx3z+gCigsf0AUKDZLKKCn9uliUeq4bU7PtPWNOFUgoSGtl
         EhSrcxaTYY54jtEWO5RHIurye+ikWEgWGLAIO9uqHrJdxmFrFSv22fW8+MlxcwkeCbgS
         KxyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=eGYb68Z81KhdwdWoOADJFuS9KisslFzKd0+Ho98yHF4=;
        b=SdZG9w5cjObkn3ZL7MVFe7j8I7l4SbUJFctC4WEBUNgtGhfgU+oDJaOHCxF0ezreG0
         7OZB+a+GIv93JvzMCh4o6vlH/MvyD3K6zK41USwpqxX5WYzbvn3HgOtN08BJ091sDRs4
         ikRBf4HI21sRUzpgPC1kO0G7Wc6/eBHaDPSlIgemN4bo21SjRpAFk5OfJ+pLcFpQPrbR
         WwWXUakClaAd6MLHAzm5YVxdCuDwvpVjcQM/Bi/JRrBlJo/tHYDj0ikP/s1hrbG71uvp
         qvC+BZSggHWZdQ7CWZ6bcAkRZd3s28OLGfdi1U9Ap0tB/Nrk2cE/ohxte1LJKuCUKBs5
         +hiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=F0noB78A;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id b2si777082ile.1.2020.07.02.01.23.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:23:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628NRFx082069;
	Thu, 2 Jul 2020 03:23:27 -0500
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628NRB2032083
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:23:27 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:23:26 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:23:26 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYT006145;
	Thu, 2 Jul 2020 03:23:21 -0500
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
Subject: [RFC PATCH 17/22] rpmsg.txt: Add Documentation to configure rpmsg using configfs
Date: Thu, 2 Jul 2020 13:51:38 +0530
Message-ID: <20200702082143.25259-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=F0noB78A;       spf=pass
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

Add Documentation on how rpmsg device can be created using
configfs required for vhost_rpmsg_bus.c

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 Documentation/rpmsg.txt | 56 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/Documentation/rpmsg.txt b/Documentation/rpmsg.txt
index 24b7a9e1a5f9..0e0a32b2cb66 100644
--- a/Documentation/rpmsg.txt
+++ b/Documentation/rpmsg.txt
@@ -339,3 +339,59 @@ by the bus, and can then start sending messages to the remote service.
 
 The plan is also to add static creation of rpmsg channels via the virtio
 config space, but it's not implemented yet.
+
+Configuring rpmsg using configfs
+================================
+
+Usually a rpmsg_device is created when the virtproc driver (virtio_rpmsg_bus.c)
+receives a name service notification from the remote core. However there could
+also be cases where the user should be given the ability to create rpmsg_device
+(like in the case of vhost_rpmsg_bus.c) where vhost_rpmsg_bus should be
+responsible for sending name service notification. For such cases, configfs
+provides an ability to the user for binding a rpmsg_client_driver with virtproc
+device in order to create rpmsg_device.
+
+Two configfs directories are added for configuring rpmsg
+::
+
+  # ls /sys/kernel/config/rpmsg/
+    channel   virtproc
+
+channel: Whenever a new rpmsg_driver is registered with rpmsg core, a new
+sub-directory will be created for each entry provided in rpmsg_device_id
+table of rpmsg_driver.
+
+For instance when rpmsg_sample_client is installed, it'll create the following
+entry in the mounted configfs directory
+::
+
+  # ls /sys/kernel/config/rpmsg/channel/
+    rpmsg-client-sample
+
+virtproc: A virtproc device can choose to add an entry in this directory.
+Virtproc device adds an entry if it has to allow user to control creation of
+rpmsg device. (e.g vhost_rpmsg_bus.c)
+::
+
+  # ls /sys/kernel/config/rpmsg/virtproc/
+    vhost0
+
+
+The first step in allowing the user to create rpmsg device is to create a
+sub-directory rpmsg-client-sample. For each rpmsg_device, the user would like
+to create, a separate subdirectory has to be created.
+::
+
+  # mkdir /sys/kernel/config/rpmsg/channel/rpmsg-client-sample/c1
+
+The next step is to link the created sub-directory with virtproc device to
+create rpmsg device.
+::
+
+  # ln -s /sys/kernel/config/rpmsg/channel/rpmsg-client-sample/c1 \
+        /sys/kernel/config/rpmsg/virtproc/vhost0
+
+This will create rpmsg_device. However the driver will not register the
+rpmsg device until it receives the VIRTIO_CONFIG_S_DRIVER_OK (in the case
+of vhost_rpmsg_bus.c) as it can access virtio buffers only after
+VIRTIO_CONFIG_S_DRIVER_OK is set.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-18-kishon%40ti.com.

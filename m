Return-Path: <linux-ntb+bncBCOOP4VF5IDRBTVS633QKGQESDTDQOY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B5B9211E1D
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:22:40 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id x23sf16105285ilk.4
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:22:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678159; cv=pass;
        d=google.com; s=arc-20160816;
        b=F/qj35vK+GQAuY75ME/78OD/1nbznopjtiIGh4izrMcr1EAglvTi8TchReQPboNpUZ
         hIY/cNSgtfeuG3dS+7PkVtWqcIPm2j5Y8lHQH9yG/UEOkkZMI624H0Q3rOys2RRPD0mI
         +RpXnWzagmVIWEkw50ewvjpGm0FL7eGVZtBfUGR4lHMzbT2HUDCGwhqQ0jqMMnvahO7F
         62xQbUTLa+KOlcCMojk6F7f2Jh9YOuDX+86KFT0iIlQEy/o2ZVsEw0nGp4/OcF4+1K/7
         uNCrg886UJUWKtm1reOqY3iMB/b5TwyQyAmWNdzGM0aV8qbdmh4BEH0r3g1ZFIGnfwju
         7rmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=CnuluhaUqxKn8pdm4DOy1AcfFmbohf/4GVT1aL3X4Po=;
        b=QcSAy0JKD0usLCnGkeK8JNLcj3YHIO2xZufdcY6cSH6DTT1D133majlQxkmn69GA1n
         QrqFH1DTp/vmZ9ttM0aA6tNApaTWHntnuXSG6Ad0jRI5l0L/aQ2LUq1UMS88XlCnky20
         9La3xyryahUPacFlqpLctwLOY7hkp3MDksPnx0QncD4YeSiHjkpX0J4tofIyPnvewcEM
         DrHl+JvkLutxCFhITco35QfBNRH3Ru5ZkBDP2kCwEPZvxLLsU4KsxB5Pb3r3HNqFEM1e
         Ty9wrjHVbBBTLegSgsYV467NwrHACkfbqA0wRm8PG6HGKO3bahX/fpuM7IIRr4jvJXio
         Ppug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=jqWlLeQ9;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CnuluhaUqxKn8pdm4DOy1AcfFmbohf/4GVT1aL3X4Po=;
        b=YYelnqsxWAkzrggcBJ3ocZ4solB24rmQPo5HEUiWhL+IkSkyldfK8UhAcEwp94Yapb
         mokezEjNCwcMcN5tVWSUlCK5P7W4P3Wtqodey/YiDmyyqv1uxtA7m18dHKmU7rKRBd8u
         ma0Edk0J8yjJw1z33RSNwvDPC9gGRLAMKRrAynWRff9SDjcTJPJr6Wn/rpXnkbz1LnDE
         QkxqPk0+R5kDLNBNM77ULMbd3sAMI2Cycybd+QVeGT5jL4vXVvYGnt/ykc2J5GpyZbbA
         E0wTp9sMu719LlF9yVKC9jj+X35LOn+jxqNXPmBWK2+O6akfQ0O01Z47LQYlI+pKC7YX
         7dHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CnuluhaUqxKn8pdm4DOy1AcfFmbohf/4GVT1aL3X4Po=;
        b=EB4CguFYW3XuQrinQ0C7M2UWY61erR5F9wpVCgOr3GA2qS/m1dr1/reSUUZNJAxrqd
         Fb2XhJ/bqHzjgVEOvorcEpsGKLp+myf3mekJkLc0ooGZD5NFyjOtPHdhQE0urqq+WyLR
         ErOgNbgyLgsLVE5v0UgiGKTa2eB+cIrYuVg3OB0GqNqj2NEufpweJz2UgF+wutK4/mA5
         CMAtOoboKzTVURi8ZiNt9LfEm1RdIBUsyMwzaTwQvSqEG52kd/V5hIqubDXJC9a4CAUD
         CA7PrQSGuvgYKFbNxmqHlaRHNlYw44zpbpox5bmOD1/upFo9+zrdgGxYpaVKZZobd3Km
         Kn+A==
X-Gm-Message-State: AOAM531RN3uhOpXeNPed+HENqYusg0muzdKD4+2BEMb63+Rx1oVY2wR8
	jAi94sMTLEPjdn0qgEzN6is=
X-Google-Smtp-Source: ABdhPJyzVnfgo2FCdUoL1voko6ZztfUIo8guTtYF0hVZlemYWRHzShgy4YQtSD3hDM0ksnUV2tsTxQ==
X-Received: by 2002:a02:70d6:: with SMTP id f205mr32944271jac.5.1593678159027;
        Thu, 02 Jul 2020 01:22:39 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:1082:: with SMTP id r2ls1067342ilj.8.gmail; Thu, 02
 Jul 2020 01:22:38 -0700 (PDT)
X-Received: by 2002:a92:da46:: with SMTP id p6mr11707128ilq.48.1593678158712;
        Thu, 02 Jul 2020 01:22:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678158; cv=none;
        d=google.com; s=arc-20160816;
        b=hrG2hssbTX/YvHYmn9J0u/l284hNlVdYEWY6IKhtUrofk2rSwaIVGdmcqi4COKT6pa
         C5I0lxZqOl74CCeivskZF4OxP721rEDjxPBABDCbGyXr6svkpiPryuq+gFW4NDo/W/kK
         lnIa0HSWlJDuJyAxzETxcLVqb/f7Dbcch5Lhn6NxxzhXdulYu+fPDNNHIZbPSLhUXsqu
         w1oPmF4bpg+VlCvx/zIEwEAcEQGlmIult3Sop3uV9ZBTL7jPiZyMWr5HVbiarzr1ZNFt
         XcNOE4nwzaPYniv/bIZCCTZSQ+Y/FoEletW3SIXsZCBkBpieUAwPsXNxWug3KvHNsZXL
         EHTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=IPYADznch2oF3OT/2Ql57mNeeC/uA2ZY2VCc9l5fLDQ=;
        b=iKy3erKhPN61MMDGJy7PCgxlXEYNe2ATNUJUVrT2xWoM8QBDcEbuH9mprE/vS3hVOl
         WMzlx5FGbmUJLE9E4SMHTHM93vyapNwuNj8GBbxZtFKVTX0MVGtpSYIXPArK33aYkaYz
         /662+7+zzpu6fUdwjapPqaBTEAPyXdTKduAacQTelngMYOpWDzPSY6WEmMnIFLxpcW0r
         wkT0cKQQAbhSxpWVpqyZ2ECg2sChlILCcn7ij8Vor5HMfHTmf06GS/ttmpsKf/gahFKu
         t9y+GY0O7W+Hj6M//+a6Is1FTur+hZ6gRVG5QnMoUqFeW4zLoH13D4Dice7y1KOtSyY4
         Afew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=jqWlLeQ9;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id z71si282001ilf.5.2020.07.02.01.22.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:22:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628MVLp081794;
	Thu, 2 Jul 2020 03:22:31 -0500
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628MV1X030784
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:22:31 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:22:31 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:22:31 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYJ006145;
	Thu, 2 Jul 2020 03:22:24 -0500
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
Subject: [RFC PATCH 07/22] virtio_pci: Use request_threaded_irq() instead of request_irq()
Date: Thu, 2 Jul 2020 13:51:28 +0530
Message-ID: <20200702082143.25259-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=jqWlLeQ9;       spf=pass
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

Some of the virtio drivers (like virtio_rpmsg_bus.c) use sleeping
functions like mutex_*() in the virtqueue callback. Use
request_threaded_irq() instead of request_irq() in order for
the virtqueue callbacks to be executed in thread context instead
of interrupt context.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/virtio/virtio_pci_common.c | 25 +++++++++++++------------
 1 file changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/virtio/virtio_pci_common.c b/drivers/virtio/virtio_pci_common.c
index 222d630c41fc..60998b4f1f30 100644
--- a/drivers/virtio/virtio_pci_common.c
+++ b/drivers/virtio/virtio_pci_common.c
@@ -140,9 +140,9 @@ static int vp_request_msix_vectors(struct virtio_device *vdev, int nvectors,
 	v = vp_dev->msix_used_vectors;
 	snprintf(vp_dev->msix_names[v], sizeof *vp_dev->msix_names,
 		 "%s-config", name);
-	err = request_irq(pci_irq_vector(vp_dev->pci_dev, v),
-			  vp_config_changed, 0, vp_dev->msix_names[v],
-			  vp_dev);
+	err = request_threaded_irq(pci_irq_vector(vp_dev->pci_dev, v), 0,
+				   vp_config_changed, 0, vp_dev->msix_names[v],
+				   vp_dev);
 	if (err)
 		goto error;
 	++vp_dev->msix_used_vectors;
@@ -159,9 +159,9 @@ static int vp_request_msix_vectors(struct virtio_device *vdev, int nvectors,
 		v = vp_dev->msix_used_vectors;
 		snprintf(vp_dev->msix_names[v], sizeof *vp_dev->msix_names,
 			 "%s-virtqueues", name);
-		err = request_irq(pci_irq_vector(vp_dev->pci_dev, v),
-				  vp_vring_interrupt, 0, vp_dev->msix_names[v],
-				  vp_dev);
+		err = request_threaded_irq(pci_irq_vector(vp_dev->pci_dev, v),
+					   0, vp_vring_interrupt, 0,
+					   vp_dev->msix_names[v], vp_dev);
 		if (err)
 			goto error;
 		++vp_dev->msix_used_vectors;
@@ -336,10 +336,11 @@ static int vp_find_vqs_msix(struct virtio_device *vdev, unsigned nvqs,
 			 sizeof *vp_dev->msix_names,
 			 "%s-%s",
 			 dev_name(&vp_dev->vdev.dev), names[i]);
-		err = request_irq(pci_irq_vector(vp_dev->pci_dev, msix_vec),
-				  vring_interrupt, 0,
-				  vp_dev->msix_names[msix_vec],
-				  vqs[i]);
+		err = request_threaded_irq(pci_irq_vector(vp_dev->pci_dev,
+							  msix_vec),
+					   0, vring_interrupt, 0,
+					   vp_dev->msix_names[msix_vec],
+					   vqs[i]);
 		if (err)
 			goto error_find;
 	}
@@ -361,8 +362,8 @@ static int vp_find_vqs_intx(struct virtio_device *vdev, unsigned nvqs,
 	if (!vp_dev->vqs)
 		return -ENOMEM;
 
-	err = request_irq(vp_dev->pci_dev->irq, vp_interrupt, IRQF_SHARED,
-			dev_name(&vdev->dev), vp_dev);
+	err = request_threaded_irq(vp_dev->pci_dev->irq, 0, vp_interrupt,
+				   IRQF_SHARED, dev_name(&vdev->dev), vp_dev);
 	if (err)
 		goto out_del_vqs;
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-8-kishon%40ti.com.

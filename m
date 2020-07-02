Return-Path: <linux-ntb+bncBCOOP4VF5IDRB3NS633QKGQEPOKEJJQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 17024211E33
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Jul 2020 10:23:11 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id x184sf19984463pgb.7
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Jul 2020 01:23:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593678190; cv=pass;
        d=google.com; s=arc-20160816;
        b=aET98POngBIsl6jAiooSISO2shtxJCK0IE7X7MYScnGNzEb51BWu84zoUsoDrNAZpT
         co8AgV2N5/9+pVB5Si2M6vVHWkBRzh2Q3f12lFGbrR0Lz/OcIsgaaeAatcxNl4OJU/nJ
         e7PrqIX5aO0gie9ddobaqhw/3anr3KXPrdsrkXhD9qWGF3s19j4Y0+2JrnUx2avDRo8l
         LX1nm2eVqyzTQu8nj0HN1p0BTkF7o9cK7Zu63VkhD9yen8UIgNzZCAAdce7aAY6JCYqJ
         SBcRFFgRZDW1dFsjkm+cOvbahCIDLj3Ge9MgAzmSJQmt2/hL6MdTCOCs6250jZJViD0G
         Butw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ee1nHeomEnqgSQgIY/yJ4CqO5Gek13vnezyP8tK7eCs=;
        b=pIyvme9wq2+oZYHlcEAZfLuhq0Vrg3V92TLYe/SCpxaYxr+Xdo32xxh7VHmnzRw8Sr
         XMYu5LGIQzgb/YSKuDHCTkXcnpSSm92VJw2INBODEVj3p/OlaA2Xv9LOAdU6Z9Sb0kMQ
         VUI44xhMSv9o7uCaQqoAh176bznfxEsAQwJtW4MB5ZOITgn2IiORtm+6TkUy7y+HZVrf
         +Mw83bvizcWGPZosXKo4/asA7mLkXblYmj9VREBuoGwHTS1gSYpMIWDIydgDtqOsTo0G
         Z2vbUShV/VRIDF+rX9mmJvTqgXO1RwITJ/wLHodx8yE0lYOIhC4XqyaO9nnm6ggwCIY6
         4Qeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vw7QPSUT;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ee1nHeomEnqgSQgIY/yJ4CqO5Gek13vnezyP8tK7eCs=;
        b=rWTJ/6j49asdFmIAGt6Z8ovnPANHb31JgAVa28Ob3GB6rKc3fCgClsmMfVMkIAzZVZ
         o3Q4H+e/K1IRFRxa+v8f7ckL/UXoYaUDTFAXE1IrfdCv5aHf+MViTWQs6ZxJRJ3Yh22m
         1VDDnMQq/46r+tn0cE4IilbhcSI4LqJYBuDISBwZ+8j30QVbR+YodMgYDPMILTCwFnDy
         CRYv9cg4h8QFlvuHy6hTROhUEUw8XHL4thHQBQ8tDfWffMZ852gqNQBKehip0d3xZTtL
         pcUcmMfCNic/9fCBMbVDsgVGEt7brv2mrHNXZ583ed07XD+5tCwDozCw78jR4CgVUeTI
         7L5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ee1nHeomEnqgSQgIY/yJ4CqO5Gek13vnezyP8tK7eCs=;
        b=eawvfvUWPm4VGMg97M0ouK0ChMayOH811m+siCt0X0Sh9+/SakumhY/ezpbvQxxCgN
         OTsOd6jMr4wzGBn2Q6dgxJTNgFvhJ8/VG0OnKBmKunlkeGMsfB5OUfqvoRswdOGWRvVK
         YF9Q/v7mUG85Lm0pz9f/f+oIiSKgX9gbJU+HxhazciGnziRDPjyUPBMmoRoMHvdI9LWj
         PGd3e9sBdzI+eJm/NRcEWoaS2oBtYdcC0JBfT9L0py5IdNsqYh9C+3EcCYrhz60Jnds2
         VqSewlLX/g1bpVPn3OjZtzXw7YWMQR+CXGm+KthS/2xukD7WxF4mzB7s8AMRdrJ25zre
         b+Xg==
X-Gm-Message-State: AOAM532JyUV3U1f8uhiYRhOqTxTocv3dRS/s7gOLXA8AlATy0mv5nhBg
	4gR5Y4tT0zaCSCKt04SEQ/w=
X-Google-Smtp-Source: ABdhPJxSdK0bFCRbv3DxdrOllWe6uDNquubBlFBfW1fFmc5B5T4GY42hlWCU6mfVuaxXX0b+VSs1Qw==
X-Received: by 2002:a63:6c1:: with SMTP id 184mr24218766pgg.262.1593678189795;
        Thu, 02 Jul 2020 01:23:09 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:170b:: with SMTP id 11ls1616381pfx.3.gmail; Thu, 02 Jul
 2020 01:23:09 -0700 (PDT)
X-Received: by 2002:a63:7c5:: with SMTP id 188mr24164347pgh.48.1593678189415;
        Thu, 02 Jul 2020 01:23:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593678189; cv=none;
        d=google.com; s=arc-20160816;
        b=XMnV0aKF/PaD7tRKPNW5APhN4dlaIKmFco4fehnAQvydH2OTswJ+Okk9cOn7qErJKX
         60JSSdTeZ8OhYxOcfL2Sb1CupeVwtrmzgbSwsrIN/nvEgJ6rzWt6vgNqI+2mTLG7+VM/
         9x/hEpA1ar/2PtvqUt/Nqj8ys+ARJYORWsQnzMXf32brDLrRubUG82McS5ZTU8S4Kw2i
         vZy4XYJ/uzXwMTtMJdlfI9xsyQacZT7PXakbyZTZzLCwMISe5bk5NfB4VySBERaPHt2A
         9sFS0AgZREtUY472Y74qMjTa+s7hcY+bxEmFGFhSAqXFpMEGpQGfDTjpG8s4PgvPgUfw
         7r0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=33BgNyAskD4tPtltq/G/c+6YM0cxUZYr1ZA8AxsWt2I=;
        b=Qx5XeE9oHT2bvloLyFzzQWbvxFK/NKp/johkQVDsD2C0GqcakL2HlcYUCwCMhPD1HD
         0X5LcwkuzinvuFuYSjx+qk8OX5uMZhFL/O1UOUASuTgUg5itwD6smqL8K2OgI7GwrkPn
         quRf7zX6I+avMv6mCXqYO526zL4WrC/Jc2YSxzAtSo5MMRY/tE1jI2gb13KCU0n8S6FV
         iPFcLrWrYCuaKvO5GDPcV20diVobsfETRSZGfdKWRQOhO8JzrllSxfwTQ+jgccjN1ZRj
         m/L68NpKEftxsZLQsbxNYe7bitGt7+ZcXOyB375N/l1bDliUXjLZtiJ1/hez7l58TDet
         vuFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vw7QPSUT;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d16si432385pgk.2.2020.07.02.01.23.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Jul 2020 01:23:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0628N4OM017422;
	Thu, 2 Jul 2020 03:23:04 -0500
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0628N4t0031613
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 2 Jul 2020 03:23:04 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 2 Jul
 2020 03:23:04 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 2 Jul 2020 03:23:03 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0628LiYP006145;
	Thu, 2 Jul 2020 03:22:58 -0500
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
Subject: [RFC PATCH 13/22] rpmsg: virtio_rpmsg_bus: Use virtio_alloc_buffer() and virtio_free_buffer()
Date: Thu, 2 Jul 2020 13:51:34 +0530
Message-ID: <20200702082143.25259-14-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200702082143.25259-1-kishon@ti.com>
References: <20200702082143.25259-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=vw7QPSUT;       spf=pass
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

Use virtio_alloc_buffer() and virtio_free_buffer() to allocate and free
memory buffer respectively. Only if buffer allocation using
virtio_alloc_buffer() try using dma_alloc_coherent(). This is required
for devices like NTB to use rpmsg for communicating with other host.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/rpmsg/virtio_rpmsg_bus.c | 32 ++++++++++++++++++++++----------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/rpmsg/virtio_rpmsg_bus.c b/drivers/rpmsg/virtio_rpmsg_bus.c
index f91143b25af7..2b25a8ae1539 100644
--- a/drivers/rpmsg/virtio_rpmsg_bus.c
+++ b/drivers/rpmsg/virtio_rpmsg_bus.c
@@ -882,13 +882,16 @@ static int rpmsg_probe(struct virtio_device *vdev)
 
 	total_buf_space = vrp->num_bufs * vrp->buf_size;
 
-	/* allocate coherent memory for the buffers */
-	bufs_va = dma_alloc_coherent(vdev->dev.parent,
-				     total_buf_space, &vrp->bufs_dma,
-				     GFP_KERNEL);
+	bufs_va = virtio_alloc_buffer(vdev, total_buf_space);
 	if (!bufs_va) {
-		err = -ENOMEM;
-		goto vqs_del;
+		/* allocate coherent memory for the buffers */
+		bufs_va = dma_alloc_coherent(vdev->dev.parent,
+					     total_buf_space, &vrp->bufs_dma,
+					     GFP_KERNEL);
+		if (!bufs_va) {
+			err = -ENOMEM;
+			goto vqs_del;
+		}
 	}
 
 	dev_dbg(&vdev->dev, "buffers: va %pK, dma %pad\n",
@@ -951,8 +954,13 @@ static int rpmsg_probe(struct virtio_device *vdev)
 	return 0;
 
 free_coherent:
-	dma_free_coherent(vdev->dev.parent, total_buf_space,
-			  bufs_va, vrp->bufs_dma);
+	if (!vrp->bufs_dma) {
+		virtio_free_buffer(vdev, bufs_va, total_buf_space);
+	} else {
+		dma_free_coherent(vdev->dev.parent, total_buf_space,
+				  bufs_va, vrp->bufs_dma);
+	}
+
 vqs_del:
 	vdev->config->del_vqs(vrp->vdev);
 free_vrp:
@@ -986,8 +994,12 @@ static void rpmsg_remove(struct virtio_device *vdev)
 
 	vdev->config->del_vqs(vrp->vdev);
 
-	dma_free_coherent(vdev->dev.parent, total_buf_space,
-			  vrp->rbufs, vrp->bufs_dma);
+	if (!vrp->bufs_dma) {
+		virtio_free_buffer(vdev, vrp->rbufs, total_buf_space);
+	} else {
+		dma_free_coherent(vdev->dev.parent, total_buf_space,
+				  vrp->rbufs, vrp->bufs_dma);
+	}
 
 	kfree(vrp);
 }
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200702082143.25259-14-kishon%40ti.com.

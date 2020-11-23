Return-Path: <linux-ntb+bncBDXYVT6AR4MRB35N576QKGQERX2XILI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8DD2C0EEF
	for <lists+linux-ntb@lfdr.de>; Mon, 23 Nov 2020 16:36:16 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id w125sf8914941oiw.8
        for <lists+linux-ntb@lfdr.de>; Mon, 23 Nov 2020 07:36:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606145775; cv=pass;
        d=google.com; s=arc-20160816;
        b=BWW/Pyhvw02HgrrPtARNS2yGsN57Z/LZtaHMgK3D1xksmnkpu3tl1+YU52Yj1KpSk3
         JVKWzm5AiGb3YiChsd/yc7FmKNQnOlYMBkpWbq3LtDTJdk+xH9a6OI6LqRX8lknlEq3S
         z9lKcGroMSU1Qv6HIMPE3SNVx4qBLHtBPM9xnbmCKlMyozKWrOmzM4pszjurUfpq+R+a
         q6EunaS/0mxfMq4Er+YJpiq16Vim4CJJFvlonUkFRvUx70libCABODbEzLSN1RGvaixH
         arWK6yJO2wdv8YZx0Up5XuMBlgWERA5ghxS4eDtNg4QRnXD5PPz8C6yTA7/Cge9mnc/N
         MCTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :date:cc:to:from:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=30FrcOBF9vQjpaOE2Li5XABK6cvJT8HqcrsNRb99rd0=;
        b=UBttcacJhhHTpKT5TFXHGC4p4ntSyn1dHuiSQQ74OkG+IUi8HrmS1kDorb/BOeZ91D
         C2Ckgnn70a0SK5MsKfT4uY6+Mqn7urQ5FTzT4+v7sDjOYNEJ1rii0OCyWz+AEnEs+7gU
         ShNC9YaK/C2ky9LuYr1gNnRg9c62SzSmgXCE9c700Zwkg8dDr5XYSqrI2U1UXddAFiGV
         RbDPyjYNMCPv0gl3hNu2WNfqi0C+6Ruta2SbXiovBwQ3po0dK2G+1Q6k2ZMi62aNIoaZ
         GT2a6klupUs0QPLw4OmbXLRDUCosV58hPcqmnPiUva9hiflsUAr8bYPQgWNzwZ+no2IZ
         Oz5A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:from:to:cc:date:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=30FrcOBF9vQjpaOE2Li5XABK6cvJT8HqcrsNRb99rd0=;
        b=LelwwdSzaddBnZ7aJw5Rtcw0IngW3GevujMbLzIhi1zW0/AZEHF6yJWRqATeZxkxL5
         Sp8e5+hK1vDJuPOin4WXP8OO+vikZJdU0DiK9jCpkBIl0Xr5AHYScwIJeenC+V8YcZTR
         pdbQMSo5RBsXEO+Y5x0ejeS+lQzszUEa9mmknAQCADhj35u2pTAuQbWr2Qav4yZAJ+dx
         2XbErnT0eJT0j9o/Qid88/HHVfQiXtbMx0g+pI61NtOD7ECwZpOF0SIgbi+DZobTxYeg
         a9Ipbf1LcnDkLNqdEOM8tEw1FJ5rJRbB4cIQcsrYW7bZyjTT+dCiV2t9JYfSS4pJUCKA
         zQog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:from:to
         :cc:date:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=30FrcOBF9vQjpaOE2Li5XABK6cvJT8HqcrsNRb99rd0=;
        b=tK7Izbqroh5i2ZIQyzJyROtVTXExClUvX2IpCk9CBqofDc8ywz84+2dFMi/9Bi6zMJ
         etFkj5VQ9suWJU/PQIJ/FNE4XM4uAqv1F9ynb5NKYl7d0XmmI3uqJh/e6JkUpt+41Jam
         uWuRxDuzWRToAsHfM//3hsr7ioQjWbzQ1dNXpFWiTwDHJC1nOu/m1KJryrOkpRsvF2d3
         JOy/fb3NMK/4grOUdiUeeh7PXc7ASG09N+n8yA5RNIOtJwxCXd6ATDQUG6/NT/xOQtnI
         K6GcZaudN3duVIAYKt8trZGE3CMas9bhIfA6FGBAKEtBeSVYUvi+JPfeEs6E5OpQLRWN
         wSBg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531BcBwgOX2e6Krhq3sPe83EpIinPBeaEEB3yTf//5AjiwJ/lkls
	oQwG40nnLG2MLPfb7+N8ewo=
X-Google-Smtp-Source: ABdhPJw4d7cQh+CLC3ukrO2jWG5t33mkQVMluNYRlI2wHsLAXrcQ+ZY1DMzXAEDKFuq8kd0f6rZZjg==
X-Received: by 2002:a4a:7252:: with SMTP id r18mr23026306ooe.22.1606145775593;
        Mon, 23 Nov 2020 07:36:15 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:4e95:: with SMTP id c143ls1623446oib.11.gmail; Mon, 23
 Nov 2020 07:36:15 -0800 (PST)
X-Received: by 2002:aca:aa90:: with SMTP id t138mr15779666oie.171.1606145775283;
        Mon, 23 Nov 2020 07:36:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606145775; cv=none;
        d=google.com; s=arc-20160816;
        b=0cfcYgwmaZe62d1HXgAMSeWFylKxzAmt2fvPRbIg0/+NA0azjeN/MBYAyRzeCAQ1Fe
         i4oMvvO/C1d+5OKCGI8wWhLXO6nkcHKMGeJni9JoaX50EKT5sPW7zL+4Y5otDcii+ldH
         MH9RT662IAr+mz6MeGVlz6rtMp4cah6pSlxrqUWxk1fA1SXLgwH/Ud2eFfLgBCl5nGCx
         +Lfdw5E11qebMoquD6aHQZcewSgWRNFAhFGCKIob9Ty37IMcrNe+pg4uV3vSowGxoq5g
         M97QSj1q833aYrcn8Aj1FOSTA4JFdseXTRydCqVUGlhZ+FGK6D7Fua2QbMrZkv5MTOgk
         wQgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:ironport-sdr:ironport-sdr;
        bh=RZYuPXb4X44IwzR90zbSxmbgbeMvX77D/xqxmE+ii7Y=;
        b=C3DswHQUKhA54A45b5A3/TGxgrGOxuodEFg4kPcneSHFI8s8njaxp8t/n/emBaioIy
         xMfdxRwJ4wScQw5cIj8GBkHKqwWaMEe2wGoEOYYYZCfRdE8tNZeuUJAq5Q3G2D9Irxry
         6U/NpgWO3Q0wZHzWyLpq86BA8+LlXmQNlawEQWUrWop6r1GJe9yVb8uErUM8VAghZOgG
         9eaFnaRXp7SZDuv3rH0ZCO7vq/Cy2BiisZeI8CkFrMi/fcO2RO7q93Bd9z+b4Ttpv4RB
         aOzI8CfrS+j5ynh/6TEEx+vp6j65+zavhkNThK4XcMvnnlDKnnIBCi3zgBDLpbzt6khV
         GyIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id o26si1278515otk.2.2020.11.23.07.36.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 07:36:15 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: UGud2WhyPBTk/7vN7T2A7uP0IQDu/GP6YoHNQdFHa4ttjbBe+BvO+hGZD85TMnq0Egw4Wv+W0n
 XR5mxd/x0T4A==
X-IronPort-AV: E=McAfee;i="6000,8403,9813"; a="151627680"
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; 
   d="scan'208";a="151627680"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2020 07:36:13 -0800
IronPort-SDR: lEpYJPXMSdx8B+dTRkzygth5JbZSF73z0MHU18Yl1onhBFiAPMaZVPOMesbIAz4OUHrXnlXo8F
 BMQ1Yd2FCA8g==
X-IronPort-AV: E=Sophos;i="5.78,363,1599548400"; 
   d="scan'208";a="546458490"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Nov 2020 07:36:13 -0800
Subject: [PATCH] ntb: intel: add Intel NTB LTR vendor support for gen4 NTB
From: Dave Jiang <dave.jiang@intel.com>
To: jdmason@kudzu.us
Cc: allenbh@gmail.com, linux-ntb@googlegroups.com
Date: Mon, 23 Nov 2020 08:36:12 -0700
Message-ID: <160614577287.521825.7762300396286632790.stgit@djiang5-desk3.ch.intel.com>
User-Agent: StGit/0.23-29-ga622f1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 192.55.52.151 as
 permitted sender) smtp.mailfrom=dave.jiang@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Intel NTB device has custom LTR management that is not compliant with the
PCIe standard. Add support to set LTR status triggered by link status
change.

Signed-off-by: Dave Jiang <dave.jiang@intel.com>
---
 drivers/ntb/hw/intel/ntb_hw_gen1.h |    1 +
 drivers/ntb/hw/intel/ntb_hw_gen4.c |   27 ++++++++++++++++++++++++++-
 drivers/ntb/hw/intel/ntb_hw_gen4.h |   15 +++++++++++++++
 3 files changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.h b/drivers/ntb/hw/intel/ntb_hw_gen1.h
index 1b759942d8af..344249fc18d1 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen1.h
+++ b/drivers/ntb/hw/intel/ntb_hw_gen1.h
@@ -141,6 +141,7 @@
 #define NTB_HWERR_B2BDOORBELL_BIT14	BIT_ULL(2)
 #define NTB_HWERR_MSIX_VECTOR32_BAD	BIT_ULL(3)
 #define NTB_HWERR_BAR_ALIGN		BIT_ULL(4)
+#define NTB_HWERR_LTR_BAD		BIT_ULL(5)
 
 extern struct intel_b2b_addr xeon_b2b_usd_addr;
 extern struct intel_b2b_addr xeon_b2b_dsd_addr;
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.c b/drivers/ntb/hw/intel/ntb_hw_gen4.c
index bc4541cbf8c6..fede05151f69 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen4.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.c
@@ -177,8 +177,10 @@ int gen4_init_dev(struct intel_ntb_dev *ndev)
 
 	ndev->reg = &gen4_reg;
 
-	if (pdev_is_ICX(pdev))
+	if (pdev_is_ICX(pdev)) {
 		ndev->hwerr_flags |= NTB_HWERR_BAR_ALIGN;
+		ndev->hwerr_flags |= NTB_HWERR_LTR_BAD;
+	}
 
 	ppd1 = ioread32(ndev->self_mmio + GEN4_PPD1_OFFSET);
 	ndev->ntb.topo = gen4_ppd_topo(ndev, ppd1);
@@ -431,6 +433,25 @@ static int intel_ntb4_link_enable(struct ntb_dev *ntb,
 		dev_dbg(&ntb->pdev->dev,
 				"ignoring max_width %d\n", max_width);
 
+	if (!(ndev->hwerr_flags & NTB_HWERR_LTR_BAD)) {
+		u32 ltr;
+
+		/* Setup active snoop LTR values */
+		ltr = NTB_LTR_ACTIVE_REQMNT | NTB_LTR_ACTIVE_VAL | NTB_LTR_ACTIVE_LATSCALE;
+		/* Setup active non-snoop values */
+		ltr = (ltr << NTB_LTR_NS_SHIFT) | ltr;
+		iowrite32(ltr, ndev->self_mmio + GEN4_LTR_ACTIVE_OFFSET);
+
+		/* Setup idle snoop LTR values */
+		ltr = NTB_LTR_IDLE_VAL | NTB_LTR_IDLE_LATSCALE | NTB_LTR_IDLE_REQMNT;
+		/* Setup idle non-snoop values */
+		ltr = (ltr << NTB_LTR_NS_SHIFT) | ltr;
+		iowrite32(ltr, ndev->self_mmio + GEN4_LTR_IDLE_OFFSET);
+
+		/* setup PCIe LTR to active */
+		iowrite8(NTB_LTR_SWSEL_ACTIVE, ndev->self_mmio + GEN4_LTR_SWSEL_OFFSET);
+	}
+
 	ntb_ctl = NTB_CTL_E2I_BAR23_SNOOP | NTB_CTL_I2E_BAR23_SNOOP;
 	ntb_ctl |= NTB_CTL_E2I_BAR45_SNOOP | NTB_CTL_I2E_BAR45_SNOOP;
 	iowrite32(ntb_ctl, ndev->self_mmio + ndev->reg->ntb_ctl);
@@ -476,6 +497,10 @@ static int intel_ntb4_link_disable(struct ntb_dev *ntb)
 	lnkctl |= GEN4_LINK_CTRL_LINK_DISABLE;
 	iowrite16(lnkctl, ndev->self_mmio + GEN4_LINK_CTRL_OFFSET);
 
+	/* set LTR to idle */
+	if (!(ndev->hwerr_flags & NTB_HWERR_LTR_BAD))
+		iowrite8(NTB_LTR_SWSEL_IDLE, ndev->self_mmio + GEN4_LTR_SWSEL_OFFSET);
+
 	ndev->dev_up = 0;
 
 	return 0;
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.h b/drivers/ntb/hw/intel/ntb_hw_gen4.h
index a868c788de02..3fcd3fdce9ed 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen4.h
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.h
@@ -35,6 +35,9 @@
 #define GEN4_IM_SPAD_SEM_OFFSET		0x00c0	/* SPAD hw semaphore */
 #define GEN4_IM_SPAD_STICKY_OFFSET	0x00c4  /* sticky SPAD */
 #define GEN4_IM_DOORBELL_OFFSET		0x0100  /* 0-31 doorbells */
+#define GEN4_LTR_SWSEL_OFFSET		0x30ec
+#define GEN4_LTR_ACTIVE_OFFSET		0x30f0
+#define GEN4_LTR_IDLE_OFFSET		0x30f4
 #define GEN4_EM_SPAD_OFFSET		0x8080
 /* note, link status is now in MMIO and not config space for NTB */
 #define GEN4_LINK_CTRL_OFFSET		0xb050
@@ -80,6 +83,18 @@
 
 #define NTB_SJC_FORCEDETECT		0x000004
 
+#define NTB_LTR_SWSEL_ACTIVE		0x0
+#define NTB_LTR_SWSEL_IDLE		0x1
+
+#define NTB_LTR_NS_SHIFT		16
+#define NTB_LTR_ACTIVE_VAL		0x0000  /* 0 us */
+#define NTB_LTR_ACTIVE_LATSCALE		0x0800  /* 1us scale */
+#define NTB_LTR_ACTIVE_REQMNT		0x8000  /* snoop req enable */
+
+#define NTB_LTR_IDLE_VAL		0x0258  /* 600 us */
+#define NTB_LTR_IDLE_LATSCALE		0x0800  /* 1us scale */
+#define NTB_LTR_IDLE_REQMNT		0x8000  /* snoop req enable */
+
 ssize_t ndev_ntb4_debugfs_read(struct file *filp, char __user *ubuf,
 				      size_t count, loff_t *offp);
 int gen4_init_dev(struct intel_ntb_dev *ndev);


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/160614577287.521825.7762300396286632790.stgit%40djiang5-desk3.ch.intel.com.

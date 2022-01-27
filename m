Return-Path: <linux-ntb+bncBDXYVT6AR4MRBFMCZSHQMGQEXCBFVTI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x640.google.com (mail-ej1-x640.google.com [IPv6:2a00:1450:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7FC49EC7F
	for <lists+linux-ntb@lfdr.de>; Thu, 27 Jan 2022 21:31:18 +0100 (CET)
Received: by mail-ej1-x640.google.com with SMTP id mp5-20020a1709071b0500b0069f2ba47b20sf1823127ejc.19
        for <lists+linux-ntb@lfdr.de>; Thu, 27 Jan 2022 12:31:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1643315477; cv=pass;
        d=google.com; s=arc-20160816;
        b=i3+H3CTOtNjIFaOYbTbvQ5NyCRcyjjfIBJyJxPQixsl0HJH7v+tswzSSZkUVrSHm7F
         ItYZMze7jb3rSsEAdHGazpga6WDnfwcSXUQuNyi5U2Bg+AQvl1dfC7ZFNNquVo61ZoGr
         CZkD9OBYKoAS+IYM+bRUcjuWlGXiaiNfHIWjLwtXA66WcL0h6zHfLezP7dN6hV7Il8xF
         BbUW0jbxTvViWtwOr2+zxi/0WQtIYAh57aWdcxVviKYtFPkrfTDzsIcOphRRDSkrg0ev
         s4xnbZs9dloThBnsjx1muZAoAnoq7POnyDz4n+9dvme5TIgGw5wRr0H2wqWCsld22Kmg
         AqZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :date:cc:to:from:subject:sender:dkim-signature;
        bh=Jg9Sy0yWOBdgCk+RiKULIPp2Exf6bpu8fP1N8oaRwlo=;
        b=SNEDlJcO+ZdClIZsOW3g643SS3F3MIkyjXAOnCnWFDJkuMXRm4SWUPPL1Uwhc8CuEs
         bRdmKws3c3j3/sP3H9aB8l4THARDI6s1hJdQjXS89Tu9qqNGVyxzFdapyOWTGUGDNGuJ
         8O5KVR5mHT8IWt5RXCIRudSTNNm1F3iwJvgJqA80oAxDLLgsF9KINGo1Kx2VjiKJz9ei
         BSlvCPcdlHV9s8iDqGDOXIKXF1a+Ac4tbz/scJGpAFCu3goPv5J/PMqHqDNCMlAfPiTN
         aVMpanrcEUvPiiJIwHXY0cNK5nT4APYOSuyJWyOruEmajz/MWXhpvgfbyacASIwMbh70
         IieQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=DCKLyemk;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:from:to:cc:date:message-id:user-agent:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jg9Sy0yWOBdgCk+RiKULIPp2Exf6bpu8fP1N8oaRwlo=;
        b=eDAaRlrp+t4KZ2Y8aRAEAPUcXi3W68L74N3V0tztpWkTys6fYn60xa3D73/JmiRVE/
         m61RBaDfxzBVwXltA2XzEg++7RF8b9iWjGdW4dGMJsxdoPsyp3GT5NtkwT6WwLVdOzc8
         e3sIrwV0Ih8O65+xOCxgjH/wp5oHK+UXK22JC4eyPkV74OyDL2SojxaI9WKh4imUjleN
         UUCmMoMF3+F56gb3N4gxAuNOVy0KwRCZfVkUU5h/Zwe1AUXgdOG+lSfhwQpesVe0wRmm
         ny4wJgPDclfbHf49IWRskWc4Z3AiG0YFq4FrvwHGZSS+XfM5WmTS0L4IU0dRQlH4R0nH
         nj3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:from:to:cc:date:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jg9Sy0yWOBdgCk+RiKULIPp2Exf6bpu8fP1N8oaRwlo=;
        b=WLbu+jFInIkHrwfE8Tt/CTn9PDnd/nE4FwqQek/zXEE/8V3+HWPIInnyYC0clrXUtv
         lfkdwqn+01nn8aboOatYMBpKElk2/t8ft/m2Wley+8HsKQix0Xt2ysiWpFYobYMaTUIj
         r2qq75na6CEv97rJkLFsDpVYF/BqkeVc0oVuD7vD8/tAoat+u0Zn7/mOs9FvI+LJ5Vop
         mVRulhQ5jqdcR+UXga3VO31zrC/s8DY/hbDPFIOeah7ZflD3wXZ9s0KMWMmtnl2+tTeR
         7MfXmYWFXQHSz6D7AIbe2crW9xWqND1dATNvt7wNBR0k4V/aN2ZxKCOZFqBiMMWEgsPG
         B9WQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530RVkD+NS6j2P56Lpk9YHIMJ5wqO2rMKgsDNnhPOWJWS2CuN1vv
	Ev8RGPj+MHaBI15mCN7xm+k=
X-Google-Smtp-Source: ABdhPJyyeZz9BOzBx+Z4l9HjhCREOAz33R3jxq/J37AnjvGEzB1q4Vx5++MMf71kn2hVf7pqEjKwRA==
X-Received: by 2002:a17:907:961b:: with SMTP id gb27mr4158128ejc.444.1643315477567;
        Thu, 27 Jan 2022 12:31:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:907:629d:: with SMTP id nd29ls2979535ejc.4.gmail; Thu,
 27 Jan 2022 12:31:16 -0800 (PST)
X-Received: by 2002:a17:907:7d89:: with SMTP id oz9mr4074074ejc.400.1643315476725;
        Thu, 27 Jan 2022 12:31:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1643315476; cv=none;
        d=google.com; s=arc-20160816;
        b=eEqlKlIhZ2MFxWOJvXM/vWuyo1NzCQq9IsNRAYXrGxcL/zW0AMob+J1gICHMGCkmoz
         V6ostKYjUyit5nNUkCcVTmPdpI8tIlx2NPsYr4SzY1Uxds34A7GpZF3QbW3aJrrssphR
         DNyUF4qeqMPeqChqC9fMbC878iH7+9BVxGOWwComyS3hbcRDW6LefHUO33CSU3Fo7p6R
         vy7pku4AcAvOoxR/FVU7O7PxCcgYMvl/CTaZD/8pl5EMhX8PJ5xTn0JdLkja8nQZ7YgI
         TjlxA8Fju3PNHF4hrpveCECgFMbaINDpd9AtcaU+oyDHKlho2fiakeswrghBE3vqBCcy
         QVeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:dkim-signature;
        bh=ApIJtUO1umvfe8kobRqJakbbM2SGzHqkBUZkkYC+xaY=;
        b=nIwerooQI6omfLDdqcym2uQDYpCyTkEeBKLN0tUmHRg3vx9BIbdLQW7hKb7gyg4RjE
         KyDHctiy0weOFgpB9hggE+pZv7e2HT38jyA02W1r0I2W5ARq98VKY4wU4Rux/vBE3fiN
         hDFnPtmgWcbnTcBOPW56q16qH4FCQ0L2sg3x00MDa9kAMUcyQoAuzykjIB5mFXqlx2tX
         sM7olgZtfpLcSkqCrXqBErrPRU4FAzUabDFCBGl2IwjoncAm04YspFFON+ZWhYwK4T0w
         jhps517jHCS0zCmlS3fg18ifxP/U1ushfFMG+Eez4QchnGfX4C4Bib3DT5+MXkBhvdGC
         lAAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=DCKLyemk;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id i16si131809edc.4.2022.01.27.12.31.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 27 Jan 2022 12:31:16 -0800 (PST)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10239"; a="244560442"
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; 
   d="scan'208";a="244560442"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 12:31:13 -0800
X-IronPort-AV: E=Sophos;i="5.88,321,1635231600"; 
   d="scan'208";a="495859920"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 Jan 2022 12:31:13 -0800
Subject: [PATCH] ntb: intel: fix port config status offset for SPR
From: Dave Jiang <dave.jiang@intel.com>
To: jdmason@kudzu.us
Cc: Jerry Dai <jerry.dai@intel.com>, allenbh@gmail.com,
 linux-ntb@googlegroups.com
Date: Thu, 27 Jan 2022 13:31:12 -0700
Message-ID: <164331547261.135051.8301478137022089685.stgit@djiang5-desk3.ch.intel.com>
User-Agent: StGit/1.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=DCKLyemk;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 192.55.52.93 as
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

The field offset for port configuration status on SPR has been changed to
bit 14 from ICX where it resides at bit 12. By chance link status detection
continued to work on SPR. This is due to bit 12 being a configuration bit
which is in sync with the status bit. Fix this by checking for a SPR device
and checking correct status bit.

Tested-by: Jerry Dai <jerry.dai@intel.com>
Signed-off-by: Dave Jiang <dave.jiang@intel.com>
---
 drivers/ntb/hw/intel/ntb_hw_gen4.c |   17 ++++++++++++++++-
 drivers/ntb/hw/intel/ntb_hw_gen4.h |   16 ++++++++++++++++
 2 files changed, 32 insertions(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.c b/drivers/ntb/hw/intel/ntb_hw_gen4.c
index fede05151f69..4081fc538ff4 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen4.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.c
@@ -168,6 +168,18 @@ static enum ntb_topo gen4_ppd_topo(struct intel_ntb_dev *ndev, u32 ppd)
 	return NTB_TOPO_NONE;
 }
 
+static enum ntb_topo spr_ppd_topo(struct intel_ntb_dev *ndev, u32 ppd)
+{
+	switch (ppd & SPR_PPD_TOPO_MASK) {
+	case SPR_PPD_TOPO_B2B_USD:
+		return NTB_TOPO_B2B_USD;
+	case SPR_PPD_TOPO_B2B_DSD:
+		return NTB_TOPO_B2B_DSD;
+	}
+
+	return NTB_TOPO_NONE;
+}
+
 int gen4_init_dev(struct intel_ntb_dev *ndev)
 {
 	struct pci_dev *pdev = ndev->ntb.pdev;
@@ -183,7 +195,10 @@ int gen4_init_dev(struct intel_ntb_dev *ndev)
 	}
 
 	ppd1 = ioread32(ndev->self_mmio + GEN4_PPD1_OFFSET);
-	ndev->ntb.topo = gen4_ppd_topo(ndev, ppd1);
+	if (pdev_is_ICX(pdev))
+		ndev->ntb.topo = gen4_ppd_topo(ndev, ppd1);
+	else if (pdev_is_SPR(pdev))
+		ndev->ntb.topo = spr_ppd_topo(ndev, ppd1);
 	dev_dbg(&pdev->dev, "ppd %#x topo %s\n", ppd1,
 		ntb_topo_string(ndev->ntb.topo));
 	if (ndev->ntb.topo == NTB_TOPO_NONE)
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.h b/drivers/ntb/hw/intel/ntb_hw_gen4.h
index 3fcd3fdce9ed..f91323eaf5ce 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen4.h
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.h
@@ -49,10 +49,14 @@
 #define GEN4_PPD_CLEAR_TRN		0x0001
 #define GEN4_PPD_LINKTRN		0x0008
 #define GEN4_PPD_CONN_MASK		0x0300
+#define SPR_PPD_CONN_MASK		0x0700
 #define GEN4_PPD_CONN_B2B		0x0200
 #define GEN4_PPD_DEV_MASK		0x1000
 #define GEN4_PPD_DEV_DSD		0x1000
 #define GEN4_PPD_DEV_USD		0x0000
+#define SPR_PPD_DEV_MASK		0x4000
+#define SPR_PPD_DEV_DSD 		0x4000
+#define SPR_PPD_DEV_USD 		0x0000
 #define GEN4_LINK_CTRL_LINK_DISABLE	0x0010
 
 #define GEN4_SLOTSTS			0xb05a
@@ -62,6 +66,10 @@
 #define GEN4_PPD_TOPO_B2B_USD	(GEN4_PPD_CONN_B2B | GEN4_PPD_DEV_USD)
 #define GEN4_PPD_TOPO_B2B_DSD	(GEN4_PPD_CONN_B2B | GEN4_PPD_DEV_DSD)
 
+#define SPR_PPD_TOPO_MASK	(SPR_PPD_CONN_MASK | SPR_PPD_DEV_MASK)
+#define SPR_PPD_TOPO_B2B_USD	(GEN4_PPD_CONN_B2B | SPR_PPD_DEV_USD)
+#define SPR_PPD_TOPO_B2B_DSD	(GEN4_PPD_CONN_B2B | SPR_PPD_DEV_DSD)
+
 #define GEN4_DB_COUNT			32
 #define GEN4_DB_LINK			32
 #define GEN4_DB_LINK_BIT		BIT_ULL(GEN4_DB_LINK)
@@ -112,4 +120,12 @@ static inline int pdev_is_ICX(struct pci_dev *pdev)
 	return 0;
 }
 
+static inline int pdev_is_SPR(struct pci_dev *pdev)
+{
+	if (pdev_is_gen4(pdev) &&
+	    pdev->revision > PCI_DEVICE_REVISION_ICX_MAX)
+		return 1;
+	return 0;
+}
+
 #endif


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/164331547261.135051.8301478137022089685.stgit%40djiang5-desk3.ch.intel.com.

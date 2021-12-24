Return-Path: <linux-ntb+bncBAABB5WCSSHAMGQEYBEUFPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C1F47EA2D
	for <lists+linux-ntb@lfdr.de>; Fri, 24 Dec 2021 02:25:10 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id k20-20020a2e9214000000b0022d6b13bc8asf2123784ljg.13
        for <lists+linux-ntb@lfdr.de>; Thu, 23 Dec 2021 17:25:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640309110; cv=pass;
        d=google.com; s=arc-20160816;
        b=JhYK7FEJUR2p+8q4KMdTeUUGIxOFxanFe/4HBFmt42KFQi3TCe9cbvd9kfB5byNhNf
         tNIroEjpxBkHeRk0P+vO5e1r7AlQI1GLhYKCHdhcR9X/x1lsxLQW9zBPYddWti2iYkH9
         UOKFjKJUvYT6XzcWbhJqjOOX8ewC02mH6tdn55KImh/RRlcdQGE+Q8/d6n7klTN2U5hS
         23UEADDFTDMXyZdbplmaCVbiCrBLF51loEO08RxKgf1p54dgj7ymF3VjPtrUY7fteWFy
         c9Mk05jIt2T4hvZ5DEJYOxPGLjWsElC9ETuRds0VVgwnxF8n46p4KQFoatRP/rNnmG84
         XvAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=ghIpUnhrHmLHajSJIZk71ptiaCM9OpHbz0O0Jd/FOIU=;
        b=wvYkhrF4hPrICPLCuEN9lL/s0UyW/JF++aj5RQOTv98i/zjbaiF4QAwTYvPSOMN3Cb
         EDkf1ZLaoF++1H59/FgMNHq2cJZtxHEGsvlShAclW4oHSy+ynJe8aLjluxEIL97AZzdF
         cCexdeOhPSSRyZaRMs848xP5bCfUtx66iDo290wXB7LHyhVAigs9Io402WRLtFmZYul5
         n14GsoswWju9x/40Oj1usE5CNO9+TSIX3OyYfBKc10HLMqZs5k+HCXjsjKIceIU9Gu1Q
         e6roWWbpkxvbRu/qsKq0bN31Ey7bytBvY5X2kKc1iUawcAQvhHDmTgXH7C+t0vSqT9Vx
         lnow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=Ui1g7Kb+;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ghIpUnhrHmLHajSJIZk71ptiaCM9OpHbz0O0Jd/FOIU=;
        b=Nm98QTWtNl6UIGUvOOvHxxGhWqtwdu8rNOz3fj3v32hMlUsKKIofE01KQQyLgbHaCH
         mPjhW9Yp/9x4bamBLbablHgjJYOetWBe2g+bhlms1YPqxDIM9+JfqgQadNkwT8KR8TPN
         NWgkq/i44QFw1uT+6sZ7AUYr7WNTmS7a7/uJ1eHlQ4iNjUHih3Zp4NAyM11sssbfwPG9
         rA1C6bqbkYgBOUvvwpMZVZIiQhXwXKRPjw2OCwnnRT5P/hCcpn1obKustMhJFIeGptnr
         7b4YDZfYApMEbWvJ3ToxyA/6RSfLTC18ZIOgcxkHmb+hGM6lEZ4R7SdUZfkJ7k5H8/68
         K3bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ghIpUnhrHmLHajSJIZk71ptiaCM9OpHbz0O0Jd/FOIU=;
        b=Gzu7Vxi9rosXz9z6abRfjHadnIMqCy5/esEqp9FRdgb+hQlIxl4FS6+Quo6MDwskVH
         vnZk+i6CEMNzFyJr6zeVHHBZoeZg1c0z63Pvc78JWLC9pvueOtBhxRma1C+mk76pesLu
         Zy3MzMGKK8XWpYs7ejvB78bC6xiedtTFKiCRDviYllI/pjN5j8iloumM/+Fh48p9bEA3
         BKkxZvbITHdmZ5ttkjtk/qB53ZCSLCgsgRzjbhQO9YT0UQBMo57vX3goQxIKlT+BCN1D
         sD4c02ObYpzkdhrFb/2mAiXFUx2vBTMDh2UkTYPZ8gTKxwIDzgiSJl0/1l+3NiAIN6vP
         UxvA==
X-Gm-Message-State: AOAM530xUJ+PA20n2wIRIdDREaoPrVlznbwQ5yBvYW7Hj1Wre7KBJj5D
	U5I9Ch9p+f+lmNLRzS9gzFI=
X-Google-Smtp-Source: ABdhPJxWLCi9jGP8DLumn5OMSk/w0AfTzDEUflnEaAnSzUqIqxdMeioJXJ6gr4mZwnsjHlJt4AOaxQ==
X-Received: by 2002:ac2:4f04:: with SMTP id k4mr3645716lfr.243.1640309110564;
        Thu, 23 Dec 2021 17:25:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:1112:: with SMTP id l18ls98248lfg.1.gmail; Thu, 23
 Dec 2021 17:25:09 -0800 (PST)
X-Received: by 2002:a05:6512:ace:: with SMTP id n14mr3478528lfu.53.1640309109805;
        Thu, 23 Dec 2021 17:25:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640309109; cv=none;
        d=google.com; s=arc-20160816;
        b=X1H14AzQXVGByGDMZ7EieWrLeW5M+BDgPWoxEsbnyAvhTJdOy2ext6vKQqEsZckD3z
         CHOCH5+zkcEdfnlbAbnaT/7IqLHjp2vcmJ9gZycP4DUHcckCeZp0Cjq6x59n2LVP78Gy
         Ktzld50ZiTah3WfCqIYFHIrmmQwG2YyCgMImDzHybupM3i+fgoi7FCv2mmeFj645bDBO
         4CS7Di8UE/ek0GtPI8El1rbEESvBxzKS4egy1NfTBOQkBk8Lcj0J/K/fJesGtHvNJFMo
         0qmsrCPyRnBu1ylYQBvwz24ZXsehFCPT0fkFhESxrWpSZDXe42pLQ7tqvWrVXPSbMllD
         Z+zA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:ironport-sdr:dkim-signature;
        bh=N+IfURJhzizeVekBY2DTGMgPvSxM9B4pPwjkgqzVaEw=;
        b=Vxfk2/T6HwTwDz8xyOenqNjImbstZgG3Hh2PkP9ncyjGhxgRqTOij6SvUrW/6te10p
         P60x0EYaiMMo3f7Ly37++nRb058jlMNBarvsNeOKLe0wNEhN4tYDizrZ4LoQWzVg4LSd
         /N3R70KpNV6j+t8aSMg4gaNOEv0tDTRVbvKNPIT1xvOSFDSf+0jVRPOztozUY1w9CzPP
         MmajVwF0bggRhpkCoJDI0Yax+iE+SlgYR/JTYdIKpVCAPCduRoPNp1KFXNlEjeOETq+q
         +7JUJxaoATlQGXtMpG4OvBSnvyRaCjmn2xWA8g7d5qZ0AiNUite1Q4fxnHI0lb0y3czL
         nUFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=Ui1g7Kb+;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id q2si170723ljc.0.2021.12.23.17.25.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Dec 2021 17:25:09 -0800 (PST)
Received-SPF: pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: FQW/+CiLjkhFTMpKv8M6lhxcIk3BBZYBoUdh49L2V/A8xvkDc7QNRN2+MZVg4/krJI4VQD4ges
 Md+7wdDfLu/1jAsDtVxfJlt61i3xSJTsHpdUS7oDNUtvEZlk4LQSFdf0iOBOPw56auV7Nd1vy0
 B8In17ZvJEdae0gMChY1E5s7sEavTb8T08pVOBLwtRZtQA3QRYp6FNguV88pnaHuBnL5+TPoDu
 tEefVHptu6wVkQeS5aLul9ftON7iGggF4QVSHLFbt+QvBEy4Buh8ne+H71x/U7iA3a8y25IDON
 5axLB/e4mO88C7547szHl8GT
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; 
   d="scan'208";a="80533980"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2021 18:25:06 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 23 Dec 2021 18:25:06 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Thu, 23 Dec 2021 18:25:06 -0700
From: "'Kelvin Cao' via linux-ntb" <linux-ntb@googlegroups.com>
To: Kurt Schwemmer <kurt.schwemmer@microsemi.com>, Logan Gunthorpe
	<logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	<linux-pci@vger.kernel.org>, <linux-ntb@googlegroups.com>,
	<linux-kernel@vger.kernel.org>
CC: Kelvin Cao <kelvin.cao@microchip.com>, <kelvincao@outlook.com>, "Jeremy
 Pallotta" <jmpallotta@gmail.com>
Subject: [PATCH 4/6] ntb_hw_switchtec: Update the way of getting VEP instance ID
Date: Thu, 23 Dec 2021 17:23:32 -0800
Message-ID: <20211224012334.89173-5-kelvin.cao@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211224012334.89173-1-kelvin.cao@microchip.com>
References: <20211224012334.89173-1-kelvin.cao@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=Ui1g7Kb+;       spf=pass
 (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as
 permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: Kelvin Cao <kelvin.cao@microchip.com>
Reply-To: Kelvin Cao <kelvin.cao@microchip.com>
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

Gen4 firmware adds DMA VEP and NVMe VEP support in VEP (virtual EP)
instance ID register in addtion to management EP. Update the way of
getting management VEP instance ID.

Signed-off-by: Kelvin Cao <kelvin.cao@microchip.com>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index 25302a384a7d..03839346233d 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -419,8 +419,10 @@ static void switchtec_ntb_part_link_speed(struct switchtec_ntb *sndev,
 					  enum ntb_width *width)
 {
 	struct switchtec_dev *stdev = sndev->stdev;
-	u32 pff =
-		ioread32(&stdev->mmio_part_cfg_all[partition].vep_pff_inst_id);
+	struct part_cfg_regs __iomem *part_cfg =
+		&stdev->mmio_part_cfg_all[partition];
+
+	u32 pff = ioread32(&part_cfg->vep_pff_inst_id) & 0xFF;
 	u32 linksta = ioread32(&stdev->mmio_pff_csr[pff].pci_cap_region[13]);
 
 	if (speed)
@@ -1089,7 +1091,7 @@ static int crosslink_enum_partition(struct switchtec_ntb *sndev,
 {
 	struct part_cfg_regs __iomem *part_cfg =
 		&sndev->stdev->mmio_part_cfg_all[sndev->peer_partition];
-	u32 pff = ioread32(&part_cfg->vep_pff_inst_id);
+	u32 pff = ioread32(&part_cfg->vep_pff_inst_id) & 0xFF;
 	struct pff_csr_regs __iomem *mmio_pff =
 		&sndev->stdev->mmio_pff_csr[pff];
 	const u64 bar_space = 0x1000000000LL;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211224012334.89173-5-kelvin.cao%40microchip.com.

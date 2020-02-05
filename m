Return-Path: <linux-ntb+bncBCHK3VHCYUIBBTGK5PYQKGQECXH7IBY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id DB0161534A8
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:54:53 +0100 (CET)
Received: by mail-pl1-x63d.google.com with SMTP id v24sf1383018plo.2
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:54:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918092; cv=pass;
        d=google.com; s=arc-20160816;
        b=eXareijfCm0pxpKgxD5gc2oPqA6ieE+FGQsG5s5mlQzHQv8EuC4vp6hFNzyxxQxYxS
         Iwc2/06PI2KfnI1hL1k0/OYvSKRQkaa+xNhPwng32PPOwhAuN8w0QtMWURJQDlGOjUQF
         AkeiyXW87+Fb6NOQTTcnFXR1AX75UJB/ZHa+3Lgk/TxMoncaOyp7NnICd39TL3TUWblg
         nJ02BFzbO3WfAUwzFaI7663VvNkGGEZuktsE6tHkq7bG0HQmkAy6a6YOln+yfbZSCCGv
         /kzs2JMOdBD4feVlo1Mb2B6s76FwY/6EuypVYKniBUMKFbmp7TgZFSlTxVg42QECN038
         bRnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=cPz05ifAQfxaMDXCH/JH25cjKyS/1N5DNnL1BLU64tc=;
        b=OS6DjuOe8ZMzpyowkgnzrqNCpZfrcyCHfOh9LjjcJtkgI+q26dkBDMj52UMKOGGXUr
         ATf/STcMLRYcsxIi3ymzwgMmYTuWuIjc07WJ/1e6VHrS8ClJgueQgHZ5IkqZHJ5uhRqA
         Ja0FU2Wo8HaWbV3dlYy73vCXMsyIivZsPliWtqpT4TYcYh4YfYmGFN0ylTkbKiw6OZ4M
         XuzYmVHnzhiAK7EuaGzFw51eQh6G7pebpB810VWjM+dn8gyat3x8l3Pc0ygX37/a62Mv
         MI3S5cfsam7ZGk4Oz4MSrdlfKGmGpGZwkXaOD+mVqrgQ0/0dPze29WpXMk2hcAtihEqk
         ayYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FUXuf7lF;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cPz05ifAQfxaMDXCH/JH25cjKyS/1N5DNnL1BLU64tc=;
        b=p+NbnqLFi7bALs4mDhjJhSl7BBM5biwV+5rMbwZiA+AuUzrrcy4Y0eWBl/FnwoNkSy
         RpoFNQlDWNg4UjQQQDWICoESvZSMU6KHoWVdQApvIhMsd+bPHtg4AIlqD8inu9HQN3Iq
         Jtetq7EwB3qtluLkQj9r7IRBLLxdV4M0Vw0WPoHAMTPmrgVhWB/EYwwcuvskH9wwOxvh
         seytRiWoYua1GH8cqNcBEmXBqoo17CfoHB8iRfni9zIbtTxxzFktAPPrQw0uMigm4fMI
         3wpl/7CqBcZ3bDNfW8aKwUrmoQsExqK0COCR1rpOSUxn0Uny7dp2o9/RZkX5cUxIjlkx
         OVNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cPz05ifAQfxaMDXCH/JH25cjKyS/1N5DNnL1BLU64tc=;
        b=F+1fwLBWxPmP9i36ic2zeRomWJkHWZeORcf8BMLwSjlfhS2FDOlgnXY5qpjXFf4lX0
         lwoRCtzimYEwViFdltFPw3LI7evvhUt2juIBv822+Q6OQcyfqI+WOVMqThbE6dmPeVVw
         DW/P1Xos7AexLO9/umrbov3bddfUIncFpIaEaDw0Uhbwe6anZjOV+d2LYeZilkqcD1ax
         lWz+uMe5xbQZOrI76jP1g+qID/RAo8F4bUZ350C+oCUmNrPwA5ZLw1RiOdqm/7VhH5ao
         +vWudWTcOhfJC0aPX0eBAonxcQAdaofoargSVQlu8UYmZa0d2A5mnzCsvebtkcKx/ANK
         V68w==
X-Gm-Message-State: APjAAAV/06m9usBMuPdgKCtTvsKAp2wKGmybmgQahY1rOFDa3zVdZvFo
	pq3WdUwAJzECpuxq7YC4VMM=
X-Google-Smtp-Source: APXvYqwTT7vleeUkDIjuIpZTYBRBzzuxkXLhf0sduy5x1eog9V9ts1X5kTJponCZgv+DxDEMbc8ePA==
X-Received: by 2002:a63:3688:: with SMTP id d130mr18787919pga.422.1580918092427;
        Wed, 05 Feb 2020 07:54:52 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:cec9:: with SMTP id y192ls1199697pfg.4.gmail; Wed, 05
 Feb 2020 07:54:51 -0800 (PST)
X-Received: by 2002:a63:921a:: with SMTP id o26mr13934792pgd.246.1580918091817;
        Wed, 05 Feb 2020 07:54:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918091; cv=none;
        d=google.com; s=arc-20160816;
        b=szTPmCIdeQmQieLWetqokF6RDaaxD7LIFkXpM1phOmzFumjZGtzUZi4gvfT0JaqmSZ
         LeAdGh7Nf4YvjWTcXldEszlEwPsI46N4Y3uS+qX6JCQjSnW208W09JL/BeLMI7uizP3S
         FYkwpsetiXnIDdbbFqBijjHatLiwKv0QdmsIoHe1BgdQ5M2SQF77I+NX6RFZvullgERV
         cz+J7RVBXoijQCUYNs/8Tdv/QSOlkwPHR/FCVuBioJ8fmVOhx9FjsLhKMoE496qjipfe
         LkuAkE0K3PLJEFXcjqKhoP4B7HxojciNWXugp++GIfS54TuIXe74DF8usdOfyOU5PItC
         HJSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=8ytOhGE/+q0R3jDpUR03D8eJfWZx9aSG9442bZTQPuk=;
        b=vB904tI+cMgedVCuX8Fr+iOEez5R8h89MAQQAXtwNpXw7CayWJxnR5nEPnNmXFmBWJ
         pXz8zcvpl+iVSXl6fmkNKwKjQXN75R4CzmIQXsJxBiFoO08VNpnvJxhvARnpVnBWZnpI
         OfAtT25Et3N7veVhW/JeRF9O8JbFPQUDWvmW2rC4Ulwsbq2Hh0B2Ke9xNgfBX3chAfj2
         jT5uhHAG3IZXzpUAbL01b460lTpVx6nNUgXX48P8IlrC8T7BAyRJL3lp0B3Q1BgdpCE8
         rUTMjeDMmYasaMmZRTOKJ1HgUgY+XAoru63pmGrDuBPA03JcMCzo0Zud0CkCogMeLbMY
         a3IQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FUXuf7lF;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id h2si365583pju.2.2020.02.05.07.54.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:54:51 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id fa20so1151453pjb.1
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:54:51 -0800 (PST)
X-Received: by 2002:a17:90a:db49:: with SMTP id u9mr6109180pjx.13.1580918091468;
        Wed, 05 Feb 2020 07:54:51 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:54:50 -0800 (PST)
Sender: Arindam Nath <anath.amd@gmail.com>
From: Arindam Nath <arindam.nath@amd.com>
To: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Jiasen Lin <linjiasen@hygon.cn>,
	Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Arindam Nath <arindam.nath@amd.com>
Subject: [PATCH 01/15] NTB: Fix access to link status and control register
Date: Wed,  5 Feb 2020 21:24:18 +0530
Message-Id: <dff949f3edec4c78549c0a9b26c6932a8190fee3.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FUXuf7lF;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Content-Type: text/plain; charset="UTF-8"
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

The design of AMD NTB implementation is such that
NTB primary acts as an endpoint device and NTB
secondary is an endpoint device behind a combination
of Switch Upstream and Switch Downstream. Considering
that, the link status and control register needs to
be accessed differently based on the NTB topology.

So in the case of NTB secondary, we first get the
pointer to the Switch Downstream device for the NTB
device. Then we get the pointer to the Switch Upstream
device. Once we have that, we read the Link Status
and Control register to get the correct status of
link at the secondary.

In the case of NTB primary, simply reading the Link
Status and Control register of the NTB device itself
will suffice.

Suggested-by: Jiasen Lin <linjiasen@hygon.cn>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 40 ++++++++++++++++++++++++++++++---
 drivers/ntb/hw/amd/ntb_hw_amd.h |  1 -
 2 files changed, 37 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index e52b300b2f5b..9a60f34a37c2 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -842,6 +842,9 @@ static inline void ndev_init_struct(struct amd_ntb_dev *ndev,
 static int amd_poll_link(struct amd_ntb_dev *ndev)
 {
 	void __iomem *mmio = ndev->peer_mmio;
+	struct pci_dev *pdev = NULL;
+	struct pci_dev *pci_swds = NULL;
+	struct pci_dev *pci_swus = NULL;
 	u32 reg, stat;
 	int rc;
 
@@ -855,10 +858,41 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
 
 	ndev->cntl_sta = reg;
 
-	rc = pci_read_config_dword(ndev->ntb.pdev,
-				   AMD_LINK_STATUS_OFFSET, &stat);
-	if (rc)
+	if (ndev->ntb.topo == NTB_TOPO_SEC) {
+		/* Locate the pointer to Downstream Switch for this device */
+		pci_swds = pci_upstream_bridge(ndev->ntb.pdev);
+		if (pci_swds) {
+			/*
+			 * Locate the pointer to Upstream Switch for
+			 * the Downstream Switch.
+			 */
+			pci_swus = pci_upstream_bridge(pci_swds);
+			if (pci_swus) {
+				rc = pcie_capability_read_dword(pci_swus,
+								PCI_EXP_LNKCTL,
+								&stat);
+				if (rc)
+					return 0;
+			} else {
+				return 0;
+			}
+		} else {
+			return 0;
+		}
+	} else if (ndev->ntb.topo == NTB_TOPO_PRI) {
+		/*
+		 * For NTB primary, we simply read the Link Status and control
+		 * register of the NTB device itself.
+		 */
+		pdev = ndev->ntb.pdev;
+		rc = pcie_capability_read_dword(pdev, PCI_EXP_LNKCTL, &stat);
+		if (rc)
+			return 0;
+	} else {
+		/* Catch all for everything else */
 		return 0;
+	}
+
 	ndev->lnk_sta = stat;
 
 	return 1;
diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_amd.h
index 139a307147bc..39e5d18e12ff 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.h
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
@@ -53,7 +53,6 @@
 #include <linux/pci.h>
 
 #define AMD_LINK_HB_TIMEOUT	msecs_to_jiffies(1000)
-#define AMD_LINK_STATUS_OFFSET	0x68
 #define NTB_LIN_STA_ACTIVE_BIT	0x00000002
 #define NTB_LNK_STA_SPEED_MASK	0x000F0000
 #define NTB_LNK_STA_WIDTH_MASK	0x03F00000
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/dff949f3edec4c78549c0a9b26c6932a8190fee3.1580914232.git.arindam.nath%40amd.com.

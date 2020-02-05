Return-Path: <linux-ntb+bncBCHK3VHCYUIBBVOK5PYQKGQEPMQBE2Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CADDF1534AB
	for <lists+linux-ntb@lfdr.de>; Wed,  5 Feb 2020 16:55:02 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id v11sf1741450iop.16
        for <lists+linux-ntb@lfdr.de>; Wed, 05 Feb 2020 07:55:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580918101; cv=pass;
        d=google.com; s=arc-20160816;
        b=pORNFAzypP1ml3KfAAvHijFukYbJTWtt7jwk1uYY45a61eNZm1TsKIOopXxmJTJ9hZ
         R8CjOeO0ND5BhR7N1eNtb9dhY93ZyGKqqyjg5ab5t4Nl9mt9ezFPkcG6Z5DFSz+ie5Gd
         wzUmUfMfIx156vixwRe3CRu+59Xxffq2GpzqDqevfmVPHRaTfCWMTH0OkM2DLhJxNqBG
         Z9J+0WoKffbR4mWJyofL+LETvh5znaxJ8UJ2E+IdEw+wyvtFlkYEygR27RC/77emf4lX
         HQ/jstfESk7RI6BgjPMegzyNLJtKUXtV4WRSk2Hssi0ngq0bB7vd/MNuvvepk0pTibcI
         1SnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender:mime-version
         :dkim-signature;
        bh=BRbYkZAPzrdQbnF7HEP+5aBCIATcu9oZIyvIoz6liC8=;
        b=KUUGVspVcPZlVICxJAiUqXz9fi6yy9UtZNS97HSd3DpSrUNuh21P3K/+LfFzEfQjj3
         nH5gGV4hba3amyZacqo95/mlxc6MrsMzwbSik4iqzXorLJ0acmbzklWqasJxXrtYdl69
         nAUf5Y5MIMkBeB4gRb4djbKf0BL6HUXqZdZCP1WIoeiMkDWdDJ1K/8fpCTi7IhN8Sdq/
         bJIvPbZEt1Yjx/Yc3/5NrIAq4Nd/foJugdXS9QKp8nJuQiFgYS/AGKzLoXH/DiMudb/x
         xckg6VsIXyPFR5+RVXAuewAacg8dsb/h8CHWCZBCzfRZwBpmNIGnNFxXk+4mvyz/Y5Lu
         SlMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WDdm+HKO;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BRbYkZAPzrdQbnF7HEP+5aBCIATcu9oZIyvIoz6liC8=;
        b=DFjNCokvKuVUasbaSB07jkOZIkZFpZML9ytll3OUcpR9wk7SxYzCxRCT3eoTY2LHzD
         DqbnsJpGqrTxBymUMU9wriIQ+OX0eORG96iCtpBuMV4qCs14cD5jyVp+NEFwttaPcIWp
         8r1NxLg2gMxQVKWO+VQqQseFzslyRDzlrss4g1rDrwjExpTN/tOeZrTBFxyqe53+caon
         FmPRkDM5D1OISJKZRkhju2aMedviVTWHgvQssKqqzTnn8dhpVD18flXpuXSeChnUpMT+
         DFsVVCQGzwBlaG4oKzTJlvK1RSGR3/8QPWCFp8hQSUBaCJ5+xX88woFSbt/vetPdlgdt
         ajJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:to:cc:subject:date
         :message-id:in-reply-to:references:in-reply-to:references
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=BRbYkZAPzrdQbnF7HEP+5aBCIATcu9oZIyvIoz6liC8=;
        b=H9y7ItHGBcJhYupzkWaGAhyUfvjl4VLGw6wBCaaKO3cygzktSVMmvwMa+qqjp1+F/h
         YqHH2s6ojhXHVwK6uBtL0Ymo8un7nm/+9yUxUolSaObMVbwPwYavjRPJWMVcl0HDllJ8
         abDDja9puEoVAD8SQpfrpEXag5CGva7ahfaTrAFDCJPXCj0EFUtU2VmNjNTZQAaxGTLL
         0iwx6d0Z5owyB2vGs13+co7781SlV055Rj/RGWpsupTqUpEaQCSHbMR85VYXSqlZ7Nfs
         RrWJGoZ/XbTFXXIEkjjt5FyBkFIZN/MMWqBCL/PM9+fijY9xByLG5wZvjLArSvXn+gT7
         cQBA==
X-Gm-Message-State: APjAAAVkSgpu280A77m5sUzef7c/prTyC0pepY6jXqX9UzZbyNAnt4C/
	sbEdr1TCacnR6SUkR0M41eE=
X-Google-Smtp-Source: APXvYqwJfyW8HYxgFrgRGrFeaEYFVkU6y1WtguxEXrYzkHabV4poMtZQUY8kKvgp7Pt4LOwyGcKftA==
X-Received: by 2002:a6b:6103:: with SMTP id v3mr29370032iob.49.1580918101786;
        Wed, 05 Feb 2020 07:55:01 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:6216:: with SMTP id f22ls527107iog.6.gmail; Wed, 05 Feb
 2020 07:55:01 -0800 (PST)
X-Received: by 2002:a6b:c703:: with SMTP id x3mr17577292iof.118.1580918101306;
        Wed, 05 Feb 2020 07:55:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580918101; cv=none;
        d=google.com; s=arc-20160816;
        b=RrGazYPoxmE5TvKIhCr/7v7aaeYcNam093APWlUGiUp++9fAa/+gNr2EvoWq1vOuV6
         lytW/QaVeU7u4e2iZyJWaeBFjHufyn6tR+k+edh9bEg5ffpPg7AEnZs9elvfMD/n25fh
         O8PnaRAn9XbtkwPNrgeAQA/Yx9EHmDX1JZj5yh33/I6Jv01WP6nPhkIB/PUNb1tuMLoI
         SvGeQCnSLsa3Hlj1llZNJUQp/xlQwFTRlZFL2HSJjMm/S3ISDrZSOYD05yelBYtuyeKs
         4+AxvtQuzdGJFsImGkH/JGm49g9VQK9gkPOJEm2R3F35UVWNdj4S51u6R3DrWAWZL64k
         jWXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=bsdxDvHxmIPg1xvhhe9AqHP+aRx23QetwzZU7QbbYOc=;
        b=Ll64UKri2SpfmmrhdQCEbcfptLkDFrYxea1nGc61L02MwhXUI9aTIt4LvkE7mJnGQr
         sTXxwdrQVszvyZJL+XirAMM5Re+JwbMc4i2Y+Cobe31vZMM4SMXC/wi8aLk8n65S2XPV
         ev76n2kGPusWazJ4ji3l2jysZxtrKDSZv/yVzXAVWqJYUkWm2WGThI9P2gABm53jweEP
         xH0RvYzkm67zxuw905nBS17fX/OcBwqkESThIJGMW6sjRbS3crKCAb4LtPKa8+cG86cf
         CwQecCEOvla+KVZ9yn/IwxYXegwxOgS6P4OeGsSK1KuDQkLqV8gb9AE9WaurxNAPo2fY
         W2cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WDdm+HKO;
       spf=pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=anath.amd@gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id z20si8186ill.5.2020.02.05.07.55.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:55:01 -0800 (PST)
Received-SPF: pass (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id w21so1155489pgl.9
        for <linux-ntb@googlegroups.com>; Wed, 05 Feb 2020 07:55:01 -0800 (PST)
X-Received: by 2002:aa7:9816:: with SMTP id e22mr37938712pfl.229.1580918100653;
        Wed, 05 Feb 2020 07:55:00 -0800 (PST)
Received: from emb-wallaby.amd.com ([165.204.156.251])
        by smtp.gmail.com with ESMTPSA id z10sm195678pgz.88.2020.02.05.07.54.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Feb 2020 07:55:00 -0800 (PST)
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
Subject: [PATCH 04/15] NTB: define a new function to get link status
Date: Wed,  5 Feb 2020 21:24:21 +0530
Message-Id: <d775a8653d3f4550adfdbfaaf03c269ad2896273.1580914232.git.arindam.nath@amd.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
References: <cover.1580914232.git.arindam.nath@amd.com>
X-Original-Sender: arindam.nath@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WDdm+HKO;       spf=pass
 (google.com: domain of anath.amd@gmail.com designates 2607:f8b0:4864:20::543
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

Since getting the status of link is a logically separate
operation, we simply create a new function which will
store the link status to be used later.

Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/hw/amd/ntb_hw_amd.c | 93 ++++++++++++++++++---------------
 1 file changed, 50 insertions(+), 43 deletions(-)

diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_amd.c
index 111f33ff2bd7..f50537e0917b 100644
--- a/drivers/ntb/hw/amd/ntb_hw_amd.c
+++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
@@ -195,6 +195,54 @@ static int amd_ntb_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
 	return 0;
 }
 
+static int amd_ntb_get_link_status(struct amd_ntb_dev *ndev)
+{
+	struct pci_dev *pdev = NULL;
+	struct pci_dev *pci_swds = NULL;
+	struct pci_dev *pci_swus = NULL;
+	u32 stat;
+	int rc;
+
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
+		return 0;
+	}
+
+	ndev->lnk_sta = stat;
+
+	return 1;
+}
+
 static int amd_link_is_up(struct amd_ntb_dev *ndev)
 {
 	if (!ndev->peer_sta)
@@ -845,11 +893,7 @@ static inline void ndev_init_struct(struct amd_ntb_dev *ndev,
 static int amd_poll_link(struct amd_ntb_dev *ndev)
 {
 	void __iomem *mmio = ndev->peer_mmio;
-	struct pci_dev *pdev = NULL;
-	struct pci_dev *pci_swds = NULL;
-	struct pci_dev *pci_swus = NULL;
-	u32 reg, stat;
-	int rc;
+	u32 reg;
 
 	reg = readl(mmio + AMD_SIDEINFO_OFFSET);
 	reg &= NTB_LIN_STA_ACTIVE_BIT;
@@ -861,44 +905,7 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
 
 	ndev->cntl_sta = reg;
 
-	if (ndev->ntb.topo == NTB_TOPO_SEC) {
-		/* Locate the pointer to Downstream Switch for this device */
-		pci_swds = pci_upstream_bridge(ndev->ntb.pdev);
-		if (pci_swds) {
-			/*
-			 * Locate the pointer to Upstream Switch for
-			 * the Downstream Switch.
-			 */
-			pci_swus = pci_upstream_bridge(pci_swds);
-			if (pci_swus) {
-				rc = pcie_capability_read_dword(pci_swus,
-								PCI_EXP_LNKCTL,
-								&stat);
-				if (rc)
-					return 0;
-			} else {
-				return 0;
-			}
-		} else {
-			return 0;
-		}
-	} else if (ndev->ntb.topo == NTB_TOPO_PRI) {
-		/*
-		 * For NTB primary, we simply read the Link Status and control
-		 * register of the NTB device itself.
-		 */
-		pdev = ndev->ntb.pdev;
-		rc = pcie_capability_read_dword(pdev, PCI_EXP_LNKCTL, &stat);
-		if (rc)
-			return 0;
-	} else {
-		/* Catch all for everything else */
-		return 0;
-	}
-
-	ndev->lnk_sta = stat;
-
-	return 1;
+	return amd_ntb_get_link_status(ndev);
 }
 
 static void amd_link_hb(struct work_struct *work)
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/d775a8653d3f4550adfdbfaaf03c269ad2896273.1580914232.git.arindam.nath%40amd.com.

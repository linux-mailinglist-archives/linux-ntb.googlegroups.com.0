Return-Path: <linux-ntb+bncBDXYVT6AR4MRBVOS472AKGQEXQAYDBQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D8031AE3E3
	for <lists+linux-ntb@lfdr.de>; Fri, 17 Apr 2020 19:37:26 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id r5sf2558145pfh.12
        for <lists+linux-ntb@lfdr.de>; Fri, 17 Apr 2020 10:37:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587145045; cv=pass;
        d=google.com; s=arc-20160816;
        b=HUogaB4HJmYjof/+PleMJacNyZGb6VF9wTfjORTavR7BwqANtlzK6NUatTQD7Tx7lc
         K+8+bea6v9fzpZCchvgy8RJXpHiKO1C6LD42OUUkFlFEXLYnIVp41jcnORAPq3s9wB9g
         pmhQkwCM4rGVylu9dfR8w50tPimcRMf3OfmkXaR1E+515MmQS0nbitGTSoJ8PR4kBvcN
         jU1Mue7yW0Z5Rd2l1UlVOm0h0kMaowtvAfKimFK7tPhxfOojGX9mmBFmOZM/MtVksCbV
         uwp1XdjotGq6pt+0UJygRTLf35/pgW+FAwrHRP2r9xjh3R/S9wSKsz+9tMgQbl2MtcQv
         d3qA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :date:cc:to:from:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=KqeVGRRp8oP+BUeu+sNefYj1zHyIBhWFXhUjm1d6ahQ=;
        b=eBSbD9Usxho01sa2o6ppkiCR6ANL1pht4fPxyFvp0eUY57T21IWqz40svzAh6uKw8u
         bnjLjOFkMfHfhM776bk7Pg8ofdqUrNPthkckVJRy0cgNfOM+upMXHAGHXdgKukCs7TCb
         JUhJg/QpKfhd/nTEPcOXAjcLVBm9PQl0yW6eAac8v7ZdsVwUYuaUXWEmkcQcD87JqN5f
         rF4Tp9x4o7NzdzmTcgVjzZm1I3jRzDvXWyd9x/qUVtbByG2dwoz04uP8FQGv4z8xNeaD
         2hDgTeJH38j3df36+Xa1u+rXSs35//MUO4zRWUKEvWlqCuUEYvXelONHs46rerZsxDvu
         qIYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:from:to:cc:date:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KqeVGRRp8oP+BUeu+sNefYj1zHyIBhWFXhUjm1d6ahQ=;
        b=bPgS2Rjvc6r/t8DKCTNyU0zaeoJNDhg4pv+3I/YJdSdjUh/0aWgn42cE+4xxujEqO9
         2oQVbw44YSm0XROwqQEuN+4Fruu0k4rO/3H4kpuGQNcgX8x3r3b1eyZaUdsjwaZC4ZvO
         1S6rLb9pZ0+iqEezcILmBqbqPxiaSjEu59tjRDKArrqhfFSEiaiUDS3rzV0deU9jLH4B
         Y3LqbbrkgExFRe706klQH/4U/CuJNFxt9fvwrxDoDvZQUYB1EfBfxU13aPk+9xwn9WST
         ohPZsioVvD7V+2weeM6Y3/hmAAWJJQkkgg+LT8NIRF+0Lx6hvaRPTSgHdi9oba+EI7lp
         peSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:from:to
         :cc:date:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KqeVGRRp8oP+BUeu+sNefYj1zHyIBhWFXhUjm1d6ahQ=;
        b=D14Wpr69aJPWgnBpCiGuj63VHz+PzsA1/MKuttnhIxb/oLLWqBzaFVlPEgCt1Ofd8e
         h6CzNi7To9EmoB9QY+wcna5SVO7H+2Nk0c1dMeTZ7I8kOPqItjg3v8Fqff52gxQhRK5Y
         GBIEffPqRtO1YsI1m/pVQkIB+2bQ4JSEfgVPpoZuA5PpzqLPth0ftkUR3uebF2I4DLtu
         NsX0BoB0aCKj2xeWq5432TI5g61v9fUrmWzJSitDKHHhZQy1l1lTjL6h7zPUVwSSgZc5
         W0Xqljsac867YCg1/Hh/ae61ohN38l6e6AU7eOueszkQRgZStJIzBguOV1drblwOMe6S
         W3FQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PubCUsvtb85qZICT35QGC/b0nuVCmJ3e/0mwaoiA2Q2hycnFmAL1
	8/fi7nvTQ3lb62p5qcI/3mg=
X-Google-Smtp-Source: APiQypJnOTPmoNhtQ31wN59VGo3Byy6ilOVb4VxYN8UM9NzXS+n7InoCwG3rsV7D72GW7dfeS0hoxQ==
X-Received: by 2002:a17:90a:37a3:: with SMTP id v32mr6018072pjb.2.1587145045202;
        Fri, 17 Apr 2020 10:37:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:b58d:: with SMTP id a13ls2540562pls.0.gmail; Fri, 17
 Apr 2020 10:37:24 -0700 (PDT)
X-Received: by 2002:a17:90a:6f22:: with SMTP id d31mr5859223pjk.14.1587145044745;
        Fri, 17 Apr 2020 10:37:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587145044; cv=none;
        d=google.com; s=arc-20160816;
        b=rVjMgUF7WMwIo6sJIjm+XWwtzhiQkPtld2kMahTGQ8E8Uyfv2dXav7qJEWiyMPHXTA
         lfYXd+b7ZuPa7cbak/66gTkNfDpFybZftBdVLOKFNJw0eI31SDQ/CNcQgb+uqWfAIuPn
         2Xrza5xd5uAprOxjshM+gyPYy659djIogEFnuluToMsD7c6HK05U3GLXuyj7YmoSgxDQ
         4wNnLL7G3Qfpp7/5C32c9PII1l2z5PL8S/6UQ/LLCO0jznElCJoEfBakPkrs7b7cHagJ
         SjgHyOF/Q3UDubLdd8lu3HQ+Fa+gF7WA3AkJbqYy+lrli8k8MwmHvjntdVLeDwvcp3ZG
         AAyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:ironport-sdr:ironport-sdr;
        bh=vO8rgeEqpvyMfZqdytzKW1y/y5Z2DOJLFwcodpBYI6s=;
        b=lu5hC+aWgHENwy50AL0WVEvzdd4Pw/SU80At8SwlxTFeqKr/tTeamBRagJccnEAeJb
         UR+Y+JgUjfYX2H4Gd2gc7A0OWGztXewtQ/ge2b2pGNRkIIYm5+sRfPPenibaQBw+dtVI
         guvi01Po4H9vXdE0zm/Fy+CR3/al5Ci1ePnPmbHaXkwViSDpDxwA9tRqfbY+DZeFoh6v
         8eZ/Ifv1r72RtuLAMOyE+WpGExCZx6rkys7M9jJWfeVC4POadrgJhcvxHWEZrA/nBFye
         h7rTOCTnLgaQHsb5eyWngGVQwAZQ5ngpHPpYxLgh0srj5iJG1syt7K1yGkn8bqaEtssp
         CA2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id z185si1639174pgd.4.2020.04.17.10.37.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 17 Apr 2020 10:37:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: ovd0Vrts9wQh0oUgAiSSh5xPzcUWhrmjoIC9TjFZe0t6dZR6ER4yogU9AUkS+pg3jPt6wfjqv0
 ix8I9M2fi51A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Apr 2020 10:37:24 -0700
IronPort-SDR: 26xVNKNiEAJNnL8KKAqXKW3nT6YBkIVhbs8R0KKeX0GlyqoSqptDsMEwoEayFkav+QKSqFc9Yl
 5B64JVGLK4yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,395,1580803200"; 
   d="scan'208";a="272489088"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by orsmga002.jf.intel.com with ESMTP; 17 Apr 2020 10:37:23 -0700
Subject: [PATCH] ntb: intel: Add Icelake (gen4) support for Intel NTB
From: Dave Jiang <dave.jiang@intel.com>
To: jdmason@kudzu.us, allenbh@gmail.com
Cc: linux-ntb@googlegroups.com
Date: Fri, 17 Apr 2020 10:37:23 -0700
Message-ID: <158714504371.27280.10594517087354051107.stgit@djiang5-desk3.ch.intel.com>
User-Agent: StGit/unknown-version
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 134.134.136.126 as
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

Adding 4th generation Intel NTB support bits. There are a lot of common
parts that the gen4 NTB has with gen3 NTB on Skylake. The commonalities are
reused in gen4 Icelake NTB.

Signed-off-by: Dave Jiang <dave.jiang@intel.com>
---
 drivers/ntb/hw/intel/Makefile       |    2 
 drivers/ntb/hw/intel/ntb_hw_gen1.c  |   45 ++-
 drivers/ntb/hw/intel/ntb_hw_gen3.c  |   13 -
 drivers/ntb/hw/intel/ntb_hw_gen3.h  |    8 +
 drivers/ntb/hw/intel/ntb_hw_gen4.c  |  500 +++++++++++++++++++++++++++++++++++
 drivers/ntb/hw/intel/ntb_hw_gen4.h  |   87 ++++++
 drivers/ntb/hw/intel/ntb_hw_intel.h |   12 +
 7 files changed, 640 insertions(+), 27 deletions(-)
 create mode 100644 drivers/ntb/hw/intel/ntb_hw_gen4.c
 create mode 100644 drivers/ntb/hw/intel/ntb_hw_gen4.h

diff --git a/drivers/ntb/hw/intel/Makefile b/drivers/ntb/hw/intel/Makefile
index 60ec8a773eea..f80da0ba15b2 100644
--- a/drivers/ntb/hw/intel/Makefile
+++ b/drivers/ntb/hw/intel/Makefile
@@ -1,3 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_NTB_INTEL) += ntb_hw_intel.o
-ntb_hw_intel-y := ntb_hw_gen1.o ntb_hw_gen3.o
+ntb_hw_intel-y := ntb_hw_gen1.o ntb_hw_gen3.o ntb_hw_gen4.o
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen1.c b/drivers/ntb/hw/intel/ntb_hw_gen1.c
index bb57ec239029..cae70e7fe5bd 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen1.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen1.c
@@ -60,6 +60,7 @@
 #include "ntb_hw_intel.h"
 #include "ntb_hw_gen1.h"
 #include "ntb_hw_gen3.h"
+#include "ntb_hw_gen4.h"
 
 #define NTB_NAME	"ntb_hw_intel"
 #define NTB_DESC	"Intel(R) PCI-E Non-Transparent Bridge Driver"
@@ -762,6 +763,8 @@ static ssize_t ndev_debugfs_read(struct file *filp, char __user *ubuf,
 		return ndev_ntb_debugfs_read(filp, ubuf, count, offp);
 	else if (pdev_is_gen3(ndev->ntb.pdev))
 		return ndev_ntb3_debugfs_read(filp, ubuf, count, offp);
+	else if (pdev_is_gen4(ndev->ntb.pdev))
+		return ndev_ntb4_debugfs_read(filp, ubuf, count, offp);
 
 	return -ENXIO;
 }
@@ -1858,16 +1861,15 @@ static int intel_ntb_pci_probe(struct pci_dev *pdev,
 	int rc, node;
 
 	node = dev_to_node(&pdev->dev);
+	ndev = kzalloc_node(sizeof(*ndev), GFP_KERNEL, node);
+	if (!ndev) {
+		rc = -ENOMEM;
+		goto err_ndev;
+	}
 
-	if (pdev_is_gen1(pdev)) {
-		ndev = kzalloc_node(sizeof(*ndev), GFP_KERNEL, node);
-		if (!ndev) {
-			rc = -ENOMEM;
-			goto err_ndev;
-		}
-
-		ndev_init_struct(ndev, pdev);
+	ndev_init_struct(ndev, pdev);
 
+	if (pdev_is_gen1(pdev)) {
 		rc = intel_ntb_init_pci(ndev, pdev);
 		if (rc)
 			goto err_init_pci;
@@ -1875,17 +1877,8 @@ static int intel_ntb_pci_probe(struct pci_dev *pdev,
 		rc = xeon_init_dev(ndev);
 		if (rc)
 			goto err_init_dev;
-
 	} else if (pdev_is_gen3(pdev)) {
-		ndev = kzalloc_node(sizeof(*ndev), GFP_KERNEL, node);
-		if (!ndev) {
-			rc = -ENOMEM;
-			goto err_ndev;
-		}
-
-		ndev_init_struct(ndev, pdev);
 		ndev->ntb.ops = &intel_ntb3_ops;
-
 		rc = intel_ntb_init_pci(ndev, pdev);
 		if (rc)
 			goto err_init_pci;
@@ -1893,7 +1886,15 @@ static int intel_ntb_pci_probe(struct pci_dev *pdev,
 		rc = gen3_init_dev(ndev);
 		if (rc)
 			goto err_init_dev;
+	} else if (pdev_is_gen4(pdev)) {
+		ndev->ntb.ops = &intel_ntb4_ops;
+		rc = intel_ntb_init_pci(ndev, pdev);
+		if (rc)
+			goto err_init_pci;
 
+		rc = gen4_init_dev(ndev);
+		if (rc)
+			goto err_init_dev;
 	} else {
 		rc = -EINVAL;
 		goto err_ndev;
@@ -1915,7 +1916,7 @@ static int intel_ntb_pci_probe(struct pci_dev *pdev,
 
 err_register:
 	ndev_deinit_debugfs(ndev);
-	if (pdev_is_gen1(pdev) || pdev_is_gen3(pdev))
+	if (pdev_is_gen1(pdev) || pdev_is_gen3(pdev) || pdev_is_gen4(pdev))
 		xeon_deinit_dev(ndev);
 err_init_dev:
 	intel_ntb_deinit_pci(ndev);
@@ -1931,7 +1932,7 @@ static void intel_ntb_pci_remove(struct pci_dev *pdev)
 
 	ntb_unregister_device(&ndev->ntb);
 	ndev_deinit_debugfs(ndev);
-	if (pdev_is_gen1(pdev) || pdev_is_gen3(pdev))
+	if (pdev_is_gen1(pdev) || pdev_is_gen3(pdev) || pdev_is_gen4(pdev))
 		xeon_deinit_dev(ndev);
 	intel_ntb_deinit_pci(ndev);
 	kfree(ndev);
@@ -2036,6 +2037,7 @@ static const struct file_operations intel_ntb_debugfs_info = {
 };
 
 static const struct pci_device_id intel_ntb_pci_tbl[] = {
+	/* GEN1 */
 	{PCI_VDEVICE(INTEL, PCI_DEVICE_ID_INTEL_NTB_B2B_JSF)},
 	{PCI_VDEVICE(INTEL, PCI_DEVICE_ID_INTEL_NTB_B2B_SNB)},
 	{PCI_VDEVICE(INTEL, PCI_DEVICE_ID_INTEL_NTB_B2B_IVT)},
@@ -2051,7 +2053,12 @@ static const struct pci_device_id intel_ntb_pci_tbl[] = {
 	{PCI_VDEVICE(INTEL, PCI_DEVICE_ID_INTEL_NTB_SS_IVT)},
 	{PCI_VDEVICE(INTEL, PCI_DEVICE_ID_INTEL_NTB_SS_HSX)},
 	{PCI_VDEVICE(INTEL, PCI_DEVICE_ID_INTEL_NTB_SS_BDX)},
+
+	/* GEN3 */
 	{PCI_VDEVICE(INTEL, PCI_DEVICE_ID_INTEL_NTB_B2B_SKX)},
+
+	/* GEN4 */
+	{PCI_VDEVICE(INTEL, PCI_DEVICE_ID_INTEL_NTB_B2B_ICX)},
 	{0}
 };
 MODULE_DEVICE_TABLE(pci, intel_ntb_pci_tbl);
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen3.c b/drivers/ntb/hw/intel/ntb_hw_gen3.c
index c3397160db7f..ffcfc3e02c35 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen3.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen3.c
@@ -415,9 +415,8 @@ ssize_t ndev_ntb3_debugfs_read(struct file *filp, char __user *ubuf,
 	return ret;
 }
 
-static int intel_ntb3_link_enable(struct ntb_dev *ntb,
-				  enum ntb_speed max_speed,
-				  enum ntb_width max_width)
+int intel_ntb3_link_enable(struct ntb_dev *ntb, enum ntb_speed max_speed,
+		enum ntb_width max_width)
 {
 	struct intel_ntb_dev *ndev;
 	u32 ntb_ctl;
@@ -532,7 +531,7 @@ static int intel_ntb3_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
 	return 0;
 }
 
-static int intel_ntb3_peer_db_addr(struct ntb_dev *ntb, phys_addr_t *db_addr,
+int intel_ntb3_peer_db_addr(struct ntb_dev *ntb, phys_addr_t *db_addr,
 				   resource_size_t *db_size,
 				   u64 *db_data, int db_bit)
 {
@@ -563,7 +562,7 @@ static int intel_ntb3_peer_db_addr(struct ntb_dev *ntb, phys_addr_t *db_addr,
 	return 0;
 }
 
-static int intel_ntb3_peer_db_set(struct ntb_dev *ntb, u64 db_bits)
+int intel_ntb3_peer_db_set(struct ntb_dev *ntb, u64 db_bits)
 {
 	struct intel_ntb_dev *ndev = ntb_ndev(ntb);
 	int bit;
@@ -581,7 +580,7 @@ static int intel_ntb3_peer_db_set(struct ntb_dev *ntb, u64 db_bits)
 	return 0;
 }
 
-static u64 intel_ntb3_db_read(struct ntb_dev *ntb)
+u64 intel_ntb3_db_read(struct ntb_dev *ntb)
 {
 	struct intel_ntb_dev *ndev = ntb_ndev(ntb);
 
@@ -590,7 +589,7 @@ static u64 intel_ntb3_db_read(struct ntb_dev *ntb)
 			    ndev->self_reg->db_clear);
 }
 
-static int intel_ntb3_db_clear(struct ntb_dev *ntb, u64 db_bits)
+int intel_ntb3_db_clear(struct ntb_dev *ntb, u64 db_bits)
 {
 	struct intel_ntb_dev *ndev = ntb_ndev(ntb);
 
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen3.h b/drivers/ntb/hw/intel/ntb_hw_gen3.h
index 75fb86ca27bb..2bc5d8356045 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen3.h
+++ b/drivers/ntb/hw/intel/ntb_hw_gen3.h
@@ -104,6 +104,14 @@ static inline void gen3_db_iowrite(u64 bits, void __iomem *mmio)
 ssize_t ndev_ntb3_debugfs_read(struct file *filp, char __user *ubuf,
 				      size_t count, loff_t *offp);
 int gen3_init_dev(struct intel_ntb_dev *ndev);
+int intel_ntb3_link_enable(struct ntb_dev *ntb, enum ntb_speed max_speed,
+		enum ntb_width max_width);
+u64 intel_ntb3_db_read(struct ntb_dev *ntb);
+int intel_ntb3_db_clear(struct ntb_dev *ntb, u64 db_bits);
+int intel_ntb3_peer_db_set(struct ntb_dev *ntb, u64 db_bits);
+int intel_ntb3_peer_db_addr(struct ntb_dev *ntb, phys_addr_t *db_addr,
+				resource_size_t *db_size,
+				u64 *db_data, int db_bit);
 
 extern const struct ntb_dev_ops intel_ntb3_ops;
 
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.c b/drivers/ntb/hw/intel/ntb_hw_gen4.c
new file mode 100644
index 000000000000..aab614099d34
--- /dev/null
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.c
@@ -0,0 +1,500 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+/* Copyright(c) 2020 Intel Corporation. All rights reserved. */
+#include <linux/debugfs.h>
+#include <linux/delay.h>
+#include <linux/init.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/pci.h>
+#include <linux/random.h>
+#include <linux/slab.h>
+#include <linux/ntb.h>
+#include <linux/log2.h>
+
+#include "ntb_hw_intel.h"
+#include "ntb_hw_gen1.h"
+#include "ntb_hw_gen3.h"
+#include "ntb_hw_gen4.h"
+
+static int gen4_poll_link(struct intel_ntb_dev *ndev);
+static int gen4_link_is_up(struct intel_ntb_dev *ndev);
+
+static const struct intel_ntb_reg gen4_reg = {
+	.poll_link		= gen4_poll_link,
+	.link_is_up		= gen4_link_is_up,
+	.db_ioread		= gen3_db_ioread,
+	.db_iowrite		= gen3_db_iowrite,
+	.db_size		= sizeof(u32),
+	.ntb_ctl		= GEN4_NTBCNTL_OFFSET,
+	.mw_bar			= {2, 4},
+};
+
+static const struct intel_ntb_alt_reg gen4_pri_reg = {
+	.db_clear		= GEN4_IM_INT_STATUS_OFFSET,
+	.db_mask		= GEN4_IM_INT_DISABLE_OFFSET,
+	.spad			= GEN4_IM_SPAD_OFFSET,
+};
+
+static const struct intel_ntb_xlat_reg gen4_sec_xlat = {
+	.bar2_limit		= GEN4_IM23XLMT_OFFSET,
+	.bar2_xlat		= GEN4_IM23XBASE_OFFSET,
+	.bar2_idx		= GEN4_IM23XBASEIDX_OFFSET,
+};
+
+static const struct intel_ntb_alt_reg gen4_b2b_reg = {
+	.db_bell		= GEN4_IM_DOORBELL_OFFSET,
+	.spad			= GEN4_EM_SPAD_OFFSET,
+};
+
+static int gen4_poll_link(struct intel_ntb_dev *ndev)
+{
+	u16 reg_val;
+
+	/*
+	 * We need to write to DLLSCS bit in the SLOTSTS before we
+	 * can clear the hardware link interrupt on ICX NTB.
+	 */
+	iowrite16(GEN4_SLOTSTS_DLLSCS, ndev->self_mmio + GEN4_SLOTSTS);
+	ndev->reg->db_iowrite(ndev->db_link_mask,
+			      ndev->self_mmio +
+			      ndev->self_reg->db_clear);
+
+	reg_val = ioread16(ndev->self_mmio + GEN4_LINK_STATUS_OFFSET);
+	if (reg_val == ndev->lnk_sta)
+		return 0;
+
+	ndev->lnk_sta = reg_val;
+
+	return 1;
+}
+
+static int gen4_link_is_up(struct intel_ntb_dev *ndev)
+{
+	return NTB_LNK_STA_ACTIVE(ndev->lnk_sta);
+}
+
+static int gen4_init_isr(struct intel_ntb_dev *ndev)
+{
+	int i;
+
+	/*
+	 * The MSIX vectors and the interrupt status bits are not lined up
+	 * on Gen3 (Skylake) and Gen4. By default the link status bit is bit
+	 * 32, however it is by default MSIX vector0. We need to fixup to
+	 * line them up. The vectors at reset is 1-32,0. We need to reprogram
+	 * to 0-32.
+	 */
+	for (i = 0; i < GEN4_DB_MSIX_VECTOR_COUNT; i++)
+		iowrite8(i, ndev->self_mmio + GEN4_INTVEC_OFFSET + i);
+
+	return ndev_init_isr(ndev, GEN4_DB_MSIX_VECTOR_COUNT,
+			     GEN4_DB_MSIX_VECTOR_COUNT,
+			     GEN4_DB_MSIX_VECTOR_SHIFT,
+			     GEN4_DB_TOTAL_SHIFT);
+}
+
+static int gen4_setup_b2b_mw(struct intel_ntb_dev *ndev,
+			    const struct intel_b2b_addr *addr,
+			    const struct intel_b2b_addr *peer_addr)
+{
+	struct pci_dev *pdev;
+	void __iomem *mmio;
+	phys_addr_t bar_addr;
+
+	pdev = ndev->ntb.pdev;
+	mmio = ndev->self_mmio;
+
+	/* setup incoming bar limits == base addrs (zero length windows) */
+	bar_addr = addr->bar2_addr64;
+	iowrite64(bar_addr, mmio + GEN4_IM23XLMT_OFFSET);
+	bar_addr = ioread64(mmio + GEN4_IM23XLMT_OFFSET);
+	dev_dbg(&pdev->dev, "IM23XLMT %#018llx\n", bar_addr);
+
+	bar_addr = addr->bar4_addr64;
+	iowrite64(bar_addr, mmio + GEN4_IM45XLMT_OFFSET);
+	bar_addr = ioread64(mmio + GEN4_IM45XLMT_OFFSET);
+	dev_dbg(&pdev->dev, "IM45XLMT %#018llx\n", bar_addr);
+
+	/* zero incoming translation addrs */
+	iowrite64(0, mmio + GEN4_IM23XBASE_OFFSET);
+	iowrite64(0, mmio + GEN4_IM45XBASE_OFFSET);
+
+	ndev->peer_mmio = ndev->self_mmio;
+
+	return 0;
+}
+
+static int gen4_init_ntb(struct intel_ntb_dev *ndev)
+{
+	int rc;
+
+
+	ndev->mw_count = XEON_MW_COUNT;
+	ndev->spad_count = GEN4_SPAD_COUNT;
+	ndev->db_count = GEN4_DB_COUNT;
+	ndev->db_link_mask = GEN4_DB_LINK_BIT;
+
+	ndev->self_reg = &gen4_pri_reg;
+	ndev->xlat_reg = &gen4_sec_xlat;
+	ndev->peer_reg = &gen4_b2b_reg;
+
+	if (ndev->ntb.topo == NTB_TOPO_B2B_USD)
+		rc = gen4_setup_b2b_mw(ndev, &xeon_b2b_dsd_addr,
+				&xeon_b2b_usd_addr);
+	else
+		rc = gen4_setup_b2b_mw(ndev, &xeon_b2b_usd_addr,
+				&xeon_b2b_dsd_addr);
+	if (rc)
+		return rc;
+
+	ndev->db_valid_mask = BIT_ULL(ndev->db_count) - 1;
+
+	ndev->reg->db_iowrite(ndev->db_valid_mask,
+			      ndev->self_mmio +
+			      ndev->self_reg->db_mask);
+
+	return 0;
+}
+
+static enum ntb_topo gen4_ppd_topo(struct intel_ntb_dev *ndev, u32 ppd)
+{
+	switch (ppd & GEN4_PPD_TOPO_MASK) {
+	case GEN4_PPD_TOPO_B2B_USD:
+		return NTB_TOPO_B2B_USD;
+	case GEN4_PPD_TOPO_B2B_DSD:
+		return NTB_TOPO_B2B_DSD;
+	}
+
+	return NTB_TOPO_NONE;
+}
+
+int gen4_init_dev(struct intel_ntb_dev *ndev)
+{
+	struct pci_dev *pdev = ndev->ntb.pdev;
+	u32 ppd1/*, ppd0*/;
+	u16 lnkctl;
+	int rc;
+
+	ndev->reg = &gen4_reg;
+
+	ppd1 = ioread32(ndev->self_mmio + GEN4_PPD1_OFFSET);
+	ndev->ntb.topo = gen4_ppd_topo(ndev, ppd1);
+	dev_dbg(&pdev->dev, "ppd %#x topo %s\n", ppd1,
+		ntb_topo_string(ndev->ntb.topo));
+	if (ndev->ntb.topo == NTB_TOPO_NONE)
+		return -EINVAL;
+
+	rc = gen4_init_ntb(ndev);
+	if (rc)
+		return rc;
+
+	/* init link setup */
+	lnkctl = ioread16(ndev->self_mmio + GEN4_LINK_CTRL_OFFSET);
+	lnkctl |= GEN4_LINK_CTRL_LINK_DISABLE;
+	iowrite16(lnkctl, ndev->self_mmio + GEN4_LINK_CTRL_OFFSET);
+
+	return gen4_init_isr(ndev);
+}
+
+ssize_t ndev_ntb4_debugfs_read(struct file *filp, char __user *ubuf,
+				      size_t count, loff_t *offp)
+{
+	struct intel_ntb_dev *ndev;
+	void __iomem *mmio;
+	char *buf;
+	size_t buf_size;
+	ssize_t ret, off;
+	union { u64 v64; u32 v32; u16 v16; } u;
+
+	ndev = filp->private_data;
+	mmio = ndev->self_mmio;
+
+	buf_size = min(count, 0x800ul);
+
+	buf = kmalloc(buf_size, GFP_KERNEL);
+	if (!buf)
+		return -ENOMEM;
+
+	off = 0;
+
+	off += scnprintf(buf + off, buf_size - off,
+			 "NTB Device Information:\n");
+
+	off += scnprintf(buf + off, buf_size - off,
+			 "Connection Topology -\t%s\n",
+			 ntb_topo_string(ndev->ntb.topo));
+
+	off += scnprintf(buf + off, buf_size - off,
+			 "NTB CTL -\t\t%#06x\n", ndev->ntb_ctl);
+	off += scnprintf(buf + off, buf_size - off,
+			 "LNK STA (cached) -\t\t%#06x\n", ndev->lnk_sta);
+
+	if (!ndev->reg->link_is_up(ndev))
+		off += scnprintf(buf + off, buf_size - off,
+				 "Link Status -\t\tDown\n");
+	else {
+		off += scnprintf(buf + off, buf_size - off,
+				 "Link Status -\t\tUp\n");
+		off += scnprintf(buf + off, buf_size - off,
+				 "Link Speed -\t\tPCI-E Gen %u\n",
+				 NTB_LNK_STA_SPEED(ndev->lnk_sta));
+		off += scnprintf(buf + off, buf_size - off,
+				 "Link Width -\t\tx%u\n",
+				 NTB_LNK_STA_WIDTH(ndev->lnk_sta));
+	}
+
+	off += scnprintf(buf + off, buf_size - off,
+			 "Memory Window Count -\t%u\n", ndev->mw_count);
+	off += scnprintf(buf + off, buf_size - off,
+			 "Scratchpad Count -\t%u\n", ndev->spad_count);
+	off += scnprintf(buf + off, buf_size - off,
+			 "Doorbell Count -\t%u\n", ndev->db_count);
+	off += scnprintf(buf + off, buf_size - off,
+			 "Doorbell Vector Count -\t%u\n", ndev->db_vec_count);
+	off += scnprintf(buf + off, buf_size - off,
+			 "Doorbell Vector Shift -\t%u\n", ndev->db_vec_shift);
+
+	off += scnprintf(buf + off, buf_size - off,
+			 "Doorbell Valid Mask -\t%#llx\n", ndev->db_valid_mask);
+	off += scnprintf(buf + off, buf_size - off,
+			 "Doorbell Link Mask -\t%#llx\n", ndev->db_link_mask);
+	off += scnprintf(buf + off, buf_size - off,
+			 "Doorbell Mask Cached -\t%#llx\n", ndev->db_mask);
+
+	u.v64 = ndev_db_read(ndev, mmio + ndev->self_reg->db_mask);
+	off += scnprintf(buf + off, buf_size - off,
+			 "Doorbell Mask -\t\t%#llx\n", u.v64);
+
+	off += scnprintf(buf + off, buf_size - off,
+			 "\nNTB Incoming XLAT:\n");
+
+	u.v64 = ioread64(mmio + GEN4_IM23XBASE_OFFSET);
+	off += scnprintf(buf + off, buf_size - off,
+			 "IM23XBASE -\t\t%#018llx\n", u.v64);
+
+	u.v64 = ioread64(mmio + GEN4_IM45XBASE_OFFSET);
+	off += scnprintf(buf + off, buf_size - off,
+			 "IM45XBASE -\t\t%#018llx\n", u.v64);
+
+	u.v64 = ioread64(mmio + GEN4_IM23XLMT_OFFSET);
+	off += scnprintf(buf + off, buf_size - off,
+			 "IM23XLMT -\t\t\t%#018llx\n", u.v64);
+
+	u.v64 = ioread64(mmio + GEN4_IM45XLMT_OFFSET);
+	off += scnprintf(buf + off, buf_size - off,
+			 "IM45XLMT -\t\t\t%#018llx\n", u.v64);
+
+	off += scnprintf(buf + off, buf_size - off,
+			 "\nNTB Statistics:\n");
+
+	off += scnprintf(buf + off, buf_size - off,
+			 "\nNTB Hardware Errors:\n");
+
+	if (!pci_read_config_word(ndev->ntb.pdev,
+				  GEN4_DEVSTS_OFFSET, &u.v16))
+		off += scnprintf(buf + off, buf_size - off,
+				"DEVSTS -\t\t%#06x\n", u.v16);
+
+	u.v16 = ioread16(mmio + GEN4_LINK_STATUS_OFFSET);
+	off += scnprintf(buf + off, buf_size - off,
+			"LNKSTS -\t\t%#06x\n", u.v16);
+
+	if (!pci_read_config_dword(ndev->ntb.pdev,
+				   GEN4_UNCERRSTS_OFFSET, &u.v32))
+		off += scnprintf(buf + off, buf_size - off,
+				 "UNCERRSTS -\t\t%#06x\n", u.v32);
+
+	if (!pci_read_config_dword(ndev->ntb.pdev,
+				   GEN4_CORERRSTS_OFFSET, &u.v32))
+		off += scnprintf(buf + off, buf_size - off,
+				 "CORERRSTS -\t\t%#06x\n", u.v32);
+
+	ret = simple_read_from_buffer(ubuf, count, offp, buf, off);
+	kfree(buf);
+	return ret;
+}
+
+static int intel_ntb4_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
+				   dma_addr_t addr, resource_size_t size)
+{
+	struct intel_ntb_dev *ndev = ntb_ndev(ntb);
+	unsigned long xlat_reg, limit_reg, idx_reg;
+	unsigned short base_idx, reg_val16;
+	resource_size_t bar_size, mw_size;
+	void __iomem *mmio;
+	u64 base, limit, reg_val;
+	int bar;
+
+	if (pidx != NTB_DEF_PEER_IDX)
+		return -EINVAL;
+
+	if (idx >= ndev->b2b_idx && !ndev->b2b_off)
+		idx += 1;
+
+	bar = ndev_mw_to_bar(ndev, idx);
+	if (bar < 0)
+		return bar;
+
+	bar_size = pci_resource_len(ndev->ntb.pdev, bar);
+
+	if (idx == ndev->b2b_idx)
+		mw_size = bar_size - ndev->b2b_off;
+	else
+		mw_size = bar_size;
+
+	/* hardware requires that addr is aligned to bar size */
+	if (addr & (bar_size - 1))
+		return -EINVAL;
+
+	/* make sure the range fits in the usable mw size */
+	if (size > mw_size)
+		return -EINVAL;
+
+	mmio = ndev->self_mmio;
+	xlat_reg = ndev->xlat_reg->bar2_xlat + (idx * 0x10);
+	limit_reg = ndev->xlat_reg->bar2_limit + (idx * 0x10);
+	idx_reg = ndev->xlat_reg->bar2_idx + (idx * 0x2);
+	base = pci_resource_start(ndev->ntb.pdev, bar);
+
+	/* Set the limit if supported, if size is not mw_size */
+	if (limit_reg && size != mw_size) {
+		limit = base + size;
+		base_idx = __ilog2_u64(size);
+	} else {
+		limit = base + mw_size;
+		base_idx = __ilog2_u64(mw_size);
+	}
+
+
+	/* set and verify setting the translation address */
+	iowrite64(addr, mmio + xlat_reg);
+	reg_val = ioread64(mmio + xlat_reg);
+	if (reg_val != addr) {
+		iowrite64(0, mmio + xlat_reg);
+		return -EIO;
+	}
+
+	dev_dbg(&ntb->pdev->dev, "BAR %d IMXBASE: %#Lx\n", bar, reg_val);
+
+	/* set and verify setting the limit */
+	iowrite64(limit, mmio + limit_reg);
+	reg_val = ioread64(mmio + limit_reg);
+	if (reg_val != limit) {
+		iowrite64(base, mmio + limit_reg);
+		iowrite64(0, mmio + xlat_reg);
+		return -EIO;
+	}
+
+	dev_dbg(&ntb->pdev->dev, "BAR %d IMXLMT: %#Lx\n", bar, reg_val);
+
+	iowrite16(base_idx, mmio + idx_reg);
+	reg_val16 = ioread16(mmio + idx_reg);
+	if (reg_val16 != base_idx) {
+		iowrite64(base, mmio + limit_reg);
+		iowrite64(0, mmio + xlat_reg);
+		iowrite16(0, mmio + idx_reg);
+		return -EIO;
+	}
+
+	dev_dbg(&ntb->pdev->dev, "BAR %d IMBASEIDX: %#x\n", bar, reg_val16);
+
+	return 0;
+}
+
+static int intel_ntb4_link_enable(struct ntb_dev *ntb,
+		enum ntb_speed max_speed, enum ntb_width max_width)
+{
+	struct intel_ntb_dev *ndev;
+	u32 ntb_ctl, ppd0;
+	u16 lnkctl;
+
+	ndev = container_of(ntb, struct intel_ntb_dev, ntb);
+
+	dev_dbg(&ntb->pdev->dev,
+			"Enabling link with max_speed %d max_width %d\n",
+			max_speed, max_width);
+
+	if (max_speed != NTB_SPEED_AUTO)
+		dev_dbg(&ntb->pdev->dev,
+				"ignoring max_speed %d\n", max_speed);
+	if (max_width != NTB_WIDTH_AUTO)
+		dev_dbg(&ntb->pdev->dev,
+				"ignoring max_width %d\n", max_width);
+
+	ntb_ctl = NTB_CTL_E2I_BAR23_SNOOP | NTB_CTL_I2E_BAR23_SNOOP;
+	ntb_ctl |= NTB_CTL_E2I_BAR45_SNOOP | NTB_CTL_I2E_BAR45_SNOOP;
+	iowrite32(ntb_ctl, ndev->self_mmio + ndev->reg->ntb_ctl);
+
+	lnkctl = ioread16(ndev->self_mmio + GEN4_LINK_CTRL_OFFSET);
+	lnkctl &= ~GEN4_LINK_CTRL_LINK_DISABLE;
+	iowrite16(lnkctl, ndev->self_mmio + GEN4_LINK_CTRL_OFFSET);
+
+	/* start link training in PPD0 */
+	ppd0 = ioread32(ndev->self_mmio + GEN4_PPD0_OFFSET);
+	ppd0 |= GEN4_PPD_LINKTRN;
+	iowrite32(ppd0, ndev->self_mmio + GEN4_PPD0_OFFSET);
+
+	/* make sure link training has started */
+	ppd0 = ioread32(ndev->self_mmio + GEN4_PPD0_OFFSET);
+	if (!(ppd0 & GEN4_PPD_LINKTRN)) {
+		dev_warn(&ntb->pdev->dev, "Link is not training\n");
+		return -ENXIO;
+	}
+
+	ndev->dev_up = 1;
+
+	return 0;
+}
+
+int intel_ntb4_link_disable(struct ntb_dev *ntb)
+{
+	struct intel_ntb_dev *ndev;
+	u32 ntb_cntl;
+	u16 lnkctl;
+
+	ndev = container_of(ntb, struct intel_ntb_dev, ntb);
+
+	dev_dbg(&ntb->pdev->dev, "Disabling link\n");
+
+	/* clear the snoop bits */
+	ntb_cntl = ioread32(ndev->self_mmio + ndev->reg->ntb_ctl);
+	ntb_cntl &= ~(NTB_CTL_E2I_BAR23_SNOOP | NTB_CTL_I2E_BAR23_SNOOP);
+	ntb_cntl &= ~(NTB_CTL_E2I_BAR45_SNOOP | NTB_CTL_I2E_BAR45_SNOOP);
+	iowrite32(ntb_cntl, ndev->self_mmio + ndev->reg->ntb_ctl);
+
+	lnkctl = ioread16(ndev->self_mmio + GEN4_LINK_CTRL_OFFSET);
+	lnkctl |= GEN4_LINK_CTRL_LINK_DISABLE;
+	iowrite16(lnkctl, ndev->self_mmio + GEN4_LINK_CTRL_OFFSET);
+
+	ndev->dev_up = 0;
+
+	return 0;
+}
+
+const struct ntb_dev_ops intel_ntb4_ops = {
+	.mw_count		= intel_ntb_mw_count,
+	.mw_get_align		= intel_ntb_mw_get_align,
+	.mw_set_trans		= intel_ntb4_mw_set_trans,
+	.peer_mw_count		= intel_ntb_peer_mw_count,
+	.peer_mw_get_addr	= intel_ntb_peer_mw_get_addr,
+	.link_is_up		= intel_ntb_link_is_up,
+	.link_enable		= intel_ntb4_link_enable,
+	.link_disable		= intel_ntb4_link_disable,
+	.db_valid_mask		= intel_ntb_db_valid_mask,
+	.db_vector_count	= intel_ntb_db_vector_count,
+	.db_vector_mask		= intel_ntb_db_vector_mask,
+	.db_read		= intel_ntb3_db_read,
+	.db_clear		= intel_ntb3_db_clear,
+	.db_set_mask		= intel_ntb_db_set_mask,
+	.db_clear_mask		= intel_ntb_db_clear_mask,
+	.peer_db_addr		= intel_ntb3_peer_db_addr,
+	.peer_db_set		= intel_ntb3_peer_db_set,
+	.spad_is_unsafe		= intel_ntb_spad_is_unsafe,
+	.spad_count		= intel_ntb_spad_count,
+	.spad_read		= intel_ntb_spad_read,
+	.spad_write		= intel_ntb_spad_write,
+	.peer_spad_addr		= intel_ntb_peer_spad_addr,
+	.peer_spad_read		= intel_ntb_peer_spad_read,
+	.peer_spad_write	= intel_ntb_peer_spad_write,
+};
+
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.h b/drivers/ntb/hw/intel/ntb_hw_gen4.h
new file mode 100644
index 000000000000..7d7a82e8518d
--- /dev/null
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.h
@@ -0,0 +1,87 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)          */
+/* Copyright(c) 2020 Intel Corporation. All rights reserved.   */
+#ifndef _NTB_INTEL_GEN4_H_
+#define _NTB_INTEL_GEN4_H_
+
+#include "ntb_hw_intel.h"
+
+/* Intel Gen4 NTB hardware */
+/* PCIe config space */
+#define GEN4_IMBAR23SZ_OFFSET		0x00c4
+#define GEN4_IMBAR45SZ_OFFSET		0x00c5
+#define GEN4_EMBAR23SZ_OFFSET		0x00c6
+#define GEN4_EMBAR45SZ_OFFSET		0x00c7
+#define GEN4_DEVCTRL_OFFSET		0x0048
+#define GEN4_DEVSTS_OFFSET		0x004a
+#define GEN4_UNCERRSTS_OFFSET		0x0104
+#define GEN4_CORERRSTS_OFFSET		0x0110
+
+/* BAR0 MMIO */
+#define GEN4_NTBCNTL_OFFSET		0x0000
+#define GEN4_IM23XBASE_OFFSET		0x0010	/* IMBAR1XBASE */
+#define GEN4_IM23XLMT_OFFSET		0x0018  /* IMBAR1XLMT */
+#define GEN4_IM45XBASE_OFFSET		0x0020	/* IMBAR2XBASE */
+#define GEN4_IM45XLMT_OFFSET		0x0028  /* IMBAR2XLMT */
+#define GEN4_IM_INT_STATUS_OFFSET	0x0040
+#define GEN4_IM_INT_DISABLE_OFFSET	0x0048
+#define GEN4_INTVEC_OFFSET		0x0050  /* 0-32 vecs */
+#define GEN4_IM23XBASEIDX_OFFSET	0x0074
+#define GEN4_IM45XBASEIDX_OFFSET	0x0076
+#define GEN4_IM_SPAD_OFFSET		0x0080  /* 0-15 SPADs */
+#define GEN4_IM_SPAD_SEM_OFFSET		0x00c0	/* SPAD hw semaphore */
+#define GEN4_IM_SPAD_STICKY_OFFSET	0x00c4  /* sticky SPAD */
+#define GEN4_IM_DOORBELL_OFFSET		0x0100  /* 0-31 doorbells */
+#define GEN4_EM_SPAD_OFFSET		0x8080
+/* note, link status is now in MMIO and not config space for NTB */
+#define GEN4_LINK_CTRL_OFFSET		0xb050
+#define GEN4_LINK_STATUS_OFFSET		0xb052
+#define GEN4_PPD0_OFFSET		0xb0d4
+#define GEN4_PPD1_OFFSET		0xb4c0
+#define GEN4_LTSSMSTATEJMP		0xf040
+
+#define GEN4_PPD_CLEAR_TRN		0x0001
+#define GEN4_PPD_LINKTRN		0x0008
+#define GEN4_PPD_CONN_MASK		0x0300
+#define GEN4_PPD_CONN_B2B		0x0200
+#define GEN4_PPD_DEV_MASK		0x1000
+#define GEN4_PPD_DEV_DSD		0x1000
+#define GEN4_PPD_DEV_USD		0x0000
+#define GEN4_LINK_CTRL_LINK_DISABLE	0x0010
+
+#define GEN4_SLOTSTS			0xb05a
+#define GEN4_SLOTSTS_DLLSCS		0x100
+
+#define GEN4_PPD_TOPO_MASK	(GEN4_PPD_CONN_MASK | GEN4_PPD_DEV_MASK)
+#define GEN4_PPD_TOPO_B2B_USD	(GEN4_PPD_CONN_B2B | GEN4_PPD_DEV_USD)
+#define GEN4_PPD_TOPO_B2B_DSD	(GEN4_PPD_CONN_B2B | GEN4_PPD_DEV_DSD)
+
+#define GEN4_DB_COUNT			32
+#define GEN4_DB_LINK			32
+#define GEN4_DB_LINK_BIT		BIT_ULL(GEN4_DB_LINK)
+#define GEN4_DB_MSIX_VECTOR_COUNT	33
+#define GEN4_DB_MSIX_VECTOR_SHIFT	1
+#define GEN4_DB_TOTAL_SHIFT		33
+#define GEN4_SPAD_COUNT			16
+
+#define NTB_CTL_E2I_BAR23_SNOOP		0x000004
+#define NTB_CTL_E2I_BAR23_NOSNOOP	0x000008
+#define NTB_CTL_I2E_BAR23_SNOOP		0x000010
+#define NTB_CTL_I2E_BAR23_NOSNOOP	0x000020
+#define NTB_CTL_E2I_BAR45_SNOOP		0x000040
+#define NTB_CTL_E2I_BAR45_NOSNOO	0x000080
+#define NTB_CTL_I2E_BAR45_SNOOP		0x000100
+#define NTB_CTL_I2E_BAR45_NOSNOOP	0x000200
+#define NTB_CTL_BUSNO_DIS_INC		0x000400
+#define NTB_CTL_LINK_DOWN		0x010000
+
+#define NTB_SJC_FORCEDETECT		0x000004
+
+ssize_t ndev_ntb4_debugfs_read(struct file *filp, char __user *ubuf,
+				      size_t count, loff_t *offp);
+int gen4_init_dev(struct intel_ntb_dev *ndev);
+ssize_t ndev_ntb4_debugfs_read(struct file *filp, char __user *ubuf,
+				      size_t count, loff_t *offp);
+
+extern const struct ntb_dev_ops intel_ntb4_ops;
+
+#endif
diff --git a/drivers/ntb/hw/intel/ntb_hw_intel.h b/drivers/ntb/hw/intel/ntb_hw_intel.h
index e071e28bca3f..d61fcd91714b 100644
--- a/drivers/ntb/hw/intel/ntb_hw_intel.h
+++ b/drivers/ntb/hw/intel/ntb_hw_intel.h
@@ -72,6 +72,7 @@
 #define PCI_DEVICE_ID_INTEL_NTB_PS_BDX	0x6F0E
 #define PCI_DEVICE_ID_INTEL_NTB_SS_BDX	0x6F0F
 #define PCI_DEVICE_ID_INTEL_NTB_B2B_SKX	0x201C
+#define PCI_DEVICE_ID_INTEL_NTB_B2B_ICX	0x347e
 
 /* Ntb control and link status */
 #define NTB_CTL_CFG_LOCK		BIT(0)
@@ -120,6 +121,7 @@ struct intel_ntb_xlat_reg {
 	unsigned long			bar0_base;
 	unsigned long			bar2_xlat;
 	unsigned long			bar2_limit;
+	unsigned short			bar2_idx;
 };
 
 struct intel_b2b_addr {
@@ -182,6 +184,9 @@ struct intel_ntb_dev {
 
 	struct dentry			*debugfs_dir;
 	struct dentry			*debugfs_info;
+
+	/* gen4 entries */
+	int				dev_up;
 };
 
 #define ntb_ndev(__ntb) container_of(__ntb, struct intel_ntb_dev, ntb)
@@ -219,4 +224,11 @@ static inline int pdev_is_gen3(struct pci_dev *pdev)
 	return 0;
 }
 
+static inline int pdev_is_gen4(struct pci_dev *pdev)
+{
+	if (pdev->device == PCI_DEVICE_ID_INTEL_NTB_B2B_ICX)
+		return 1;
+
+	return 0;
+}
 #endif

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/158714504371.27280.10594517087354051107.stgit%40djiang5-desk3.ch.intel.com.

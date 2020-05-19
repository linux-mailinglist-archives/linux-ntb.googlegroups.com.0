Return-Path: <linux-ntb+bncBDXYVT6AR4MRBKO3SH3AKGQEXOOAZFA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 6723F1DA5AE
	for <lists+linux-ntb@lfdr.de>; Wed, 20 May 2020 01:37:14 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id c8sf1652882qtk.13
        for <lists+linux-ntb@lfdr.de>; Tue, 19 May 2020 16:37:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589931433; cv=pass;
        d=google.com; s=arc-20160816;
        b=wJfIBRd7i6PJvaGQZxx/MlXliOFm2VKHhG3VTsdI5a/5sfNxTPDFgJ9ffQjLwA36R2
         tOXFlPblOyItNlde9MGK2xAAC7JnsbakWsP/+ZL7ur3k5UlR+uQdglFlJJchCJLqiZRX
         AD4UJAEmFbAP7nXPuIClpjTGdCsxW58PSocIQN63nRLiqDqjSj0LBogOydJEYEVcH9Q5
         nCmj5RQZR5rG3LxhDZJqcr3wq37PbuFfy4hjeRVps1hJ6reeAduRKNyZ1Uf/ecWCfsoB
         lFHDnydhtQJVwFgEf7FVBgEu7oQohSgc7jN0UXhxIyP8rQxhlJ7Wq07qpiXCT2JTLXXS
         DZ6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :date:cc:to:from:subject:ironport-sdr:ironport-sdr:sender
         :dkim-signature;
        bh=pIP4dLzl/q9reTKw5kHzmCqhoZgU7hxwd6AySfK+BQE=;
        b=rUrhzQNMN1pFbA0MH2AYk57gLAu1Xr+S4FZYF5qnla13YiahM1BvIThj330AkGC/+y
         +xhd1orqosR0Fd5yNo1JYRPY2CBls7Pi52zskV4KL9LQ5rwMCz3VnAG3AKnSQfPAjysO
         UQGls4kebceLpYtfjK+BRr/BsJwfgP0CpclBsg2V2higjpO696f2792c/HlwLDwGXfdX
         9Snwl4S2K3SwSndqKrOaBCNJVwPaLdljiCyM95C8zDPw6kV+WHVvDyqMfOiGVlDlm75D
         s7E78PGf8L/esE+3q5NevD9Pzi/zgXs0+GojfZpYRjpSAcvhbXexg9JMXnzw92+r9MAQ
         Z6Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:subject:from:to:cc:date:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pIP4dLzl/q9reTKw5kHzmCqhoZgU7hxwd6AySfK+BQE=;
        b=b424DXCmFhpE+b2YKv2+ugbcj05TOrsxq0L+FkgWllvCXp6NlFBsMdRLu279OomhS/
         uGeJdw6YbBJ3nGrNbQqL+zOW625ikjnqbEalRJAKynH1MfaHH4ITbaq2Nk1/m8HVWqj9
         AnIcIEKMRCwacux/Ldqao0XmuJf4UXJWCDnF9ZNHe3rAS010KFKvxMpm7R5H7Db5rqY7
         MlkKxdtZ2rorr7toClM0DliULbzALVczpe/JymBqRbqYxogPLi2t1rQzL9YEHNNy3oNk
         9k7n0LB4IS/KTtddSswALvA9lcbAAYjHEeWXQBMb998MDzhzWLfFycsZfTf1Q7aVPutm
         8Vzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:subject:from:to
         :cc:date:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pIP4dLzl/q9reTKw5kHzmCqhoZgU7hxwd6AySfK+BQE=;
        b=ZtSX+PSFpoj3tcklsM9HEhJ6ExQoP0qxwTABxaWkcdFtGcAS+p9iQSy5fxL5fqIqrr
         wfRl7Yjsc1rAu/cGItpmnifW8UI/0EXJttr5dMSE4wgktkFQzy7TJFzb2SdXCDEEEQb0
         86ZrZ7BraAVBrbV6gw2xMP+M/2SgsDsQSwp4WzUYn01PD2fNSgMqlbplhzZWI2v7uy+z
         8oFDMwM3aXIQD53OnY1vfhkIiabZ9tBNkw895FZqfDbfCpZCY1ww1MOhd3taywdzijn7
         R+Vj3wenlWnQNksstPhK/Tme3KyMGAO6PDLl55YQC6JgvZbQAyOms4N0fChaLVUEQWuC
         q+yQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5314557z3eSYNnQzeuj4qhMqxtcOQjNoSv6zDqHpzM7ZBd77Bx6y
	/XpNw+7dngBNwvSZ4QyH2i4=
X-Google-Smtp-Source: ABdhPJwIUheJZTsy0D6jqgf0xkZHRbSt4hHnCBA64hB0t19BaTrrjqcaJ+dFMAQNHq4UEoVBR4HO+w==
X-Received: by 2002:a05:6214:3e4:: with SMTP id cf4mr2246787qvb.33.1589931433325;
        Tue, 19 May 2020 16:37:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:4b53:: with SMTP id e19ls644982qts.5.gmail; Tue, 19 May
 2020 16:37:13 -0700 (PDT)
X-Received: by 2002:aed:3242:: with SMTP id y60mr2611578qtd.127.1589931432950;
        Tue, 19 May 2020 16:37:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589931432; cv=none;
        d=google.com; s=arc-20160816;
        b=rnDvC/ip5iFlgbTFJGydPjLuidzZ4+ZvIiTaxrNsCNCN5oZG0oM2bcwddYvacKTWsM
         Ti4cIuV1r4XR+jHmb7l5JWdU5TkN7h1rpQW/H5IpCDf2xl+dZDqwgpGMZcvRbKaa4eY7
         SxsJAr2RUkLajPFnDFaxyCDyOOiUY92lCqVtZ8A4ovA+EO5wg92THbNBXXzjiAuObvFS
         Lz68WeVIQgRFCNuvV3DlU0OKkxFXRJPYSLuC75Gm48O3Vta2PKWJwEyrH8btDXyGnHkP
         fMPCs6ZYv0L83gHqsmH2J1U6xgZUleZA31Qvv3YcASErj7GIkRZblVnaOSFPcgovqqr1
         8ypA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:message-id:date
         :cc:to:from:subject:ironport-sdr:ironport-sdr;
        bh=XvZ++SXcr6QbRXyDiDcKPOA8vYV6Cn+jMvgtSxVK0w4=;
        b=ghe1hTBTqspuQY2MOfBD+hS5J7pr4E80Kl0KLWnN94BL1m/M3gKToWgB18ayAC2Bo3
         t3Ovb2Yh5K/tPwAlPb9iiA/oWOq3T3NSwn8iZStlNEBpq0vuRHsQ8gEeq017OCEAyo/G
         F7HEqUv2NULXYjUDXTWmdKIRltuVNCBDkPcGnUstqWv7fDqGjzl4FTKFrr0rrTgpnStb
         JcgWWAWayu72Vk3ZESTTViwkUwoIl4pzhWZIzjpOevC3qqwir5ch6mVpQiBa4zN0Gfeu
         PkjUX/VamTZTfvfsUvotgxIHGqtMFXaDi6jWtj4/SiOxu7W9nmJN3MTw3E2cPW8jsPSo
         0rgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=dave.jiang@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id n23si93087qtv.0.2020.05.19.16.37.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 May 2020 16:37:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.jiang@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: X6Of0k3O9HHfCSx4aa5jpzuzN4aPJAufx9JBnHmYSdiL0sZzE3aaVTW5GC0bEz75G0JLsezKJR
 2KfjQMZP+JRg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 19 May 2020 16:37:11 -0700
IronPort-SDR: +q0eh7BDDO7xd40iidmu5wNYNhC7PyCL1R60Ac17lOYV5RZUClSI6VLBWlxs3lbe0Gp6XCgK6y
 MUFX5FuzEF/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,411,1583222400"; 
   d="scan'208";a="373890032"
Received: from djiang5-desk3.ch.intel.com ([143.182.136.137])
  by fmsmga001.fm.intel.com with ESMTP; 19 May 2020 16:37:11 -0700
Subject: [PATCH] ntb: intel: add revision lockdown for Icelake NTB driver
From: Dave Jiang <dave.jiang@intel.com>
To: jdmason@kudzu.us
Cc: linux-ntb@googlegroups.com, allenbh@gmail.com
Date: Tue, 19 May 2020 16:37:11 -0700
Message-ID: <158993143119.41853.10657616792966099233.stgit@djiang5-desk3.ch.intel.com>
User-Agent: StGit/unknown-version
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: dave.jiang@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.jiang@intel.com designates 192.55.52.88 as
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

Add PCI device revision during probe to ensure that the driver only runs
on intended CPU steppings for Icelake.

Signed-off-by: Dave Jiang <dave.jiang@intel.com>
---
 drivers/ntb/hw/intel/ntb_hw_gen4.c |    6 ++++++
 drivers/ntb/hw/intel/ntb_hw_gen4.h |   13 +++++++++++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.c b/drivers/ntb/hw/intel/ntb_hw_gen4.c
index ed6574d8fcc6..dcbd6d3cf7ae 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen4.c
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.c
@@ -221,6 +221,12 @@ int gen4_init_dev(struct intel_ntb_dev *ndev)
 	u16 lnkctl;
 	int rc;
 
+	if (!pdev_is_ICX(pdev)) {
+		dev_warn(&pdev->dev,
+			 "Incorrect device revision: %d.\n", pdev->revision);
+		return -ENODEV;
+	}
+
 	ndev->reg = &gen4_reg;
 
 	ppd1 = ioread32(ndev->self_mmio + GEN4_PPD1_OFFSET);
diff --git a/drivers/ntb/hw/intel/ntb_hw_gen4.h b/drivers/ntb/hw/intel/ntb_hw_gen4.h
index 10f3ddf2ad30..c2ff5ed86d7d 100644
--- a/drivers/ntb/hw/intel/ntb_hw_gen4.h
+++ b/drivers/ntb/hw/intel/ntb_hw_gen4.h
@@ -46,6 +46,10 @@
 
 #include "ntb_hw_intel.h"
 
+/* Supported PCI device revision range for ICX */
+#define PCI_DEVICE_REVISION_ICX_MIN	0x2
+#define PCI_DEVICE_REVISION_ICX_MAX	0x7
+
 /* Intel Gen4 NTB hardware */
 /* PCIe config space */
 #define GEN4_IMBAR23SZ_OFFSET		0x00c4
@@ -125,4 +129,13 @@ ssize_t ndev_ntb4_debugfs_read(struct file *filp, char __user *ubuf,
 
 extern const struct ntb_dev_ops intel_ntb4_ops;
 
+static inline int pdev_is_ICX(struct pci_dev *pdev)
+{
+	if (pdev_is_gen4(pdev) &&
+	    pdev->revision >= PCI_DEVICE_REVISION_ICX_MIN &&
+	    pdev->revision <= PCI_DEVICE_REVISION_ICX_MAX)
+		return 1;
+	return 0;
+}
+
 #endif

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/158993143119.41853.10657616792966099233.stgit%40djiang5-desk3.ch.intel.com.

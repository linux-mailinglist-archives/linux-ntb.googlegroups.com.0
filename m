Return-Path: <linux-ntb+bncBCOOP4VF5IDRBDF26X2QKGQEYHQL32Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 138F61D33DB
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:00:30 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id u64sf18448517oie.22
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:00:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468428; cv=pass;
        d=google.com; s=arc-20160816;
        b=uB3w+4c19QN1U65Q1NOSoZeHEla/Ln28f2OIoHkYRJim5hLYOQDpOi0p0seMZsL45h
         o+ilDDcOk8WfiMFCsVYHMB5FaZpv4g37XD3QHYMj2eT/a9cSrKFKzOo67zNUA+CsIlr5
         Fi3ePlcs7Rfeog4C7734hZY98Cuq5C4MUahHbh7Ogw/fGzk/nCkeNVGVf2AvLWbCSY9a
         1GWE9fsDrAkenGCaYv5T1qDUm/D0MsCtrXy+1RlrMl5iALOI7hcnPUwpfRvo6Kt7TkEy
         WdlQcYzfA5P6kwdX9ahiQcwHzh0rDH8rLou8/jtSX6t6CQgCwnL+OILky2r+H9UDZwb4
         Bavg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=GQl80GZUY7XSXTmyhPevduYKQDPOfbp2ZPPWjZppGq4=;
        b=a8fRh+0g4SiqUbQOQNGGVMpXZwo6sgwDaFDfmlutEnfISjs/5OBSSLmEBnpIy4VGU7
         9X6CiLODcL2Gnzzt7fCFpQs0dE+nHF0ejrCiUPigqmJS66EFdrdD7Qa68xeZWkAb+cxj
         oGhXwlRP/MxwWFg4mYTxgFbWUx0AO5rv35EJBJhu3CKOL7lWN/5HfZmBGw24g3koQJve
         HeE5Zqu9+VoU8FURjsKG3KNUZpPys/efi3l0+5BwuCIhFPes+2JnR+odLa0BBXiPdFLj
         YM7en6j14Zrk8q86/eX+v2WXc2J2Pn1Za3sRpe5y0+r4YNioEB4odiwwhP7Ha5pOPPoy
         BV+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=yUS70p4V;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GQl80GZUY7XSXTmyhPevduYKQDPOfbp2ZPPWjZppGq4=;
        b=Xe8HYjSwNh0pA25CO/aTTJaAG93DS16J0LAbOUXk9eoLLoClJFa8tpJ3h0mM81omim
         WcevlD6zD++BpfPwgWrwo02963S6wuOoyKp5KYMl/L8G/7EzftuQMPE5rnroYl43DGxj
         oNUZDFRZayUzXrQrD2VNKaTz2kHaBK2QLSVU6BsDIOcu++ww78lgdKPGnfYoL7z/Ak68
         pYfoPKeAvXL31w3ll/Ldlofh4VoU0K4Xy76cRCYXkDt2vU/wBSZLESuTGbl8PDwY8HKV
         pExvffOPI2B59ZJflkFt1ZBjcE0QdsaOJ8sII0K7O3PYCJ3yGwpcqiUWxb9dJVHs3b6C
         5krQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GQl80GZUY7XSXTmyhPevduYKQDPOfbp2ZPPWjZppGq4=;
        b=T90YR/SjUzN4qfe1jBPVhk2mo8R6ArndpRmetMlhG0HPmYabHHrIDNDMQkgts9PWPs
         rIt8+CCG9PS6eE4oiiWtY2SUuBgamNH0QlgmJcHdPSNuQt4IKFxtMiO0uQj+i6AmO8aT
         yKOHMRtGK47jngXlbnzxL64dFt9/LZ1iYQnjJyEYIoSk1WoVHc1kxH7TnAYkGJPAX4j4
         zLWfeiZ5W6zLJ9jZ7R7f/LHmIVsgnXjh6jZqG0ceeXHRS3edR1lj5SDMMuFOMBD2/ji1
         bNVXyZFzPo4kovxd5yuJK3RIib9KQ1My1hgNXSzccV10Si6srnX4DweVaGKNNeTFEa1G
         hBHg==
X-Gm-Message-State: AOAM530JvpXdwOxWKrafCtT3Z/ViZZ0VQhcp4aDHjsmlc+OiD+jF2Fii
	tESehcJjtrgp1sM+T0H3Lco=
X-Google-Smtp-Source: ABdhPJzIWlr8+wALmPrOytd5A7G1be7QAeWHP+khnSnW+SWpCdDM8ucx7dQXWUzeNgp5ty2Cq+hDWQ==
X-Received: by 2002:a9d:65c7:: with SMTP id z7mr406246oth.347.1589468428537;
        Thu, 14 May 2020 08:00:28 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:524f:: with SMTP id g76ls921778oib.6.gmail; Thu, 14 May
 2020 08:00:28 -0700 (PDT)
X-Received: by 2002:aca:59c4:: with SMTP id n187mr32410103oib.1.1589468428244;
        Thu, 14 May 2020 08:00:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468428; cv=none;
        d=google.com; s=arc-20160816;
        b=DE8Ah5P6YGpY2SwsFV91BRzaOmIKVkfQ9wfEK4xBjOs2NptFSNEnSQELxfqsfJDxmW
         ul4THWQ26hrH7/INrMWobPul+yGs7eaxAyfsMlqFlMugkn+eSftiGWyfNIP7dnTyAx0h
         mXrlqVGq48eGfvohM4ShGS1x5nSM1sQHv/Ilzq11NO1BBS2dwGtfaP0B4HpLhDc+mOLC
         G8UP70/oW4LFPnj5uLavsIsRFVDPtE+T2nhqx2xEyL2HtxSooQdk3x87xvTq/jgPbS8R
         jofv2uNRIUzEQeLIltlkMuzJOTSB+1oTBHgJAFTBsQvXr1c0t5M3BjHE9iaG04AnYUr4
         BFaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=hFv2iOUC9MFGbvA/KZkyn+UkE86d8RSkbhbbEwZ8rmI=;
        b=I+vxe7dIaBgmuOEKV55yjhq3eodU7EZzS4JjiiWuSvC3U4rvj/8YalY8vNv66uc9R/
         gk3GbFPFP0IEDF5OeKpn49cvM2Mq2OxvmkCs1nj4L2KO2HbrRkaNLq3PrDrpDwL71U2a
         qgjLs1KiVW2sVdJyss1LZMcwwWwu9Do310I6K+Mlka/V92JCWseT9Sj2Yg4niHvw+xA7
         gumgPrDz60e2a3pVFm5/ByhSlXtaUrcikyfRY+T61LW3AEB8MWqh+QtZln/lkjikottP
         f3GpsWJGppSswsRxmcC7QZtQIIg+FnBoA/LhwsqFMsyu6t8oy4C4CMKk5XT0N3eTIsyi
         62YA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=yUS70p4V;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id a79si169520oob.0.2020.05.14.08.00.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:00:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0BBj029167;
	Thu, 14 May 2020 10:00:11 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF0BNg103053
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:00:11 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:10 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:10 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAn019279;
	Thu, 14 May 2020 10:00:06 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann
	<arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Tom Joseph
	<tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring
	<robh+dt@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet
	<corbet@lwn.net>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 05/19] PCI: endpoint: Add "pci-epf-bus" driver
Date: Thu, 14 May 2020 20:29:13 +0530
Message-ID: <20200514145927.17555-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=yUS70p4V;       spf=pass
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

Add "pci-epf-bus" driver that helps to create EPF device from
device tree. This is added in order to define an endpoint function
device completely from device tree.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/Makefile      |  3 +-
 drivers/pci/endpoint/pci-epf-bus.c | 54 ++++++++++++++++++++++++++++++
 2 files changed, 56 insertions(+), 1 deletion(-)
 create mode 100644 drivers/pci/endpoint/pci-epf-bus.c

diff --git a/drivers/pci/endpoint/Makefile b/drivers/pci/endpoint/Makefile
index 95b2fe47e3b0..36cf33cf975c 100644
--- a/drivers/pci/endpoint/Makefile
+++ b/drivers/pci/endpoint/Makefile
@@ -5,4 +5,5 @@
 
 obj-$(CONFIG_PCI_ENDPOINT_CONFIGFS)	+= pci-ep-cfs.o
 obj-$(CONFIG_PCI_ENDPOINT)		+= pci-epc-core.o pci-epf-core.o\
-					   pci-epc-mem.o functions/
+					   pci-epc-mem.o pci-epf-bus.o \
+					   functions/
diff --git a/drivers/pci/endpoint/pci-epf-bus.c b/drivers/pci/endpoint/pci-epf-bus.c
new file mode 100644
index 000000000000..b6ab1479b79e
--- /dev/null
+++ b/drivers/pci/endpoint/pci-epf-bus.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * PCI Endpoint *Function* Bus Driver
+ *
+ * Copyright (C) 2020 Texas Instruments
+ * Author: Kishon Vijay Abraham I <kishon@ti.com>
+ */
+
+#include <linux/err.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/pci-epf.h>
+#include <linux/platform_device.h>
+
+static int pci_epf_bus_probe(struct platform_device *pdev)
+{
+	struct device *dev = &pdev->dev;
+	struct device_node *node = of_node_get(dev->of_node);
+	struct device_node *child;
+	struct pci_epf *epf;
+
+	for_each_child_of_node(node, child) {
+		epf = devm_pci_epf_of_create(dev, child);
+		if (IS_ERR(epf)) {
+			dev_err(dev, "Failed to create PCI EPF device %s\n",
+				node->full_name);
+			of_node_put(child);
+			break;
+		}
+	}
+	of_node_put(node);
+
+	return 0;
+}
+
+static const struct of_device_id pci_epf_bus_id_table[] = {
+	{ .compatible = "pci-epf-bus" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, pci_epf_bus_id_table);
+
+static struct platform_driver pci_epf_bus_driver = {
+	.probe		= pci_epf_bus_probe,
+	.driver		= {
+		.name	= "pci-epf-bus",
+		.of_match_table = of_match_ptr(pci_epf_bus_id_table),
+	},
+};
+
+module_platform_driver(pci_epf_bus_driver);
+
+MODULE_AUTHOR("Texas Instruments Inc.");
+MODULE_DESCRIPTION("PCI EPF Bus Driver");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-6-kishon%40ti.com.

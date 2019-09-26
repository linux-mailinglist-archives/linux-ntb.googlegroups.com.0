Return-Path: <linux-ntb+bncBCOOP4VF5IDRB7GCWLWAKGQEJ7HMS5Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C8ABF169
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:09 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id l123sf1348619ywd.23
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497468; cv=pass;
        d=google.com; s=arc-20160816;
        b=v7ZcczV7SbEj35n++9Ui08kKZX4kggwUVZf2AqxbFBCt0jE/pGz24gXNHnXpssRsNK
         wo+jBWmBtID917WNGLFW6Dicme1+9GXW/BWjNq8PQ8MDKYkRwNVk6cY0XZAlTX+SQijP
         OOllNSsOerUZ3mrYvnIvb87Ng6cermZjqi8Rv6Y6XzFTfh0aX7/ElPPsllMtuTM+cj0Z
         IH4JX8xlXhxxj+FM+/Lm8IL0bP6emEGhZD79uFq3kn0TqlvFky6K6liIWRx9OkP5Vpcy
         a8HRuIMTpLFisu6gpSRxTDdKfu9ZOkKynYjA34mcNhcDKSgOY+mu/xjiclvbhVyDJVcu
         CXMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=1WULcPteUxXDIupTwUT8O7W9rgyyiYHqYhAEH0Xhs+Q=;
        b=NfnY7hc72VfD09yZI2WXpTq8ZxNEgIYvz/D4xSTQncNdJtG+gRGUhQhG4CHRvAavj1
         pB43p4ZbycXuYEuqsHnpJyVwVcN0CB4zd0kRk56r9y08qv2m4Mkg/7z+cIWoEjYs00Kq
         qx+V/Aq2+m6cgmuWyU2CEBk00lJX4wGMrg+WtAwHI2ONSHEs6ROk2PdKrrTsUH48eXEW
         B6fgYB4agJRDHBvMA/XofAKUmj0oKL8K6/y68Xlxeefrh/qZljTvpMubF4TS3fdaTsQz
         aYlaGT4h1L+LyDpS12or6pv9jpB6FxDXekD2cxlZzrGeivTMKM8d7ogm++OLgzLf6FZB
         khCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=CH27UaMC;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1WULcPteUxXDIupTwUT8O7W9rgyyiYHqYhAEH0Xhs+Q=;
        b=lBYktUbsPJt4O2DKQWcwAoff01LZNsbpaP9AN/akiHLH1vxNhRRIQUxd/G9s2+wh3U
         6xRbSpbmu6UFHtPXNX9DuJsORv2le6jw4NASXBCoHbE06GNX4Tx3e1LJAWGO0Z2A5ago
         F5JCVZstlK0ccpKTb6ZclB6GTrXi7SHX4UdNEhA4eRk3l+2jPtO4UjP4mYQl0pqI01Kx
         LRaXma2dLEaP/0GQ5qd697obaLvWtgEhuM86eoPHi8ms4cPXsdpAn3xFy98YeyIrxCit
         Sdvw9ri4ZhhoKnGX23O+RtpnfyxVQjWgXMnT3/OJdJ3SPthxvKkMql9xGcmesAZrvrX9
         nGdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1WULcPteUxXDIupTwUT8O7W9rgyyiYHqYhAEH0Xhs+Q=;
        b=fL992cjwf54p3GXKpqV3i7cV1gYK9imLWMqG/nVRM+Ew8BFhDG26xwIv33vJAZJYZ5
         EHn4i1/Hvn7v/HqY+F9Vqbi9urKbGOrsBO5c0YyJ+87QYYklhKcUIm5oSYcpG9sPn16C
         U2smCGZCS4+tp+B490obzDtlNXvQts25EuHxDb3djc6C5g7BQxZnE4SBJcHnMPCtMm2V
         kAUP4HWVPFviiwX9WRERTwxejdhPx/e0EISWApm1bJDXA3dRNGJqZz59c5XhMpccYcqi
         ZJ8dPvUSxFmvsM/AdfAbQsXi/AxWJ0d0jjkv3Kdy4CJfgZC6G35JXOdd/sTLKL0aEawm
         qYTg==
X-Gm-Message-State: APjAAAVBfX2zu3YzD7kTyok98GSUpaBR09IC20YL8ej8dA3m7lJzcLIv
	NjuaL+2c83WJBL67wEHdqOw=
X-Google-Smtp-Source: APXvYqx3i0rXrO63sYf9x1AagjKZrRc4uzwXWk68hTnkb5fAmQqF1iH9GqFfv3OLd0gl30s0v9kbdQ==
X-Received: by 2002:a81:6743:: with SMTP id b64mr2251579ywc.302.1569497468217;
        Thu, 26 Sep 2019 04:31:08 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:bd89:: with SMTP id f9ls340889ybh.2.gmail; Thu, 26 Sep
 2019 04:31:07 -0700 (PDT)
X-Received: by 2002:a25:6952:: with SMTP id e79mr1147154ybc.485.1569497467964;
        Thu, 26 Sep 2019 04:31:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497467; cv=none;
        d=google.com; s=arc-20160816;
        b=g+NVNj1OyU7SmaYrDaLX0zaJz/GlDgdFad+ZNzPjf9Po2bTHjy0H9jcDexqBhhJP6p
         UUIYTK/LY3qo6z7tWs8IL7hZ5o/KoPiRSjTH5f/0NxkcSUU/iWiro4SSP3+YxMAb8lSv
         zYlelJvI70GnIRt3mwBf/JyXWnDo4cy8rleRRjCOQopbVQPVUDCPVHQktXES3hRXQwvM
         PnzDHzsTRj8JyM363TQz09YDgdIqL1FfLq2ozm0MNFqgIEA9prLUpfYgB0gzfW/GmkwS
         klD5eDqXnCz5LLoZJ0eWpdxexRxrO3zx1nf5N2bV9kdHAQqr+YcvC+pgCHbKDt2t0yti
         Tcrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=iaR4/VPvHXdgGcChNIDAglMw0NIfiR18nZfC93JIGCk=;
        b=fX1uhX0FmqSCXPPpzxs4S9apAMrcrDj5PDdsHQ7JfsKOBf1Yz4fd4DIptWgKhEP45n
         b7SfP1dE8FHpkl5rv1VDvCdoFiTdtsyxClgJCmFy+eFFcSenyCYCO8cdvJuDjNKcS68p
         0joRTeV+7G+HH2d3FCrFUaBB8moyJeUyP21MmSMnn7ymOR/whjJhVk1UtSdZ3QjzStsw
         e8PkDufLhon3hfPUZM6cPqPz3SELUHGAMWL5hjFRqUuWnRU9Pht1OCrjSoWylpAx+glg
         NYBgMS+viJa+ziO8xYIOXKlb7MGMdLKKZdD0ejJkFyfOr6sAmkJsDhcbmxgBmHYZYHTG
         FiBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=CH27UaMC;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d134si125542ybc.2.2019.09.26.04.31.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBV3MU042367;
	Thu, 26 Sep 2019 06:31:03 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBV3B5050162
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:03 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:03 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:03 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTk0069017;
	Thu, 26 Sep 2019 06:30:59 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Rob
 Herring <robh+dt@kernel.org>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>
CC: Mark Rutland <mark.rutland@arm.com>, <kishon@ti.com>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-ntb@googlegroups.com>
Subject: [RFC PATCH 07/21] PCI: endpoint: Add "pci-epf-bus" driver
Date: Thu, 26 Sep 2019 16:59:19 +0530
Message-ID: <20190926112933.8922-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=CH27UaMC;       spf=pass
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
completely from device tree.

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
index 000000000000..c47eeae7fe7a
--- /dev/null
+++ b/drivers/pci/endpoint/pci-epf-bus.c
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * PCI Endpoint *Function* Bus Driver
+ *
+ * Copyright (C) 2019 Texas Instruments
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-8-kishon%40ti.com.

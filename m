Return-Path: <linux-ntb+bncBCOOP4VF5IDRBTV26X2QKGQE7SISBTI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id AD2C21D33E6
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:36 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id y10sf1701959otk.14
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468495; cv=pass;
        d=google.com; s=arc-20160816;
        b=zM0vKqlyvit8DDQW2dfCUQt+JvRkX8rN++x1wq/YhzOILJyiklhUK1q9UNE6at+qqo
         I+KR4eq+OvJ9XhaUQFS/RvhCV6AeJEoKDFlfsbby/8FvB3C0tgTiYhB6iGEWj5Pih0ww
         QbBbgpCA/qJlVww0dhfHXa+XbC55U4iDKqZHmz4zOKnmqfMHuifzF0Jervgi+PSv0rVR
         jQA/EK8b2m5Uyx9RWz5MjjBJrv/36MGaWzWEKpmhWEa+yuGhzqRbGkcxLE6JW/cjsBJu
         7OW0oeeHs7z35Z5wUKU6fVI0pCHYZFzJ7Oigon/CTfcnjGjev4ZiAUDP+pkVRcSrAQkY
         yiWg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=JDxrKl6414acVEBbZUlSKzuCc24HAj0lEePjWRHC/DQ=;
        b=ncjG3w/sfQI1mCY2vE4sPz94ReAMSAR3H3zPHKUN+RGNjpb4b6NS68DSTUJ6m+OmfZ
         hGUqmCkKss1yAElVMl/7fpdPgBp+wRvIyVOoqm8nwAXvJ0ISkywtVxFJL2Fi+SsjZOWk
         15FpWSnINTcuM+/sGe5r0Xydds+Jk1uMLSFwRlvzvIK6rOckE+BDi4dI+N5nKrn9JPYl
         yFHVxpt+6Ky/rRiq5hakYbXiOVLrDmBr0l2A8A+TtMEtFWqDHuZhIr1dccIIsok9L/J8
         MiZY2pmBN8nzsIbRAWhnLRrkpjebCej5YjfTMetcK6Bk2lTMWnwLbM24vRO9M1VRlADM
         VMaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=FuKS9v1f;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JDxrKl6414acVEBbZUlSKzuCc24HAj0lEePjWRHC/DQ=;
        b=smp8cc7Tn+yrUJ1EEy3h3T6T61KbqA3CmAyAcPsfqmheF5LUGOLlCL2EoPrAoVBA6J
         EyGu0M3jljSDijEa3y2D1CsCy/W3ujEtzoWiPN8qy2mnIN+iA79zIe/Thl+C9gMkPEp5
         JxIk9LuQNhVG5MYNo5wMh+m72dTtp+JinkGEuq3cmVS3wOBqdaDID8yZ3/v3CPLYy1Un
         PJ2FJzs85IVJl0+F3MSXT0oBnXItATr/cOKR/jj6LMp4l5fxwdBIQ9HwaAP7vfROnk5H
         ZNL87KuJcVxRpJ0CMnjvxHg0JiMsbVfJvtH+qabOWQSrxhLb+0JbwpByo+UkNnPs7wAr
         vVFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JDxrKl6414acVEBbZUlSKzuCc24HAj0lEePjWRHC/DQ=;
        b=tcNKhI37EkWXcLnWYrbIXCFaszQV+TsSwzYPOd4sxfTKRNeftCLa37OM6PJquzdXkh
         zlubVQkUqCuA96D7TljHxAWsv9eCz55PGMBMjdn6+okPdWDWORbGK/uWwOzIae/ne4mx
         FE6tfzUjJsvpP0l1DvZNHYi9NOWcJ5xJNdnaJ8EmbSfB1qRSjzYuyYO0X+pJ5P5IHzU4
         YRAoNxSS+g2e0l/cecqyDtJivgqQDF6axXxVX/1wcOgt6hdi3cI6VEQGSppd7PxA4e9L
         g9gvPhTybdAkFiYm22NS53818agT9XxJc2zkasic+XcLQpMU2TJxx6DDmTetHvDKJlTb
         LLog==
X-Gm-Message-State: AOAM533sWFpFpGEX80w9IPyv1JzzXwYu3r61Iz48+ROf+FsRF3fk4nG/
	77sCdMPE7ctM9rGsAy3xduw=
X-Google-Smtp-Source: ABdhPJwY6fnaj2fL4j8jIbzip4rFbg2kL2niKaIHci8EC19H+Vkao+ONSmAZvP7Qu/wN3XMsF3Lkdw==
X-Received: by 2002:a9d:883:: with SMTP id 3mr3010540otf.344.1589468494485;
        Thu, 14 May 2020 08:01:34 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:c648:: with SMTP id w69ls1214835oif.7.gmail; Thu, 14 May
 2020 08:01:33 -0700 (PDT)
X-Received: by 2002:aca:ab4b:: with SMTP id u72mr2175371oie.112.1589468493656;
        Thu, 14 May 2020 08:01:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468493; cv=none;
        d=google.com; s=arc-20160816;
        b=cNtvw7w3yG57oO1+DvZA7dFHy6qNYw5bIQ/mrz8T43/hZHgz1amI5jEr6MqisWVhyH
         UDlFBSd9qDFKTxzgbTIplvyTzGim0RR9gk7xBjOEyyPRAfTj1bTgQpcbH8hIVCh/G0PI
         wLngnSy6p0fyNzf6CDtOmR/ZqS6qPo6kc4CsrgHYSaFMjyfRsMYYog4/OpEkF7xxb7bt
         v7lqsOeQw7MRW82MAx2i4eDhhwVXngGiAYzfyd9UmkJHw5bjtmhR17fYAmgRlFNTch2p
         IiaJ9iBZXZFOuE5fUq52z+Enwu97V1jvvYhbFWnEvGVHsicC9GS1mkobE1VvcWPRJ9pG
         9eow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=EBe568XYjY4EPgW1ri5vGmZ5j7iAjgMoKccGaFcKORc=;
        b=YQouRP9A41CZv+RNC2Dp/YXmbWz4ZtXpym3Lzt5YsdAEGayTYYgA/vW7iqb4YcwVDx
         B93QTjPi9fsby/iDPdQJJXbtmyvPU/dFqmMUvlQSzYB83k9u6OemgO2iV53ToTJGFoeX
         +l7nVbGz+Ed27wpEyNJp7hlstQ8Kx8XSyt9G3I2qgLkzfSF5DGxLo8DFz66q3MsznnlH
         6dg0KN9I2wg+rp8FX59K2PPgkt8+C2RVqSnNd6M+gSxGYfurRPNnRxrEDKj/Mkvb1WzQ
         AMKc3efxtYv8wu6prbRZw/0fimdHXSZsays8nRywwovKXX9dIwQhjX2KvHXxZEooFJsE
         +rtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=FuKS9v1f;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id x23si137464otq.4.2020.05.14.08.01.33
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0x1m032764;
	Thu, 14 May 2020 10:00:59 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF0x1Y103999
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:00:59 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:58 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAx019279;
	Thu, 14 May 2020 10:00:54 -0500
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
Subject: [PATCH 15/19] PCI: endpoint: Add EP function driver to provide NTB functionality
Date: Thu, 14 May 2020 20:29:23 +0530
Message-ID: <20200514145927.17555-16-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=FuKS9v1f;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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

Add a new endpoint function driver to provide NTB functionality
using multiple PCIe endpoint instances.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/functions/Kconfig       |   12 +
 drivers/pci/endpoint/functions/Makefile      |    1 +
 drivers/pci/endpoint/functions/pci-epf-ntb.c | 2038 ++++++++++++++++++
 3 files changed, 2051 insertions(+)
 create mode 100644 drivers/pci/endpoint/functions/pci-epf-ntb.c

diff --git a/drivers/pci/endpoint/functions/Kconfig b/drivers/pci/endpoint/functions/Kconfig
index 8820d0f7ec77..55ac7bb2d469 100644
--- a/drivers/pci/endpoint/functions/Kconfig
+++ b/drivers/pci/endpoint/functions/Kconfig
@@ -12,3 +12,15 @@ config PCI_EPF_TEST
 	   for PCI Endpoint.
 
 	   If in doubt, say "N" to disable Endpoint test driver.
+
+config PCI_EPF_NTB
+	tristate "PCI Endpoint NTB driver"
+	depends on PCI_ENDPOINT
+	help
+	   Select this configuration option to enable the NTB driver
+	   for PCI Endpoint. NTB driver implements NTB controller
+	   functionality using multiple PCIe endpoint instances. It
+	   can support NTB endpoint function devices created using
+	   device tree.
+
+	   If in doubt, say "N" to disable Endpoint NTB driver.
diff --git a/drivers/pci/endpoint/functions/Makefile b/drivers/pci/endpoint/functions/Makefile
index d6fafff080e2..96ab932a537a 100644
--- a/drivers/pci/endpoint/functions/Makefile
+++ b/drivers/pci/endpoint/functions/Makefile
@@ -4,3 +4,4 @@
 #
 
 obj-$(CONFIG_PCI_EPF_TEST)		+= pci-epf-test.o
+obj-$(CONFIG_PCI_EPF_NTB)		+= pci-epf-ntb.o
diff --git a/drivers/pci/endpoint/functions/pci-epf-ntb.c b/drivers/pci/endpoint/functions/pci-epf-ntb.c
new file mode 100644
index 000000000000..0229ef456d7f
--- /dev/null
+++ b/drivers/pci/endpoint/functions/pci-epf-ntb.c
@@ -0,0 +1,2038 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * Endpoint Function Driver to implement Non-Transparent Bridge functionality
+ *
+ * Copyright (C) 2020 Texas Instruments
+ * Author: Kishon Vijay Abraham I <kishon@ti.com>
+ */
+
+/*
+ *The PCI NTB function driver configures the SoC with multiple PCIe Endpoint(EP)
+ *controller instances (see diagram below) in such a way that transaction from
+ *one EP controller is routed to the other EP controller. Once PCI NTB function
+ *driver configures the SoC with multiple EP instances, HOST1 and HOST2 can
+ *communicate with each other using SoC as a bridge.
+ *
+ *   +-------------+                                   +-------------+
+ *   |             |                                   |             |
+ *   |    HOST1    |                                   |    HOST2    |
+ *   |             |                                   |             |
+ *   +------^------+                                   +------^------+
+ *          |                                                 |
+ *          |                                                 |
+ *+---------|-------------------------------------------------|---------+
+ *|  +------v------+                                   +------v------+  |
+ *|  |             |                                   |             |  |
+ *|  |     EP      |                                   |     EP      |  |
+ *|  | CONTROLLER1 |                                   | CONTROLLER2 |  |
+ *|  |             <----------------------------------->             |  |
+ *|  |             |                                   |             |  |
+ *|  |             |                                   |             |  |
+ *|  |             |  SoC With Multiple EP Instances   |             |  |
+ *|  |             |  (Configured using NTB Function)  |             |  |
+ *|  +-------------+                                   +-------------+  |
+ *+---------------------------------------------------------------------+
+ */
+
+#include <linux/delay.h>
+#include <linux/io.h>
+#include <linux/module.h>
+#include <linux/slab.h>
+
+#include <linux/pci-epc.h>
+#include <linux/pci-epf.h>
+
+static struct workqueue_struct *kpcintb_workqueue;
+
+#define COMMAND_CONFIGURE_DOORBELL	1
+#define COMMAND_TEARDOWN_DOORBELL	2
+#define COMMAND_CONFIGURE_MW		3
+#define COMMAND_TEARDOWN_MW		4
+#define COMMAND_LINK_UP			5
+#define COMMAND_LINK_DOWN		6
+
+#define COMMAND_STATUS_OK		1
+#define COMMAND_STATUS_ERROR		2
+
+#define LINK_STATUS_UP			BIT(0)
+
+#define SPAD_COUNT			64
+#define DB_COUNT			4
+#define NTB_MW_OFFSET			2
+#define DB_COUNT_MASK			GENMASK(15, 0)
+#define MSIX_ENABLE			BIT(16)
+#define MAX_DB_COUNT			32
+#define MAX_MW				4
+
+enum epf_ntb_bar {
+	BAR_CONFIG,
+	BAR_PEER_SPAD,
+	BAR_DB_MW1,
+	BAR_MW2,
+	BAR_MW3,
+	BAR_MW4,
+};
+
+struct epf_ntb {
+	u32 num_mws;
+	u32 db_count;
+	u64 *mws_size;
+	u32 spad_count;
+	struct pci_epf *epf;
+	struct epf_ntb_epc *epc[2];
+};
+
+struct epf_ntb_epc {
+	u8 func_no;
+	bool linkup;
+	bool is_msix;
+	int msix_bar;
+	u32 spad_size;
+	struct pci_epc *epc;
+	struct epf_ntb *epf_ntb;
+	void __iomem *mw_addr[6];
+	size_t msix_table_offset;
+	struct epf_ntb_ctrl *reg;
+	struct pci_epf_bar *epf_bar;
+	enum pci_barno epf_ntb_bar[6];
+	struct delayed_work cmd_handler;
+	enum pci_epc_interface_type type;
+	const struct pci_epc_features *epc_features;
+};
+
+struct epf_ntb_ctrl {
+	u32	command;
+	u32	argument;
+	u16	command_status;
+	u16	link_status;
+	u32	topology;
+	u64	addr;
+	u64	size;
+	u32	num_mws;
+	u32	mw1_offset;
+	u32	spad_offset;
+	u32	spad_count;
+	u32	db_entry_size;
+	u32	db_data[MAX_DB_COUNT];
+} __packed;
+
+static struct pci_epf_header epf_ntb_header = {
+	.vendorid	= PCI_ANY_ID,
+	.deviceid	= PCI_ANY_ID,
+	.baseclass_code	= PCI_BASE_CLASS_MEMORY,
+	.interrupt_pin	= PCI_INTERRUPT_INTA,
+};
+
+/**
+ * epf_ntb_link_up() - Raise link_up interrupt to both the hosts
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @link_up: true or false indicating Link is UP or Down
+ *
+ * Once NTB function in HOST1 and the NTB function in HOST2 invoke
+ * ntb_link_enable(), this NTB function driver will trigger a link event to
+ * the NTB client in both the hosts.
+ */
+static int epf_ntb_link_up(struct epf_ntb *ntb, bool link_up)
+{
+	enum pci_epc_interface_type type;
+	enum pci_epc_irq_type irq_type;
+	struct epf_ntb_epc *ntb_epc;
+	struct epf_ntb_ctrl *ctrl;
+	bool is_msix;
+	u8 func_no;
+	int ret;
+
+	for (type = PRIMARY_INTERFACE; type <= SECONDARY_INTERFACE; type++) {
+		ntb_epc = ntb->epc[type];
+		func_no = ntb_epc->func_no;
+		is_msix = ntb_epc->is_msix;
+		ctrl = ntb_epc->reg;
+		if (link_up)
+			ctrl->link_status |= LINK_STATUS_UP;
+		else
+			ctrl->link_status &= ~LINK_STATUS_UP;
+		irq_type = is_msix ? PCI_EPC_IRQ_MSIX : PCI_EPC_IRQ_MSI;
+		ret = pci_epc_raise_irq(ntb_epc->epc, func_no, irq_type,
+					1);
+		if (ret < 0) {
+			WARN(1, "%s intf: Failed to raise Link Up IRQ\n",
+			     pci_epc_interface_string(type));
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_configure_mw() - Configure the Outbound Address Space for one host
+ *   to access the memory window of other host
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ * @mw: Index of the memory window (either 0, 1, 2 or 3)
+ *
+ *+-----------------+    +----->+----------------+-----------+-----------------+
+ *|       BAR0      |    |      |   Doorbell 1   +-----------> MSI|X ADDRESS 1 |
+ *+-----------------+    |      +----------------+           +-----------------+
+ *|       BAR1      |    |      |   Doorbell 2   +---------+ |                 |
+ *+-----------------+----+      +----------------+         | |                 |
+ *|       BAR2      |           |   Doorbell 3   +-------+ | +-----------------+
+ *+-----------------+----+      +----------------+       | +-> MSI|X ADDRESS 2 |
+ *|       BAR3      |    |      |   Doorbell 4   +-----+ |   +-----------------+
+ *+-----------------+    |      |----------------+     | |   |                 |
+ *|       BAR4      |    |      |                |     | |   +-----------------+
+ *+-----------------+    |      |      MW1       +---+ | +-->+ MSI|X ADDRESS 3||
+ *|       BAR5      |    |      |                |   | |     +-----------------+
+ *+-----------------+    +----->-----------------+   | |     |                 |
+ *  EP CONTROLLER 1             |                |   | |     +-----------------+
+ *                              |                |   | +---->+ MSI|X ADDRESS 4 |
+ *                              +----------------+   |       +-----------------+
+ *                     (A)       EP CONTROLLER 2     |       |                 |
+ *                                 (OB SPACE)        |       |                 |
+ *                                                   +------->      MW1        |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                   (B)     +-----------------+
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           +-----------------+
+ *                                                           PCI Address Space
+ *                                                           (Managed by HOST2)
+ *
+ * This function performs stage (B) in the above diagram (see MW1) i.e map OB
+ * address space of memory window to PCI address space.
+ *
+ * This operation requires 3 parameters
+ *  1) Address in the outbound address space
+ *  2) Address in the PCIe Address space
+ *  3) Size of the address region that is requested to be mapped
+ *
+ * The address in the outbound address space (for MW1, MW2, MW3 and MW4) is
+ * stored in epf_bar corresponding to BAR_DB_MW1 for MW1 and BAR_MW2, BAR_MW3
+ * BAR_MW4 for rest of the BARs of epf_ntb_epc that is connected to HOST1. This
+ * is populated in epf_ntb_alloc_peer_mem() in this driver.
+ *
+ * The address and size of the PCIe address region that has to be mapped would
+ * be provided by HOST2 in ctrl->addr and ctrl->size of epf_ntb_epc that is
+ * connected to HOST2.
+ *
+ * Please note Memory window1 (MW1) and Doorbell registers together will be
+ * mapped to a single BAR (BAR2) above for 32-bit BARs. The exact BAR that's
+ * used for Memory window (MW) can be obtained from epf_ntb_bar[BAR_DB_MW1],
+ * epf_ntb_bar[BAR_MW2], epf_ntb_bar[BAR_MW2], epf_ntb_bar[BAR_MW2].
+ */
+static int
+epf_ntb_configure_mw(struct epf_ntb *ntb, enum pci_epc_interface_type type,
+		     u32 mw)
+{
+	struct epf_ntb_epc *peer_ntb_epc, *ntb_epc;
+	struct pci_epf_bar *peer_epf_bar;
+	enum pci_barno peer_barno;
+	struct epf_ntb_ctrl *ctrl;
+	phys_addr_t phys_addr;
+	struct pci_epc *epc;
+	u64 addr, size;
+	int ret = 0;
+	u8 func_no;
+
+	ntb_epc = ntb->epc[type];
+	epc = ntb_epc->epc;
+
+	peer_ntb_epc = ntb->epc[!type];
+	peer_barno = peer_ntb_epc->epf_ntb_bar[mw + NTB_MW_OFFSET];
+	peer_epf_bar = &peer_ntb_epc->epf_bar[peer_barno];
+
+	phys_addr = peer_epf_bar->phys_addr;
+	ctrl = ntb_epc->reg;
+	addr = ctrl->addr;
+	size = ctrl->size;
+	if (mw + NTB_MW_OFFSET == BAR_DB_MW1)
+		phys_addr += ctrl->mw1_offset;
+
+	if (size > ntb->mws_size[mw]) {
+		WARN(1, "%s intf: MW: %d Req Sz:%llxx > Supported Sz:%llx\n",
+		     pci_epc_interface_string(type), mw, size,
+		     ntb->mws_size[mw]);
+		ret = -EINVAL;
+		goto err_invalid_size;
+	}
+
+	func_no = ntb_epc->func_no;
+
+	ret = pci_epc_map_addr(epc, func_no, phys_addr, addr, size);
+	WARN(ret < 0, "%s intf: Failed to map memory window %d address\n",
+	     pci_epc_interface_string(type), mw);
+
+err_invalid_size:
+
+	return ret;
+}
+
+/**
+ * epf_ntb_teardown_mw() - Teardown the configured OB ATU
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ * @mw: Index of the memory window (either 0, 1, 2 or 3)
+ *
+ * Teardown the configured OB ATU configured in epf_ntb_configure_mw() using
+ * pci_epc_unmap_addr()
+ */
+static void
+epf_ntb_teardown_mw(struct epf_ntb *ntb, enum pci_epc_interface_type type,
+		    u32 mw)
+{
+	struct epf_ntb_epc *peer_ntb_epc, *ntb_epc;
+	struct pci_epf_bar *peer_epf_bar;
+	enum pci_barno peer_barno;
+	struct epf_ntb_ctrl *ctrl;
+	phys_addr_t phys_addr;
+	struct pci_epc *epc;
+	u8 func_no;
+
+	ntb_epc = ntb->epc[type];
+	epc = ntb_epc->epc;
+
+	peer_ntb_epc = ntb->epc[!type];
+	peer_barno = peer_ntb_epc->epf_ntb_bar[mw + NTB_MW_OFFSET];
+	peer_epf_bar = &peer_ntb_epc->epf_bar[peer_barno];
+
+	phys_addr = peer_epf_bar->phys_addr;
+	ctrl = ntb_epc->reg;
+	if (mw + NTB_MW_OFFSET == BAR_DB_MW1)
+		phys_addr += ctrl->mw1_offset;
+	func_no = ntb_epc->func_no;
+
+	pci_epc_unmap_addr(epc, func_no, phys_addr);
+}
+
+/**
+ * epf_ntb_configure_msi() - Map OB address space to MSI address
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ * @db_count: Number of doorbell interrupts to map
+ *
+ *+-----------------+    +----->+----------------+-----------+-----------------+
+ *|       BAR0      |    |      |   Doorbell 1   +---+------->   MSI ADDRESS   |
+ *+-----------------+    |      +----------------+   |       +-----------------+
+ *|       BAR1      |    |      |   Doorbell 2   +---+       |                 |
+ *+-----------------+----+      +----------------+   |       |                 |
+ *|       BAR2      |           |   Doorbell 3   +---+       |                 |
+ *+-----------------+----+      +----------------+   |       |                 |
+ *|       BAR3      |    |      |   Doorbell 4   +---+       |                 |
+ *+-----------------+    |      |----------------+           |                 |
+ *|       BAR4      |    |      |                |           |                 |
+ *+-----------------+    |      |      MW1       |           |                 |
+ *|       BAR5      |    |      |                |           |                 |
+ *+-----------------+    +----->-----------------+           |                 |
+ *  EP CONTROLLER 1             |                |           |                 |
+ *                              |                |           |                 |
+ *                              +----------------+           +-----------------+
+ *                     (A)       EP CONTROLLER 2             |                 |
+ *                                 (OB SPACE)                |                 |
+ *                                                           |      MW1        |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                   (B)     +-----------------+
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           +-----------------+
+ *                                                           PCI Address Space
+ *                                                           (Managed by HOST2)
+ *
+ *
+ * This function performs stage (B) in the above diagram (see Doorbell 1,
+ * Doorbell 2, Doorbell 3, Doorbell 4) i.e map OB address space corresponding to
+ * doorbell to MSI address in PCI address space.
+ *
+ * This operation requires 3 parameters
+ *  1) Address reserved for doorbell in the outbound address space
+ *  2) MSI-X address in the PCIe Address space
+ *  3) Number of MSI-X interrupts that has to be configured
+ *
+ * The address in the outbound address space (for the Doorbell) is stored in
+ * epf_bar corresponding to BAR_DB_MW1 of epf_ntb_epc that is connected to
+ * HOST1. This is populated in epf_ntb_alloc_peer_mem() in this driver along
+ * with address for MW1.
+ *
+ * pci_epc_map_msi_irq() takes the MSI address from MSI capability register
+ * and maps the OB address (obtained in epf_ntb_alloc_peer_mem()) to the MSI
+ * address.
+ *
+ * epf_ntb_configure_msi() also stores the MSI data to raise each interrupt
+ * in db_data of the peer's control region. This helps the peer to raise
+ * doorbell of the other host by writing db_data to the BAR corresponding to
+ * BAR_DB_MW1.
+ */
+static int
+epf_ntb_configure_msi(struct epf_ntb *ntb, enum pci_epc_interface_type type,
+		      u16 db_count)
+{
+	struct epf_ntb_epc *peer_ntb_epc, *ntb_epc;
+	struct pci_epf_bar *peer_epf_bar;
+	struct epf_ntb_ctrl *peer_ctrl;
+	u32 db_entry_size, db_data;
+	enum pci_barno peer_barno;
+	phys_addr_t phys_addr;
+	struct pci_epc *epc;
+	u8 func_no;
+	int ret, i;
+
+	ntb_epc = ntb->epc[type];
+	epc = ntb_epc->epc;
+
+	peer_ntb_epc = ntb->epc[!type];
+	peer_barno = peer_ntb_epc->epf_ntb_bar[BAR_DB_MW1];
+	peer_epf_bar = &peer_ntb_epc->epf_bar[peer_barno];
+	peer_ctrl = peer_ntb_epc->reg;
+	db_entry_size = peer_ctrl->db_entry_size;
+
+	phys_addr = peer_epf_bar->phys_addr;
+	func_no = ntb_epc->func_no;
+
+	ret = pci_epc_map_msi_irq(epc, func_no, phys_addr, db_count,
+				  db_entry_size, &db_data);
+	if (ret < 0) {
+		WARN(1, "%s intf: Failed to map MSI IRQ\n",
+		     pci_epc_interface_string(type));
+		return ret;
+	}
+
+	for (i = 0; i < db_count; i++)
+		peer_ctrl->db_data[i] = db_data | i;
+
+	return 0;
+}
+
+/**
+ * epf_ntb_configure_msix() - Map OB address space to MSI-X address
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ * @db_count: Number of doorbell interrupts to map
+ *
+ *+-----------------+    +----->+----------------+-----------+-----------------+
+ *|       BAR0      |    |      |   Doorbell 1   +-----------> MSI-X ADDRESS 1 |
+ *+-----------------+    |      +----------------+           +-----------------+
+ *|       BAR1      |    |      |   Doorbell 2   +---------+ |                 |
+ *+-----------------+----+      +----------------+         | |                 |
+ *|       BAR2      |           |   Doorbell 3   +-------+ | +-----------------+
+ *+-----------------+----+      +----------------+       | +-> MSI-X ADDRESS 2 |
+ *|       BAR3      |    |      |   Doorbell 4   +-----+ |   +-----------------+
+ *+-----------------+    |      |----------------+     | |   |                 |
+ *|       BAR4      |    |      |                |     | |   +-----------------+
+ *+-----------------+    |      |      MW1       +     | +-->+ MSI-X ADDRESS 3||
+ *|       BAR5      |    |      |                |     |     +-----------------+
+ *+-----------------+    +----->-----------------+     |     |                 |
+ *  EP CONTROLLER 1             |                |     |     +-----------------+
+ *                              |                |     +---->+ MSI-X ADDRESS 4 |
+ *                              +----------------+           +-----------------+
+ *                     (A)       EP CONTROLLER 2             |                 |
+ *                                 (OB SPACE)                |                 |
+ *                                                           |      MW1        |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                   (B)     +-----------------+
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           +-----------------+
+ *                                                           PCI Address Space
+ *                                                           (Managed by HOST2)
+ *
+ * This function performs stage (B) in the above diagram (see Doorbell 1,
+ * Doorbell 2, Doorbell 3, Doorbell 4) i.e map OB address space corresponding to
+ * doorbell to MSI-X address in PCI address space.
+ *
+ * This operation requires 3 parameters
+ *  1) Address reserved for doorbell in the outbound address space
+ *  2) MSI-X address in the PCIe Address space
+ *  3) Number of MSI-X interrupts that has to be configured
+ *
+ * The address in the outbound address space (for the Doorbell) is stored in
+ * epf_bar corresponding to BAR_DB_MW1 of epf_ntb_epc that is connected to
+ * HOST1. This is populated in epf_ntb_alloc_peer_mem() in this driver along
+ * with address for MW1.
+ * The MSI-X address is in the MSI-X table of EP CONTROLLER 2 and
+ * the count of doorbell is in ctrl->argument of epf_ntb_epc that is connected
+ * to HOST2. MSI-X table is stored memory mapped to ntb_epc->msix_bar and the
+ * offset is in ntb_epc->msix_table_offset. From this epf_ntb_configure_msix()
+ * gets the MSI-X address and MSI-X data
+ *
+ * epf_ntb_configure_msix() also stores the MSI-X data to raise each interrupt
+ * in db_data of the peer's control region. This helps the peer to raise
+ * doorbell of the other host by writing db_data to the BAR corresponding to
+ * BAR_DB_MW1.
+ */
+static int epf_ntb_configure_msix(struct epf_ntb *ntb,
+				  enum pci_epc_interface_type type,
+				  u16 db_count)
+{
+	struct epf_ntb_epc *peer_ntb_epc, *ntb_epc;
+	struct pci_epf_bar *peer_epf_bar, *epf_bar;
+	struct pci_epf_msix_tbl *msix_tbl;
+	struct epf_ntb_ctrl *peer_ctrl;
+	u32 db_entry_size, msg_data;
+	enum pci_barno peer_barno;
+	phys_addr_t phys_addr;
+	struct pci_epc *epc;
+	u64 msg_addr;
+	u8 func_no;
+	int ret, i;
+
+	ntb_epc = ntb->epc[type];
+	epc = ntb_epc->epc;
+
+	epf_bar = &ntb_epc->epf_bar[ntb_epc->msix_bar];
+	msix_tbl = epf_bar->addr + ntb_epc->msix_table_offset;
+
+	peer_ntb_epc = ntb->epc[!type];
+	peer_barno = peer_ntb_epc->epf_ntb_bar[BAR_DB_MW1];
+	peer_epf_bar = &peer_ntb_epc->epf_bar[peer_barno];
+	phys_addr = peer_epf_bar->phys_addr;
+	peer_ctrl = peer_ntb_epc->reg;
+
+	func_no = ntb_epc->func_no;
+	db_entry_size = peer_ctrl->db_entry_size;
+
+	for (i = 0; i < db_count; i++) {
+		msg_addr = msix_tbl[i].msg_addr;
+		msg_data = msix_tbl[i].msg_data;
+		ret = pci_epc_map_addr(epc, func_no, phys_addr, msg_addr,
+				       db_entry_size);
+		if (ret)
+			return ret;
+		phys_addr = phys_addr + db_entry_size;
+		peer_ctrl->db_data[i] = msg_data;
+	}
+	ntb_epc->is_msix = true;
+
+	return 0;
+}
+
+/**
+ * epf_ntb_configure_db() - Configure the Outbound Address Space for one host
+ *   to ring the doorbell of other host
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ * @db_count: Count of the number of doorbells that has to be configured
+ * @msix: Indicates whether MSI-X or MSI should be used
+ *
+ * Invokes epf_ntb_configure_msix() or epf_ntb_configure_msi() required for
+ * one HOST to ring the doorbell of other HOST.
+ */
+static int
+epf_ntb_configure_db(struct epf_ntb *ntb, enum pci_epc_interface_type type,
+		     u16 db_count, bool msix)
+{
+	int ret;
+
+	if (db_count > MAX_DB_COUNT)
+		return -EINVAL;
+
+	if (msix)
+		ret = epf_ntb_configure_msix(ntb, type, db_count);
+	else
+		ret = epf_ntb_configure_msi(ntb, type, db_count);
+
+	WARN(ret < 0, "%s intf: Failed to configure DB\n",
+	     pci_epc_interface_string(type));
+
+	return ret;
+}
+
+/**
+ * epf_ntb_teardown_db() - Unmap address in OB address space to MSI/MSI-X
+ *   address
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ * Invoke pci_epc_unmap_addr() to unmap OB address to MSI/MSI-X address.
+ */
+static void
+epf_ntb_teardown_db(struct epf_ntb *ntb, enum pci_epc_interface_type type)
+{
+	struct epf_ntb_epc *peer_ntb_epc, *ntb_epc;
+	struct pci_epf_bar *peer_epf_bar;
+	enum pci_barno peer_barno;
+	phys_addr_t phys_addr;
+	struct pci_epc *epc;
+	u8 func_no;
+
+	ntb_epc = ntb->epc[type];
+	epc = ntb_epc->epc;
+
+	peer_ntb_epc = ntb->epc[!type];
+	peer_barno = peer_ntb_epc->epf_ntb_bar[BAR_DB_MW1];
+	peer_epf_bar = &peer_ntb_epc->epf_bar[peer_barno];
+	phys_addr = peer_epf_bar->phys_addr;
+	func_no = ntb_epc->func_no;
+
+	pci_epc_unmap_addr(epc, func_no, phys_addr);
+}
+
+/**
+ * epf_ntb_cmd_handler() - Handle commands provided by the NTB Host
+ * @work: work_struct for the two epf_ntb_epc (PRIMARY and SECONDARY)
+ *
+ * Workqueue function that gets invoked for the two epf_ntb_epc
+ * periodically (once every 5ms) to see if it has received any commands
+ * from NTB host. The host can send commands to configure doorbell or
+ * configure memory window or to update link status.
+ */
+static void epf_ntb_cmd_handler(struct work_struct *work)
+{
+	enum pci_epc_interface_type type;
+	struct epf_ntb_epc *ntb_epc;
+	struct epf_ntb_ctrl *ctrl;
+	u32 command, argument;
+	struct epf_ntb *ntb;
+	struct device *dev;
+	u16 db_count;
+	bool is_msix;
+	int ret;
+
+	ntb_epc = container_of(work, struct epf_ntb_epc, cmd_handler.work);
+	ctrl = ntb_epc->reg;
+	command = ctrl->command;
+	if (!command)
+		goto reset_handler;
+	argument = ctrl->argument;
+
+	ctrl->command = 0;
+	ctrl->argument = 0;
+
+	ctrl = ntb_epc->reg;
+	type = ntb_epc->type;
+	ntb = ntb_epc->epf_ntb;
+	dev = &ntb->epf->dev;
+
+	switch (command) {
+	case COMMAND_CONFIGURE_DOORBELL:
+		db_count = argument & DB_COUNT_MASK;
+		is_msix = argument & MSIX_ENABLE;
+		ret = epf_ntb_configure_db(ntb, type, db_count, is_msix);
+		if (ret < 0)
+			ctrl->command_status = COMMAND_STATUS_ERROR;
+		else
+			ctrl->command_status = COMMAND_STATUS_OK;
+		break;
+	case COMMAND_TEARDOWN_DOORBELL:
+		epf_ntb_teardown_db(ntb, type);
+		ctrl->command_status = COMMAND_STATUS_OK;
+		break;
+	case COMMAND_CONFIGURE_MW:
+		ret = epf_ntb_configure_mw(ntb, type, argument);
+		if (ret < 0)
+			ctrl->command_status = COMMAND_STATUS_ERROR;
+		else
+			ctrl->command_status = COMMAND_STATUS_OK;
+		break;
+	case COMMAND_TEARDOWN_MW:
+		epf_ntb_teardown_mw(ntb, type, argument);
+		ctrl->command_status = COMMAND_STATUS_OK;
+		break;
+	case COMMAND_LINK_UP:
+		ntb_epc->linkup = true;
+		if (ntb->epc[PRIMARY_INTERFACE]->linkup &&
+		    ntb->epc[SECONDARY_INTERFACE]->linkup) {
+			ret = epf_ntb_link_up(ntb, true);
+			if (ret < 0)
+				ctrl->command_status = COMMAND_STATUS_ERROR;
+			else
+				ctrl->command_status = COMMAND_STATUS_OK;
+			goto reset_handler;
+		}
+		ctrl->command_status = COMMAND_STATUS_OK;
+		break;
+	case COMMAND_LINK_DOWN:
+		ntb_epc->linkup = false;
+		ret = epf_ntb_link_up(ntb, false);
+		if (ret < 0)
+			ctrl->command_status = COMMAND_STATUS_ERROR;
+		else
+			ctrl->command_status = COMMAND_STATUS_OK;
+		break;
+	default:
+		dev_err(dev, "%s intf UNKNOWN command: %d\n",
+			pci_epc_interface_string(type), command);
+		break;
+	}
+
+reset_handler:
+	queue_delayed_work(kpcintb_workqueue, &ntb_epc->cmd_handler,
+			   msecs_to_jiffies(5));
+}
+
+/**
+ * epf_ntb_peer_spad_bar_clear() - Clears Peer Scratchpad BAR
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ *+-----------------+------->+------------------+        +-----------------+
+ *|       BAR0      |        |  CONFIG REGION   |        |       BAR0      |
+ *+-----------------+----+   +------------------+<-------+-----------------+
+ *|       BAR1      |    |   |SCRATCHPAD REGION |        |       BAR1      |
+ *+-----------------+    +-->+------------------+<-------+-----------------+
+ *|       BAR2      |            Local Memory            |       BAR2      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR3      |                                    |       BAR3      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR4      |                                    |       BAR4      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR5      |                                    |       BAR5      |
+ *+-----------------+                                    +-----------------+
+ *  EP CONTROLLER 1                                        EP CONTROLLER 2
+ *
+ * It clears BAR1 of EP CONTROLLER 2 which contains the HOST2's peer scratchpad
+ * region. While BAR1 is the default peer scratchpad BAR, an NTB could have
+ * other BARs for peer scratchpad (because of 64-bit BARs or reserved BARs).
+ * This function can get the exact BAR used for peer scratchpad from
+ * epf_ntb_bar[BAR_PEER_SPAD].
+ *
+ * Since HOST2's peer scratchpad is also HOST1's self scratchpad, this function
+ * gets the address of peer scratchpad from
+ * peer_ntb_epc->epf_ntb_bar[BAR_CONFIG]
+ */
+static void epf_ntb_peer_spad_bar_clear(struct epf_ntb_epc *ntb_epc)
+{
+	struct pci_epf_bar *epf_bar;
+	enum pci_barno barno;
+	struct pci_epc *epc;
+	u8 func_no;
+
+	epc = ntb_epc->epc;
+	func_no = ntb_epc->func_no;
+	barno = ntb_epc->epf_ntb_bar[BAR_PEER_SPAD];
+	epf_bar = &ntb_epc->epf_bar[barno];
+	pci_epc_clear_bar(epc, func_no, epf_bar);
+}
+
+/**
+ * epf_ntb_peer_spad_bar_set() - Sets peer scratchpad BAR
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ *+-----------------+------->+------------------+        +-----------------+
+ *|       BAR0      |        |  CONFIG REGION   |        |       BAR0      |
+ *+-----------------+----+   +------------------+<-------+-----------------+
+ *|       BAR1      |    |   |SCRATCHPAD REGION |        |       BAR1      |
+ *+-----------------+    +-->+------------------+<-------+-----------------+
+ *|       BAR2      |            Local Memory            |       BAR2      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR3      |                                    |       BAR3      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR4      |                                    |       BAR4      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR5      |                                    |       BAR5      |
+ *+-----------------+                                    +-----------------+
+ *  EP CONTROLLER 1                                        EP CONTROLLER 2
+ *
+ * It sets BAR1 of EP CONTROLLER 2 which contains the HOST2's peer scratchpad
+ * region. While BAR1 is the default peer scratchpad BAR, an NTB could have
+ * other BARs for peer scratchpad (because of 64-bit BARs or reserved BARs).
+ * This function can get the exact BAR used for peer scratchpad from
+ * epf_ntb_bar[BAR_PEER_SPAD].
+ *
+ * Since HOST2's peer scratchpad is also HOST1's self scratchpad, this function
+ * gets the address of peer scratchpad from
+ * peer_ntb_epc->epf_ntb_bar[BAR_CONFIG]
+ */
+static int
+epf_ntb_peer_spad_bar_set(struct epf_ntb *ntb, enum pci_epc_interface_type type)
+{
+	struct epf_ntb_epc *peer_ntb_epc, *ntb_epc;
+	struct pci_epf_bar *peer_epf_bar, *epf_bar;
+	enum pci_barno peer_barno, barno;
+	u32 peer_spad_offset;
+	struct pci_epc *epc;
+	struct device *dev;
+	u8 func_no;
+	int ret;
+
+	dev = &ntb->epf->dev;
+
+	peer_ntb_epc = ntb->epc[!type];
+	peer_barno = peer_ntb_epc->epf_ntb_bar[BAR_CONFIG];
+	peer_epf_bar = &peer_ntb_epc->epf_bar[peer_barno];
+
+	ntb_epc = ntb->epc[type];
+	barno = ntb_epc->epf_ntb_bar[BAR_PEER_SPAD];
+	epf_bar = &ntb_epc->epf_bar[barno];
+	func_no = ntb_epc->func_no;
+	epc = ntb_epc->epc;
+
+	peer_spad_offset = peer_ntb_epc->reg->spad_offset;
+	epf_bar->phys_addr = peer_epf_bar->phys_addr + peer_spad_offset;
+	epf_bar->size = peer_ntb_epc->spad_size;
+	epf_bar->barno = barno;
+	epf_bar->flags = PCI_BASE_ADDRESS_MEM_TYPE_32;
+
+	ret = pci_epc_set_bar(ntb_epc->epc, func_no, epf_bar);
+	if (ret) {
+		dev_err(dev, "%s intf: peer SPAD BAR set failed\n",
+			pci_epc_interface_string(type));
+		return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_config_sspad_bar_clear() - Clears Config + Self scratchpad BAR
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ *+-----------------+------->+------------------+        +-----------------+
+ *|       BAR0      |        |  CONFIG REGION   |        |       BAR0      |
+ *+-----------------+----+   +------------------+<-------+-----------------+
+ *|       BAR1      |    |   |SCRATCHPAD REGION |        |       BAR1      |
+ *+-----------------+    +-->+------------------+<-------+-----------------+
+ *|       BAR2      |            Local Memory            |       BAR2      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR3      |                                    |       BAR3      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR4      |                                    |       BAR4      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR5      |                                    |       BAR5      |
+ *+-----------------+                                    +-----------------+
+ *  EP CONTROLLER 1                                        EP CONTROLLER 2
+ *
+ * It clears BAR0 of EP CONTROLLER 1 which contains the HOST1's config and
+ * self scratchpad region (removes inbound ATU configuration). While BAR0 is
+ * the default self scratchpad BAR, an NTB could have other BARs for self
+ * scratchpad (because of reserved BARs). This function can get the exact BAR
+ * used for self scratchpad from epf_ntb_bar[BAR_CONFIG].
+ *
+ * Please note the self scratchpad region and config region is combined to
+ * a single region and mapped using the same BAR. Also note HOST2's peer
+ * scratchpad is HOST1's self scratchpad.
+ */
+static void epf_ntb_config_sspad_bar_clear(struct epf_ntb_epc *ntb_epc)
+{
+	struct pci_epf_bar *epf_bar;
+	enum pci_barno barno;
+	struct pci_epc *epc;
+	u8 func_no;
+
+	epc = ntb_epc->epc;
+	func_no = ntb_epc->func_no;
+	barno = ntb_epc->epf_ntb_bar[BAR_CONFIG];
+	epf_bar = &ntb_epc->epf_bar[barno];
+	pci_epc_clear_bar(epc, func_no, epf_bar);
+}
+
+/**
+ * epf_ntb_config_sspad_bar_set() - Sets Config + Self scratchpad BAR
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ *+-----------------+------->+------------------+        +-----------------+
+ *|       BAR0      |        |  CONFIG REGION   |        |       BAR0      |
+ *+-----------------+----+   +------------------+<-------+-----------------+
+ *|       BAR1      |    |   |SCRATCHPAD REGION |        |       BAR1      |
+ *+-----------------+    +-->+------------------+<-------+-----------------+
+ *|       BAR2      |            Local Memory            |       BAR2      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR3      |                                    |       BAR3      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR4      |                                    |       BAR4      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR5      |                                    |       BAR5      |
+ *+-----------------+                                    +-----------------+
+ *  EP CONTROLLER 1                                        EP CONTROLLER 2
+ *
+ * It maps BAR0 of EP CONTROLLER 1 which contains the HOST1's config and
+ * self scratchpad region. While BAR0 is the default self scratchpad BAR, an
+ * NTB could have other BARs for self scratchpad (because of reserved BARs).
+ * This function can get the exact BAR used for self scratchpad from
+ * epf_ntb_bar[BAR_CONFIG].
+ *
+ * Please note the self scratchpad region and config region is combined to
+ * a single region and mapped using the same BAR. Also note HOST2's peer
+ * scratchpad is HOST1's self scratchpad.
+ */
+static int epf_ntb_config_sspad_bar_set(struct epf_ntb_epc *ntb_epc)
+{
+	struct pci_epf_bar *epf_bar;
+	enum pci_barno barno;
+	struct epf_ntb *ntb;
+	struct pci_epc *epc;
+	struct device *dev;
+	u8 func_no;
+	int ret;
+
+	ntb = ntb_epc->epf_ntb;
+	dev = &ntb->epf->dev;
+
+	epc = ntb_epc->epc;
+	func_no = ntb_epc->func_no;
+	barno = ntb_epc->epf_ntb_bar[BAR_CONFIG];
+	epf_bar = &ntb_epc->epf_bar[barno];
+
+	ret = pci_epc_set_bar(epc, func_no, epf_bar);
+	if (ret) {
+		dev_err(dev, "%s inft: Config/Status/SPAD BAR set failed\n",
+			pci_epc_interface_string(ntb_epc->type));
+		return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_config_spad_bar_free() - Free the physical memory associated with
+ *   config + scratchpad region
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ *+-----------------+------->+------------------+        +-----------------+
+ *|       BAR0      |        |  CONFIG REGION   |        |       BAR0      |
+ *+-----------------+----+   +------------------+<-------+-----------------+
+ *|       BAR1      |    |   |SCRATCHPAD REGION |        |       BAR1      |
+ *+-----------------+    +-->+------------------+<-------+-----------------+
+ *|       BAR2      |            Local Memory            |       BAR2      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR3      |                                    |       BAR3      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR4      |                                    |       BAR4      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR5      |                                    |       BAR5      |
+ *+-----------------+                                    +-----------------+
+ *  EP CONTROLLER 1                                        EP CONTROLLER 2
+ *
+ * This function frees the Local Memory mentioned in the above diagram. After
+ * invoking this function, any of config + self scrathpad region of HOST1 or
+ * peer scratchpad region of HOST2 should not be accessed.
+ */
+static void epf_ntb_config_spad_bar_free(struct epf_ntb *ntb)
+{
+	enum pci_epc_interface_type type;
+	struct epf_ntb_epc *ntb_epc;
+	enum pci_barno barno;
+	struct pci_epf *epf;
+
+	epf = ntb->epf;
+	for (type = PRIMARY_INTERFACE; type <= SECONDARY_INTERFACE; type++) {
+		ntb_epc = ntb->epc[type];
+		barno = ntb_epc->epf_ntb_bar[BAR_CONFIG];
+		if (ntb_epc->reg)
+			pci_epf_free_space(epf, ntb_epc->reg, barno, type);
+	}
+}
+
+/**
+ * epf_ntb_config_spad_bar_alloc() - Allocate memory for config + scratchpad
+ *   region
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ *+-----------------+------->+------------------+        +-----------------+
+ *|       BAR0      |        |  CONFIG REGION   |        |       BAR0      |
+ *+-----------------+----+   +------------------+<-------+-----------------+
+ *|       BAR1      |    |   |SCRATCHPAD REGION |        |       BAR1      |
+ *+-----------------+    +-->+------------------+<-------+-----------------+
+ *|       BAR2      |            Local Memory            |       BAR2      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR3      |                                    |       BAR3      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR4      |                                    |       BAR4      |
+ *+-----------------+                                    +-----------------+
+ *|       BAR5      |                                    |       BAR5      |
+ *+-----------------+                                    +-----------------+
+ *  EP CONTROLLER 1                                        EP CONTROLLER 2
+ *
+ * This function allocates the Local Memory mentioned in the above diagram.
+ * The size of CONFIG REGION is sizeof(struct epf_ntb_ctrl) and size of
+ * SCRATCHPAD REGION is obtained from "spad-count" device tree property.
+ *
+ * The size of both config region and scratchpad region has to be aligned,
+ * since the scratchpad region will also be mapped as PEER SCRATCHPAD of
+ * other host using a separate BAR.
+ */
+static int
+epf_ntb_config_spad_bar_alloc(struct epf_ntb *ntb,
+			      enum pci_epc_interface_type type)
+{
+	const struct pci_epc_features *peer_epc_features, *epc_features;
+	struct epf_ntb_epc *peer_ntb_epc, *ntb_epc;
+	size_t msix_table_size, pba_size, align;
+	enum pci_barno peer_barno, barno;
+	struct epf_ntb_ctrl *ctrl;
+	struct device_node *node;
+	u32 spad_size, ctrl_size;
+	u64 size, peer_size;
+	struct pci_epc *epc;
+	struct pci_epf *epf;
+	struct device *dev;
+	bool msix_capable;
+	u32 spad_count;
+	void *base;
+
+	epf = ntb->epf;
+	node = epf->node;
+	dev = &epf->dev;
+	ntb_epc = ntb->epc[type];
+	epc = ntb_epc->epc;
+
+	epc_features = ntb_epc->epc_features;
+	barno = ntb_epc->epf_ntb_bar[BAR_CONFIG];
+	size = epc_features->bar_fixed_size[barno];
+	align = epc_features->align;
+
+	peer_ntb_epc = ntb->epc[!type];
+	peer_epc_features = peer_ntb_epc->epc_features;
+	peer_barno = ntb_epc->epf_ntb_bar[BAR_PEER_SPAD];
+	peer_size = peer_epc_features->bar_fixed_size[barno];
+
+	/* Check if epc_features is populated incorrectly */
+	if ((!IS_ALIGNED(size, align)))
+		return -EINVAL;
+
+	spad_count = SPAD_COUNT;
+	of_property_read_u32(node, "spad-count", &spad_count);
+
+	ctrl_size = sizeof(struct epf_ntb_ctrl);
+	spad_size = spad_count * 4;
+
+	msix_capable = epc_features->msix_capable;
+	if (msix_capable) {
+		msix_table_size = PCI_MSIX_ENTRY_SIZE * ntb->db_count;
+		ctrl_size = ALIGN(ctrl_size, 8);
+		ntb_epc->msix_table_offset = ctrl_size;
+		ntb_epc->msix_bar = barno;
+		/* Align to QWORD or 8 Bytes */
+		pba_size = ALIGN(DIV_ROUND_UP(ntb->db_count, 8), 8);
+		ctrl_size = ctrl_size + msix_table_size + pba_size;
+	}
+
+	if (!align) {
+		ctrl_size = roundup_pow_of_two(ctrl_size);
+		spad_size = roundup_pow_of_two(spad_size);
+	} else {
+		ctrl_size = ALIGN(ctrl_size, align);
+		spad_size = ALIGN(spad_size, align);
+	}
+
+	if (peer_size) {
+		if (peer_size < spad_size)
+			spad_count = peer_size / 4;
+		spad_size = peer_size;
+	}
+
+	/*
+	 * In order to make sure SPAD offset is aligned to its size,
+	 * expand control region size to the size of SPAD if SPAD size
+	 * is greater than control region size.
+	 */
+	if (spad_size > ctrl_size)
+		ctrl_size = spad_size;
+
+	if (!size)
+		size = ctrl_size + spad_size;
+	else if (size < ctrl_size + spad_size)
+		return -EINVAL;
+
+	base = pci_epf_alloc_space(epf, size, barno, align, type);
+	if (!base) {
+		dev_err(dev, "%s intf: Config/Status/SPAD alloc region fail\n",
+			pci_epc_interface_string(type));
+		return -ENOMEM;
+	}
+
+	ntb_epc->reg = base;
+
+	ctrl = ntb_epc->reg;
+	ctrl->spad_offset = ctrl_size;
+	ctrl->spad_count = spad_count;
+	ctrl->num_mws = ntb->num_mws;
+	ctrl->db_entry_size = align ? align : 4;
+	ntb_epc->spad_size = spad_size;
+
+	return 0;
+}
+
+/**
+ * epf_ntb_config_spad_bar_alloc_interface() - Allocate memory for config +
+ *   scratchpad region for each of PRIMARY and SECONDARY interface
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ * Wrapper for epf_ntb_config_spad_bar_alloc() which allocates memory for
+ * config + scratchpad region for a specific interface
+ */
+static int epf_ntb_config_spad_bar_alloc_interface(struct epf_ntb *ntb)
+{
+	enum pci_epc_interface_type type;
+	struct device *dev;
+	int ret;
+
+	dev = &ntb->epf->dev;
+
+	for (type = PRIMARY_INTERFACE; type <= SECONDARY_INTERFACE; type++) {
+		ret = epf_ntb_config_spad_bar_alloc(ntb, type);
+		if (ret) {
+			dev_err(dev, "%s intf: Config/SPAD BAR alloc failed\n",
+				pci_epc_interface_string(type));
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_free_peer_mem() - Free's memory allocated in peers outbound address
+ *   space
+ * @ntb_epc: EPC associated with one of the HOST which holds peers outbound
+ *   address regions
+ *
+ *+-----------------+    +----->+----------------+-----------+-----------------+
+ *|       BAR0      |    |      |   Doorbell 1   +-----------> MSI|X ADDRESS 1 |
+ *+-----------------+    |      +----------------+           +-----------------+
+ *|       BAR1      |    |      |   Doorbell 2   +---------+ |                 |
+ *+-----------------+----+      +----------------+         | |                 |
+ *|       BAR2      |           |   Doorbell 3   +-------+ | +-----------------+
+ *+-----------------+----+      +----------------+       | +-> MSI|X ADDRESS 2 |
+ *|       BAR3      |    |      |   Doorbell 4   +-----+ |   +-----------------+
+ *+-----------------+    |      |----------------+     | |   |                 |
+ *|       BAR4      |    |      |                |     | |   +-----------------+
+ *+-----------------+    |      |      MW1       +---+ | +-->+ MSI|X ADDRESS 3||
+ *|       BAR5      |    |      |                |   | |     +-----------------+
+ *+-----------------+    +----->-----------------+   | |     |                 |
+ *  EP CONTROLLER 1             |                |   | |     +-----------------+
+ *                              |                |   | +---->+ MSI|X ADDRESS 4 |
+ *                              +----------------+   |       +-----------------+
+ *                     (A)       EP CONTROLLER 2     |       |                 |
+ *                                 (OB SPACE)        |       |                 |
+ *                                                   +------->      MW1        |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                   (B)     +-----------------+
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           +-----------------+
+ *                                                           PCI Address Space
+ *                                                           (Managed by HOST2)
+ *
+ * This function frees memory allocated in EP CONTROLLER 2 (OB SPACE) in the
+ * above diagram. It'll free Doorbell 1, Doorbell 2, Doorbell 3, Doorbell 4,
+ * MW1 (and MW2, MW3, MW4).
+ */
+static void epf_ntb_free_peer_mem(struct epf_ntb_epc *ntb_epc)
+{
+	struct pci_epf_bar *epf_bar;
+	void __iomem *mw_addr;
+	phys_addr_t phys_addr;
+	enum epf_ntb_bar bar;
+	enum pci_barno barno;
+	struct pci_epc *epc;
+	size_t size;
+
+	epc = ntb_epc->epc;
+
+	for (bar = BAR_DB_MW1; bar < BAR_MW4; bar++) {
+		barno = ntb_epc->epf_ntb_bar[bar];
+		mw_addr = ntb_epc->mw_addr[barno];
+		epf_bar = &ntb_epc->epf_bar[barno];
+		phys_addr = epf_bar->phys_addr;
+		size = epf_bar->size;
+		if (mw_addr) {
+			pci_epc_mem_free_addr(epc, phys_addr, mw_addr, size);
+			ntb_epc->mw_addr[barno] = NULL;
+		}
+	}
+}
+
+/**
+ * epf_ntb_db_mw_bar_clear() - Clears doorbell and memory BAR
+ * @ntb_epc: EPC associated with one of the HOST which holds peers outbound
+ *   address
+ *
+ *+-----------------+    +----->+----------------+-----------+-----------------+
+ *|       BAR0      |    |      |   Doorbell 1   +-----------> MSI|X ADDRESS 1 |
+ *+-----------------+    |      +----------------+           +-----------------+
+ *|       BAR1      |    |      |   Doorbell 2   +---------+ |                 |
+ *+-----------------+----+      +----------------+         | |                 |
+ *|       BAR2      |           |   Doorbell 3   +-------+ | +-----------------+
+ *+-----------------+----+      +----------------+       | +-> MSI|X ADDRESS 2 |
+ *|       BAR3      |    |      |   Doorbell 4   +-----+ |   +-----------------+
+ *+-----------------+    |      |----------------+     | |   |                 |
+ *|       BAR4      |    |      |                |     | |   +-----------------+
+ *+-----------------+    |      |      MW1       +---+ | +-->+ MSI|X ADDRESS 3||
+ *|       BAR5      |    |      |                |   | |     +-----------------+
+ *+-----------------+    +----->-----------------+   | |     |                 |
+ *  EP CONTROLLER 1             |                |   | |     +-----------------+
+ *                              |                |   | +---->+ MSI|X ADDRESS 4 |
+ *                              +----------------+   |       +-----------------+
+ *                     (A)       EP CONTROLLER 2     |       |                 |
+ *                                 (OB SPACE)        |       |                 |
+ *                                                   +------->      MW1        |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                   (B)     +-----------------+
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           +-----------------+
+ *                                                           PCI Address Space
+ *                                                           (Managed by HOST2)
+ *
+ * This function clears doorbell and memory BARs (remove inbound ATU
+ * configuration). In the above diagram it clears BAR2 TO BAR5 of EP
+ * CONTROLLER 1 (Doorbell BAR, MW1 BAR, MW2 BAR, MW3 BAR and MW4 BAR).
+ */
+static void epf_ntb_db_mw_bar_clear(struct epf_ntb_epc *ntb_epc)
+{
+	struct pci_epf_bar *epf_bar;
+	enum epf_ntb_bar bar;
+	enum pci_barno barno;
+	struct pci_epc *epc;
+	u8 func_no;
+
+	epc = ntb_epc->epc;
+
+	func_no = ntb_epc->func_no;
+
+	for (bar = BAR_DB_MW1; bar < BAR_MW4; bar++) {
+		barno = ntb_epc->epf_ntb_bar[bar];
+		epf_bar = &ntb_epc->epf_bar[barno];
+		pci_epc_clear_bar(epc, func_no, epf_bar);
+	}
+}
+
+/**
+ * epf_ntb_db_mw_bar_cleanup() - Clears doorbell/memory BAR and free memory
+ *   allocated in peers outbound address space
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ * This function is a wrapper for epf_ntb_db_mw_bar_clear() which clears
+ * HOST1's BAR and epf_ntb_free_peer_mem() which frees up HOST2 outbound
+ * memory.
+ */
+static void epf_ntb_db_mw_bar_cleanup(struct epf_ntb *ntb,
+				      enum pci_epc_interface_type type)
+{
+	struct epf_ntb_epc *peer_ntb_epc, *ntb_epc;
+
+	ntb_epc = ntb->epc[type];
+	peer_ntb_epc = ntb->epc[!type];
+
+	epf_ntb_db_mw_bar_clear(ntb_epc);
+	epf_ntb_free_peer_mem(peer_ntb_epc);
+}
+
+/**
+ * epf_ntb_configure_interrupt() - Configure MSI/MSI-X capaiblity
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ * Configures MSI/MSI-X capability for each interface with number of
+ * interrupts equal to "db-count" device tree parameter.
+ */
+static int epf_ntb_configure_interrupt(struct epf_ntb *ntb,
+				       enum pci_epc_interface_type type)
+{
+	const struct pci_epc_features *epc_features;
+	bool msix_capable, msi_capable;
+	struct epf_ntb_epc *ntb_epc;
+	struct device_node *node;
+	struct pci_epc *epc;
+	struct device *dev;
+	u32 db_count;
+	u8 func_no;
+	int ret;
+
+	ntb_epc = ntb->epc[type];
+	dev = &ntb->epf->dev;
+	node = ntb->epf->node;
+
+	epc_features = ntb_epc->epc_features;
+	msix_capable = epc_features->msix_capable;
+	msi_capable = epc_features->msi_capable;
+
+	if (!(msix_capable || msi_capable)) {
+		dev_err(dev, "MSI or MSI-X is required for doorbell\n");
+		return -EINVAL;
+	}
+
+	func_no = ntb_epc->func_no;
+
+	db_count = DB_COUNT;
+	of_property_read_u32(node, "db-count", &db_count);
+	if (db_count > MAX_DB_COUNT) {
+		dev_err(dev, "DB count cannot be more than %d\n", MAX_DB_COUNT);
+		return -EINVAL;
+	}
+
+	ntb->db_count = db_count;
+	epc = ntb_epc->epc;
+
+	if (msi_capable) {
+		ret = pci_epc_set_msi(epc, func_no, db_count);
+		if (ret) {
+			dev_err(dev, "%s intf: MSI configuration failed\n",
+				pci_epc_interface_string(type));
+			return ret;
+		}
+	}
+
+	if (msix_capable) {
+		ret = pci_epc_set_msix(epc, func_no, db_count,
+				       ntb_epc->msix_bar,
+				       ntb_epc->msix_table_offset);
+		if (ret) {
+			dev_err(dev, "MSI configuration failed\n");
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_alloc_peer_mem() - Allocate memory in peers outbound address space
+ * @ntb_epc: EPC associated with one of the HOST whose BAR holds peers outbound
+ *   address
+ * @bar: BAR of @ntb_epc in for which memory has to be allocated (could be
+ *   BAR_DB_MW1, BAR_MW2, BAR_MW3, BAR_MW4)
+ * @peer_ntb_epc: EPC associated with HOST whose outbound address space is
+ *   used by @ntb_epc
+ * @size: Size of the address region that has to be allocated in peers OB SPACE
+ *
+ *
+ *+-----------------+    +----->+----------------+-----------+-----------------+
+ *|       BAR0      |    |      |   Doorbell 1   +-----------> MSI|X ADDRESS 1 |
+ *+-----------------+    |      +----------------+           +-----------------+
+ *|       BAR1      |    |      |   Doorbell 2   +---------+ |                 |
+ *+-----------------+----+      +----------------+         | |                 |
+ *|       BAR2      |           |   Doorbell 3   +-------+ | +-----------------+
+ *+-----------------+----+      +----------------+       | +-> MSI|X ADDRESS 2 |
+ *|       BAR3      |    |      |   Doorbell 4   +-----+ |   +-----------------+
+ *+-----------------+    |      |----------------+     | |   |                 |
+ *|       BAR4      |    |      |                |     | |   +-----------------+
+ *+-----------------+    |      |      MW1       +---+ | +-->+ MSI|X ADDRESS 3||
+ *|       BAR5      |    |      |                |   | |     +-----------------+
+ *+-----------------+    +----->-----------------+   | |     |                 |
+ *  EP CONTROLLER 1             |                |   | |     +-----------------+
+ *                              |                |   | +---->+ MSI|X ADDRESS 4 |
+ *                              +----------------+   |       +-----------------+
+ *                     (A)       EP CONTROLLER 2     |       |                 |
+ *                                 (OB SPACE)        |       |                 |
+ *                                                   +------->      MW1        |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                   (B)     +-----------------+
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           |                 |
+ *                                                           +-----------------+
+ *                                                           PCI Address Space
+ *                                                           (Managed by HOST2)
+ *
+ * This function allocates memory in OB space of EP CONTROLLER 2 in the
+ * above diagram. It'll allocate for Doorbell 1, Doorbell 2, Doorbell 3,
+ * Doorbell 4, MW1 (and MW2, MW3, MW4).
+ */
+static int
+epf_ntb_alloc_peer_mem(struct device *dev, struct epf_ntb_epc *ntb_epc,
+		       enum epf_ntb_bar bar, struct epf_ntb_epc *peer_ntb_epc,
+		       size_t size)
+{
+	const struct pci_epc_features *epc_features;
+	struct pci_epf_bar *epf_bar;
+	struct pci_epc *peer_epc;
+	phys_addr_t phys_addr;
+	void __iomem *mw_addr;
+	enum pci_barno barno;
+	size_t align;
+
+	epc_features = ntb_epc->epc_features;
+	align = epc_features->align;
+
+	if (size < 128)
+		size = 128;
+
+	if (align)
+		size = ALIGN(size, align);
+	else
+		size = roundup_pow_of_two(size);
+
+	peer_epc = peer_ntb_epc->epc;
+	mw_addr = pci_epc_mem_alloc_addr(peer_epc, &phys_addr, size);
+	if (!mw_addr) {
+		dev_err(dev, "%s intf: Failed to allocate OB address\n",
+			pci_epc_interface_string(peer_ntb_epc->type));
+		return -ENOMEM;
+	}
+
+	barno = ntb_epc->epf_ntb_bar[bar];
+	epf_bar = &ntb_epc->epf_bar[barno];
+	ntb_epc->mw_addr[barno] = mw_addr;
+
+	epf_bar->phys_addr = phys_addr;
+	epf_bar->size = size;
+	epf_bar->barno = barno;
+	epf_bar->flags = PCI_BASE_ADDRESS_MEM_TYPE_32;
+
+	return 0;
+}
+
+/**
+ * epf_ntb_db_mw_bar_init() - Configure Doorbell and Memory window BARs
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ * Wrapper for epf_ntb_alloc_peer_mem() and pci_epc_set_bar() that allocates
+ * memory in OB address space of HOST2 and configures BAR of HOST1
+ */
+static int epf_ntb_db_mw_bar_init(struct epf_ntb *ntb,
+				  enum pci_epc_interface_type type)
+{
+	const struct pci_epc_features *epc_features;
+	struct epf_ntb_epc *peer_ntb_epc, *ntb_epc;
+	struct pci_epf_bar *epf_bar;
+	struct epf_ntb_ctrl *ctrl;
+	u32 num_mws, db_count;
+	enum epf_ntb_bar bar;
+	enum pci_barno barno;
+	struct pci_epc *epc;
+	struct device *dev;
+	size_t align;
+	int ret, i;
+	u8 func_no;
+	u64 size;
+
+	ntb_epc = ntb->epc[type];
+	peer_ntb_epc = ntb->epc[!type];
+
+	dev = &ntb->epf->dev;
+	epc_features = ntb_epc->epc_features;
+	align = epc_features->align;
+	func_no = ntb_epc->func_no;
+	epc = ntb_epc->epc;
+	num_mws = ntb->num_mws;
+	db_count = ntb->db_count;
+
+	for (bar = BAR_DB_MW1, i = 0; i < num_mws; bar++, i++) {
+		if (bar == BAR_DB_MW1) {
+			align = align ? align : 4;
+			size = db_count * align;
+			size = ALIGN(size, ntb->mws_size[i]);
+			ctrl = ntb_epc->reg;
+			ctrl->mw1_offset = size;
+			size += ntb->mws_size[i];
+		} else {
+			size = ntb->mws_size[i];
+		}
+
+		ret = epf_ntb_alloc_peer_mem(dev, ntb_epc, bar,
+					     peer_ntb_epc, size);
+		if (ret)
+			goto err_alloc_peer_mem;
+
+		barno = ntb_epc->epf_ntb_bar[bar];
+		epf_bar = &ntb_epc->epf_bar[barno];
+
+		ret = pci_epc_set_bar(epc, func_no, epf_bar);
+		if (ret) {
+			dev_err(dev, "%s intf: DoorBell BAR set failed\n",
+				pci_epc_interface_string(type));
+			goto err_alloc_peer_mem;
+		}
+	}
+
+	return 0;
+
+err_alloc_peer_mem:
+	epf_ntb_db_mw_bar_cleanup(ntb, type);
+
+	return ret;
+}
+
+/**
+ * epf_ntb_epc_destroy_interface() - Cleanup NTB EPC interface
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ * Unbind NTB function device from EPC and Relinquish reference to pci_epc
+ * for each of the interface.
+ */
+static void epf_ntb_epc_destroy_interface(struct epf_ntb *ntb,
+					  enum pci_epc_interface_type type)
+{
+	struct epf_ntb_epc *ntb_epc;
+	struct pci_epc *epc;
+	struct pci_epf *epf;
+
+	if (type < 0)
+		return;
+
+	epf = ntb->epf;
+	ntb_epc = ntb->epc[type];
+	if (!ntb_epc)
+		return;
+	epc = ntb_epc->epc;
+	pci_epc_remove_epf(epc, epf, type);
+	pci_epc_put(epc);
+}
+
+/**
+ * epf_ntb_epc_destroy() - Cleanup NTB EPC interface
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ * Wrapper for epf_ntb_epc_destroy_interface() to cleanup all the NTB interfaces
+ */
+static void epf_ntb_epc_destroy(struct epf_ntb *ntb)
+{
+	enum pci_epc_interface_type type;
+
+	for (type = PRIMARY_INTERFACE; type <= SECONDARY_INTERFACE; type++)
+		epf_ntb_epc_destroy_interface(ntb, type);
+}
+
+/**
+ * epf_ntb_epc_create_interface() - Create and initialize NTB EPC interface
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @epc: struct pci_epc to which a particular NTB interface should be associated
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ * Allocate memory for NTB EPC interface and initialize it.
+ */
+static int
+epf_ntb_epc_create_interface(struct epf_ntb *ntb, struct pci_epc *epc,
+			     enum pci_epc_interface_type type)
+{
+	const struct pci_epc_features *epc_features;
+	struct pci_epf_bar *epf_bar;
+	struct epf_ntb_epc *ntb_epc;
+	struct pci_epf *epf;
+	struct device *dev;
+	u8 func_no;
+
+	dev = &ntb->epf->dev;
+
+	ntb_epc = devm_kzalloc(dev, sizeof(*ntb_epc), GFP_KERNEL);
+	if (!ntb_epc)
+		return -ENOMEM;
+
+	epf = ntb->epf;
+	if (type == PRIMARY_INTERFACE) {
+		func_no = epf->func_no;
+		epf_bar = epf->bar;
+	} else {
+		func_no = epf->sec_epc_func_no;
+		epf_bar = epf->sec_epc_bar;
+	}
+
+	ntb_epc->linkup = false;
+	ntb_epc->epc = epc;
+	ntb_epc->func_no = func_no;
+	ntb_epc->type = type;
+	ntb_epc->epf_bar = epf_bar;
+	ntb_epc->epf_ntb = ntb;
+
+	epc_features = pci_epc_get_features(epc, func_no);
+	if (!epc_features)
+		return -EINVAL;
+	ntb_epc->epc_features = epc_features;
+
+	ntb->epc[type] = ntb_epc;
+
+	return 0;
+}
+
+/**
+ * epf_ntb_epc_create() - Create and initialize NTB EPC interface
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ * Get a reference to EPC device and bind NTB function device to that EPC
+ * for each of the interface. It is also a wrapper to
+ * epf_ntb_epc_create_interface() to allocate memory for NTB EPC interface
+ * and initialize it
+ */
+static int epf_ntb_epc_create(struct epf_ntb *ntb)
+{
+	enum pci_epc_interface_type type;
+	struct device_node *node;
+	const char *epc_name;
+	struct pci_epc *epc;
+	struct pci_epf *epf;
+	struct device *dev;
+	int ret;
+
+	epf = ntb->epf;
+	node = epf->node;
+	dev = &epf->dev;
+
+	for (type = PRIMARY_INTERFACE; type <= SECONDARY_INTERFACE; type++) {
+		epc_name = pci_epc_interface_string(type);
+
+		epc = of_pci_epc_get_by_name(node, epc_name);
+		if (IS_ERR(epc)) {
+			if (PTR_ERR(epc) != -EPROBE_DEFER)
+				dev_err(dev, "%s intf: Failed to get EPC\n",
+					epc_name);
+			ret = PTR_ERR(epc);
+			goto err_epc_get;
+		}
+
+		ret = pci_epc_add_epf(epc, epf, type);
+		if (ret) {
+			dev_err(dev, "%s intf: Fail to add EPF to EPC\n",
+				epc_name);
+			goto err_epc_add;
+		}
+
+		ret = epf_ntb_epc_create_interface(ntb, epc, type);
+		if (ret) {
+			dev_err(dev, "%s intf: Fail to create NTB EPC\n",
+				epc_name);
+			goto err_epc_create;
+		}
+	}
+
+	return 0;
+
+err_epc_create:
+	pci_epc_remove_epf(epc, epf, type);
+
+err_epc_add:
+	pci_epc_put(epc);
+
+err_epc_get:
+	epf_ntb_epc_destroy_interface(ntb, type - 1);
+
+	return ret;
+}
+
+/**
+ * epf_ntb_init_epc_bar_interface() - Identify BARs to be used for each of
+ *   the NTB constructs (scratchpad region, doorbell, memorywindow)
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ * Identify the free BAR's to be used for each of BAR_CONFIG, BAR_PEER_SPAD,
+ * BAR_DB_MW1, BAR_MW2, BAR_MW3 and BAR_MW4.
+ */
+static int epf_ntb_init_epc_bar_interface(struct epf_ntb *ntb,
+					  enum pci_epc_interface_type type)
+{
+	const struct pci_epc_features *epc_features;
+	struct epf_ntb_epc *ntb_epc;
+	enum pci_barno barno;
+	enum epf_ntb_bar bar;
+	struct device *dev;
+	u32 num_mws;
+	int i;
+
+	barno = BAR_0;
+	ntb_epc = ntb->epc[type];
+	num_mws = ntb->num_mws;
+	dev = &ntb->epf->dev;
+	epc_features = ntb_epc->epc_features;
+
+	/* These are required BARs which are mandatory for NTB functionality */
+	for (bar = BAR_CONFIG; bar <= BAR_DB_MW1; bar++, barno++) {
+		barno = pci_epc_get_next_free_bar(epc_features, barno);
+		if (barno < 0) {
+			dev_err(dev, "%s intf: Fail to get NTB function BAR\n",
+				pci_epc_interface_string(type));
+			return barno;
+		}
+		ntb_epc->epf_ntb_bar[bar] = barno;
+	}
+
+	/* These are optional BARs which doesn't impact NTB functionality */
+	for (bar = BAR_MW2, i = 1; i < num_mws; bar++, barno++, i++) {
+		barno = pci_epc_get_next_free_bar(epc_features, barno);
+		if (barno < 0) {
+			ntb->num_mws = i;
+			dev_dbg(dev, "BAR not available for > MW%d\n", i + 1);
+		}
+		ntb_epc->epf_ntb_bar[bar] = barno;
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_init_epc_bar() - Identify BARs to be used for each of the NTB
+ * constructs (scratchpad region, doorbell, memorywindow)
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ * Wrapper to epf_ntb_init_epc_bar_interface() to identify the free BAR's
+ * to be used for each of BAR_CONFIG, BAR_PEER_SPAD, BAR_DB_MW1, BAR_MW2,
+ * BAR_MW3 and BAR_MW4 for all the interfaces.
+ */
+static int epf_ntb_init_epc_bar(struct epf_ntb *ntb)
+{
+	enum pci_epc_interface_type type;
+	struct device *dev;
+	int ret;
+
+	dev = &ntb->epf->dev;
+	for (type = PRIMARY_INTERFACE; type <= SECONDARY_INTERFACE; type++) {
+		ret = epf_ntb_init_epc_bar_interface(ntb, type);
+		if (ret) {
+			dev_err(dev, "Fail to init EPC bar for %s interface\n",
+				pci_epc_interface_string(type));
+			return ret;
+		}
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_epc_init_interface() - Initialize NTB interface
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ * Wrapper to initialize a particular EPC interface and start the workqueue
+ * to check for commands from host. This function will write to the
+ * EP controller HW for configuring it.
+ */
+static int epf_ntb_epc_init_interface(struct epf_ntb *ntb,
+				      enum pci_epc_interface_type type)
+{
+	struct epf_ntb_epc *ntb_epc;
+	struct pci_epc *epc;
+	struct pci_epf *epf;
+	struct device *dev;
+	u8 func_no;
+	int ret;
+
+	ntb_epc = ntb->epc[type];
+	epf = ntb->epf;
+	dev = &epf->dev;
+	epc = ntb_epc->epc;
+	func_no = ntb_epc->func_no;
+
+	ret = epf_ntb_config_sspad_bar_set(ntb->epc[type]);
+	if (ret) {
+		dev_err(dev, "%s intf: Config/self SPAD BAR init failed\n",
+			pci_epc_interface_string(type));
+		return ret;
+	}
+
+	ret = epf_ntb_peer_spad_bar_set(ntb, type);
+	if (ret) {
+		dev_err(dev, "%s intf: Peer SPAD BAR init failed\n",
+			pci_epc_interface_string(type));
+		goto err_peer_spad_bar_init;
+	}
+
+	ret = epf_ntb_configure_interrupt(ntb, type);
+	if (ret) {
+		dev_err(dev, "%s intf: Interrupt configuration failed\n",
+			pci_epc_interface_string(type));
+		goto err_peer_spad_bar_init;
+	}
+
+	ret = epf_ntb_db_mw_bar_init(ntb, type);
+	if (ret) {
+		dev_err(dev, "%s intf: DB/MW BAR init failed\n",
+			pci_epc_interface_string(type));
+		goto err_db_mw_bar_init;
+	}
+
+	ret = pci_epc_write_header(epc, func_no, epf->header);
+	if (ret) {
+		dev_err(dev, "%s intf: Configuration header write failed\n",
+			pci_epc_interface_string(type));
+		goto err_write_header;
+	}
+
+	INIT_DELAYED_WORK(&ntb->epc[type]->cmd_handler, epf_ntb_cmd_handler);
+	queue_work(kpcintb_workqueue, &ntb->epc[type]->cmd_handler.work);
+
+	return 0;
+
+err_write_header:
+	epf_ntb_db_mw_bar_cleanup(ntb, type);
+
+err_db_mw_bar_init:
+	epf_ntb_peer_spad_bar_clear(ntb->epc[type]);
+
+err_peer_spad_bar_init:
+	epf_ntb_config_sspad_bar_clear(ntb->epc[type]);
+
+	return ret;
+}
+
+/**
+ * epf_ntb_epc_cleanup_interface() - Cleanup NTB interface
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @type: PRIMARY interface or SECONDARY interface
+ *
+ * Wrapper to cleanup a particular NTB interface.
+ */
+static void epf_ntb_epc_cleanup_interface(struct epf_ntb *ntb,
+					  enum pci_epc_interface_type type)
+{
+	struct epf_ntb_epc *ntb_epc;
+
+	if (type < 0)
+		return;
+
+	ntb_epc = ntb->epc[type];
+	cancel_delayed_work(&ntb_epc->cmd_handler);
+	epf_ntb_db_mw_bar_cleanup(ntb, type);
+	epf_ntb_peer_spad_bar_clear(ntb_epc);
+	epf_ntb_config_sspad_bar_clear(ntb_epc);
+}
+
+/**
+ * epf_ntb_epc_cleanup() - Cleanup all NTB interfaces
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ * Wrapper to cleanup all NTB interfaces.
+ */
+static void epf_ntb_epc_cleanup(struct epf_ntb *ntb)
+{
+	enum pci_epc_interface_type type;
+
+	for (type = PRIMARY_INTERFACE; type <= SECONDARY_INTERFACE; type++)
+		epf_ntb_epc_cleanup_interface(ntb, type);
+}
+
+/**
+ * epf_ntb_epc_init() - Initialize all NTB interfaces
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ * Wrapper to initialize all NTB interface and start the workqueue
+ * to check for commands from host.
+ */
+static int epf_ntb_epc_init(struct epf_ntb *ntb)
+{
+	enum pci_epc_interface_type type;
+	struct device *dev;
+	int ret;
+
+	dev = &ntb->epf->dev;
+
+	for (type = PRIMARY_INTERFACE; type <= SECONDARY_INTERFACE; type++) {
+		ret = epf_ntb_epc_init_interface(ntb, type);
+		if (ret) {
+			dev_err(dev, "%s intf: Failed to initialize\n",
+				pci_epc_interface_string(type));
+			goto err_init_type;
+		}
+	}
+
+	return 0;
+
+err_init_type:
+	epf_ntb_epc_cleanup_interface(ntb, type - 1);
+
+	return ret;
+}
+
+/**
+ * epf_ntb_of_parse_mw() - Parse NTB device tree for Memory Window configuration
+ *   parameters
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ * @node: Device tree node of the NTB function
+ *
+ * Parse NTB device tree to get NTB Memory Window configuration parameters such
+ * as the number of memory window and the size of each memory window.
+ */
+static int epf_ntb_of_parse_mw(struct epf_ntb *ntb, struct device_node *node)
+{
+	struct device *dev;
+	u64 *mws_size;
+	u32 num_mws;
+	int ret;
+
+	dev = &ntb->epf->dev;
+	ret = of_property_read_u32(node, "num-mws", &num_mws);
+	if (ret) {
+		dev_err(dev, "Failed to get num-mws dt property\n");
+		return ret;
+	}
+
+	if (num_mws > MAX_MW) {
+		dev_err(dev, "Cannot support more than 4 memory window\n");
+		return ret;
+	}
+
+	mws_size = devm_kcalloc(dev, num_mws, sizeof(*mws_size), GFP_KERNEL);
+	if (!mws_size)
+		return -ENOMEM;
+
+	ret = of_property_read_u64_array(node, "mws-size", mws_size, num_mws);
+	if (ret) {
+		dev_err(dev, "Failed to get mws-size dt property\n");
+		return ret;
+	}
+
+	ntb->num_mws = num_mws;
+	ntb->mws_size = mws_size;
+
+	return 0;
+}
+
+/**
+ * epf_ntb_of_parse_mw() - Parse NTB device tree for configuration space header
+ *  and Memory Window configuration parameters
+ * @ntb: NTB device that facilitates communication between HOST1 and HOST2
+ *
+ * Parse NTB device tree to get endpoint configuration space headers like
+ * device-id, vendor-id etc., and Memory Window configuration parameters such
+ * as the number of memory window and the size of each memory window.
+ */
+static int epf_ntb_of_parse(struct epf_ntb *ntb)
+{
+	struct device_node *node;
+	struct pci_epf *epf;
+	struct device *dev;
+	int ret;
+
+	epf = ntb->epf;
+	node = epf->node;
+	dev = &epf->dev;
+
+	epf->header = &epf_ntb_header;
+	pci_epc_of_parse_header(node, epf->header);
+
+	ret = epf_ntb_of_parse_mw(ntb, node);
+	if (ret) {
+		dev_err(dev, "Invalid memory window configuration in DT\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+/**
+ * epf_ntb_probe() - Probe NTB function driver
+ * @epf: NTB endpoint function device
+ *
+ * Probe NTB function driver when endpoint function bus detects a NTB
+ * endpoint function. This allocates memory for epf_ntb and initializes
+ * both the endpoint controllers associated with NTB function device.
+ */
+static int epf_ntb_probe(struct pci_epf *epf)
+{
+	struct epf_ntb *ntb;
+	struct device *dev;
+	int ret;
+
+	dev = &epf->dev;
+
+	ntb = devm_kzalloc(dev, sizeof(*ntb), GFP_KERNEL);
+	if (!ntb)
+		return -ENOMEM;
+
+	ntb->epf = epf;
+
+	ret = epf_ntb_of_parse(ntb);
+	if (ret) {
+		dev_err(dev, "Failed to parse NTB DT node\n");
+		return ret;
+	}
+
+	ret = epf_ntb_epc_create(ntb);
+	if (ret) {
+		dev_err(dev, "Failed to create NTB EPC\n");
+		return ret;
+	}
+
+	ret = epf_ntb_init_epc_bar(ntb);
+	if (ret) {
+		dev_err(dev, "Failed to create NTB EPC\n");
+		goto err_bar_init;
+	}
+
+	ret = epf_ntb_config_spad_bar_alloc_interface(ntb);
+	if (ret) {
+		dev_err(dev, "Failed to allocate BAR memory\n");
+		goto err_bar_alloc;
+	}
+
+	ret = epf_ntb_epc_init(ntb);
+	if (ret) {
+		dev_err(dev, "Failed to initialize EPC\n");
+		goto err_bar_alloc;
+	}
+
+	epf_set_drvdata(epf, ntb);
+
+	return 0;
+
+err_bar_alloc:
+	epf_ntb_config_spad_bar_free(ntb);
+
+err_bar_init:
+	epf_ntb_epc_destroy(ntb);
+
+	return ret;
+}
+
+/**
+ * epf_ntb_remove() - Cleanup the initialization from epf_ntb_probe()
+ * @epf: NTB endpoint function device
+ *
+ * Cleanup the initialization from epf_ntb_probe()
+ */
+static int epf_ntb_remove(struct pci_epf *epf)
+{
+	struct epf_ntb *ntb = epf_get_drvdata(epf);
+
+	epf_ntb_epc_cleanup(ntb);
+	epf_ntb_config_spad_bar_free(ntb);
+	epf_ntb_epc_destroy(ntb);
+
+	return 0;
+}
+
+static const struct pci_epf_device_id epf_ntb_ids[] = {
+	{
+		.name = "pci-epf-ntb",
+	},
+	{},
+};
+
+static struct pci_epf_driver epf_ntb_driver = {
+	.driver.name	= "pci_epf_ntb",
+	.probe		= epf_ntb_probe,
+	.remove		= epf_ntb_remove,
+	.id_table	= epf_ntb_ids,
+	.owner		= THIS_MODULE,
+};
+
+static int __init epf_ntb_init(void)
+{
+	int ret;
+
+	kpcintb_workqueue = alloc_workqueue("kpcintb", WQ_MEM_RECLAIM |
+					    WQ_HIGHPRI, 0);
+	ret = pci_epf_register_driver(&epf_ntb_driver);
+	if (ret) {
+		pr_err("Failed to register pci epf ntb driver --> %d\n", ret);
+		return ret;
+	}
+
+	return 0;
+}
+module_init(epf_ntb_init);
+
+static void __exit epf_ntb_exit(void)
+{
+	pci_epf_unregister_driver(&epf_ntb_driver);
+}
+module_exit(epf_ntb_exit);
+
+MODULE_DESCRIPTION("PCI EPF NTB DRIVER");
+MODULE_AUTHOR("Kishon Vijay Abraham I <kishon@ti.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-16-kishon%40ti.com.

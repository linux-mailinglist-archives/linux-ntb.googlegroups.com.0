Return-Path: <linux-ntb+bncBCOOP4VF5IDRBWGYRD3QKGQE5M2HYGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B2291F68AA
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:06:33 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id o140sf6454035yba.16
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:06:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880792; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ZlLV/FGOfxExiTVJY29S90/K5O2yPp3v4BbPPSm7H+dHTCO2BTTd+n0Ncdcny8Jxa
         NdG6Sc80n6seAtcpU5spR8oHrqGKrnMq6/EZpZbyTweLd0PP30addRTdsr99jR5ZxXhv
         zxxkYqtivJI5y1ZyQm5gS/Gy5Kpp8GTlY0KTcv0HNVYts/tozmUUuvYg2+/ML0fBK5pW
         88IS8MV33DqrZDvY+e8DRtUceCZVMQyvEmnb4Z8TAdCMX4slyrw/LxCU86NBGM2xQoSK
         5rDrKv1zYFHKBMfvV5G6HwwBJdr/+OgDOaSHRjqq2USKau68V3zugXY3u/zpZmGk5cra
         0hfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZRX17VMUbuPVt9//xcM1Ju00dPBKGitl8sa1WiV+blE=;
        b=Z6FswYHiOKODXcwWNQ5JbtAGC4x310227zt53K9FlefLhHJ+G0qGZWFqFdMbeV+TSo
         Xo+rMhp3Vob/9EocpfZiZvY0OcWxF7F0YW/YTNOWCgos4iiRKaPAzSlgePZgZkbRn3lm
         cxTgOc3fu8b2LpDUkeIk3zSBApxuhlZliV3yV+3U4yji9KSZSzPB6UMiQh0Pxtnymm7j
         lCPakCsp7Tpi08IuJUcrfxi/IBE0NNMKXdmxGroqc1DmH31BfF8usYuwnoKlOBnwdLWS
         Mf/w9ODpWn8lDkzxGrt52vixjIOxttOs8v1mlFCKcYS3e/mi4r0UDd57vedFKMHHwfQO
         Tgmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=W+xXstnQ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZRX17VMUbuPVt9//xcM1Ju00dPBKGitl8sa1WiV+blE=;
        b=AYk6BDvEN3stcvw3qOuOJ/T3WeYdh0OFcnx2nGVU3ZqbAhB+z+ZcDNZ7WuvGuZJhvb
         wNm7CGWXxqqY5SEftPm4DYmXPalllc0wBZ7KvkoWEUExOS8f0Oxd2Ncaye0Fw845Lh7r
         h/k76x304L2qVThzd3uuTZ10D2e+/D8+3Gq7PmIdbvw3WJflSWkdJQ4yBpVKMBgRWt1v
         Q6yZT8FoEtmWeJE5y5TK+PmEEsH0hapm6zY4ebqpc0/+43vAU/YJqx3fi19khcjDezzQ
         HtY0U7gpN80uVwPNGQ3GBb75ZsdAMQyT2T/seNQC0HzhDuQJL6LMjeimKqYTxwWqYLYR
         XCQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZRX17VMUbuPVt9//xcM1Ju00dPBKGitl8sa1WiV+blE=;
        b=S5iV6LXSCGu0fKwv+VYNUS8qfb9gKoTDxsa7gsHGTNkQtYUuDeiRiQq6RaqDrrBgvw
         B3aRz56Kya+9oq2XwiUdkNklRR1B63RtUUGEb+y02V3iZUTShnJvN469rbz2S6Pc8iNs
         0MCUn7t1P29DZWkkI5I8rZ+XecyvqWqjoPXfd9Iw2Le+dSVvCnVhKhxygcheU4DwTq8p
         hc5sWLIH2OX7tTu4o7fsVWM2t1UP7gUARct2y0TtLMlRgCLevA0l0y1X23UVybi9QINh
         lfpazNHStFR9xAtCpF137FZ64jO8anAEAm8YRkoAi5h6diR+a4KnSY/hJvSTj1UrMAkz
         2E0A==
X-Gm-Message-State: AOAM531r0XAQp9vlEAenwQBcBQ8g/n0V+Pal8xYOlzrRyLiB5RIW47bD
	E50MYePHI8heImjJnHMfT5M=
X-Google-Smtp-Source: ABdhPJxjEzwYkijrMgza8pecbu6O6xp+FGnS4aLpXBdJeccNGY4zhZLG6gi/pHiUaYY1EzdGl5uicw==
X-Received: by 2002:a25:d652:: with SMTP id n79mr14547898ybg.406.1591880792480;
        Thu, 11 Jun 2020 06:06:32 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:cb07:: with SMTP id b7ls865924ybg.1.gmail; Thu, 11 Jun
 2020 06:06:32 -0700 (PDT)
X-Received: by 2002:a25:c4c5:: with SMTP id u188mr13525579ybf.418.1591880792073;
        Thu, 11 Jun 2020 06:06:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880792; cv=none;
        d=google.com; s=arc-20160816;
        b=d/qHtIOXG7rsHL+8Uxy39ys0MUTRu2vEftqrvpbZNeElH0Vomo1DSAuX/gZPEqWFzj
         nk2/jbheb+NXBNsIFnX2T7n7gjincBFWvvzg5dnDbkHCHC20MKV+iilckZQ9dMhc5pnZ
         JBYCNW+vvKMGFOdMIc5rwMZgt1b6Z7JTch5C46OG5qP9po9V2i/HLaAEM8qpcC6eIHYg
         r4VzxX0DMbItXo4yL5jLIZH2rn+iO7M2ZQORtsCp+Qhr7G+f01DezIY9cAhr9EHsLRuf
         5NXkB9zH6TIkTlUua9D33LExsdxXa2ARHD+NEtR1riRPnFprJxWhYWUdLCEfS+H3lAJV
         47yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=dnMM9hELaTPWk0dOIYQfV+aOph9sWLgJY+V8CihomoI=;
        b=t/RMjhlReQW4n54mIymjj9jtOFY5RMY2LCCBnH8m75bRMcbI5MWWLdqfmmxSD0076G
         biyjDRGQ1j+ZRtF+sJdUk9TSDYtHD1rYc9ZX2K+dmdqz4n7j+aQGoHawfg2TK5LDTLxd
         vHgPZFCpbX4ewGgRdBvHS2n5OTXwVgDC3Q661OLE8+sbXph62gPGKtZXWrqaPud8Afrx
         MiplPJELEM+xtoirbkBpYVFbfWsEgNx3j5ujaWtPnwdzQY/dXXAh8SHpdv5+dtQGvrBu
         TZGTakf9PYc7IE6/kcE5xm/iRuReDI1sYO30Dl03KOoOTS28BLVz7YddiVZMOewUGxFw
         nCKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=W+xXstnQ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id k11si323467ybb.4.2020.06.11.06.06.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:06:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD6Po3083768;
	Thu, 11 Jun 2020 08:06:25 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05BD6PcJ058740
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 08:06:25 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:06:24 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:06:24 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZD082585;
	Thu, 11 Jun 2020 08:06:20 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Jon Mason
	<jdmason@kudzu.us>,
        Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
	<allenbh@gmail.com>,
        Tom Joseph <tjoseph@cadence.com>, Rob Herring
	<robh@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>
Subject: [PATCH v2 12/14] NTB: Add support for EPF PCI-Express Non-Transparent Bridge
Date: Thu, 11 Jun 2020 18:35:23 +0530
Message-ID: <20200611130525.22746-13-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=W+xXstnQ;       spf=pass
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

Add support for EPF PCI-Express Non-Transparent Bridge (NTB) device.
This driver is platform independent and could be used by any platform
which have multiple PCIe endpoint instances configured using the
pci-epf-ntb driver. The driver connnects to the standard NTB sub-system
interface. The EPF NTB device has configurable number of memory windows
(Max 4), configurable number of doorbell (Max 32), and configurable
number of scratch-pad registers.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/ntb/hw/Kconfig          |   1 +
 drivers/ntb/hw/Makefile         |   1 +
 drivers/ntb/hw/epf/Kconfig      |   6 +
 drivers/ntb/hw/epf/Makefile     |   1 +
 drivers/ntb/hw/epf/ntb_hw_epf.c | 750 ++++++++++++++++++++++++++++++++
 5 files changed, 759 insertions(+)
 create mode 100644 drivers/ntb/hw/epf/Kconfig
 create mode 100644 drivers/ntb/hw/epf/Makefile
 create mode 100644 drivers/ntb/hw/epf/ntb_hw_epf.c

diff --git a/drivers/ntb/hw/Kconfig b/drivers/ntb/hw/Kconfig
index e77c587060ff..c325be526b80 100644
--- a/drivers/ntb/hw/Kconfig
+++ b/drivers/ntb/hw/Kconfig
@@ -2,4 +2,5 @@
 source "drivers/ntb/hw/amd/Kconfig"
 source "drivers/ntb/hw/idt/Kconfig"
 source "drivers/ntb/hw/intel/Kconfig"
+source "drivers/ntb/hw/epf/Kconfig"
 source "drivers/ntb/hw/mscc/Kconfig"
diff --git a/drivers/ntb/hw/Makefile b/drivers/ntb/hw/Makefile
index 4714d6238845..223ca592b5f9 100644
--- a/drivers/ntb/hw/Makefile
+++ b/drivers/ntb/hw/Makefile
@@ -2,4 +2,5 @@
 obj-$(CONFIG_NTB_AMD)	+= amd/
 obj-$(CONFIG_NTB_IDT)	+= idt/
 obj-$(CONFIG_NTB_INTEL)	+= intel/
+obj-$(CONFIG_NTB_EPF)	+= epf/
 obj-$(CONFIG_NTB_SWITCHTEC) += mscc/
diff --git a/drivers/ntb/hw/epf/Kconfig b/drivers/ntb/hw/epf/Kconfig
new file mode 100644
index 000000000000..6197d1aab344
--- /dev/null
+++ b/drivers/ntb/hw/epf/Kconfig
@@ -0,0 +1,6 @@
+config NTB_EPF
+	tristate "Generic EPF Non-Transparent Bridge support"
+	depends on m
+	help
+	  This driver supports EPF NTB on configurable endpoint.
+	  If unsure, say N.
diff --git a/drivers/ntb/hw/epf/Makefile b/drivers/ntb/hw/epf/Makefile
new file mode 100644
index 000000000000..2f560a422bc6
--- /dev/null
+++ b/drivers/ntb/hw/epf/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_NTB_EPF) += ntb_hw_epf.o
diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c b/drivers/ntb/hw/epf/ntb_hw_epf.c
new file mode 100644
index 000000000000..5f3fc4240d57
--- /dev/null
+++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
@@ -0,0 +1,750 @@
+// SPDX-License-Identifier: GPL-2.0
+/**
+ * Host side endpoint driver to implement Non-Transparent Bridge functionality
+ *
+ * Copyright (C) 2020 Texas Instruments
+ * Author: Kishon Vijay Abraham I <kishon@ti.com>
+ */
+
+#include <linux/delay.h>
+#include <linux/module.h>
+#include <linux/pci.h>
+#include <linux/slab.h>
+#include <linux/ntb.h>
+
+#define NTB_EPF_COMMAND		0x0
+#define CMD_CONFIGURE_DOORBELL	1
+#define CMD_TEARDOWN_DOORBELL	2
+#define CMD_CONFIGURE_MW	3
+#define CMD_TEARDOWN_MW		4
+#define CMD_LINK_UP		5
+#define CMD_LINK_DOWN		6
+
+#define NTB_EPF_ARGUMENT	0x4
+#define MSIX_ENABLE		BIT(16)
+
+#define NTB_EPF_CMD_STATUS	0x8
+#define COMMAND_STATUS_OK	1
+#define COMMAND_STATUS_ERROR	2
+
+#define NTB_EPF_LINK_STATUS	0x0A
+#define LINK_STATUS_UP		BIT(0)
+
+#define NTB_EPF_TOPOLOGY	0x0C
+#define NTB_EPF_LOWER_ADDR	0x10
+#define NTB_EPF_UPPER_ADDR	0x14
+#define NTB_EPF_LOWER_SIZE	0x18
+#define NTB_EPF_UPPER_SIZE	0x1C
+#define NTB_EPF_MW_COUNT	0x20
+#define NTB_EPF_MW1_OFFSET	0x24
+#define NTB_EPF_SPAD_OFFSET	0x28
+#define NTB_EPF_SPAD_COUNT	0x2C
+#define NTB_EPF_DB_ENTRY_SIZE	0x30
+#define NTB_EPF_DB_DATA(n)	(0x34 + (n) * 4)
+
+#define NTB_EPF_MIN_DB_COUNT	3
+#define NTB_EPF_MAX_DB_COUNT	31
+#define NTB_EPF_MW_OFFSET	2
+
+#define NTB_EPF_COMMAND_TIMEOUT	1000 /* 1 Sec */
+
+enum pci_barno {
+	BAR_0,
+	BAR_1,
+	BAR_2,
+	BAR_3,
+	BAR_4,
+	BAR_5,
+};
+
+struct ntb_epf_dev {
+	struct ntb_dev ntb;
+	struct device *dev;
+	/* Mutex to protect providing commands to NTB EPF */
+	struct mutex cmd_lock;
+
+	enum pci_barno ctrl_reg_bar;
+	enum pci_barno peer_spad_reg_bar;
+	enum pci_barno db_reg_bar;
+
+	unsigned int mw_count;
+	unsigned int spad_count;
+	unsigned int db_count;
+
+	void __iomem *ctrl_reg;
+	void __iomem *db_reg;
+	void __iomem *peer_spad_reg;
+
+	unsigned int self_spad;
+	unsigned int peer_spad;
+
+	int db_val;
+	u64 db_valid_mask;
+};
+
+#define ntb_ndev(__ntb) container_of(__ntb, struct ntb_epf_dev, ntb)
+
+struct ntb_epf_data {
+	/* BAR that contains both control region and self spad region */
+	enum pci_barno ctrl_reg_bar;
+	/* BAR that contains peer spad region */
+	enum pci_barno peer_spad_reg_bar;
+	/* BAR that contains Doorbell region and Memory window '1' */
+	enum pci_barno db_reg_bar;
+};
+
+static int ntb_epf_send_command(struct ntb_epf_dev *ndev, u32 command,
+				u32 argument)
+{
+	ktime_t timeout;
+	bool timedout;
+	int ret = 0;
+	u32 status;
+
+	mutex_lock(&ndev->cmd_lock);
+	writel(argument, ndev->ctrl_reg + NTB_EPF_ARGUMENT);
+	writel(command, ndev->ctrl_reg + NTB_EPF_COMMAND);
+
+	timeout = ktime_add_ms(ktime_get(), NTB_EPF_COMMAND_TIMEOUT);
+	while (1) {
+		timedout = ktime_after(ktime_get(), timeout);
+		status = readw(ndev->ctrl_reg + NTB_EPF_CMD_STATUS);
+
+		if (status == COMMAND_STATUS_ERROR) {
+			ret = -EINVAL;
+			break;
+		}
+
+		if (status == COMMAND_STATUS_OK)
+			break;
+
+		if (WARN_ON(timedout)) {
+			ret = -ETIMEDOUT;
+			break;
+		}
+
+		usleep_range(5, 10);
+	}
+
+	writew(0, ndev->ctrl_reg + NTB_EPF_CMD_STATUS);
+	mutex_unlock(&ndev->cmd_lock);
+
+	return ret;
+}
+
+static int ntb_epf_mw_to_bar(struct ntb_epf_dev *ndev, int idx)
+{
+	struct device *dev = ndev->dev;
+
+	if (idx < 0 || idx > ndev->mw_count) {
+		dev_err(dev, "Unsupported Memory Window index %d\n", idx);
+		return -EINVAL;
+	}
+
+	return idx + 2;
+}
+
+static int ntb_epf_mw_count(struct ntb_dev *ntb, int pidx)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	struct device *dev = ndev->dev;
+
+	if (pidx != NTB_DEF_PEER_IDX) {
+		dev_err(dev, "Unsupported Peer ID %d\n", pidx);
+		return -EINVAL;
+	}
+
+	return ndev->mw_count;
+}
+
+static int ntb_epf_mw_get_align(struct ntb_dev *ntb, int pidx, int idx,
+				resource_size_t *addr_align,
+				resource_size_t *size_align,
+				resource_size_t *size_max)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	struct device *dev = ndev->dev;
+	int bar;
+
+	if (pidx != NTB_DEF_PEER_IDX) {
+		dev_err(dev, "Unsupported Peer ID %d\n", pidx);
+		return -EINVAL;
+	}
+
+	bar = ntb_epf_mw_to_bar(ndev, idx);
+	if (bar < 0)
+		return bar;
+
+	if (addr_align)
+		*addr_align = SZ_4K;
+
+	if (size_align)
+		*size_align = 1;
+
+	if (size_max)
+		*size_max = pci_resource_len(ndev->ntb.pdev, bar);
+
+	return 0;
+}
+
+static u64 ntb_epf_link_is_up(struct ntb_dev *ntb,
+			      enum ntb_speed *speed,
+			      enum ntb_width *width)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	u32 status;
+
+	status = readw(ndev->ctrl_reg + NTB_EPF_LINK_STATUS);
+
+	return status & LINK_STATUS_UP;
+}
+
+static u32 ntb_epf_spad_read(struct ntb_dev *ntb, int idx)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	struct device *dev = ndev->dev;
+	u32 offset;
+
+	if (idx < 0 || idx >= ndev->spad_count) {
+		dev_err(dev, "READ: Invalid ScratchPad Index %d\n", idx);
+		return 0;
+	}
+
+	offset = readl(ndev->ctrl_reg + NTB_EPF_SPAD_OFFSET);
+	offset += (idx << 2);
+
+	return readl(ndev->ctrl_reg + offset);
+}
+
+static int ntb_epf_spad_write(struct ntb_dev *ntb,
+			      int idx, u32 val)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	struct device *dev = ndev->dev;
+	u32 offset;
+
+	if (idx < 0 || idx >= ndev->spad_count) {
+		dev_err(dev, "WRITE: Invalid ScratchPad Index %d\n", idx);
+		return -EINVAL;
+	}
+
+	offset = readl(ndev->ctrl_reg + NTB_EPF_SPAD_OFFSET);
+	offset += (idx << 2);
+	writel(val, ndev->ctrl_reg);
+
+	return 0;
+}
+
+static u32 ntb_epf_peer_spad_read(struct ntb_dev *ntb, int pidx, int idx)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	struct device *dev = ndev->dev;
+	u32 offset;
+
+	if (pidx != NTB_DEF_PEER_IDX) {
+		dev_err(dev, "Unsupported Peer ID %d\n", pidx);
+		return -EINVAL;
+	}
+
+	if (idx < 0 || idx >= ndev->spad_count) {
+		dev_err(dev, "WRITE: Invalid Peer ScratchPad Index %d\n", idx);
+		return -EINVAL;
+	}
+
+	offset = (idx << 2);
+	return readl(ndev->peer_spad_reg + offset);
+}
+
+static int ntb_epf_peer_spad_write(struct ntb_dev *ntb, int pidx,
+				   int idx, u32 val)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	struct device *dev = ndev->dev;
+	u32 offset;
+
+	if (pidx != NTB_DEF_PEER_IDX) {
+		dev_err(dev, "Unsupported Peer ID %d\n", pidx);
+		return -EINVAL;
+	}
+
+	if (idx < 0 || idx >= ndev->spad_count) {
+		dev_err(dev, "WRITE: Invalid Peer ScratchPad Index %d\n", idx);
+		return -EINVAL;
+	}
+
+	offset = (idx << 2);
+	writel(val, ndev->peer_spad_reg + offset);
+
+	return 0;
+}
+
+static int ntb_epf_link_enable(struct ntb_dev *ntb,
+			       enum ntb_speed max_speed,
+			       enum ntb_width max_width)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	struct device *dev = ndev->dev;
+	int ret;
+
+	ret = ntb_epf_send_command(ndev, CMD_LINK_UP, 0);
+	if (ret) {
+		dev_err(dev, "Fail to enable link\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static int ntb_epf_link_disable(struct ntb_dev *ntb)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	struct device *dev = ndev->dev;
+	int ret;
+
+	ret = ntb_epf_send_command(ndev, CMD_LINK_DOWN, 0);
+	if (ret) {
+		dev_err(dev, "Fail to disable link\n");
+		return ret;
+	}
+
+	return 0;
+}
+
+static irqreturn_t ntb_epf_vec_isr(int irq, void *dev)
+{
+	struct ntb_epf_dev *ndev = dev;
+	int irq_no;
+
+	irq_no = irq - pci_irq_vector(ndev->ntb.pdev, 0);
+	ndev->db_val = irq_no + 1;
+
+	if (irq_no == 0)
+		ntb_link_event(&ndev->ntb);
+	else
+		ntb_db_event(&ndev->ntb, irq_no);
+
+	return IRQ_HANDLED;
+}
+
+static int ntb_epf_init_isr(struct ntb_epf_dev *ndev, int msi_min, int msi_max)
+{
+	struct pci_dev *pdev = ndev->ntb.pdev;
+	struct device *dev = ndev->dev;
+	u32 argument = MSIX_ENABLE;
+	int irq;
+	int ret;
+	int i;
+
+	irq = pci_alloc_irq_vectors(pdev, msi_min, msi_max, PCI_IRQ_MSIX);
+	if (irq < 0) {
+		dev_dbg(dev, "Failed to get MSIX interrupts\n");
+		irq = pci_alloc_irq_vectors(pdev, msi_min, msi_max,
+					    PCI_IRQ_MSI);
+		if (irq < 0) {
+			dev_err(dev, "Failed to get MSI interrupts\n");
+			return irq;
+		}
+		argument &= ~MSIX_ENABLE;
+	}
+
+	for (i = 0; i < irq; i++) {
+		ret = devm_request_irq(&pdev->dev, pci_irq_vector(pdev, i),
+				       ntb_epf_vec_isr, 0, "ntb_epf", ndev);
+		if (ret) {
+			dev_err(dev, "Failed to request irq\n");
+			goto err_request_irq;
+		}
+	}
+
+	ndev->db_count = irq - 1;
+
+	ret = ntb_epf_send_command(ndev, CMD_CONFIGURE_DOORBELL,
+				   argument | irq);
+	if (ret) {
+		dev_err(dev, "Failed to configure doorbell\n");
+		goto err_configure_db;
+	}
+
+	return 0;
+
+err_configure_db:
+	for (i = 0; i < ndev->db_count + 1; i++)
+		devm_free_irq(dev, pci_irq_vector(pdev, i), ndev);
+
+err_request_irq:
+	pci_free_irq_vectors(pdev);
+
+	return ret;
+}
+
+static int ntb_epf_peer_mw_count(struct ntb_dev *ntb)
+{
+	return ntb_ndev(ntb)->mw_count;
+}
+
+static int ntb_epf_spad_count(struct ntb_dev *ntb)
+{
+	return ntb_ndev(ntb)->spad_count;
+}
+
+static u64 ntb_epf_db_valid_mask(struct ntb_dev *ntb)
+{
+	return ntb_ndev(ntb)->db_valid_mask;
+}
+
+static int ntb_epf_db_set_mask(struct ntb_dev *ntb, u64 db_bits)
+{
+	return 0;
+}
+
+static int ntb_epf_mw_set_trans(struct ntb_dev *ntb, int pidx, int idx,
+				dma_addr_t addr, resource_size_t size)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	struct device *dev = ndev->dev;
+	resource_size_t mw_size;
+	int bar;
+
+	if (pidx != NTB_DEF_PEER_IDX) {
+		dev_err(dev, "Unsupported Peer ID %d\n", pidx);
+		return -EINVAL;
+	}
+
+	bar = idx + NTB_EPF_MW_OFFSET;
+
+	mw_size = pci_resource_len(ntb->pdev, bar);
+
+	if (size > mw_size) {
+		dev_err(dev, "Size:%pa is greater than the MW size %pa\n",
+			&size, &mw_size);
+		return -EINVAL;
+	}
+
+	writel(lower_32_bits(addr), ndev->ctrl_reg + NTB_EPF_LOWER_ADDR);
+	writel(upper_32_bits(addr), ndev->ctrl_reg + NTB_EPF_UPPER_ADDR);
+	writel(lower_32_bits(size), ndev->ctrl_reg + NTB_EPF_LOWER_SIZE);
+	writel(upper_32_bits(size), ndev->ctrl_reg + NTB_EPF_UPPER_SIZE);
+	ntb_epf_send_command(ndev, CMD_CONFIGURE_MW, idx);
+
+	return 0;
+}
+
+static int ntb_epf_mw_clear_trans(struct ntb_dev *ntb, int pidx, int idx)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	struct device *dev = ndev->dev;
+	int ret = 0;
+
+	ntb_epf_send_command(ndev, CMD_TEARDOWN_MW, idx);
+	if (ret)
+		dev_err(dev, "Failed to teardown memory window\n");
+
+	return ret;
+}
+
+static int ntb_epf_peer_mw_get_addr(struct ntb_dev *ntb, int idx,
+				    phys_addr_t *base, resource_size_t *size)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	u32 offset = 0;
+	int bar;
+
+	if (idx == 0)
+		offset = readl(ndev->ctrl_reg + NTB_EPF_MW1_OFFSET);
+
+	bar = idx + NTB_EPF_MW_OFFSET;
+
+	if (base)
+		*base = pci_resource_start(ndev->ntb.pdev, bar) + offset;
+
+	if (size)
+		*size = pci_resource_len(ndev->ntb.pdev, bar) - offset;
+
+	return 0;
+}
+
+static int ntb_epf_peer_db_set(struct ntb_dev *ntb, u64 db_bits)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+	u32 interrupt_num = ffs(db_bits) + 1;
+	struct device *dev = ndev->dev;
+	u32 db_entry_size;
+	u32 db_data;
+
+	if (interrupt_num > ndev->db_count) {
+		dev_err(dev, "DB interrupt %d greater than Max Supported %d\n",
+			interrupt_num, ndev->db_count);
+		return -EINVAL;
+	}
+
+	db_entry_size = readl(ndev->ctrl_reg + NTB_EPF_DB_ENTRY_SIZE);
+
+	db_data = readl(ndev->ctrl_reg + NTB_EPF_DB_DATA(interrupt_num));
+	writel(db_data, ndev->db_reg + (db_entry_size * interrupt_num));
+
+	return 0;
+}
+
+static u64 ntb_epf_db_read(struct ntb_dev *ntb)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+
+	return ndev->db_val;
+}
+
+static int ntb_epf_db_clear_mask(struct ntb_dev *ntb, u64 db_bits)
+{
+	return 0;
+}
+
+static int ntb_epf_db_clear(struct ntb_dev *ntb, u64 db_bits)
+{
+	struct ntb_epf_dev *ndev = ntb_ndev(ntb);
+
+	ndev->db_val = 0;
+
+	return 0;
+}
+
+static const struct ntb_dev_ops ntb_epf_ops = {
+	.mw_count		= ntb_epf_mw_count,
+	.spad_count		= ntb_epf_spad_count,
+	.peer_mw_count		= ntb_epf_peer_mw_count,
+	.db_valid_mask		= ntb_epf_db_valid_mask,
+	.db_set_mask		= ntb_epf_db_set_mask,
+	.mw_set_trans		= ntb_epf_mw_set_trans,
+	.mw_clear_trans		= ntb_epf_mw_clear_trans,
+	.peer_mw_get_addr	= ntb_epf_peer_mw_get_addr,
+	.link_enable		= ntb_epf_link_enable,
+	.spad_read		= ntb_epf_spad_read,
+	.spad_write		= ntb_epf_spad_write,
+	.peer_spad_read		= ntb_epf_peer_spad_read,
+	.peer_spad_write	= ntb_epf_peer_spad_write,
+	.peer_db_set		= ntb_epf_peer_db_set,
+	.db_read		= ntb_epf_db_read,
+	.mw_get_align		= ntb_epf_mw_get_align,
+	.link_is_up		= ntb_epf_link_is_up,
+	.db_clear_mask		= ntb_epf_db_clear_mask,
+	.db_clear		= ntb_epf_db_clear,
+	.link_disable		= ntb_epf_link_disable,
+};
+
+static inline void ntb_epf_init_struct(struct ntb_epf_dev *ndev,
+				       struct pci_dev *pdev)
+{
+	ndev->ntb.pdev = pdev;
+	ndev->ntb.topo = NTB_TOPO_NONE;
+	ndev->ntb.ops = &ntb_epf_ops;
+}
+
+static int ntb_epf_init_dev(struct ntb_epf_dev *ndev)
+{
+	struct device *dev = ndev->dev;
+	int ret;
+
+	/* One Link interrupt and rest doorbell interrupt */
+	ret = ntb_epf_init_isr(ndev, NTB_EPF_MIN_DB_COUNT + 1,
+			       NTB_EPF_MAX_DB_COUNT + 1);
+	if (ret) {
+		dev_err(dev, "Failed to init ISR\n");
+		return ret;
+	}
+
+	ndev->db_valid_mask = BIT_ULL(ndev->db_count) - 1;
+	ndev->mw_count = readl(ndev->ctrl_reg + NTB_EPF_MW_COUNT);
+	ndev->spad_count = readl(ndev->ctrl_reg + NTB_EPF_SPAD_COUNT);
+
+	return 0;
+}
+
+static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
+			    struct pci_dev *pdev)
+{
+	struct device *dev = ndev->dev;
+	int ret;
+
+	pci_set_drvdata(pdev, ndev);
+
+	ret = pci_enable_device(pdev);
+	if (ret) {
+		dev_err(dev, "Cannot enable PCI device\n");
+		goto err_pci_enable;
+	}
+
+	ret = pci_request_regions(pdev, "ntb");
+	if (ret) {
+		dev_err(dev, "Cannot obtain PCI resources\n");
+		goto err_pci_regions;
+	}
+
+	pci_set_master(pdev);
+
+	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
+	if (ret) {
+		ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
+		if (ret) {
+			dev_err(dev, "Cannot set DMA mask\n");
+			goto err_dma_mask;
+		}
+		dev_warn(&pdev->dev, "Cannot DMA highmem\n");
+	}
+
+	ndev->ctrl_reg = pci_iomap(pdev, 0, 0);
+	if (!ndev->ctrl_reg) {
+		ret = -EIO;
+		goto err_dma_mask;
+	}
+
+	ndev->peer_spad_reg = pci_iomap(pdev, 1, 0);
+	if (!ndev->peer_spad_reg) {
+		ret = -EIO;
+		goto err_dma_mask;
+	}
+
+	ndev->db_reg = pci_iomap(pdev, 2, 0);
+	if (!ndev->db_reg) {
+		ret = -EIO;
+		goto err_dma_mask;
+	}
+
+	return 0;
+
+err_dma_mask:
+	pci_clear_master(pdev);
+
+err_pci_regions:
+	pci_disable_device(pdev);
+
+err_pci_enable:
+	pci_set_drvdata(pdev, NULL);
+
+	return ret;
+}
+
+static void ntb_epf_deinit_pci(struct ntb_epf_dev *ndev)
+{
+	struct pci_dev *pdev = ndev->ntb.pdev;
+
+	pci_iounmap(pdev, ndev->ctrl_reg);
+	pci_iounmap(pdev, ndev->peer_spad_reg);
+	pci_iounmap(pdev, ndev->db_reg);
+
+	pci_clear_master(pdev);
+	pci_release_regions(pdev);
+	pci_disable_device(pdev);
+	pci_set_drvdata(pdev, NULL);
+}
+
+static void ntb_epf_cleanup_isr(struct ntb_epf_dev *ndev)
+{
+	struct pci_dev *pdev = ndev->ntb.pdev;
+	struct device *dev = &pdev->dev;
+	int i;
+
+	ntb_epf_send_command(ndev, CMD_TEARDOWN_DOORBELL, ndev->db_count + 1);
+
+	for (i = 0; i < ndev->db_count + 1; i++)
+		devm_free_irq(dev, pci_irq_vector(pdev, i), ndev);
+	pci_free_irq_vectors(pdev);
+}
+
+static int ntb_epf_pci_probe(struct pci_dev *pdev,
+			     const struct pci_device_id *id)
+{
+	enum pci_barno peer_spad_reg_bar = BAR_1;
+	enum pci_barno ctrl_reg_bar = BAR_0;
+	enum pci_barno db_reg_bar = BAR_2;
+	struct device *dev = &pdev->dev;
+	struct ntb_epf_data *data;
+	struct ntb_epf_dev *ndev;
+	int ret;
+
+	if (pci_is_bridge(pdev))
+		return -ENODEV;
+
+	ndev = devm_kzalloc(dev, sizeof(*ndev), GFP_KERNEL);
+	if (!ndev)
+		return -ENOMEM;
+
+	data = (struct ntb_epf_data *)id->driver_data;
+	if (data) {
+		if (data->peer_spad_reg_bar)
+			peer_spad_reg_bar = data->peer_spad_reg_bar;
+		if (data->ctrl_reg_bar)
+			ctrl_reg_bar = data->ctrl_reg_bar;
+		if (data->db_reg_bar)
+			db_reg_bar = data->db_reg_bar;
+	}
+
+	ndev->peer_spad_reg_bar = peer_spad_reg_bar;
+	ndev->ctrl_reg_bar = ctrl_reg_bar;
+	ndev->db_reg_bar = db_reg_bar;
+	ndev->dev = dev;
+
+	ntb_epf_init_struct(ndev, pdev);
+	mutex_init(&ndev->cmd_lock);
+
+	ret = ntb_epf_init_pci(ndev, pdev);
+	if (ret) {
+		dev_err(dev, "Failed to init PCI\n");
+		return ret;
+	}
+
+	ret = ntb_epf_init_dev(ndev);
+	if (ret) {
+		dev_err(dev, "Failed to init device\n");
+		goto err_init_dev;
+	}
+
+	ret = ntb_register_device(&ndev->ntb);
+	if (ret) {
+		dev_err(dev, "Failed to register NTB device\n");
+		goto err_register_dev;
+	}
+
+	return 0;
+
+err_register_dev:
+	ntb_epf_cleanup_isr(ndev);
+
+err_init_dev:
+	ntb_epf_deinit_pci(ndev);
+
+	return ret;
+}
+
+static void ntb_epf_pci_remove(struct pci_dev *pdev)
+{
+	struct ntb_epf_dev *ndev = pci_get_drvdata(pdev);
+
+	ntb_unregister_device(&ndev->ntb);
+	ntb_epf_cleanup_isr(ndev);
+	ntb_epf_deinit_pci(ndev);
+	kfree(ndev);
+}
+
+static const struct ntb_epf_data j721e_data = {
+	.ctrl_reg_bar = BAR_0,
+	.peer_spad_reg_bar = BAR_1,
+	.db_reg_bar = BAR_2,
+};
+
+static const struct pci_device_id ntb_epf_pci_tbl[] = {
+	{
+		PCI_DEVICE(PCI_VENDOR_ID_TI, PCI_DEVICE_ID_TI_J721E),
+		.driver_data = (kernel_ulong_t)&j721e_data,
+	},
+	{ },
+};
+
+static struct pci_driver ntb_epf_pci_driver = {
+	.name		= KBUILD_MODNAME,
+	.id_table	= ntb_epf_pci_tbl,
+	.probe		= ntb_epf_pci_probe,
+	.remove		= ntb_epf_pci_remove,
+};
+module_pci_driver(ntb_epf_pci_driver);
+
+MODULE_DESCRIPTION("PCI ENDPOINT NTB HOST DRIVER");
+MODULE_AUTHOR("Kishon Vijay Abraham I <kishon@ti.com>");
+MODULE_LICENSE("GPL v2");
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-13-kishon%40ti.com.

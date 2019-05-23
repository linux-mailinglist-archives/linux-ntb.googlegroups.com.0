Return-Path: <linux-ntb+bncBD3NBC7Z7QMBBMN6TTTQKGQETKW3EYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 52C0628CF6
	for <lists+linux-ntb@lfdr.de>; Fri, 24 May 2019 00:31:15 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id g5sf5224565pfb.20
        for <lists+linux-ntb@lfdr.de>; Thu, 23 May 2019 15:31:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558650674; cv=pass;
        d=google.com; s=arc-20160816;
        b=X8Q/uipob5/WAfR1M5sRJpvJCanb9A92sRs5IsnP3Q+3gffjFygxSNELFcvTIxOmfz
         vfzSCe6rsazC1AxXJzAY2rPa/B2+FHSMZUhUTinVKOwQkSAVOcHo4PLaeAGlqBjMKn72
         ReJid1vmgbQ+k8X3pn60OPaI+VKgnORkF6l/AJOcSe4cB9lYrCGWQTKS1k99/ZXrj6j6
         iNH/rhqOrxOyrC7XjYf8n/vpVUTi2Ds0xjyTc+UXAStzgBKKKXjQ77+QswFqhsdGqvBo
         Hysu1KEyjeeM//csRdhDP/vnyTKokNtJ+iGFRnQWPp6FbRfKI6TC2eaVYGvj+YeWFFLB
         8GTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:subject:mime-version:references
         :in-reply-to:message-id:date:cc:to:from:sender:dkim-signature;
        bh=IPwjWs1CKMNEwRVIVxLZU+4PFW8hOcXnqOwOk02eHzs=;
        b=GVzvZ5sGUzOrD9aDgje9qiE3Q1EVGBfsuit1DNkgQUtTNHr2x4iO9VZC/LFyo2LRea
         UkvAKPJmUPUvhzgOLDuVu7WZ0SRXv4NeHLVEjmwMuKXdH7JYZ/rCk3aoDb49VNFPt2gl
         GA2A/d5mNxz5FDTFLffz8A1bQiW33147NqxIIVtiEO35aCIlefPP791ZUd8WFD0HvfOR
         zmKZDpDY7P/xUXNrReIZRA7/xfLezywTMmvDjBesMYccRWz/mjkoxRRQTe5v/wRybhkw
         nZ4V7qRcrE7pEi0rGcClaZsik6kPeX0KF4FjfCAZ7JB+dV/b2LCrXzB+fbNH99eNYbpk
         MtDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:date:message-id:in-reply-to:references
         :mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IPwjWs1CKMNEwRVIVxLZU+4PFW8hOcXnqOwOk02eHzs=;
        b=Ib0cnka0yPbwMpWxwqjrvmfk+dFNjCFHdzLxWX8usu/WGa/5YGGy7yBQpf2UwCH3Kn
         DZKZv4dZ3k0AlqvfBjt20Z8AWyQ9JCSX91diMEv+8SMKHD2e3rOHuH/BO1UV1A9psmRT
         qh8Z4gnbiJpTbQfK7ebWbixGCwXG5yH5NME9O4ZuE/BH2GMvLkhsDImuguBd4P19ARLt
         3G3AZVPKdiYd07hBxB05+jq1jtm6K4WCo+fWYyVCJ5960zgPyrRjK1OyY2w9uA+NcuOK
         mK6wastIDOrT5LjRbzYxiTY06HgE8/Ou99h4LvdFKYKbribK1W3Sy6Kwt4Df7AEi94Q0
         8e/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:date:message-id:in-reply-to
         :references:mime-version:subject:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IPwjWs1CKMNEwRVIVxLZU+4PFW8hOcXnqOwOk02eHzs=;
        b=SDNDv2QqZuX13Go+0MXksFGYxlKrqqXfIgG2FTFV5ysnmcUqk0kkpbNpzvmRutTPoy
         YrGWC4xaK+bz6JkiT7592dKA80Gf/nIGWH7KsP/6LWnuGmGHjTT3CJqYPvYdo0w2bGtI
         8ih4+PpQll39z+qMb47fZmICDEp6XUCHAPD3Lt6pqYoWySNmmzRm61rTjbBa/Gw3vate
         YRMZpw5HIWIVhLuk8+seHqZaNG7CiyenBEQ/s8z9GFI0b9ddq2+IyoTRCa3nFkzSUdAP
         X2pg3xtiOtofT2E3EL4fEhTpU+uoRnsLr2rhkWZaDYUKdmySAFV5lGrQrpIkjmTzKaZX
         WsFg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXTIhdQMK1CoIiDeHJ5ecuYesrK7y9DB9gcjxhSmy0O1k+DlWC2
	i8gtSTetIKX5HcPBQOllsHU=
X-Google-Smtp-Source: APXvYqzF+jFDWbq6GiyUjmuJq12vdaxw3szisjLmmoBvgUo75gJKOyJHP+KHKx6bU/amxlt4+JtKZQ==
X-Received: by 2002:a63:1460:: with SMTP id 32mr101638529pgu.319.1558650673992;
        Thu, 23 May 2019 15:31:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:24f:: with SMTP id 76ls1712209pgc.10.gmail; Thu, 23 May
 2019 15:31:13 -0700 (PDT)
X-Received: by 2002:a65:63c8:: with SMTP id n8mr2303683pgv.96.1558650673606;
        Thu, 23 May 2019 15:31:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558650673; cv=none;
        d=google.com; s=arc-20160816;
        b=QQvI/ZnSXm1ZxUIGokTHmEZwbZhxaPE2UBOihaf1m66O9WomydXI8ZSYPgQCX9X1t/
         rXn6TJ49kFdMgHOvrzw4jAKOoPHYZgUi56L4z6s3qG5NunbFN9SOqgXazfbkia1PxxFg
         KWPsBG6zOo6NzX5u5E53j+Z36CKy5eUMCTIoUAMa81wqDVCgul2su+/iSVy4y+NJTt4v
         FC2rjUX8IVxg9PwzM1k2kGTrxn8c3z91MTIlzHHh1MrZtmB4WAEf0HtFIEgsA/Obmffp
         lLeRP4yZLLYsbmyFSqnF34hLUj8L7mD8pmQAgXGoJHL9kepyhoOEazhs23L6stvUo2kT
         h+Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=subject:content-transfer-encoding:mime-version:references
         :in-reply-to:message-id:date:cc:to:from;
        bh=AJqOcb8ixAuQb3nIYUZk27BQ3/0huDRM1qRU1YzbP9M=;
        b=Y+JxmHqK+N/+6cW5fgXzP+bjvESSv4tsriN01iNX+hAPcrfpn7GiHnOoyXyzpLW7Vl
         e4Srjyyoo/5Kg6eab6fNUEEReJT+KuiaUYiMqGziU0DmTnUCo+Prw+nSkrxtnBdw94FS
         oCaPC5u8bogROZ6S98uRDHSwP9vgAFE4EPsnC1cC0UNiGgz4UWocvW/HS05uZiNEwlkV
         z4aub3UZZVH6pc6Z13A15Sdio/pPkhEvL3zmSJbprtE/lrJo6EWXUb9HYiFyhAS3aDEC
         cyXOgCJHNG1NVGHxPxP+KhW1Fjsb/ERExPLspBwm+RVvQGa7E2LKoDoGrD9QHWpSnop1
         Wn8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) smtp.mailfrom=gunthorp@deltatee.com
Received: from ale.deltatee.com (ale.deltatee.com. [207.54.116.67])
        by gmr-mx.google.com with ESMTPS id f184si69382pfb.0.2019.05.23.15.31.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 May 2019 15:31:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as permitted sender) client-ip=207.54.116.67;
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
	by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEs-00062T-Ew; Thu, 23 May 2019 16:31:12 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
	(envelope-from <gunthorp@deltatee.com>)
	id 1hTwEq-0001SK-Bk; Thu, 23 May 2019 16:31:04 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org,
	iommu@lists.linux-foundation.org,
	linux-kselftest@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>,
	Joerg Roedel <joro@8bytes.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Eric Pilmore <epilmore@gigaio.com>,
	Logan Gunthorpe <logang@deltatee.com>
Date: Thu, 23 May 2019 16:30:57 -0600
Message-Id: <20190523223100.5526-8-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190523223100.5526-1-logang@deltatee.com>
References: <20190523223100.5526-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-ntb@googlegroups.com, iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, linux-kselftest@vger.kernel.org, jdmason@kudzu.us, joro@8bytes.org, bhelgaas@google.com, dave.jiang@intel.com, allenbh@gmail.com, fancer.lancer@gmail.com, epilmore@gigaio.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
	GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH v5 07/10] NTB: Introduce NTB MSI Test Client
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-Original-Sender: logang@deltatee.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of gunthorp@deltatee.com designates 207.54.116.67 as
 permitted sender) smtp.mailfrom=gunthorp@deltatee.com
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

Introduce a tool to test NTB MSI interrupts similar to the other
NTB test tools. This tool creates a debugfs directory for each
NTB device with the following files:

port
irqX_occurrences
peerX/port
peerX/count
peerX/trigger

The 'port' file tells the user the local port number and the
'occurrences' files tell the number of local interrupts that
have been received for each interrupt.

For each peer, the 'port' file and the 'count' file tell you the
peer's port number and number of interrupts respectively. Writing
the interrupt number to the 'trigger' file triggers the interrupt
handler for the peer which should increment their corresponding
'occurrences' file. The 'ready' file indicates if a peer is ready,
writing to this file blocks until it is ready.

The module parameter num_irqs can be used to set the number of
local interrupts. By default this is 4. This is only limited by
the number of unused MSI interrupts registered by the hardware
(this will require support of the hardware driver) and there must
be at least 2*num_irqs + 1 spads registers available.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
---
 drivers/ntb/test/Kconfig        |   9 +
 drivers/ntb/test/Makefile       |   1 +
 drivers/ntb/test/ntb_msi_test.c | 433 ++++++++++++++++++++++++++++++++
 3 files changed, 443 insertions(+)
 create mode 100644 drivers/ntb/test/ntb_msi_test.c

diff --git a/drivers/ntb/test/Kconfig b/drivers/ntb/test/Kconfig
index a5d0eda44438..a3f3e2638935 100644
--- a/drivers/ntb/test/Kconfig
+++ b/drivers/ntb/test/Kconfig
@@ -25,3 +25,12 @@ config NTB_PERF
 	 to and from the window without additional software interaction.
 
 	 If unsure, say N.
+
+config NTB_MSI_TEST
+	tristate "NTB MSI Test Client"
+	depends on NTB_MSI
+	help
+	  This tool demonstrates the use of the NTB MSI library to
+	  send MSI interrupts between peers.
+
+	  If unsure, say N.
diff --git a/drivers/ntb/test/Makefile b/drivers/ntb/test/Makefile
index 9e77e0b761c2..d2895ca995e4 100644
--- a/drivers/ntb/test/Makefile
+++ b/drivers/ntb/test/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_NTB_PINGPONG) += ntb_pingpong.o
 obj-$(CONFIG_NTB_TOOL) += ntb_tool.o
 obj-$(CONFIG_NTB_PERF) += ntb_perf.o
+obj-$(CONFIG_NTB_MSI_TEST) += ntb_msi_test.o
diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
new file mode 100644
index 000000000000..99d826ed9c34
--- /dev/null
+++ b/drivers/ntb/test/ntb_msi_test.c
@@ -0,0 +1,433 @@
+// SPDX-License-Identifier: (GPL-2.0 OR BSD-3-Clause)
+
+#include <linux/module.h>
+#include <linux/debugfs.h>
+#include <linux/ntb.h>
+#include <linux/pci.h>
+#include <linux/radix-tree.h>
+#include <linux/workqueue.h>
+
+MODULE_LICENSE("Dual BSD/GPL");
+MODULE_VERSION("0.1");
+MODULE_AUTHOR("Logan Gunthorpe <logang@deltatee.com>");
+MODULE_DESCRIPTION("Test for sending MSI interrupts over an NTB memory window");
+
+static int num_irqs = 4;
+module_param(num_irqs, int, 0644);
+MODULE_PARM_DESC(num_irqs, "number of irqs to use");
+
+struct ntb_msit_ctx {
+	struct ntb_dev *ntb;
+	struct dentry *dbgfs_dir;
+	struct work_struct setup_work;
+
+	struct ntb_msit_isr_ctx {
+		int irq_idx;
+		int irq_num;
+		int occurrences;
+		struct ntb_msit_ctx *nm;
+		struct ntb_msi_desc desc;
+	} *isr_ctx;
+
+	struct ntb_msit_peer {
+		struct ntb_msit_ctx *nm;
+		int pidx;
+		int num_irqs;
+		struct completion init_comp;
+		struct ntb_msi_desc *msi_desc;
+	} peers[];
+};
+
+static struct dentry *ntb_msit_dbgfs_topdir;
+
+static irqreturn_t ntb_msit_isr(int irq, void *dev)
+{
+	struct ntb_msit_isr_ctx *isr_ctx = dev;
+	struct ntb_msit_ctx *nm = isr_ctx->nm;
+
+	dev_dbg(&nm->ntb->dev, "Interrupt Occurred: %d",
+		isr_ctx->irq_idx);
+
+	isr_ctx->occurrences++;
+
+	return IRQ_HANDLED;
+}
+
+static void ntb_msit_setup_work(struct work_struct *work)
+{
+	struct ntb_msit_ctx *nm = container_of(work, struct ntb_msit_ctx,
+					       setup_work);
+	int irq_count = 0;
+	int irq;
+	int ret;
+	uintptr_t i;
+
+	ret = ntb_msi_setup_mws(nm->ntb);
+	if (ret) {
+		dev_err(&nm->ntb->dev, "Unable to setup MSI windows: %d\n",
+			ret);
+		return;
+	}
+
+	for (i = 0; i < num_irqs; i++) {
+		nm->isr_ctx[i].irq_idx = i;
+		nm->isr_ctx[i].nm = nm;
+
+		if (!nm->isr_ctx[i].irq_num) {
+			irq = ntbm_msi_request_irq(nm->ntb, ntb_msit_isr,
+						   KBUILD_MODNAME,
+						   &nm->isr_ctx[i],
+						   &nm->isr_ctx[i].desc);
+			if (irq < 0)
+				break;
+
+			nm->isr_ctx[i].irq_num = irq;
+		}
+
+		ret = ntb_spad_write(nm->ntb, 2 * i + 1,
+				     nm->isr_ctx[i].desc.addr_offset);
+		if (ret)
+			break;
+
+		ret = ntb_spad_write(nm->ntb, 2 * i + 2,
+				     nm->isr_ctx[i].desc.data);
+		if (ret)
+			break;
+
+		irq_count++;
+	}
+
+	ntb_spad_write(nm->ntb, 0, irq_count);
+	ntb_peer_db_set(nm->ntb, BIT(ntb_port_number(nm->ntb)));
+}
+
+static void ntb_msit_desc_changed(void *ctx)
+{
+	struct ntb_msit_ctx *nm = ctx;
+	int i;
+
+	dev_dbg(&nm->ntb->dev, "MSI Descriptors Changed\n");
+
+	for (i = 0; i < num_irqs; i++) {
+		ntb_spad_write(nm->ntb, 2 * i + 1,
+			       nm->isr_ctx[i].desc.addr_offset);
+		ntb_spad_write(nm->ntb, 2 * i + 2,
+			       nm->isr_ctx[i].desc.data);
+	}
+
+	ntb_peer_db_set(nm->ntb, BIT(ntb_port_number(nm->ntb)));
+}
+
+static void ntb_msit_link_event(void *ctx)
+{
+	struct ntb_msit_ctx *nm = ctx;
+
+	if (!ntb_link_is_up(nm->ntb, NULL, NULL))
+		return;
+
+	schedule_work(&nm->setup_work);
+}
+
+static void ntb_msit_copy_peer_desc(struct ntb_msit_ctx *nm, int peer)
+{
+	int i;
+	struct ntb_msi_desc *desc = nm->peers[peer].msi_desc;
+	int irq_count = nm->peers[peer].num_irqs;
+
+	for (i = 0; i < irq_count; i++) {
+		desc[i].addr_offset = ntb_peer_spad_read(nm->ntb, peer,
+							 2 * i + 1);
+		desc[i].data = ntb_peer_spad_read(nm->ntb, peer, 2 * i + 2);
+	}
+
+	dev_info(&nm->ntb->dev, "Found %d interrupts on peer %d\n",
+		 irq_count, peer);
+
+	complete_all(&nm->peers[peer].init_comp);
+}
+
+static void ntb_msit_db_event(void *ctx, int vec)
+{
+	struct ntb_msit_ctx *nm = ctx;
+	struct ntb_msi_desc *desc;
+	u64 peer_mask = ntb_db_read(nm->ntb);
+	u32 irq_count;
+	int peer;
+
+	ntb_db_clear(nm->ntb, peer_mask);
+
+	for (peer = 0; peer < sizeof(peer_mask) * 8; peer++) {
+		if (!(peer_mask & BIT(peer)))
+			continue;
+
+		irq_count = ntb_peer_spad_read(nm->ntb, peer, 0);
+		if (irq_count == -1)
+			continue;
+
+		desc = kcalloc(irq_count, sizeof(*desc), GFP_ATOMIC);
+		if (!desc)
+			continue;
+
+		kfree(nm->peers[peer].msi_desc);
+		nm->peers[peer].msi_desc = desc;
+		nm->peers[peer].num_irqs = irq_count;
+
+		ntb_msit_copy_peer_desc(nm, peer);
+	}
+}
+
+static const struct ntb_ctx_ops ntb_msit_ops = {
+	.link_event = ntb_msit_link_event,
+	.db_event = ntb_msit_db_event,
+};
+
+static int ntb_msit_dbgfs_trigger(void *data, u64 idx)
+{
+	struct ntb_msit_peer *peer = data;
+
+	if (idx >= peer->num_irqs)
+		return -EINVAL;
+
+	dev_dbg(&peer->nm->ntb->dev, "trigger irq %llu on peer %u\n",
+		idx, peer->pidx);
+
+	return ntb_msi_peer_trigger(peer->nm->ntb, peer->pidx,
+				    &peer->msi_desc[idx]);
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(ntb_msit_trigger_fops, NULL,
+			 ntb_msit_dbgfs_trigger, "%llu\n");
+
+static int ntb_msit_dbgfs_port_get(void *data, u64 *port)
+{
+	struct ntb_msit_peer *peer = data;
+
+	*port = ntb_peer_port_number(peer->nm->ntb, peer->pidx);
+
+	return 0;
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(ntb_msit_port_fops, ntb_msit_dbgfs_port_get,
+			 NULL, "%llu\n");
+
+static int ntb_msit_dbgfs_count_get(void *data, u64 *count)
+{
+	struct ntb_msit_peer *peer = data;
+
+	*count = peer->num_irqs;
+
+	return 0;
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(ntb_msit_count_fops, ntb_msit_dbgfs_count_get,
+			 NULL, "%llu\n");
+
+static int ntb_msit_dbgfs_ready_get(void *data, u64 *ready)
+{
+	struct ntb_msit_peer *peer = data;
+
+	*ready = try_wait_for_completion(&peer->init_comp);
+
+	return 0;
+}
+
+static int ntb_msit_dbgfs_ready_set(void *data, u64 ready)
+{
+	struct ntb_msit_peer *peer = data;
+
+	return wait_for_completion_interruptible(&peer->init_comp);
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(ntb_msit_ready_fops, ntb_msit_dbgfs_ready_get,
+			 ntb_msit_dbgfs_ready_set, "%llu\n");
+
+static int ntb_msit_dbgfs_occurrences_get(void *data, u64 *occurrences)
+{
+	struct ntb_msit_isr_ctx *isr_ctx = data;
+
+	*occurrences = isr_ctx->occurrences;
+
+	return 0;
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(ntb_msit_occurrences_fops,
+			 ntb_msit_dbgfs_occurrences_get,
+			 NULL, "%llu\n");
+
+static int ntb_msit_dbgfs_local_port_get(void *data, u64 *port)
+{
+	struct ntb_msit_ctx *nm = data;
+
+	*port = ntb_port_number(nm->ntb);
+
+	return 0;
+}
+
+DEFINE_DEBUGFS_ATTRIBUTE(ntb_msit_local_port_fops,
+			 ntb_msit_dbgfs_local_port_get,
+			 NULL, "%llu\n");
+
+static void ntb_msit_create_dbgfs(struct ntb_msit_ctx *nm)
+{
+	struct pci_dev *pdev = nm->ntb->pdev;
+	char buf[32];
+	int i;
+	struct dentry *peer_dir;
+
+	nm->dbgfs_dir = debugfs_create_dir(pci_name(pdev),
+					   ntb_msit_dbgfs_topdir);
+	debugfs_create_file("port", 0400, nm->dbgfs_dir, nm,
+			    &ntb_msit_local_port_fops);
+
+	for (i = 0; i < ntb_peer_port_count(nm->ntb); i++) {
+		nm->peers[i].pidx = i;
+		nm->peers[i].nm = nm;
+		init_completion(&nm->peers[i].init_comp);
+
+		snprintf(buf, sizeof(buf), "peer%d", i);
+		peer_dir = debugfs_create_dir(buf, nm->dbgfs_dir);
+
+		debugfs_create_file_unsafe("trigger", 0200, peer_dir,
+					   &nm->peers[i],
+					   &ntb_msit_trigger_fops);
+
+		debugfs_create_file_unsafe("port", 0400, peer_dir,
+					   &nm->peers[i], &ntb_msit_port_fops);
+
+		debugfs_create_file_unsafe("count", 0400, peer_dir,
+					   &nm->peers[i],
+					   &ntb_msit_count_fops);
+
+		debugfs_create_file_unsafe("ready", 0600, peer_dir,
+					   &nm->peers[i],
+					   &ntb_msit_ready_fops);
+	}
+
+	for (i = 0; i < num_irqs; i++) {
+		snprintf(buf, sizeof(buf), "irq%d_occurrences", i);
+		debugfs_create_file_unsafe(buf, 0400, nm->dbgfs_dir,
+					   &nm->isr_ctx[i],
+					   &ntb_msit_occurrences_fops);
+	}
+}
+
+static void ntb_msit_remove_dbgfs(struct ntb_msit_ctx *nm)
+{
+	debugfs_remove_recursive(nm->dbgfs_dir);
+}
+
+static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
+{
+	struct ntb_msit_ctx *nm;
+	size_t struct_size;
+	int peers;
+	int ret;
+
+	peers = ntb_peer_port_count(ntb);
+	if (peers <= 0)
+		return -EINVAL;
+
+	if (ntb_spad_is_unsafe(ntb) || ntb_spad_count(ntb) < 2 * num_irqs + 1) {
+		dev_err(&ntb->dev, "NTB MSI test requires at least %d spads for %d irqs\n",
+			2 * num_irqs + 1, num_irqs);
+		return -EFAULT;
+	}
+
+	ret = ntb_spad_write(ntb, 0, -1);
+	if (ret) {
+		dev_err(&ntb->dev, "Unable to write spads: %d\n", ret);
+		return ret;
+	}
+
+	ret = ntb_db_clear_mask(ntb, GENMASK(peers - 1, 0));
+	if (ret) {
+		dev_err(&ntb->dev, "Unable to clear doorbell mask: %d\n", ret);
+		return ret;
+	}
+
+	ret = ntb_msi_init(ntb, ntb_msit_desc_changed);
+	if (ret) {
+		dev_err(&ntb->dev, "Unable to initialize MSI library: %d\n",
+			ret);
+		return ret;
+	}
+
+	struct_size = sizeof(*nm) + sizeof(*nm->peers) * peers;
+
+	nm = devm_kzalloc(&ntb->dev, struct_size, GFP_KERNEL);
+	if (!nm)
+		return -ENOMEM;
+
+	nm->isr_ctx = devm_kcalloc(&ntb->dev, num_irqs, sizeof(*nm->isr_ctx),
+				   GFP_KERNEL);
+	if (!nm->isr_ctx)
+		return -ENOMEM;
+
+	INIT_WORK(&nm->setup_work, ntb_msit_setup_work);
+	nm->ntb = ntb;
+
+	ntb_msit_create_dbgfs(nm);
+
+	ret = ntb_set_ctx(ntb, nm, &ntb_msit_ops);
+	if (ret)
+		goto remove_dbgfs;
+
+	if (!nm->isr_ctx)
+		goto remove_dbgfs;
+
+	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
+
+	return 0;
+
+remove_dbgfs:
+	ntb_msit_remove_dbgfs(nm);
+	devm_kfree(&ntb->dev, nm->isr_ctx);
+	devm_kfree(&ntb->dev, nm);
+	return ret;
+}
+
+static void ntb_msit_remove(struct ntb_client *client, struct ntb_dev *ntb)
+{
+	struct ntb_msit_ctx *nm = ntb->ctx;
+	int i;
+
+	ntb_link_disable(ntb);
+	ntb_db_set_mask(ntb, ntb_db_valid_mask(ntb));
+	ntb_msi_clear_mws(ntb);
+
+	for (i = 0; i < ntb_peer_port_count(ntb); i++)
+		kfree(nm->peers[i].msi_desc);
+
+	ntb_clear_ctx(ntb);
+	ntb_msit_remove_dbgfs(nm);
+}
+
+static struct ntb_client ntb_msit_client = {
+	.ops = {
+		.probe = ntb_msit_probe,
+		.remove = ntb_msit_remove
+	}
+};
+
+static int __init ntb_msit_init(void)
+{
+	int ret;
+
+	if (debugfs_initialized())
+		ntb_msit_dbgfs_topdir = debugfs_create_dir(KBUILD_MODNAME,
+							   NULL);
+
+	ret = ntb_register_client(&ntb_msit_client);
+	if (ret)
+		debugfs_remove_recursive(ntb_msit_dbgfs_topdir);
+
+	return ret;
+}
+module_init(ntb_msit_init);
+
+static void __exit ntb_msit_exit(void)
+{
+	ntb_unregister_client(&ntb_msit_client);
+	debugfs_remove_recursive(ntb_msit_dbgfs_topdir);
+}
+module_exit(ntb_msit_exit);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190523223100.5526-8-logang%40deltatee.com.
For more options, visit https://groups.google.com/d/optout.

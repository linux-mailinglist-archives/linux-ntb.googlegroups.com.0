Return-Path: <linux-ntb+bncBCOOP4VF5IDRBCMDQH5QKGQEHAJP5ZQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3780D269D07
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:22:34 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id e202sf775852vsc.4
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:22:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143753; cv=pass;
        d=google.com; s=arc-20160816;
        b=EoyG6769Sg/ceQhhw+TpPGWFiYvQfA9JjJB5U4E9C7RyO+m17CIRp9tmEpXBTN2T1i
         rsE2A+XT+9KfgXxlYNJpiNR7oQ7PHo1H9Jmpu9l14zOg2mn4EZ6OvwxPaM504g8XOwrV
         RXXBi6HBqBX0hvL4JuSrcIzVkR85EYikQxdgqKlFNjssN3WYipmEjojwyCoHUq0WO8Dk
         2TKhFQcptB4IpXyYUEAGxUQNcbuHeUdHf6fKJm/nGmPGv40fKvfcNDv9hT+h4YB3lS5I
         26HN3zgLLOhkvVVP2SYsQG5QQm3aCQz48V505blGwiMmo+yCgtmtcmgTdJD9xWJqqTZD
         H/mg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=75xx0TjrQFwVdC3G827mUovK8k2VhfTtWvdCtbHeQ7Y=;
        b=kE/WCmLfokS1Mtd1dp62HpHFdH5YMK7Me777Hm1dz9r1erI+zDDFvDjtIFWBshlSIN
         WzgGTeBEztjwMVjHcMZpJuSP98Mw3/JAA2y1jsAr/YzOx1BqOuPQfkcSLNIQoaJCov5P
         549OQFB6n/MEosq/mMcQRDCM5lPN9bwuLoswU8j7fTffygCuL7omL5At0YO706284R7x
         K9fe9alynDU60/qdKZ57FhJYpRcEDme9EoBz29RaNoopVuQomNlwM+amsBpX2SQkwC+K
         vQCOsvXxi/eKxGM0PF/RBal8gro9KmPog3T7qjzfF7d9oTdEtR8OxGyc7Bm2U3DIwFn7
         NjWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=h4F6QKnq;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=75xx0TjrQFwVdC3G827mUovK8k2VhfTtWvdCtbHeQ7Y=;
        b=UnkTGCSPJeLewHCi24MsbzUPvrIjL5Kxd3IUKt1+bLR5O1XUSG26GpTcTAPduPQzqI
         zoekdO13H5e/ODIrBuc4QkOGesRw3pTd9PiF4kc1aV/QAzs4r0PNq4SUfhAmPEYMIIiL
         zyEMkdhUJJnhFR00uk+5k9YnJW/WABzEn6HytJMVLloeZlbmmH0LcsmtTUktluF6z0JT
         NUCnav7/fnWGaGx7+ErecHvvcR5WNAOtWq+CIV1S71V81bP98U4rSIkS61PPAkXOs5UV
         wHB6Atf52t5mRO212zPkXM/1LxrKXqny7IXi3OXMcXHlP32+obLzzWkzQtlUZJpokNGs
         fq/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75xx0TjrQFwVdC3G827mUovK8k2VhfTtWvdCtbHeQ7Y=;
        b=my6KEsArigt3R1YyFuaNU/Wd7G5+qORnssiA2Tk34US82qustOl7i5ACAYeyfPmEMF
         z/CRzcpDXyL2d5VDScJd+u/9b4Z0087WK9NDtjjZsNe1051z6/7bWusjgy7122XRbvca
         CjdTRxWCln6CGqlnn4ZpgGv6Q3z7+tXkfdwTHlsdDcZIiHDJsD3JYznCLypqzQy5fwao
         7f97cUyfPDWqdi5t16GE/6yDNoSXKOgXyK+ab6H0gg8Vnv2G/icp9CpxCbKGFknXDszz
         yzmGy5K2qZgi7Wf+o4cYXCeD4W4GY05YWAhzZCLUC2MA9QJ4ZOmrTq/+holUdcUi+zPD
         VryQ==
X-Gm-Message-State: AOAM533NtyPGFXChC4489fRLaQHvSwjD2EcruwtkLVeNKEY/sa9EQ1pD
	5/ihIHym0R2IclXF9Q1QN98=
X-Google-Smtp-Source: ABdhPJzV+aZOKuKytFsAG6RUd9R6WezfyHgSBLuNWtCe2cEKRz/pX4FMFwXWJKDxhB0R+r99yYxKLA==
X-Received: by 2002:ab0:1450:: with SMTP id c16mr8375906uae.27.1600143753276;
        Mon, 14 Sep 2020 21:22:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:3602:: with SMTP id d2ls574174vka.0.gmail; Mon, 14 Sep
 2020 21:22:32 -0700 (PDT)
X-Received: by 2002:a1f:434b:: with SMTP id q72mr8801689vka.5.1600143752721;
        Mon, 14 Sep 2020 21:22:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143752; cv=none;
        d=google.com; s=arc-20160816;
        b=kHq+ZJe1MugKYNIA/r/jdZl/xOlOQZi/JqUOo4u70uCRnB/3ILRR2/ZZkKOA/LhCeC
         36xPgt+BbNuYMc2VlnxCL0o5LaXhiwYgt8ylYOPN6VeJI4uY/rFs+YEcVdWt+7KnLTVi
         BYJ5ISdafbVL41PjjVFauOW1OMstUaCdJ5OvFZ54Gd2FYEbaLxYs6y2lRc6ssKEmcoea
         lc+j470lSFZFFHbGufNJ70NNK3nLCNPZsV/+unlHF7p1XCVE8NOpAOs0SibzFVMrC/vH
         7F54vW4ifLHpRgzeX0U06i3hMiieoCPLw3zG1+oV3u/+fLQ+27YXeLgb4ynlPo6I+qFS
         1vkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=27xJ9Q8zqn3uZRTDxUZ4FVw6OjM6K5CJr8HiYB/90+k=;
        b=kMA0eFkafsC67fSsFrTysRJHouEOowVHwaJIIY6ltosIjrnpsPb4mMgBmsfUShD3WS
         4Y5FH9TkS7KjEPO0Gxm+BbxgrgiROBEm8T5RO3YxgxkBWhWu8eyPRxC3K4w6tyunc87R
         4SWzUD2Ot0bmOCxm6ryZWqoBfQLTupXWxUPFUKIce+9cLaDAm3xxFx28lo5hF/b0Dudq
         QdKZJk1Kq9bB8ZyCB6Cw70zEI+ilJ921+w8I09bUN0/y4nNbnc7CijG3pDL68DCGc9js
         JMQu07zwv1uhwor/AzcvEVg7fT9owcm1oJZJWn/2ewqpvs1VNPtW3l7FMtG/Btz9s5bj
         wpRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=h4F6QKnq;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id y65si890756vkf.1.2020.09.14.21.22.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:22:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4MPjT026941;
	Mon, 14 Sep 2020 23:22:25 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4MPmO044106
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:22:25 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:22:24 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:22:25 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMo028615;
	Mon, 14 Sep 2020 23:22:20 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>, Rob
 Herring <robh@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Tom Joseph <tjoseph@cadence.com>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, Kishon Vijay
 Abraham I <kishon@ti.com>
Subject: [PATCH v4 08/17] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Tue, 15 Sep 2020 09:51:01 +0530
Message-ID: <20200915042110.3015-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=h4F6QKnq;       spf=pass
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

Add pci_epc_ops to map physical address to MSI address and return MSI
data. The physical address is an address in the outbound region. This is
required to implement doorbell functionality of NTB (non transparent
bridge) wherein EPC on either side of the interface (primary and
secondary) can directly write to the physical address (in outbound
region) of the other interface to ring doorbell using MSI.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 40 +++++++++++++++++++++++++++++
 include/linux/pci-epc.h             |  7 +++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 0f6e2364ae6f..73f9ff425824 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -230,6 +230,46 @@ int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no,
 }
 EXPORT_SYMBOL_GPL(pci_epc_raise_irq);
 
+/**
+ * pci_epc_map_msi_irq() - Map physical address to MSI address and return
+ *                         MSI data
+ * @epc: the EPC device which has the MSI capability
+ * @func_no: the physical endpoint function number in the EPC device
+ * @vfunc_no: the virtual endpoint function number in the physical function
+ * @phys_addr: the physical address of the outbound region
+ * @interrupt_num: the MSI interrupt number
+ * @entry_size: Size of Outbound address region for each interrupt
+ * @msi_data: the data that should be written in order to raise MSI interrupt
+ *            with interrupt number as 'interrupt num'
+ *
+ * Invoke to map physical address to MSI address and return MSI data. The
+ * physical address should be an address in the outbound region. This is
+ * required to implement doorbell functionality of NTB wherein EPC on either
+ * side of the interface (primary and secondary) can directly write to the
+ * physical address (in outbound region) of the other interface to ring
+ * doorbell.
+ */
+int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+			phys_addr_t phys_addr, u8 interrupt_num, u32 entry_size,
+			u32 *msi_data)
+{
+	int ret;
+
+	if (IS_ERR_OR_NULL(epc))
+		return -EINVAL;
+
+	if (!epc->ops->map_msi_irq)
+		return -EINVAL;
+
+	mutex_lock(&epc->lock);
+	ret = epc->ops->map_msi_irq(epc, func_no, vfunc_no, phys_addr,
+				    interrupt_num, entry_size, msi_data);
+	mutex_unlock(&epc->lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(pci_epc_map_msi_irq);
+
 /**
  * pci_epc_get_msi() - get the number of MSI interrupt numbers allocated
  * @epc: the EPC device to which MSI interrupts was requested
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index d9cb3944fb87..88284f3a0698 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -55,6 +55,7 @@ pci_epc_interface_string(enum pci_epc_interface_type type)
  * @get_msix: ops to get the number of MSI-X interrupts allocated by the RC
  *	     from the MSI-X capability register
  * @raise_irq: ops to raise a legacy, MSI or MSI-X interrupt
+ * @map_msi_irq: ops to map physical address to MSI address and return MSI data
  * @start: ops to start the PCI link
  * @stop: ops to stop the PCI link
  * @owner: the module owner containing the ops
@@ -77,6 +78,9 @@ struct pci_epc_ops {
 	int	(*get_msix)(struct pci_epc *epc, u8 func_no);
 	int	(*raise_irq)(struct pci_epc *epc, u8 func_no,
 			     enum pci_epc_irq_type type, u16 interrupt_num);
+	int	(*map_msi_irq)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+			       phys_addr_t phys_addr, u8 interrupt_num,
+			       u32 entry_size, u32 *msi_data);
 	int	(*start)(struct pci_epc *epc);
 	void	(*stop)(struct pci_epc *epc);
 	const struct pci_epc_features* (*get_features)(struct pci_epc *epc,
@@ -216,6 +220,9 @@ int pci_epc_get_msi(struct pci_epc *epc, u8 func_no);
 int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts,
 		     enum pci_barno, u32 offset);
 int pci_epc_get_msix(struct pci_epc *epc, u8 func_no);
+int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no,
+			phys_addr_t phys_addr, u8 interrupt_num,
+			u32 entry_size, u32 *msi_data);
 int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no,
 		      enum pci_epc_irq_type type, u16 interrupt_num);
 int pci_epc_start(struct pci_epc *epc);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-9-kishon%40ti.com.

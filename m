Return-Path: <linux-ntb+bncBCOOP4VF5IDRBRWYRD3QKGQE646X7EY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E83E51F6897
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:06:15 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id e20sf6451954ybc.23
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:06:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880775; cv=pass;
        d=google.com; s=arc-20160816;
        b=ctKf3oev5VzMKVtxMk1NnEoB2XF3QwtdQBWYmXSvXySokBzCDxOiu9HS01KS2hlNa5
         g8E3Uf3C/RepaGTyUdjFpfx5gEbaR+26EjfKf+lxgiINa9NnpMXtcze+R5lp/T5gO41C
         doTsHS+9eKU5lVqueYdT5KgycEtsKJZxLq0BsnQQtbcRkDlgfcc9xUOd1LARZS7LQUf9
         N3hVeVeWP92hM87zczYwpX0g+W27Ia5tPXut0i/mrGY5iIB6jL9oMM2joB/r0gob8Bfn
         NKoPl8aqI89m/pfG+ieSQKODZXNwB4Ce2rlsAUmqZjHQ6ROGdUv81I/FWdI3W0GSzUr4
         gnVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=TbcMlO28vvTY5ARIXyw2COcLEqmlEe1syKw/Ryb93Do=;
        b=VC2D/vmGMfUlqxeKsNHgZiVv4A8LZP7jY7I/nvURqqF41q3Mhc3nWGCxfVwpR6gA9c
         aaDvGonbBF0iXDe06B1mHrrajvR3dLS/C1R1XiM2FDpA0fPtVhGNODUNSh20wT/JI56O
         LCpD7OahUTTGdd4qsrf+xugOScNk8/DGdRBvWqzfZZei+PK7lhvEi8fwciK4qyQQANa7
         uGwZxNhHVarl6i5yB3sCsiRWhRq3gS+j5Io17stH+Vsmwgec9B8us1z2+xXXsIPuMaTn
         kVFYoTVMBsPVwKFc8j5UP3KkCdzo2e+KeS2jXdqDPsaGika/7y0177ujm2CQTWbCmOGW
         KIqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="XZg/HI1B";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TbcMlO28vvTY5ARIXyw2COcLEqmlEe1syKw/Ryb93Do=;
        b=pFuCc2Nr8jvCqxaJNz+Rd63hxo5JzmK+m4cQbEvrBqc+Lsh/TtuE6snvluYkiAXeJe
         0kw6AvHMwiiYIl59f5oTSS/j/q/ONqGGauFO2EynJMtBMjp2/CkAuk1zdXMYhGlHYKBc
         rva93ROT779LmT8aoeXnBUpYJlyTYi9DfoSStqGYQw4QpWIQsr8/PvseA5MJd3aeJ3tE
         Mgwp2z5yaVCQjmH5xZKJqxffs3rXCs/MwF0IWyhqNvY37os/LNx1md4HRiKt2LuTXuYh
         oTJnIs1hi7+m1MYl8N+Auv0XbPMK2/ALO3LifaEEpdqErc5MnIKroXC0CeiX23AE29b8
         rSqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TbcMlO28vvTY5ARIXyw2COcLEqmlEe1syKw/Ryb93Do=;
        b=n3MeIVJ6RNvafsDS+5H4WRdFR1s53qAbXWDqX+GROT21EIlvHLX8QW70B436vFYXu8
         VSsSbC3zCWMWfQjmMr7si+2ABVT7apPt1g/StXhB/kxubCJgiffFTEuDMYqtfxbZjEtU
         wdm/FCDrC2f5q/rZ8vSXlyVIkg/q9iVm/UwfUCtQMXP2p+8g27E/ftzQ8kvbc5R7T0uC
         sPIrK7+LusTlYqIK7BTEZ67pw2SjMMnRdaPmOFK+P3PA1JRz0tk5naO5mCtH5JikmdoR
         kj0sYwvpwrKpdrmyJDTmdvTaI3G8MTRCFE56M+RNFiwnjwdLPzMzLseNkTHIU3/mIsOd
         AMaA==
X-Gm-Message-State: AOAM533Wr4HOadEdVZfUpJgu08FbDF4eO7fm1w7K46Oi/nxRmLTjR4gI
	ArV8F76GPcWlc8FmfNJwXCY=
X-Google-Smtp-Source: ABdhPJyB/BEmzaXdOT8NDTdLePt1i2fYNmhPn1B0yxQTIcpY2b/omvCYkpXhdJk0pvIKhzjVjUSYWw==
X-Received: by 2002:a25:be05:: with SMTP id h5mr10014253ybk.131.1591880774838;
        Thu, 11 Jun 2020 06:06:14 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:4192:: with SMTP id o140ls854474yba.9.gmail; Thu, 11 Jun
 2020 06:06:14 -0700 (PDT)
X-Received: by 2002:a5b:bc6:: with SMTP id c6mr14446823ybr.302.1591880774429;
        Thu, 11 Jun 2020 06:06:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880774; cv=none;
        d=google.com; s=arc-20160816;
        b=k2PS84ERXIrDtLNGERY4wWeq1LvrsQuKoVpDl5HiYX4SeCqZJm0A4Hbq/G2cYW/vyS
         An8PxsjWLjZOKa47w+4DV72BEpth1JzWIelzlCgNnkUi8YR7pkxPYwuNy5CryJEHzosG
         M3loelVf5Slsk3v8vrvSDx1JQHR954+OvyE5GfrU0YYvtGUEZWALSL6yrbBm2KPSxrb/
         A2mfFvR/X8TGYB1i7J7ATsCFnkNU8smDH/ClbwMBDz9bXL56l0fKkrrTkLG6hRj2ekyO
         59EWnvoVtwOAaR5R5EhEH87jmXOUsgh5KDEqB+zsEeRsdV4gjTL7IaPP9VLa/7w0rPhZ
         7rAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=PHf7RtHwx7sTtCOt/f12p6YpG0hQWMa5+c9CG1g6ylY=;
        b=Yn+UiqTV2rGjImBhc1YclUg8iG6u2wFCIVZy3e3jngN4oDnGMMGRw/RIIlihpSioB0
         v5kAM2vJar/3N1Nkb+5XAT7qJ1ReQEwMVrDrVzarnb1is+xdV4FOWzgEGwR6Jo0aMB/U
         QZDuBHtya5YNn8cvFCku49FjmwBV5IFKzc+CAXGKxT3phnD6dtFne/dO/zJ2rUr2pRGI
         G14C4q91VmkdOUIhaKcepruhNz5s/h7LsMY9tp3Ox0f3/lqB8UbJ/ayOZsJQ4Y23n2Ij
         hR4amstsLK4kCeNv6O6BA/d2cT1LYYGckDxR6JhgbUuTrRxTj6cmlNGTUk6WcQ2I0mOK
         5M+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="XZg/HI1B";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id n82si311831ybc.3.2020.06.11.06.06.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:06:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD67Pc085441;
	Thu, 11 Jun 2020 08:06:07 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05BD67Er081717
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 08:06:07 -0500
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:06:06 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:06:06 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZ9082585;
	Thu, 11 Jun 2020 08:06:02 -0500
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
Subject: [PATCH v2 08/14] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Thu, 11 Jun 2020 18:35:19 +0530
Message-ID: <20200611130525.22746-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="XZg/HI1B";       spf=pass
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
index 3e6efade08d0..ce012c6a2cec 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-9-kishon%40ti.com.

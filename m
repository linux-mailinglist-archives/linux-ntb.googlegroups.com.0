Return-Path: <linux-ntb+bncBCOOP4VF5IDRBS6YRD3QKGQESCGH5ZA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C171F68A2
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:06:20 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id w12sf4313553qvh.13
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:06:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880779; cv=pass;
        d=google.com; s=arc-20160816;
        b=eYkySoTIerOhghF6nJYwSwmdBjpEqWMLi0EX6Qx8ZVlkjFKdw9tU467RRhNwAHmnz6
         1ByLEbiCPX3Wz3yrHYZBNLdDXJ3Zi+vR4vqPMH2nHnyFdImI013xYaEaw6MQmd1axYb4
         YL9W6r3CckAk590TNj8xunndiIV5xmkgS3DcPDocZW2mCYjqB4kdTHXTuZNlws2hi147
         SUObKIlBb2bmDPRO+wjuu4MD6/TpOpv9h2vhL/i4tlg0smSuei5IRFSsKZ4c7Gt0jkW/
         hQS4HRG8MUcDXtADr7HpagD2xo9UlysqT5wSatCeoxVQFnZsjwMoHv7bct82w8Yulry4
         gd0Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=iIJc9u8YZi/6Av3DbULER+5aSbpoMxgobPx5N9NRuK8=;
        b=Ywz05Tzu08OguvzlJg+zSwLeCVGJuacwktQtTENdh3sepiaZRWeSnQjX9aaNJiiseN
         8+ncO256nc5iUL6s4W/dVgaYpqiqXeZsmpdOLZAt56HjslnesnjgaxBI7Rc/AFehKPx1
         0gQkyj6VD1hODQMz6QItOcx5yb2DZZmH/H7nWeL0ZZ/7X0dx7DnrMNk+C79rgUmWeCS4
         9NO0nIQKdLsShFb5U7LsehLL83U5TgMh3q8E1IiSARaP5xkZHSQsNl8CCXskEJmGHCfb
         HXsWdat0vglDrkm50RyfTDiRwyHNYyEOaqxXZGhz0Ikb/9ClRnOA4xpWh4YUlKR7f34C
         WKHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vvB5yJNN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iIJc9u8YZi/6Av3DbULER+5aSbpoMxgobPx5N9NRuK8=;
        b=GLsghiE35/BiisgtpCKrw1TLsRSAUOsaXdx4eihEVMYrKXV97j1raJTICbfLm69cXo
         U4Jn6+Qg9n3EsQ1S/x5/Zf5dZWDRBnEaClQTDLaDmVfBQNhx1KkVoKd3LHBvnXHLutlj
         yaLbNWW/w2dWKbkVa/FndMQoNPMEhXM/d6KzVtp42loxOtgy0zo+NeaoMKEEhfkF4Tec
         RtBnVq5SQR++M2a7Xdwzmqmbz/73uI8VYLEpe50S3T10rbri3WAD8qnwQGq6UGexHzxj
         7flQzax7xgR8r2Aa1Keczhx0EI1oDCci/IiLQlNQWGSQBdpynYFfSwpiRROyq2uVWBWs
         Ii4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iIJc9u8YZi/6Av3DbULER+5aSbpoMxgobPx5N9NRuK8=;
        b=gh6nPvrOd1HybkUeSXjsZ9Hygy2AfNoxk4CUMWFvvxRuD8JuscyWVjmmxHe6w3u2dI
         qObEdq6t+2+mbEG942liiAIW0Wt+XIc+a3iX0iEVgNkNDqoHlCmLPncuiVRb8in69EjV
         +wmvmk/WmBaUmbXOdnT5BqQ5Yar4Z6Mr9vXWMwbouzrmUxhM1ZxWLcEiNYFGbBy4/4Sj
         8SqBvDrC3wMwss/oJtUUmoUc6Owt5myvFuiRUc95M4c10Fn7qMWQ1a00g5p22bkc3dA5
         HF67bh8b7cC268kys2L6NpjqT0TVTiaTJgAIwZ3cYGN59+cujZGJRix5iHszBQfBFlhy
         jU3g==
X-Gm-Message-State: AOAM531WyPg6eWdrwvn5N82upjR+q7fu5zHp/dj5TnFHLGnFSekkSrXR
	86wHwcEdV0l+E8hAF1es/js=
X-Google-Smtp-Source: ABdhPJyNBqNNMpBqGGZzxqVRmVI7vZnabGUw+mur5RUeGYpENgmrPF7uJawMbOuIQHXZ8zKhubJ9Mg==
X-Received: by 2002:a37:850:: with SMTP id 77mr8117474qki.498.1591880779512;
        Thu, 11 Jun 2020 06:06:19 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aed:21d0:: with SMTP id m16ls870169qtc.11.gmail; Thu, 11 Jun
 2020 06:06:19 -0700 (PDT)
X-Received: by 2002:ac8:70da:: with SMTP id g26mr7881426qtp.333.1591880779067;
        Thu, 11 Jun 2020 06:06:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880779; cv=none;
        d=google.com; s=arc-20160816;
        b=pnrChpcDwZrA/VJt+Any99ywz17R/Pts9U4/93W8DnDudAyZTG2QyJHefxs9DouweX
         mXpgBjd6l7Z71WBE6uuULyx2c8eckd7TdSbnUoG1oInSdesk3Gb8dHHk+KNTmkDL13nM
         pC08Evz6DwjCsCoFl+zYFLfwG9/9z0HNB3KvzTdVrI0907Qgb0WZDWiQCSUbYaCVu0Xz
         9lhRCwpvDbf959D80hYzQzJnetFq7Fgc/Kr02vmzWfA2gV/SskNUVWh7GRzFPVkhWSoY
         eaB6JzMpfITvwVr67sq7eRqIL1tEzRpT5RSR1KRnuyOFyo+LMdMmEVrIXFYGnYXJNr3P
         TOIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=wiVFLMiCiHqr+OoF6qdjMxuLb4BOlzsU1bAqODzlruM=;
        b=Orih0dyqjnSU49eo7NY3Iu6pozriRTt6DnFPqKPsEhF8y+WZ5XMp1Gi+agj+/wCzRG
         rBe9vXC1ONg48eya32RTaRwDV7FmHs5+DLeUWw7Si3NEP36HAJIVlRhM7uXrfVSBKuq5
         PoPrFr7HTZIFnW0NU+9Ef/ZPBnuluvjdkrPJpCCienUsrMVg3361BkCIJafEJ11HnjuY
         N4AADFf0VDog048PVoHlPgn/9ab+konP6B9HB6R1u96rHMAiOPR957XKYBtO2z40zDDv
         PNQzuPF2HrFkEuyxI3SFk4X+CBkX/kTDFZFhbj9gMp+NGFgUrpDxxYvnmOoWuEV8bSoM
         pYrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vvB5yJNN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id d3si113165qtg.0.2020.06.11.06.06.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:06:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD6BAt107682;
	Thu, 11 Jun 2020 08:06:11 -0500
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD6BZa007067;
	Thu, 11 Jun 2020 08:06:11 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:06:11 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:06:11 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZA082585;
	Thu, 11 Jun 2020 08:06:07 -0500
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
Subject: [PATCH v2 09/14] PCI: cadence: Implement ->msi_map_irq() ops
Date: Thu, 11 Jun 2020 18:35:20 +0530
Message-ID: <20200611130525.22746-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=vvB5yJNN;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted
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

Implement ->msi_map_irq() ops in order to map physical address to
MSI address and return MSI data.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../pci/controller/cadence/pcie-cadence-ep.c  | 50 +++++++++++++++++++
 drivers/pci/endpoint/pci-epc-core.c           |  7 ++-
 include/linux/pci-epc.h                       |  2 +-
 3 files changed, 54 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index e6588a0cd705..74d36fb9ea5d 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -380,6 +380,54 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
 	return 0;
 }
 
+static int cdns_pcie_ep_map_msi_irq(struct pci_epc *epc, u8 fn,
+				    phys_addr_t addr, u8 interrupt_num,
+				    u32 entry_size, u32 *msi_data)
+{
+	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
+	struct cdns_pcie *pcie = &ep->pcie;
+	u16 flags, mme, data, data_mask;
+	u8 msi_count;
+	u64 pci_addr;
+	int ret;
+	int i;
+
+	/* Check whether the MSI feature has been enabled by the PCI host. */
+	flags = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_FLAGS);
+	if (!(flags & PCI_MSI_FLAGS_ENABLE))
+		return -EINVAL;
+
+	/* Get the number of enabled MSIs */
+	mme = (flags & PCI_MSI_FLAGS_QSIZE) >> 4;
+	msi_count = 1 << mme;
+	if (!interrupt_num || interrupt_num > msi_count)
+		return -EINVAL;
+
+	/* Compute the data value to be written. */
+	data_mask = msi_count - 1;
+	data = cdns_pcie_ep_fn_readw(pcie, fn, cap + PCI_MSI_DATA_64);
+	data = data & ~data_mask;
+
+	/* Get the PCI address where to write the data into. */
+	pci_addr = cdns_pcie_ep_fn_readl(pcie, fn, cap + PCI_MSI_ADDRESS_HI);
+	pci_addr <<= 32;
+	pci_addr |= cdns_pcie_ep_fn_readl(pcie, fn, cap + PCI_MSI_ADDRESS_LO);
+	pci_addr &= GENMASK_ULL(63, 2);
+
+	for (i = 0; i < interrupt_num; i++) {
+		ret = cdns_pcie_ep_map_addr(epc, fn, addr, pci_addr,
+					    entry_size);
+		if (ret)
+			return ret;
+		addr = addr + entry_size;
+	}
+
+	*msi_data = data;
+
+	return 0;
+}
+
 static int cdns_pcie_ep_send_msix_irq(struct cdns_pcie_ep *ep, u8 fn,
 				      u16 interrupt_num)
 {
@@ -480,6 +528,7 @@ static const struct pci_epc_features cdns_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = true,
+	.align = 256,
 };
 
 static const struct pci_epc_features*
@@ -499,6 +548,7 @@ static const struct pci_epc_ops cdns_pcie_epc_ops = {
 	.set_msix	= cdns_pcie_ep_set_msix,
 	.get_msix	= cdns_pcie_ep_get_msix,
 	.raise_irq	= cdns_pcie_ep_raise_irq,
+	.map_msi_irq	= cdns_pcie_ep_map_msi_irq,
 	.start		= cdns_pcie_ep_start,
 	.get_features	= cdns_pcie_ep_get_features,
 };
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index ce012c6a2cec..6111156d908e 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -235,7 +235,6 @@ EXPORT_SYMBOL_GPL(pci_epc_raise_irq);
  *                         MSI data
  * @epc: the EPC device which has the MSI capability
  * @func_no: the physical endpoint function number in the EPC device
- * @vfunc_no: the virtual endpoint function number in the physical function
  * @phys_addr: the physical address of the outbound region
  * @interrupt_num: the MSI interrupt number
  * @entry_size: Size of Outbound address region for each interrupt
@@ -249,7 +248,7 @@ EXPORT_SYMBOL_GPL(pci_epc_raise_irq);
  * physical address (in outbound region) of the other interface to ring
  * doorbell.
  */
-int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no,
 			phys_addr_t phys_addr, u8 interrupt_num, u32 entry_size,
 			u32 *msi_data)
 {
@@ -262,8 +261,8 @@ int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		return -EINVAL;
 
 	mutex_lock(&epc->lock);
-	ret = epc->ops->map_msi_irq(epc, func_no, vfunc_no, phys_addr,
-				    interrupt_num, entry_size, msi_data);
+	ret = epc->ops->map_msi_irq(epc, func_no, phys_addr, interrupt_num,
+				    entry_size, msi_data);
 	mutex_unlock(&epc->lock);
 
 	return ret;
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 88284f3a0698..61f2cebcd272 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -78,7 +78,7 @@ struct pci_epc_ops {
 	int	(*get_msix)(struct pci_epc *epc, u8 func_no);
 	int	(*raise_irq)(struct pci_epc *epc, u8 func_no,
 			     enum pci_epc_irq_type type, u16 interrupt_num);
-	int	(*map_msi_irq)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+	int	(*map_msi_irq)(struct pci_epc *epc, u8 func_no,
 			       phys_addr_t phys_addr, u8 interrupt_num,
 			       u32 entry_size, u32 *msi_data);
 	int	(*start)(struct pci_epc *epc);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-10-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBGEDQH5QKGQE4C6ZPZA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id F0FF7269D12
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:22:49 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id z2sf640283plo.9
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:22:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143768; cv=pass;
        d=google.com; s=arc-20160816;
        b=QYWjSfWAjjzQrXan7s/Dbyo6C8eoVSXG12Y/n37PtvpR5UPQw9NH4Emqnrlai0Om3E
         ck616KTKPqvH2gf6SM1IJG2sfSJgKL70+yb3fDmMW8NVAredeFChreEcJkhlsJbtiNza
         YYJKAT0jtMaqbze8ZpChyjoZGYPRjHwmsQi5dMqeAVHf1Lg03VWjgAP76M8K3+2C846L
         lxGkSOoZTrJQHoMDUyUVxp5ciV7teouC9xJFomyMJFTE+PovEBNO1grIPwq7n5aFRtn5
         PpWHKKpzpdS6LF1pq+IXzUzdy4EJN5BQRy1zMTFMnhJ7g1WqQEaNixqifucIk/OlHJWl
         Zefw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=rLgaFYhZmzzJZq6zGOyEo7tu1oVxGLU8PwbPUQ4eepw=;
        b=KokBAiMnWhr+Earj/Wgq2HFb2lKSWnnh4T52vEA3BpSC7QPGCNqxJUHGe7vscctzDY
         wTn4jGJE4HAkrjb6qfHFcqhp9WRnmNv2VNgxMT33lTC/+bMXZ+jiNyTxlc0q6maDw5SO
         1qWWAXPeBdXMOi0ZXOxza6Nxu1+I4k7gXaRLRFiHMh4EdeNRFWLqDdsI8L1H2rZ7PNht
         kI/LmHBL3d/orozGJfP63eLQT/21bmWGGV5gFyB675H+41v+TtgZmo5lTzE3qG5LDRnS
         ZO5BPJCgA4YkXSgj1+awgaMBnpPF9Is5CYNNvIhgQdJqnJmRxaQmnk4Uc94aAfYOIX3B
         3xmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=xz0McXyO;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rLgaFYhZmzzJZq6zGOyEo7tu1oVxGLU8PwbPUQ4eepw=;
        b=plpf+kvrpbibIYKdk1D6+XwJet1Df/8YfMc41JJV5yRJvRyueGXRFJddLpmPkw8AZG
         q797CZ3HZtNAVtap/9W4/dVOqwOhbMMX8wJD5nJHfhbIxL0xVNnYG93NBL84q/Z/LUfV
         S1qdqoOxuCG3kLHdiA39vqLCwItAFygXrp1IoHBm7rKhA5MaanOp59ks7doLI6q/ygWd
         rN1IYwJ/T+KRwMa3CbXQeE7W2n3S/nA6xPuh+u709O7uJf6tS6Io9PxWIclrTNSzuiQc
         k5BTwbYy523/H0R8+f0kITaEDurZsl/KJe9YrvYbhR+SNB4M8ZsQQozHfyhcb7PMXDs0
         ALuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rLgaFYhZmzzJZq6zGOyEo7tu1oVxGLU8PwbPUQ4eepw=;
        b=XavFMyiciKAH38PJbHbkpEzE7Akaaw/du94uQXon8RGSzhFGkluA0CvC4JjFfHj+rL
         tzSdW+LciSHoIuwfl9SyxV+l98GmGFmh0LzdMfhodD4ZWcdJ1N1z0RdiVM+7NKPs7YEF
         kjINESFlVoPH9NHLRi0F/ECQXjaX7ez5V2iiCkAw3gXCXF4k/oTMNb3AUvLbz8KvfvIf
         J6gK5rR45mHIr//QR77IO4L5GuBI+/JPhVVazM47bYuo4GpHOZFLiRLohwR9DMiD2K4p
         ZaPsWUPls/1O4pZKPlbM6Jq1DxwvoLheahaMPUtwSirGdzbfBL1wsDiJxiGUADvkF0MI
         JiBw==
X-Gm-Message-State: AOAM532P8JXLwox0TTijwUAtFUTbBrw23Bbf/ozSk7u0xifbZFIQWsEn
	3YZCs7AINi6xn1kGA1sbEK8=
X-Google-Smtp-Source: ABdhPJxF+fkVa3ME3fAP4CXM2vqsmawW0mKSJKkdX4kpTTTpMkDEPJ59DNG3pfCBxL8MnA8Cusu7hg==
X-Received: by 2002:a05:6a00:1702:b029:142:2501:34d7 with SMTP id h2-20020a056a001702b0290142250134d7mr161455pfc.48.1600143768699;
        Mon, 14 Sep 2020 21:22:48 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:d718:: with SMTP id w24ls2342283ply.0.gmail; Mon, 14
 Sep 2020 21:22:48 -0700 (PDT)
X-Received: by 2002:a17:90b:1111:: with SMTP id gi17mr2490274pjb.109.1600143768122;
        Mon, 14 Sep 2020 21:22:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143768; cv=none;
        d=google.com; s=arc-20160816;
        b=PG6njsjEQtxmCLRnXniJWZ5ADe/z6lFTspY1EIxG8ldAHcG7GpryGuLJKy7xvlofnG
         K1T97Q76gFmdo3oubpwZwFQvy5mLn9rSf7AF+ms7G8hPMMJ3DDHTYM03/bDI0KhHSGf6
         kphS/V7fqbvpQHAiwVayZhuLIYUg2Txm0LbDnk0AlULyVZuVRRWHnNL2e3xypO4KC3jl
         auMJW4i75lf8S59rhTBRZY/TBATs5km1ekeAgbbuv4ktPifa5ciYQZPrpIDAb2kILx1X
         NfGbovM6zHwSPl+GeqDOH9O2qxlxJxn8I/4GxB4dO/hy2sMgMszy9bnKS+oKWyPBpFva
         fw/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=dKk/x6X8YcSroAHhU2W03tyG96wKptoi3eaPmsVsNj8=;
        b=DpqV/ybuhIjOKAzV4C3Td91oheOZ3RS+9DC8I30ysKIRn02IGEI7Vf2KgtEE1NLQBg
         q07icW3+6jnyIWQwN44OJNQmok+aihSjdTIAts4iZwTfkdpnJWqQPfl3HQDfu7xlrzk9
         H+J8U6HPBuWox5j1eorAPkSxhADWaIKl9XO7b1y4q4shzQv17pCz/CSrQ7XfBaLaX6Aw
         nXaGqZGf6eAM2sMf6Vx3ParHienJnsNQYn+hpLZ3Bof6xhVMKymnIuo/N7sjBEqVGEXb
         +BXCP9Pqpsi/dpFU8Z+vQls458jeRUO6TjFNuBXIlAAPgPu7VMxvVgiKkyxxP3WsuZ/+
         Sz8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=xz0McXyO;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id h20si590688plr.5.2020.09.14.21.22.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:22:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4Meha027022;
	Mon, 14 Sep 2020 23:22:40 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4MeNQ058722
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:22:40 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:22:40 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:22:40 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMr028615;
	Mon, 14 Sep 2020 23:22:35 -0500
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
Subject: [PATCH v4 11/17] PCI: cadence: Implement ->msi_map_irq() ops
Date: Tue, 15 Sep 2020 09:51:04 +0530
Message-ID: <20200915042110.3015-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=xz0McXyO;       spf=pass
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

Implement ->msi_map_irq() ops in order to map physical address to
MSI address and return MSI data.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../pci/controller/cadence/pcie-cadence-ep.c  | 50 +++++++++++++++++++
 drivers/pci/endpoint/pci-epc-core.c           |  7 ++-
 include/linux/pci-epc.h                       |  2 +-
 3 files changed, 54 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 254a3e1eff50..b9aacd6ce816 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -383,6 +383,54 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
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
@@ -482,6 +530,7 @@ static const struct pci_epc_features cdns_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = true,
+	.align = 256,
 };
 
 static const struct pci_epc_features*
@@ -501,6 +550,7 @@ static const struct pci_epc_ops cdns_pcie_epc_ops = {
 	.set_msix	= cdns_pcie_ep_set_msix,
 	.get_msix	= cdns_pcie_ep_get_msix,
 	.raise_irq	= cdns_pcie_ep_raise_irq,
+	.map_msi_irq	= cdns_pcie_ep_map_msi_irq,
 	.start		= cdns_pcie_ep_start,
 	.get_features	= cdns_pcie_ep_get_features,
 };
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 73f9ff425824..d1e25be74665 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-12-kishon%40ti.com.

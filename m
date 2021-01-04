Return-Path: <linux-ntb+bncBCOOP4VF5IDRBGHJZT7QKGQE7R2YQOY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CBFE2E9895
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:30:33 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id h18sf17708281qtr.2
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:30:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774232; cv=pass;
        d=google.com; s=arc-20160816;
        b=pxq4RU9VWwYkR7pH8Nc3DizdCTBqipgxVA8DjhhS6TOyS9OGH9i4xAj/tcHaDHCDci
         PnZdstNtZ3LTWNe8EYTxTCvrvgCtrZSFDftufgvJMa3JXQWcx2UVqQUhW7sYt1BQF2jY
         X2yahq8IPe+ZB+bE1/LPxEGs3e4w69XO9zOzkJ04v2LHfVY922My4w296mspCddaynG0
         iParmbUxXlKeF2kUP/Shz+8PQ3CHbcoWlg2KLUQGzf2cC7uT279YwvSrvTtJJdPGpqPb
         WV6OV6Fq+ZbHvgYxQbODekUdT6HT/8yTaxJJSz5YwYsLcSzizi57JceiejBhBb6vrakd
         gMTA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=fx5i9zZ5XPa/pxwLsj2CV1L7GMNIVfG1xQ2b/9Jp/Vo=;
        b=La+vcZ6htsuVoIKVBLvSH3NmUv38UU+LAN8hRsU1Ck1iebUQK6pI3l3XSVR6t9McCU
         ANnhvWWxVg2qwfwe0+FEHo5adK+WtDFguhfhLf3yjGwvWnkmTjQH42xkSMvi31q86JG3
         5R6MjmdUg4Uo6i2bAy7vrvkYcXPzrjtsEVE/3jsLiiJAhUuf8lVwgXEdaKipYQCgV7nG
         uRXyC1ByeQ1izU6Cg/OWRNEv6bRKYrbR6vtBzWHHFsPYsm76BnQVzExJ7ZwazSoXrGI0
         83hOCPwlCOXLnnS5T5429FGbArlGKOoAtgtmpwsG+W2WXt5uF14f2W0Ghurj6o74S4PX
         Qw5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=pSsmUDwV;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fx5i9zZ5XPa/pxwLsj2CV1L7GMNIVfG1xQ2b/9Jp/Vo=;
        b=aOAOQ810R3frWD8ZG3owTC4lfzYKJH8LIzCt+/tPNqlZB025moZnpsn0FbWHuq6uHy
         PNBclnD3buJ7pd1OBDpSAaG5ANDJhLKJH3odieVfEntkUYy6BmMw6b/WATYulDv/Dlg9
         7kBviRBx04Pik1ZJrwQGysZpspbXDhsSy/m+Z4fu7XUXh2ogBWd2aYCa8uys8TFhJGPw
         IzyLyGYkXOQjiUb2f2zSs2b6HCOgMYdqPm/ypCY/g+TDyQL+LeOiZa0fi0L4HZwuen/H
         9iKtBGO1UkwyY5xzdBMmWrDbVDsHtxtQViZ/AMncspWpENfCv3oTOc7/o0IwMPc9ucLH
         dDOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fx5i9zZ5XPa/pxwLsj2CV1L7GMNIVfG1xQ2b/9Jp/Vo=;
        b=XVZVIviJ/PF8Mj7gWH26SyXjTGenl2Z2azoR4pE41ExGB4bQurfe/bUgxuJgfwpSNH
         q72LurjAxtp4qBvjc1VtFfmJVp9UoPs/UYu1OO0hRLYqGaZfkwjtW5Y22Exz7/lmX0Z1
         iDd+5ECP5GRGh3KFTRmS+KW8c6jQcy8Lf7d3EmPvlZ6hN6jLnDpu0JSQiFY+ixfeCzs0
         aE2VB9ZhRQkUhs5ttS8DK6kR4t/0BhX2Z6eUk9pv9IFYwgwaBpIMJ6176pZfkYhcZx3U
         345+CgLvXDJKCTfF0c8NQUv+S+g2XkKFYRX/fS/3vp+TZ3HcLarNUICtZIB3dxlRAruJ
         XDFg==
X-Gm-Message-State: AOAM531UK2c3Xt+hdQ6tIrL8zrwnVMTIpVPzOXIxcM0UlwtCJUvMvGd1
	XY+5GBf8tuv5JMYibYtQEuU=
X-Google-Smtp-Source: ABdhPJxXCRmfRM/dsqLN4eQN6grWtz1w3DIfRO4krd8Sfj5CP5q5I8MxaKyz5AKsYT+VfCt15JxLMw==
X-Received: by 2002:ac8:71c6:: with SMTP id i6mr71993810qtp.209.1609774232761;
        Mon, 04 Jan 2021 07:30:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ae9:edd6:: with SMTP id c205ls37701005qkg.10.gmail; Mon, 04
 Jan 2021 07:30:32 -0800 (PST)
X-Received: by 2002:a05:620a:5ef:: with SMTP id z15mr72876142qkg.324.1609774232007;
        Mon, 04 Jan 2021 07:30:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774232; cv=none;
        d=google.com; s=arc-20160816;
        b=QytGwepIPKvXD62nrFAuuR5YIC8O7uWPJDKtMFWRPAJyQ+lBevG73GHeS5mjXdFIMS
         DlS8561veFZMG3EeNudrYS2WIaXps1mAjsBbQfUQmuSW7OZDAO11QKeddG0pfhuBB5Op
         0M3TMB7u8kYGOgfPHJC1lAvEJe6A5JW27Tc9k1QT3xnB0UlqsSpHsbanpuE+zEERgOum
         ovBSaX65o554sZKtvQ3R6h9nlX2Sy5m0LNe3yW+TMEj1VMiqyujnnW1ijym3c3EqLHRf
         mZsQ+x7K8bps+ra9U4e7TloC0Bs1W/Pe0FmZ3n60oJg0PVPy0+0oOriotQJUZyEOlYJ7
         plzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6K0byG/3sREu87rpXTfiDulKAHRuhB1YdEWCWf91Jy0=;
        b=euWwmlSEx2IU8RiZzNiJy2QOyluhdfIJH2rH/xlsbwJTZrbJR6t8griI9iAiruqhpv
         lpa/QvKPkfqgzVeSoozcRENk87Os6dtQQ8rjAR5WeOJ+VPZEeIE/t//O+2ZZoPYDpXA9
         WGfDZgBj5agPfnuiQuT2ldPLVSeJfGeX58KaT+//MxkK1dSDWwhprpvwYL1JxuT/03Qv
         e4hHJaNCo5ja3g0Qf6rPyGR7vrQqG92JNmLljAm/+D+Nq0dZ8+9z7wADl2jNlEi87tmu
         EgpTj8jAYTjHJHTc29Qnmf18CuqvWmgT2TKdnQHXXKs6NOJMW/XIlLfB4+1LzTcTxYeN
         lGMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=pSsmUDwV;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id t2si3798978qkg.0.2021.01.04.07.30.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:30:31 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FUMLm076253;
	Mon, 4 Jan 2021 09:30:22 -0600
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FUMcO008508
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:30:22 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:30:22 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:30:22 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZH093710;
	Mon, 4 Jan 2021 09:30:17 -0600
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
Subject: [PATCH v9 11/17] PCI: cadence: Implement ->msi_map_irq() ops
Date: Mon, 4 Jan 2021 20:59:03 +0530
Message-ID: <20210104152909.22038-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=pSsmUDwV;       spf=pass
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

Implement ->msi_map_irq() ops in order to map physical address to
MSI address and return MSI data.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../pci/controller/cadence/pcie-cadence-ep.c  | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 9e2b024d32f2..dc88078194cb 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -382,6 +382,57 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
 	return 0;
 }
 
+static int cdns_pcie_ep_map_msi_irq(struct pci_epc *epc, u8 fn,
+				    phys_addr_t addr, u8 interrupt_num,
+				    u32 entry_size, u32 *msi_data,
+				    u32 *msi_addr_offset)
+{
+	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
+	struct cdns_pcie *pcie = &ep->pcie;
+	u64 pci_addr, pci_addr_mask = 0xff;
+	u16 flags, mme, data, data_mask;
+	u8 msi_count;
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
+		ret = cdns_pcie_ep_map_addr(epc, fn, addr,
+					    pci_addr & ~pci_addr_mask,
+					    entry_size);
+		if (ret)
+			return ret;
+		addr = addr + entry_size;
+	}
+
+	*msi_data = data;
+	*msi_addr_offset = pci_addr & pci_addr_mask;
+
+	return 0;
+}
+
 static int cdns_pcie_ep_send_msix_irq(struct cdns_pcie_ep *ep, u8 fn,
 				      u16 interrupt_num)
 {
@@ -481,6 +532,7 @@ static const struct pci_epc_features cdns_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = true,
+	.align = 256,
 };
 
 static const struct pci_epc_features*
@@ -500,6 +552,7 @@ static const struct pci_epc_ops cdns_pcie_epc_ops = {
 	.set_msix	= cdns_pcie_ep_set_msix,
 	.get_msix	= cdns_pcie_ep_get_msix,
 	.raise_irq	= cdns_pcie_ep_raise_irq,
+	.map_msi_irq	= cdns_pcie_ep_map_msi_irq,
 	.start		= cdns_pcie_ep_start,
 	.get_features	= cdns_pcie_ep_get_features,
 };
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-12-kishon%40ti.com.

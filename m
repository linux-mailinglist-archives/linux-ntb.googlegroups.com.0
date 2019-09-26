Return-Path: <linux-ntb+bncBCOOP4VF5IDRBGODWLWAKGQE6ROKBEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id DA5B5BF182
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:39 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id z128sf2035894qke.8
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497497; cv=pass;
        d=google.com; s=arc-20160816;
        b=t6aBRY13J0f3I87rvLwSAlcymXewjof5seK5G+JvOuVHBMaSN/dAqc49aaegjKDVBE
         9MHk+Dl4tLHLazuQkmppHrk+YU1avWMSXrZUVYfGx7H571neigNZnTi8Juut60YMMdOA
         0f97ZiFJuK4koA/o77B9cml9RMelJxMF2zBVXwMi6xtFKXJUCsmGaoBurg+ZQRC3VYGS
         6160Xs+MJRcvUJtlnf818X54v2Zyo4Wt3x4EfzfaeAg8wRH6039FF5viHr8XLlFfYX4W
         Lg723L/mmzznV8vZiDf93hApacT3e5D49fyaePVGyARKwPakxaaPGk+XA4+9oF+oyTSS
         lRQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=U9M+H2gWTiCAayqpWdx8dAZ9TDWRDcqJkpzKXJFiCpY=;
        b=T231HaCtAEQKlhheNYTKr0YSRGV1LYQWh16R1+rkrpIfxlmIlVfn3jo69LDuRPocRg
         AgV7f8DqoXWk+gkF1kq8pe87u8C/DaMgDwGpgEakwqMNprXTnhFviNHg8yg7J7wyKLbW
         FN9Ts60ugweZatQtFNkpqfmT/poNkjxQdWu6UzUstQKo0xrOpBNULylz3IFdMTUfP3p0
         BlLr0lTqobocT9/1PggfuH/q0sHjGuhkamwkPjBszOvAk9PsZUtketdY8gSczle6syzT
         9gqDZRVGJMpoakPP3fNYaYERBX0nu8Q12/lsu9Av5ajJ/t89CTYltLnURuXbeKU8kK9q
         56Ww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uIgiau8g;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U9M+H2gWTiCAayqpWdx8dAZ9TDWRDcqJkpzKXJFiCpY=;
        b=YGlz7uyYHvKg9WxCUnpFgRHCl1BWoZunVTcncAlZPzjn7LMDRyoXFrR3wFEjSdeFTF
         eDbDlPYo+PAfx1X+QDCLE8j/A1xPTIsFSmoNo9tWE02aULimYmurH4yeX1S29NmNEl5P
         nTRhb+icnfrW5D8ERA/ZC/645DWBwVNrouosOCCX3uBWZJNSRHfxRiFnkkxDJTycTjQg
         J/BEnuBgS+GIVzeOy4zGeDTi1CkKSgClMfJCFfHee3Re9l8ik9rSvm+oaJniiqDAyOGZ
         W8AzUOllGAu+iJFQfg+kq+VCsHFp7A1SiQ+BjfFEu1IZ6Jcd/jcsGLbA0sgKxRH+lsG1
         HTBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U9M+H2gWTiCAayqpWdx8dAZ9TDWRDcqJkpzKXJFiCpY=;
        b=jK7kK/HtkuwFjCwjoUBonY/VaALXzYDh1olyxOtgbLbYCNvU3XK1iovGE8OFEF43pr
         qXS/7ttes4fdYf61xoO/f7YNY8GAnTNOV3b0uj74YJt083jz2qbIVYdMnIE2x62K93dY
         v27AUXkElL5hzQJZmgPcYEIwWqfIOJYAi0hR6LyzJDLP00oI+sQklw3grC2tUNgc/uoJ
         CrVaIGHuxiyGdoTT6IyA5e07cK5qPb8wb01UJPAvYLhAEQ76C0o6BVMahtvAdTR1IIcF
         ImBnUERJBC7qEO3NzTMr+4tzTyfB88syiZTNv8UGlpcIldhSk0ZpowQ9rbh+Sz9rhf44
         j8gA==
X-Gm-Message-State: APjAAAVWBW3aFxc8Q/tYuXjTVhDwtvE3lpPe0EFr7CxNln0njbQ9Zp4G
	/ySVItCGkA70Rz0hnXw0hjI=
X-Google-Smtp-Source: APXvYqwNgnFHxypGBzZcO0Lw6fvPKB5xGbm6aPdf3IPDeBAEtG3A5pOkDd1J0bQBkdslWVz5B5dGBA==
X-Received: by 2002:a37:498f:: with SMTP id w137mr2612347qka.419.1569497497689;
        Thu, 26 Sep 2019 04:31:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:102:: with SMTP id e2ls422479qtg.2.gmail; Thu, 26 Sep
 2019 04:31:37 -0700 (PDT)
X-Received: by 2002:ac8:75ce:: with SMTP id z14mr3382326qtq.295.1569497497433;
        Thu, 26 Sep 2019 04:31:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497497; cv=none;
        d=google.com; s=arc-20160816;
        b=we7/RWtnM5aY8TuwbBBvw57sf8nq8FnVZmw/6Ox3RSMPw0+d+3PWfakB1lVc5HVT3t
         maLmMwd6BxPWfbLqJsVyxsgNf93Snls54x6Obl8OjwGA7QE1dxmMXn2f752tQ+7I6PlR
         JqcR1swo238gwPfVtPXMIJX4H2tKGJFhmpdK6u8hA2mVCe/PCMwGoasxvbLzEejGU+3T
         malW/g5KfD6OO0qY/b2AR0J8lEmbKli1O0vU1HDNoMYDKp4atO3XpmBTuUns9fgrj3Mh
         pvMuNAMwDYKMfv1vo+e6Z9iD/pPuP/Wm+wehLVjBAmT1ZWGTVlAB3O3bdSAs8tdYpTWD
         gE+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=tbRN2tGGOS4J9as4hsMn2//ML/lFksocvN+yrl5Z71o=;
        b=WPfa0zz+8z54d4WkC+2ty1qlcXZjUgf4PZGloXZKa1yxz/aeBeQc8NeJ8NLxVk1SeG
         slfkV3gxTpWHz7vugLI0wnQQa05LIUChwbfpzz9xBT/su/WHpk+bQxTgoGCoSUgFd1eZ
         KqOI+oaOju72Ub2FdIBdeomSTlMD/8aWRHMA3N7d84bj/y0vwCYr81LUYekC117m4PJX
         jHpQu7M2ICv1Nxj61NIdtKJ1B5PVDyO3YmZL23KfnS38geHwED+M3SSU7ABaZlFW4JcV
         zllvu3BUsDfnz8ajRaf239APn1kRmWTZ1xKtCLY/BSACiUtoDQXcodys6kUJ1ZOdDPwi
         mKtQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uIgiau8g;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id t53si141896qte.2.2019.09.26.04.31.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVWSB042677;
	Thu, 26 Sep 2019 06:31:32 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBVWXE032069
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:32 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:32 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:32 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTk7069017;
	Thu, 26 Sep 2019 06:31:28 -0500
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
Subject: [RFC PATCH 14/21] PCI: cadence: Implement ->msi_map_irq() ops
Date: Thu, 26 Sep 2019 16:59:26 +0530
Message-ID: <20190926112933.8922-15-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=uIgiau8g;       spf=pass
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
 drivers/pci/controller/pcie-cadence-ep.c | 59 ++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/drivers/pci/controller/pcie-cadence-ep.c b/drivers/pci/controller/pcie-cadence-ep.c
index ff4b4b8eb017..5d41c892177f 100644
--- a/drivers/pci/controller/pcie-cadence-ep.c
+++ b/drivers/pci/controller/pcie-cadence-ep.c
@@ -517,6 +517,64 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn, u8 vfn,
 	return 0;
 }
 
+static int cdns_pcie_ep_map_msi_irq(struct pci_epc *epc, u8 fn, u8 vfn,
+				    phys_addr_t addr, u8 interrupt_num,
+				    u32 entry_size, u32 *msi_data)
+{
+	u32 sriov_cap = CDNS_PCIE_EP_FUNC_SRIOV_CAP_OFFSET;
+	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
+	u32 cap = CDNS_PCIE_EP_FUNC_MSI_CAP_OFFSET;
+	struct cdns_pcie *pcie = &ep->pcie;
+	u16 flags, mme, data, data_mask;
+	u32 first_vf_offset, stride;
+	u8 msi_count;
+	u64 pci_addr;
+	int ret;
+	int i;
+
+	if (vfn > 0) {
+		first_vf_offset = cdns_pcie_ep_fn_readw(pcie, fn, sriov_cap +
+							PCI_SRIOV_VF_OFFSET);
+		stride = cdns_pcie_ep_fn_readw(pcie, fn, sriov_cap +
+					       PCI_SRIOV_VF_STRIDE);
+		fn = fn + first_vf_offset + ((vfn - 1) * stride);
+	}
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
+		ret = cdns_pcie_ep_map_addr(epc, fn, vfn, addr, pci_addr,
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
 static int cdns_pcie_ep_send_msix_irq(struct cdns_pcie_ep *ep, u8 fn, u8 vfn,
 				      u16 interrupt_num)
 {
@@ -678,6 +736,7 @@ static const struct pci_epc_ops cdns_pcie_epc_ops = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-15-kishon%40ti.com.

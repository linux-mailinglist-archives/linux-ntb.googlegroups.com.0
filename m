Return-Path: <linux-ntb+bncBCOOP4VF5IDRBHF34GAAMGQEMY6VC4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id AD02E30B103
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:59:25 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id 203sf20922982ybz.2
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:59:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209564; cv=pass;
        d=google.com; s=arc-20160816;
        b=xS/VraM+vvexxS66pztvt38uCkubPQJI3G4RrLl8ThXCOfhipfetPA1W3+Nma8IlNN
         S7mpA6SEJB3vWYD5TK+aikiGZH1PanZsnosGHDNycq2+R5HNM0LZT7QTxhb/DgBvBYD/
         85ZurCQYbO0Uy/kGi4uzzR2JO3ImaU8CXsdq7i9tQKDjjhVT9EigASX5pRk4msaoVRsz
         7mV75m+vk0yZc9iTSZQ0hJOP82v3WqCuokvoTSDQyhJv52mJxNGBuqWtH6dWPjsmPqfx
         Wm8hv3pN6zSKY2jigZU7+sdZAgCU06pqU4yjrZAXxsO6TLzFssa/1HoF93lWIfxtP5kw
         hO4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=iD9F2RMYmu74mmL9fytc2wxo9IeN//sgq5B89L1zWbk=;
        b=K/wm3RQD1H/Q6E73YXZHTtQqi1tP9siOa7ITh2BLtDlal/Qq4VoEHWEWgogEFr0qhA
         amQ0QDz3fLwPRalTdwp1KlmGL+OdOUj62h+HAdz3wJS9D7Rryu7H7fYAqecegfGoQItu
         xW031bgtyofjLQBlOZM6wGuCuKOlTxsvSbLJeuJ+rJPEEae+QQMse9Tc4tUIWjd4/MIv
         rlSQDOqjrJQmR/5K52IiL/gBfgyyMg6FOqx2fMfR5cUbRoJwFYXkhtBs6wELiLunYc69
         f4GrwYjsHOpwwrO55EC3t5LkXSTF+RGsB5GdYaWEsjcJRVVOWP3LnjuBUV612QRFWlnN
         Ykcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ObDEHWSL;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iD9F2RMYmu74mmL9fytc2wxo9IeN//sgq5B89L1zWbk=;
        b=EdhEvPVeaLIWXvTNRzqCcK8l8dQcz5P0nyUSK4kJEn52hDVdjh6eyimq4OgCfNPqlj
         nx8QD6q/PAJNerIuqJiZMq1o3wtCQZ5cFjDoem3SO7tEtfoE/EJc0iyLRiDcC16e5ICo
         I0b1FazLXMOhhIvbYVHjCAzf+XndaV6cobrbIHRLC/EHNX/tu9wnctUUuQM0wdxIKlit
         LjvYruaj075a+wa6cATK14kGYL1QoUlQI37PKSlSd7x8G2/zii+noQ7x+j+pRZRaN6uv
         b2gaoTMEs0sYYaQTlJMGSOM4gOfKkpcGuCGJnoy6IMu7B7qWxiFu0iTT74nsKsORWdTI
         Vsag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iD9F2RMYmu74mmL9fytc2wxo9IeN//sgq5B89L1zWbk=;
        b=c10W1baluOFcV+VffxF37+ZE6LLv7a82TpoUZCtKwu40KighxeaIBf2rr1ZoyDYpc3
         JUxV9kMLFvETeUqk/nVGQFZtlFkgPyF8tBOORHbObNRPm/tka/hSne+bYeS2ncya2Lxx
         GJ/HQub30pVNinUjlZqzBv4RsDwevMFdAH7xrKOGFsLfjtLF2EWy3uTOqiZJDqzUzqFZ
         glFllnT+6apzVsYEw3/Cd5K1GziMJ397PjK0KVsocJwp73hTxdVKnqPTXE8aFECgThPB
         ezWjoAyD2yibqMtVva8IpfxEpil7fXlGo6SEF8Q8DqjruV/Hi+IEqhKa1Vk6Osf4VCXE
         mI8g==
X-Gm-Message-State: AOAM530oiILmS10H/kgt/7Fc24bDvVt6O2SZzYnHFm9+MCvHjjnK1o7N
	OLO1UGb/fROCKycbZBwnckw=
X-Google-Smtp-Source: ABdhPJyz8jzUivhPMSUg9HNxSKIdxBTI2HW3PsW3a7BtamzXe29fF+AB6i9NsYu9ZiQ4zDCT4wJyGQ==
X-Received: by 2002:a25:d750:: with SMTP id o77mr28318585ybg.194.1612209564806;
        Mon, 01 Feb 2021 11:59:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:3d03:: with SMTP id k3ls4791262yba.6.gmail; Mon, 01 Feb
 2021 11:59:24 -0800 (PST)
X-Received: by 2002:a25:e016:: with SMTP id x22mr8065532ybg.92.1612209564459;
        Mon, 01 Feb 2021 11:59:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209564; cv=none;
        d=google.com; s=arc-20160816;
        b=gawfcpTgeYDqMbDq6R2qnJNCsyRAOTWscyeiPPtJuK2miVhxih0xjmd4UIliC0NLJq
         es4PithaUghtGd5GAMjAfNwOwt1Zwz7F3tDrGVAkCIA79BSnfAEtfwUYcZ29i8b8lPtJ
         WpQNkZyKtaQYbc50RFgfRujIWG6cgj/qvnvFCnDVbYu1mhkxZmKDH0SzIpMmlvdLHAbZ
         n793rhVQXaa5KCgDDvOcrwEOIFCy2bTeN39x96dUAcuy7mT5eroaUGMQYZZWlMNJCJe/
         R2lshuumzjUdSnIj3g0JOkrzfmM4a9TVcQ/9c/zxiq+jup+J9ywezISoTObfpof4GMJs
         M+AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=t1ZxRvI6L0aF9sPYQjzUUVghV7Bpq0aMFrquckHN9dQ=;
        b=b0aaCEG8nnsvZq7timm46TivCbuE/SnydJkE4CNYfNO7mIpxJrgGKTw/noYJIxjMR+
         QpA/p2r5fkHcdFIIMK6NfcKqgNZaCIrggfDVmucKJtn9gA6UMlelgv4NQ9LqnD6e2yL2
         x9xGP8TbwtL/gQWHUoOgCywB+FHSCm2/Gp+p8VedogfRcbUYBksizplVHECt7se8Jnaa
         q+dkjnnkl1+ZoqJPTRNXt0awOkb3uGw/g8In29eSsmJzhi5x0bpP8gAnbB4eYE2PAXLe
         a8r5WZ99rWUpBKbai4Bktx5fAM5lP5uJ/MDg/IcQgHfzRzlC4EjwHBqyhSLgdvu8ei5O
         2rng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ObDEHWSL;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id i194si336377yba.2.2021.02.01.11.59.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:59:24 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111JxHFo023990;
	Mon, 1 Feb 2021 13:59:17 -0600
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111JxHH8101829
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:59:17 -0600
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:59:16 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:59:16 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQi085814;
	Mon, 1 Feb 2021 13:59:11 -0600
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
Subject: [PATCH v11 11/17] PCI: cadence: Implement ->msi_map_irq() ops
Date: Tue, 2 Feb 2021 01:28:03 +0530
Message-ID: <20210201195809.7342-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ObDEHWSL;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted
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
Reviewed-by: Tom Joseph <tjoseph@cadence.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-12-kishon%40ti.com.

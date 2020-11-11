Return-Path: <linux-ntb+bncBCOOP4VF5IDRBUEKWD6QKGQERVUVAOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D850E2AF506
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:37:53 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id 23sf1658192pfp.21
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:37:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109072; cv=pass;
        d=google.com; s=arc-20160816;
        b=VsSyjRXYAJfmQfp+JXeASO8XSm9i9Ic1Rqlgq7parsEtUtRJ/tDF32ATpM3wih2OeW
         401OE6pEa2bYCngjE74fnUQv3pXZZPWYpFRmnUhNcgpFZta1PQYQvy3e9FKbvASqApTq
         HQbm1CaXHZEDn4TDc0Yz2O7utHuRpkBO1Fxv7AgMfJmxveTz5VVooteuJ/NChY79fntf
         oXq/+xzODt5sL0tW4LkfTFjos4Lvs3ZKh/OY5KnQ9Syec/qYUe8NzYQnzRpkHCvOto/b
         aGOG9Jfb+b30u+09cQUbG8vXFlnVQ3jotADwxJ3vvQ0DcmoUh7YMj0JLDO2oG4SO8CIs
         6lPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=XmdzsAQpMtlfFrTZiDs6Yx+QrAcbysqTiRkB5LMRjXQ=;
        b=ZEpXuX9k9NrMkEH1ayJOIUUvhaHmDydoiJzrCr52KNtReQAw5Erln5mU51PgMnKcD6
         KNNT7GZlTntym/azsJ01m9A7Vhe+EkTlbiTPhaQ0hOJm9AkCSDUg9DyMck8VYVoDqyJZ
         uOA3VzNkEcqLwnd0wgpVowQwj2AGp+sXRGzJcMiLW6W/w+COG/YxGeshObVq9FoPtkqq
         n12J/ilzFOcx5eZJcqviDqh4/JzWNBPfJ0ctR+gDUhecL41NZ4/NjcgD11m1zQlw6R/M
         piKVgNU8tzXU9sVL29ky7wCzTlfr1YOW9kGgDNipMhW0Yo3RuWvWWFVUN/Kj8NY0MyNx
         HWAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=eWQZGCx0;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XmdzsAQpMtlfFrTZiDs6Yx+QrAcbysqTiRkB5LMRjXQ=;
        b=FPIcjl3EwWquieBYyjTywkJDfVfgx1F1r/z7N/5iWvwkTqvYuZ/tBl+o3IV8g4UbWM
         M4Ur4Vs+ftsuFUb7dwTyH8dV5rJ07Aram8VmG0UjYN5uLLkg0NC1SU6RIhlyjlJKB1F7
         M5rwE4kWN6efO3rJzPupBWNtJmDDRgFtsFCc6o28VbokfEpn5pyCn+mHZKc7lCl2KpiF
         l0MxiVDm2lMLWfwVkQW1HyfJzK50NIdEcFVEkLkIUzUAn+BsAKXxLlzVHLuMVRiCoDWe
         5ltj5L2agiexzt4QwHlNo5XeJwBwZop0fv2h8MWlrSn43ITQZ+5W6r2I4z23tvIIusLk
         YdeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XmdzsAQpMtlfFrTZiDs6Yx+QrAcbysqTiRkB5LMRjXQ=;
        b=dj1JTMmVdvqv4NDub1OKmhtBP5slP77PyIJ1ti4JVYGKcGxXwiqFNO4C/vInlw6Vat
         1MFqDmC1QqjwLaroC3h8lRb8do8mq6QCTPyWSHeCF5SFibhhx7kvekAEvMYWv+QLGKS4
         lrOBMCdw7bYjFRd6YlJTIQW7FibrleLFFJH3CoZqyJUJID0gm6QyMTYPmfA4uYRTe7K9
         SFOruwusJXIMfYWFgmKyxXbO8atelhltlg6RDytKlMzjgyCqWfhQYKu8zDCudXhJBcH6
         W8f2dbqVd1ZFugdGILuQXbNijV7eFbTOI7dK6hkpqE0qbim9ODErwa/Can5AwbYHe1vd
         Zj1A==
X-Gm-Message-State: AOAM530WIw/+WSfNo8apEtcSOr3VS83gb1+HzNhzOGTnmnNM+UUrVmaB
	IwutrQqL3YV6Rb+deBL2F6E=
X-Google-Smtp-Source: ABdhPJyCvVzGHKRrrWAa4B7TgVyTCgfpwYs8zOJjdtuEr6/15YQEx5emwXDUt9tpEY2QjhQYAUMWxg==
X-Received: by 2002:a17:90b:4743:: with SMTP id ka3mr4428018pjb.148.1605109072580;
        Wed, 11 Nov 2020 07:37:52 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:5621:: with SMTP id k33ls43682pgb.2.gmail; Wed, 11 Nov
 2020 07:37:52 -0800 (PST)
X-Received: by 2002:a65:4b81:: with SMTP id t1mr23238981pgq.263.1605109072068;
        Wed, 11 Nov 2020 07:37:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109072; cv=none;
        d=google.com; s=arc-20160816;
        b=bCMd0WGG645XzAKrPFUJspMD5FWAXi8O5TKMaY6k1P57DooV7NTEWlg5RId7NOpsTJ
         MEgrz+aVmxeDEUv6ww6g/cVvQ3fKqQgrLIoLzmtTUztnRy+6sHxEpJRdijlLDxx8kd9V
         JwRO1TwkZ+vThSTn3tqeRgVP72JMEy8zxrrYvYwNbrFVNrTf1L35Rwxc7mGj6LlFqMNc
         Ib18v4ybowoLZslccUBZ6j9TscdQVv4NS8hZ7E++5fTHWkpzlOZ0NXwbumcrGZevsiiN
         N+nw+velPuwmoNEWzdgPx5pKZ9nvra2BBtzVp6OiE6z21hV+jdRXDFbmCDmsFpBkmEoo
         b06g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=VzV9VPA4110CrBdUFVUBl6JM+bYUMares6sd3wLMFxM=;
        b=cnPWGuu6gPvSWlAi8EkvvMqz0bawvmZVJKmbsPykk2jl0qdSsd3U6CP4fT2lTgO3xg
         tULs77iIBZjDepUvCnNwCEEIUo2c1IatRW9YNCl8IVw83RtbiTbV5ksYviz1qXAYtAAE
         LzUfV2oSpcmH6QgjoX+sAt4xyIvc3Xoy26yqwTi18A3Gc0iV5TE80mvMBwegLjKvDWWi
         oESE570sokbtSGOJUHwUDQtD+/++jrvKLRrWRlf3iUGMv/icPPBv0OSGvXU2Y8K3AZ8r
         +PUIquDuCsQIYSTPMYfRaBIKJl0D3dyvBo6lAbsuuOIwPi5F7aykTchLvMNXXyp1rGrR
         6k/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=eWQZGCx0;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id mu3si363217pjb.3.2020.11.11.07.37.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:37:52 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFbifP097892;
	Wed, 11 Nov 2020 09:37:44 -0600
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFbi27114361
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:37:44 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:37:43 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:37:43 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa042042109;
	Wed, 11 Nov 2020 09:37:39 -0600
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
Subject: [PATCH v8 11/18] PCI: cadence: Implement ->msi_map_irq() ops
Date: Wed, 11 Nov 2020 21:05:52 +0530
Message-ID: <20201111153559.19050-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=eWQZGCx0;       spf=pass
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
---
 .../pci/controller/cadence/pcie-cadence-ep.c  | 53 +++++++++++++++++++
 1 file changed, 53 insertions(+)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 84cc58dc8512..1fe6b8baca97 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-12-kishon%40ti.com.

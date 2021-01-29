Return-Path: <linux-ntb+bncBCOOP4VF5IDRBL4G2CAAMGQEILAXM5A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 376B8308922
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:44:33 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id c186sf5833166pfa.23
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:44:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924272; cv=pass;
        d=google.com; s=arc-20160816;
        b=rANCzlbarEM5gSnSJxMkspBVd+g3jUFSKpWqd+zCSS4CoyLJM+X44Z+R1/wPgZeyGu
         xLsFENQ9ywec1aLOfYa5YKGP92yumdfN6P0uzmBLg3YiZTgg7LGH44DPdg7GwfbHqo1h
         /XxEStriMYvIu+u+1ofERD5OoNggUEPBTzWJ90k9tNY80KvDKRk0PwkI5cncBxmizny3
         aosm/Z5bKmJiHR28dkmZlmatiZ3Q0wcCf2Tg7Z8LtWnDgoic3LZYLSle08KicTJ8a9NA
         ftshp4uvIYf4aVHAtpFwqfhzmO2nN0lSPsRmrf1lyNGMBJrxszlEcEiPVhI+2vHiviIo
         lWuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=oRSMQycKe2Mg6a4Jb3QzcQQ/xDfdbDNGlwranR2ts3Q=;
        b=EZO1nBm6M1QFqF31cJd5Am+3Jp+1m5f4Nhxb92PgkMo6rvSJe9wavXtZOpDvLqbN+d
         ZiXyqJP+BV52RGYy/7PN/xI4ps5SGFLLjBmos8L/drpHPZMOq6Y7b2M/XsVA1sLIbpOG
         VraMuAOvL6SWpWZ5/H0Y00EvG6619tgnTLZ8JLgDh5LyigG2F5rD0HSRhegwm8pG48G2
         mB5R/75yxvIdcjS+jVUc6l6jQnVOS7Tgs3AYsZbiDlmrG11v21bIXsR4D/jvt+hGhqBr
         2vJJchH6UlG5wlhb6gnlcTPCKiI7iKB7YljjXHEhLw2am+wdKiSS972mGhQSAFHMKfdx
         djkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=smLHtTc5;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oRSMQycKe2Mg6a4Jb3QzcQQ/xDfdbDNGlwranR2ts3Q=;
        b=Sw24wWFvqV7QQWED+CwO1tEkpUg0xy7In+OHOSHTOHmd3o3kWMxFmAeZ0hWmZ/ti4v
         yENF+ElvmHexd/g0pQGz928dH6vyBk/VQQX4fCqFwCAcnktpwywcQfPe3C6siXhGYbHN
         Cx1vW7MPUUuImfuRHjbfkqFhAY2LXVN2b28zIulOfxGtHfGBVYCAryNFn9f4WZL3T6Ke
         6FrTBcEcjVjWBFaTlqWJ3F1rX3Qmis0X3vDa4pZRKlMcIiIvsWEKusyJN1sfBNtDAUiO
         xgjPGcuhhJGFtSxPXveeY1EDDjE7XYwvc4nr6rPRVfGS/sGp2fp05DfuYhyxUWniwkX4
         3/BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oRSMQycKe2Mg6a4Jb3QzcQQ/xDfdbDNGlwranR2ts3Q=;
        b=qUT3ECCivTr5lA01u+R6PZiWuuTdoAYHwjJnCNI6D5g1fCrkiq1CkGcHfM026Q9LcH
         r/zEv/H54t9M3XuWrsvLg2p7hed1gbJvEe9TPCY22UckeCjdX/NilCotRiOc/fq6D7hP
         sQMzoJkgfkS3M0aheVaUD0qTyN+i5DU7ByxZdZeF2hala70kcLBltSbCKt4UsHjtbFOR
         Sw9kGM284hn7wK3F3N0eXyCwQdJ8BpAu2FzEu+LAbVCkRQCrwT5spWTORMUcwFopGa3B
         ZR6dTmGakQcScmYYFtBApMWtSuA9gv8Yo0ww3DcWQoqB95MUDISdH5bMoOntLBu0bWlz
         7JsA==
X-Gm-Message-State: AOAM5307fQ8j5ZdDapBy8oW8SPVX6ab7KSNL68QkNj1bKOAT/u/1lI7P
	CzyiKX1cBMVK58ciyi1Rve4=
X-Google-Smtp-Source: ABdhPJyPCVWXuL6eyUO6pCTP+ONeLBHLvk0UbkOUzfJXTThY4/LUl8ob/aAP/DFrRyNuis//hFLutA==
X-Received: by 2002:a63:d42:: with SMTP id 2mr4869419pgn.236.1611924271936;
        Fri, 29 Jan 2021 04:44:31 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:6a11:: with SMTP id m17ls3595111pgu.6.gmail; Fri, 29 Jan
 2021 04:44:31 -0800 (PST)
X-Received: by 2002:a63:c64c:: with SMTP id x12mr4703698pgg.293.1611924271439;
        Fri, 29 Jan 2021 04:44:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924271; cv=none;
        d=google.com; s=arc-20160816;
        b=HeL/L1Dpo8JGZzLw/oxzEBoYGJUb27zUu4x6ep4VoV52ypDy3irlOveuo7cCiGn87/
         7IjKKHQrc+CX4uR0Ee9IGfKrelKi/Bv5iNZmtqKk634sY62IX3hTEVU7TPtxMqWEzUmf
         yNwST48fobQc+FxrkuRwwgvBpy3D5OkNkbh4Vk5TJHc6OMIWFMa5U8XPQJt7s6aQ/M+y
         6sk4lAOzRc4QC74Or7OdbhRd9muf5Yc6/dCdJEdVC9Mm7U3CeEPPIM43//nphrE3TeOv
         QQeBCmB44k3fYs7MvuIOK9mAVHKN5gU1uUPddX6+ZKPaPLmYns04B4OQsFlT2fhZT+97
         3eew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=t1ZxRvI6L0aF9sPYQjzUUVghV7Bpq0aMFrquckHN9dQ=;
        b=BtrHyw2Fih2uZB/kGycOAn78AK2GxX+akgGO+RffemOpQ0Raq9WZRwDRQfvAe6xp5l
         O/RejPZxgsz7LZfeJyItZYLz7RabAv4vIH0pF6hBb98QNuOJ58FhtzOGonoMAE+JeBd5
         vM9qSnT5UwCBFHYSWJielOh4gFpqR3mjyI8cK9vAX0d6fcL0E6MlTwCBRoeKRSfke1kO
         1rYRDiyJckZrsSDwww7/DUUvgZhJADjL2cryr48kddNDYOsmayb0MauYiQmF/Mh/YsGu
         nwtRknRxNpYUo8l9FkMxVyMyk5jMdEb88El8YZ0HR5Lb28bKafY2OSSFyCF+u5RDybfp
         GAlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=smLHtTc5;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d2si526681pfr.4.2021.01.29.04.44.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:44:31 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TCiNZD029897;
	Fri, 29 Jan 2021 06:44:23 -0600
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TCiNDY022995
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:44:23 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:44:22 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:44:22 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDWA075758;
	Fri, 29 Jan 2021 06:44:17 -0600
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
Subject: [PATCH v10 11/17] PCI: cadence: Implement ->msi_map_irq() ops
Date: Fri, 29 Jan 2021 18:13:07 +0530
Message-ID: <20210129124313.28549-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=smLHtTc5;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-12-kishon%40ti.com.

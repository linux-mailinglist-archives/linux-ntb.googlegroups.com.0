Return-Path: <linux-ntb+bncBCOOP4VF5IDRB55OSH5QKGQEL34A2TQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id D002126F62F
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:45:12 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id b14sf2816750pls.12
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:45:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411511; cv=pass;
        d=google.com; s=arc-20160816;
        b=a4muYpMZReJlL3dOhM8Vkk/f0l6E+kGzaEGSBx1tZ2vVgBzz6OmJEJ4IPCmhn9rf5u
         94DWyTCfUzBYCVimzfTsqrzR7/lLR2nHa4tWBZKHppmAktWEnae3mZ9NzzVxRZAJFMq0
         5SDFv4rUR1ZtJXEBS6MrtUp5ZxIXC6We3EV+Ae7w+ovXIwQnpe5UCR0NfZPjiGQiwes+
         ydawooxY3yPzr3742kVwAOXfc9Xp8+9hUQcBqIK11chzjAb5TH7oY6pU1NmmihFBtf27
         EQOezTAVGW2p1KcG3N2mQsxfDlCEEalR3OF1CijxZ6PYdRYb6AlzCeJrHX6hqgVQQ8Wt
         4JFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=DWIV+HHpAFOlEqqQ88t2A19mdwoCWVDtZTRmSIJ4QAI=;
        b=e8pL3e9BsvfOZYMocXHSbvxkfQBIDlI7mECRUMkSXvgET+jZyx+30awBv41bMK274H
         /FV2+U8/XNLy0csES2S/kJZIDW6X0hMrBZqvpCK5Cl7owbHdjS9hk81Vjmn4gC2ecLlA
         E+2la3xec3f5yiKNxQTa/3tQF84qBKxo/qcfikWhc8TzVJGWZlV5cjAlMlswnF3TyXEE
         Js9UfTG+NnXjm343PWc3Qgwy2oWmi/vE33fNEdwdyz2nFF87YlqzC6PnOePF/dMHXN1Q
         JEdjtJvumu0oVOHRSgTCfYq2/vSSYMrAWa98kmrluCrAUPh0vA7BZ8/HrhORytH4OSSG
         2iGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Q6LWG1Dn;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DWIV+HHpAFOlEqqQ88t2A19mdwoCWVDtZTRmSIJ4QAI=;
        b=sPaaIzYo64LpwQF5iYjyBiEc4LuA4DiDpE4qyXdQjyvz2Gov5PyXPjHvaZcv8Xst5v
         dpZ73oDMBvUUtZF7rdEfmarb09fQOSEksPTZ9v8cVqI+2bQTJdYwmiM9IXRL/dTf+bfo
         ba+1vWymdsx4dhS6ym6dt4lUGnr8K9hGJCyU7z9MgIFETnWBvCE5OEOC067PhljkagBx
         MCmH9Hkh+pJNsdyPbKwwuLTW9/RVxu9gxHuS3xWEgIuSEUyotBoJuvp81S+/VuPJVnE1
         XZygkzys5XUwxoR34RjVBxkZHDv9VhWcZ6sjzK/6C7DESbkClHPRXkGG2BwfJyB//JLh
         wpuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DWIV+HHpAFOlEqqQ88t2A19mdwoCWVDtZTRmSIJ4QAI=;
        b=SnmoXjjTaY4pAtLkPX7ASwIEFqKv/aRC4FwGtXd2vTU3QkFGx2iIUtW3SqJFHGoSRM
         4bjWuDR+xfhse0tEVaRGkt5ivvPxFWs6PG/aJDrzUctF1q6fqoIGNkELGqkJxdLsHV0N
         HORERRVH3rFBDE1z8pbSh3Gj5llyi3SOxwVo2w2pkClRE1AMFaJRNCn1oWJ2VSvIhSCH
         hDYSFpaah5t78pfIITJdV6qShctJomMQR64SO8FgPZNzPJijZL9E9Qg4GcPgfY5e0tcE
         k+IpwL8X3y5xYEvYBv5xbVuDeyDbhPk1RkKNnN4WFZsdTWHmtJrL10uUrnaSj487wARt
         WU4g==
X-Gm-Message-State: AOAM531MSa2aC6uBUdbpyv9MSJ/UIzCUydzAdXGAwZw5tGKovFdmgptz
	XMogSU497GXjdmdcys5tWGA=
X-Google-Smtp-Source: ABdhPJz0mKJUUN+EfhG2js1fefRdIT0eFBIBAm/7yGvhX23kNkJhzMwTibOdyHYRajI/V1T/EKC1Dg==
X-Received: by 2002:a17:90b:138a:: with SMTP id hr10mr12029179pjb.8.1600411511555;
        Thu, 17 Sep 2020 23:45:11 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:4812:: with SMTP id kn18ls2123469pjb.0.gmail; Thu,
 17 Sep 2020 23:45:10 -0700 (PDT)
X-Received: by 2002:a17:90b:3105:: with SMTP id gc5mr12055926pjb.225.1600411510837;
        Thu, 17 Sep 2020 23:45:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411510; cv=none;
        d=google.com; s=arc-20160816;
        b=TVDoL5BDydVocwnNhBAcYhBT7XpLbeOsgHLY2AhXV8/YW9YHypYA3lCuIaDDYbKjxv
         AGtGLYIOFM67XVosahUq8b/qMCrU7EkxxYiIe535h9+c4Caim9WcwVGl9J/qn4gnfr91
         HN+RI3z5kMkSWnRGmj9Lbz1oxv34djSb9E8JCKs3h5DpAHYMAgz9kA0iORO3uyJ8If8P
         TP3Q4hehkHrjgssIH9vwT6pPAqTsxrxescKegfmfQeQI9yNo0sQuYjr19xuY3RImP6Wd
         XC7OdklycvOngVzbfUV8tVLgtblG8hBwXBhM8WgQaLo9LbYnDdIgJLy6pwbUK5e9QATV
         d9Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=dKk/x6X8YcSroAHhU2W03tyG96wKptoi3eaPmsVsNj8=;
        b=xC1lrQaWLUd9PEWoMt02Ai8oFYZSAcBu6VfvbL2Ud8YTkfk6y0DbIwNKrz9WFRJRrJ
         urONMadPjhSXQi0NrpDnRxRf+MT7WnMSegHB7Z51yps687FQxnzHTKOw+ffMsU7jNcCb
         sBHDKmHh9eToVy4gfdqJFaEvPbV5iNpGeYYtCcZNAS2E+A1x+2IAuCDUoDsGq6xrdyRf
         s05C+7/5kMy3dzgdhNY9GUOO9wLSo9O7KTalC3cGFY6xLpO8peGfWmrewcc1nlddtZ0d
         oAV8ouuRNQkNR7oIbXj1OlZn+h0CGt0MZs+8k7hBh+ogNVGBoJWM6ykBkfYw2ujMhj0H
         aEPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Q6LWG1Dn;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id s3si730958pjk.3.2020.09.17.23.45.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:45:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6j2tE016905;
	Fri, 18 Sep 2020 01:45:02 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6j2kx042726;
	Fri, 18 Sep 2020 01:45:02 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:45:02 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:45:02 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCV094595;
	Fri, 18 Sep 2020 01:44:25 -0500
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
Subject: [PATCH v5 11/17] PCI: cadence: Implement ->msi_map_irq() ops
Date: Fri, 18 Sep 2020 12:12:21 +0530
Message-ID: <20200918064227.1463-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Q6LWG1Dn;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-12-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBYF26X2QKGQE37PMDSI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 3814D1D33E9
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:55 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id k10sf27937689pjj.4
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468514; cv=pass;
        d=google.com; s=arc-20160816;
        b=cf1W+Uzy2J6VEcC55V174PIanqKdzmvQ4o69X0XsvMyRlDkHIfpxJ1k2k/Yqzu0Ppv
         rfNcMJJ/Z45HkDNrh1l6H/7S4Tkmnzl5Li+ZI2glZg3AcfscD4r6ZBKMVC5VBtw4MKMK
         8iiofxMRQzqfpO1rCHDihohHXU9VKy1DRVyc0wyoXldmXjaTYinIezPDA/OyTWUkN5lO
         vxuNNr0b/FmQgXmG4mRDcBYGk+zA1Z20VAXLjyvbvH/e1GpiczTC6ugBMLWnw5cSauo+
         vzOZVOyyvJbcJHk8M9MLwYlPI2bZS4D6Zfg/NlBLaDb7wwJulVwvjLAK/HAxzQoYC6+x
         GZbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=75ES600ZB9O+CEPpRSmyKXTf84BaYZM2NX5PLjJ88x0=;
        b=gjrw0loO7TuVXpDv5UIfE/yeJ7s1sDhgHUu6HpSpry41OwhdePva96/fP5e9gFj9Q+
         8a94sLj5bCFLqhnUitR/uI5FYr7mz+nsYciv8+kpzdWE4ZfjSY+cBMZZ9fMCZ2Y7V0yX
         M6uTNezSrl8yh+Oi8h9acWYLFC2xqcX4RubZFqyHHkt9O9vGyYFXtrDTmIIKsUWvFW8r
         puleFUtPh+tLmULOZBXITN/X4dA1xFSKaGiXJmBkfAxuORWWsKyLJ9kUsGirH7JsNC9a
         4JByCQPZq/rhvTXGkDcRoAOHi04sM9qP2820HmuOnZZa5uqnf1MDN30rB2sBkOMnG1As
         XQpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="t+m+/96i";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=75ES600ZB9O+CEPpRSmyKXTf84BaYZM2NX5PLjJ88x0=;
        b=kNcmyAi+4sS7hKaGUhiMNEBoKCxobX78wm0wPZ6fM71yk0JFOYGdHm/JFP9irWoYdd
         eQ6tjGNKpNKJwUKzZYbzEt5ayIQEBtsotIwQB6JVoSFM9HX4FT7W8vhz0FuLjwrRbxU5
         SZCqvRvXSQJ9kCULqWfXHvFCMxw3hnDuEQwVNdpdvSxl3I0wgsR6MksQ7m0jhE5LssMt
         m7Z6ozDv5D79jwogXilWvpmarB8pqvFZErUdpHmVnS2GOYWEJyxO94wv/+y0twwVNOsU
         d3tlng+PlW26kzjHnzCtMAA4ED5zFAI08x44eghqPfRisW9SLA4ZngMfjNFSSCkegSjJ
         +uTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=75ES600ZB9O+CEPpRSmyKXTf84BaYZM2NX5PLjJ88x0=;
        b=YyXkGLTGv1vFo0FGsbu0qOzhwEc33JbB0WuK3c/ovGZF5S3zcEnSJir/lB/EGZECbf
         rSYsrMsxOaF17DlzbJ9SV1V7yZb2X0CDjNOVl62IuibR9NrdDO0+AcwR9Rc4GrfrpNk3
         VEYorj06aBwPooViZ7Aj3m/z8+PI2722IuPFWEhcZ3KdDGNA1YdjLjWw0iKeC1frII7f
         f+W68RGYEjrOdwBmTsLAwwnUGn0GssLxnktjiTfQ3Y/GjC90OiQK04u/yJLWHpcT9Jk/
         vcFyCogdMc6WH0zJritPAQn5nMWnsgBAMCmIVRWhn+xgda160DU1Mg2ApMkOjxtIkQJV
         8vzg==
X-Gm-Message-State: AGi0PuYWMdny7j+Xa3Mo4lK1/bh7NRINcOcVkoeeNhtUwQz4elY9AM6d
	i7mVybCV0DACgK7GbTe1qF8=
X-Google-Smtp-Source: APiQypJmZmOZR0alJ5xBUnPniflRijcogTBd99FXCo/fKkyf90xSmCGAgJkO2zPS/XlTE8rN4LIQ3Q==
X-Received: by 2002:a17:90a:b293:: with SMTP id c19mr43024206pjr.22.1589468512701;
        Thu, 14 May 2020 08:01:52 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:4d05:: with SMTP id mw5ls2877943pjb.1.canary-gmail;
 Thu, 14 May 2020 08:01:52 -0700 (PDT)
X-Received: by 2002:a17:902:9a83:: with SMTP id w3mr4193337plp.53.1589468511966;
        Thu, 14 May 2020 08:01:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468511; cv=none;
        d=google.com; s=arc-20160816;
        b=IiL82V8DqHvb9YpPI33fFwEVH1nzf714cY35lW+oYaabnmKTQYsvaODUn/v07++QgE
         cNpz2enSanl97uqVJgtCviefiTYWGzKQw1F2Ybhq8K1n2SR4ZZzGW7uVNSUlp1xJq675
         5H+zttEviCTsT30sgkOviKENq8OPinjFRxiEHzdzZKvPBNkh728/tJhY44RSMwcyoyTa
         iQsUrp2LXvMtM3eYGmZLIk5qs9fQQwh0Wdn5Egz6NUyXrKmgk70fZ+79JsE58zU7WVnr
         t1Z1LcEv9Uk7Y3wtj1YaT8XtA16UC0CMl/u5TWtRE+EoHgduTHOpos2MBLhS43UbJQN+
         Lwgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=86+kxHyuEg8X/IxVx0PHD94jdABj82nk6UhFXmMFVfM=;
        b=NDc519eyUXA1LUleveDPP6c2Iy6A8oKDtCL/cIIStQS8JG8qhtXOfGH6FBbJpqaK5c
         JmWF8DCsY3eX/8nS9ShnhqTd1VHv6yUTLCHR01SHfVS4AQjkhE2ZLaG/Z0xkxsjVuduR
         gbhEmorn333aAO01fUtqqm/C+xC2aUP8OCWNWHjsMFUQvM5rWGm1KoODA/sjvHSDtDPv
         G6/S08K+kdNpOpIKn8tQJkiYJ4pbWXAQoBM6FzXV47oxUQGQifgp/Jr2xGajMm6Htjxp
         6+czUR3BF0ifL4cbCx9tsKcBO9eYKeXFquSdflDQuZt5hsNo0Zkcq7xy0owwzjFoYAvp
         CfzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="t+m+/96i";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id e17si788820pjp.3.2020.05.14.08.01.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0sOa000610;
	Thu, 14 May 2020 10:00:54 -0500
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF0sgk103945
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:00:54 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:53 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:53 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAw019279;
	Thu, 14 May 2020 10:00:49 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann
	<arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Tom Joseph
	<tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring
	<robh+dt@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet
	<corbet@lwn.net>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 14/19] PCI: cadence: Implement ->msi_map_irq() ops
Date: Thu, 14 May 2020 20:29:22 +0530
Message-ID: <20200514145927.17555-15-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="t+m+/96i";       spf=pass
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
index 3f481a12d43d..ab5da996953e 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -319,7 +319,6 @@ EXPORT_SYMBOL_GPL(pci_epc_raise_irq);
  *                         MSI data
  * @epc: the EPC device which has the MSI capability
  * @func_no: the physical endpoint function number in the EPC device
- * @vfunc_no: the virtual endpoint function number in the physical function
  * @phys_addr: the physical address of the outbound region
  * @interrupt_num: the MSI interrupt number
  * @entry_size: Size of Outbound address region for each interrupt
@@ -333,7 +332,7 @@ EXPORT_SYMBOL_GPL(pci_epc_raise_irq);
  * physical address (in outbound region) of the other interface to ring
  * doorbell.
  */
-int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no,
 			phys_addr_t phys_addr, u8 interrupt_num, u32 entry_size,
 			u32 *msi_data)
 {
@@ -346,8 +345,8 @@ int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		return -EINVAL;
 
 	mutex_lock(&epc->lock);
-	ret = epc->ops->map_msi_irq(epc, func_no, vfunc_no, phys_addr,
-				    interrupt_num, entry_size, msi_data);
+	ret = epc->ops->map_msi_irq(epc, func_no, phys_addr, interrupt_num,
+				    entry_size, msi_data);
 	mutex_unlock(&epc->lock);
 
 	return ret;
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 59cd4c967329..bb00f107c0dc 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-15-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBJPEY75AKGQEF6GKVAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E5925D2CF
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:52:06 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id z189sf3490366pfz.11
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:52:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205925; cv=pass;
        d=google.com; s=arc-20160816;
        b=KVhD0ms+Yz2kxmJLOrlsFtUSjbKXfgE1LESXUCyH3ZK456jPlM0IVk+lvijmILCfsc
         YZRchCtkt1YBrYQ/uVJDihPSBf4dl0ieeOHEHPfyIJ9VrWF60j40rz/paLOHLBrf04Md
         SdBChBunseNyQkaVoy8LWu6QokhIqWqOha9lD1E6KvhkIRpKJOMKk4twz/oozItY8p9d
         qQjObIJoBBHWfu546KOuVwbV2eYxwFww1BAz3058rf8rixL2Wy9Dlrx+kVHCNYay1n6I
         pqs4HVD6idk914EHrQwwCD7EALM/giQnoRAOZ2uGj9TwR7Jgh3JI5UoCQDNGxOX3Ll9B
         Gc1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=hBPZZPKtuvHbtQa6xR796zXozqRHeFc+LiKpMUfVAqo=;
        b=ZzngLkxyP4Dz3/9/34wqVj7YejhTaeoFJe4hFXJJXTKE2pRws9Iik7Ki9z/RjJ/mgf
         iF5QTfCamzIWzCKd1DezdXzxzaf7namTh1cEkRO0GTxaFvmMtKCDQL/9ClWJSgpOgO0S
         JYeQV05DHtZDKDc2sTd5MCtFsJCnVEjC2T6/Z9yH1iyqEqMi5kXnpqi2FClpZwmtviDn
         tZc+G7KiExIEZdYQ5v0JrTOJmb9Vgfkzv4o1D3MxM7DlUupctljw0vLnjJGLZoasJHVY
         SVN7fKI7eVlNrbR86v4YPijTh3vHuTKLz+DI4tvI+TqiUqdqdz0aFfPd9hpdkbBm7Nn3
         vHTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=EJabgRfq;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hBPZZPKtuvHbtQa6xR796zXozqRHeFc+LiKpMUfVAqo=;
        b=dguMCApFvX8G9nCPUSjbL44yODADvdAsR0Watg+uwwGOgsTV7HctwBmVCsCd+JJzmf
         hOy7NuneplsEFtIbRJM1Pw0oVLbRRu2m9zBKDQkqvaf14vH817zFxdOEVUVr/CztJH5P
         JhDuxIKUe5sQ6ezMoCv0X43RUlVW9qeIe4g1Ql/hW9SlGVhix0dyYtAD88ZwICPZ8j2L
         o4yU6oYVeTM5GESfsI6wq8Y3Gw6N6/Cd0zP26fxO9ejp2iGxwPF1X1g9VexPFvaXtl9x
         D+8qDkssrESSC0Fl3Fre3Ylb9hsJj879EmWZhVtAE/Gv1by945hc0xbSrIhdiaCO40WN
         HnJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hBPZZPKtuvHbtQa6xR796zXozqRHeFc+LiKpMUfVAqo=;
        b=Vhy1fOvoqCPUR5kWWY1Cucv22Eb99FwLCXFa+Z/DE691ydEF4oKoaXjsLlVZR5syR4
         kVGUEGF6ilH6Baabeqy4O8NxJZXAF0DJ91fbr9dsBHlRpHjoeJDcYkflK66l73I2jtll
         RDegiPX9N/q6TepHSMZpyqNoaxgeUysfYVxb5iUvE/09/XsySQTCWXQRamppYlZklT1J
         lzQ59xfhQ4sC53uWNECah2HC7GB/XeNPU67/e4s8LJPpGZlz36/UMJb0lgRWKARRt7sa
         jnM2aaoFuiY+RQn1gvcaF7J7E9EsxqGA/w/anrkvYvRWcRyLPed9QBnqz11B2epNpSG2
         kw7Q==
X-Gm-Message-State: AOAM530MeMsSRCga/RaA6YTUQ8//ADdql6QKPXJShrGwRdDiU8gE3B35
	3oUpYBT5twfqjzTHovvsg4s=
X-Google-Smtp-Source: ABdhPJxBEahZGuSaIycdgjbc+3RyWxMb6zvPdq8ScO6tA3lr45Cdp+pVQANaxQ1NL9ZE7XS5irirYw==
X-Received: by 2002:a17:90a:f298:: with SMTP id fs24mr7220770pjb.4.1599205925693;
        Fri, 04 Sep 2020 00:52:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:e303:: with SMTP id x3ls3799577pjy.2.gmail; Fri, 04
 Sep 2020 00:52:05 -0700 (PDT)
X-Received: by 2002:a17:90a:a583:: with SMTP id b3mr6923540pjq.127.1599205925239;
        Fri, 04 Sep 2020 00:52:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205925; cv=none;
        d=google.com; s=arc-20160816;
        b=BiDhvLRhgwZvLUfvdDvZaEqenKlWstVAsRGYHJdMgLf9wxshWfokJ5Ui7nkelyjC+U
         XCYFi7pzMFjwTWvukib2u3pLjyPRkmIEVl0kf4LU4FVMXZykaege0BpbOdT2dChesbLp
         s2CpMIpIwVCgh13EVF2EMQll9QwaSP/IgvJj7sivTuVLRAkPneF4hgsEhmOI8AYEZEtb
         EAMxzWvxxFb3Yf5F4LVUlxtPpymB57oDuNE3dhZ7Uk6q67jhscLrG/T30+fR5DVQMQuU
         AZ4JCjOrWnCMUMUORQLL6mPV+6/H68PoM/Hy9sNDdCae+3wclTDd2x90OwAL3lM6yfS5
         Fvcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=dKk/x6X8YcSroAHhU2W03tyG96wKptoi3eaPmsVsNj8=;
        b=J3BtgcoQt1PheQD7fEqXU7WYSRZF83rpyFNNwaTxHUVegiK4AhStceoSlHLzpZZbM4
         MMzkIi/1fZNZ2v7sPpoSS0j0i4tYaKOrrPAyihsFHWLY2IjdzDZcP5o7DsqyPtbpCxhb
         6mE0LnGozOR8uc3pJwaVOsQ45lx+u4ysfXTXKY61TODTJ7LF3tdjl5tkjnJGqdLIdB1M
         0ZGw+QPfjl6PwPl7yXwkmdGGNgyJokQL9mwzwJmekSCqI52zvmxwursZUunWT+nzJ/0E
         /Jch9iajXPwhry0ELNtHYdGzGczkuBD5d8u6HhDPgpfjOgW5vEYddwHqBX9fSmSUaGq2
         q5bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=EJabgRfq;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id q23si331201pls.2.2020.09.04.00.52.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:52:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847pvPo017874;
	Fri, 4 Sep 2020 02:51:57 -0500
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847puCk061623;
	Fri, 4 Sep 2020 02:51:56 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:51:56 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:51:56 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osNC058796;
	Fri, 4 Sep 2020 02:51:52 -0500
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
Subject: [PATCH v3 11/17] PCI: cadence: Implement ->msi_map_irq() ops
Date: Fri, 4 Sep 2020 13:20:46 +0530
Message-ID: <20200904075052.8911-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=EJabgRfq;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-12-kishon%40ti.com.

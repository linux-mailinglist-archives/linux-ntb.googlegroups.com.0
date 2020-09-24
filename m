Return-Path: <linux-ntb+bncBCOOP4VF5IDRBSOMWH5QKGQE5Z636IY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E912276D24
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:26:34 +0200 (CEST)
Received: by mail-yb1-xb38.google.com with SMTP id 140sf2366685ybf.2
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:26:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939593; cv=pass;
        d=google.com; s=arc-20160816;
        b=BNuMZaxcwWHAR0guQLoEUfyK/FGv/z8x2u4OXWAYj6T7hjM57LO7kFF1Zd6LAh1XUs
         hV88w4IUNGzaMqz01ceVc1GFj3bol3iKb32ojzZIN4dsXVfYsDrAQiY85qJS6d6/eWnO
         PhNiGmK9M1mgI6p8zIqePGoX1PRBkvn/I1KbaafwGmkslgkAAUmbrMD8GWeVjPayGBq4
         dFJIi2pQC4oOVfgx9YGqYdx31wXO+lcIcM2O8bmSmzx2jTRfY0o1vxK4l/DB/nKOo+H0
         OwKIhEJBBnhkH//7f6SSmCJdLFrSTqqWySJDh2M82M0F/U913H1aeTJL8I6QudnUP9Aj
         eRLw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=sEjlhdfvXFEgm1kjQxu8wbksgKYl0BHR5Pu7lpLGnbk=;
        b=HJdGAY1g/I3RIx3Lpi+0jHjRcXVv5jYI69q5ZJ86X7TLje8auikWHKIf95xTmZl4Ma
         xt2qsRwvzlA8ROnqZ1Q9apQcMGGAU+wQeGWDVUPwCBzriEP7vm8PMjqeDVVxexCSRP81
         +KcxvsCCYLU25dnbLS7e7LQl8VVb9uTJzkQm2EZjTb3uBpQ+n+mFfBr3/zzviKSSWjZM
         vXbAH64arSPsFhWU1NT48HEzyT6rPtAEj05ff9u/ZF/4+2G3/T7QFUUH09OjfCzMd6FT
         OIhDNQun0MzTL6ZGtg6LlRe/RJpt1NScL3KQUUbMmnIh1Ahev2t/lh4yg2AUlGK+CEk2
         zqPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=s1JOtTQn;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sEjlhdfvXFEgm1kjQxu8wbksgKYl0BHR5Pu7lpLGnbk=;
        b=jwEOC4ETsACBpIqAVnOLX1hCcIZw2imYg1cTnf6SAGD+jJpYb3UFlk+0vqfNXM/km3
         W04/Gux4LXkmGfKy2FyydeeKJKzGBmSEvByj4KneLLyLUvlSa2BtFevR5zE9lZvd3prB
         hcIhx+P8uqAcwI2xVDklyJXS9coUxrlF6UWfPzlAtT3C+TEsrg5lSyghtg6sqUnEoHz1
         x0fBVVzmYG0+CgHai9ZizRsK2h98ppeIHE9Wjn2sWUrLHch99GyOcePc6PtmzSEGsEwC
         zPHDP4yWaHIGk47BX8458bnd53h35T7kU4ujgyYd083iWZF0JC0fMvKS6tA2HlEmfChe
         gmGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sEjlhdfvXFEgm1kjQxu8wbksgKYl0BHR5Pu7lpLGnbk=;
        b=RshS0KdlKZX1zMmIB29IChxrSd/Z+lraMm8preT036yF5yH8lAEnVWQkZJfpR4Qa/d
         pd/YzEcLa8dOaKTRci+dPTdbtvaNqMcO1v07ZPE1OnOpLprBlpUzMxGV2iEdx+49vGmH
         Lu9aTaEL8s8Sk9zsRJAz8t2NG8x96lH1y96SfJbkHGxivzzXADLbuAmptzJGiLRQB2+E
         QRe8F6mUiY4Du/ayIDWoTtGK1rxSaiyuydMkzYRovxmg8zFdkacfaVCAUGVQScegvlS8
         BeUhULc+hQSk4ABoZAfXaCyrnTDNw/Nyf3shc5IRwm1rvgTNd13lMODQJW+dZ1DJUyyv
         L/zw==
X-Gm-Message-State: AOAM5305udfynp370YZlwh2UmnTSSROSI/9X4/OkYnp8D6e33lLE0YuI
	9bNIjNukQuYg/cbTHcwVYMQ=
X-Google-Smtp-Source: ABdhPJz1ALhZZ04BTBS32WqS5faqXDu6c16yXdfN56PMYdRzEjP89//HAmnekCmTS0l5ZNOInolVXg==
X-Received: by 2002:a25:14c4:: with SMTP id 187mr5946335ybu.449.1600939593134;
        Thu, 24 Sep 2020 02:26:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:ceca:: with SMTP id x193ls1304687ybe.2.gmail; Thu, 24
 Sep 2020 02:26:32 -0700 (PDT)
X-Received: by 2002:a25:4d8:: with SMTP id 207mr5999381ybe.227.1600939592628;
        Thu, 24 Sep 2020 02:26:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939592; cv=none;
        d=google.com; s=arc-20160816;
        b=Eoqg9VOJT9GKQuLNzfa9ff3vCtAS9/UqItOeZm6aUzPi9NhoVFkL1Hd6c35g4tOBS/
         AcbdIgEXktcJIUsadAzevAKiwA/NA2dAnih32W+9CGVrs+lM1TDnQHsKeWP2v66OqxE/
         ButVDT1UUX6LysOBQx58CCYxqRdMxLeam6rzSwlot3G+bwVnfYaCa3GtKY8TPt6tMfI+
         HLHdpMrgJHbN9l+DVwURuvYklpKN09RrMFUdZNmnp1UbQjASGtbU2+WVbhrigYnVv7kC
         ZwHNe8tL5x1VYfIp408J3jMoItINHp09kHKjJCQh3y30irvUZ1Emxm7T8VbDtLxOZg77
         LGIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6IM9T5Q5Sty9RwI007R5xRu3yDwLA93hRe6J986fKZU=;
        b=eSlpRArsqwn7UlxYVVy1FU/8tHuxrsmijQlAGpDk0k2quNg7q59VHqk/gFnfWqyPnk
         Jk/Cw4oW9jbf5GnaUUkiVqmoJK7rnU8vwo70WMyX2xc/7ZtIaYD5pZFkwEXaV50W3tl9
         4ma1gRfOXQm8QkI90oIqTPorRN1yeFq1dPXeOmVx6oiTuZwxvs1vL8uFJr0M/yKRL6qA
         eA1LQd+scbkv39MIbf89HMHmQiBxIydlJkdnnV2kR0V0bjh04SHfKb7d1uoiNCuTdwqt
         Q+2QvL3w8IVt2UZZL/8PI/DzFOQddWG0iAPUn03wVJsnyBR38XykFIDSbTYkN3sJDlqX
         hkFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=s1JOtTQn;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id e17si237709ybp.1.2020.09.24.02.26.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:26:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9QOah117453;
	Thu, 24 Sep 2020 04:26:24 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9QOmr018748;
	Thu, 24 Sep 2020 04:26:24 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:26:24 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:26:24 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POZ0011000;
	Thu, 24 Sep 2020 04:26:19 -0500
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
Subject: [PATCH v6 11/17] PCI: cadence: Implement ->msi_map_irq() ops
Date: Thu, 24 Sep 2020 14:55:13 +0530
Message-ID: <20200924092519.17082-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=s1JOtTQn;       spf=pass
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
index 6b217b4258b5..65b27b631bfc 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-12-kishon%40ti.com.

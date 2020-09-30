Return-Path: <linux-ntb+bncBCOOP4VF5IDRBPOM2L5QKGQEX5EHJ4Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6556827ED50
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:37:34 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id v4sf2156531ybk.5
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:37:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480253; cv=pass;
        d=google.com; s=arc-20160816;
        b=nkzbBcFDg3WPP79BLM7Buu+Jp074lEV+fy4KvFtoaJOdeVMcYZ1Esl/aOh2Xtmh7O/
         buOpvgnurPJcktsocV1nHBYqqHUX/Jqgte7gEHGBma1De1wmY5tSBunTHC5q32mdfgLa
         a4AW3svQogwL8vooNFcVHGVDmONcLXZrYVrOYNcdU3pz/ne4VW2T6kvh8mbJovTWTEpB
         NhdupmG5wcqJtn5BNGbTROWG8xdSVvLxbkjVumNhvPBPF7MAzlv6xPye1QOun3VuSqzv
         0aIWlI6Je6wYV7J8n7WBKja7ER6f6BDFWvQ4DoFu83Ewvb3IIJGU7xs4N5Zkabqyz+ny
         Ce2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=LfdJRxRWPeBuAQbnr87QwEQ4c2+F2OfBAUTe+9f7EfU=;
        b=m6mtKz2RZdxIEbpFhz1vQLAe55wcO905Cl/GYdNJVA2JVnR7CleSuyKFLDpX9374N+
         UDZfrJRlpg2VFAfIBIByV+NGTG/26Js5yqWeeAO+05qt9lT1EnkqLs0xpGE6vcLqVfYN
         FPgtQMVGwy9Gg6VINzQ+FTVHn07dTfuFJLUna9yrGFDf9bqpsO0Nyep87PHa5f2Zg3lB
         b0kntmudsBfRVQ7fXIn10rDciA+AAt1B7sNdCcY2F7HvIY2IlV/9Nv0qwUmimlPsdfLj
         xDHKGEAZfM/fezgjMWt1k6eyx69Cg/05MR6/QTqdZjTjtECeUy5pDLk47dUkzisr9FG4
         FqDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Md94JFk7;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LfdJRxRWPeBuAQbnr87QwEQ4c2+F2OfBAUTe+9f7EfU=;
        b=B6eyf9hc21+WwWWBh3X+UoEVdqYM2Touh+9hbpY5H56ph9RaxMoihPfd6ApPLws28U
         WdW2wYafnLFIqzhGg8PXK0mmbEjsaUkOnaPM5Tnnu/KSCLuzKZKip50eZVJRz9tDXae4
         aW0EhVKu0ID6VWTLsZaadxMF+RAIip+B6gpJlATIBwv1lUae6S3zoibt0YErLjm+EQKx
         Pqylf1RrK5ziOZ/0oVLq9xp5BnvBjGypIHvSAu807eh4RsLHKhKg3a9eP2XxM9jfWIox
         RjyZ6M08SNY998bFr8a6IevHsLAdH+CblebfCPb6X78as0fJBbA+bOWn4dEHcmpwyGZR
         Vl4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LfdJRxRWPeBuAQbnr87QwEQ4c2+F2OfBAUTe+9f7EfU=;
        b=q8eE001LNZMWSEVUPcFRR+DJYReJVj9g/mrB/MZ7Yq+aJ21irmQs7hImHRbXSHs1kS
         /UjKblevIqwX07bsFA+Kvo4mhvpMSvDKK+JBWm49elrAnplU9CP9+Ep0vOYtnzluL0Ld
         c7Y/99qxHdbK7CsfhUkjfi7zdvdjAWHumnDu+HLH9RRQCRsLuk3j3O8U8Li//Xftqo+W
         9pSTK7QN7eLuA7RxT3web2jc8r/CkRWfjcMhEaBBRwJ/5AbqjlJoHTi2mn5/oXip5BBj
         1eGfoF3IfVAqin0coezvMoLfw0d2qXGv+7MHNiPXcqv9jTnwTljnlZErs3fGHKfrG4fP
         u07A==
X-Gm-Message-State: AOAM532rJfGvUxlOe+cAH/s9r878+naYh1eB994uSjzqGy3W1j/5A4a+
	uYVUSPhoLHTr9hcQutHdYfk=
X-Google-Smtp-Source: ABdhPJzkTlI18uekqDc2I8P2ajQVb5EG+RuhchSqECNxHH9KnftBzBUFug6tZD7Hiy6xOrseOshd1A==
X-Received: by 2002:a25:4090:: with SMTP id n138mr4072575yba.320.1601480253449;
        Wed, 30 Sep 2020 08:37:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:ceca:: with SMTP id x193ls1045983ybe.2.gmail; Wed, 30
 Sep 2020 08:37:33 -0700 (PDT)
X-Received: by 2002:a25:2315:: with SMTP id j21mr4562780ybj.457.1601480252940;
        Wed, 30 Sep 2020 08:37:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480252; cv=none;
        d=google.com; s=arc-20160816;
        b=qVl2QubfiPHshGW/WK6BAeqa36MMDfIipfy8KXb/alM4pn4Gf/aleropYspPwarNgC
         2jKuy9Jk4v/iAKy141evSluWASM97Zs9bQEqYQnsfi8JDOhxjoLAflaTAdetD90bHqg0
         vKmmXqmWZVjHKF17btXAUDdvK3rZa3vQ2jG7WlAnwrvVfn/Y51cbrK939lAPiFKscalQ
         CgqV9b5MHXTY8AxGt0cVLH94EO69gphsg3jp9Q/3+Er/4OrrIqbwVsfwqoUKtIKoDa/w
         lUhcvZk1tlfy0paGUTj3Jy+J+OlghjegLJc05a+Myasb2Xsj00tx9yrGaELfKbEYLMW9
         nT4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=1Ii+sodm1kJBqDIewPjIsrGNN7Eqm55YjonNoKE1M6Q=;
        b=pHfl7TODku6sPps8opt/IHT5mx6dJlRX4a4jPw2zUgPCVTQFT9o2YS67JRY3bQAnY5
         Wip7nTJ33T35IU60SXNHoA9mglXOrTWNro2SJN8c4gdcC30Z1Zp01C8yMrVtbuXWJgq+
         YOE0CTlpvPbjJELHQowjhqJnJrx9+Yzx6X074ux8nXwUVuv32FnOC/t9JLff3nkt0vUp
         zdfXQyEA6vkw7WWMc5cJJp5a4/N64IVjsEJIykPB3c/TktpmUwdCUuwSliJP+tyPZ1Qs
         iG3S4HOHrxoNDiQF3VN925IFEmi0kAcBe+7+kSkCnqD8sTPoSlL6RknLVbeWkEjNMYfP
         Flkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Md94JFk7;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id s7si194659ybk.3.2020.09.30.08.37.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:37:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFbPNf044103;
	Wed, 30 Sep 2020 10:37:25 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFbPGN026755
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:37:25 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:37:25 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:37:25 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZa033254;
	Wed, 30 Sep 2020 10:36:34 -0500
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
Subject: [PATCH v7 11/18] PCI: cadence: Implement ->msi_map_irq() ops
Date: Wed, 30 Sep 2020 21:05:12 +0530
Message-ID: <20200930153519.7282-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Md94JFk7;       spf=pass
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
index 254a3e1eff50..5df492a12042 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -383,6 +383,57 @@ static int cdns_pcie_ep_send_msi_irq(struct cdns_pcie_ep *ep, u8 fn,
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
@@ -482,6 +533,7 @@ static const struct pci_epc_features cdns_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = true,
+	.align = 256,
 };
 
 static const struct pci_epc_features*
@@ -501,6 +553,7 @@ static const struct pci_epc_ops cdns_pcie_epc_ops = {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-12-kishon%40ti.com.

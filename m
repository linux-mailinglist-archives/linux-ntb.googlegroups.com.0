Return-Path: <linux-ntb+bncBCOOP4VF5IDRBB7JZT7QKGQEVF4GA2I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id F17B12E9893
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:30:16 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id t17sf15828200pgu.1
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:30:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774215; cv=pass;
        d=google.com; s=arc-20160816;
        b=xgNstnV6ryQO5k8eYkBXPrRy8cM9XQf2cyBAfOx6MDAP5PfPV7cNh+BlWBpSQ41ipo
         nynfU9TXOj2KVYLwOt1ytZpaLkdpJGQnSQlCZqDJ4bA5xhJWVnghSDRjSuRdh8VlW9yi
         dRk8xq+t69n8R35/Ae0+6Dfq38kQQjwNdX93qvVG8oi1VSexSmtKu1DbRLVT9IrvtHTl
         28Mmqk+umT2KESivcVgfrgc1YxC/swpmWWSXwtmqXph9n9gkoETGzA6sBDEywyQVtWc8
         tid63ij8jU8i5o8rsFclyuK4qKH0NcP0Kml+wDgQzvToA+vFXVi989/q3y0icf1jysly
         1qrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=AwaeGOCNE6LewhrmqT0IkgTLVYOsAL2/n0lG2IBDDek=;
        b=zSPbA4cm5UWCwCjqkCKJoD36jM44XVP5I1IodOaM/KsWrXRely9zhCLmop63vADhKw
         dxgfW9aUWMYneBsYACEvVPmBy71nUHG3+VmcE+EHniIUm57kOKZC+1ODj7UH8dQgdNwA
         LnnY9EFCkK+ii4UXdjdA9W5eTy2lvqfJFQGADvjlvi8cE11/y9bro/zJ8HKsfzqLXorf
         uk+Xr++EdhcJ1C6gXsZHRJhsPEKTJnQ7lSzeUcljD+MQk/nQX+5/M8masEguI7+zqjxi
         tVJ5FMyRtSUoT4HeJVi8Nspo5btOhH1CMWMcXsksE1S0ZdhupbXBg083Z34eBL5BnmiK
         wnFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=gWVvdKEI;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AwaeGOCNE6LewhrmqT0IkgTLVYOsAL2/n0lG2IBDDek=;
        b=SnTrB9HUsyKxz0d6IIbIU4y2NTwgNf0Tnen3NDrIJS8dTBdxaOiEo5/FmqjyqTa4c+
         ckS5AmEY7Ba4MS+Sj9X9R6XLEIwNp+tht5eCZEXQRUSgQnn39psz/8/sNwqvJSS9L8og
         2hkvrV4vHbIphkxHbhw/bSYkJ/xKmzi4dDyfiBB33QEmLFGlmJeP33Vx1G3PgcOgnXwR
         VSWUxp/0ym8W4TTVxnWi96O7NE9BZHptf2nob7D3W29CzKUkP89z9ae6CadWywFfK3Kf
         aesToisdehBLOZNQhLT/pmY209JfPy1axBsOP2Wm3jH8sEhD6TrJvzcqvSGcioAyghvQ
         Mp3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AwaeGOCNE6LewhrmqT0IkgTLVYOsAL2/n0lG2IBDDek=;
        b=UpEcaT+7rBlZhtk5lrl1BHNvsj6nHMaEz0WmsunlXAa2dnF2eV5AQmzDTK8OOL5+Lc
         v/z5MZTatbZPVbkNnYQhWIVNHF1bpd9JxO9r/J5I08lyu+EEDM+NxzjCQe9dU5wygth5
         QbL0evCFrB179+bXkd3PAr9TdInYZqdrwSe0TJ6wjM2SY/P4Yl1cnWa707LBNHrvD0zH
         9GoSLnoSBY5toj5toq9GZlwyylLwhtvilF5DOCcJ9KrlS4X0eKVfquVBUY2zk4+mLtHh
         AoSxg7xVEM7wAcxqw3d43HyXlSEVd4DCKY8UwoSz7deKibn9Ew1HD/UhcZffP/h+9akp
         j3xA==
X-Gm-Message-State: AOAM531IrbVZFyjTzzcEy9Vvp801LZNphTzQXmLkwFWaxTv5yhZ5Er67
	kTH2NUS9EwfZqh75a9kkjfg=
X-Google-Smtp-Source: ABdhPJxvBtnZ0WirBACLR7K14d+A1XxAxCPBlAUPSFC+WNn/aIslZ/dpZpTOz31+pUQ8F4VlQY6J/w==
X-Received: by 2002:aa7:9357:0:b029:1a5:43da:b90d with SMTP id 23-20020aa793570000b02901a543dab90dmr65678696pfn.54.1609774215772;
        Mon, 04 Jan 2021 07:30:15 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:bb95:: with SMTP id v21ls9739061pjr.0.canary-gmail;
 Mon, 04 Jan 2021 07:30:15 -0800 (PST)
X-Received: by 2002:a17:90a:fb92:: with SMTP id cp18mr29504646pjb.203.1609774215139;
        Mon, 04 Jan 2021 07:30:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774215; cv=none;
        d=google.com; s=arc-20160816;
        b=C7H4iMtpCJl398h1/uiwh41dRmU96/VcGI6AwO05tdjRQ/YM+1OdHWa/0kmJbschv5
         M1Aw4Pb0Js5zOLb9mLL6a4L93OlQV5qn3BISMzvs+rOMfVJXT2a2i6e+ago8E630jLss
         xqyViZK32kkIbOoFtuy8k4KQMj2ZWmpR5zMfMTpb4mUR8t9ux3PBL8PMASNB7rsakv9e
         bFKCMvRfJsTt4LicrCOgJpdA/8bPnaOF1cVRuYejEXt78WiEjiQEr/I+/FjuY/bLz2GO
         JT8oy12K0jvw2JfQ/a1ACNI8SP57ibY8gd8Lsw4Rn3wjHu+MfEKJV/bcxc5kgoQW/R2H
         CBmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=nm506Ttw75QB9g3i8XfbJHgDWMXVATaPs9Pwq9jcU6c=;
        b=j9MFx7vzxOmCCyWO4sAUcl1HBOOcxUHY9s96K/V1ItKT9VH1gnX91VN51WoHMBHggB
         mx+6re/F4YIRkEVuvjiXyyXgnWWWyOiCBj5BfwrNEWJrSmxB+UZq+CwNvNzRomQUbmwH
         46lGv20JWa12n5T8/5RmMKGMBzFDZuqSTQko7Ome6LM55ecNUBAufni6J0HuPUkfBsoc
         fHuMNgoSWVcgroqpL4zl6O7kncmUPt5783JnDCAwc2OYsVE1tplZOq0NvgfaV37cYw+F
         QlqEKKxw/kAlMBfLpNrkt5+rxNsLAkVgj+7EWOn7RW0lvL67mNvLGl/4haweLd4ADRVV
         a4qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=gWVvdKEI;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id j11si2024200pgm.4.2021.01.04.07.30.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:30:15 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FU6Qt029336;
	Mon, 4 Jan 2021 09:30:06 -0600
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FU6oH007853
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:30:06 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:30:05 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:30:05 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZE093710;
	Mon, 4 Jan 2021 09:30:00 -0600
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
Subject: [PATCH v9 08/17] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Mon, 4 Jan 2021 20:59:00 +0530
Message-ID: <20210104152909.22038-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=gWVvdKEI;       spf=pass
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

Add pci_epc_ops to map physical address to MSI address and return MSI
data. The physical address is an address in the outbound region. This is
required to implement doorbell functionality of NTB (non transparent
bridge) wherein EPC on either side of the interface (primary and
secondary) can directly write to the physical address (in outbound
region) of the other interface to ring doorbell using MSI.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 41 +++++++++++++++++++++++++++++
 include/linux/pci-epc.h             |  8 ++++++
 2 files changed, 49 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 3693eca5b030..cc8f9eb2b177 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -230,6 +230,47 @@ int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no,
 }
 EXPORT_SYMBOL_GPL(pci_epc_raise_irq);
 
+/**
+ * pci_epc_map_msi_irq() - Map physical address to MSI address and return
+ *                         MSI data
+ * @epc: the EPC device which has the MSI capability
+ * @func_no: the physical endpoint function number in the EPC device
+ * @phys_addr: the physical address of the outbound region
+ * @interrupt_num: the MSI interrupt number
+ * @entry_size: Size of Outbound address region for each interrupt
+ * @msi_data: the data that should be written in order to raise MSI interrupt
+ *            with interrupt number as 'interrupt num'
+ * @msi_addr_offset: Offset of MSI address from the aligned outbound address
+ *                   to which the MSI address is mapped
+ *
+ * Invoke to map physical address to MSI address and return MSI data. The
+ * physical address should be an address in the outbound region. This is
+ * required to implement doorbell functionality of NTB wherein EPC on either
+ * side of the interface (primary and secondary) can directly write to the
+ * physical address (in outbound region) of the other interface to ring
+ * doorbell.
+ */
+int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no, phys_addr_t phys_addr,
+			u8 interrupt_num, u32 entry_size, u32 *msi_data,
+			u32 *msi_addr_offset)
+{
+	int ret;
+
+	if (IS_ERR_OR_NULL(epc))
+		return -EINVAL;
+
+	if (!epc->ops->map_msi_irq)
+		return -EINVAL;
+
+	mutex_lock(&epc->lock);
+	ret = epc->ops->map_msi_irq(epc, func_no, phys_addr, interrupt_num,
+				    entry_size, msi_data, msi_addr_offset);
+	mutex_unlock(&epc->lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(pci_epc_map_msi_irq);
+
 /**
  * pci_epc_get_msi() - get the number of MSI interrupt numbers allocated
  * @epc: the EPC device to which MSI interrupts was requested
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index d9cb3944fb87..b82c9b100e97 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -55,6 +55,7 @@ pci_epc_interface_string(enum pci_epc_interface_type type)
  * @get_msix: ops to get the number of MSI-X interrupts allocated by the RC
  *	     from the MSI-X capability register
  * @raise_irq: ops to raise a legacy, MSI or MSI-X interrupt
+ * @map_msi_irq: ops to map physical address to MSI address and return MSI data
  * @start: ops to start the PCI link
  * @stop: ops to stop the PCI link
  * @owner: the module owner containing the ops
@@ -77,6 +78,10 @@ struct pci_epc_ops {
 	int	(*get_msix)(struct pci_epc *epc, u8 func_no);
 	int	(*raise_irq)(struct pci_epc *epc, u8 func_no,
 			     enum pci_epc_irq_type type, u16 interrupt_num);
+	int	(*map_msi_irq)(struct pci_epc *epc, u8 func_no,
+			       phys_addr_t phys_addr, u8 interrupt_num,
+			       u32 entry_size, u32 *msi_data,
+			       u32 *msi_addr_offset);
 	int	(*start)(struct pci_epc *epc);
 	void	(*stop)(struct pci_epc *epc);
 	const struct pci_epc_features* (*get_features)(struct pci_epc *epc,
@@ -216,6 +221,9 @@ int pci_epc_get_msi(struct pci_epc *epc, u8 func_no);
 int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts,
 		     enum pci_barno, u32 offset);
 int pci_epc_get_msix(struct pci_epc *epc, u8 func_no);
+int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no,
+			phys_addr_t phys_addr, u8 interrupt_num,
+			u32 entry_size, u32 *msi_data, u32 *msi_addr_offset);
 int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no,
 		      enum pci_epc_irq_type type, u16 interrupt_num);
 int pci_epc_start(struct pci_epc *epc);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-9-kishon%40ti.com.

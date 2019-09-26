Return-Path: <linux-ntb+bncBCOOP4VF5IDRBFODWLWAKGQEBI3NYWI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id D2370BF17F
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:34 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id b204sf1539275pfb.11
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497493; cv=pass;
        d=google.com; s=arc-20160816;
        b=UIycq9I4KoKX/Kl4/QeZ1TI9gJStn1N2qc+mGoxYlmcskb/rWOE7Vfkhg5VBwUW12/
         ZeLb9X+1ZGdIuLBy7mR0t6kEciO07jKykEH7lnji+Pb43WFYIemNy3QepwgWjRme3Rxb
         RUc7tuTYxPTgrh8BKaU8AW/g1etNzUNaxdKaQc80ojyMyvhunjqzuA6IjaXUa2Qb5dUT
         6MY2D8T8XlGhDS5YFFFTNUWiCeCvMKFmFKrF5FiMK0jA/MfUHScBkKohe5Zl6G1+5fg7
         Z0imlvg+9cS0sRydiurbG2C8CKmnt7W+NeXbMTRPLwUe32xlJpC1UWn66nAnSLsn9D/b
         6Xtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=3kJo95vYc1TNSoE2DuyFg85NSh+LMH+mq5MD9XeZUL8=;
        b=t+wRzRyFDwXYr8ke4dm2dIUKE7/TSlSyD01t5weORCwkFl8FV0wjBiexFnO3oXb13e
         0IhonxrRvmMridUX2E5AjEGtcyejlRUlZGdAZbkDoXgBbJilCIzx/fb/ntjW+fOTRI/Z
         B+lmlOrQLILk5oe3NG3Fb4GQs8JiHMMMC+KUZA8TwKDozUep8YO0zVXKtATTl3shRkGR
         fCG0xDx9tOGcRWaJNUbhhblB6ltiNb0cVLre6VA/83fjpPvuuVJ9DigQB2jk52ANHAbF
         DPenjN2S6Fg9tcD8UuBgQPQ2ZEOGIY7xilr582o8y9VKqt1rgnUwVfML0jtI7EMNJUnK
         w3KA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=aSr1crur;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3kJo95vYc1TNSoE2DuyFg85NSh+LMH+mq5MD9XeZUL8=;
        b=ouVFv/UDSrC9Ywn5XIoGAkscerIJEghb4EK0tGYQyul5TQ4iSGzpQc79KcFY4BeLgd
         saSMwySXQEJGLyhSoKLhRP0q6FLX5XQ/5I3Cv4EvzH04qvdej2lgF4il2jALOD39d6aA
         z93KVkPn6de57ehWm4JGdVYZfhqzhT65hwlZtrHACbazlr7bcXcsr/+clmkF4CgNFYFH
         qYpbAoP/y/GVVBEUyfpUcVi/KJxQXUuBY5gdH2xVsH4QAFJSqo1vqy9yI8OTEQKgU625
         nPUxaLz28tK+ZOtZFny3K4270oemhGxW/fQt77F34+ax6hWGUJWi3KyIlbkcwRfFITOs
         lcLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3kJo95vYc1TNSoE2DuyFg85NSh+LMH+mq5MD9XeZUL8=;
        b=SjiFnds3LeW8kbLjE6MGK3ne6WwZS7pVtxGNR216ao7MPwKvT7q09Bqd99USu9hia3
         JCM483JX8tj0v4E/XF8fUwJ/Eu1ZTA83a4HV3y6KQzFix9XJUlXGF/LVF6URMPtijBOF
         JPTLA6ziHXtC2tbZ4PBeRObf8NYntFzWyYoXq11KilDi6l7N0Y5O67HPDfWKyYVCIxQA
         5Fd2cKuxcjQV1SRm+gKwimg8c7wOJNY/SboGWlFErmfqT/tIl6mcQRjSl3jBUrhtJd0B
         uORScOBeXzAqn2axWcO7OV8WjDuRYd7FRX0xn/UaOKYIq5HuQM/P4cejJE5bIeUcvzxZ
         uJLQ==
X-Gm-Message-State: APjAAAXpP3ZPX5XrYCXffGQPycrFvukRqzXrDtXX33CpBOu2sUQ4tCtl
	SBFLrKN9T+cWPvJeX+v53nI=
X-Google-Smtp-Source: APXvYqx05wzx5o1fQJyhdJ902Bl6wG0dvDLc3J+DRq28T5puVLyejB6F0/59TogqmuAEB3+RkWyk4g==
X-Received: by 2002:a62:5cc3:: with SMTP id q186mr3058601pfb.15.1569497493538;
        Thu, 26 Sep 2019 04:31:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:9a81:: with SMTP id w1ls655010plp.2.gmail; Thu, 26
 Sep 2019 04:31:33 -0700 (PDT)
X-Received: by 2002:a17:90a:a606:: with SMTP id c6mr3113034pjq.20.1569497493217;
        Thu, 26 Sep 2019 04:31:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497493; cv=none;
        d=google.com; s=arc-20160816;
        b=HqJL/GN6BTbeLiJ7DXH/+P82eE59M4XcUKdzzLBpptfx9EjsIaE3allFBRM2zyAm0k
         r3Ine1CizjVfgSSvkN/7sesA62k9KOr+IxVrjabUUk2qlUTORG8cSppLmjRTUwDPqX5u
         LwCQYOdLfOEmIjzfiZABAlPLl/TcWySlw6SHCgISBmzULNfnPRK/vhbBE4Z38wOm5Nqw
         D5V/c2sisMTVbXqVIswjB1SbZN1oWQO1h9bcyU9x3VPwbAsIwhF2SDanaeeATwJCUBQp
         q75G2bRpNNxHMpIZmXMJRyNkTW6iTWl2T22AvRA+/CaWtZcxpYCpVz33eAW/xlXuf45Y
         IONA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=1e8ivCO58tj7yZejWhSGbZsRTueBDWvOfW2EVwnBC3Q=;
        b=SsSgsaeWrk551KqXI/dyY7wepPUmnKAA6tbDFx6V+kiScrYxpguwqmSo2Brt1ScePk
         BXHVBc/cwQoqEkOiQf6QZ2YjMCrVyPe2NYu03lxB1v/68T5fKjNK5HnzIFlmv07gjf+x
         QetYkbJ75zszhXKmVqXohY0y2aFsbCeHYPHDMD94rKwlOY9AlxS7b6DdY3FxBhoh8HFK
         4aBMj8gZNxh6uQH+UK5lE0Iv792FzaosMSshc7vY6MKq2k7WMgK/9ClHvTc9x5YzAeDl
         Mriup4BzFb2CiXC5Nu3WKGub+b0UKCCX3AoEVKdrp6cuDG0mxc5+MxQXnjoLVIsZvvf2
         IRrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=aSr1crur;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id t22si42403pjy.1.2019.09.26.04.31.33
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVSTg042549;
	Thu, 26 Sep 2019 06:31:28 -0500
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBVSRa092144
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:28 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:20 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:28 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTk6069017;
	Thu, 26 Sep 2019 06:31:24 -0500
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
Subject: [RFC PATCH 13/21] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Thu, 26 Sep 2019 16:59:25 +0530
Message-ID: <20190926112933.8922-14-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=aSr1crur;       spf=pass
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

Add pci_epc_ops to map physical address to MSI address and return MSI
data. The physical address is an address in the outbound region. This is
required to implement doorbell functionality of NTB (non transparent
bridge) wherein EPC on either side of the interface (primary and
secondary) can directly write to the physical address (in outbound
region) of the other interface to ring doorbell using MSI.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 40 +++++++++++++++++++++++++++++
 include/linux/pci-epc.h             |  7 +++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 42085fcc746d..797e5d323998 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -363,6 +363,46 @@ int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 }
 EXPORT_SYMBOL_GPL(pci_epc_raise_irq);
 
+/**
+ * pci_epc_map_msi_irq() - Map physical address to MSI address and return
+ *                         MSI data
+ * @epc: the EPC device which has the MSI capability
+ * @func_no: the physical endpoint function number in the EPC device
+ * @vfunc_no: the virtual endpoint function number in the physical function
+ * @phys_addr: the physical address of the outbound region
+ * @interrupt_num: the MSI interrupt number
+ * @entry_size: Size of Outbound address region for each interrupt
+ * @msi_data: the data that should be written in order to raise MSI interrupt
+ *            with interrupt number as 'interrupt num'
+ *
+ * Invoke to map physical address to MSI address and return MSI data. The
+ * physical address should be an address in the outbound region. This is
+ * required to implement doorbell functionality of NTB wherein EPC on either
+ * side of the interface (primary and secondary) can directly write to the
+ * physical address (in outbound region) of the other interface to ring
+ * doorbell.
+ */
+int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+			phys_addr_t phys_addr, u8 interrupt_num, u32 entry_size,
+			u32 *msi_data)
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
+	ret = epc->ops->map_msi_irq(epc, func_no, vfunc_no, phys_addr,
+				    interrupt_num, entry_size, msi_data);
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
index 91d5cbaabc8f..0632a4d4714d 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -57,6 +57,7 @@ pci_epc_interface_string(enum pci_epc_interface_type type)
  * @get_msix: ops to get the number of MSI-X interrupts allocated by the RC
  *	     from the MSI-X capability register
  * @raise_irq: ops to raise a legacy, MSI or MSI-X interrupt
+ * @map_msi_irq: ops to map physical address to MSI address and return MSI data
  * @start: ops to start the PCI link
  * @stop: ops to stop the PCI link
  * @owner: the module owner containing the ops
@@ -85,6 +86,9 @@ struct pci_epc_ops {
 	int	(*get_msix)(struct pci_epc *epc, u8 func_no, u8 vfunc_no);
 	int	(*raise_irq)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 			     enum pci_epc_irq_type type, u16 interrupt_num);
+	int	(*map_msi_irq)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+			       phys_addr_t phys_addr, u8 interrupt_num,
+			       u32 entry_size, u32 *msi_data);
 	int	(*start)(struct pci_epc *epc);
 	void	(*stop)(struct pci_epc *epc);
 	const struct pci_epc_features* (*get_features)(struct pci_epc *epc,
@@ -212,6 +216,9 @@ int pci_epc_get_msi(struct pci_epc *epc, u8 func_no, u8 vfunc_no);
 int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		     u16 interrupts);
 int pci_epc_get_msix(struct pci_epc *epc, u8 func_no, u8 vfunc_no);
+int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+			phys_addr_t phys_addr, u8 interrupt_num,
+			u32 entry_size, u32 *msi_data);
 int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		      enum pci_epc_irq_type type, u16 interrupt_num);
 int pci_epc_start(struct pci_epc *epc);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-14-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBDF34GAAMGQEW4366VI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA6D30B100
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:59:09 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id s7sf20975997ybj.0
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:59:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209548; cv=pass;
        d=google.com; s=arc-20160816;
        b=QLt+DHdg9BBqrjQS5bBfHZiQBy3FKkCSMc1DEyOmqaPZO88BfbfK1dSz3rOV1HDndv
         dTvtRsbF9qs7dzOviVafy78p8Kgs7YRW1W6Dd/P0TnUPq5z657YajloEvAdSW4cAfVlM
         mHNbyux3JV21M1ryN5DUt/Khy/nqEqQXtGExoE09hoWq497VRvf5D3Z/jekT47r6D7Cc
         PXh8/J8sxGLYWDi+9yEp65870iBSYMnxMGw00gbOeUf9TnnYGEzHcg7HVZ79wFbZt4jh
         SKuL7izQpxGALsY5jy/W1RqUarUBuEv+Zb2cRq10HB7k/KU15epdhRr+nYsTazinSeXw
         ZKhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=E5TTM9/gpNnpet0cg+Pxs2MmTFI/t+IMx4kPKnBbj8c=;
        b=qsN8vJhdJQiw1pbS6tpX44LJfDjUpwfdhzL7eDm8uw5K1yGVw0POD/AolpHUqhNxzT
         jIQaBAOyfFsx5oXkFLAUxpzchnrjZPOO4Cu5v8Y+xDid1TQmxZakHbvc33aO6skTMvD9
         TCPlqnP1WX7PV0KpfohdUyguBunANIXE8uPrXqJdBXQ9ZYz67Hi7hkPOLip1CorKMW1E
         QHix+PPHt/lbH9eqK0uoIK4E3NNJsb0s66F/Hsom+U/GL0LEsnKeO1N70lw68omdTDlw
         b2p/RadvKrdyXU3jcR7xQ42ZVUK/bySLGnB167m9ap302bVD9+moqCH4ETvi2TEVgiOC
         v49w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=hJsMFJUX;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E5TTM9/gpNnpet0cg+Pxs2MmTFI/t+IMx4kPKnBbj8c=;
        b=qhfABLvjTWea2UR7Vfzq7DOnJoBApgeEI3M419mmMV3PLqek9ieeIZURXFpXP7tbap
         PWqZLf4U68O2DJeBKBf4djC6MtbotllC4EEc+x+C2gzr3c5UU0iJnp3vnXWxldwgA2gM
         wWt9PfWFPQAZVbWn1bPyj48AuSD79idHu5gvtOQrPoxlkGVQ3ftHNjK8tOwaJYY59Kpa
         d5x7pHzIInjBkOwH0el0tkjJEwCo6HzsJVJwMYJ1rXP4n0NgYN0Ae7n3CaPwRL10pIxI
         we83eeYH57foM3Vrm80wRRabCuNrEik5pOGV4JRHJTvZNViugBS+I6kZ4xh7z6R5OF9P
         FAHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E5TTM9/gpNnpet0cg+Pxs2MmTFI/t+IMx4kPKnBbj8c=;
        b=I7Rp/i3njbc8aNTfyQf2Vq5XQoHka1ZZuJfH/ln/oDdP2+VpON1OUpdOfrM9TpKDfC
         4tjbpkWKM3OqS+cl0DS+2+LDa1uAMcw4dqhFto+c73MkRMZqvufRHXhkXCYSMnplU0xr
         4R2AmYL4EaDFt223gEelE1AoKumTWv6TTx3pU0vgZuJtdTXBbU/19RXfchYViHvlFLpt
         5eyQFhD3AxiXBiOOacG/uJtMc2cNNQUqZzcQrWgf5Z/z6xXacoBFmASJHxK8ZKbQol1r
         eV4ivgTU4geuLu75f5QkNzfpQ7lievj1aJN5hR58Jt7aAT2F2qTr5XiwpQal+5LljdIv
         WZ1w==
X-Gm-Message-State: AOAM5335cJm+EGQXfHkGyTo4irRVthuS8N0gesy6sJtOqh0vfNLQ/9sn
	VInswUq/7VdutWPsAIw9AXI=
X-Google-Smtp-Source: ABdhPJzwLrH0xt22/c3X9VFq5VBgXRtPiEs2ocZdvRgFf3ODRBicqXx6OgKNt4BR3bqboY0A4+E7vw==
X-Received: by 2002:a25:7009:: with SMTP id l9mr28122608ybc.118.1612209548502;
        Mon, 01 Feb 2021 11:59:08 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:7346:: with SMTP id o67ls2246839ybc.0.gmail; Mon, 01 Feb
 2021 11:59:08 -0800 (PST)
X-Received: by 2002:a05:6902:706:: with SMTP id k6mr29974940ybt.87.1612209548118;
        Mon, 01 Feb 2021 11:59:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209548; cv=none;
        d=google.com; s=arc-20160816;
        b=lBy6oOovlEFcjH07QuwpxGE79ehxBLFRnrWPYzH8j4wk1f1/Oae6hCWRUePB85J4gz
         P1l0vBCYCglsLYlMfxD+f+3jy15F5FDB+x673yYNItjO1a7Q2I/Vjt+H4m5QoNfZ1mJL
         t/feY9R6kIjnsrODXnP2c6xHDI7j9XKaiCwLpsVBFThYfMqwviQPMiQ2EIslPvnJHU7K
         Od6XYWXEvNFbyWT98H7rr4M5Lwr+RgonmNZ55W6D/qjwOnByyoAtJQ/Q5Y9nq1Q1gSFU
         1wGUY/bP4vnkq+iKTdJIlj+36DtkTldq5K5AV7H4AO8b8besNcU2Hu68HG/va+yguHcH
         K77g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=nm506Ttw75QB9g3i8XfbJHgDWMXVATaPs9Pwq9jcU6c=;
        b=pBkgIuKQ8bGXO5kKhS3R1uthIDFsmuOmfX9J+XKd4IszIVjPUq7bFSzpxFH42aP3iJ
         LJHnBwSDLAbRVe8r+Ch6ay1SqxH9VXiWtyWBsSRtFRMgOwh/QaexzZZoElW7gk0caUiu
         75WW/LA4ySbGqIJvJwGV++nbnkCBuk0TxuubrqsmNZfjGqU+NzDkgv8lt/knD73mDZ31
         M9roVHYwiKutrXp4eGO+oCHkaWyuwIkmo8n/0y2uN0Lv2vCRwG3zhCbHpf2FIwPo1Yrf
         P8fKq0J+quj+hXgPjCticPDiwTQ/Yfz/LjK7IYX0yvOY0qxuYtlcl4N14/psmbWhBwUE
         OSaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=hJsMFJUX;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id k12si714177ybf.5.2021.02.01.11.59.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:59:08 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111Jx0XW037189;
	Mon, 1 Feb 2021 13:59:00 -0600
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111Jx06R042479
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:59:00 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:59:00 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:59:00 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQf085814;
	Mon, 1 Feb 2021 13:58:55 -0600
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
Subject: [PATCH v11 08/17] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Tue, 2 Feb 2021 01:28:00 +0530
Message-ID: <20210201195809.7342-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=hJsMFJUX;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-9-kishon%40ti.com.

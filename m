Return-Path: <linux-ntb+bncBCOOP4VF5IDRB7WL2L5QKGQEP5QWC7I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 59AB627ED36
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:36:32 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id o11sf1110191pjj.9
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:36:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480191; cv=pass;
        d=google.com; s=arc-20160816;
        b=HVxA5Rjv+2RYRw2GVLoblt+VSLaXmWFz536oAvtLvJAw9rFP5E8Fcncib92kdDQtHa
         9BEVaaE9ko4uJXwJEnuj2H5gzbvR1Dg/n6Mj1Z5BNG+E6Jt7bMhaMft0HQyXkIUWgeZj
         m+7Pj4RFu09sHr2+Z/0SCh35W9VHa8ME8Z+b4IEFRcPZGg4tmoX3B9OdwEtZM6ppIWM2
         P177yaaE6C1OC6F4ehbzyebrpisnm30ercGV5uZP7TtDMVSpN2Q3F+Vds32QgouxlV2z
         8zWCB2QFzljtxYw1YNUOHFw/lCxlTYYfWNQysfDxioU2+Z/Cq0Fr89yEGl1PazAZjLES
         byFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ZJT+icMOpb+tFzCdWXvrPXfERvv+nAIlahg9ys7GmOg=;
        b=RHFv1ChXT9StUaZjBSGXIs5Ja2MqLDCi6Rydlrbc8jQANZic+Kae1eT6DlQ6ztds+I
         Oy/SpB0ejbMjWjpVglKm2t/Hx8yPqenvm0+HQMWuAu+bBBOyet12H/b4rLmFtY7D/hnQ
         +6DCMLkaQzgAmcQC2RMY9EsSGwUHPkVcYeSGFB6JYaIGGSHYXN9xozESjRwK5lqTdbdr
         aEsnXX6rU1WGhMQhMXaG9F0c44zh9nBkcGRD2A8puo0U5Ll2VKtPQu50w3wRQlMy6ceo
         cyaU3XoYanep8tmNO9nfTS4hHzl2ABQhseJCdRAVtIouGnNv/zQcSPkzkJ3wCX+3xOgS
         MxUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=tvJRjhiA;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZJT+icMOpb+tFzCdWXvrPXfERvv+nAIlahg9ys7GmOg=;
        b=ChefOcv0GQba2bj0jwDRp+OOsKTgCMElov8cOx2uygEcLDlAWPUgtFjXOTqGLgA3HP
         oOUoKUMEMOtpDCiIvuZI4yh/vC2aiuGNA4sDNJG0Dy7gOh3R+oeF3Z7+bFtOUfasLR+X
         zkX2mfvDUcwV6gMpVmmbDL9N7pK10Th1hRLMLnDCpTsPXeSIdKJF7EHaBjhG70oKVixR
         Di6EErBIRq2N/M79/Sz5tiTikaxKzoz3xtZfqyKKFlb7j+/FhvJgnBRZL8/6zcIzKCPw
         RNaFk478HL85f4N/8I1qcvTwqCYZnG1Kv04ODCtxKCJBOVuwoyXbZAw7Md6l1j/8FOO+
         jZWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZJT+icMOpb+tFzCdWXvrPXfERvv+nAIlahg9ys7GmOg=;
        b=MKh2dxp03WyamNQTH1gFcg78hUDpsC+MKFFjBVp8kNOy+/KM/8kg/5nil+fmfKlj6N
         m8Okh52UUy7xnFE9uwIKgT5tpoWqFO8BExi45IvZ7paQi1yiEme/vacYmDVd+tqCD7fS
         jNxRrCX5eDmOFoZn80DpfZZ80LV72KDkEFSxX6svVLlwqkH+QwP+zQW5kpc9cLSxCNYb
         stmXWEVYRBvBLmwVVDz7mSPOMvKcLzkMyzsU3fk6XYn+ljQZBW0xyq5WhAATAzOJDcqT
         CQVmppxiW1WR1TAYzhOZ0B66jRu8gD1Ev4hEC6+M5IdmzqbZZKHTC0ZNUWapjulWeN6p
         TVTw==
X-Gm-Message-State: AOAM533F4iOLLOtfZqBuztRg4H9dW8wdCjKIigQ83AYI+YDz+Fe+am2G
	pCGy19ra7wMNIVW4oHQ9T1w=
X-Google-Smtp-Source: ABdhPJzeutWjVlyvG+AL8wnZ1XlnsAIrJAONdai89jQefkDcBe5EBmoL2ewU/Hf27HXDZybcHY0PXA==
X-Received: by 2002:a17:90a:c381:: with SMTP id h1mr3190366pjt.225.1601480191035;
        Wed, 30 Sep 2020 08:36:31 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:bc89:: with SMTP id x9ls997832pjr.1.canary-gmail;
 Wed, 30 Sep 2020 08:36:30 -0700 (PDT)
X-Received: by 2002:a17:902:b604:b029:d3:7919:bb39 with SMTP id b4-20020a170902b604b02900d37919bb39mr2450789pls.78.1601480190423;
        Wed, 30 Sep 2020 08:36:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480190; cv=none;
        d=google.com; s=arc-20160816;
        b=NVN4OMC/aLUGQ6NimlhhmG2tTf9E8wdfwu/PLy3YhonvCYi+6eH5DeeBNInFL4SHdN
         OHvn//N8mcyFsBq+6rDSmI+azV+qEj6O9OEvyryWeC4SeAsslF3S1m8BQTGy1Nj5mTAh
         HeDFy9k3RjHOz4fHaG1UK9zuLbAWuzhFr2o+Dwra7RyNKqs2LuW5X5N0QLfqN1k7+E9E
         yVf9ddeWUxIdNUVPIpFnxCbH1qk8zVeEUjz/odiyqqgP0a4alxUjtdfvzwKSHPVqxayz
         Jw7ID8ek10g6G10LZ0FGmXJ7jLlt66+cAzLmgJaVa2jZVT7GTyUD6BFezuwuC+RNByFC
         u0cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=nm506Ttw75QB9g3i8XfbJHgDWMXVATaPs9Pwq9jcU6c=;
        b=zir8sGpg7ptqfD439hBENfLHupykcTVKtHJjI37fSoGePcsVsA9ZKU4Kd+H2b8GEaH
         GpKA17fU02d9eCE7jzMLvPYXUiyoT8MHv6gfIWRUmOd1m7GHc2thLLk41FK+FJLdXcVT
         zIikSuzTB4wUxYNxl01LtY4bodYItZeAngwSy/BIsq1lSE06Sas5DmiZKgRNpVklEn0B
         FeEZAQQOD5sw6IVPawVFJIYFF/pJnIscK2fNBW1vqxiA1qSLeFwDkA4qwD7DNuJvuZ1v
         99tXcBY1t/aaNnkEeq+PAkgnmeXEt38h7ltcAUNbm2W8d/REw60uoEZOrP0h1h8i4H81
         S5Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=tvJRjhiA;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id lj12si176200pjb.0.2020.09.30.08.36.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:36:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFaMTc076620;
	Wed, 30 Sep 2020 10:36:22 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFaMOw024460
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:36:22 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:36:22 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:36:22 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZX033254;
	Wed, 30 Sep 2020 10:36:17 -0500
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
Subject: [PATCH v7 08/18] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Wed, 30 Sep 2020 21:05:09 +0530
Message-ID: <20200930153519.7282-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=tvJRjhiA;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-9-kishon%40ti.com.

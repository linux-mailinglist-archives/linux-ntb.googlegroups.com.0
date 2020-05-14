Return-Path: <linux-ntb+bncBCOOP4VF5IDRBPF26X2QKGQEWR2LDEQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DB1741D33E4
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:17 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id 141sf2670371iou.4
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468477; cv=pass;
        d=google.com; s=arc-20160816;
        b=V+FT2GzTbeHToSLX7hzfkg9GBN8bzYMQc4ov8GF2cvDLLMqPEKSKbBXh+dzTeel926
         /81ZHfAXJ2A+X0WkoWy2fdA09INY4FabKFuj6BisljB7A+gln8asRtKutA0tetSAJicf
         J40RGD5sy9hwMMc5ajHQcZaVRdScxv8eEbHuk5WbBauajiu9LrxIkDLZ/LzVBimO8iZK
         Nw711P2VvnfKWPWJscw7wy+3pXRJKHT8OAzoFbA/pF1DRmwCyrDYXnNYshZQ9GDE4X4O
         DfjT7qiyoeHKU2mu/3VnxOfaBt11qNt6Gc08kigPc6EoW9W7dfSoQAigO55mrco03ZAn
         du5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=v3Xulrrqt2UiN3SXhmyK2V5jl6CP2J0id/LgZk03fiM=;
        b=eOw0+TvcTk+63Z4zd/iONxjqdd9vCRVXwj0BhuoZz34wqIw5Va6vANsQkvXOD9DdRX
         fNgiVa03xqZLrRql4KBkkUH55JVPWvGYox4sFiy1Y8FB9d2S7nNJ8gIJ9aqv2jiirRXB
         bA0l0LbH65w6VeFXQop0B57jTowdt4zbVs6ITJ/TvJU1fpXd1SbLaB2xDt6+hWr63Hdl
         ArOuqNJHe9Gu4vSjHDLmGEkoKF3R/s5QTYg/jzT2W7UX3m9yL7NfiZiPtHCiDDnTI4fY
         bb7o/TFNSB0yei3RvtlOWbuu+MtvIhZ119d/XS5aiZhrd2N7ODiYI/cl5uiIAcmUbLSl
         7u0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qlDHdijn;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v3Xulrrqt2UiN3SXhmyK2V5jl6CP2J0id/LgZk03fiM=;
        b=Uyemf8CIvNPr7ggvsZ5/AdnJ7mYAhDUxiCl7vGGVYcduO/s0shggYna7iSaxAjyCCF
         MeauDtOKnl9OwC/DxbTK2hJxwwjaMcTTnMTbGpcQgIkYh3t6RO/CO7ZnAI4OKU45TMVc
         wcvNoWCdlJV3xA6l417pPpx+oXlJt6fYWA9RUFPMPThstON96bYWYRg9psPz1x4G54ng
         cN8sHCSAGWNus1BTBBLoVLXt/+E7H7OCSzMHVv+kc7zrKMvHJHC2XMzEWt4KPYZ+Rr3Y
         yyMUTEQ5IPjVKfwZZ6ajG3vYAb5Ob92gNllINLJrIV8pdW1GhS+W7JGjqfMMaDUga9Zo
         D5TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v3Xulrrqt2UiN3SXhmyK2V5jl6CP2J0id/LgZk03fiM=;
        b=FQHOkCQFYhwJa5biB+LkBT8/DgcOgUwZAJq72gSg2/Kp9zCM0A0l/cjayNIIno2feH
         M9B4q1sj7fe5Ckv2A/+jYncR0kYb+CZvzWbEXGre3iUPjCtArsJdXvP+awLxzjw9rIaW
         z1mpGpTd353bRm+ybmabwMcRuIzStj9B9KWNnxwACv3I+Ytg1UwbnB9fjzPYOTZ6GE6L
         SgD1yhgSSvDAJMX9FXWRCYlOJfyvEFrAm5Tn17Ocb75lw9Axqs9ep9QconyG3+0rwYCm
         BEgN4A+qkZs6rHykWfqyg8yw6j/J8KziGM599YRk7cIch7dq/dRHua2B3NnIHsG0OVmF
         q4AQ==
X-Gm-Message-State: AOAM530gmvQrno+swytc0wXU+135h11EHHyBVtMO9UzOynkUOqMtIU/D
	/Zw0C6frkk2IVuwh5/aMBrc=
X-Google-Smtp-Source: ABdhPJwDFW+AQPuGjkFY3C0kApoGwSnOBTLFLcp6JilRboSQUI6dfksiY8XFlyBCK3SU0dHVtwRIow==
X-Received: by 2002:a5d:9604:: with SMTP id w4mr4586401iol.105.1589468476884;
        Thu, 14 May 2020 08:01:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:5b8c:: with SMTP id c12ls1124972ilg.5.gmail; Thu, 14 May
 2020 08:01:16 -0700 (PDT)
X-Received: by 2002:a92:5c82:: with SMTP id d2mr5215524ilg.231.1589468476514;
        Thu, 14 May 2020 08:01:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468476; cv=none;
        d=google.com; s=arc-20160816;
        b=IIZqvz+basJh5PednTDNRRrWV6LRIoYVkqDiRC2u7/OlsB67rRfj3IeK/M98UAD1f6
         IXOI9eY3TnsknvSTB+WUSOZb3uDvV7Hho9f6Yr8eb+7G5/WH+64Mk7hSRWlkXtKRdaKW
         7abI2OjLHeDaoSht8M9gLKDket+FWJBLaNzyWDkt+DI3llebwQfE4QtSykHVxQ+Pkm1B
         mGorQBMJTJi2DM42iDGf+Ujku0OSnTaug8DVRXIFvtzCATlkIHY4nO5JkKfqQhixdzGA
         nKKjOFVT9W3Oz6Eg6DQEVfArJKacbv/NcJZxpKrH0UmyvgUV9eUr1WxvEUuon3OA+Eow
         a0eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=OhjPHWsUFAWL/KJMF2c/CnYvdk0xBfUI7XUvcqOCtQU=;
        b=VpJfIaM06x+aB9/lQNqBx+lFR70No9rnzznwBhnHrYENVYkGlsQDb6I7VcZQ7dhRCA
         mndVb08+ikLuK+F20/j+bl3bz9iXurN6Lb88UI0kQ8NQe0llOsdc8p7cQJqKpujWgIdG
         H1Cm3aF7TcIxXHYJbGfplcutSROBrSJzl88vYXs0tedhPlFFWFhxgrA8yJsGqmynzACI
         I/4MsUqVEjn5JfKaRm6Zcg32/UjUXPE5YUx9254cFFaRwyFX30YuPy2at2pyGi4Rmzin
         +7wWUz//x1z+UIFbpIhZ518VchrKYJGBQPH3dqgr8okbznxDKfiMiu6RF7Rb9SEUg/k0
         NV7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qlDHdijn;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id o6si267528ilo.4.2020.05.14.08.01.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0nSS032711;
	Thu, 14 May 2020 10:00:49 -0500
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF0n7P118907
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:00:49 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:48 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:48 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAv019279;
	Thu, 14 May 2020 10:00:44 -0500
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
Subject: [PATCH 13/19] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Thu, 14 May 2020 20:29:21 +0530
Message-ID: <20200514145927.17555-14-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=qlDHdijn;       spf=pass
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
index bd8f372c506f..3f481a12d43d 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -314,6 +314,46 @@ int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no,
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
index e7614dda4e0e..59cd4c967329 100644
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
@@ -77,6 +78,9 @@ struct pci_epc_ops {
 	int	(*get_msix)(struct pci_epc *epc, u8 func_no);
 	int	(*raise_irq)(struct pci_epc *epc, u8 func_no,
 			     enum pci_epc_irq_type type, u16 interrupt_num);
+	int	(*map_msi_irq)(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
+			       phys_addr_t phys_addr, u8 interrupt_num,
+			       u32 entry_size, u32 *msi_data);
 	int	(*start)(struct pci_epc *epc);
 	void	(*stop)(struct pci_epc *epc);
 	const struct pci_epc_features* (*get_features)(struct pci_epc *epc,
@@ -216,6 +220,9 @@ int pci_epc_get_msi(struct pci_epc *epc, u8 func_no);
 int pci_epc_set_msix(struct pci_epc *epc, u8 func_no, u16 interrupts,
 		     enum pci_barno, u32 offset);
 int pci_epc_get_msix(struct pci_epc *epc, u8 func_no);
+int pci_epc_map_msi_irq(struct pci_epc *epc, u8 func_no,
+			phys_addr_t phys_addr, u8 interrupt_num,
+			u32 entry_size, u32 *msi_data);
 int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no,
 		      enum pci_epc_irq_type type, u16 interrupt_num);
 int pci_epc_start(struct pci_epc *epc);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-14-kishon%40ti.com.

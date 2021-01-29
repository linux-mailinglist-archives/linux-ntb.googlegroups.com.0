Return-Path: <linux-ntb+bncBCOOP4VF5IDRBHEG2CAAMGQEO7GQGMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0B630891F
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:44:15 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id c7sf3967681oig.17
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:44:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924254; cv=pass;
        d=google.com; s=arc-20160816;
        b=tkoUZK4KydBzd3CvsRYDr1oAis6bjurcDJGg6O+KBivDI15R9F7Bx8Bby52NzQkJiy
         g2se6QmvG/+6ulStW+AMgPW3yUswE5zW3bqxozcjl7iJ7mW3XVp6783cjO6b58jlngTg
         J+4QgIV46UNTFFYrYe9/lOB66F+lYGb1oRthHgdbxgMqyfSznB+cLTeWuq20OQ9kaxAm
         zIPnH7omNNNSbhXv6SvPhW11xJQJcV6fCBS/UiovXp1DApMtJEZgoHallrsNlWwrfYkb
         5C1sf5yzF/2gD/vf4yKi1djUEHHbqItLyF7V2gykV90o1yH+UG8gFoFNop6OgTtCymbd
         jV7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=L/i5qMlKk+9koRbe6nmPjdCygiHn2zHiDkPVggh34xc=;
        b=iD7jfcQeOTEJ/UwVtaCvim8nouNVqOP9Ff+pHfxcCgS+kzQ8Yg9MCWcavuwymRpmMW
         BscpDyJN9MDInuMVTHceQNX98EGnUHKUyp6MGopxNEAlFCiHcPNBG0aXXI2SDNRd5oiZ
         Wuqai1GZqt0v6ehCwXmzDPjWSDKvBenbvxBCqpJdLhKHmTHNXFqLi7aVvFB7i97evOBI
         VfjvNYSW4IE5DblUdfaMOVH9l63tMLojRH311qm4VYZM8H7LwUdW0/CyGL2xSzUvTEQ6
         nzbP+lpbzPu/lCaXsqjTQiYvpksvKSyghIy9ujLk5Jt0ea0uIQr/J8b4CnqblEv4gaNx
         R6hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TyrLjaZv;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=L/i5qMlKk+9koRbe6nmPjdCygiHn2zHiDkPVggh34xc=;
        b=QXCG9T87Dgy/tmvcB1GiQnM+g5n/muYCg32LqL1GOdPB+VRi/0RCiFOQM24ve9K8iv
         0ePnPtHVMiFeNB5LHUwQReX/s1U4ev+miQMUkfiUE4TtcOhw29YrLZgajNVqa6ar2ot0
         bNz/CgzeTEJsunpsylS8VuamB9W3dfZotanDh79csKGok8iofVHrqCkahCApYL11q3z1
         snKLQxJiSErSh4yZ2kS4KlGNpHfb372GrxZnif4/ck28i2d1KV3VPdjq7Xl1sKWeGHmI
         UzDZuoM2aKpC5QYb/F9+bPNDaGScI7ORQS0zNzggALaACL6e0LijT5NhPSaMc2o8QTTR
         RZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L/i5qMlKk+9koRbe6nmPjdCygiHn2zHiDkPVggh34xc=;
        b=I6IM4oC5iJZuxoglq0hV9t1ZR4/pqVdRuMnH3l80xuInVFh8d0GHhwJpHO9sAcIqUY
         6wv9AP+2OSinXpm8HdOWJNCtJRB471MxSncUxOn5uVnOz4WAT0IZ1KrtgWg07sWATeOB
         FHP3HKamS37XH0xKRFia3RGur3BSeK9wT4/YqZluvVPJf8dMiR8c6LNtAkanAmrwpqm2
         pDRlYS8f40dKmVZON8A/4NyJwkFGtGX07/nYB1ithT8Non2VwTpfygl51GLPjzgrTgAy
         XHATNmLUXf2HwiNdn0w81hjFcb0WX34Pf2d1FPHgj9pwNw8s6t5aB8miB4tAsBbJ07ny
         xRSw==
X-Gm-Message-State: AOAM530fApOZhtUrEbX75+Z6jNfV0cZ+ebWeb8/VNImr+lmMXqMFCCO6
	c46l0ck2jE45gY2+nHhFfUo=
X-Google-Smtp-Source: ABdhPJxJeXxERIJ5q/sBwwwv2JmLmbeewWkZTuSAc2WVNmqwJH9CJ6IBMK/x7mpsEqW1hzG7Tnfhug==
X-Received: by 2002:a05:6830:15cf:: with SMTP id j15mr2795775otr.71.1611924253022;
        Fri, 29 Jan 2021 04:44:13 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:fd82:: with SMTP id b124ls2026433oii.3.gmail; Fri, 29
 Jan 2021 04:44:12 -0800 (PST)
X-Received: by 2002:aca:ef46:: with SMTP id n67mr2450305oih.103.1611924252741;
        Fri, 29 Jan 2021 04:44:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924252; cv=none;
        d=google.com; s=arc-20160816;
        b=wEtvgIg8q4E/Vm/YpfC5O1BN+ZQyib9ulc43dnwharSBUHgGQapiDFQpBVIb+N9sTu
         pbuAERARvu6Tf0yhis3Ey8Rz34nxPP8dHcvVs9x0rqzkF/JAJMYEwkBV6wkyBC4Gajlc
         VxCuQbvHjYR2DyiIbdp8mut5Giu310X4kdxX9W7RFUr8JTu/oE/CC116e7HJnXucAq2+
         6yzzdRKbAe//onyMDLPUx3xjGlYYynIoAr2APkhmmqZ90sR8HiYNn8W9i/zMjboMmKm/
         9K9xipiStoQU6LtsMPiPb2buVjoQQDlLEmqSvL8ABT8Ia4ZQ9cnpnyULaFLETsq+NVq4
         4C7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=nm506Ttw75QB9g3i8XfbJHgDWMXVATaPs9Pwq9jcU6c=;
        b=RMOOFqwrVBNJ6XWn2+Zy0IdiYDGdNepfkZ6v4mmOc57Gi7BoYDsQbkfaSZRgHDO4Qi
         ZArz9QFmK8FgYtlRk6WmYlq17JXmXaRO53GAUunSb9ywecSYOKuNBYsk2ifcy9ejtQ+P
         W40UnBNXBgEprsKvg472hLAO90iagEiFRuHiudJIvuu6ESeLoWt4mr4tfLKE/ALCJmks
         n1J82V8ryERF9QKKXkK8nNg8QzdsNMrJiDzS6UASSiToQ3A3XoqwMQ9Y82rFtfY1PBKe
         KOljWzOur087SbPRGVck3k4e7isUG/XYRMu+hF8kc6mjaDR5fC+WwWHuLw4kLcZN9X0C
         /f7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TyrLjaZv;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id j1si808761oob.0.2021.01.29.04.44.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:44:12 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TCi50P029851;
	Fri, 29 Jan 2021 06:44:05 -0600
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TCi5AP012896
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:44:05 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:44:05 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:44:05 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDW7075758;
	Fri, 29 Jan 2021 06:44:00 -0600
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
Subject: [PATCH v10 08/17] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Fri, 29 Jan 2021 18:13:04 +0530
Message-ID: <20210129124313.28549-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=TyrLjaZv;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-9-kishon%40ti.com.

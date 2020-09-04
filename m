Return-Path: <linux-ntb+bncBCOOP4VF5IDRBFHEY75AKGQE2YTOWCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE2125D2C7
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:51:50 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id 207sf5351664ybd.13
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:51:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205909; cv=pass;
        d=google.com; s=arc-20160816;
        b=fY/9t/j8Mb2otjE/F7WPx58QIg9/v1n69TkOPQDF1wvpbycDSdgLtGDWG9EIHmLwgI
         mr1wZVPGzkewoAAoQFJgE8q8gBgVVBM2MkBesPYWfufTzqYtcWfTxaZ0NBk0xVKVT4LT
         TL6CpfuMb7svNoxtPazTOoQi+mKb8z0UBvRApJcF7FKbIBQJPEbktEtreOv2Vcv++3Hy
         CZ7c+uGMChSZOU0wGK7aT3dLwbBLrHwivgn6JD3YK/g0UZX47sk2T7fh/UZEfVkPDote
         UZwfDN2ACCdR4aFsKAsfDZg73fSnuIN8gMZiBQlHCgVMP7MhQ92m+dsnGF3YriAepaww
         8iGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=/3I3ZwHK7Y2fGBtHW2LJfGxM9q7+dHKBHmjWaoH/tck=;
        b=RSzW30LbzMP5UKiKHAKqkNyLojrAd3d2aLQvMy9uQn2RoW+s9qT8g39hjzIiEm41Ha
         R7QGDkSdHiwfvfbqcdt07zEp64MmgQeyWYwOZ1Lis8Jrc9BhRQEwa0cxkvHPaWfgLQzL
         OOo9bFjFULH1VYUHz2x3iINXEnvHJJ/nnaJQ3aA3nKny+HucJ9sXPbqSn15zNl0C4y48
         h+T2OcDZOFjJNFfc/UHwkER0hVkp+OTUwed67XluFs7qcCxE665gI5zrm85luWVimh7b
         +ld2/IzBOuDdz6H21KZbS1uHwpVQZdcP53vp3lNMXCgV03eDQCPzMnY29we5x9yN9DNB
         11/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Gkvf2pb/";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/3I3ZwHK7Y2fGBtHW2LJfGxM9q7+dHKBHmjWaoH/tck=;
        b=VkmbdBB114p9DobVIqBYvNAetiLMyu35y6FFZ2AFkJL/OfeM+KBcHmgUGn0ojpKYFt
         VQYZs02Qjb4YD9gBZC1rkxEMOBscWtUZvAK6gJzDxw/2Qp27WiLeRq/kZmVQmkbfiXGQ
         wfBnt8a9HBlcZBT1JJ0d9SCKW7XIAxNQLFj+AJyCNCahdV5pPjt5dyhXbWmGBAs7kgY0
         8uWdRyKyiRiDJyN6uQmkaGJM9lwI0kZ9U7h9rH9AXSFR+aQ57+4Ro/nrOrUcMYQqicAD
         Ev2m1mtf99KC3Wibn0W2kMJDC8Gv59OPwqNUw8LzAcxZyIMgrbM6tRHB0C/uhYcVeJYN
         FlRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/3I3ZwHK7Y2fGBtHW2LJfGxM9q7+dHKBHmjWaoH/tck=;
        b=Shusty17IXuXWlWvWVD28m6lhg1djHoZfRAVIoxY3ye9WX6Ut8kSk6d62fzf9Ejy76
         jcLzTRJyCqPAON9znajFeHKlc5/kU3ypvqmro26N1C+mXj1B/Md+Pm1jaoyum0QixeGU
         zFwFMxzGVSfOSOnIljhU5cbineCN4bxM7cWRtlExy7QwyqcmXmj9xRwPEH8i8ucGjK6Y
         ZfiMpQtdggmHUb0IItJnHB9nPpVTdsxOxjTUyheAlYg6sHB3fZqBjg8xhWkZmZBV94zJ
         LE1SGdQgIpn0abaZILYk+Kfn51CKmRCLZo0vUzvlyKQslrihNOXLtiXive7kGTc04JIm
         aRzg==
X-Gm-Message-State: AOAM532N/kUDf4k2i9fpb8/W+EMoRrCBkJBQzEECZfrhqWGMitcKC5iq
	/pfqmRXE4g7SGafN9meh2Wo=
X-Google-Smtp-Source: ABdhPJxUIiK8M09j9o+JAmbsAIaESmzEEBkKaTHgXpHZaTMpbouYs5s3D65dGv2Gf5lJ1UOEyj0BCA==
X-Received: by 2002:a25:bdd3:: with SMTP id g19mr8621356ybk.338.1599205908897;
        Fri, 04 Sep 2020 00:51:48 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6902:70d:: with SMTP id k13ls3961473ybt.9.gmail; Fri, 04
 Sep 2020 00:51:48 -0700 (PDT)
X-Received: by 2002:a25:d18d:: with SMTP id i135mr4995786ybg.71.1599205908487;
        Fri, 04 Sep 2020 00:51:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205908; cv=none;
        d=google.com; s=arc-20160816;
        b=q3Ee+j0Rpx47KsBVaHGOFbETgHIG7I0V2o37bHOQQWrO45ESD1cTCBV1S3wS81hlt6
         mgpLZThTyO2+ctn/M0cIDirckhOOKXDFfCl6f67+LwnF5xy1zkrR2VCmBe09d2U6ojwF
         PzWy5g/3LRfdG7/Za0qE9bQoYaKYNFhUsGPYH44tytPgHGGpaYRsTxk8uDK1ULQBEw5P
         V8Xam8WCqjjzoCFDLn16bg0x5TGfHJ8Pce0SqOhy6AnpJrvuC2sRaJCE70YCpv2wwqsT
         Gd8EetKxjo1gm+lz67guW8+Cn3ixKUla6DI1/beLErBSpVtnDrjRJrGGlGrObiL9/glu
         lDLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=27xJ9Q8zqn3uZRTDxUZ4FVw6OjM6K5CJr8HiYB/90+k=;
        b=Jmc8gWhpSOrBaMVu8Cnp2dcuqAcz3NxFftUE5Z9W5PFkXL0iSBjEW2UAJDK6Bdp2Dm
         nzEiEC7LvyNdJyXWiWlD98j5XtsUsdBaDJefduivGUlVcWJMcO4cItwHQrD+ZcgYfAaV
         /J+BCw4lhZd46UPVMXHAkNQFMu3jA0zk8IVrydI9ylYb2wIn13x/HqA1yQK8Dp99Ro6F
         1bcISqVrNFUGOIbjJ2wFnCHkXQT8eOWfo5dTmzu9adF9m+iIDnl+Fqi1n3oAeHDyXk0k
         TWzm7FxAOzltr1UF9o8zfIn/KdUA1TAX1edHK+3FTEs5pxGwVVEnA6E5gk5fkUfOrTfs
         m9/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Gkvf2pb/";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id p14si668316ybl.4.2020.09.04.00.51.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:51:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847pgga065835;
	Fri, 4 Sep 2020 02:51:42 -0500
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847pfEK091375
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:51:41 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:51:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:51:41 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osN9058796;
	Fri, 4 Sep 2020 02:51:37 -0500
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
Subject: [PATCH v3 08/17] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Fri, 4 Sep 2020 13:20:43 +0530
Message-ID: <20200904075052.8911-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="Gkvf2pb/";       spf=pass
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
 drivers/pci/endpoint/pci-epc-core.c | 40 +++++++++++++++++++++++++++++
 include/linux/pci-epc.h             |  7 +++++
 2 files changed, 47 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 0f6e2364ae6f..73f9ff425824 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -230,6 +230,46 @@ int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no,
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
index d9cb3944fb87..88284f3a0698 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-9-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBRFOSH5QKGQEM2IK36Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8821626F61F
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:44:21 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id h23sf2236284oof.6
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:44:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411460; cv=pass;
        d=google.com; s=arc-20160816;
        b=L69W8JBG2AA5hQWbLvJ/9My/p79JmQStwV/I8J0GzFe3GJMdBDcE7DAdd3Kz9HPTjx
         GSp16RJ7zOcOToD6kadCZKEHBz0I0NfSu+h/vPjSGanGNOfh94545sMTsH5fCkDE3e2O
         5dOTtnLuE+0+djfBa5MFGYkSqMd7A6pvyk9heX+VseXmEiZ/bzVb15IWV5YYHmyb2Mev
         ZkvBvXbimDxJpiglnnj9sW2916bjitVh6SuYhIftojhLsWNt/qIkT/frQIznAVETter/
         RlF8jVhJvzDVawguHIfBiY6xL4+L4NDGKGh+OaMq8XLGarbg/Jgam/hHqSqW1eMUCsug
         hPcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=WWSCUyOlg6KNMv7wUht6OfU3Gttf8N3wu2NdWocjYHY=;
        b=GttQsMP+AV+fi2vvCz88yHdAee5T9Y1/ujAKzzdzS7zufRZjzyYD6wCvsCqCSjyj6l
         /vVH7BmilKdQBwtM+RoNzW5cN29xqX0Hwuu9//GTiFyfFqNsiabt5f3e5yoAyouhS+WQ
         wmVeNJccLWntVvZs6KA1iJk0zgSMosuPKTZYqEqcpSSS9DPejzK2z+4OyWog7vlXf34B
         OgaXJHg2/CYGo8SJVbZKXpMUBunFAoLM1bFxV8MNLif9ysFfQVMjKTkCWsGE2BRzcZlB
         qeNAhhwih4jQWovR/gFSsT5/poMv8BSROAuM43oD7zqUkFGHxbZpnmdZsWfiwNPGnVV+
         PD0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=OvJuNQLX;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WWSCUyOlg6KNMv7wUht6OfU3Gttf8N3wu2NdWocjYHY=;
        b=ktFkXV1N9fUxyGUOYJ5mvqZXqO+bLzdRwtddtfBuCoAmTDJRIQ8UNIV0Dt5ZIO5qSi
         iiMEfZUfLe+l6axH+r6D652TBAWTo1gx46221FVgDiZlvldUA3AeCnMCiEdcCw92Sn7w
         cin1QsWyu+YZUKAlx4kWwaAFYLGmBrZUJonO7yDb2jG052LiuVOXy0p3+7sFByDzY6uu
         6AVjaH3+z64bL626KASsRrhOF6XcRx9OI9VvZMBzQ3B+dMrqTeJXSzi9YyUScqLK3U1W
         UvORzSRVfuDKfu/KJXvUvZiModLdGe2PKf5u1T1FxB0qCtPF210yMstg64yWW1gx0Dev
         /R1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WWSCUyOlg6KNMv7wUht6OfU3Gttf8N3wu2NdWocjYHY=;
        b=drHzV+yDDo2IPZVU0iHu081hkCXcX9of5bVlCdI4GZitHHAlyBiiqgispVW72VCwR1
         YFB+GokLd06JAf82tgz06JRrM+p0+doML8neCgsBFhz5zpG94oD9tgfyXBzRYRVTWtts
         J44YCs6rLYX+l+c5NBIYlJGSkuXiObfPUTRNwsEV6B3cP5tuGm3u1A5Fy52mhSulGGB+
         gsLxfv9dow1uhkm8pyYf1Z4nMCZzz6CbdI0sBrbHmwv91OjD0cxAwqMTK+CRfmiC+tQO
         JvmHq3l3CW/f7WClE0OVVbiyoTRwncSkNKIbbY7rC+smKYVht1UwR6rkDSCv+2oF6C80
         IZ9w==
X-Gm-Message-State: AOAM5332NXRQPnKZ44l5gQOeNvdzScFmJj6wADqXpRo/wEm+3Al/j01F
	42cIxjmsSxhfwO+4C71k6Xw=
X-Google-Smtp-Source: ABdhPJwqB+7Ijbg5yKo3yP0XyGgpfcvzMomPOs8gn/MlI3RlW72/vbEwf+6eR08anvj57Jh4QRYOag==
X-Received: by 2002:a9d:75d1:: with SMTP id c17mr21049710otl.59.1600411460514;
        Thu, 17 Sep 2020 23:44:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:85:: with SMTP id a5ls1033922oto.10.gmail; Thu, 17
 Sep 2020 23:44:20 -0700 (PDT)
X-Received: by 2002:a9d:312:: with SMTP id 18mr23232323otv.198.1600411460191;
        Thu, 17 Sep 2020 23:44:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411460; cv=none;
        d=google.com; s=arc-20160816;
        b=Dd/F97K2uy5p9J+dKZeVTulhbHbTkNLp3SSgRYPVZrg6EN4GjZUtRb1BolpJQESMr/
         2sxyYK1lFuSJH87pQzevzfo45AI1sEEP6+J5fSjw0x6sgamgtJhgiV0xrbZZnT2Ccj1G
         0fQpnS3xdkDOmVoSGjUex1yF8H3dE09HKiREI6KHmtZ9DLGgYgGd7NUoxw4T2ySJ3abK
         /I8z2kgPong9DA/KjXrqBKTmzES98+PgrLQgi1YtT0+hCOyAWsySgVEk9II5Bfr17f+r
         sAjb8TCeLqX6rL6pzQ/tXVLs/IT44FYR5Mia3BHAr4KyWvhBX2kQHjZ2zHAGqnHlvxP2
         8FvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=27xJ9Q8zqn3uZRTDxUZ4FVw6OjM6K5CJr8HiYB/90+k=;
        b=u5ZESPOyDHu/7UJo0DRoT29i5jLbCRYqqy86l5QfQXPqg9KQefSV/wqNGRSGi8qZET
         KSZWbdfqAsAM+I6Bhqg6qwb/H2v9HlRs/NpE0t2E6cPOA8se3Tqm5CuPqbL4Z8ekLMn7
         5iMPzLbwrP4ZwE1NGTrK+Q9NrD4OVmU4l3R6Igu2enzaJgWskRJO1JzRw3SzEuS6p2v7
         UORI8o7W+IFNs2vr1dbZlcNLyEWgHDX4AeP6DEVgVvQpdkCn7WZh0UbqqeRKT1BqCmvm
         KL9GFWARRC1BOPgrIy+8jyEMhOaX4QH40l3OXWIjE+xt1R+n4/O1tQcyknKjOjjkXR1j
         Zqog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=OvJuNQLX;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id l15si276960otb.0.2020.09.17.23.44.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:44:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6iDIx128116;
	Fri, 18 Sep 2020 01:44:13 -0500
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6iDeo042001;
	Fri, 18 Sep 2020 01:44:13 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:44:13 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:44:13 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCS094595;
	Fri, 18 Sep 2020 01:44:07 -0500
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
Subject: [PATCH v5 08/17] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Fri, 18 Sep 2020 12:12:18 +0530
Message-ID: <20200918064227.1463-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=OvJuNQLX;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-9-kishon%40ti.com.

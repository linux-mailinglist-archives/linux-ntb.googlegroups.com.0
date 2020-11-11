Return-Path: <linux-ntb+bncBCOOP4VF5IDRBMEKWD6QKGQE6NSOSSY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C9F2AF4F6
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:37:22 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id x28sf1142962oog.8
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:37:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109041; cv=pass;
        d=google.com; s=arc-20160816;
        b=XLXscSOG6ho0p4+nDFrLuhbIuqXKfYgZe+ryC60cU+8RMJk/w2hGYQmD4rolE5LywT
         KcmkkwDCHL2h+V6FzVGkZKdiUYKEVwFE58FS+dnBPYGLwR4f8uTP+hs+jFRiNuWbVz4P
         k+1HAhX1iIFatFUcJCqytroEySf7L3fXC4xU5LB5jrb6ngXyVolFqOpp2X+Jktr4oami
         Q0agw9dg5qG1ss6ftAUUBqEGh54+wiyEYQlhsHV2VyEI62m3PNXNfJYPiVFZCD/vadaj
         Wc9ee8AtfIxhJy2JJ5icRZhMA8aHVKBYQN7DmbiMuU0XgkmpNl/Gr/4LGGAsGtBK68It
         IbpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=nGTHEhdAY1HvEp2P6NJXmJs0ARrqZ4ygQq9ti7bzvl4=;
        b=eglV1/zNqnOvwzXxu8qUwos0f4K8zwLFUTuSt3Azm0xFjDNauQBaBWK5Al1oIlbt0F
         z9HiaS8pYQD1Rwv2aJWmU3ZblwncdCsoWMEGx4rTwHX7ZezqEosuMXZeOU/l5s+wdZVg
         ydEmqDII5RgiE+cwMVNthPet9zc/GvOhqu70ogW8jFOkbsFVIbpExJCnuk7yuUdDmvAS
         Pz4TXBySyIJfRhB9QxeRXojDSW3PCvVxT3kHhi2QUegsXaHsnZzVNAxT9jxWNB8za5qG
         EInYkwcyWA8JTDTKqd/ODpVH08magI5CCjlOsGrmYue12FIfrVjQtsl+NFQ34bLSYJNC
         GvRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=mNdZm4pW;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nGTHEhdAY1HvEp2P6NJXmJs0ARrqZ4ygQq9ti7bzvl4=;
        b=NU5/qT0FZhBI+9TQePSpfweDbe+9E44rw2A+bvJpD78U9sR9AaWULjBkrUt+IPxSs0
         HsNM72EtqoRVEgmSrF8tIFoMmDoN6Wn3PQqtgOtj7O1XXCr8TI3fOxEAi+KvWOU958LU
         1OGBHQ4nDWG9Otr94GTQqWLu9DYGlJd/Sku8MUXmcS/WdbJtFmVNl9Lcbes7eX+c2+gh
         Sdn/fnB8z4t4IUf69ub4voBb5Fx8aNmaRJGAEF6QIkcbax7V4B1wa6rqsyb7TLqFan2d
         NTXF4lwtCYPhr+vWsNhcEOQDoyFaxbfoLazWD71jn4Wo+N5Y7yKFj949Mb5NU8r9H7OC
         moPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nGTHEhdAY1HvEp2P6NJXmJs0ARrqZ4ygQq9ti7bzvl4=;
        b=uMMSzp6b28QKB+c+/i9hjlFtZPzy6ZRP9cTAABvHwvKLuoxzPomyHJsgRzfpXtjcR4
         zkHTKC5lDDOyf19yRMOSrjpLKvfRYUpxAmLxEPaP5tJrvvzsbneKWPruOqfvMbYt3MIY
         ETqzNhPgduLvkb/wm5P2NKzDgtkrRnLX19yWNuFLAUOVC6N44E3LQc/O0MbqzTs2MqUu
         YCNERyp+nXappzlOv1uc/BqRZaKVkWLU24J8rdLAKny2r4nRt+X3KTlRmvVZ8j8Jy5A0
         mVgnhHsXZhH5K8r8Gym49KGn1k2AAU8TeLc2VcfEBXBg0GCJLJtjwNJ1Pm4in/xgM/Oz
         6PUg==
X-Gm-Message-State: AOAM53206w3ayhwx+o6Ta5JzVUU8iTj8dDt/beoLkGAb7BoQZWVgQfMN
	yuprs/RYXBYnnElRlMk7KV4=
X-Google-Smtp-Source: ABdhPJx8awC9xjdEAVNu2LWSvunHlm7NhM1brNiwoEeGXeJRWTnpPJJOFg2n4TF+ednBwx0ZZyyjOg==
X-Received: by 2002:a05:6808:284:: with SMTP id z4mr2409514oic.116.1605109041041;
        Wed, 11 Nov 2020 07:37:21 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:416:: with SMTP id 22ls4001675oie.7.gmail; Wed, 11 Nov
 2020 07:37:20 -0800 (PST)
X-Received: by 2002:aca:56d5:: with SMTP id k204mr2539635oib.170.1605109040733;
        Wed, 11 Nov 2020 07:37:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109040; cv=none;
        d=google.com; s=arc-20160816;
        b=CArrBqIXpwy+7gDONF5CSCO7pn4s2NbeVYbPzKSDviWakXY2QJ4/IkZ5e5qSLhiVxi
         wa8NS0cc0pdtF/oexH+b7CfZlqh8u11JjBDXpCDbm9jKa+gLj5sYZrSfHs5NuAVRPw8R
         imJdlKM+f/nChFo+W/RdkU/LG5QOzPSh4Z9OTWn0f8JdI1by2BAu4XiNFGepUJdxnXpC
         Wx80ZmIb8L/JZTMsj8wsYEnIdTmUblFMRAyGYfLmZFXsgSJE4yVW8PXya2xcbsOqbcWo
         Ebw0Tgf3Clo9N5OzifKRPMkk8fJ3LSR9rmFNitSoHFKoW3+zBaMkv2AQjC6kSrbl4kfm
         0Ypg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=nm506Ttw75QB9g3i8XfbJHgDWMXVATaPs9Pwq9jcU6c=;
        b=nJ8xj2KNaQZt2pDfZNEvdYpfvEmxnoytYJUlEg/55bVWgMqSCM7Er8tpZugT1dabZd
         UVvSBMYxCDVmbEWhnEbNLFDuNB+FZjLf+1D8YccqBkCNJ0QiHd1x6cZPMTqwsHSmMLmb
         bwXSm0jZlYlKlg1S25UXiKn3Jyx3CCU3pYfbfspvdOV7RNKGjq07ygPvHexKAxRvWNXZ
         fcXlHXkCCKPU/RyZClSv1UQcfp8tSdbnL/QomEycIxGPcCAob7zGBljG5DScrfna8Jqt
         sR9bwH/S0rZNBJ73BMC/d1PHHBF5mdLH33bje2Jjiv2RJ1H3ZXDOH+RgTGhA3mPL1S+i
         +edA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=mNdZm4pW;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id w26si133412oih.1.2020.11.11.07.37.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:37:20 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFbDP8097719;
	Wed, 11 Nov 2020 09:37:13 -0600
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFbCnV113394
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:37:12 -0600
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:37:12 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:37:12 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa03x042109;
	Wed, 11 Nov 2020 09:37:07 -0600
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
Subject: [PATCH v8 08/18] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Wed, 11 Nov 2020 21:05:49 +0530
Message-ID: <20201111153559.19050-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=mNdZm4pW;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-9-kishon%40ti.com.

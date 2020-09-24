Return-Path: <linux-ntb+bncBCOOP4VF5IDRBOGMWH5QKGQEO7UQ3VI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ACD276D1F
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:26:18 +0200 (CEST)
Received: by mail-ot1-x33f.google.com with SMTP id o3sf1023175otp.8
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:26:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939577; cv=pass;
        d=google.com; s=arc-20160816;
        b=M32MiHrwJ4Ds/KxHcaJtC3WpZfpwwj/BDZhHvNMnG+mvXBcaQ9vsCufV7ysbrKbiY+
         usegSMWDdpZAElHoHxC87a/hBDheFEHYEUvVgJ09KyzG9jzYTTVsJqIOFX9Tga2t2nxO
         plarPktKjU/Q8DahtX3O6uSBsCSncbUv/yXYs3TkuP1s6HkEONflnxEI7KhW1aIbzY3b
         WLzj/orIqO176j9TR48zV7UwcRdJQUzKLzLIzUtodyIJA7qshT/S2RlbJtnvOTjIg6SX
         0YezB11YQmUtDr9UxLJUha1uAS5i8/MRqc1cvRBL8bu3bdbHfgc8lTIUV9PGtXAmqDNv
         /Psw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ueKjFSXaWrnUZ+tm3Pvz+FGxF/w3HesaaJgBVgZ4Jpk=;
        b=C5a9wlxO7P1MBfxOjS/+8hzut+72sZparxnd/XRVrOMQ1Pv5HNZkjo7Cr91gggKIAB
         nvKWAoiiq/8WHB0lvMHDvRyCpt6ZwEjV3AYtTkNoQM8pdgdQ0/wNOOhPz/GOH0r+RRQq
         FtjhaGdRCrYi4BQIQDb0HfvW+Jz6w4VS/ooeKvW432LHJPPSW91zmClml51tQmgsxs75
         WLS2ocVE6+dgihhvDZwD1cRh1CcnT1NlchPUHQDmQTiuCkDd1NWfBjMnpjvnfxy2er1u
         Dh494mSdhTmjABaC/cp+X++JWrzkqB3SZCdY1TGi/b/ngr8RGDx1lv/uGWZllXxQ05TX
         C8pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="GsWvNIj/";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ueKjFSXaWrnUZ+tm3Pvz+FGxF/w3HesaaJgBVgZ4Jpk=;
        b=GXNtQXpxrij3xc+c1QB9qfSZ3nZSDZ1/JCVVQWTY+AlvewJUooBdIWCh03LV5u+yo5
         Srh3IxLZwrSsdMt+v2XXnz7wk3O/w8tWxRo4IY2bzT+AGtxyEvZ4sHt6GV3yHO4YXD5E
         P/dNN5oMRYDL4NDR3l82Iq7klCiyeKXSIFrHvT0ZbbJ0saDXrZcmVb76xFSMtZybgV3Y
         cC2u40327yqIQr7zRMmDy1eQkrN+5NPtHiDP9NPBdEf/vHyV8DJ6QKTvEBwKPsjTes2s
         P6FFShf1ZoLX0Q+Kt+gqy5vu5U5gPDvu42RYnfn6JA+bek7vMAYIh3LA3H9Zhk2/ljRl
         +ttA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ueKjFSXaWrnUZ+tm3Pvz+FGxF/w3HesaaJgBVgZ4Jpk=;
        b=QPYfFvWj9qndVayOwuTSsgVtREySt7JHcfjeU+cldHNVqEbP/gjg4bDe24AioLe2MN
         qNmTuu7qp/efjcEq80yHioHDBArocbdjqjYL+tPODNWT+ahS/COsj6UFIa4gRoZv2F5f
         aRfQbpIO2xGu8ys+SnmK3oQevPl8Fzsk2QXVQJEvdHEDFguXY3iSO+6NzHhGep/AGRut
         kZtgkKgZ4dOX57IyEYTrIW3gOmCBqPA10f3TGcJyxrzmvEQ/PjybrUK8ib2vXpB7WYCS
         zDmxnY+HlV1nrKOiBsAbAl/9bLTwaSI855pq5Q/fQlQuxphKQu0TJYAi9Z2fc3XJ8XA8
         pe4g==
X-Gm-Message-State: AOAM530nqXoBygsAFWN3WgiawCBWsgEiEexKGqN864d91znpciSFl8uP
	HgB6KSZYK+VAH4t3ymflfAk=
X-Google-Smtp-Source: ABdhPJytQ4jfMC53LeRCqjebStoKbINv4Dmm++HIMriwhk1VnL9SZvaujc3Y+1QS+K/oZFx9/cvwnw==
X-Received: by 2002:a9d:7f0c:: with SMTP id j12mr2363072otq.53.1600939577001;
        Thu, 24 Sep 2020 02:26:17 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:b903:: with SMTP id x3ls151142ooo.9.gmail; Thu, 24 Sep
 2020 02:26:16 -0700 (PDT)
X-Received: by 2002:a4a:9b01:: with SMTP id a1mr2625219ook.51.1600939576697;
        Thu, 24 Sep 2020 02:26:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939576; cv=none;
        d=google.com; s=arc-20160816;
        b=vLUIMyEfUWNChAws7rzjKKRIFuJMmPDMWfhLTPIpy38L8QkNIIpPrfvGLew7CHOTz3
         YeJmEmCIk0D4qAk7Uo9cmzv9raWXdO1t311zW098lgM0T5/Q28EkE6kCrZrOWmb3CPYt
         wlsKRfgFg8vRvD7gOI6W70+Ci7DOllxlBV/WzIfXUKjgKyCU57qs4d7NbaJkFpr3za5n
         uO+gRJ9GWKJcS2CVZB0MRC1dHBV7EoT68I6NCbAE501dwaOv4EYUWY6TVvFNUjabVqMb
         c9qkDwsJS1uIjK2Rpthw8OYvN5zM+nD1ecfLRrsF97ZlreoGGqsqnb1KhyhToI+KB1Ze
         Gk1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=Myn/EsvWaDPVrALVzpSP5YM4zo8FQ2Je+8YQD9RbzUU=;
        b=ZV6AnY28Mqdk1jUUs1LQUL7pDa3Y4c6p0oPdk8nnxbzlY5aRtrXvoFKuXWbUsGvVpu
         wLbXAvCZmsCGzVxhTbwpBRWQLCWSSLbc1WKaq4fn83kjPewwBcD7yKmMXpcZEBObaAB8
         NPtXK5OL1+EFKU1EJS2Ql4gYsVJkxz2WxXABwFJ2rQfkbw7w5k+ZFaUnlc9Ub3ia/gH2
         L7IymeVkFj8F0HaytbWUy9cIXdOyVSAh5Ap7k28BnsKXD+UdBVXHCMKLAyYNVgIVPpWq
         BbJRvA1l/F8+6hFQNlO292YkLZwvMXaZuki/CIEguR3xQfk2maj9+pgDwTKXwjyGrTjV
         8EFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="GsWvNIj/";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id m3si223336otk.4.2020.09.24.02.26.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:26:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9Q92s117280;
	Thu, 24 Sep 2020 04:26:09 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9Q9EG080043
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:26:09 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:26:09 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:26:09 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POYv011000;
	Thu, 24 Sep 2020 04:26:04 -0500
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
Subject: [PATCH v6 08/17] PCI: endpoint: Add pci_epc_ops to map MSI irq
Date: Thu, 24 Sep 2020 14:55:10 +0530
Message-ID: <20200924092519.17082-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="GsWvNIj/";       spf=pass
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
index 3693eca5b030..6b217b4258b5 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-9-kishon%40ti.com.

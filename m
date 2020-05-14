Return-Path: <linux-ntb+bncBCOOP4VF5IDRB7FZ6X2QKGQETY5UA7Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9B11D33D8
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:00:13 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id p17sf3395428qkp.10
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:00:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468412; cv=pass;
        d=google.com; s=arc-20160816;
        b=JSRrxLQtqnHHSc1btjmHHCfDD8LgPjhOviKHc/7CXwcQBj6/cNx65LFxfxXtQBbOQ2
         VLhAe7rRenKwtQGs+UpTIrmA4Qx1Obp5Y1x5P0XtKpNpLYj8YcPYdAuIyJHnLH187XPZ
         RZVfy0t50JY4mg3dBEGZnTjfXS80DLWbGRo8Yprrtoa8YB5iA2ZjULwYY7tayGMyFMkd
         Yj4S24m3W5Hoadb6AgDSyTZgvvQHQsukYKYOfdJsI+8TN55hEfOI6UC0sbxnH4PtJu3+
         6wOAhwrbycW9RkzcAtDqiWQXmmp57ea3kKCIAoZIt5GplR8gy+pxAa6tsmaGGkYa5A+P
         Hq/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=F3d77kIFQWCZXG1O+UQ2f3sNgWC02ovQT4UgKWegVo4=;
        b=RnOG4eDTU7kZ3XVpdOe4Gts9OffenF4cWd8O4YneHH0cJS2xFs/pwRuFakEKd3ARLF
         t1nTne9PxNSI3FC3o41YxlgLCIpfFCfnF/x/ZuuDpWxcS4ZvoDxiQ8nPdbFeq1nc5FzE
         ZiIHWOJgaxznNqdWrrXdV7a1YhPorG0GIUt1Vp1+9ssU51FJYj9ZcnDSB2erG9k9a60K
         SQ2rTuRmKgKKd7CKgYuilYmsr2PppRoJfVnNYnwcGnO7eNFp5gyX2DTmMWRQ6J86QfrE
         qHxuT8s+5hF/4lQ6v8U5KkqHtRgzuQlTVD6tO3o+OrWIowB4mUTzmGtllAxBOmloGeHG
         2q7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=XILpPMuJ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=F3d77kIFQWCZXG1O+UQ2f3sNgWC02ovQT4UgKWegVo4=;
        b=qIpbI0V5ipnchAMIQE/ZLh3zTC0eWynMwipc9q9cSQQxAbzNqPmq6qGVCVcEI4mHg8
         J4uS1veMPmCnZK5F/djWJO5RlwDMEnKv1H/m/C5IxEygBWB6kiaIR1Z8Od4Ckmovname
         Bh/iY9dbBBRcFPzAsTthnuhAgoMss/87hYbFeiK3eKMEr2nZZYxzm8W080xCVj2vmgOS
         QnDowox4W40/YaO6hlyg1cULI6mU9SOim4G1X2z/A109AER7BmC1cVS1+qrGgAfNPKfn
         zY8Y4yFBy6QmoCdEBsw7oDlNKwaRAuf0kalKZQ/dkV3wUoH6YMBzCw3Y1KY9C/VzwBQL
         K3VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F3d77kIFQWCZXG1O+UQ2f3sNgWC02ovQT4UgKWegVo4=;
        b=hAU7dGGxhcimIhzl3Jj9v0ck4m1mMouI1hHtuDUeKMvtc78+7t1IBUs7KSmJtiduFc
         CJW20+rv9nHmioo/RuYPM9rpGL9R+peuVOd/BO4g4V/GM/Hl1L/95NAx4cpZJzkkhpgV
         1g6DvMrVFVIryFoWLKG2IITs58lUfbVqhCE/Tmg4hw9uD4BlM1fM5w9x9NQ7hXuGl9JI
         XnuiLvUcSt1+ofEZVJYs3VkRQKUjXKXVPD10OYKXQp8uXjtXwn7atOaxfAqFsjA3Oh3p
         msSl1MTUk8OoaZbBuqcC9iuhuOA12kjC70+PMP/gGCF+kM8/9TEN29w5qh4enB0z7V8g
         32ww==
X-Gm-Message-State: AOAM5319+6L5Mps6vTnm/c5lCrEmlTuihFncr0oJMsr2zIRZqGr71Mfy
	ezm5GH2Bqu3cA9BPlQJcErw=
X-Google-Smtp-Source: ABdhPJw2XTYmfYrmnm3UF4swCB+gDa77iUkiUj2RyO4iLoijFFhvHo2AyowSQssZurlUWv+YBs645w==
X-Received: by 2002:a37:4e02:: with SMTP id c2mr4851268qkb.97.1589468412616;
        Thu, 14 May 2020 08:00:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:1c17:: with SMTP id a23ls1640665qtk.11.gmail; Thu, 14
 May 2020 08:00:12 -0700 (PDT)
X-Received: by 2002:aed:39a2:: with SMTP id m31mr4555812qte.333.1589468412014;
        Thu, 14 May 2020 08:00:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468412; cv=none;
        d=google.com; s=arc-20160816;
        b=gLSDlKCZmwpFnXPzxfmNIrXP6cDldvbQ+3L2sfZkYRRq7MgN4PaUF1ElK+fduI+4N+
         A7yAINjflzJ1CXS/zrw8TUYQVZtyR6VKYrUVpf35FiCGVDvyuCeaud0bsd0CQq1OK7Iq
         LTo4M0TIakU/nZKozX1OU8mprdOaciqiC3A30JG79VNHApbZR07vHdEn6lt3xZTOwJLd
         FdaaIGvogJpCPDIO/hinJxFHkujZPxPIkOnsCBmGwppewMW9Hs5ZtUGCEFk5Vra+qXl+
         DpwSvRhKpbLoK2tfUBCG0IQp0gROv/205oHyBwrBsslNdT5sVvEemfWWZOJUecEnIu94
         lwQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=bDHfeg2mPHd8gN2CoYU7iU5rAUI8DfJtiyLth9bqm8Q=;
        b=TkRk8dyBrVc77xrFvB5CZdZf+JKYwWNPP25LU88MXpKPrAtBKrAApEE+e63mRY7GwM
         CDl/Mpd3tD5JjemDHD0HxJ3daIegHcOS+HP3E/9x7MZIHXFagDEiSUbYVH7WN30Vsmmz
         c1Ywx47+JleGUXWxr82kIj/h+/Vw/F2nWHSnBM61APdvU1/AndZ+HalsuCkRVFMQCref
         eXXGCp1KgYIZBRMdUYV4GIXmV+jmRtG5+1vjJ9BULX6Z068U0cAuw8HZTI6brSRsexvf
         fIyUZbEsKmzsO3Vm16HBK7A6YZuR53+rUcHIWVTnzhF4t5c8PjcrepCr+lTB7KU+u+1T
         xfSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=XILpPMuJ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id n23si331900qtv.0.2020.05.14.08.00.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:00:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF04GF032483;
	Thu, 14 May 2020 10:00:04 -0500
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EF03Ti127742;
	Thu, 14 May 2020 10:00:04 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:01 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:01 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAl019279;
	Thu, 14 May 2020 09:59:57 -0500
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
Subject: [PATCH 03/19] PCI: endpoint: Add API to get reference to EPC from device-tree
Date: Thu, 14 May 2020 20:29:11 +0530
Message-ID: <20200514145927.17555-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=XILpPMuJ;       spf=pass
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

Add of_pci_epc_get() and of_pci_epc_get_by_name() to get reference
to EPC from device-tree. This is added in preparation to define
an endpoint function device in device tree.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 61 +++++++++++++++++++++++++++++
 include/linux/pci-epc.h             |  3 ++
 2 files changed, 64 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 82ba0dc7f2f5..177a3fc1a0dd 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -83,6 +83,66 @@ struct pci_epc *pci_epc_get(const char *epc_name)
 }
 EXPORT_SYMBOL_GPL(pci_epc_get);
 
+/**
+ * of_pci_epc_get() - get PCI endpoint controller from device node and index
+ * @node: device node which contains the phandle to endpoint controller
+ * @index: index of the endpoint controller in "epcs" property
+ *
+ * Returns the EPC corresponding to the _index_ entry in "epcs" property
+ * present in device node, after getting a refcount  to it or -ENODEV if
+ * there is no such EPC or -EPROBE_DEFER if there is a phandle to the phy,
+ * but the device is not yet loaded.
+ */
+struct pci_epc *of_pci_epc_get(struct device_node *node, int index)
+{
+	struct device_node *epc_node;
+	struct class_dev_iter iter;
+	struct pci_epc *epc;
+	struct device *dev;
+
+	epc_node = of_parse_phandle(node, "epcs", index);
+	if (!epc_node)
+		return ERR_PTR(-ENODEV);
+
+	class_dev_iter_init(&iter, pci_epc_class, NULL, NULL);
+	while ((dev = class_dev_iter_next(&iter))) {
+		epc = to_pci_epc(dev);
+		if (epc_node != epc->dev.of_node)
+			continue;
+
+		of_node_put(epc_node);
+		class_dev_iter_exit(&iter);
+		get_device(&epc->dev);
+		return epc;
+	}
+
+	of_node_put(epc_node);
+	class_dev_iter_exit(&iter);
+	return ERR_PTR(-EPROBE_DEFER);
+}
+EXPORT_SYMBOL_GPL(of_pci_epc_get);
+
+/**
+ * of_pci_epc_get_by_name() - get PCI endpoint controller from device node
+ *                            and string
+ * @node: device node which contains the phandle to endpoint controller
+ * @epc_name: name of endpoint controller as present in "epc-names" property
+ *
+ * Returns the EPC corresponding to the epc_name in "epc-names" property
+ * present in device node.
+ */
+struct pci_epc *of_pci_epc_get_by_name(struct device_node *node,
+				       const char *epc_name)
+{
+	int index = 0;
+
+	if (epc_name)
+		index = of_property_match_string(node, "epc-names", epc_name);
+
+	return of_pci_epc_get(node, index);
+}
+EXPORT_SYMBOL_GPL(of_pci_epc_get_by_name);
+
 /**
  * pci_epc_get_first_free_bar() - helper to get first unreserved BAR
  * @epc_features: pci_epc_features structure that holds the reserved bar bitmap
@@ -629,6 +689,7 @@ __pci_epc_create(struct device *dev, const struct pci_epc_ops *ops,
 	device_initialize(&epc->dev);
 	epc->dev.class = pci_epc_class;
 	epc->dev.parent = dev;
+	epc->dev.of_node = dev->of_node;
 	epc->ops = ops;
 
 	ret = dev_set_name(&epc->dev, "%s", dev_name(dev));
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index cc66bec8be90..dd3c2d566c3d 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -211,6 +211,9 @@ int pci_epc_mem_init(struct pci_epc *epc, phys_addr_t base,
 int pci_epc_multi_mem_init(struct pci_epc *epc,
 			   struct pci_epc_mem_window *window,
 			   unsigned int num_windows);
+struct pci_epc *of_pci_epc_get(struct device_node *node, int index);
+struct pci_epc *of_pci_epc_get_by_name(struct device_node *node,
+				       const char *epc_name);
 void pci_epc_mem_exit(struct pci_epc *epc);
 void __iomem *pci_epc_mem_alloc_addr(struct pci_epc *epc,
 				     phys_addr_t *phys_addr, size_t size);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-4-kishon%40ti.com.

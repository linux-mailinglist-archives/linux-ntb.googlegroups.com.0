Return-Path: <linux-ntb+bncBCOOP4VF5IDRB5GCWLWAKGQEKGALXLY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E5095BF159
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:01 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id w8sf4047763iod.21
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497460; cv=pass;
        d=google.com; s=arc-20160816;
        b=OGPeNYX7zuGPy2Xt2tfWYx3eLAflDAgkUsLfuKBsD/0tjND/G6OIqXgD0q8hDMCFbx
         QTkdtbFPC0/c8TQ4i7j56DWb240IGCu3jpSBRMwl+iuY2Y0553AK6UdVBc7YhsUWbsEO
         xVuKOVZvugU8TM1Crb0dPr04N5aQNzZGcy2R3g5+2W7BqAFDGK8OpIZf9PyxrvoSESTs
         I1H+Vmv8CTMYbl3isLlSWamcdPJ3267vyReChCpZrxfZjn5DJ/6rwbLciIaSbYceaQDe
         VmEJ59WyqQ+nuPp3X2HuToeTnxkPHhINEkvUJYaA/WLI0YATyiBvITYeYYtrubAieQhL
         d2qQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=MWmzT7rW4w9hIKlnI59SpAUYzIi3k9yr5Qd5ewCR48s=;
        b=SyJQbUzrAbdu2IgQxh4mu+VlpsOKq0FHOY4U3tSiRV7EpaWfvb0xNnzo5OZCTJ63k7
         HICQUKHI7GHXV9Uv4vxUEn/5z8XApxfN9KPPzNlpNm9zmTY4DheyOuwcTl0Mu3M239pB
         E834J6xNsyUnoGW9j3xTfjcV1NrACbVVmh6KB4Bre0xsMTo/ViXmckXh7svHhAQrSufD
         5yP5AoQCdXiqQXPUYbK+AoslbA+EJsmdusJ59TaoANGOQSmS8FDhBLGS2JgKXxJyt1Hy
         E3PJpckMeCMnCNCOWyOSYf2WaDUZvHUKajKBKMUZkTocD+42i18LSF97iRlZYhWLJKVf
         7NBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=OXXAw2TF;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MWmzT7rW4w9hIKlnI59SpAUYzIi3k9yr5Qd5ewCR48s=;
        b=pgJrdHn1JDhQ8ahQVNt6L72zh76WgmXB30B+Wdj2l9enNCta/SFxIoCMb/yOIXkG0m
         RkufrWdawfCwwB3VH6u1ZZffkYZRSkD0hbkDxWC6tFRh8LiVOBrTL/EgrXdtYx76mLWL
         uHjEWVjo4iJtLOz/ojE/Zc79983QfNwb9We5eLRm3zhJcuo8fn3F+xPUJht+qX0CwvNg
         tp+XK438vFnt0yA7jRgEFZA/vT7qMFxVkXCwxXJ9WYDHDW8dEmliY3wc54VQTZWR4V5J
         7j11V6BP6QalXYduduPvhdtM5FtWWbSOux/pCGxpU0u8cLhe5y60EzrLoDFJz2FQQDbj
         CJmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MWmzT7rW4w9hIKlnI59SpAUYzIi3k9yr5Qd5ewCR48s=;
        b=kAATc7vZe9PnQETckd2ucLpgbMGmbEw7trRXT80LU3qdcV2slPM4fqSP06edmsN+EU
         mM7U19GJRX0T2A3liGZKqo6yNduck6zEyEzpVE9ZKzKUbBRvgwPQL5SVpY2+1DiGTZ47
         3A/jf9dgldOa9SWo3PVmPDAVCCq/LOsXiscb/DEBincDtNbZejT2iQ7Tv0KCQnQ46goU
         Wu0/hoi1JOzaDMTvSMqJ5vvHZ1TYX4g57uoLBV8mq/ofeL28wvOjFe/FGSPYsI46LvnO
         zlg5tgK/q6Peo6oBUap8H4Kilhah7cIEECL4T3M9eT4kpSkd0d9fB60vPKu85JZ6SoYz
         w6rQ==
X-Gm-Message-State: APjAAAVhHv9tYjEGyhxnZuf76gz6CJxcbc5GP3VwP7aD+k8nbF2PmTO7
	eLZYd4F1gOBnWMuufHrXnEo=
X-Google-Smtp-Source: APXvYqwfhVSV3olZyTZlpE5ftvEWSjSDHJbcGiNEvvFx7OB+f3btg2SQ4o73B34RHYbnqf3Ocoki9A==
X-Received: by 2002:a92:8347:: with SMTP id f68mr1838216ild.216.1569497460112;
        Thu, 26 Sep 2019 04:31:00 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:da02:: with SMTP id z2ls283572ilm.5.gmail; Thu, 26 Sep
 2019 04:30:59 -0700 (PDT)
X-Received: by 2002:a92:5fd7:: with SMTP id i84mr1790333ill.125.1569497459873;
        Thu, 26 Sep 2019 04:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497459; cv=none;
        d=google.com; s=arc-20160816;
        b=wUpbpfMYFnxFv+A+/LFAiKZnn2SC+2EwJqHtHfGO+2ehhhwmQVPS42mCtqS5JJgmIG
         yHFrGIEGSNDzJf35xZlxzURe8wbwrQiW9MhGH+SSP+5Ff4ls0CtucyphNcWPgBJQf1qL
         49BpUPyAIkzjkHa9v5lqh5cfhxne3+FTBRpYYNrg2KaivYd5WYcjVulAmjOs3cdOExSE
         mt/gzyYF9Ub6vMXp7BRD1Pfaq1+hyJyRhAllfjC3On4/AZWRAytX+YYSZ4Wk5qqJY1+D
         tzPVVJZbCUVPNEts4xvoIpt4StSAP79U7doqOPvsfcex6TjcvkOQYP4WECN9bRhiK0HR
         j8aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=4zHnlcPjrtmbIQZ9Yub799bUIN/qndEfK5n4s1oKXSI=;
        b=VAUX+tAzDBo5TudmpPJ809C1fG8THHIqHPNNb1wCk9yOonvzW6M+3Toc2n+LaRDQGL
         yS5/JJLRnhFpkuJj6kIZItvi++bVfiYPHbd+IurXw1CUm+Mgi5B01QIhWcLh+YcRld5u
         GyxHspPqmqsKIZihq2P/QSt+iP2KwLX65dUGOLd+cDhvRTJiYH38NnB4BMBcL5KFiX0s
         KW2gqqtiFSYc7EKkLPgs5R4iMxv22QPVuLJQcqliptFy/TnHIUcy+dqKw1m78WN+IiHa
         dG5hx4UPKNQZ7S8zIOAIlRuaECgDrZCqXPUW7ZaDP4CUkPAaLNDrmWJR71rg4zoNCsYp
         7Iag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=OXXAw2TF;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id i8si42686ilq.4.2019.09.26.04.30.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUtqC016119;
	Thu, 26 Sep 2019 06:30:55 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBUt7o030976
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:30:55 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:30:47 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:30:54 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTjw069017;
	Thu, 26 Sep 2019 06:30:51 -0500
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
Subject: [RFC PATCH 05/21] PCI: endpoint: Add API to get reference to EPC from device-tree
Date: Thu, 26 Sep 2019 16:59:17 +0530
Message-ID: <20190926112933.8922-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=OXXAw2TF;       spf=pass
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

Add of_pci_epc_get() and of_pci_epc_get_by_name() to get reference
to EPC from device-tree. This is added in preparation to define
an endpoint function from device tree.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 61 +++++++++++++++++++++++++++++
 include/linux/pci-epc.h             |  4 +-
 2 files changed, 64 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 5bc094093a47..0c2fdd39090c 100644
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
+	of_node_put(node);
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
@@ -661,6 +721,7 @@ __pci_epc_create(struct device *dev, const struct pci_epc_ops *ops,
 	device_initialize(&epc->dev);
 	epc->dev.class = pci_epc_class;
 	epc->dev.parent = dev;
+	epc->dev.of_node = dev->of_node;
 	epc->ops = ops;
 
 	ret = dev_set_name(&epc->dev, "%s", dev_name(dev));
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 0fff52675a6b..ef6531af6ed2 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -202,7 +202,9 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features);
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
-
+struct pci_epc *of_pci_epc_get(struct device_node *node, int index);
+struct pci_epc *of_pci_epc_get_by_name(struct device_node *node,
+				       const char *epc_name);
 int __pci_epc_mem_init(struct pci_epc *epc, phys_addr_t phys_addr, size_t size,
 		       size_t page_size);
 void pci_epc_mem_exit(struct pci_epc *epc);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-6-kishon%40ti.com.

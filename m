Return-Path: <linux-ntb+bncBCOOP4VF5IDRB6GCWLWAKGQE2FCT25A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 36930BF164
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:06 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id b13sf1548122pfp.6
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497465; cv=pass;
        d=google.com; s=arc-20160816;
        b=v/bqsid9GxcR9l9A+7AaPdF28etdSNy6Q06xZvUHhuVXXFCPWbwGg/5j6diMsU978g
         o4sWGWEhYayg6OWDRGpva3yeHBUUfWhm6qS6euNW31ijQSdTZxIZpWeE3AtBEWjPtVrq
         49MCfMr47vU298Xf1r+c6v9HCpgcvcdRk+Tw2D2sMVdqNqNQkyYlYCsyNAljTOHVWXzm
         t6scF45d1qkodVz6KKSzxL5wAEyLtgCx7tsbX6+yFhVLD8Fu31X/1WiI9+EJ1CoR/l1J
         /ihUjbtMwB6yr9RbRjlqXBcsuiUSA6EN1udWmhHDF7y6dXQuIdzCI0pYrU4IZwkM//0P
         3NOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=wpoRgFLetamkNHNt+CRQlHL/7Fs1rXloi9MFC2dl8Qw=;
        b=d0QNCbMyt5HQ8SAFTzx54R3e/mCABC71MgY0tRDY860OmoY4TzDHCKgkthP8YmpYhm
         5ogZrpjscaxYh5bSL5CPKaFww5Ho7SONK1eMxF1kGModWXjyoMMBExQT6Edf9s9EwYre
         V8b2p4R++twly1PMZCYRaFn+ZcCNnI+/GB0DKFcSQq29aPrH7firJYsttzj31hRjwL4s
         0dRZr1pR6ziCZpFNjzR4yHkU2vAqy5jaas1q8ziT5zUoDEQQN7AOEdcBQsDay3j12v1F
         bfdCkDTwPfugulRfpKFkNIyufwxUlDUuL4FkfY7To084VOQHHx44JJ6PaPX4S7gFwrz1
         3Z9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=kRsZTqOy;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wpoRgFLetamkNHNt+CRQlHL/7Fs1rXloi9MFC2dl8Qw=;
        b=CuGMII558zZuNNqaKS9lpjdBmnQdqLOgbEb6nJPhGLm+PRh1ukMT4dnZ1Mof3DnpWq
         G888heTdJmvAg9uPHrIcG9R+Iop1VRc7mJ1MFzjM8gzl3pY2pFd6SFYLCNBSUZLZAuj+
         6TDbpE9OKcLipVJka1JfXg6DdPZLm1Bw6yww7lx8+2N5TPQruOis++fXn3ENB9li8qZQ
         nwapTWMTSJNLe3pgUQzCof3MuIuh0bORRqGtVV2c83RuaDpjLUqoMzHx6j+3p9GAhKK5
         j3jkCoU5Up/EfLw/CjIX4/rELNK/IDN9LSr+taxVqN8L8rrfqPTf2V5tgHQizCYlUzVU
         Cn0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wpoRgFLetamkNHNt+CRQlHL/7Fs1rXloi9MFC2dl8Qw=;
        b=sNVac89Sw+VdMcY1r9U1XkLhZc4Kp4waBe1L7UytS6uFi3Ur+pm6KRQnPvIntnp0qL
         jScEFjAnTuaZcuLQ4QSZyuDJXVFeVB0Nc9+xBeCsfPVEUtgAFvx6juMteNjNP8FWL332
         k86xqJubmYR2nAKsDlrUaN5AxlSyJR/BQPWaR0XxlnkMwhZd4DwPQxcUM6k1hjpXs1VK
         19hIc5NtXDd1EgiRHjZXSbhBvNgU5mDG+DHh3h5bYrsz90xbMOPlTjaIiQIF1D0XyNL6
         w99FYIHPkWLaG87N1OrA2k2RqKbZ5rmzFKIHnRrv3cceLuzdWTYWFcYPRPaB5AUlBkr2
         2ICA==
X-Gm-Message-State: APjAAAVgmNFaXoG3sL4auoOlacdDb8fCPUXmRIWYoC71Ypv8xU8WBIJj
	jFE+XTjaRs4yFSuST4UpgmY=
X-Google-Smtp-Source: APXvYqx1g7s1Mr/2UfqKiW7Z4t/LCGpTTctiAt+pb7Q3RKhiS9mW0XFt833FNjuRmPlVg0vsAw1BhQ==
X-Received: by 2002:a62:d45a:: with SMTP id u26mr3108302pfl.137.1569497464909;
        Thu, 26 Sep 2019 04:31:04 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:9786:: with SMTP id o6ls629347pfp.1.gmail; Thu, 26 Sep
 2019 04:31:04 -0700 (PDT)
X-Received: by 2002:a65:620a:: with SMTP id d10mr2897341pgv.8.1569497464437;
        Thu, 26 Sep 2019 04:31:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497464; cv=none;
        d=google.com; s=arc-20160816;
        b=kDr71NxV6hevTjI1nxO3S60oOipvuD8R+BLPDFAHMbaoDmeovNJg0t+ykdl8BaasEn
         uxHl1BoIxvtxLS84wPbaZksbNF2VBNSsd+oQLcWoqX0URDUmFRJoVJXcEgTMolWQ5FFe
         jCESXFqyWvP7j18e4kWDKgU26tNFezUNvM3Att56kilD+beFu1D0ZFPnN/BgBn4b39zZ
         1MqRVodiU5CDdvlTMUllNHwKw7z1ay28SS01FA4LIpe9M1+I84iUCKiDZeSQNaLvmwrt
         SdvcXLf2Heh5C8xU0C4FwWJ7vlRW9Nj8zx48SnfSn6GT5k6NHek0mc7KRrsTcp0hSclj
         /r+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6Ioi8K1OssG13g6PVxuHfADXQnIy2g3W7qB18SNPWyw=;
        b=h4vHQ+YT+vs9R3TTB9UKYkieaMTaFVUAR8GiBHwhLoCStvqjYDWpmkKZ9ukQ+TSthd
         vC6YAeA3hIl0Yvgpg3IKABsnoGH8+ceLHz36V9mh0cMb18vIcS4BPiqqmxFZr+vHsvvt
         HIB4tRDXLK2GtmLIMbzpXBiQf8NuuHQHQLzvXVQKZOWuy4u0C4u+bunRz7Bx/+gsO/Gd
         +av6ayxWgFAy4+kaarouvtLHeGWATArb1zY+iaaqPPpbc+tr7PV/dW6w4EJ1YURzmcpl
         figG8lulZfxQ35pGuTt31TNSgUrwIxbHseSLA++YqnRXZO+nbQFYlrHmslEkCn/tKcO0
         lx7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=kRsZTqOy;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id x2si81709pfq.3.2019.09.26.04.31.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUx71042347;
	Thu, 26 Sep 2019 06:30:59 -0500
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBUxYW091258
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:30:59 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:30:59 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:30:51 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTjx069017;
	Thu, 26 Sep 2019 06:30:55 -0500
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
Subject: [RFC PATCH 06/21] PCI: endpoint: Add API to create EPF device from device tree
Date: Thu, 26 Sep 2019 16:59:18 +0530
Message-ID: <20190926112933.8922-7-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=kRsZTqOy;       spf=pass
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

Add API to create EPF device from device tree and the device managed
interface corresponding to it. This is added in order to define
an endpoint function completely from device tree.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epf-core.c | 68 +++++++++++++++++++++++++++++
 include/linux/pci-epf.h             |  6 +++
 2 files changed, 74 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index 16feff8cad50..c74c7cc6d8bd 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -529,6 +529,73 @@ struct pci_epf *pci_epf_create(const char *name)
 }
 EXPORT_SYMBOL_GPL(pci_epf_create);
 
+/**
+ * pci_epf_of_create() - create a new PCI EPF device from device tree node
+ * @node: the device node of the PCI EPF device.
+ *
+ * Invoke to create a new PCI EPF device by providing a device tree node
+ * with compatible property.
+ */
+struct pci_epf *pci_epf_of_create(struct device_node *node)
+{
+	struct pci_epf *epf;
+	const char *compat;
+	int ret;
+
+	of_node_get(node);
+
+	ret = of_property_read_string(node, "compatible", &compat);
+	if (ret) {
+		of_node_put(node);
+		return ERR_PTR(ret);
+	}
+
+	epf = pci_epf_create(compat);
+	if (!IS_ERR(epf))
+		epf->node = node;
+
+	return epf;
+}
+EXPORT_SYMBOL_GPL(pci_epf_of_create);
+
+static void devm_epf_release(struct device *dev, void *res)
+{
+	struct pci_epf *epf = *(struct pci_epf **)res;
+
+	pci_epf_destroy(epf);
+}
+
+/**
+ * devm_pci_epf_of_create() - create a new PCI EPF device from device tree node
+ * @dev: device that is creating the new EPF
+ * @node: the device node of the PCI EPF device.
+ *
+ * Invoke to create a new PCI EPF device by providing a device tree node with
+ * compatible property. While at that, it also associates the device with the
+ * EPF using devres. On driver detach, release function is invoked on the devres
+ * data, where devres data is freed.
+ */
+struct pci_epf *devm_pci_epf_of_create(struct device *dev,
+				       struct device_node *node)
+{
+	struct pci_epf **ptr, *epf;
+
+	ptr = devres_alloc(devm_epf_release, sizeof(*ptr), GFP_KERNEL);
+	if (!ptr)
+		return ERR_PTR(-ENOMEM);
+
+	epf = pci_epf_of_create(node);
+	if (!IS_ERR(epf)) {
+		*ptr = epf;
+		devres_add(dev, ptr);
+	} else {
+		devres_free(ptr);
+	}
+
+	return epf;
+}
+EXPORT_SYMBOL_GPL(devm_pci_epf_of_create);
+
 const struct pci_epf_device_id *
 pci_epf_match_device(const struct pci_epf_device_id *id, struct pci_epf *epf)
 {
@@ -549,6 +616,7 @@ static void pci_epf_dev_release(struct device *dev)
 {
 	struct pci_epf *epf = to_pci_epf(dev);
 
+	of_node_put(epf->node);
 	kfree(epf->name);
 	kfree(epf);
 }
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 02090eb41563..7e997fb656fb 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -11,6 +11,7 @@
 
 #include <linux/device.h>
 #include <linux/mod_devicetable.h>
+#include <linux/of.h>
 #include <linux/pci.h>
 
 struct pci_epf;
@@ -101,6 +102,7 @@ struct pci_epf_bar {
 /**
  * struct pci_epf - represents the PCI EPF device
  * @dev: the PCI EPF device
+ * @node: the device tree node of the PCI EPF device
  * @name: the name of the PCI EPF device
  * @header: represents standard configuration header
  * @bar: represents the BAR of EPF device
@@ -125,6 +127,7 @@ struct pci_epf_bar {
  */
 struct pci_epf {
 	struct device		dev;
+	struct device_node	*node;
 	const char		*name;
 	struct pci_epf_header	*header;
 	struct pci_epf_bar	bar[6];
@@ -167,6 +170,9 @@ static inline void *epf_get_drvdata(struct pci_epf *epf)
 const struct pci_epf_device_id *
 pci_epf_match_device(const struct pci_epf_device_id *id, struct pci_epf *epf);
 struct pci_epf *pci_epf_create(const char *name);
+struct pci_epf *pci_epf_of_create(struct device_node *node);
+struct pci_epf *devm_pci_epf_of_create(struct device *dev,
+				       struct device_node *node);
 void pci_epf_destroy(struct pci_epf *epf);
 int __pci_epf_register_driver(struct pci_epf_driver *driver,
 			      struct module *owner);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-7-kishon%40ti.com.

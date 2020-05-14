Return-Path: <linux-ntb+bncBCOOP4VF5IDRB75Z6X2QKGQEAI6N52A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C763C1D33D9
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:00:19 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id x10sf3763547ybx.8
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:00:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468419; cv=pass;
        d=google.com; s=arc-20160816;
        b=gXGWwo54bKsJpIjSapBUB92cuHQ8QUIPW2uURllZpZrKnwETof1It8sRdC++36p3Fn
         D14KwXhXyrO6yUIC75QgwmBRZZ3XG0kAGAv/qrPDu1P8as4S3RHztonHJVYEAElzxv/C
         ddU+5oMjt3TARIzcntfJIL1e8Q21Mn39Of6fNDQNLzg7uZWUhRJkyZgRv5tlZMQCf2k6
         +wc31n/482AXt0yIJs6FKbDGKnX1Y8aUjN7mQtgQhBxCcCSCUYzom9UoRWwCcQMEf83w
         qDcDi4Y2Lji6pTsQZFmErBvxTwP34xyPxfMzLN+Dlaz3LdoL1eyBIPVv5it0fCaKk1Fi
         T86Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=rnpl+oJP56IfamiuVZ83MpbSxTvtgNag6p+8kQV7968=;
        b=VLxruiXlwGiGmmBTT7SEpe6zO3L9enGdBJeGMxowx+nH9vxGptNmDQ5cS8JNGq8398
         NJvH4Pmt4eVb3MODES5YW6hsjCVZ9IaZIjskldUhTOgYt1IUiS6Y8gb3RxSpYJY9SOyD
         yU/apbzOypV/HsCyGsgTKL0eq/87580TJwo2Xzq3FDsDiBQaMIZH+5fmfrfRvbBis+ui
         E1mT4rK8LZjtGqiIUqZ5Y5Tlh5SaPMW0pobOA+3GPCfF+YB02gETVu6BeUB6RKRoxkoS
         g1muImn29JNkpmQXbjstQDF6ScrqCvjbPkqHWTcP5qKxZVOYBgraEO7tVWpHjKSx838a
         Ra3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=MkKcHfOX;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rnpl+oJP56IfamiuVZ83MpbSxTvtgNag6p+8kQV7968=;
        b=N/JSJaKDSlk5PIGo6X13ZSitVpFr0NjRiBbghORACUN18sfUudweJTHeZZnbLRbs9P
         Jbhg64dnnr9Y2fzApul/1AIPYJO47MCEBiwF2848QY+Wghf/VbXKgiWNm0cvootP7oFS
         rH6HOathW+eytYoLOM6BFaBgrXJr/930bXOh0jakCzXgvFLCR4Qc0Ii/cya8mWGgNKGh
         EYDbYUrw7Lxod5H9TsM/BYm3OSFsjV14Jr8JqEEmhGQlNWzVPd++lOAyZEOQea1b7S/Z
         ruKeRBdQg27abMJ4NwXw2gQMK37sqvWeFYwn2M6HED6o7XjxZbIU3kqsEgVBb35M6IH+
         ea5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rnpl+oJP56IfamiuVZ83MpbSxTvtgNag6p+8kQV7968=;
        b=WEcP1Bl0nOQbPcNU4Y/AmqCt6WLM8Xpa/+h8V+x/zgOrTdIqwCNBpUBEFs/1H2lWFE
         TQMBRQE9tX3PwWphdXCXwA0/57Rw+U8AZ6l1O/IvXxE3voOx2hieIxgJsZElGUVKX81j
         HYQ48/MDrm0Mo8pnUIQLn6Tv0MmsgRVuzOtNAhLxNWBdcIE0+yONrvJep13eXW5hwKOz
         sqIz+0KT3PYKcb2CCB2DdWT32jtaQW9wtoVjpw0LUM+60+akCShghtTkY8ycj+TG2ZlV
         bR+S30Zl1pTbEz9bN4sIVpX2qBGPOh1XstQFqrkQ7OZ15MmePsGxpQ1omx4Jc0agdJ+p
         kS8Q==
X-Gm-Message-State: AOAM5312DOm2cZlmYWRKySYogyWk0BC1t79ufainCioxKxxWPuoj6ket
	ebZniki5Adru0utbWN/kQIs=
X-Google-Smtp-Source: ABdhPJyZ4nJ3igl/brwTdAb/eYNFgyw1eONuW1XgiGaFlRFphMVV9ohNRC/OczJVxwaJ05JpfAvTpw==
X-Received: by 2002:a25:4408:: with SMTP id r8mr7364495yba.146.1589468416053;
        Thu, 14 May 2020 08:00:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:748b:: with SMTP id p133ls1332306ybc.0.gmail; Thu, 14
 May 2020 08:00:15 -0700 (PDT)
X-Received: by 2002:a25:8b0c:: with SMTP id i12mr8110949ybl.371.1589468415598;
        Thu, 14 May 2020 08:00:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468415; cv=none;
        d=google.com; s=arc-20160816;
        b=TvibsySXxUmJGCVAkGmXqTkQDrJdIpBXmcd7s9DVzK19OwEFL3QSIEMe6de0Ep59/C
         C0/hh1oOyofITNYNG+7Yyv2S9ywJl0jykbMS+8zBBg59PkHDdmN9qP99D2PDULL8sPhL
         6TflRX4qxTjFZCDkmsf7DJs8uplf5O95sGsbNSzI5cbFpuHpsweL1vAG9HYeO9ToIMO0
         qswWWlu1M5lTguGBQTWbbKvcLL71tRNssSDWEBdQO+Sho9H6MxRYKp4c8o2u7P+A2wZu
         HDJ6s6TzB1wcPNyCRvaw9nTD0xzF4PukAcrlWRu3uBtrUEqSjBlgxNHuxr6Ro0QrApxW
         8GwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=oPxuXqtF223OER+bcyGCz8Cb674T5LZwKws+2r6ddns=;
        b=YnZGXO7hWjtDbTG3nP5irsnLNBgNMTOjhZb16Hr8ic2wD41Eg+S1C0DZCkSTVPK7b3
         Ib+xBcwhr0oUc16E2Rdoxpl7nPDAzootpw/fSyC3nmNsAOk64pk1UidzkIxucSRzxjLm
         Ads0LtHHc3gc+7lVJt6C6xj8iG6+N9Gk9qs2PX1E21eAI6p7QNuH20ZScKCu0aA02JnU
         fTZW6mBrzt2TQJaqqqSWf0ppIQ0HYI9GTgZLH2zkYO/3f8ODk5bdy5qGupCDgp/zDhVE
         K+wpnFF2NCQba1EJBNjGu2jWT6Tldf9gD/o6QvYBBlAZU9Gezwo6KcVbdpUDtoX5yt2K
         xEIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=MkKcHfOX;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id s14si296525ybc.2.2020.05.14.08.00.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:00:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF06Rd029135;
	Thu, 14 May 2020 10:00:06 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF05qA117768
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:00:06 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:06 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:05 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAm019279;
	Thu, 14 May 2020 10:00:01 -0500
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
Subject: [PATCH 04/19] PCI: endpoint: Add API to create EPF device from device tree
Date: Thu, 14 May 2020 20:29:12 +0530
Message-ID: <20200514145927.17555-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=MkKcHfOX;       spf=pass
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
index 244e00f48c5c..cb6c7b886325 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -280,6 +280,73 @@ struct pci_epf *pci_epf_create(const char *name)
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
@@ -300,6 +367,7 @@ static void pci_epf_dev_release(struct device *dev)
 {
 	struct pci_epf *epf = to_pci_epf(dev);
 
+	of_node_put(epf->node);
 	kfree(epf->name);
 	kfree(epf);
 }
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 6644ff3b0702..8fb77ab1968f 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -11,6 +11,7 @@
 
 #include <linux/device.h>
 #include <linux/mod_devicetable.h>
+#include <linux/of.h>
 #include <linux/pci.h>
 
 struct pci_epf;
@@ -108,6 +109,7 @@ struct pci_epf_bar {
 /**
  * struct pci_epf - represents the PCI EPF device
  * @dev: the PCI EPF device
+ * @node: the device tree node of the PCI EPF device
  * @name: the name of the PCI EPF device
  * @header: represents standard configuration header
  * @bar: represents the BAR of EPF device
@@ -121,6 +123,7 @@ struct pci_epf_bar {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-5-kishon%40ti.com.

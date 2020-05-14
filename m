Return-Path: <linux-ntb+bncBCOOP4VF5IDRBNF26X2QKGQEFXXF7CQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id BFFE21D33E0
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:09 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id r4sf705289oic.3
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468468; cv=pass;
        d=google.com; s=arc-20160816;
        b=xTUUC/d94KKe9qFaKY5rHE+LyaR6ScPYLnBMJ2L66Pa36fPTBELn+4QUCQeo4w3aEi
         z4jAM8zf/BSxl+N4mwr0HjNMviRrAT8hWd9jdqBvrjxxIwPko+MLHe9h/PVvHQ7wqEXc
         zzGTnviTLS3rSd6XnnbPjItdpDHXSfD6X7yde4r2Y6aVbgioSLm2zeNLakDBXf3AATmm
         uJoM7tt5jS7E0+uh4zPs/aJ+MVRq9ie3uY18oZA+6xgA15KvNFJUm7NkNcaIlyzUQ2Xz
         pU7cINmyTXX0hHkRUguiOiwzfweWvWz97Zrf2LnocyF+iJ4Xmp8kAy9vfl3FZ9vtg+EM
         6wLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Pdq54rk0iI9m9VLtlHwnscrzB09DxJrZ4Nn5AvmbwW0=;
        b=M9b89MY5MfcOs8hAgG8DOtkby6O4fS2wHETyBGtAeBJ81UzOHHk1bYSdfImtTC/AWz
         CENtW1ex7NIzNwBn2jleysvC2S4lxtQpM47qKkm6Cneg0cUL2pgE81Tn0H+Lr0w1jR+M
         yP1/e8N4gyKUlkman7j41FoWvBIGmxhVDmn29EZ1BuhhbDkPpLMtti1WRkwKRSYbHJVR
         o0qmGsWYZpvz75wWQK8xciAq/pCG64mLA5FwdGf5EQ1/fBqYrJWjl1FCxRpzww35cQqF
         Caf39IXr9DykZXNu+ASlXdufrqY3bE8csFqiEW5ZtutWE7bZZesZ5EMuZOfgFO/iBvNL
         /+UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=IYJF5ySR;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pdq54rk0iI9m9VLtlHwnscrzB09DxJrZ4Nn5AvmbwW0=;
        b=NmFE1qikuP3gSo/vy7Gm2phIIhXMqRAkEeaqeg4t3nqB71KjRfP5/75sA4aHccPk2z
         WtXVVOeIuH8A7r74DR9SCHYKFm9pQHZ2mXMeKq+Cr2K6itdVIqAqFSoLNQsY60ejwUrO
         6YsO5xEL9UVkVmSszB9dW0wuuzWT7QnPutPiJwEaXJs6d2VrX6OoG4eJ+i6tS1UVr3iq
         V7wIC7PWGxHBiWixepca1m2cqPM9HBjylBjNgre16E2QIFgdyv8FAZ6tw9iwAJbmCJuv
         NL5o9hUk6FXBTqEnqTQZaKd+Zt/PvFBgaRPkCL0dgbq75Gp3A6TlCQVwd7ceYj0ubBGz
         Wa6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pdq54rk0iI9m9VLtlHwnscrzB09DxJrZ4Nn5AvmbwW0=;
        b=QCEzKqEWeReVrg2zqp2vvWeHuMweu/w1xfystNMbARiSy30DJ5w/6KfWr2h5cleWrK
         guV8zhhtjcEAZAqQiCz58XkBBeeGFMfp+0TKeJ6dGhAiHop1x8nmad5TvzrtJ6iH6ugp
         NEUo27v/qrI9zOxU37c0NIaiLYTxOiLaBy4z9HSBir064+W1KgIHv7MA37T/ln50Iu3c
         CxKlNHw5yB5MuwB4KcdcOWOpasXaHBiz+2xURdiAunQPr5Qh+XXTTbz1Ha88AGGnOusK
         KpU0ANHkZG4hHPa0dH62Sf5q8utreUqe222ODoYZULaiYVa+tvYBwWBPSEwiKQXA/hw5
         YZew==
X-Gm-Message-State: AOAM532TUCq7gs4QY7k4Qpo3IXUfZ2yXocmoi7/YMr8I0Bx8R8s0j3nL
	WUVF/vt9dwtSqae4qUc1LX0=
X-Google-Smtp-Source: ABdhPJzBkir2/s7qLXsdKhZHCmEa/ICbxJXW3cUw1IXrXzNfqlNvqUgtvWogm49Az5DjCAITMhehag==
X-Received: by 2002:a05:6830:158b:: with SMTP id i11mr4021454otr.160.1589468468224;
        Thu, 14 May 2020 08:01:08 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:6e97:: with SMTP id a23ls618954otr.2.gmail; Thu, 14 May
 2020 08:01:07 -0700 (PDT)
X-Received: by 2002:a05:6830:1589:: with SMTP id i9mr4053187otr.102.1589468467851;
        Thu, 14 May 2020 08:01:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468467; cv=none;
        d=google.com; s=arc-20160816;
        b=QdsqMySWbFa01NiOjrlwl+1n/fLqsfC2cW3ibpRm22IsCyeu2jpT2NC4tD/XYfXA68
         6irgMOxjGhe25enj4HylKWxd1st21Ul4KFQ3FvIh9SdEQxo6fl0qFHteZl+1KzHzRzpU
         XCWDXvJut8MAlK9oxi6MBN0NeU710hSEffm/t4LLQ6nZnSb42tIy3ZIq8GLdHJr2kNuc
         Ju4kBHsT6RdeZn5FWv81or+UpVpvy0T7HdEhtdKc+xlgAhbnPpEKziEv+2IaTAdfAUmh
         2vZPo+6ynp6h/C0XHCqAyWGlC2zAcDLhqm7u0WXwcHodQZAKbCThRe45lCrI5AJngz79
         LSuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=JTb7YgvROaherg13FvnZRBqflcI4vuUymmflrjhSi4Y=;
        b=CwtpuQpDuQkLj5keY6YIIDPXMOGJO9lE9YP//p3HxCBcqJs6QWVR6WPWzbPjOVuv8b
         Rtp3OwKA1xNgVbmL1Ad1GgIDBHLQlDwcppXHqQIjXNb8OHFHl/xfEcWO2ZajQ4loyoce
         IZ8Hn/MCQiFTiUb2dnZPI8iTD54chggTS3W/+y3u/tqk+XQ6JYp3+0kijZENRrbu2rxS
         LDOQqXiS9WHOx8E3mIOofqe4CDdMTgzHS1FEDKWYpeTItUFterky1WBD4hvxAlY5UeVB
         UP/aTsOp00uBVDt2vjD9hbiUZ8YY1lIre0zPSzw33AyVkXY5myRNu+ViYAueDIP+X7qI
         0j+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=IYJF5ySR;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id h17si322062otk.1.2020.05.14.08.01.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0e7k102730;
	Thu, 14 May 2020 10:00:40 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF0e3X118803
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:00:40 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:39 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:39 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAt019279;
	Thu, 14 May 2020 10:00:35 -0500
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
Subject: [PATCH 11/19] PCI: endpoint: Add helper API to populate header with values from DT
Date: Thu, 14 May 2020 20:29:19 +0530
Message-ID: <20200514145927.17555-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=IYJF5ySR;       spf=pass
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

Add helper API pci_epc_of_parse_header() to populate header with
values from device tree. These values will be written to the
configuration space header in the endpoint controller.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 24 ++++++++++++++++++++++++
 include/linux/pci-epc.h             |  2 ++
 2 files changed, 26 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index df8789fee01e..31a82af397a3 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -31,6 +31,30 @@ static int devm_pci_epc_match(struct device *dev, void *res, void *match_data)
 	return *epc == match_data;
 }
 
+/**
+ * pci_epc_of_parse_header() - parse the device tree to get PCI config space
+ *                             header
+ * @node: The device tree node (of endpoint function) which has the PCI config
+ *        space header values
+ * @header: standard configuration space header fields that has to be populated
+ *
+ * Invoke to populate *header* with the PCI configuration space values populated
+ * in device tree.
+ */
+void pci_epc_of_parse_header(struct device_node *node,
+			     struct pci_epf_header *header)
+{
+	of_property_read_u16(node, "epf,vendor-id", &header->vendorid);
+	of_property_read_u16(node, "epf,device-id", &header->deviceid);
+	of_property_read_u8(node, "epf,baseclass-code",
+			    &header->baseclass_code);
+	of_property_read_u8(node, "epf,subclass-code", &header->subclass_code);
+	of_property_read_u16(node, "epf,subsys-vendor-id",
+			     &header->subsys_vendor_id);
+	of_property_read_u16(node, "epf,subsys-id", &header->subsys_id);
+}
+EXPORT_SYMBOL_GPL(pci_epc_of_parse_header);
+
 /**
  * pci_epc_put() - release the PCI endpoint controller
  * @epc: epc returned by pci_epc_get()
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 463586889453..490a9077df52 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -199,6 +199,8 @@ int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no,
 		      enum pci_epc_irq_type type, u16 interrupt_num);
 int pci_epc_start(struct pci_epc *epc);
 void pci_epc_stop(struct pci_epc *epc);
+void pci_epc_of_parse_header(struct device_node *node,
+			     struct pci_epf_header *header);
 const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 						    u8 func_no);
 enum pci_barno
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-12-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBN526X2QKGQERKUHYPQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEA81D33E2
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:12 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id q18sf1704899ota.7
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468471; cv=pass;
        d=google.com; s=arc-20160816;
        b=XTT4C5hY3DTC1mjF8kLnxOlooFdSQPQooU6R8e2putTwOXEpOtfpgTYW5ubLur2tWr
         GKFEqBcJpJ5Nho+QgM9nG/s7L152xFP4AafYi5/pK59/z8LyFdvOsYMNigK5sIrLJ/Iq
         U+vVSpw0bTOglE4CNn+srp3np5I4bp0W7WWsW6IXvBp4P1CE3U8rbuGIktRq5dlKzY+g
         tRlw7kEktQ26W48TLc8gK4MsJwtcZTzrr6hmls3YPgu4G+53Wz9Jmm81zBG5b0om1ESx
         0ckhRUH62a+gNC5mu3F7A4qiFiSsqZKv6uOUth6oCRmDxONtFj2aAjA2SI8VJa/7DhO8
         y6nw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=FRWwF4yrGFloxBdsWVVRKG0VrACTAFxYVWHZrqlsmmc=;
        b=jlmPXVVOCz4zsKOL7+KDbDaONLZX6lE/E3LD7JzsrDYohllCNDuAVLU6eVH/Fsmi0P
         xmJkFRQO3A4OMcc/NsOANyUGLru27DcgFPWx60WUvzXkJXzigpxM1BfV2Q/P9CH3lmw2
         AvxFLZifOtU5b1yDskT09tI2+5KDN2jf77CdAZbMtzcVHTrr7EEzwuAU8bMF9KbfuaS5
         PyDq6cGyX7cSpOwhzCZEqUzPn/rcK63YpvoPOwWaYVSEVIp2MyD0XhDyzPf0KCCuQxFL
         /RchwQ3uLYveSHbzo7WDsiGEpThx1vS3v7v/oNxnA+//81a23PfXVmTYDiWzLcZqUqtM
         W6rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=xcutUtJm;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FRWwF4yrGFloxBdsWVVRKG0VrACTAFxYVWHZrqlsmmc=;
        b=KQ9+FawAgthgqgEfoaPIh06xmB4s9ro5YOa32ZFXFfPb73ZRtMqD7R1xwO22ydv24Y
         4HTw+vPipuwSb6hKgRjKv6MuLUpZzaZMyCVAKjzyvP4Cu2797MdK+sSOYhxvx5TUqHnI
         nNccFpGZv4bNh0tE1Z2vLI4oPy98tDxyKhTGDW5ZeKE3eYYIoLkKgY7L2/mjC+q0qiwP
         3AbI6E8w6qZnHeFz6xisQNZb91SiKbJQCdePCvwK+R6qbYVNKeEcTqohz3DrzEkpHs5e
         kEE7PEIN2+onWYxO9/WARNJSIXYuMSgEPV3p4sxc1hO/uLJUHUaMPAeeWjO/9qU3bAyA
         hanA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FRWwF4yrGFloxBdsWVVRKG0VrACTAFxYVWHZrqlsmmc=;
        b=VqsC29XXKrxlDKhqLDfo2F/IgKOlYWojvPejbJ4llQHLwHdNk2HuCkwX27T7uqar7/
         CnWrvE+eAikv6OBaxY7FBQ5suCYsS5zqRu8q5NfPNnS+feah+4TjpGxT59Uug9DLMclE
         cLH4XS2TWcPWULX/+536Y43a0um38p1deTHgyg/Yv66S3cHegGLaiKk5gXSdZSN0q1UV
         vfNU+qlwINGJpeo5212lTRi/tO6TG+AoceejF51cCmhwrH5mNWpSxeJNPMYiEVkHcOmc
         lhfhAYVd+kP0skZneHlOpCzzjEk/Ili5BVVjcVkTZtaEUc7et7o5Ui85xqb4xTpEv/u0
         nJGg==
X-Gm-Message-State: AGi0PuaLanMG3qGUdSVePUYs8bq0JxS8kCzqXvGtHaD7BucefhcFnzjG
	AJSo9a8fPb8eIyXX1dyQgNc=
X-Google-Smtp-Source: APiQypLaH0gKQXyIAxFzPnP2+3Ap1gAO2rtjSzMxyPsfq/ZcLgczdieAeh4VqwoAmwOeWujbm2+GMA==
X-Received: by 2002:aca:d410:: with SMTP id l16mr29326377oig.50.1589468471472;
        Thu, 14 May 2020 08:01:11 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:3147:: with SMTP id c7ls614235ots.7.gmail; Thu, 14
 May 2020 08:01:10 -0700 (PDT)
X-Received: by 2002:a05:6830:22f8:: with SMTP id t24mr4122847otc.127.1589468470796;
        Thu, 14 May 2020 08:01:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468470; cv=none;
        d=google.com; s=arc-20160816;
        b=wkkKyy9HFIz+XDYT9SOhVEOwiCw0cNmLugJfAINlxYh/clgDaMpW/jcqiBzV4Osen8
         F+USmREmrTtgoBHVVBWkyxakHkoO7D+23z1frDSSi8QDP8prNAMK8LMFj6CrjAF7No03
         L15V8+u85pNeBjyOrDy7FrEuNbV8s4kWPmHGHNotMUQzQ3zJHtchzPAT/UzDQpAD1qxg
         AzV4YxXEkMWOu4xni0EeMjXjsF/6loyl5rWWVQscUAPR7/t2FbZzxc6VJqOzV+VVK44t
         ANZUywrczQGghvdaIBRiHy4HvO6XCaXrNvTEBKFA9S4hLWIr/ZaXyypdpyPzLs52GhGY
         shhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=Rvt2032xBUVPb5hCaXR0nVbRlKB5NYJvIqKXfMFJ48k=;
        b=gupJR0uBF1XhNkaYyLUOOpc2rZ6lJcO4E7E+f4LyaQa8sjkUdILkXm9WGEbGSJvJkh
         nJSlWE6WP+uec07HOVLzO7QlOKdsQ0RBU2PKBP+I+tbAY1Q7IClVBrhm3xPbuL20a/wp
         1EutpJVu1rcJHbqD7tQIPEkTCFH0tzZ2BRyh/i/zoTHe0C81Mo9+1sHtnLG3m6IHyckQ
         0GDfZR5DS34aliWo6F2yXuHERNoVGtTgM/EduQXi/Si8Ekpn1rEN2IRd9vA+3Zqhg1JM
         87YTVfp0k1PWf4rYiLEhgJAahrP0cPLCxsYHUe7FYtIJxOa5sroFexVIQhLf0+qbnXfZ
         uTjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=xcutUtJm;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id u15si175041otq.2.2020.05.14.08.01.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0iav102750;
	Thu, 14 May 2020 10:00:44 -0500
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF0iUj059557
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:00:44 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:44 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:44 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAu019279;
	Thu, 14 May 2020 10:00:40 -0500
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
Subject: [PATCH 12/19] PCI: endpoint: Add support to associate secondary EPC with EPF
Date: Thu, 14 May 2020 20:29:20 +0530
Message-ID: <20200514145927.17555-13-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=xcutUtJm;       spf=pass
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

In the case of standard endpoint functions, only one endpoint
controller (EPC) will be associated with an endpoint function
(EPF). However for providing NTB (non transparent bridge)
functionality, two EPCs should be associated with a single EPF.
Add support to associate secondary EPC with EPF. This is in
preparation for adding NTB endpoint function driver.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/functions/pci-epf-test.c | 11 ++--
 drivers/pci/endpoint/pci-ep-cfs.c             |  6 +-
 drivers/pci/endpoint/pci-epc-core.c           | 50 ++++++++++++----
 drivers/pci/endpoint/pci-epf-core.c           | 57 +++++++++++++------
 include/linux/pci-epc.h                       | 25 +++++++-
 include/linux/pci-epf.h                       | 17 +++++-
 6 files changed, 128 insertions(+), 38 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index ba43e1e05958..b79d95f666ff 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -616,7 +616,8 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
 
 		if (epf_test->reg[bar]) {
 			pci_epc_clear_bar(epc, epf->func_no, epf_bar);
-			pci_epf_free_space(epf, epf_test->reg[bar], bar);
+			pci_epf_free_space(epf, epf_test->reg[bar], bar,
+					   PRIMARY_INTERFACE);
 		}
 	}
 }
@@ -648,7 +649,8 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
 
 		ret = pci_epc_set_bar(epc, epf->func_no, epf_bar);
 		if (ret) {
-			pci_epf_free_space(epf, epf_test->reg[bar], bar);
+			pci_epf_free_space(epf, epf_test->reg[bar], bar,
+					   PRIMARY_INTERFACE);
 			dev_err(dev, "Failed to set BAR%d\n", bar);
 			if (bar == test_reg_bar)
 				return ret;
@@ -768,7 +770,7 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 	}
 
 	base = pci_epf_alloc_space(epf, test_reg_size, test_reg_bar,
-				   epc_features->align);
+				   epc_features->align, PRIMARY_INTERFACE);
 	if (!base) {
 		dev_err(dev, "Failed to allocated register space\n");
 		return -ENOMEM;
@@ -786,7 +788,8 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 			continue;
 
 		base = pci_epf_alloc_space(epf, bar_size[bar], bar,
-					   epc_features->align);
+					   epc_features->align,
+					   PRIMARY_INTERFACE);
 		if (!base)
 			dev_err(dev, "Failed to allocate space for BAR%d\n",
 				bar);
diff --git a/drivers/pci/endpoint/pci-ep-cfs.c b/drivers/pci/endpoint/pci-ep-cfs.c
index 55edce50be96..0cd02caedd1c 100644
--- a/drivers/pci/endpoint/pci-ep-cfs.c
+++ b/drivers/pci/endpoint/pci-ep-cfs.c
@@ -94,13 +94,13 @@ static int pci_epc_epf_link(struct config_item *epc_item,
 	struct pci_epc *epc = epc_group->epc;
 	struct pci_epf *epf = epf_group->epf;
 
-	ret = pci_epc_add_epf(epc, epf);
+	ret = pci_epc_add_epf(epc, epf, PRIMARY_INTERFACE);
 	if (ret)
 		return ret;
 
 	ret = pci_epf_bind(epf);
 	if (ret) {
-		pci_epc_remove_epf(epc, epf);
+		pci_epc_remove_epf(epc, epf, PRIMARY_INTERFACE);
 		return ret;
 	}
 
@@ -120,7 +120,7 @@ static void pci_epc_epf_unlink(struct config_item *epc_item,
 	epc = epc_group->epc;
 	epf = epf_group->epf;
 	pci_epf_unbind(epf);
-	pci_epc_remove_epf(epc, epf);
+	pci_epc_remove_epf(epc, epf, PRIMARY_INTERFACE);
 }
 
 static struct configfs_item_operations pci_epc_item_ops = {
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 31a82af397a3..bd8f372c506f 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -577,22 +577,32 @@ EXPORT_SYMBOL_GPL(pci_epc_write_header);
  * pci_epc_add_epf() - bind PCI endpoint function to an endpoint controller
  * @epc: the EPC device to which the endpoint function should be added
  * @epf: the endpoint function to be added
+ * @type: Identifies if the EPC is connected to the primary or secondary
+ *        interface of EPF
  *
  * A PCI endpoint device can have one or more functions. In the case of PCIe,
  * the specification allows up to 8 PCIe endpoint functions. Invoke
  * pci_epc_add_epf() to add a PCI endpoint function to an endpoint controller.
  */
-int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf)
+int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf,
+		    enum pci_epc_interface_type type)
 {
+	struct list_head *list;
 	u32 func_no;
 	int ret = 0;
 
-	if (epf->epc)
-		return -EBUSY;
-
 	if (IS_ERR(epc))
 		return -EINVAL;
 
+	if (epf->func_no > epc->max_functions - 1)
+		return -EINVAL;
+
+	if (type == PRIMARY_INTERFACE && epf->epc)
+		return -EBUSY;
+
+	if (type == SECONDARY_INTERFACE && epf->sec_epc)
+		return -EBUSY;
+
 	mutex_lock(&epc->lock);
 	func_no = find_first_zero_bit(&epc->function_num_map,
 				      BITS_PER_LONG);
@@ -608,11 +618,17 @@ int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf)
 	}
 
 	set_bit(func_no, &epc->function_num_map);
-	epf->func_no = func_no;
-	epf->epc = epc;
-
-	list_add_tail(&epf->list, &epc->pci_epf);
+	if (type == PRIMARY_INTERFACE) {
+		epf->func_no = func_no;
+		epf->epc = epc;
+		list = &epf->list;
+	} else {
+		epf->sec_epc_func_no = func_no;
+		epf->sec_epc = epc;
+		list = &epf->sec_epc_list;
+	}
 
+	list_add_tail(list, &epc->pci_epf);
 ret:
 	mutex_unlock(&epc->lock);
 
@@ -627,14 +643,26 @@ EXPORT_SYMBOL_GPL(pci_epc_add_epf);
  *
  * Invoke to remove PCI endpoint function from the endpoint controller.
  */
-void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf)
+void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf,
+			enum pci_epc_interface_type type)
 {
+	struct list_head *list;
+	u32 func_no = 0;
+
 	if (!epc || IS_ERR(epc) || !epf)
 		return;
 
+	if (type == PRIMARY_INTERFACE) {
+		func_no = epf->func_no;
+		list = &epf->list;
+	} else {
+		func_no = epf->sec_epc_func_no;
+		list = &epf->sec_epc_list;
+	}
+
 	mutex_lock(&epc->lock);
-	clear_bit(epf->func_no, &epc->function_num_map);
-	list_del(&epf->list);
+	clear_bit(func_no, &epc->function_num_map);
+	list_del(list);
 	epf->epc = NULL;
 	mutex_unlock(&epc->lock);
 }
diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index f463eedcc3ad..97ddb86faac5 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -73,24 +73,37 @@ EXPORT_SYMBOL_GPL(pci_epf_bind);
  * pci_epf_free_space() - free the allocated PCI EPF register space
  * @addr: the virtual address of the PCI EPF register space
  * @bar: the BAR number corresponding to the register space
+ * @type: Identifies if the allocated space is for primary EPC or secondary EPC
  *
  * Invoke to free the allocated PCI EPF register space.
  */
-void pci_epf_free_space(struct pci_epf *epf, void *addr, enum pci_barno bar)
+void pci_epf_free_space(struct pci_epf *epf, void *addr, enum pci_barno bar,
+			enum pci_epc_interface_type type)
 {
 	struct device *dev = epf->epc->dev.parent;
+	struct pci_epf_bar *epf_bar;
+	struct pci_epc *epc;
 
 	if (!addr)
 		return;
 
-	dma_free_coherent(dev, epf->bar[bar].size, addr,
-			  epf->bar[bar].phys_addr);
+	if (type == PRIMARY_INTERFACE) {
+		epc = epf->epc;
+		epf_bar = epf->bar;
+	} else {
+		epc = epf->sec_epc;
+		epf_bar = epf->sec_epc_bar;
+	}
+
+	dev = epc->dev.parent;
+	dma_free_coherent(dev, epf_bar[bar].size, addr,
+			  epf_bar[bar].phys_addr);
 
-	epf->bar[bar].phys_addr = 0;
-	epf->bar[bar].addr = NULL;
-	epf->bar[bar].size = 0;
-	epf->bar[bar].barno = 0;
-	epf->bar[bar].flags = 0;
+	epf_bar[bar].phys_addr = 0;
+	epf_bar[bar].addr = NULL;
+	epf_bar[bar].size = 0;
+	epf_bar[bar].barno = 0;
+	epf_bar[bar].flags = 0;
 }
 EXPORT_SYMBOL_GPL(pci_epf_free_space);
 
@@ -99,15 +112,18 @@ EXPORT_SYMBOL_GPL(pci_epf_free_space);
  * @size: the size of the memory that has to be allocated
  * @bar: the BAR number corresponding to the allocated register space
  * @align: alignment size for the allocation region
+ * @type: Identifies if the allocation is for primary EPC or secondary EPC
  *
  * Invoke to allocate memory for the PCI EPF register space.
  */
 void *pci_epf_alloc_space(struct pci_epf *epf, size_t size, enum pci_barno bar,
-			  size_t align)
+			  size_t align, enum pci_epc_interface_type type)
 {
-	void *space;
-	struct device *dev = epf->epc->dev.parent;
+	struct pci_epf_bar *epf_bar;
 	dma_addr_t phys_addr;
+	struct pci_epc *epc;
+	struct device *dev;
+	void *space;
 
 	if (size < 128)
 		size = 128;
@@ -117,17 +133,26 @@ void *pci_epf_alloc_space(struct pci_epf *epf, size_t size, enum pci_barno bar,
 	else
 		size = roundup_pow_of_two(size);
 
+	if (type == PRIMARY_INTERFACE) {
+		epc = epf->epc;
+		epf_bar = epf->bar;
+	} else {
+		epc = epf->sec_epc;
+		epf_bar = epf->sec_epc_bar;
+	}
+
+	dev = epc->dev.parent;
 	space = dma_alloc_coherent(dev, size, &phys_addr, GFP_KERNEL);
 	if (!space) {
 		dev_err(dev, "failed to allocate mem space\n");
 		return NULL;
 	}
 
-	epf->bar[bar].phys_addr = phys_addr;
-	epf->bar[bar].addr = space;
-	epf->bar[bar].size = size;
-	epf->bar[bar].barno = bar;
-	epf->bar[bar].flags |= upper_32_bits(size) ?
+	epf_bar[bar].phys_addr = phys_addr;
+	epf_bar[bar].addr = space;
+	epf_bar[bar].size = size;
+	epf_bar[bar].barno = bar;
+	epf_bar[bar].flags |= upper_32_bits(size) ?
 				PCI_BASE_ADDRESS_MEM_TYPE_64 :
 				PCI_BASE_ADDRESS_MEM_TYPE_32;
 
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 490a9077df52..e7614dda4e0e 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -13,6 +13,12 @@
 
 struct pci_epc;
 
+enum pci_epc_interface_type {
+	UNKNOWN_INTERFACE = -1,
+	PRIMARY_INTERFACE,
+	SECONDARY_INTERFACE,
+};
+
 enum pci_epc_irq_type {
 	PCI_EPC_IRQ_UNKNOWN,
 	PCI_EPC_IRQ_LEGACY,
@@ -20,6 +26,19 @@ enum pci_epc_irq_type {
 	PCI_EPC_IRQ_MSIX,
 };
 
+static inline const char *
+pci_epc_interface_string(enum pci_epc_interface_type type)
+{
+	switch (type) {
+	case PRIMARY_INTERFACE:
+		return "primary";
+	case SECONDARY_INTERFACE:
+		return "secondary";
+	default:
+		return "UNKNOWN interface";
+	}
+}
+
 /**
  * struct pci_epc_ops - set of function pointers for performing EPC operations
  * @write_header: ops to populate configuration space header
@@ -175,10 +194,12 @@ __pci_epc_create(struct device *dev, const struct pci_epc_ops *ops,
 		 struct module *owner);
 void devm_pci_epc_destroy(struct device *dev, struct pci_epc *epc);
 void pci_epc_destroy(struct pci_epc *epc);
-int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf);
+int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf,
+		    enum pci_epc_interface_type type);
 void pci_epc_linkup(struct pci_epc *epc);
 void pci_epc_init_notify(struct pci_epc *epc);
-void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf);
+void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf,
+			enum pci_epc_interface_type type);
 int pci_epc_write_header(struct pci_epc *epc, u8 func_no,
 			 struct pci_epf_header *hdr);
 int pci_epc_set_bar(struct pci_epc *epc, u8 func_no,
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 9bd89f1be1c3..581fe121d670 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -15,6 +15,7 @@
 #include <linux/pci.h>
 
 struct pci_epf;
+enum pci_epc_interface_type;
 
 enum pci_notify_event {
 	CORE_INIT,
@@ -121,6 +122,11 @@ struct pci_epf_bar {
  * @list: to add pci_epf as a list of PCI endpoint functions to pci_epc
  * @nb: notifier block to notify EPF of any EPC events (like linkup)
  * @lock: mutex to protect pci_epf_ops
+ * @sec_epc: the secondary EPC device to which this EPF device is bound
+ * @sec_epc_list: to add pci_epf as list of PCI endpoint functions to secondary
+ *   EPC device
+ * @sec_epc_bar: represents the BAR of EPF device associated with secondary EPC
+ * @sec_epc_func_no: unique (physical) function number within the secondary EPC
  */
 struct pci_epf {
 	struct device		dev;
@@ -138,6 +144,12 @@ struct pci_epf {
 	struct notifier_block   nb;
 	/* mutex to protect against concurrent access of pci_epf_ops */
 	struct mutex		lock;
+
+	/* Below members are to attach secondary EPC to an endpoint function */
+	struct pci_epc		*sec_epc;
+	struct list_head	sec_epc_list;
+	struct pci_epf_bar	sec_epc_bar[6];
+	u8			sec_epc_func_no;
 };
 
 /**
@@ -177,8 +189,9 @@ int __pci_epf_register_driver(struct pci_epf_driver *driver,
 			      struct module *owner);
 void pci_epf_unregister_driver(struct pci_epf_driver *driver);
 void *pci_epf_alloc_space(struct pci_epf *epf, size_t size, enum pci_barno bar,
-			  size_t align);
-void pci_epf_free_space(struct pci_epf *epf, void *addr, enum pci_barno bar);
+			  size_t align, enum pci_epc_interface_type type);
+void pci_epf_free_space(struct pci_epf *epf, void *addr, enum pci_barno bar,
+			enum pci_epc_interface_type type);
 int pci_epf_bind(struct pci_epf *epf);
 void pci_epf_unbind(struct pci_epf *epf);
 #endif /* __LINUX_PCI_EPF_H */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-13-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBEODWLWAKGQETBU2FOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 55829BF173
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:30 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id m18sf1420870ybf.20
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497489; cv=pass;
        d=google.com; s=arc-20160816;
        b=LFawLRK2YE4q9Az+mA0DhXgO67kB+OyVdVZruHXAHX9aWcco0Kg88QNXNXmsXcM3Tu
         KyF57U/aUqoBSzaMj2KkmXJrmdF71CQzCRsTShiwooDRtQLsik0LLSaFUiYcCmNwRO+u
         c1pijiAK4ASk0r2x3alsJ0Yel8v29ReXt2dztDTlr9vglx5DqCL2Z6VjyYU0Rff5wq/F
         BVLXREnIIxk9uVNi0Yh+Uqa91c4SMSU3rgyn+QUSZyPsh9AYTBkbX8b5+mY1IO5X6oLK
         cKP/ymiS5vKN6jMjj2vvbxhPo6si6jDK+5MCnCevtp74UCO27KSU7EGtriFCzP7bAhTH
         D4Jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=1RPPzB1F+19bWSvuGgcxEkMqGFQHtjznler6H+ub0Qs=;
        b=xqrUYDB0F1dpvD/yC0LhtoIl+PhK+rsUuGhzWb7FQFQkNd4zlsEEVuQtKbrF0FKW3B
         FG6Z2pxl8XgSyxdWnv9y6haRrbLWVkdh+eBAkvJLSxpcXsCZgyZ8qpVemU5ocmdZqt/L
         us1/YaGZYwxwqIQy3Jn8ztrpBr6QHpcrlTif5KdxCEB6kaEQNYNe9bNYPDqprQLTTzp0
         wBMyG0+uLUWBgRTv3jkh01bPYC0miUCSZ68zM/1Il8SDiDflexNLruRyAI+1ecdCXpvN
         atcvo2Jc6AeIpeu5oEnAHYKbuyFvjyQ+MrzxIyq3cMuPVpey6DGZYdpN9aEiNi0ZJjTH
         kQrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=u+cVJyl7;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1RPPzB1F+19bWSvuGgcxEkMqGFQHtjznler6H+ub0Qs=;
        b=dEk9SKVr7dSDKjqkOGe+FxJ0CuRZK9umTC7lU3wSMe5qwlSLs+dOeEsntEntou138v
         t+M3njbMb0dcmkVyade8d2oFlLEAhtOIQbkJnqtomS+Ibsn0xvZmK5ZjnTgst2bMSQMf
         tuRhWhjdEZjvhFkWBJOtL6hfJbNTynYcL9Jh7RrXMMx4Gsi4XVH4aVhJIPTzpHdycX8a
         zV1Xpct1Jqwie+R9OpxZpodqoG1EoPSpUMOs4+2iVhaeVFuX6mjkQZFvRtQvBUFAB96s
         mzaemyFg3zdU5MoEw4X+fH5qMljbyWR1HcHRGLEJzqj6czElQXR2lfSnz/8jkSLB8rPD
         NwPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1RPPzB1F+19bWSvuGgcxEkMqGFQHtjznler6H+ub0Qs=;
        b=SOKhgcWt5doPqOucSxiXseEfRTP/Fd0SXoGQWY98l0/ONmY5Wui5T+y3UX+6b/U6i3
         IFUkpxiYlQ37U2LKd8B3pAMgS348ZofUC1dF1quHy/2+kJL/IYBbNWVtGKsG03ZrmLEs
         PAlREKETZvT5/0QREucWiU2maODkVjcWGSDmLJShToWp5hXRfWr8hjuzjpx/N1AXhLwx
         fCYClKckuoukWsRF0EiDUXNbNf15kXrO2A2vtx6I0vbAwmXWyImedFn5VFShPGqKpA2p
         pE715/gu7ud/Eo4lWoLxJPYQ3fWH//XkZnpelsi+jg2myD+dEPSEiJYG8s5SY4lmR/3v
         3VBw==
X-Gm-Message-State: APjAAAUYdQVFJ5lBiJ0YLRDawwP7sH3B4C9bdP5y1+jJNIVRLTfj5q/r
	aYqlWAWHvS1C4KmQYq2epwM=
X-Google-Smtp-Source: APXvYqwgLdB1RFowO22RD28vcXlRXCsGc1ogKtaD+m9RyPGbO4IxQ4Ta1xHrZozsALop93qKgOigUA==
X-Received: by 2002:a25:b94b:: with SMTP id s11mr1687165ybm.37.1569497489324;
        Thu, 26 Sep 2019 04:31:29 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:5987:: with SMTP id n129ls297462ywb.0.gmail; Thu, 26 Sep
 2019 04:31:29 -0700 (PDT)
X-Received: by 2002:a81:6d96:: with SMTP id i144mr482023ywc.97.1569497489056;
        Thu, 26 Sep 2019 04:31:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497489; cv=none;
        d=google.com; s=arc-20160816;
        b=ivHqJEX0YfVVR6BMHFvhKQTJ6LgpEFGi7Jtz3cGcQCziaupzfmrWwV7u5Sp7fXwGVT
         KHappHlxK6+01NpXmCRTu1kqLs/fEF/+EOMqXM0+7a0vj8LblNbP5zT094tNsr96YncA
         kX/82E43wOyMM2WYB/Bqw6wGePi65onrBruFHsLucU/nvk1MlZgVVGshoYJJ4JfPP96z
         7/zuipfFl6RuxHdCAXvc3wsSneynCKQOV6x6i0WCSVr+KcEILOxVlsyUelHJgCpPGAQD
         +x//MKgg7v1hWrh9ouBbwXaAkA32Nc+2wwYHZYnsKUwytXGck+FFi+BkUMtx7qYQlqua
         Jv0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3sdI1gAKkc5Zac7j8y4aRg9vrN5qKf7YsqkqweAnmQM=;
        b=rbcYGGJzT4Q7F5X5nkjF5PVbRhysNcdgoidfdaeEpmvn8HSw8SYB608RiCUMCJMDrJ
         g2kALYV86wzBF/2Hb5Kf5ZPgbH1y8Wvtu3MwTEP1austVHfSs0sPa5SxnapYsMg0fRDl
         EPu/HJwPRWrB3Pd+DmsjnEQsXcRmYjaeW4gzF6SD1qqe+Vvv1dtFdZeMsYbsKxdsdNqx
         u/P1kdBiTU6uUpyL7JNxtVJ7unWMNZJ+DNozfwJpJFEK9Cf/296wcUtJwn4ofP+Jqpnm
         6GvP1MYzL6z1qSKtzHs2RdcTWessswD4MjDjCl8euq2EMduds8+VxZxSJCTugxpanAuX
         3s9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=u+cVJyl7;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id l10si9139ybq.0.2019.09.26.04.31.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVOkN042534;
	Thu, 26 Sep 2019 06:31:24 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBVOKm031869
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:24 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:24 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:24 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTk5069017;
	Thu, 26 Sep 2019 06:31:20 -0500
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
Subject: [RFC PATCH 12/21] PCI: endpoint: Add support to associate secondary EPC with EPF
Date: Thu, 26 Sep 2019 16:59:24 +0530
Message-ID: <20190926112933.8922-13-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=u+cVJyl7;       spf=pass
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

In the case of standard endpoint functions, only one endpoint
controller (EPC) will be associated with an endpoint function
(EPF). However for providing NTB (non transparent bridge)
functionality, two EPCs should be associated with a single EPF.
Add support to associate secondary EPC with EPF. This is in
preparation for adding NTB endpoint function driver.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/functions/pci-epf-test.c | 12 +++--
 drivers/pci/endpoint/pci-ep-cfs.c             |  6 +--
 drivers/pci/endpoint/pci-epc-core.c           | 47 ++++++++++++----
 drivers/pci/endpoint/pci-epf-core.c           | 53 ++++++++++++++-----
 include/linux/pci-epc.h                       | 24 ++++++++-
 include/linux/pci-epf.h                       | 27 +++++++++-
 6 files changed, 135 insertions(+), 34 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index 608545aaf7c8..c7003c2dbbb2 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -484,7 +484,8 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
 		epf_bar = &epf->bar[bar];
 
 		if (epf_test->reg[bar]) {
-			pci_epf_free_space(epf, epf_test->reg[bar], bar);
+			pci_epf_free_space(epf, epf_test->reg[bar], bar,
+					   PRIMARY_INTERFACE);
 			pci_epc_clear_bar(epc, epf->func_no, epf->vfunc_no,
 					  epf_bar);
 		}
@@ -514,7 +515,8 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
 		ret = pci_epc_set_bar(epc, epf->func_no, epf->vfunc_no,
 				      epf_bar);
 		if (ret) {
-			pci_epf_free_space(epf, epf_test->reg[bar], bar);
+			pci_epf_free_space(epf, epf_test->reg[bar], bar,
+					   PRIMARY_INTERFACE);
 			dev_err(dev, "Failed to set BAR%d\n", bar);
 			if (bar == test_reg_bar)
 				return ret;
@@ -544,7 +546,8 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 	epc_features = epf_test->epc_features;
 
 	base = pci_epf_alloc_space(epf, sizeof(struct pci_epf_test_reg),
-				   test_reg_bar, epc_features->align);
+				   test_reg_bar, epc_features->align,
+				   PRIMARY_INTERFACE);
 	if (!base) {
 		dev_err(dev, "Failed to allocated register space\n");
 		return -ENOMEM;
@@ -560,7 +563,8 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 			continue;
 
 		base = pci_epf_alloc_space(epf, bar_size[bar], bar,
-					   epc_features->align);
+					   epc_features->align,
+					   PRIMARY_INTERFACE);
 		if (!base)
 			dev_err(dev, "Failed to allocate space for BAR%d\n",
 				bar);
diff --git a/drivers/pci/endpoint/pci-ep-cfs.c b/drivers/pci/endpoint/pci-ep-cfs.c
index c18ef626ada5..f274a5b6ee10 100644
--- a/drivers/pci/endpoint/pci-ep-cfs.c
+++ b/drivers/pci/endpoint/pci-ep-cfs.c
@@ -93,13 +93,13 @@ static int pci_epc_epf_link(struct config_item *epc_item,
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
 
@@ -119,7 +119,7 @@ static void pci_epc_epf_unlink(struct config_item *epc_item,
 	epc = epc_group->epc;
 	epf = epf_group->epf;
 	pci_epf_unbind(epf);
-	pci_epc_remove_epf(epc, epf);
+	pci_epc_remove_epf(epc, epf, PRIMARY_INTERFACE);
 }
 
 static struct configfs_item_operations pci_epc_item_ops = {
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 98acadbfc934..42085fcc746d 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -634,17 +634,21 @@ EXPORT_SYMBOL_GPL(pci_epc_write_header);
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
 	u32 func_no = 0;
 
-	if (epf->epc || epf->is_vf)
-		return -EBUSY;
+	if (epf->is_vf)
+		return -EINVAL;
 
 	if (IS_ERR(epc))
 		return -EINVAL;
@@ -652,6 +656,12 @@ int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf)
 	if (epf->func_no > epc->max_functions - 1)
 		return -EINVAL;
 
+	if (type == PRIMARY_INTERFACE && epf->epc)
+		return -EBUSY;
+
+	if (type == SECONDARY_INTERFACE && epf->sec_epc)
+		return -EBUSY;
+
 	mutex_lock(&epc->lock);
 	func_no = find_first_zero_bit(&epc->function_num_map,
 				      BITS_PER_LONG);
@@ -659,10 +669,17 @@ int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf)
 		return -EINVAL;
 
 	set_bit(func_no, &epc->function_num_map);
-	epf->func_no = func_no;
-	epf->epc = epc;
+	if (type == PRIMARY_INTERFACE) {
+		epf->func_no = func_no;
+		epf->epc = epc;
+		list = &epf->list;
+	} else {
+		epf->sec_epc_func_no = func_no;
+		epf->sec_epc = epc;
+		list = &epf->sec_epc_list;
+	}
 
-	list_add_tail(&epf->list, &epc->pci_epf);
+	list_add_tail(list, &epc->pci_epf);
 	mutex_unlock(&epc->lock);
 
 	return 0;
@@ -676,14 +693,26 @@ EXPORT_SYMBOL_GPL(pci_epc_add_epf);
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
 	if (!epc || IS_ERR(epc))
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
 	mutex_unlock(&epc->lock);
 }
 EXPORT_SYMBOL_GPL(pci_epc_remove_epf);
diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index 67015c66d09f..388966faf17a 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -320,23 +320,36 @@ EXPORT_SYMBOL_GPL(pci_epf_remove_vepf);
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
-	epf->bar[bar].size = 0;
-	epf->bar[bar].barno = 0;
-	epf->bar[bar].flags = 0;
+	epf_bar[bar].phys_addr = 0;
+	epf_bar[bar].size = 0;
+	epf_bar[bar].barno = 0;
+	epf_bar[bar].flags = 0;
 }
 EXPORT_SYMBOL_GPL(pci_epf_free_space);
 
@@ -345,15 +358,18 @@ EXPORT_SYMBOL_GPL(pci_epf_free_space);
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
@@ -363,16 +379,25 @@ void *pci_epf_alloc_space(struct pci_epf *epf, size_t size, enum pci_barno bar,
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
-	epf->bar[bar].size = size;
-	epf->bar[bar].barno = bar;
-	epf->bar[bar].flags |= upper_32_bits(size) ?
+	epf_bar[bar].phys_addr = phys_addr;
+	epf_bar[bar].size = size;
+	epf_bar[bar].barno = bar;
+	epf_bar[bar].flags |= upper_32_bits(size) ?
 				PCI_BASE_ADDRESS_MEM_TYPE_64 :
 				PCI_BASE_ADDRESS_MEM_TYPE_32;
 
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 18fff589a881..91d5cbaabc8f 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -13,6 +13,11 @@
 
 struct pci_epc;
 
+enum pci_epc_interface_type {
+	PRIMARY_INTERFACE,
+	SECONDARY_INTERFACE,
+};
+
 enum pci_epc_irq_type {
 	PCI_EPC_IRQ_UNKNOWN,
 	PCI_EPC_IRQ_LEGACY,
@@ -20,6 +25,19 @@ enum pci_epc_irq_type {
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
  * @epf_init: ops to perform EPC specific initialization
@@ -172,9 +190,11 @@ __pci_epc_create(struct device *dev, const struct pci_epc_ops *ops,
 		 struct module *owner);
 void devm_pci_epc_destroy(struct device *dev, struct pci_epc *epc);
 void pci_epc_destroy(struct pci_epc *epc);
-int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf);
+int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf,
+		    enum pci_epc_interface_type type);
 void pci_epc_linkup(struct pci_epc *epc);
-void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf);
+void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf,
+			enum pci_epc_interface_type type);
 int pci_epc_write_header(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 			 struct pci_epf_header *hdr);
 int pci_epc_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 7e997fb656fb..b5075119f3ad 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -15,6 +15,7 @@
 #include <linux/pci.h>
 
 struct pci_epf;
+enum pci_epc_interface_type;
 
 enum pci_barno {
 	BAR_0,
@@ -124,6 +125,18 @@ struct pci_epf_bar {
  * @is_vf: true - virtual function, false - physical function
  * @vfunction_num_map: bitmap to manage virtual function number
  * @pci_vepf: list of virtual endpoint function associated with this function
+ * @sec_epc: the secondary EPC device to which this EPF device is bound
+ * @sec_epc_list: to add pci_epf as list of PCI endpoint functions to secondary
+ *   EPC device
+ * @sec_epc_bar: represents the BAR of EPF device associated with secondary EPC
+ * @sec_epc_func_no: unique (physical) function number within the secondary EPC
+ * @sec_epc_vfunc_no: unique virtual function number within a physical function
+ *   associated with secondary EPC
+ * @sec_epc_vfunction_num_map: bitmap to manage virtual function number
+ *   associated with the physical function of the
+ *   secondary EPC
+ * @sec_epc_pci_vepf: list of virtual endpoint function associated with the
+ *   physical function of the secondary EPC
  */
 struct pci_epf {
 	struct device		dev;
@@ -150,6 +163,15 @@ struct pci_epf {
 	unsigned int		is_vf;
 	unsigned long		vfunction_num_map;
 	struct list_head	pci_vepf;
+
+	/* Below members are to attach secondary EPC to an endpoint function */
+	struct pci_epc		*sec_epc;
+	struct list_head	sec_epc_list;
+	struct pci_epf_bar	sec_epc_bar[6];
+	u8			sec_epc_func_no;
+	u8			sec_epc_vfunc_no;
+	unsigned long		sec_epc_vfunction_num_map;
+	struct list_head	sec_epc_pci_vepf;
 };
 
 #define to_pci_epf(epf_dev) container_of((epf_dev), struct pci_epf, dev)
@@ -178,8 +200,9 @@ int __pci_epf_register_driver(struct pci_epf_driver *driver,
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
 int pci_epf_init_dma_chan(struct pci_epf *epf);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-13-kishon%40ti.com.

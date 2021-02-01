Return-Path: <linux-ntb+bncBCOOP4VF5IDRBBF34GAAMGQEXSYDMQQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id B4AB730B0FE
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:59:01 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id w4sf9131857ybc.7
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:59:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209540; cv=pass;
        d=google.com; s=arc-20160816;
        b=CIRo9kCB90/Rhjx9rg1iJh2WqwgBPNTsG9gT0539sXX8WT3kWZMJ7waxX1K+UAllUr
         7KgYr3o1Ap1z7C7AZkp6W0y6EcsKOZUyCGEq60ncuxeIM8adVW70Qns5U6Q+1v5ZQiAJ
         T3FikfZXJSKMVa/W2xRI2CzMeLOHnWtsyEXVep9nl/WG8fiUmjYgoRQxjRurykReGjXr
         9jNUEL0xxR1dko9Bu9wtPRm6K4AWdJ2zC4/E0A0/OXekp/kyHJ0WyJ+QElArFF4Tvvrx
         N6X6E/fHBFxB9DblfjWWcdi696rb6VdPweT7xzE2+yerJuFiBj9hyJtZ/nBrIqnWSzQE
         sgng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ieK0zVfQsXblP62L0TjU43VRP+5G3vkDMOiXQaeKvGY=;
        b=xcMAgUnzfiyZYTsPKFyHRLZDn1EoDCH5aalIS6nHc1Gq7LexvDqZAu9Ts+kek3tBO5
         UQmflHkssDqCAILNiZRkxwJ+anyHf1Ro/MZQupFy6K6zqu9gKmzFxmsD55tp9AR0l2el
         sUoSp7W2tl4Qd6r4f4XWMW/44EQJTn/d0wBVmvXc948/frxbvusd7L3WmZI0b8VRT7Pf
         lLgU7OXvRAl11LVAnuMO74rRyTaTDM3GvVf6E9eLlUnAwjjfFtDJi6KXdmAd3gGcD1gS
         eyoLgFbhk0PlNTv6MWQ9o/wTlsCKStvVYU8f32u43BtXOiEFiKYIZt4Asao0eu0aLxa7
         cgRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=saLhtJul;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ieK0zVfQsXblP62L0TjU43VRP+5G3vkDMOiXQaeKvGY=;
        b=kZ2VHRaUM3DLdRPo+Uvb8R7Gvrm4sb8P8Wx5I/hReFg61BlWBDECfm7oAmNmswwsAV
         RD3cLY3PIPBsrvRDHxhjba5eoZAARJkljU1SKc9TFOq8pkywwuzcoMUaQwbJWvlPGh8N
         Y2qh2bc9Z9bf1A+vJSd4IYE+J6BB/AcQEWP8hVjFPuTylvSlqPPrIJED6V1rwX4Y7XN0
         MpLEgIBROKkPGmqinFrKC0MpFzOjeJiinOdcY00hBheiGB9VQzaMuy/DDSoM13qWD7Ee
         1zH7lNia4PjHVLXAlGjqkksyRDc3gF84yejkyJY6hCOtxoedDqCkYs9yFsKZefsJBRZV
         rdlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ieK0zVfQsXblP62L0TjU43VRP+5G3vkDMOiXQaeKvGY=;
        b=e3T7zlaLVUvYbqQqMIoY17UF2ac+M/tFF78f/aqyp4DE+qzSFcQZhreK0yvB4XHwRW
         M6wohGHVd9tP/Dx5IGvLrApoPehe/S0MoDRhzuOOcu+oh+2mU75yo81fslHNo8hu8fvx
         VM3h4wacp27UDdCeEkOYeDprygKRhZS3+pNyi7jsA7es5CUf5GN0IOIub4bSlVFkFKCD
         qolwJZRWBGngzpHELmPD364DOLkzHytnyGD4gLUsneuoei/M109CKqYrM1/tBMa7faDS
         zQEZdPDVCvDELqaFar54Js1eiLXz79AwjTDA2UDBn35VBO9ZZPc5OykxKXm/d/nR6yvF
         Oc+Q==
X-Gm-Message-State: AOAM5310th25kcP5Q8GxYDMt0YUbHQqfGEe3HmN29VqbaEJpyiltaNfL
	N8NK7fDsmH7h2MGE7cdzw/4=
X-Google-Smtp-Source: ABdhPJyUZK0MiiRR+mXj86ptCQ0ILL6b4x/i1asQdBTJrWJlGbjiFVhNtXCXr7TDlsFhvIoi+jygyA==
X-Received: by 2002:a25:bec2:: with SMTP id k2mr31380805ybm.42.1612209540837;
        Mon, 01 Feb 2021 11:59:00 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:26d2:: with SMTP id m201ls2149805ybm.10.gmail; Mon, 01
 Feb 2021 11:59:00 -0800 (PST)
X-Received: by 2002:a25:2556:: with SMTP id l83mr22107324ybl.237.1612209540381;
        Mon, 01 Feb 2021 11:59:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209540; cv=none;
        d=google.com; s=arc-20160816;
        b=JORjmaO7vRMc3PhpZZYOFJXfn7dhsGiiNyXJydjKTyirFh6FcTHX9Tt5OuqSb93/3V
         H29+aC5uPYTGi41I1e2snMd9p3RaKQqkL+YFKAVvihqaeVBnjdmfQzVAwtrPZWxxIOoK
         XhzicUmqSqIIyjX1PWk17x4fS26Cq8t2wn7YV7UBvcd0DG7GsBW/uUp6MKh3jgdGcxHv
         yCLE1bkQ7pXjbIXlUaaCEbaq990mJQulaeAacNWvi2ULJgo7/OYKBoJ1Pno52OIvJovL
         FCrREQ/FhZgXsT6/Bl+1lT/egrUk1TBAsUg/bJ6CcHXHAkL7X0/jue9DOs2h0extMXWG
         yO/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=rM/zpyHLYwR6kMK4GfVsk4cqjPUlNqYX8ihj39HgGU0=;
        b=AxbvGrwK84QedwOfFMkU5HLKLEFkQAUYmI7c3O9BQxDGPhJxx6rqgU21Gxtj4XylfT
         RvJnsKjx12rBf4yNPIws10MNXogSzLRKoNfYYiVDtjmQONBn5RPMlUiZPUMZ83UPImnk
         Tq8HKlsBqQuK6Kk5PD3gNtaLhs4Njw/MCY5YDrGOqu2Vys57/b/DiNOKzN+RnwlzC6tT
         CKViVmaRzVu6mLUdmNvA41OObB3yMThP8iL7meqx6Lhn24F61uyEiw6oc8HCEii9AYkH
         SbttFyefcTzghNPuh2riOrGRN/KfFGBO78TqwK09lDHEdYZ/J8miG9UcI/8WFTs4WrgV
         nqFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=saLhtJul;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id b16si927764ybq.0.2021.02.01.11.59.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:59:00 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111Jwoef023896;
	Mon, 1 Feb 2021 13:58:50 -0600
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111Jwndw036775
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:58:49 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:58:49 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:58:49 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQd085814;
	Mon, 1 Feb 2021 13:58:44 -0600
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
Subject: [PATCH v11 06/17] PCI: endpoint: Add support to associate secondary EPC with EPF
Date: Tue, 2 Feb 2021 01:27:58 +0530
Message-ID: <20210201195809.7342-7-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=saLhtJul;       spf=pass
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
 drivers/pci/endpoint/pci-epc-core.c           | 47 +++++++++++----
 drivers/pci/endpoint/pci-epf-core.c           | 57 +++++++++++++------
 include/linux/pci-epc.h                       | 25 +++++++-
 include/linux/pci-epf.h                       | 17 +++++-
 6 files changed, 125 insertions(+), 38 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index 7a1f3abfde48..c0ac4e9cbe72 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -619,7 +619,8 @@ static void pci_epf_test_unbind(struct pci_epf *epf)
 
 		if (epf_test->reg[bar]) {
 			pci_epc_clear_bar(epc, epf->func_no, epf_bar);
-			pci_epf_free_space(epf, epf_test->reg[bar], bar);
+			pci_epf_free_space(epf, epf_test->reg[bar], bar,
+					   PRIMARY_INTERFACE);
 		}
 	}
 }
@@ -651,7 +652,8 @@ static int pci_epf_test_set_bar(struct pci_epf *epf)
 
 		ret = pci_epc_set_bar(epc, epf->func_no, epf_bar);
 		if (ret) {
-			pci_epf_free_space(epf, epf_test->reg[bar], bar);
+			pci_epf_free_space(epf, epf_test->reg[bar], bar,
+					   PRIMARY_INTERFACE);
 			dev_err(dev, "Failed to set BAR%d\n", bar);
 			if (bar == test_reg_bar)
 				return ret;
@@ -771,7 +773,7 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 	}
 
 	base = pci_epf_alloc_space(epf, test_reg_size, test_reg_bar,
-				   epc_features->align);
+				   epc_features->align, PRIMARY_INTERFACE);
 	if (!base) {
 		dev_err(dev, "Failed to allocated register space\n");
 		return -ENOMEM;
@@ -789,7 +791,8 @@ static int pci_epf_test_alloc_space(struct pci_epf *epf)
 			continue;
 
 		base = pci_epf_alloc_space(epf, bar_size[bar], bar,
-					   epc_features->align);
+					   epc_features->align,
+					   PRIMARY_INTERFACE);
 		if (!base)
 			dev_err(dev, "Failed to allocate space for BAR%d\n",
 				bar);
diff --git a/drivers/pci/endpoint/pci-ep-cfs.c b/drivers/pci/endpoint/pci-ep-cfs.c
index 3710adf51912..6ca9e2f92460 100644
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
index ea7e7465ce7a..3693eca5b030 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -493,21 +493,28 @@ EXPORT_SYMBOL_GPL(pci_epc_write_header);
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
+	if (IS_ERR_OR_NULL(epc))
+		return -EINVAL;
+
+	if (type == PRIMARY_INTERFACE && epf->epc)
 		return -EBUSY;
 
-	if (IS_ERR(epc))
-		return -EINVAL;
+	if (type == SECONDARY_INTERFACE && epf->sec_epc)
+		return -EBUSY;
 
 	mutex_lock(&epc->lock);
 	func_no = find_first_zero_bit(&epc->function_num_map,
@@ -524,11 +531,17 @@ int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf)
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
 
@@ -543,14 +556,26 @@ EXPORT_SYMBOL_GPL(pci_epc_add_epf);
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
index e44a317a2a2a..79329ec6373c 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -74,24 +74,37 @@ EXPORT_SYMBOL_GPL(pci_epf_bind);
  * @epf: the EPF device from whom to free the memory
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
 
@@ -101,15 +114,18 @@ EXPORT_SYMBOL_GPL(pci_epf_free_space);
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
@@ -119,17 +135,26 @@ void *pci_epf_alloc_space(struct pci_epf *epf, size_t size, enum pci_barno bar,
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
index 88d311bad984..d9cb3944fb87 100644
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
index f373a134ac04..1dc66824f5a8 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -14,6 +14,7 @@
 #include <linux/pci.h>
 
 struct pci_epf;
+enum pci_epc_interface_type;
 
 enum pci_notify_event {
 	CORE_INIT,
@@ -119,6 +120,11 @@ struct pci_epf_bar {
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
@@ -135,6 +141,12 @@ struct pci_epf {
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
@@ -171,8 +183,9 @@ int __pci_epf_register_driver(struct pci_epf_driver *driver,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-7-kishon%40ti.com.

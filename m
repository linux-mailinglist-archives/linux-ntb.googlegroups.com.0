Return-Path: <linux-ntb+bncBCOOP4VF5IDRBRGMWH5QKGQE52LEPAA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 2936B276D22
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:26:29 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id d143sf2290203ybh.11
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:26:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939588; cv=pass;
        d=google.com; s=arc-20160816;
        b=LEDka97SGO/3XegXcB7UOFE60jniC90Z/UMiv4Kck3wyDbwjAEKKR93AcogIxd/XVz
         BHw+MArxr7c78h4AK/KDc7k+XtW5fNOSkBA8GM+EfkT1BlXk0uBrYBuWOP4xfxc3caJM
         dkpbwX+7p8mURZqw20W9U3fguOU9YpXwyLvsE2jvSzN9gB2KzFSZwBNNAsQhm3VSA2E3
         MqspLUpI40yJnZYY0BrvZYoAHJ+lYlrfMen5B5W/dblAryKVL99DVFRBGnG9BFXJudM+
         v4AtGxegeHnSUN4yYpq/e9ym+Xtbnqcbq8tTxyeBOpAWOjOin5k4ax1KlcnH7d1FSIrn
         A/GQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=RAbdeoljd1oMgknusBEbfvKz9M8Gh3W5VixSfjNLgrA=;
        b=Fn4lgJjGQz2SsxIXfezsdextFF2WxVCZw615ZIClHDM/7Vt1TdIpg10DWrthp4OYrF
         2qBLEp20Nm/SRPbVZ2petbMr0KLwRMPpc+JgdnoH29wkDFh3EIiEjCdCFhy55oKmMjAW
         DP7obSPHfmucVkmEe/TUNK6RwlpkU6sLpnJy7loeS46Crwy+75IAFu7SNHjyLy4y+JdM
         vJVekzkkgqwwQKTWcEG32CSJJ/WUvd/wo3i/6Sbm+AlmNY8OePFBDmon0g3lKGPNFuF0
         eb5qJtxA/zLWUIyMgcgJYUt+AiNbHYX6uHRwrEKDSvY35YIJ+06XmU68G3uWsLbttNCv
         /HVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZDXqpjhG;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RAbdeoljd1oMgknusBEbfvKz9M8Gh3W5VixSfjNLgrA=;
        b=c6afsYdILG0wXVX3TuKVceFq81uPTwfD1YuTjIMw1CK6biyABqpTU0FotrCsvukQN0
         evLZJuNnqVr6TSAVsh30geV6okUDm9Uybxq7+a6adn0hE444GUGV2eskt+YqQWxL0eHh
         83GXQeTxRG4nJzzj3WHU8lhkMuS0WSQ+LHebmeRv4pKaOfDJnPgu8SgY6+e6dWQAY+Y+
         Tno/6PhnXMr4/F98eBHUAgLe83QlNpki2JTjyjQTp74Wtmm9oMRTxtou4dptc2HTHbTu
         RoCcYsdVTC3YCKxn7CAWOFyWnWpCEFqOCMusFa+PHAoYboN3KxbG+wPVtBZd26n8Gczn
         wEMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RAbdeoljd1oMgknusBEbfvKz9M8Gh3W5VixSfjNLgrA=;
        b=NFefASYjz1JM9J6pC0BKGGuJUpyVsEauoTjoaFF1ZQJ8FiWGMz8o8r14Y6PK565LFi
         OCsn65yCmiET5Hwzm6SInHx1ynrfs3lxlfjy3gqevF+Xerkf0hQf2JIxdG+izxQJuInb
         zbg9UxoisWSiKi1U7YXac4ZDtvO0NCR2ZnSe+OlDkKgyrggyY9oDXYUbgrHHTrJHA77l
         3AMykhqbwu3gu4pAcCTEFRzvDv3nmytHPllloQp6hPHvm7qgL4nacevIsXHzXvXWvrxf
         JRohaWnKoVi7q/0b02sCN0VryoJAxJYdZ/lBUZmvxijYgnl6lzT/uHK/mv8VBamK4ARK
         fnkw==
X-Gm-Message-State: AOAM531VlJZo6x/y+N+TxpsDCl/A6Y1s97Jp/0/fmpLk0FI09QroN0gM
	w9d2uyGahf8wRz12AJK3ntU=
X-Google-Smtp-Source: ABdhPJyZ5ry/mvNWUf8C08m301YkcqdHc+CIq0Ktpg4kn4hCTz1aQ2+mvpnfJ2KTMkkVTnHFg4PISg==
X-Received: by 2002:a25:a85:: with SMTP id 127mr6261224ybk.143.1600939588222;
        Thu, 24 Sep 2020 02:26:28 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:6d05:: with SMTP id i5ls1305756ybc.1.gmail; Thu, 24 Sep
 2020 02:26:27 -0700 (PDT)
X-Received: by 2002:a25:b5cc:: with SMTP id d12mr5526225ybg.190.1600939587773;
        Thu, 24 Sep 2020 02:26:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939587; cv=none;
        d=google.com; s=arc-20160816;
        b=u9EL/gDPnltZFthmJBYG3nc38wI4MkOX75+XA/2fyXM9Ed/NNaEMD1rmNlLefXsIDh
         SUw7P36x1Du0gYp9kG5Vzo1f48Zd8qPoLTrZHhXfdFlbjP+7JBLeFxHohS+bjF3tYi4Z
         Z0OqhemSh9XQTGsW8Qg2jdFAb781cfCBxagQi+XoYKy/B5TNeyEr0w9KZ1qViqifIyS7
         pet4JDmYJDI0wx4c96EgnkAh+/IuEwlJyE8S6sdO54RHdCOaMHPKdGiZ8TMQnfpHCu4P
         K5XJg7gWms4n/SghNj+LYzfUfpieeWq4R6iIdbfnj9ftllniXOxqjVJu0KuLMZrrIssS
         HoxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6+pEZ2sU4Okxi+WU1gPDCbDCdtKwOEBqEUtnhiZE5hw=;
        b=lczmaeTthb2qet/aGnYM7SpzHr7HL2TiPPgdVcfLAq4v9tU4ffVO57z7xTTrCGYxD0
         k9eVb8Nhb6Zxaz0/mLbfM5xLly1kLmS+VL/Mkaz5MbyUIxHlmr7i3ZZ1QrmjKlsc2JzI
         vQUJqmjJh4ELZcyksvIrFHa/B/16+yAEdNK0u/MCl/I3HKyFgX1zHxdaN1+tPAeJPMdd
         m0tZgFohkCX/F8+AoSwrznigGkYcRyK0EhO7SCVppryMbO7gaQglOYV/BR4CdqH7nqy1
         tQO1SQq+dKvIGQujzagqAchd5rUAKHSaGGm+2pv7oH52Fmrn8h9D5EikAYjbgOQYS6yH
         ikKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZDXqpjhG;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id s7si262080ybk.3.2020.09.24.02.26.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:26:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9QJJx117409;
	Thu, 24 Sep 2020 04:26:19 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9QJTU069398
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:26:19 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:26:19 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:26:19 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POYx011000;
	Thu, 24 Sep 2020 04:26:14 -0500
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
Subject: [PATCH v6 10/17] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
Date: Thu, 24 Sep 2020 14:55:12 +0530
Message-ID: <20200924092519.17082-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ZDXqpjhG;       spf=pass
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

Documentation/PCI/endpoint/pci-endpoint-cfs.rst explains how a user
has to create a directory in-order to create a 'EPF Device' that
can be configured/probed by 'EPF Driver'.

Allow user to create a sub-directory of 'EPF Device' directory for
any function specific attributes that has to be exposed to the user.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-ep-cfs.c | 23 +++++++++++++++++++++++
 include/linux/pci-epf.h           |  3 +++
 2 files changed, 26 insertions(+)

diff --git a/drivers/pci/endpoint/pci-ep-cfs.c b/drivers/pci/endpoint/pci-ep-cfs.c
index 8f750961d6ab..f3a8b833b479 100644
--- a/drivers/pci/endpoint/pci-ep-cfs.c
+++ b/drivers/pci/endpoint/pci-ep-cfs.c
@@ -490,7 +490,29 @@ static struct configfs_item_operations pci_epf_ops = {
 	.release		= pci_epf_release,
 };
 
+static struct config_group *pci_epf_type_make(struct config_group *group,
+					      const char *name)
+{
+	struct pci_epf_group *epf_group = to_pci_epf_group(&group->cg_item);
+	struct config_group *epf_type_group;
+
+	epf_type_group = pci_epf_type_add_cfs(epf_group->epf, group);
+	return epf_type_group;
+}
+
+static void pci_epf_type_drop(struct config_group *group,
+			      struct config_item *item)
+{
+	config_item_put(item);
+}
+
+static struct configfs_group_operations pci_epf_type_group_ops = {
+	.make_group     = &pci_epf_type_make,
+	.drop_item      = &pci_epf_type_drop,
+};
+
 static const struct config_item_type pci_epf_type = {
+	.ct_group_ops	= &pci_epf_type_group_ops,
 	.ct_item_ops	= &pci_epf_ops,
 	.ct_attrs	= pci_epf_attrs,
 	.ct_owner	= THIS_MODULE,
@@ -553,6 +575,7 @@ static struct config_group *pci_epf_make(struct config_group *group,
 		goto free_name;
 	}
 
+	epf->group = &epf_group->group;
 	epf_group->epf = epf;
 
 	kfree(epf_name);
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index b241e7dd171f..6833e2160ef1 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -9,6 +9,7 @@
 #ifndef __LINUX_PCI_EPF_H
 #define __LINUX_PCI_EPF_H
 
+#include <linux/configfs.h>
 #include <linux/device.h>
 #include <linux/mod_devicetable.h>
 #include <linux/pci.h>
@@ -128,6 +129,7 @@ struct pci_epf_bar {
  *   EPC device
  * @sec_epc_bar: represents the BAR of EPF device associated with secondary EPC
  * @sec_epc_func_no: unique (physical) function number within the secondary EPC
+ * @group: configfs group associated with the EPF device
  */
 struct pci_epf {
 	struct device		dev;
@@ -150,6 +152,7 @@ struct pci_epf {
 	struct list_head	sec_epc_list;
 	struct pci_epf_bar	sec_epc_bar[6];
 	u8			sec_epc_func_no;
+	struct config_group	*group;
 };
 
 /**
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-11-kishon%40ti.com.

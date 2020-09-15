Return-Path: <linux-ntb+bncBCOOP4VF5IDRBFMDQH5QKGQEV32TKEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C44269D0E
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:22:46 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id h14sf888162oos.16
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:22:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143766; cv=pass;
        d=google.com; s=arc-20160816;
        b=NepzjCJmmYEaqkBlNZoR1I05bnAPECYVLBtujMmFEI+ZKu0O/iJlPNguoz/c2mCmji
         LDRiitWzOSp3sNzFWbaWkmbGTqazowZlIFeIiA/xZ6u2AmHd6l6u9oN58byv2E29/Bfp
         KcM4c8lBlOlzQSLE+Mhkx0U8x3Cylb6dMZaTwK6yROi8/y+sm7ZqJ0si7u7W13CsBh5X
         jX0mCFelIAwuxBr0DlTV6mIRuGeY6y7p4Q8RlqJoC0m99uqg5wZRV2J32+mNdzMWrlt6
         Zxd9kDQKaKX//2iuk8tS7RbqqgCWnHiXQ8dWi7h1W/rlvMlVHxc85Pcw054DSFY+0+Bn
         w82Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=iiYujU9k6wqYvjSbFI/ractu7RNYGPQOalcjw9oVcjc=;
        b=yIQziEH6Vw45YQaEtjhRhXb4LWM16bh/X4fctWj8T4O/zyC9sGUBfqxQnv41e0ppTz
         2R4kWm36NAFTWN3NUjQOKAFbkb+gzpxEiRrUxQuZFNVwBGxKaXkqVKF8vEpB7WX2aler
         UppBAcZbulIYWwGnUXJSCXSufXX7TFVRntj7CrurTOGyD98DqA3p1CoVUwDAWc5hkIAm
         ryD2S9GAhXwJNT0+YD7o4Gq98QLXpbWrrra2Y366OL0KYDEXwzGfm9kD8KPKje3v5gx1
         vOyx+Wyz64fzKVo7DgUGD0MyZK9X1c6nc6urRJ1S6e35v71A3Jqqw+0Hd6VWAKkT2guv
         1YGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=nddMHg6r;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iiYujU9k6wqYvjSbFI/ractu7RNYGPQOalcjw9oVcjc=;
        b=LB1vKAOD8eKRMk39+zdjIKJUM5MdFEeduLax38WzYqm43LpEB7tMAok4B/7nyHluli
         OaXSr4wcahav+tlJUNnTWLUykk1kZK4+tAHWCIM9OUfQyAh6iGnaun2SYoacWivo+6z9
         VHwV7GZi19Zd260y7EGhD0vphG7Hx3CyFvX4dK3ZDH9Zr0mO4oR07o0ZYa9vjDyhIB/B
         mo/ibmu4FTNIKcO8SI2sVgUBxwFbtcE6CBVpojylSRZHEtuqNprwcU3Dfko11eCcTO/E
         QDZ1n04q54T6696p6URPXOMhDPiTr8ZvWvV1bPTU4D6z2vOCkz1YPwN1A0fBB+ap4nda
         wLOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiYujU9k6wqYvjSbFI/ractu7RNYGPQOalcjw9oVcjc=;
        b=TFRIHMdAjHVFg20jyh7sH3aGf1X4AgFjpwFd4d9G4bpJeGMFBRfAWyov/mAUp8ubRz
         XYK2gaN5lkw0R+KUpMZLCNQw4I/MHlDIBzn240DqDHsVrRsIoyey5DFlAeyVlEWRuQYh
         w7HMwlsQoeFy7eWyDZT0P8aKHeZJC6H754Ga6rzcwbWjGi0Vd2tnAvfeAPQZ9XAxI9S9
         QP+1bXg2qfhetgsjk7+uZFKDAJx17gN4VmQea7c41zt5rqPyr5bZjIqxJLPT9+nMlFaS
         gluzyCIODGfpwpHWN0qjNPTCaZ9EXYqsxEt+2siL9aiKBH5C6CivVmpVd7FyBmJafV2z
         7vOA==
X-Gm-Message-State: AOAM532DeRu1q4pWccpU/wZKwB+F9vblPCqxNNGVEj+EL6I3RjMtXcLp
	efrCFF+ZI14EycL5Di1+owY=
X-Google-Smtp-Source: ABdhPJwCdJzNuKygv0PpeTzpgwF01qOpS/4oD4RTuJQEioPaIWkXzWvuDIdtfNXuQFUUzTrqxUzcfw==
X-Received: by 2002:a05:6808:3bb:: with SMTP id n27mr1888596oie.130.1600143765846;
        Mon, 14 Sep 2020 21:22:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:7ad8:: with SMTP id m24ls2524169otn.8.gmail; Mon, 14 Sep
 2020 21:22:45 -0700 (PDT)
X-Received: by 2002:a9d:62c7:: with SMTP id z7mr11724668otk.286.1600143765550;
        Mon, 14 Sep 2020 21:22:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143765; cv=none;
        d=google.com; s=arc-20160816;
        b=G9QzrON4kEkPsjz64OxvP2hwqbcHiSkv9pSrkOTuX9ZqPv/fLIzGnzwFR3EuASGh5s
         Dkls5ZlayoCpNjuEtSilQPjn3gPu+FiLTYp0//1kgkqwmr4aUnoW6uMh9OCRXZ1uz3ez
         MfExUsWznfJthGOqFgg6ONfTA+u5r77tovAa8XcdxxY9BfDoMxZrWrCpAKbiaEoYiS0q
         6+Cw0MPEorIThdPVrJqoWira3n6XHMdMIvx32ZBwgMzrvXmyx0ZXfzHZdyTmotPgbZes
         0+9qX08QMy269pSuzO0nanXn/6aK+hu2TwdxRKwNFHPI5RWxsypXjGLGDj1vKyS8RVK6
         GQ2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6+pEZ2sU4Okxi+WU1gPDCbDCdtKwOEBqEUtnhiZE5hw=;
        b=cD0FQAGt+KOJwrmqj8Fgaq2dbYLrHrOx3g7rCq81OFniGOZOTHYvNJsVtUFK0cMhC6
         845H2/klfWV4JysSgqmBkF1cTPCfF0X8pLc4t8vl8WF0pKXwmYmFZ+/eaQTqVovGeCJW
         /oYSmsGsc/ybLGzTUAlvD6RVU5hDt2tF8ikgHZgA+OkLUn32nYeVBrdIaBBZuvtqw0WK
         7CY5cxg7WuGKZE3C6omadX0BGAsxqBL7BY2HPJahs8/wPrSadJ0xiWzHkh9xXljd5wuY
         74SoHvqWcQLYCl6AEpL7pf0lsHWvLr+OQLzod2oimtHgwhUrKZY9HzKLEJTM2AdzFo1d
         8dKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=nddMHg6r;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id 66si947176oii.4.2020.09.14.21.22.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:22:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4MZwn005599;
	Mon, 14 Sep 2020 23:22:35 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4MZgt009313;
	Mon, 14 Sep 2020 23:22:35 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:22:35 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:22:35 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMq028615;
	Mon, 14 Sep 2020 23:22:30 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>, Rob
 Herring <robh@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Tom Joseph <tjoseph@cadence.com>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, Kishon Vijay
 Abraham I <kishon@ti.com>
Subject: [PATCH v4 10/17] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
Date: Tue, 15 Sep 2020 09:51:03 +0530
Message-ID: <20200915042110.3015-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=nddMHg6r;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-11-kishon%40ti.com.

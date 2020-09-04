Return-Path: <linux-ntb+bncBCOOP4VF5IDRBEHEY75AKGQEWVHASEA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 10AAD25D2C3
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:51:46 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id x2sf3504723pfd.8
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:51:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205904; cv=pass;
        d=google.com; s=arc-20160816;
        b=Aoatnz4A0+Q5U0b7xpoxzYPRI39zQSgdru3wcJGLASdru6NDKaqW6SOxrK5nB990Ij
         9EjTRAvSlug7hbgSYPv9QZDsi/4zhJ7pgpjqdWFtFTSR6dG4pOv489uwI0lJZGIMAhPl
         luefhaIQwh196lELoGIlgYF76ZbDUmvnQ5c/ccMNv1HXLLXhMKxsWsHa6kMfK9YEwbZ2
         17RL7SCslIzmpHXKOAspmiD5irbxxUQpJYH8JyNaRQplj2SrsDM5Ey4+t/eReAMLvhRg
         d25o9wTktvBsrNdhq+CNj76pGxXiUqAiN0ptO/6EPUPSWYSUozZizK7HeDUzY5RgvQXG
         eE5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=tY3La7BuDHUd5DkhsXx8FdH4w60/fRw3A1k5A3+EHYk=;
        b=K3DuYXYFI5qmxNwBAO2Aq3mnv6AMuv1w8g+HQfJfmpLWIImKrBQGeyycuRIf29cjDv
         pUIUute7TtRfEXeE03NYO+fZpSY66/MfxX9RbThYuKWnYeCy7cRjfneJh9x281XQtcui
         EMrv+ibX7RWPMWCCW1K2e3ZV4DAbLW7HW/ExiFt5KtsDvOs505Mq1NZGE8arW3Uyn7ix
         2aKeQ57gec5jSYmv9fruMD0T2iCInLP8ETNi4xx9w1T0tzUpmC40srYDdBnxlBEOzn5q
         f1eo4sNvFEjUPCkxEeCUllnhX+yR+2cIeaPkSX7ULdEvNuB5I7mgB4Xfvbgl2wy/B0BW
         jPFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=s5t1aCYL;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tY3La7BuDHUd5DkhsXx8FdH4w60/fRw3A1k5A3+EHYk=;
        b=VO6cB3alIQv/U1QvlmMo4aTy5fU/pNYf0z90qYEZwVhlSXxHRb2LWp5kXJV4Jc2kxa
         26QVBZWHs24BFGIiW5VfkyJUayIsRdtRkdrZwC7vYXKMl/YirOgZwaoS2vStLrxUZrNJ
         kdqLYLlBwsR3aaQZHs+Fruz20sjH+1SvnO+2RQXfk7NWJS6lLYvyCvMt5xp9UQAgxtCk
         m99e+1CH2QfbETy8O1EQQFfPDk6rsQyUlVkhTQChGZKiVrqfYEol3SLeXrAbediAP1hR
         rxJMX+9WuepaeYXwiuzYEsB/bn0fa+ULaEqZ7Ta3DHOv133oDFBDqRlMxOaKOU6Kpspr
         9tlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tY3La7BuDHUd5DkhsXx8FdH4w60/fRw3A1k5A3+EHYk=;
        b=YVNkQd5pF6LGwTgpd4rBacqv6tfuSPBhXxdAFVtM29wJ7WFBXqQMO2e3m4tymN1VHp
         jBIVkSjp08TYgSKcABT/qIVAnB/ntWNBBWXegtQ5CtJ+7pOFcTtE8xO/6eFNLp4/yNjt
         Vq6mV3JSMc5tTy/qLa2MqZqcvtQoj/i56+eadJB05TFh0QpHrT4GRY3gyOSnapIe4B6t
         ErE1NeVbYDukEUK5OTqNhrz2zYRVDmE39kMDox6V4xNJ/DYnFFrqcmFl96x8t1sPhKlU
         XDRlzeOAK3s2Gnqn6lkUgfjGN4RULf3q1TbDiTrcVFq0Ufsz9rlocV1ofF1PkSkSewAS
         8+AQ==
X-Gm-Message-State: AOAM5318NiGp52+z2PysR6MN8eeTRBc1AmXa4+3EyBxusqf0s2fXzBds
	6vX1xSeTQsA1x3rFuxu6lYA=
X-Google-Smtp-Source: ABdhPJw9+0JeRPcjeW4n+rRIvEe1clCOBIH57cjNAi+fPlNOGP5/FYvUVyN2t8I4N6QH9IKaIzp9dQ==
X-Received: by 2002:a63:4c11:: with SMTP id z17mr6166373pga.152.1599205904776;
        Fri, 04 Sep 2020 00:51:44 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:9250:: with SMTP id s16ls2646447pgn.7.gmail; Fri, 04 Sep
 2020 00:51:44 -0700 (PDT)
X-Received: by 2002:a62:38ce:0:b029:138:838f:dd53 with SMTP id f197-20020a6238ce0000b0290138838fdd53mr5728549pfa.2.1599205904297;
        Fri, 04 Sep 2020 00:51:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205904; cv=none;
        d=google.com; s=arc-20160816;
        b=OPcIjyAX9gZatHmxinG99BMDFOYUS4382vAGf5X+P7iP9BZXX/2C2y3Z954K86syJd
         1vXMdq5eosIyqSUtj35/9YSjadGchqfMmEHrq02RjCbntP9MizPff3RfQPb48bgxypVc
         pu57ZSnAttCrEU9XuEv4JbcpWbm9tFk49ZFJXoQYZbh9RI2qiPMxi6FDocsPvZitCO5G
         OrueYzUAWQiR/dsPmLihaKxiG+kKLOtdoR3KLI1iIZzxTGazZrxwcPwHlg3M9Ehm8IjQ
         cxpM6jy+sI/qz1MDSBm2yvugK4nKyB/qLixH3m3pUnmRURTO5tG5nb8P7yZ4PPBaoquK
         1JxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z3Tw9eXfcOK90ruy3aMeRyVdcSzDrEL/G+eXeTQ/vG0=;
        b=hfD4Ni0YrM2U0JhVwOiBPeJ74CTzI034AphOs43PgBfFE29ZhnJMrOPNs0CrCQo790
         LN1M/iSjsGZpCFJLwrlujOgsETX4MSQoZmdqEJfeywpYmfoUtrrLd2Fr7J+EnquTyFJJ
         boSr7Z3y8ywKBf+FvHlrhCKutCqPJ2+RKsutyCaWGp6cKVu52i2vf9AXHRDgMZ19eoPG
         7TtFGkHt7SDZ0Ach7Nj7Wb29IPetz9qMzTmwDKVx8DXPLrapyOcEORpoXRNpYywV1TWF
         AMVc72R55hpoHIDcswN5n+qWcrqLFBCK8p+AMMgWiG0jbLL6LmOSEdCGLg7o0bnS8NBp
         x5+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=s5t1aCYL;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id z13si275623pgl.5.2020.09.04.00.51.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:51:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847pbjC017978;
	Fri, 4 Sep 2020 02:51:37 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847pbSP003378
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:51:37 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:51:36 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:51:36 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osN8058796;
	Fri, 4 Sep 2020 02:51:31 -0500
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
Subject: [PATCH v3 07/17] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
Date: Fri, 4 Sep 2020 13:20:42 +0530
Message-ID: <20200904075052.8911-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=s5t1aCYL;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted
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

Now that PCI endpoint core supports to add secondary endpoint
controller (EPC) with endpoint function (EPF), Add support in configfs
to associate two EPCs with EPF. This creates "primary" and "secondary"
directory inside the directory created by users for EPF device. Users
have to add a symlink of endpoint controller (pci_ep/controllers/) to
"primary" or "secondary" directory to bind EPF to primary and secondary
EPF interfaces respectively. Existing method of linking directory
representing EPF device to directory representing EPC device to
associate a single EPC device with a EPF device will continue to work.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../PCI/endpoint/pci-endpoint-cfs.rst         |  10 ++
 drivers/pci/endpoint/pci-ep-cfs.c             | 147 ++++++++++++++++++
 2 files changed, 157 insertions(+)

diff --git a/Documentation/PCI/endpoint/pci-endpoint-cfs.rst b/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
index 1bbd81ed06c8..696f8eeb4738 100644
--- a/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
+++ b/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
@@ -68,6 +68,16 @@ created)
 				... subsys_vendor_id
 				... subsys_id
 				... interrupt_pin
+                                ... primary/
+			                ... <Symlink EPC Device1>/
+                                ... secondary/
+			                ... <Symlink EPC Device2>/
+
+If an EPF device has to be associated with 2 EPCs (like in the case of
+Non-transparent bridge), symlink of endpoint controller connected to primary
+interface should be added in 'primary' directory and symlink of endpoint
+controller connected to secondary interface should be added in 'secondary'
+directory.
 
 EPC Device
 ==========
diff --git a/drivers/pci/endpoint/pci-ep-cfs.c b/drivers/pci/endpoint/pci-ep-cfs.c
index 6ca9e2f92460..8f750961d6ab 100644
--- a/drivers/pci/endpoint/pci-ep-cfs.c
+++ b/drivers/pci/endpoint/pci-ep-cfs.c
@@ -21,6 +21,9 @@ static struct config_group *controllers_group;
 
 struct pci_epf_group {
 	struct config_group group;
+	struct config_group primary_epc_group;
+	struct config_group secondary_epc_group;
+	struct delayed_work cfs_work;
 	struct pci_epf *epf;
 	int index;
 };
@@ -41,6 +44,127 @@ static inline struct pci_epc_group *to_pci_epc_group(struct config_item *item)
 	return container_of(to_config_group(item), struct pci_epc_group, group);
 }
 
+static int pci_secondary_epc_epf_link(struct config_item *epf_item,
+				      struct config_item *epc_item)
+{
+	int ret;
+	struct pci_epf_group *epf_group = to_pci_epf_group(epf_item->ci_parent);
+	struct pci_epc_group *epc_group = to_pci_epc_group(epc_item);
+	struct pci_epc *epc = epc_group->epc;
+	struct pci_epf *epf = epf_group->epf;
+
+	ret = pci_epc_add_epf(epc, epf, SECONDARY_INTERFACE);
+	if (ret)
+		return ret;
+
+	ret = pci_epf_bind(epf);
+	if (ret) {
+		pci_epc_remove_epf(epc, epf, SECONDARY_INTERFACE);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void pci_secondary_epc_epf_unlink(struct config_item *epc_item,
+					 struct config_item *epf_item)
+{
+	struct pci_epf_group *epf_group = to_pci_epf_group(epf_item->ci_parent);
+	struct pci_epc_group *epc_group = to_pci_epc_group(epc_item);
+	struct pci_epc *epc;
+	struct pci_epf *epf;
+
+	WARN_ON_ONCE(epc_group->start);
+
+	epc = epc_group->epc;
+	epf = epf_group->epf;
+	pci_epf_unbind(epf);
+	pci_epc_remove_epf(epc, epf, SECONDARY_INTERFACE);
+}
+
+static struct configfs_item_operations pci_secondary_epc_item_ops = {
+	.allow_link	= pci_secondary_epc_epf_link,
+	.drop_link	= pci_secondary_epc_epf_unlink,
+};
+
+static const struct config_item_type pci_secondary_epc_type = {
+	.ct_item_ops	= &pci_secondary_epc_item_ops,
+	.ct_owner	= THIS_MODULE,
+};
+
+static struct config_group
+*pci_ep_cfs_add_secondary_group(struct pci_epf_group *epf_group)
+{
+	struct config_group *secondary_epc_group;
+
+	secondary_epc_group = &epf_group->secondary_epc_group;
+	config_group_init_type_name(secondary_epc_group, "secondary",
+				    &pci_secondary_epc_type);
+	configfs_register_group(&epf_group->group, secondary_epc_group);
+
+	return secondary_epc_group;
+}
+
+static int pci_primary_epc_epf_link(struct config_item *epf_item,
+				    struct config_item *epc_item)
+{
+	int ret;
+	struct pci_epf_group *epf_group = to_pci_epf_group(epf_item->ci_parent);
+	struct pci_epc_group *epc_group = to_pci_epc_group(epc_item);
+	struct pci_epc *epc = epc_group->epc;
+	struct pci_epf *epf = epf_group->epf;
+
+	ret = pci_epc_add_epf(epc, epf, PRIMARY_INTERFACE);
+	if (ret)
+		return ret;
+
+	ret = pci_epf_bind(epf);
+	if (ret) {
+		pci_epc_remove_epf(epc, epf, PRIMARY_INTERFACE);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void pci_primary_epc_epf_unlink(struct config_item *epc_item,
+				       struct config_item *epf_item)
+{
+	struct pci_epf_group *epf_group = to_pci_epf_group(epf_item->ci_parent);
+	struct pci_epc_group *epc_group = to_pci_epc_group(epc_item);
+	struct pci_epc *epc;
+	struct pci_epf *epf;
+
+	WARN_ON_ONCE(epc_group->start);
+
+	epc = epc_group->epc;
+	epf = epf_group->epf;
+	pci_epf_unbind(epf);
+	pci_epc_remove_epf(epc, epf, PRIMARY_INTERFACE);
+}
+
+static struct configfs_item_operations pci_primary_epc_item_ops = {
+	.allow_link	= pci_primary_epc_epf_link,
+	.drop_link	= pci_primary_epc_epf_unlink,
+};
+
+static const struct config_item_type pci_primary_epc_type = {
+	.ct_item_ops	= &pci_primary_epc_item_ops,
+	.ct_owner	= THIS_MODULE,
+};
+
+static struct config_group
+*pci_ep_cfs_add_primary_group(struct pci_epf_group *epf_group)
+{
+	struct config_group *primary_epc_group = &epf_group->primary_epc_group;
+
+	config_group_init_type_name(primary_epc_group, "primary",
+				    &pci_primary_epc_type);
+	configfs_register_group(&epf_group->group, primary_epc_group);
+
+	return primary_epc_group;
+}
+
 static ssize_t pci_epc_start_store(struct config_item *item, const char *page,
 				   size_t len)
 {
@@ -372,6 +496,25 @@ static const struct config_item_type pci_epf_type = {
 	.ct_owner	= THIS_MODULE,
 };
 
+static void pci_epf_cfs_work(struct work_struct *work)
+{
+	struct pci_epf_group *epf_group;
+	struct config_group *group;
+
+	epf_group = container_of(work, struct pci_epf_group, cfs_work.work);
+	group = pci_ep_cfs_add_primary_group(epf_group);
+	if (IS_ERR(group)) {
+		pr_err("failed to create 'primary' EPC interface\n");
+		return;
+	}
+
+	group = pci_ep_cfs_add_secondary_group(epf_group);
+	if (IS_ERR(group)) {
+		pr_err("failed to create 'secondary' EPC interface\n");
+		return;
+	}
+}
+
 static struct config_group *pci_epf_make(struct config_group *group,
 					 const char *name)
 {
@@ -414,6 +557,10 @@ static struct config_group *pci_epf_make(struct config_group *group,
 
 	kfree(epf_name);
 
+	INIT_DELAYED_WORK(&epf_group->cfs_work, pci_epf_cfs_work);
+	queue_delayed_work(system_wq, &epf_group->cfs_work,
+			   msecs_to_jiffies(1));
+
 	return &epf_group->group;
 
 free_name:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-8-kishon%40ti.com.

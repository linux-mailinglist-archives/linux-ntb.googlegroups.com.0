Return-Path: <linux-ntb+bncBCOOP4VF5IDRBAXJZT7QKGQE5TNOVHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 61C2E2E9892
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:30:11 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id l126sf52633658ybl.10
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:30:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774210; cv=pass;
        d=google.com; s=arc-20160816;
        b=sBNXuGvw4c/UfAjdi2jIWGgHJUkTr4wEXGqaL46ZHa6SAanqIHVtmuTaahdappur8M
         sUr9qWb7Gol1j0bxGkcgvCx5Nr69DSoIsEiu8lhcpdgToroz40Obh1vn1Rpu5Iq9L7l0
         a1m6erFjU2uNImvu3Raffywze/bJ4mfXyGAhAnF+/aObjfRciY6oikMWTurdM0eZ7iQ1
         Gmsg6QRYJyxk6l0GhDeA5myHZNK/Aiy6BCmLmYwXZB9t3mYBN2KyrqTnq3dDQLsxo6Td
         06ie7Epiowx/B5JrvSowm28bF71C3xqCi85kVuqcXB5JCX7/esJvkHUPZNYeDs5dBeZR
         lCXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=dWtddcFy7sPBlRc/oHxZxffhjEqM6+SGRtM4UC4rZWY=;
        b=LgRQzt78ZCxM9iUk4JKdUvP/sRXx4mBIAlaFj/q0FuniDn+4GcFlrvEmkKnDwEFd2h
         tyVZmvHYa4e7OE3/cV+T6BvCxeukuzp6xPp25PB4Rg98Wzy9V+lrFXW8DAJ3P0M29IAI
         cNLg8OYquF7o+xwZe6zqdFbLsclfa8eqaMfRW1+3T1twT+EDtt7ozvWqlJPDHts8o58j
         QCiQqNw+8eStqVmtKyYPpsdNYQYyGBSDyUJ/7WDjKQ0VF3K7E6EofRWzIbH3bffgIc2A
         R05ni3s4PRGS4pJulny2+jj/7VKdnNQ6IBUzwQa0+Fo7fjQzcz/Ozi3qEeAh+2X6r+WP
         7h9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=mpjjoJgr;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dWtddcFy7sPBlRc/oHxZxffhjEqM6+SGRtM4UC4rZWY=;
        b=C8TQdPBENezsRHHCinwhlEjH/Un+ukU28EcJbkWDwRXLcWsPuLEjomslJkVMig3X+9
         WbY4f3IDVLIAFWO9oeMzY3VxtTTNyYh6M/ucdNj/0BbGqK7UE7IDqSiLRiqfUnuONlkM
         qAvJrW9zT2g33+9utAMflZQmELJf5Pxtxy0eoeTEcVuc26ji2+/KsXq+BVHlFgNJ+udq
         YeJsQRV6ct4HiZ6YnkOWb9NpzejR4QyGhKQ/NaAVGQzbOLJe8xNCrCmhf3ebjZeqmcH0
         cyCpnc8UauSiPfdt3p3gPCq4xOIrXZ4Rr+nDdeKeSWLxX4bdYNT7GbLvbRtO7FTRvzmB
         Mf1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dWtddcFy7sPBlRc/oHxZxffhjEqM6+SGRtM4UC4rZWY=;
        b=qaCyM8nTFZeBRd4cQ78a/EsC++2apSPdhoiDVAkB/BoHwclW9IzHr8RtSCDl+0jr64
         wsSaEC0fcFtFnTsZvKNPsnXrMOV0cykS7uSX/KBlubR+KsX2b9rylyhLr89p2bf/fdp3
         VeqX6q6HDEuVlq/BZXuwdtQMkc7DCKw4PXX3jmYQZZUk1PNF9h0+iuqKu7DHE725gQeS
         kXaIcYkFrywfzvkpWoKeuA9o/We4XDDhk3Iqm7ijI04UYThOrH2csifnQOPBH2SSxzqG
         QFpd8O+czk1HxYIMDB6Uu3BFPBdS+X4FRfSGip7mfEi8smHFb00YTJ/1tgxl95E+fk0X
         v4/A==
X-Gm-Message-State: AOAM533K5U+CNO+pvnvjlfEVJy95bZOItIi4eb+dl/XW0cuUPPoWcbOC
	GO8ij2DQKA7UT0g8Z6uVAz4=
X-Google-Smtp-Source: ABdhPJx9GPkbZ+AXq2J7N5dBrBC9vMEuAgG61UKaiKnvTJnN0zu3cyg/46o4Kp05O5AA8cwwU02v+A==
X-Received: by 2002:a25:ef46:: with SMTP id w6mr106353822ybm.458.1609774210231;
        Mon, 04 Jan 2021 07:30:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:32c2:: with SMTP id y185ls35287727yby.8.gmail; Mon, 04
 Jan 2021 07:30:09 -0800 (PST)
X-Received: by 2002:a25:50a:: with SMTP id 10mr105633670ybf.115.1609774209487;
        Mon, 04 Jan 2021 07:30:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774209; cv=none;
        d=google.com; s=arc-20160816;
        b=yXM4k0JwEjRLAMmJc1g0GbqWpOBGSQq4FH7tBjUutmllsLmZOPmdhsW+TH2/eyPb1D
         Ii9TZ6Wgb76wNlcIAN59CKllcEIhr/ziFJDymffZofM078Ky6E3R2eyay61cPB/WrQrf
         2+DlOL11PNsGqFmb44/TFwCGwHBTydFPvd9cbIR06n7DlKrYPf8ID/HIdrOVtLKeZsqJ
         6cI4DCwby5sWhLYnFg1wmttzKNi14seTBwefngqpF6xgtZc18h7A3oo4FqTn0FOUb/io
         uet/HkM6uFKahyeklHj0VZhT9uxeJr8njIJLZVi5N/Lm11Fn1n7PC20qiRhhB6g6LsLb
         BYpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z3Tw9eXfcOK90ruy3aMeRyVdcSzDrEL/G+eXeTQ/vG0=;
        b=TWY0Ya0ZLCsvCZrIQEGF1a+M0cxU5jLLdL/FaLIHZMAQewfqdFTgGLwKGMzW3/1Pm8
         YkbClnM+w9fEXHIo/a1ZyDcNaI5oKLBdaZzFm2YTc9CvQe/v78JkYPwtqdYLbEPDN0h+
         55CL8g3JZ8AFidwNbK2QIKjHEQ3qn5kue6KgYEd6gQkTUGPmU8/WXduL8VCnR9+iXttD
         u1UYCBPhkSPbkrhccUNtbo41Hfajh5uqYn6yW25Dnoqre79IObQECh8sCkDV6EL+VJEz
         53VkVKwJh9QwEMM7bJ+k56WTpfwVLyNLHoknb02DiQ+qYMg0dVXDOV9jNxR5300s1LkM
         Kt8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=mpjjoJgr;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id i70si3546925ybg.1.2021.01.04.07.30.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:30:09 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FU180075958;
	Mon, 4 Jan 2021 09:30:01 -0600
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FU1ea077801
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:30:01 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:30:00 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:30:00 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZD093710;
	Mon, 4 Jan 2021 09:29:55 -0600
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
Subject: [PATCH v9 07/17] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
Date: Mon, 4 Jan 2021 20:58:59 +0530
Message-ID: <20210104152909.22038-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=mpjjoJgr;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-8-kishon%40ti.com.

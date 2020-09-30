Return-Path: <linux-ntb+bncBCOOP4VF5IDRB6WL2L5QKGQE6OP4P7Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E2E627ED34
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:36:28 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id p11sf1126308pjv.2
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:36:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480187; cv=pass;
        d=google.com; s=arc-20160816;
        b=U7dm5P5RgaEuF3D8deSTtLQ4Z4zHJpjKY6X1EFfOpkMQYOZfSoAr3pIup6yIfUXAtV
         /Sda2FVV/Ze6IRumxJKEZPRq9nopOzldAvkSaN0OVCDyE14f4wkvWY91miFXlRvTiKzS
         V6PQ57hppsapXyR/bq9heUGCDoV/T9Qd126U2FSRQ9cr3XthiRY+GQKHn6Z4sgGTVtMP
         SLiFwG85qQPM2A5urOMxT0dseeEaKHUbgZ1jQn92HlfW1cEpzJ93FCu1M+2zFIf8+1GM
         qd7Q3/VdDxvr5zFvzS/+uicmIiW2YPvwSmtpGK3ZNa3zmcB2GiSQF9bq6ZXFfxrbO2U+
         JoNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=5iLPnlGgbCb8ob3ZXoNg3nG7bVlD/j6j3QZkyOPPjhs=;
        b=WkVTL1vsbBbmW/pDZdXyK0Y9lyyjyDuAGnp1S55DP2/kiDeg1BHJkGzAMMp5FqyPR9
         kBcA6+etrlLJjVhr6863z6b/3EK9eNbd2D7D9sSpbMSXm74yjahvYpaiqI0gxNbXn0mp
         7/sFKzeggODgHqY+djoSlYOelFauVjoeXXWGLjVufADKBDXQnKJB4PeYxwcJ1ULiHuRy
         BviGqiEZczJPX4iz0kW8sOOhWVENd8pj+0qZEby54rQtQ+637GNQu8a0ghT+9qPLZ1vJ
         QuLEhVedj+0AWhkgDv0/Cg4m73z/GAG3IQA12u0k2RBUsKc+1qSh6CMJv+BaBUFtlay5
         Bqiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=GjIfqWBC;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5iLPnlGgbCb8ob3ZXoNg3nG7bVlD/j6j3QZkyOPPjhs=;
        b=e1OOzzT74PQtYo+a+qsJwfcZMs5CO5x/hNHb8GaFScDc8fgURKlK5O/bNs0+90Xedz
         6XacX6M6ssuDptIJgmAJe5j51vbSbAKPO2M1lHcGAFx9xZo5tJJ5lZ20eN/ods0kQC4w
         Lmn798bWh1kvL4PZrkU5BJvignSKWV22Acoq+DIP1N2Sjpy3TgVnZi71VXLwkuz7Aufr
         IZyPZDj8c3qRMR4UPjfczAc5uCKMMvbvoxQRQbDebojQvtx3fIDoq3n/Uj4O9AG/sifW
         PYcdFHLcCgsRBjrKQATgfjC+Cq5X2y5R1KlA+o9rY0m941pi4s0sJW+miZQf0pXWKIoW
         Chig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5iLPnlGgbCb8ob3ZXoNg3nG7bVlD/j6j3QZkyOPPjhs=;
        b=EfGv9C83wl4Hmd6C+JyjiSEu1e0IcEGyv4EKZ3p4z6z8I4ahx4tVnbGBtIaHIQ/MwG
         WkoSMmuGYs3mmTltZ5f2l7UnJa18tMN7E3sAEQzCYNuZQVdYu5iovKlVGNrsaDwvrmZj
         gfZdK33j4rL7Jbm0y3YFRkMb4Du/awSe+J+H3vz5sJqlBlb7+pNtTQP9f/LzUsd1dzU9
         Ot/OzLiaZMQslA+Km5F/lsB0GBiYwBnzA/x1689fdiWwYwNduOpSNWtSW2L4moYUhzp2
         2GK3Y/vq3s9N1ew1/WohWGTO2Qu/owmPzVFTrhYA48zUNAHxsEK+QyF1e53Yn0bzysVF
         XUJA==
X-Gm-Message-State: AOAM530yJ0dyihg3CuYCS29U7/KdHWDGBZAcMWd3tH+/GhScx7JFuQBk
	qqtRXt4CslWoWOLpf4BU6nI=
X-Google-Smtp-Source: ABdhPJyrwAFNvO80GvH7N/DD8NbFfUKgLoBNQzfr/0Y8OR/1+gaC3Bh6/3dy0T1AgCS+zW2RDRmtxA==
X-Received: by 2002:aa7:9f4a:0:b029:142:2501:35dd with SMTP id h10-20020aa79f4a0000b0290142250135ddmr3071999pfr.61.1601480186996;
        Wed, 30 Sep 2020 08:36:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:fc20:: with SMTP id j32ls779022pgi.11.gmail; Wed, 30 Sep
 2020 08:36:26 -0700 (PDT)
X-Received: by 2002:a63:5102:: with SMTP id f2mr2630267pgb.15.1601480186330;
        Wed, 30 Sep 2020 08:36:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480186; cv=none;
        d=google.com; s=arc-20160816;
        b=r2hLynLz2LFAwIFtFx5jaUJbVUuz20ERIThS+VhZGv68Eq4dTX/6WFQ+bGGHJkTWuM
         UxwMwkPrJs2BIECpSrmJaf85rqfegXgur/ohJq/Jvr6Wc/1W25gMMJEREMovVsOVVejo
         N4+V/3w172eQHHPruDTxyzlMUBDK4IdW1M2u9hcP+9rabSmyJnTAFb9gwuvV8w7umubX
         CbmaU+IX99eB8GYyUuH7NzKDXwHrOnkYye45wQiY/cZfWirA85rg6lv16UiFdNIItMDo
         uJVWUl2zCRbzC+D6YULe76V/UotZhBXoRO5ukXxnDRgS0LXgHpmXREvBN3ugwrObhbom
         40iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z3Tw9eXfcOK90ruy3aMeRyVdcSzDrEL/G+eXeTQ/vG0=;
        b=jeb8t9kqRZFbBPRVybapI2OgRdBrPaUrnCZUMYQ8m4bimjm298MAlUKYILeB5H8Sb8
         +KqjlawzjRM+0TOIYqO4k0OSFBD2MVFBE/s5EW1ojm4s0PdVvNEVrtticaP3A5P13EVp
         FSI6OlGoHEXQ3pzCLxMAP4lw31v6prC6EVmz7jkoiDiKnnEe+zAdoTa38w07O7uaI+tq
         ugaFtF9Webc1LWH/pQOVJpx4B6HQFIMyqqdqP32Swv+MLrB4YP+O3V9PAygJvl9eBUoU
         XYvbTZnfmfCt/8wDOJG09KoJC21KTgqTeIbeNY+DPm8rPyT9szghr4K/fZnC4V3PaPqT
         ZFfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=GjIfqWBC;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id e18si136504pld.5.2020.09.30.08.36.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:36:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFaHED076608;
	Wed, 30 Sep 2020 10:36:17 -0500
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFaH3p024387
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:36:17 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:36:17 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:36:17 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZW033254;
	Wed, 30 Sep 2020 10:36:03 -0500
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
Subject: [PATCH v7 07/18] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
Date: Wed, 30 Sep 2020 21:05:08 +0530
Message-ID: <20200930153519.7282-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=GjIfqWBC;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-8-kishon%40ti.com.

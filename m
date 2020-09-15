Return-Path: <linux-ntb+bncBCOOP4VF5IDRBBUDQH5QKGQEOFFAYVI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id A7EE5269D05
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:22:31 +0200 (CEST)
Received: by mail-pf1-x440.google.com with SMTP id i128sf1104894pfg.22
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:22:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143750; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tpcd2A2r2DctgedF3iN35vtYoqjX5KbnEnI1HGsm2KptrHCZRgSnepzdoJ5v/SjeyD
         gzVqOk+JpaNnXz3KFNNYbK3ZLk8bBUiFqqS7Rt+OwF88NCoyMXPa86D0dFK4c3IR3E7I
         7om9Zn+Ym2rjitzkljJdHyHVrpS1urVgMlEciImImSLBFU2VqXR4CNm7xvHavfXs884+
         wfzI3+9+LpN/an/WbQY/m6lYITR1hG4YYpJkXssMAgEapH0qYnpsWtgTWdQy43nRyifP
         DyccLJE3CVJ1c/YfUFNaAhrbppKVdB2Rbx3L1fkdUobDf9Q84D3t8uyJ69Vg9X8+924X
         3AUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=vpb1ul08kezbtxJwsJy5ZOtmzkJTI5+OJqyTZvvITLU=;
        b=IwR6YtQ95tUu/iahy+NckGh7xsH8mcdGeUcARz6eE7WsA6oLongyqHtU0rl1mE1g/R
         AKq2wGG0EPQwqyZ9OpTC0e46sxd3LA83XFY63wUVumG9omiTwMOO8wfdkP4tWJw1tkpr
         +suWYPERmdSMXLGf2VshyT08rKR4eIujhWgx17ufcdCy/b8sV9jCf5zSHKpBW+revBQs
         lMWAUSA9aJRpO/39AdeeHvQfvTbevw+QRJYf56vF7/0NuaRKDhagqEHRvcGeIvgcdLN0
         RtyMW6jVB1bCbosDAhh9lR+Xt05dSBfioxm/DAMgWQhsNWomqeAzLYeb+z/IATeGKCMf
         to9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=rA27EO2u;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vpb1ul08kezbtxJwsJy5ZOtmzkJTI5+OJqyTZvvITLU=;
        b=p+A4fN+fHiBrh6kNrKJZ9a/E9QzgaxSqS8DMz0P0iz07Rw+xfstx+lVC7YzPvl5g4G
         kUZyJVDpn2lfPcV7N/dMcSi+4WaZ0duUyY4z6xr/KsiKw+4t1mDzx7+a2hZemcgQ3wCn
         zL3Q7aVETaiDB3mG9VC6/8tc91qP+3Gc550YASJhh1UfvtI72trP0va198Z2GCyF1m3V
         NZvbLqMTqY32na7TIWJl57cT0YNm1xhwL5whbEtj3v1KqfaORX5L33DoJmohKCGX2v6e
         x7xZ7avbz/iBeZr/Pa+ROwAOuQvqycSsenlXgIxlqxirBBgeg5uH4zEc2gyTEUcuTAuL
         QJPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vpb1ul08kezbtxJwsJy5ZOtmzkJTI5+OJqyTZvvITLU=;
        b=RvMh9OsWcIFmFim81oU8oXHYpBjJyCqDV/AKMiXabJarxr4EiMT9j2YecbCLcERnn2
         idf+5RckijMxbljSEIGNbyScDviNZEqRcUpeIhLda5uMMDiNo9HPR+SgZay0z+3EfTqm
         c4/VN/EZUocozWwtveoALs0TIzjDdESqfg9jVvcym0NMkDyqy/+m2cIXtFa3V4SUCR18
         zWDXQQvKxwqXgSF2K4bAumQ4BMjyWqxFXrkeUA0kyTItQNJS+Lyph/9sKjjnEV+ySCXm
         1SJxBnXiTEsj6Qaa4oLIvi+qJ3vD146ZwFOb6ra9LgCrLSiYw19knJ695sbrlLYdD1Dw
         0PSA==
X-Gm-Message-State: AOAM5322Ht/X2rhOm0ew/Hkdm2JbydtPY1MDAt0mUH9yWuYdknEGKdOM
	G71JuseAGS87mfjIZXB0IvM=
X-Google-Smtp-Source: ABdhPJyNNY77fa4l/dhNRpx8OH5EgrN4atsgYnvVl5Ikc3EKQgt8z0pyl7I/YKdWY+Vjue2SbwcPIg==
X-Received: by 2002:a17:90a:8e82:: with SMTP id f2mr2455323pjo.11.1600143750324;
        Mon, 14 Sep 2020 21:22:30 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls5948458plb.9.gmail; Mon, 14
 Sep 2020 21:22:29 -0700 (PDT)
X-Received: by 2002:a17:90a:3b07:: with SMTP id d7mr2473572pjc.197.1600143749808;
        Mon, 14 Sep 2020 21:22:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143749; cv=none;
        d=google.com; s=arc-20160816;
        b=wQZIeevqumd9DJ5GJUFxWqORZcBfv9r4zXjxCeKH5l6vM5PAxF0BvdIQf5hMXxGIRs
         6W1Q6jeye3A3MH8jwXburr2OeKAm470CJa+zd87bzBFR+yJao85RYNfXdPOUU140l5Ry
         CCOnLRIHh+uKgAAtjtF6yLuygBtNRReReyNyM67o2LBTdokEUDuGnjijlhzmjiRgwvpl
         uiz/RPV5Tl8tV4/4KfiHD+LTl3Km2EarnftyIJvtyJlLKODUxDRA6aRH+q1Csa5TiSMo
         PHVkbhje6ZeiwQ9i9ejBrP47NACeUh/HQHqC9XCKFEoQvmU+HvpH65aOjfpGGdC4n0pM
         5pZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z3Tw9eXfcOK90ruy3aMeRyVdcSzDrEL/G+eXeTQ/vG0=;
        b=k0d5NtpIigs5L/GHvnzImpLBOmocY/PBJlezDM4nH4DAhkANGxOqZ4e4kJ6a7+ao3+
         sOlkQkTyoGlVW+/biBg0JH6X6KTTpUGkaZTeFu99aD6aWcOwr8iwryFBEC39wRRYdwlm
         rxTaZbBhtavRtpGETV3Wi1ERI/QiH1pqmBtnNBNpqrHknoqNggKUG0DuJEuZUcLWzCl5
         1vKEygmARnx9vOc1+g3CEkGQjyXZ40JKCAKUtQeKUe8HulhnmusCme+flZhVLrHbso9N
         0RXVSiZ3takSPgu7goecvJBP2ZYWH8hCV0KJDCrQOtuyKmdlpBtcU8FiJsTKzWUrtozc
         dK5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=rA27EO2u;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d60si1273238pjk.0.2020.09.14.21.22.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:22:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4MKGO017372;
	Mon, 14 Sep 2020 23:22:20 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4MK29044054
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:22:20 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:22:19 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:22:20 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMn028615;
	Mon, 14 Sep 2020 23:22:15 -0500
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
Subject: [PATCH v4 07/17] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
Date: Tue, 15 Sep 2020 09:51:00 +0530
Message-ID: <20200915042110.3015-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=rA27EO2u;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-8-kishon%40ti.com.

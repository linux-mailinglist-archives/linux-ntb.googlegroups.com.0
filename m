Return-Path: <linux-ntb+bncBCOOP4VF5IDRBPVOSH5QKGQECGPRYUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E2AA26F61A
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:44:15 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id m6sf1331112otn.13
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:44:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411454; cv=pass;
        d=google.com; s=arc-20160816;
        b=PTnt9dxiF3XKqfHiG30zAPYgx81i7cNYVu9UMBRX6PBXDil6ctRUTxqjh2P+acY0TK
         N6xgj0NCRLwI8ENRQGr3vx3iqyW+kLwLNZpq2vaurXm4LVfQsez4jawH8y9VO8YoN+6I
         ouldVQ/HsVOl1gQL87QFvWIQxM8aq1EFHHqzUV63byUs8ViPSBAfymg+u3NUq911Z+um
         zJIPMvTyoUB2OLTqUMII1eN2cNX0OPlnAi+PMv+t3hALaHsLKUUbD8/Gb8ncJgXEboTb
         b7Aqup7JWJ6F0/Cw1KtWvlmf7fwJGqVPLJqFaHqubeKYWi7MtdONOksbfVRSq3qk+JAd
         PFIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=opvO/lCkJeqY806NP4mOzNtsWwThKg67LRBpx71asDA=;
        b=pRfsGOMyaVfBsxk9dxdP67q43YT58/wM/2kp8KJhek8SvMxJLxfyjaHnxN6J1OJsH6
         DdLlYoC8PzpYFJsTzaUflHwL5Pv1i1qqhaVynkRlz7xZZA/r2cGMU/nshjc6XmRvuSC+
         uR80TFuzltykKq5Xez2698C5o3+VwCWfbmrn9jrtUtzGZY8hpxb/X6QhxQMQrAKZiaK+
         OKXPkKScaGOVmMPSCviXfNYiSfd233SjN969Qjj22HTfPjzwt/7Q0tGlmcsEy/jciL0o
         BxIYNHLzN88dhNiydv/x/KVUGHf1W6V6KMlCpN9eYivLhDwKWVLMWoQb3JEshXC2FtM1
         T35w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Qv1e0UXl;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=opvO/lCkJeqY806NP4mOzNtsWwThKg67LRBpx71asDA=;
        b=g1Vxo4Ike9mex4FUZHryyZ8R0qo4lRjmBBT9clmRkb6dtdNmbZmtv6cJ9SYqeQaAwf
         eTYunhbWZd5C74OSLAhHoozv92+4DjG/6d1vEsjg6v+m9UqB3gYslYigkV/1ULesXowY
         3GLPIetYgYhDHhbr78ntAa+bA4y5N0Jzq6zZOcyRyxj8A8sqpB3TGyIhswfEPPsBpQg0
         iIM9ojOVEOO57O2ipGNuxZg3RoLm+RRr2iOeZsVX5VcBRKH+HPkk1by/KUCjynINqKVz
         vLpN+S35u76hYCkaQbuq/VZbN3K5LyXBY7YWvK0qQLRTimXIKfou8wM+SdYjtxht+tUo
         P2dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=opvO/lCkJeqY806NP4mOzNtsWwThKg67LRBpx71asDA=;
        b=INSIWNvlz3KUmCWlTMh5I2CWvkdEgkl8DCBIqoBZwA1JEHRbryS89m4ZNsn42CO9pR
         sWVYaUDeIHnSV3FdVhCKt7tnGv5LkdIlUDcXUcSJV/MGRAkfeYh1YlzLtY8rSJ5Lbvvw
         p3bp8EbsyzsN0y+y1HAKhTwEPmQp0U1RZe/GBmP6DiqKgttx1oFXgbCAtMT7Tpmu37gh
         MbMdIddAOrYnCOlTD5c7tehlk3mEEsE4abe2lZdDHNg9rn21fG12id9w8AwEdJRKbb/l
         Gl37IKytQwSetXSCOnGKapSfuK+UpcTCqLDfyQgENiaZyGfG+On6AtWhNq1zsae/a7Bb
         DiqA==
X-Gm-Message-State: AOAM533fE2/SRkxkXtczKy4bBtngUDmruunOK23dJyCPlHLxigZMWi7S
	txy0KTuxFnmkPCQ5pr6TYws=
X-Google-Smtp-Source: ABdhPJw863g6K3N7BOtJikfCHjh8YJ08rAHSsgOd1vWYRGBHJnW6fPz9XFg8l2YUXwZJIoCp89Vauw==
X-Received: by 2002:a9d:5550:: with SMTP id h16mr22337462oti.157.1600411454370;
        Thu, 17 Sep 2020 23:44:14 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls1059257oic.3.gmail; Thu, 17
 Sep 2020 23:44:14 -0700 (PDT)
X-Received: by 2002:aca:4b95:: with SMTP id y143mr8893344oia.121.1600411453948;
        Thu, 17 Sep 2020 23:44:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411453; cv=none;
        d=google.com; s=arc-20160816;
        b=sQJqd0rTPjuA+MIEkrX/rRVJBmuUTyNIMAkTgJMYNO0We5tgGrZowFoERb4Y6Whh8L
         op6/rfurYblT09Akakk6wto1oRGLiww9bDON55goBn9gqbftedm/539cqb4iacyDq3EQ
         SKJd9My2D5cAtNTzovVP1l+nw7VEu5hUeYL0/2R3oq6BtfR/4zbsnxo/7V69oT7H5h87
         cATzRDTdiIR0e8Uw3jnS6l2keWF7SOL1EuWF5He02oZdJAq8vpS2hzkTBzmGezcqGEmJ
         srBeA8PNGo8Wf+WdNoG23eYIT2PBzvg960IUCW8FCqybamwkjDxj6YVdIzK3TcyiMp9e
         PV6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z3Tw9eXfcOK90ruy3aMeRyVdcSzDrEL/G+eXeTQ/vG0=;
        b=JXFbQoCuvZh7ay2dP66N4OAEdA/bomE6FZIWCT81ibIhasUgFtFnWKUPWHh3rbjk2+
         a9crKc+3zFki6ckLs9rhABb2Y+AgjM5LM+7g4xD5SFyJ+ocrVaG9lbhAS21MuANLC+Vo
         gFIch8PO3AGBr0Dozsl91SWvIID36kTGjKLmYfwxBJkz3a2+f3puP+ijDPi+XDNTjn0C
         c5Z+7TxSovcpgb5W9yeT60eJLRcwnA2utkijIfzg6WdFz0i/ehEhK8EnLcgE1yd/orNp
         yNjnYlLObttJrUBj7ENcDAFF0oFlfjv7PHHW6E2vm4Gj2ZXDKvH/l1B9DS9vthjwcSOy
         0DRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Qv1e0UXl;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id q10si211249oov.2.2020.09.17.23.44.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:44:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6i7V1128103;
	Fri, 18 Sep 2020 01:44:07 -0500
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6i7B5110440
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:44:07 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:44:06 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:44:07 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCR094595;
	Fri, 18 Sep 2020 01:44:01 -0500
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
Subject: [PATCH v5 07/17] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
Date: Fri, 18 Sep 2020 12:12:17 +0530
Message-ID: <20200918064227.1463-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Qv1e0UXl;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-8-kishon%40ti.com.

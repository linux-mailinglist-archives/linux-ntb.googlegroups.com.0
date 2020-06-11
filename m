Return-Path: <linux-ntb+bncBCOOP4VF5IDRBQWYRD3QKGQEISMFCNY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id D44621F6896
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:06:11 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id 67sf2561334oto.14
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:06:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880770; cv=pass;
        d=google.com; s=arc-20160816;
        b=dpQzul9hWmRZ2Wv/2vpZlrW9QmJvdfiobzpFYCHexepIjH/EozjZ3ZYqG8FV7D5kkw
         JJmbJZEdo1taef/0xfISqpnJOQzgwBINaOGIOEOe+tXn760X/J+2yxGrhJPvuNLVAv/R
         s3Rg7GdmWfrbm1LDm989nbxUGpsY0SHOLHUQadhbLdHeLLfdaDXjjhyetAjHvnXRTDBi
         7g37CH2hiwFaCTEfsRvpKrRPPfPm5sWdHp7fhnxY5uIyAF4xqBrGogWZzaR4TACAI7PD
         BYuDKn89nI4kly2Gv3fgnkXWM8s5oWGUXmaQSWML5Cjyql1HcuCKYifhOrRwzgz1XnZ1
         +x9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=pLcDgMyPTl6zIOk3xxxgOd2cykBG45KwfH15jHmgtUI=;
        b=DfqrIVlWVLEnt3lXRoKUa64DPwdAkfJqTkmCT6G8C2cJZcCU0E/DgMWo5wkbR0IG2v
         WUynYoCzEtHIM3C96SzVHz5HN6RfIj+Fw+w/GypryqvZKFfByVEBuWAG6I6T9LF2Ivb6
         VFPWI6yTCKWq5AgY/Q/1VVpvM6+i9wJtqhPrrrYvQ1UapSeoKuuy+vLI4jVkLp6d9Mph
         BfDDPi+lbMwyadTqOO0+vOEMyCa23S+JkG3SjQWL3QZwIRvNyvNM0R1R2C9iLdk26qIo
         YRG2NBq6BmRXEp2OsRARjwqXjIQBsgD3l9kE6Ej0uvLxSZJeiJ26HhxWYQLyXTsOZSDU
         +s9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=mUGoF5rl;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pLcDgMyPTl6zIOk3xxxgOd2cykBG45KwfH15jHmgtUI=;
        b=Ba/CIhvVLpVA/gchkMAWVFU4sajpNuzMwIMvDe502F12uEClP1pSrNOd0zkLbe1t+k
         cyC1mxjjsIhCOKpjGBVKn+OtWej6WPuY5hMc8VGK1kZa5sRkNWGHaKflUAwDOOs4QnyQ
         9wMGA9s3B+fvRZoSXEwufV1ghYBcDdEEP/RX/IDLFljdmo8knAlZKDQ1jK3EaHZSguo9
         4iL+XWQAdgWgABRb8XfNReHomNs3pc7QmTExwg4c4B5JVGyGzjmnpDBIQurUMspxHq1q
         02JJ5frbmuRCgcV49N+ryvTrSVy690IOVm9n6g7hrOzbCVSd0P0f7hAks3DycQ6wvKO6
         xU8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pLcDgMyPTl6zIOk3xxxgOd2cykBG45KwfH15jHmgtUI=;
        b=RoRwVAlf94uAFYLacPhLQQemprxPDOfAW0vKN6slYsvAzX14TKWIBgvRUCfZnNCgmv
         DuUYt4dwBHkkIPR5rlg/H4vSGGAWTl+wsXQi8/bunktpPnMjwwy9CKWKwBGKopgMmrCC
         8oqt+sy+adOZ89HRn4owHFnnj/IrECclGfMFlh+LsNmydkKk4sY299CokP9Y3g1KTfyr
         hu/4pGcnmEQg0ZqVGS8hkMDPDwoocRozCGNQfEPQT62ehvlHwcnXApsUjA1pt0VQ5G3e
         he9eoWPoSE96J2lVI3sN8jFJ6hNH7J+K9Wf1JiG9U5uh2pO2BSKMSUqwZX/FD6fVI/jX
         Q1vA==
X-Gm-Message-State: AOAM530DjwJhtxKzVu9xmhf0KDrb64/yEVDcQG4uQbRhBreBFwxgseIY
	uax8CYdruVQrbZ4+OxVwvus=
X-Google-Smtp-Source: ABdhPJxKTGdUJrFP0OTIBQv138GUh3RpJvMHS4RM55EcGxsRxIR3GqsaQjsLOT+HoikPrsVfJ5HB5Q==
X-Received: by 2002:a9d:4a9a:: with SMTP id i26mr6119771otf.227.1591880770784;
        Thu, 11 Jun 2020 06:06:10 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1db7:: with SMTP id z23ls444741oti.9.gmail; Thu, 11
 Jun 2020 06:06:10 -0700 (PDT)
X-Received: by 2002:a9d:4c0b:: with SMTP id l11mr6853267otf.139.1591880770403;
        Thu, 11 Jun 2020 06:06:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880770; cv=none;
        d=google.com; s=arc-20160816;
        b=pl8wyxf3FJhJ2sKeqacdSW17eKych284MeOZja3Bda/kH68W8a4sAlKxlIhxp0ExAE
         HLsMAcIrLlDkqcJg/AcJxIaeeCkNHQAApovl4fKZu0qZ1IIfgLg0KY8hx36LYIafNSgw
         NzncauhJbDMoGsLqaNmC6W/hoK/aE6PCkgZA3XyuELrLVaoiP6DP3XON6PZGhh2WLtBF
         c93H0VIzV0vAysjlZkJz7fwTk4x9kCCxa1Aafay1GyDGHrhNRzcgaCH/anNaiqo1q1tG
         HVTc6aH3DxkHfNaxq5jFy0KuBuALerRDmHLY+QITUnVnNWKZWw/cy+QtXRVqjrIkm4sD
         yg4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=XXdqR+Fdytk1/Jh//r5sNF9/Y1S4Ci3Oihg7XKdxZMo=;
        b=ZJVqg4FesxIbj7osLHrzaRiFROoQfr4IlpqFJOGoMmPsAELjNYgNQ3vKINiU5j0I4b
         rTMRF7Vl5+n33n2z6/wPsy4h9IO0IA4VLHAHNvleTNemsS8VkwUURr/YBiyAXtptvXKq
         x9syf77Ho8QzDZUuIQshMsHfmRh/6iX107KMWPj7oY2ScrzAqafCc64iwRLsJ4XVff4R
         8oTa/9qyZKyQkZr1Cwsh7O0PL6LQrCOeyIXtnsxnayP+VVwXEjLqaGQcMrN/wgC1/c6O
         cZZBdYDVrR4Gy9rDaVMkHBqAUqZKp1D+EY9rXiU5x6QIWFX39pEFggrEMozUs/M5R8Tu
         YSeg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=mUGoF5rl;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id g38si133919otg.2.2020.06.11.06.06.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:06:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD62J6083676;
	Thu, 11 Jun 2020 08:06:02 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05BD629f081037
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 08:06:02 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:06:02 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:06:02 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZ8082585;
	Thu, 11 Jun 2020 08:05:58 -0500
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
Subject: [PATCH v2 07/14] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
Date: Thu, 11 Jun 2020 18:35:18 +0530
Message-ID: <20200611130525.22746-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=mUGoF5rl;       spf=pass
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
 drivers/pci/endpoint/pci-ep-cfs.c             | 148 ++++++++++++++++++
 2 files changed, 158 insertions(+)

diff --git a/Documentation/PCI/endpoint/pci-endpoint-cfs.rst b/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
index b6d39cdec56e..7e505bd66fef 100644
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
index 0cd02caedd1c..67a6d922def2 100644
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
@@ -410,10 +553,15 @@ static struct config_group *pci_epf_make(struct config_group *group,
 		goto free_name;
 	}
 
+	epf->group = &epf_group->group;
 	epf_group->epf = epf;
 
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-8-kishon%40ti.com.

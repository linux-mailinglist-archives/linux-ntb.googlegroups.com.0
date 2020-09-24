Return-Path: <linux-ntb+bncBCOOP4VF5IDRBN6MWH5QKGQESXI4OWI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ED0C276D1D
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:26:16 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id j9sf626148vsf.5
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:26:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939575; cv=pass;
        d=google.com; s=arc-20160816;
        b=xSdqzf0A0XhO9s2HR8y0OIXmfgZ5YyImnACZFzbn1bXro0fVcECMxka9xhBBn0LxPa
         yV4RKEeKTrKK2iUmaTXs/ZFcSxi6aoJhxmHJGSEGHDHxTgr0belvT7HSPOITQ1nxClPx
         e1WuAjKtQQtr7Tvs1k2+Eyszx+uL5FWJPFG+MVlHOWQiS7D0BQs9ioW/qzQ5Nw7sAL4Q
         JtP+Dc/4UzvNWdXALo68c02igDmBMglX2IrBIv8ntrVMjNdlhoRNOidPDx3wp9BCU2Wm
         9u+RMYJR+FVzP2PIfGesWHvK/mJ0fn901EecAuoRTqpNBwtpEfSV8gUYPSioxGbLnOa9
         GKqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=T9Y6q7DkRx9AZeBbfsnCXTD9JZg6zbSzKl+4ng2EQWU=;
        b=oHSeSy2UwXJvkHXxfrSBLnvgPDyzVmewKhisIPT5HdRcQ7CS4HOazFv1Ude2q0AtJt
         8wHzxWLyRy433EekJ7cNK5+kJvIu52VRp+Uha+chBBkO+bAYw0Sgkkw9sVgJVsa8DO3/
         yV+MPqPQoQVSjp6jZt0ZMEwg/sGb6I7Zblf+4hS+BJYe4KCnPb9AVuq8ldQ4eu20fUCR
         5ayIXKP+IcTD7zIH8M8r8BY78JICNf5bv4wChHztwzo0eBMo3aMXkfCcK3dnveYeEvQ/
         2Vprd3sAYU4vfIc1/yIYGn/9b8qS7JLP550kZbbv+ds1lBMPHI5wZHmYzgU1lJnktpl2
         A04A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=twBDWChN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T9Y6q7DkRx9AZeBbfsnCXTD9JZg6zbSzKl+4ng2EQWU=;
        b=FT0poRL/FqHxfs0UId+F9i0Jzw1bmqN504pNMMIeWvuqzLLnXPPOP5eRbmzi2A/47u
         8lvLNYuiy5qUiLKrl+9dyqmL9wTXBSohQTmt5o2bjPYvC3NB9qjaGE/1xtoYwpfsj0rk
         FMgy51M7f6lG0MG/9yW6lgZtCI2yIeKZ2/b96ZP3JVaS2/+axo7BQ15PrRPJb8N8LxTC
         +ezWyvo4NGgKGx8X8hckIL4RLBKnkmkBAeO9sID7szKSnBCek3sPzxFfE13NR4ufO6F4
         gxmHXNvrGVGkVTSfpH/wCK3tC3ObmeTzBjSuYtRwc/09Of70gtlGw0RSHu87Z0SUegZx
         hJrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T9Y6q7DkRx9AZeBbfsnCXTD9JZg6zbSzKl+4ng2EQWU=;
        b=o+vE5e6Ad5HGj10xx+k3qA/kR4QdgL48Epsg+1wMM0q02Vlr2NezlcugxVA2m9Y5oj
         19DQUQfxzEAYVmBykVzMR3AuIkijrqOlf85KK5TG7ud2Jhy5Rv67hIYQ6PRXBOMqm99w
         bbcaAIufJFS2C50KHmIAzQIhkv0tMx8AaK8VYb1EmVcuzXocOWah5/c1zJlH30nz6WPX
         g62FVqWIKs8K5GpbYhERC3AAWjVyIMrVqhFkoIWuM4aYCQPaqPwZmVn/3Jp8EOvFGRce
         BkPAc9wlI8kBdIJFh5gR7CiHMCpx4FidcIlqujwhz5Du/O+Q+w/C7Uxndc3SSHExz+Wf
         D+2w==
X-Gm-Message-State: AOAM531yzRZ/mAbD6Q/U+nS8bRhFAtxOT8fnthxD9W+G/FzB0KIWqj3G
	yXeR7BbIRU1zI1XCp2CGqr4=
X-Google-Smtp-Source: ABdhPJzGryJMe4z553l7pjWyS39ah3WZ17IwDnM4TlHhy+cLGA5XVMnfKHqN2ryK3rs499M1Rhxr0A==
X-Received: by 2002:a67:f3cb:: with SMTP id j11mr3041196vsn.60.1600939575137;
        Thu, 24 Sep 2020 02:26:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:16c9:: with SMTP id g9ls213467uaf.6.gmail; Thu, 24 Sep
 2020 02:26:14 -0700 (PDT)
X-Received: by 2002:a9f:366e:: with SMTP id s43mr2245118uad.138.1600939574617;
        Thu, 24 Sep 2020 02:26:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939574; cv=none;
        d=google.com; s=arc-20160816;
        b=0p2Humz7ftrzocxhYkNOPtluC5V9dpqzmgW1pG13B8IoV4C2j2UTRBuvJl/JyyadOG
         5oV39ZkwVuCtstEPd+9wMrb3TFty319j8OJE6hs1jU7VkYRkXaSDBy4HxzlB6IOdyHfW
         z+59+H29ps1XsBqPws3MhcvAHl4LpnnPaIfkvYg9Tdn7rBU4Od6CsXHdSsYxvQsh6Lic
         oUW2aVr+MTKv8glaUtkLJa56aB5sLVV8fK8qcjh0teRX4SgAIg31coXadXe99GqFIeTM
         Ibbpd2fLXOz2s5mu7ZYYYs/go3rI+CzlGDkPoqv22DA3gN4/5rJBc8VuwquC2Edj/x7b
         F8/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z3Tw9eXfcOK90ruy3aMeRyVdcSzDrEL/G+eXeTQ/vG0=;
        b=D0+3kaQkVMKcmWRFcpBBdRnt9QNXPWeG7rbfVmOr7g4PYpsr+Ksymu2x719Lfu3qw6
         haJnEbNQ2nhvSqpGxg9CN1WZRl02fiYIei2YHDUqgl/arfO5zQ3aJ3sxPJ4rHhFcRpyx
         qOCm3R5a2z5jyhUru23nxTtd9ZY/U2LZRiVJ6P8Mrop+Oh1YgXb3aFpUdTKsl9FW9ag9
         3dJEGQjIdrH0U6kWyPPhaz3EzMzfjlAO588jdMAC0t9BxX32bILzp1fDtsoCz8jAKmGq
         Yr+ZjNPKAub4O46bHLP8iMu4jZH5MQNt5NL9dmNtSfObd+nquWkKPrhDrpfJesc3nyjW
         L+fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=twBDWChN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id x127si159690vkc.4.2020.09.24.02.26.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:26:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9Q5ht117181;
	Thu, 24 Sep 2020 04:26:05 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9Q5wL069119
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:26:05 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:26:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:26:04 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POYu011000;
	Thu, 24 Sep 2020 04:26:00 -0500
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
Subject: [PATCH v6 07/17] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
Date: Thu, 24 Sep 2020 14:55:09 +0530
Message-ID: <20200924092519.17082-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=twBDWChN;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-8-kishon%40ti.com.

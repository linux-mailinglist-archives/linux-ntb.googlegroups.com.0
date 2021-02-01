Return-Path: <linux-ntb+bncBCOOP4VF5IDRBB534GAAMGQE2GB5EII@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E75E30B0FF
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:59:04 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id r17sf9174086ooq.6
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:59:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209543; cv=pass;
        d=google.com; s=arc-20160816;
        b=x7G55ARn2UIK/ylU9VwvKPKuwYkHzI599YyYFxtEGVnmLeZd94onlhLeGNU3qcT92V
         pDFnhndL/9TOzLhNYU5ht9oJzdIVpvFb/NnnMY+4wM6CcoB+WlXfpAyy1Tf9egf6SjV5
         ptWevdZ1krxmVpq6NMVfBBeYpEbl/lJlRT1YmmASwwS4SwGAw/iJajRhsEosgOoyj+KX
         BAAXa/XQ/PqgppHHbDWzwgpZNDnT253ioXE58wphBCJfHDp3F+4HAwN+/aRTJx/rTf2k
         EAFFt0QI4TwAakM8UkAMoUCifzgAhs0AXrHgaVv8KGerItPClu0CuPEi7o5NVUBYmxNN
         qPXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ySAleNGRE41g8/aWgx324bcqgpoV49C1rHxoJpnhnPw=;
        b=FWgL8PNJP8An2//1c9l+yGOKpsP721uNvBT5MbSJ8xq8gDVlyRCAS82xNPVPVyAetm
         8FjUctWT8wWp5i61hBHWRhQ1bz0sXEfDe+hLHRFuc1RDQpue4FdGGPCpzLNGHjRuCWjZ
         yYvkRzPeHco6+yvFwqpUP+cV37baaXk+AgjlBdu7NeStenPUXXGtao9FAasEn/mRDcoP
         J3Qky9mtQ19EDQeCrnHFz1l3SD1xqZE6L4WjNVpR0BNH+hcHeu0t+8Q3hsuEKCO2t0zJ
         O5SQzQI33o0oe2HFcAtRXjVOsLVEEpEeyut3Rp3UPlEy7qqBgMG5Q7A4knR7YmZyyvWZ
         EKqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ioMn4pqa;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ySAleNGRE41g8/aWgx324bcqgpoV49C1rHxoJpnhnPw=;
        b=LT3JypeNm4Ekg9zc4G4NLJ81Sp/7xgCKeIbjwJsYlT9wuQiUN8sjRBfFrmuaOM6kQa
         XK7Rl1At9+nwAb+crSrfnBnnX1FRxWuZuHYVx58u5ZUmqBqVYigPFh02YUMHWeZAJkkW
         1eHF7cs2b4Jncfd6tHgUsRJyt+gywqR/mTA3yog2+nHQ1EBcDPifm6wCadvfCa4Fxlgp
         knI4AxnVO+p8Tx+ey4sdvd0GM35cHnqaClqSWdgYne+NDJAuvujukcq8RBae3Zs/fhrP
         ykfNCo9RrFcbZIEq8JsoHaMqUSODPLiS/ia4WWj7cBZckjlRVnLhHrJksGIIwT52XVHX
         ZT5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ySAleNGRE41g8/aWgx324bcqgpoV49C1rHxoJpnhnPw=;
        b=D/L53+Fuz58BRA84uoJY+MrvbJJI07VqDHT2v1o9q3zH4EyKJ0DptpQBwzZM74tIob
         Qyc/kmNfkO4AbN/A7xvYbGSN/L45lOpBXxiOP2tc/CCZ/yT0uRFs+A2HTu+G3OHwWvwA
         oHcNuyBb5aWRLMThr+yhdTUUUSkrASs3yHcSg6Kco4J6dxzXBP/lwyskekeoOX0r9T2W
         s28Xw2Dbemqg9XeZpLhm0dpC3/mrbBLT+5OmOmcwCCdSGdT9Up/AeHdFW0NtXcVS6bG3
         hy0wFdhif6Srv/3ji0aTW0xFnfSRMObSfoWORDIywgm3lO163tTvaf2uTQQAmgD710o+
         SJyg==
X-Gm-Message-State: AOAM53172XYfF9W0OvM062LTwV9bAfLWAYyQOx+Sv3dtTQrG5aDsegxk
	I62mOXjQeYZYGfvPGquKc44=
X-Google-Smtp-Source: ABdhPJwgiYrTFBi6HQT20pOMei4xH/ZxfUC48kPeuaBJ8QeU/ZNQmzcSDmoEBHVBS3b2wGL+dKGVOg==
X-Received: by 2002:a9d:4d8c:: with SMTP id u12mr13011511otk.186.1612209543612;
        Mon, 01 Feb 2021 11:59:03 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1e4a:: with SMTP id e10ls4262154otj.7.gmail; Mon,
 01 Feb 2021 11:59:03 -0800 (PST)
X-Received: by 2002:a9d:7b4d:: with SMTP id f13mr13304314oto.257.1612209543252;
        Mon, 01 Feb 2021 11:59:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209543; cv=none;
        d=google.com; s=arc-20160816;
        b=lktQG136NByR3R+g7u+X8H67rnIonQojSSs/Mx0bLHzwkBESeyy63jUgYN6UICnyne
         nExBGf1GMGNtElZL8PzulRpmkYt0FnBNN1zouHtg0zowKHrMZ53mn7y7d+oFrDjziwEP
         5RhLy7PLT6LTWcRp8L7UIaf4JQwt+pQ0yOQ8CTNcGDhJyjhyhjfiO0dF9S8BArXsTE3n
         ju2EKFoOjtZRNEk1GGmCaCeYm7mgmaAUL7YteVjNryoNLoTwEAz+rnU4Y74DUBA/GjBJ
         nyoeHZVjLHFH4r6T+5VWfPFDpsueCKj9yqky5MQnueoUGDMbGRu+aWqhm5e6oqSp9KLX
         xwVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z3Tw9eXfcOK90ruy3aMeRyVdcSzDrEL/G+eXeTQ/vG0=;
        b=FLcXJc70gn9PtITrYzIEJ5KrgEBzl2uX+eNQQdkV9CBIm55/FrQe2ndo3NTYqFwWEV
         LXchPUBRD9ChEjYIVumdHWr38QooyzRET9mVtJxDLiGg/kmcCboFYfiS7dLGSHJ7a1ME
         g0enB3/AzSh/vVzzmKVHQ+rrtlDOwkwEqN8ufZotq1+aTcl7AFsvziMVOHW8OnpqYHmE
         Wg18nCkUpHC9GSDt4QeOh8OCNEoQC9PEgHEzU8pjcYTuCY1t/VyyCIRPf6U8/ztiayHm
         iIqxMPWTNvLFetBRM3ExvRolRHDdNSMmw0zKmfh902AKbq9ZxFLgHnK9IPUOYhYpbLQC
         hFhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ioMn4pqa;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id x35si316866otr.4.2021.02.01.11.59.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:59:03 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111JwtTj023917;
	Mon, 1 Feb 2021 13:58:55 -0600
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111Jwtsp100974
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:58:55 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:58:54 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:58:54 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQe085814;
	Mon, 1 Feb 2021 13:58:50 -0600
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
Subject: [PATCH v11 07/17] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
Date: Tue, 2 Feb 2021 01:27:59 +0530
Message-ID: <20210201195809.7342-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ioMn4pqa;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-8-kishon%40ti.com.

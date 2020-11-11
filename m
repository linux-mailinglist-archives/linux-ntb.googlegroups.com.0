Return-Path: <linux-ntb+bncBCOOP4VF5IDRBGUKWD6QKGQEYZJG37Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F922AF4EB
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:36:59 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id d6sf1147004ooi.7
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:36:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109018; cv=pass;
        d=google.com; s=arc-20160816;
        b=F7N5EDGVVHod6sAU3j+38wNbP+GYK8MUIlXPccYHZ9CLCwsJ6T7L9K5oGqpRt80CYa
         JRKOQaR4W0DL+Yzc1Bov+o/inEbxcflPbo8RwnRSrJshHYTOv2zfGIn+7OW8OkKTVFib
         QrUWsAPnEDJCsgPeQaX8ZrPuR2iEx8hK19WoCA37q+91eqzrJrlotkMa3HDEl0QDQPhg
         gHAUpmJIELszsgWNPbYRYZa1LqE6JTrlMOtTz8Rr9qAfLUCPdU+MxeI+HwJJ0q7sJUxV
         brpHJJUQiZ/JnbDBA2RMFUZK2OFfQVHHDGkztJhOVmJ8gSXjp5CwasSVloS14vI9pxEF
         zJcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=odwJwHJ18djN0pHL0bl6WqehyaDXTtQBZbrIaBZG/6k=;
        b=HmJ5gBtYcVL6AyTzRUj2l7elZE0OvYMqS0Q9TVuvdJu+zTgfdxqBh4BxtYpCN+jk7q
         9hCYDVeET3Z57IlJtOvKaCbLI4DIO4lU/xUiMnI+IYMI1toTM0jy+Ohog7erBmJHhJh7
         nFuGbiXOAWeM0qtfahzaEoRS1zyapzSavwwxX6RoRtFXn7LoM3sb/i3djQV/9tbIgBZ7
         KOrTeAdsvLivQkcEQsG7qNQ3tkNX2FzO1b31/f+hUaO3IOkkuTU7LnzzXMENSY84LhTn
         U7B9o7oTwlY+j3sFwGNJmb6rs4GvZCgkTev95rLbvzPDouxKyg3M1ik0TdyywuTzLaQm
         p9vQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=xZnX7zYF;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=odwJwHJ18djN0pHL0bl6WqehyaDXTtQBZbrIaBZG/6k=;
        b=F7QsL2/gzWNUVa6uLFE3Ok2i22xg8BbE7Sa55COgl2ZIz1mxWXbJu87S3w4uG/Esb3
         WF1WRbuJy4x8zDLWmdC1wEyegubh3jL0BKvMGA7z/rRQWFJiSbXHh+5s8D7uDXyWozaQ
         8yLb/0cKXw/k8xl4cqEgp+IQhoOxkjRDU5YH1lwTw8Gxf0ojZUxeOKiGxwGg0IbuX9Yd
         rXrdVM+TMQsd51w2rbqIiYvrTivIP5E2g4+Pz0adaOtowO380hGkyWYVNOFjOkwN6x47
         QJBpqE98jl0pPqWhtELj49GPv31r2dutyR6G0FlkMiEQDbDE1vkN0lzgfpwhqAE3kOte
         fFOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=odwJwHJ18djN0pHL0bl6WqehyaDXTtQBZbrIaBZG/6k=;
        b=CeX5v+kL6vIjl1v7dQF/zJXslLGOq/EqPFiet9ummUbo2+bt/vy8FavfEi+ynGc9NH
         Y/h3K/f/R05JP2GOIN5lHf2Q+QzNHEKiuZr4JYO/3H+A2PyzOzJwj5zbcOoNXI9cF4hH
         qOMJMapG1iw5mTQCBgLPIB1ThD9ll1MHafiTwuETRSFDoZalz9nmTPtAiB/l49cBwwsN
         CZwXWxeguK1UsJ7fr6h5b8Wm3n3tikeHw+E/LU0eJ2SQVRbhtd8l4/x/KKiBIlw+KqdX
         SVq5o86QQxExv03luEOzhb4wRsjlRDykTRuk3SKUb2kbKwPUfjznAWm7REiQad2daLTi
         6cWQ==
X-Gm-Message-State: AOAM531nX0EqgbrEgPK7YXPvIG9n/CTEY+1eyGjkUCxhVI5yqFhFKtKV
	n1Ds5AQ/R7f1G+EGTidplO8=
X-Google-Smtp-Source: ABdhPJxQvUwhFZoxcr2OBwXQS+GBVy3MJDLwxvT61lOsU2895eO3Z97PvMw0Bu5kJ34CjM+Fu9tihg==
X-Received: by 2002:aca:5d07:: with SMTP id r7mr2387254oib.87.1605109018096;
        Wed, 11 Nov 2020 07:36:58 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:1c12:: with SMTP id c18ls2631736oic.11.gmail; Wed, 11
 Nov 2020 07:36:57 -0800 (PST)
X-Received: by 2002:aca:3687:: with SMTP id d129mr2652722oia.100.1605109017730;
        Wed, 11 Nov 2020 07:36:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109017; cv=none;
        d=google.com; s=arc-20160816;
        b=klatjn3TkpivWdJbhHkjgka6u/s9n6lymbojm95l20mpOs4XRbGCMjKhHuACxB85h5
         DWkrVI0skZucQLnIXZvc//8bZ08U0u0y2PYQE/7aE1ozwv3th3V7X8ig97HXuHPHeGms
         jPVhukqgeT+1rrk4MDbvNRHkofRQasLyHmYQPPJdGBML7mhymgseEfB1Eysn7ly4dr3L
         X7JUPib2qlin48D6SjGRalCZWufzLrFMIBVmx/EGCLC7myd4n0UaxAXfDikMNGNNmmBt
         9MzgHJ73GD41iAlCXdKxvwE9UeBvn+k4Rxk7Lcqb+R8Fcf3HO8ClEYaHUfGCCUlOAWE9
         QlYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z3Tw9eXfcOK90ruy3aMeRyVdcSzDrEL/G+eXeTQ/vG0=;
        b=pttnfMJvfHxJCyFxYekS3U9NcOyG5Nir/gtXMpzLUkqqyzs3hD9rNM5CglE5WJatVG
         GnWecdmAeCAk4e95Q+SCaVHe83e0FbANiyPzEsMJJP+/hwi2UVBvbUeyrapTsXgCapdQ
         VR12Id2uslO5if3OUcjizrV8RNTa8xOz3DcBx88D2tAJoVe17e+72FxP3cHQ6CGUrouX
         U46TMVD203pfXomC11phFnZ60aDae2jzbwdFwpvJOtpobRRKijgyJQ8qWlfinFO7tvSM
         oFAdwFGlJZIdwWrWmhA4aYL7FwoLzOx/UlDdkmB7HomK2MeMHCsx6wFdkTJznZR8rV+G
         M6Ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=xZnX7zYF;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id r6si356247oth.4.2020.11.11.07.36.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:36:57 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFapjV124959;
	Wed, 11 Nov 2020 09:36:51 -0600
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFapQ1093181
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:36:51 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:36:50 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:36:50 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa03w042109;
	Wed, 11 Nov 2020 09:36:45 -0600
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
Subject: [PATCH v8 07/18] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
Date: Wed, 11 Nov 2020 21:05:48 +0530
Message-ID: <20201111153559.19050-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=xZnX7zYF;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-8-kishon%40ti.com.

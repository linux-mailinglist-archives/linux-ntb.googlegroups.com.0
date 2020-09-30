Return-Path: <linux-ntb+bncBCOOP4VF5IDRBCOM2L5QKGQEWETJ6XQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id C4A0727ED3A
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:36:42 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id w24sf895249uan.14
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:36:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480202; cv=pass;
        d=google.com; s=arc-20160816;
        b=sqmXBkxX5GWXkJ5blGY8k/8K5A0i/Wm5o9bJO1if43AdwmkuqQI/O5U8qTVu92dqV6
         GmwHti3bL5kWjC0SKMPWADOc4CLFHKnZlUjm9AOfDYEfc0LKAJkAtT2kFzeR7vdEj0Vy
         C3ZG+T/qdLu7Be4i28ZUan9nbuSuXPoENBpbvn7nKp1XuqryIuDQaN1easy00RmfkBQf
         pHzLm6gZBK5atvBk0Ux6jXsLfFK7NINZydTHMmHTwbjIvKx4cacygWZJ0kAFj4MAzuYK
         lTk6Z5BjzYFtfYLG2ycbnbj/Wem+d8duEscGOG2LC44YLxW3sEu7Nu1na8URK/EVmei3
         qf+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=vxQX6lqHoi4tmhE01VVMZSxHaJ4P8F5CxPp1jUDuWpE=;
        b=prfxvJPd2EQok+x6rbCV79RIl3wZkTGCv6XNCekY/KEAamdfSNBhtYK94s5ODpkaG7
         jkYs4egO0Zm2hXHCHPjEtMHIHwZfNbPJMDFuvAUxKlvDkkZ2CjnIJVjpMhql7jpIzvBB
         2RKeDYePisdLhlhgXK1NDFR8R57bJGHZsmEY0+cJ8H0inlVtdOP4Nhf6HWT2HWTDfNBd
         wkYxabesPGdPjfFxVkvviui9HqUYT/moB4AmilqEsIQ30iTZNXaDAsU0CuJScPTlKIqQ
         ZkagUMI4yhOlGgUSwHJUb3jtlCiXSVCXyqRHHKnzjj23f7p3ey0atnvLVFQBTb6iEYM4
         enkA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=thX1t1Tx;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vxQX6lqHoi4tmhE01VVMZSxHaJ4P8F5CxPp1jUDuWpE=;
        b=MWAVwV3Gcb16hnPxZAIhjUQpOuEkR87jXez7ccpXGms4u+xgOVqxz8wNgIFhKnIDuz
         c+L2+IvnWZ73gIKUiA4O+nT8bNIfPE1BcfzxxO3lS1gjpw8Nt2KBUwd7fFuzv+gbVYGH
         tfE3firzT8uL7JJYtePmGYHlsHgIAnj3JeN4RGxMpWm82hJ2GGDKYPfGL2qMew/pyL5Y
         4/SJOS0hd5vLwlY1l4ss/RrXrDF5rru95Iyat8xBWUG1A9cqjg7052WmjmPJWQU+6pSe
         Ki1H+WdwH8rSGb3asbIkqRZivLhon697CUK30AfaChiCuUXmyTQLXvKJBL+9s6/koi62
         k+ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vxQX6lqHoi4tmhE01VVMZSxHaJ4P8F5CxPp1jUDuWpE=;
        b=omV7LKZW87VtdkrLuFVPzHVQf06Boxgv15COrpq+5cASXH/90CSgyOokBtYR/wWL2p
         pXiWrFwyr+Yc53zi/TrTtqwK2c7E0cXN4lkypQkjZZnLwx0+f1PTpUqMSH8hYhVeTv7E
         O7e/l8m3yIyHVZ5J0HF66oxFXP0bMLi1uG41pSAZPYzCHHR3kUvvjJrKgbk+qFpMXhFB
         VsJmemlEbR6DyKRIlB4lq/XIFZopKpI2tFlx8m0HNVR5w2bPI0nQ/nv1HAoZg29W20gK
         Klu/7Zr8BfU4JruK8mDTKVK/B0C8KWGoyVeZ02NLY4aJINz1sOOKSxXbPb/5sGUr4NQD
         I88g==
X-Gm-Message-State: AOAM533NgFgoS757jkpsEJUnJfWhrxs0t0pELh/cQLG73qOP+Qa/3vO5
	bvtzWBiW06p5N6aZau/zuqM=
X-Google-Smtp-Source: ABdhPJwdVdW1QVMDdw+KCnIJozsFCp0kMFAVzAAGGDoVBjQHHLvGRKsQa0IWgKgGL/imhZ34EOtgBg==
X-Received: by 2002:a1f:a905:: with SMTP id s5mr1927890vke.9.1601480201777;
        Wed, 30 Sep 2020 08:36:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:40a2:: with SMTP id i31ls183118uad.9.gmail; Wed, 30 Sep
 2020 08:36:41 -0700 (PDT)
X-Received: by 2002:ab0:2c5:: with SMTP id 63mr1937357uah.102.1601480201199;
        Wed, 30 Sep 2020 08:36:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480201; cv=none;
        d=google.com; s=arc-20160816;
        b=fRvPyZ5d2PRsJJ/JG5BoTnPS7NWmH1njaaKdWZ1NhptDTDW7gnIFIlrY3xVT2XFcqi
         OZ/aeC+KyfnItyvDsxG/1D7cjrCmvxOxDrcz3SgntniBqRDd/Rw65leBuXV/HsApAZiV
         jxAqD2aa/uBk4pC1FhmGOUwTxHdWcz98shqfTgXCGj/4nJ0v+QcN6lzw1LYCYHXhbOVL
         xu9H8aGnVevnmDESvp6Tqxw+W51oCr/q8DWA1F/eP5gduwfFWxOHi/BRVC+ooj/ls+S2
         i4VMm4VqgZLOOgmgt88evw19gJJJ0VOvKEJiD70mSzp4Pas93EYMCk55/16Or1romAst
         iz7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6+pEZ2sU4Okxi+WU1gPDCbDCdtKwOEBqEUtnhiZE5hw=;
        b=r8yJ2031zPphQafQ+ZM8eTO8/en9jD758iZClfl45/le79CIr1xtUw83mWU18fRU+l
         8rj35VK413Ax1wZQAvikfcFKD1HM8aPLqKT3SSsXnd58ngNtjZ8xf1poM4ZmPHYdI7zX
         mF75zIeTSuY+lAxlQ9PG46emxZFU98EwjADTjPklhF3loY87OIj6il+ZtzBtK3zeTNQl
         9/A5NQCD8oj8vA4QdmWEDvKSE+MzN/+31/xsg7VWkCtMMGccM2Ag+Jlz02xPmTeYuu71
         Hvc3JbBROZVH4NqdgeEtELcelkPnMbfMFes6H1Uq/gVEcJoR+s+FtdNLf58rmr8bG5Er
         u11g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=thX1t1Tx;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id 134si132012vkx.0.2020.09.30.08.36.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:36:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFaYx4076693;
	Wed, 30 Sep 2020 10:36:34 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFaXqk110998
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:36:33 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:36:33 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:36:33 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZZ033254;
	Wed, 30 Sep 2020 10:36:28 -0500
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
Subject: [PATCH v7 10/18] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
Date: Wed, 30 Sep 2020 21:05:11 +0530
Message-ID: <20200930153519.7282-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=thX1t1Tx;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-11-kishon%40ti.com.

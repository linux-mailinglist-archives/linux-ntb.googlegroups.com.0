Return-Path: <linux-ntb+bncBCOOP4VF5IDRBF534GAAMGQE5CSOXTA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id F04CE30B102
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:59:20 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id o20sf12195277pgu.16
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:59:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209559; cv=pass;
        d=google.com; s=arc-20160816;
        b=RxKqhVyVL+krLhma5IV61qU93GAaEw6ABCkITfPoICwxVEEfD1Ahyph/IoFYhcocFc
         aF5Hl9rGSa6w5a4ky0pEj/VKMR3UnVQJbTo6Xd5q8OAQor+JNtNn4d4TaqGCHZm+74X7
         xbGYA/Ns4EaQzk56iVsVnoAG6r5aOatLzkaCcND7I8/WJZYfyzMfb1x5/6y3AaDTP4A+
         v3qJjbWyZN6CxJIncFxCWfJnswxv3L7eqXJVBSKY4OJ+5k+N3y+/xVBkGe09rrYtoGhk
         Sc/2S5YWWPGdjz6HMyuDnswbRiMxJSIMx5RWCOUTr+prxsKJ8nIpkdaxkARgj0nOztqv
         4+9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=j1akw7mpXQ+hO6XmOxCVQQl+1FC4jsYlOu3EGfSE7B0=;
        b=oCimOJqlC97Z1hU9Rn6FnTclopBC/TYmc8CuLDQvpmuxW7YMp8qgT0NaLxHW8hgvnG
         zPU+omhbJcBJCpyTnsCSSxKcp3QrvNpmqkJorsZZQhzbHep3OCBFkVRcn8tRe4EXPl6g
         QQ/O9q9iWJim0L2Sf0Ga0HOe++8YWHLFvs5hfCkNbj449y6mRvr/y7k1IaKPrsZAlBhx
         QiBJPuFasV216vIGUjoCVWARQy+RBIdRzOwyr7X/B0/k3UPuG6qbebvFwuyWS3YhpOpx
         5ZdecJpbpJfK4WU+o9E9/9tZkGH6wGx2qOiJWB+DUB1eOv3Ml3ATh+EpCGafCRReRwLw
         cfig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uLG9mLSR;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j1akw7mpXQ+hO6XmOxCVQQl+1FC4jsYlOu3EGfSE7B0=;
        b=SlW3rkr6vU3ISi6CI3l0rdP87/83XRmOZKUY9J2nLHXU1XYPdL8qb0/ni9wcbAipKC
         sxem4y8PdJo5qnq2+hKtqPuxyAjDjPWNMBSwsBMJkZSPyXLHf8fcs8uxLqNnujLQot+p
         sUldxlLmGz+8J2jIMkJ0ql05xOsL1fNrZ2OAn8o/mMYSyC9SV0WU3nV8xdkHjeOSgA4O
         BrFDdVTra6G8L2er+Z6b6jxofmb9gZW1ONnBaSR0lBpFxtIw1F0T8Qw9QKFJ1Hl/3x26
         gY/0QHZTp9Fs91sarc+63dp6ltCn7fQfWRzAs/isy/rHePrIgB0NEZoae+ZNKRDAU9wf
         VkvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j1akw7mpXQ+hO6XmOxCVQQl+1FC4jsYlOu3EGfSE7B0=;
        b=p16Z1qvmCZa/mOZpOjg22qVMMNoge2kgRnoW8sfC9oku7XMOnG4PybY7bpGqvudW9x
         z9lALOx8NVnYza2oJM7SVAH0BFhpxBwEPRlsl83l1gylcIUA6a/hdkGN7TlKbNMpzvi3
         RfmOYrt39/REsaHgh+R5ahymvzWjRadXUPBWWkU077y0hqa9mbyh3MQV9FeGtw3uAqSQ
         n1TYDpG7FNpwc46rNlS9zQTJlWkdSbI1I8LHx6Vqv0bgv6kS+NmgNgS/5q8I1AkwRlJU
         RHyvAxm85QajJ8D+RXiwv9JZ1CpUivftA8002OkW1K7XUCtJQCaj79TUWsjyvVjeFTdh
         ld5Q==
X-Gm-Message-State: AOAM530uPVSpKpVgogDU7ZWf0nZ3mllAmBKTtdaN5hLxL4NUoZW2bACq
	ZV2xrghIU9p6DpDBc7cMlpY=
X-Google-Smtp-Source: ABdhPJz/7HC76g//y78Oy4d7ti/S9Is0wKF475iptA+LOPMfUY1yKOHXEI2n09elByDCQaXNEBcnsA==
X-Received: by 2002:a65:654e:: with SMTP id a14mr18699099pgw.265.1612209559712;
        Mon, 01 Feb 2021 11:59:19 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:808:: with SMTP id bk8ls154196pjb.1.gmail; Mon, 01
 Feb 2021 11:59:19 -0800 (PST)
X-Received: by 2002:a17:90b:3751:: with SMTP id ne17mr554832pjb.174.1612209559170;
        Mon, 01 Feb 2021 11:59:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209559; cv=none;
        d=google.com; s=arc-20160816;
        b=xrkbG/a8H1+cN3llGUHhEHrNPEK0EgqbtBuDqCqjiLL+Ws28fUy3OEo9sPerM4JoGL
         EbwS2c1iIt/Ivx9P5SxZyWv4nS0hwcaLRwZ9MjqXtAkmlCy5EL4ortLgXcd/b73eQpNX
         XxWYfq+afo+mggSIDeFqLUWrZ5SmTLpHJcOu88krw20qRrVjF/8VE8VyXH6zFJIJdKAp
         SNKTL5b9UqHpkfo0sqFdhdwNCo7STU9B5aRGWZP7DXy7EEn0rnf8gsOlgNjX34xZKS8g
         bpFgu7tgu/fwHD1nJovTYHlIbUMlgcOizzLoXCYpPnFiBSl464TyFby2eA4jZ4s5rGnv
         /qlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6+pEZ2sU4Okxi+WU1gPDCbDCdtKwOEBqEUtnhiZE5hw=;
        b=c5+jb+AYYp9HtaYOzMAg7AtB/DVbkusWlIOwkg5D/ApsqiBDHrC0mPKMvsMFG/t0rr
         haBNevXHoIDyPmghP0mvqMNIZqwa/kLi3VhDr0/CzHJCJTjJRGiP5voWFPhTEFy9IKm/
         KprgliVkCo/35rZwmZBgVMp3gjSSXx5rH/T37rReLE7n90dWw7NynuqBhwRzDhQjfmBW
         jTVB4T3/g8pfM+BX8KijnAxYW0ooykGPBP/P47kPo7myCQLMwrp3R0sqzMkReju+2h5J
         uSQ+bkTOqjtR0VufOHhS3S96R1NwV5/awnlZnCtVXa1d2vsL5mC8yUqutDh8/zMOyhIH
         Xq/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uLG9mLSR;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id t25si674443pfg.2.2021.02.01.11.59.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:59:19 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111JxBAi023973;
	Mon, 1 Feb 2021 13:59:11 -0600
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111JxBuR101774
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:59:11 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:59:11 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:59:11 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQh085814;
	Mon, 1 Feb 2021 13:59:06 -0600
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
Subject: [PATCH v11 10/17] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
Date: Tue, 2 Feb 2021 01:28:02 +0530
Message-ID: <20210201195809.7342-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=uLG9mLSR;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-11-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB4HJZT7QKGQE2JA6TNY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 450DD2E98C1
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:32:01 +0100 (CET)
Received: by mail-ot1-x33d.google.com with SMTP id 5sf21203964oth.4
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:32:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774320; cv=pass;
        d=google.com; s=arc-20160816;
        b=kz6jsaC8NrbKl6LKkzTOaJPOOnP0E/nGO+YF++oLlGPxHfq8fUhTu7VfOPqrNo4DXZ
         kjuqaOe41yIK9yFPttTVnVCPEE6TWlJbTF1br5D5IETg7MjxUvTG0aSGjQA6Ua4RN9gk
         uOm+pfZj9+9+MLIwbbkBHpaIJDDzigHCfqnBwXr7TINNOFG0gaS9UMRlQU+9bFHIdaVM
         qZfRIW/PlscrPJxVVwHr372Up3QjdbzkMH4TmcePDHxTiGxzrNMdqO4yWdRvh9LRFsQC
         Lrkq1DZoJRFJpIJXe0fE45ALHOVS91i0epnVYMFydaKTKG5bsR9V0iqOOVRcGskXJ0BH
         orYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=6wuJqesON44Nw6/PFQV0qW/Un8yyS/i7syR9mnoazDQ=;
        b=ODMcw+o3Ptwj4MCycH2qmN6M1woIgqbuaDALPyImwmXaPRWthQQm2wacsr+GQYvHRE
         KcV9sjxQnkVDgyGaWGZoEc6Uj0rMQDwlXEOL9roY7NGGWYnSSff7BUmpxYQNI/TbcwMQ
         pZG+CzWD6MV/MScnYVCHd3Vmx52hz7gEWf9jS5dboouw0rNlUNiQXIaUGBerWHxPDnNb
         jfAoLRp6XFmSEkpbFxWnD3BITNuYmkY+foGZ/rLwNaNXWxwr5d/7lVVJI9UqwOjjkLi4
         wqU//FUAvIoe3BfLp/KIblLmoDsTRrIedvMrFNe7lgnjjAIhtHLl6ossWjo5fmbOTuXB
         qZow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="T/A67vIB";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6wuJqesON44Nw6/PFQV0qW/Un8yyS/i7syR9mnoazDQ=;
        b=kBJnGORSY8BglXPztLFIjqMhtBX9JEzSF8WbP0q+x5sblI3EN9JdUzR1mVX5WDgbW/
         YAr6WtLZh364pQ/eraopG3ju2BweiJs+VsSOALaptvGuL2P6T49MeLrYnOOKGnRveNO9
         8pWWcGUkHK94qPiodcxvOXuhd5Fz60P5heavlXNCDMCsdFH8zvSQ+ygk8Zx1d9vgN6AE
         y8GyzlUj26SFrV8mFh3I3CXcHIoJBKQhbjvQpg5kCLxxf3BhUWDapcp455AK02nL4qvj
         Z1j83tb+PZ48ht0JyOdhbpuTzjpvg9n14RjDMQeDWMhIsFdxJj1tcIO6tLGZnnIZw7c6
         NzgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6wuJqesON44Nw6/PFQV0qW/Un8yyS/i7syR9mnoazDQ=;
        b=sKfsLgs9wtnsTSUerRRFW6UC5tXdDkM7+U1CopAkFQX32GGZ0y2Q2EnXlGFe8fP/N3
         LS7ISn7nFD6z9QdkusP2UJTyiSlGvkcplwa6e5TYBcln/Ew5o6L7ieUkleuJOiqIdyHq
         OzR0cvHOOCH3MEHbp26VfhBucBxmea+X1cW7iNFDpoy45OpnlTDGL0bsYUjGkz5XU/yZ
         v2GzLlcjGp+zPxP7Rx3bU5T9lH6viSMx+YglYw2XyTt1yiJglCgxVEUrDzAcmh5DrQDo
         IqkCcTumSiTnIZ32z7JqEDOawcKKrVK/tJDyoBGrSr9V5kOtlP9V54feWK8RlX98jSsT
         aw8Q==
X-Gm-Message-State: AOAM533JPwpcKd6fGIBFRYArQyB4MBAM+rXnOuhw3W7Ibhx8j4IhFlQq
	gVRgU45z0ziFvB2gQYkNUMk=
X-Google-Smtp-Source: ABdhPJz3Nf8F62oICxWxAjsj2QLZNJpl2rPtIkqZodqW7ZjXPHREUlFEXDaFZGYiLYIy+90rMd+sxw==
X-Received: by 2002:aca:61d6:: with SMTP id v205mr17992676oib.123.1609774320282;
        Mon, 04 Jan 2021 07:32:00 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:3d36:: with SMTP id a51ls13018670otc.3.gmail; Mon, 04
 Jan 2021 07:31:59 -0800 (PST)
X-Received: by 2002:a9d:19cb:: with SMTP id k69mr48253952otk.75.1609774319908;
        Mon, 04 Jan 2021 07:31:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774319; cv=none;
        d=google.com; s=arc-20160816;
        b=QLe9gNNfmc2UEVKrgjlHNSuxXAMw9M52t4jjcvCYM1+uwCPOTMtiMBRT+GERe+bcJn
         k4aH7qGm38+wvMM2u91RTVA/RCD0fIpqGesy/5DgKkNdIlIuPOMj1YM1XrrFNddpelo9
         c0FIhqG/g5oNXK1HURy0CpK179by2qlaFUuIB6SOxfDsjupodDvC3ULLXC0TxprbR0aF
         Xeug/uxwWQXPuYJng1X46iYMz9QSmwaetU0/D0FaJWzrwQSgSgOiLlhvQ6uNadDJ+z9d
         a9hkNsKZzxd5AN7TPN4kzSS/NKCMdddd77bqWvcdHc48+ZDyMhjTdD7zrAA7Z7n8df+w
         8eDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6+pEZ2sU4Okxi+WU1gPDCbDCdtKwOEBqEUtnhiZE5hw=;
        b=DN/DKEuRI+glii8E7BwfYa86vs0huBSAW1ktxUOA3WBWRrEwGcGN/QaJMzefmy4nYb
         GtOSfcmbNnCIEupMAHtKQBNyb5y6q8fLUKX3Zd3K2SQqaCEzThRFEAHFD3Qhk8e2HGgw
         tu5DsAxoRlZQQOjj6PWZM6ReXcStqFrdwmj+KDTsG13777eAaaFKOwpxPzasHw9bDWGL
         jW6g+6mlx03v8S7DcjWsOVFe1JdvyPywbYv+oACXLHWYeF9Hx/EsAi5jyUiaL8Cd5Ad8
         uKKtbb/8BnJtKg4CrdgsmDPzmLozXQBge90kHDoAPL4Vd3LAR7Wp/Q6FXJZRG1M9Wswn
         so/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="T/A67vIB";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id l19si4600058oib.3.2021.01.04.07.31.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:31:59 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FVpJL077172;
	Mon, 4 Jan 2021 09:31:51 -0600
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FVpnf081753
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:31:51 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:30:16 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:30:16 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZG093710;
	Mon, 4 Jan 2021 09:30:11 -0600
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
Subject: [PATCH v9 10/17] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
Date: Mon, 4 Jan 2021 20:59:02 +0530
Message-ID: <20210104152909.22038-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="T/A67vIB";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-11-kishon%40ti.com.

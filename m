Return-Path: <linux-ntb+bncBCOOP4VF5IDRBKEG2CAAMGQE6VGPSSQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2A5308921
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:44:25 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id p14sf7456701ilb.5
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:44:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924265; cv=pass;
        d=google.com; s=arc-20160816;
        b=ITU1u/qWwao7hqe77YjNi9eWK7r40+N0GMUI1w/YPyRt8U+2vJ40+LXGjU4GJmwqRb
         MpgjB6MTGJQrhyTJmBE3mbgXjgrsb7+Fiw3rrsP1QgedR+/3o4pQEkFXvjETZDkIbL3b
         /9FsDwj/1sqDvNeRjiNP7WrgIN6lELU8ygFMvl76EsfK85C+4kAuWE8xDib2AfZcfgXA
         /yYtcw9Xu1Sx0h4MdXs7b7RLc7Vk9qrPnnvoGsjkhUsL20CB2KW0FhB6vvDK5Z8hH3l3
         bFWDwToxnjrMDOEA0t21Uhal+UG6iwmL/iKphsP3C3lyFhZ2Urtt3myvdMtMbzeSAA6r
         44Dw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=a2SnCL2N1TrJq8G5Fq/GRTHjKR+c3hHcjPWdH0q4Is4=;
        b=s64co1DV4khPpebMmp67KF7caVD56h351BadW9nO+a/8VNIs/yZcqC/lBzw3DVmA6S
         2SHLpLrLQSE39enNyMT5mLu32niJAn44TdThslm3AJoSfO5+YAq3JuEdqVuPGykZj8x6
         WO6DNfoze0R3xIxZObkbw0WSaFPszFMxksOnbtVMFkNj+569ZsgWIgNmtWf0yOIYVqHc
         mbI/sAxNV7xOApIwvMl6p68c+ZVOPflEdgyyKst+tDSPX7XJ0/AlB6UNOVx3wK2tkY6A
         dS3VPMyPgUAnJVonzEgu5YEIFCPvisl2CInAE2rywUCjk/HEAUpNENMXUY9pa7aQdKKf
         yZkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=aTG5xbcp;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a2SnCL2N1TrJq8G5Fq/GRTHjKR+c3hHcjPWdH0q4Is4=;
        b=gZ8U8GEbR8w4LAmU6e2su37ce/7bdsYHfu3UJYmTikujfJX5boQy3hrGh0T7eJfOSX
         C2cdOqrz4Md1UDmmZ4gdfCXMEQtkNUJf+sslHdxqPhSOVYhYe3+3aiSws4L+goR4DwcI
         2NGgWfJ/z9Testw1lTIgWgGPdiZewIGL9BrjxDQujgO7VZ/EPrtzRzFnbVt9diuiKAzM
         f2MYlu0GXPhXYx9HEDGBxARcVDY0GZi+q4AjVZuJBTx68unrr76jhl4aVKWaoINflYJ0
         nozy49IYfLNYcW0zlNn75pxVKrtZGv34d0C4JRB81c7Wyrx5jek08B3TW7OJJVLEcLzS
         fJDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a2SnCL2N1TrJq8G5Fq/GRTHjKR+c3hHcjPWdH0q4Is4=;
        b=iKPa451clqwXvPLElqZzC45YwiwYMhof7tixUc17olGQ4Gbkhfjc0YSjTQPaDdhn+l
         64YSXy01eoO97OP7ErBGy8FNUb1DE/P9Begz0D8snXGrd/Lb3XaRS88ho4lePOmzWm6f
         HqApZnEP+h3NwgkhpoxfrxUMdrxtaeaOtJPyl0eozX1Fj4U+2ROJ9kPJoMGnAcGoW7W8
         7TDdnBk9RVx092pJY6bWsSdPiozKopZYhhfLv8+7tf+2SeOrTtDpZmZd2/oFmptpY7mc
         yJWmF/IXbAyi0wdQ8gDcR9B8M1/f/GbrXIpBuZIUmEaGqa5VCMUijM+cvK6mpuDj5/oG
         jsKA==
X-Gm-Message-State: AOAM531qH0+SkG+BvwPGsL8neFtDS4b0s27v29ySFbrMEOXWG+DOTLeF
	/2RRKb6Pev5EIrI2nfeMT6M=
X-Google-Smtp-Source: ABdhPJxpn/A0AE8O9pK9d4mpxSnGiH97L4wV2CYcDCurP4+AD7movSljjxdmHl0tLmjh5NnermIBuQ==
X-Received: by 2002:a05:6638:164c:: with SMTP id a12mr3419746jat.128.1611924265021;
        Fri, 29 Jan 2021 04:44:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:13c5:: with SMTP id i5ls1076455jaj.1.gmail; Fri, 29
 Jan 2021 04:44:24 -0800 (PST)
X-Received: by 2002:a05:6638:1344:: with SMTP id u4mr3477994jad.86.1611924264110;
        Fri, 29 Jan 2021 04:44:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924264; cv=none;
        d=google.com; s=arc-20160816;
        b=zXyLvcjEmAZa+tglr4qWqaklrS91n2GNm/mMKNQtiENwm5pt84kLJk5I6n3EUlqFiu
         KHBp/71RqsJ3C0W3VaIFqk9WhKNg9fmyvfTn4I3+1I6Ja6o7MWRSPk7pEHyzYVU1/4qR
         IOCdmtsvB1n3O3dbG0JzS68Yjdumbr4/0ZsKHpvZPWpNaB/Q4rPAXg7KbLxVH3IBSj1x
         0TlfT/5eRrWMqNZPHZKGqI8LfJ2xHkjs4fO783oVZLXhWQABFw0qcS0P0xqtEGd3xepT
         dU3wj0b96qKtnFQdfB8QtkwfiXJDmlf1IfD32UxR6UZ98UsaNW4WR6xNtvbem37XmQct
         2nqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6+pEZ2sU4Okxi+WU1gPDCbDCdtKwOEBqEUtnhiZE5hw=;
        b=vdIguWpIjkxW1Otb2qeAoDhP6ufveVZOknKLqqcad54N0pbv9CFLM1g4V6TGc52J+q
         4kcVN50mjZiUWTICwQH5phkhzkkyrK5x1IvJ72C0+/cNepHJtS51lJ7FMVY6EB4b3JT/
         sgF6dJEsOlUiGzZ6Kt+YdugKfHR4uIU940rgPn+o7IvhKjG9Menfliv99b3DaIfrlzF8
         s7Pr5qZB4ON8PMmLLvFh36LlUjZ4pbI/Ig3OxJuQxL1PzUuZfkDAUujp1glhJSsmnUm2
         gpVlpOWJvGp6SpHt2rPJQTZhPmLmq5uKSRsw+znECG2yJwPC2TXBfH4ysVnIyvQ5vJ46
         uGiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=aTG5xbcp;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id v81si344166iod.4.2021.01.29.04.44.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:44:24 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TCiHfS024336;
	Fri, 29 Jan 2021 06:44:17 -0600
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TCiHFC013110
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:44:17 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:44:17 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:44:17 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDW9075758;
	Fri, 29 Jan 2021 06:44:11 -0600
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
Subject: [PATCH v10 10/17] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
Date: Fri, 29 Jan 2021 18:13:06 +0530
Message-ID: <20210129124313.28549-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=aTG5xbcp;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-11-kishon%40ti.com.

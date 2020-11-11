Return-Path: <linux-ntb+bncBCOOP4VF5IDRBS4KWD6QKGQEW45AAOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 779B92AF505
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:37:48 +0100 (CET)
Received: by mail-qt1-x840.google.com with SMTP id b10sf1389956qtb.16
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:37:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109067; cv=pass;
        d=google.com; s=arc-20160816;
        b=pf2UXp2u347XFbR6GgAFU0skvEdSVRmBQS/b1Dixm9kkjZI0bOsBKNdLE48YO0DtTK
         j2Mvnc6qrc26B2BKPBBSLjbzMEC6CYpUPMnJr+Dsg4/sJAxI0m2veNYzutLWLxI03DpD
         gbQfMdjwJKu3MTlvdDnKyE6PzBsd9KjY3W6gn6AJkwjfrfk/bm2iDBSEgzYRPZ4v/3z+
         z3fQOzKGQT8NvaysPYDibUzShmRhr7pr/Tnv0EXSQJhpX5bfKyoFC+PviYxrqqkPhRSb
         75ORSpDH1FtJ7Zrf/Vn2XIw86ZUoU3uRwoAt06OjszMO0TdBuhdFzK9ZbCikC0P3GuoE
         VG5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=gIfQ6bPMu5SMBkqdOAycSExU5C4xe3f/pancPMR9D0M=;
        b=uNJudF+s0eh+ZMHtIilRnTXvRLSSxjntp1hiu4nx0B+oXDhWhrSLP70bidu+iw3iqo
         YFpVrJyYZ4mVklvH25/F0AvGOVsF7DtljzcYIsnbFMnmLION3QvTBqyO5ycqC985tNLj
         VD2ndmmpTNTDOFNd0LSOOItn5IYNPrD3bs7pFndQBglLJqedduYCHUbaAzqQ5QzZcOcH
         zvfhX2oItCRJFQJEmD53Kzm9rHHzii6DWXUNhj9CZIIxYrWmTPowHtcK4+vvC6aI01Jh
         jFHWTO27nAmVE90+8zfPcqYdu5erszMYW9lkNOIk6UX6feuUagIqTJYBmm6ceEy40L9j
         kWaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uKSkeQ+t;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gIfQ6bPMu5SMBkqdOAycSExU5C4xe3f/pancPMR9D0M=;
        b=Up1c+NEyZJANwFPcGzC+WQzd3uERTCniP28DvLXT5iOd32U4fyDU8pG0F7pb+/Pzs8
         O0ca/BKIUpOBY6KErAsDkE4LF7gjPYejJOTNjtuSsz9/e/GKrhZlHBlJIRYDfS680Xdt
         N0ECOp39P+cyz/4i1UWsVJd81ckzOTMZ5DtlwjASsOuh1acSqKvrT7m9WQLONRgaqWBC
         kX2f2HP1s5zTsARRjwUHeo9lKRtuTDsAkH1d1IKinIQV/cPrOhOLszRfmCb3IR2ud7c5
         wnKz5CNOuIh6Y/NNZHwbgBjKXURncDmyNJPpB+QSXZMac4r+Ub/xVs1zqDyhKhW+4YTX
         sj8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gIfQ6bPMu5SMBkqdOAycSExU5C4xe3f/pancPMR9D0M=;
        b=XSCQHN4vo7DA+3GAQJj75uPn70UYUJMaX+/MHKbWHtxzjSAJofiqDe4uCgm4Jo76uV
         DpzxZXacbh5qRrFggG+CJ4KRhHqgoudpw1qNYXiw+BAZCgSFrExw92g98qCZHrz+phau
         YzY6ruzXGu7az2Pfo/aBNpNww1EFX+w5BsXWek2E0atY2e+9vChX7qHk6SqMI7dsl031
         zbPTWlCHOFdOzL6TQvq4xF1GirV7S+lkLYlzSZEWig2kHf5UIKPMxkJ0idrXoWz7v9WT
         IiFqtDKfI3cSZihKBwkAuiaa3BTXar9WjY+46oevr/3Jl6MslKF7nwz5+M7p9pbyAdS1
         eWfQ==
X-Gm-Message-State: AOAM5315En7Epu9MLTWZSTog18hMnDgxjoPFr+Uvv7/6mPY7FfqxLneu
	qEZR7xZCTfB/MacUwEQYh10=
X-Google-Smtp-Source: ABdhPJxdHxCaEMAfo1zIHBx6+MIeDsjPrH3c6jB5/rkNZ8o9/+HEU8NPnt2bGihM8ThPxSjgoxXT0w==
X-Received: by 2002:a37:8cc1:: with SMTP id o184mr26208589qkd.205.1605109067517;
        Wed, 11 Nov 2020 07:37:47 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:572:: with SMTP id p18ls7239112qkp.0.gmail; Wed, 11
 Nov 2020 07:37:47 -0800 (PST)
X-Received: by 2002:ae9:e317:: with SMTP id v23mr2904264qkf.152.1605109066928;
        Wed, 11 Nov 2020 07:37:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109066; cv=none;
        d=google.com; s=arc-20160816;
        b=HumdxFRa+ZCZf7nW8RoeqxH+wnrKvCjmRsYefC7O0MnE0vYpXyc04iG8RB2MBdwfyp
         FsBrLcGlowOZ3XmDB3smtJN+Rsek9eX2d9lN5cyugPKmmauvFSZRk3HkSGMmNOshOCX5
         wt5ZtxgA6CpCiRuGhzYAViLDtyTB4SvCG9FCLr4MxzmpZSlMZUfvO9Oy3T/MnliERyHj
         6TJ67ytw30Q5t16h8bX0+6jTubUZGa/Z5b3Y80jpNl+GHHzXpL7TZWvqT9uEosMoYSVQ
         oUN3qKQcBKa6dujLbedNvmdEMR9I1ZgnucGx36xQdW7d+zpeMGwZn5VLvd29tIayNgYJ
         wc4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6+pEZ2sU4Okxi+WU1gPDCbDCdtKwOEBqEUtnhiZE5hw=;
        b=XNU5RntEJ6caGr0n0itr49uVuuggLvc04NAAKGbVgVr2U4a+SljfVoGn0+f8URsNKe
         nxpm0fZ3F97KFdh4dsp1zV5dnI5AJ6k+d8vCM9gHCSZ1bqCT0K24WcGbOxXzkEjTjrKV
         FcFr7kKTXvZkzG6J7U6/IYN9HWoTJnLxQ/8iAxim+XMYgc+/Dm2JqyYNMW16V8uW2w1U
         6jaafRDrM08Vyjh9FOaGgO2mXmoQUFHRV2Htl2k54L+Rul4qzJWR274kVYWMKKWJLDap
         SRdn2rBacDJtUBpRM+dhoMMm+qAFUGS//06jzQz+1isw8WuKt9aFebQvOdzsjqq0++2s
         apuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uKSkeQ+t;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id r3si157470qtn.0.2020.11.11.07.37.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:37:46 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFbdGw125202;
	Wed, 11 Nov 2020 09:37:39 -0600
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFbdNM124453
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:37:39 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:37:39 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:37:38 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa041042109;
	Wed, 11 Nov 2020 09:37:17 -0600
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
Subject: [PATCH v8 10/18] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
Date: Wed, 11 Nov 2020 21:05:51 +0530
Message-ID: <20201111153559.19050-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=uKSkeQ+t;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-11-kishon%40ti.com.

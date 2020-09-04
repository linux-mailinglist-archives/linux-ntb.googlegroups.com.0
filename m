Return-Path: <linux-ntb+bncBCOOP4VF5IDRBH7EY75AKGQEKEXQCEQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E17C25D2CE
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:52:00 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id x10sf5344754ybj.19
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:52:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205919; cv=pass;
        d=google.com; s=arc-20160816;
        b=XUa7dNrsuoasIQnQbK0QtRnGSdO7jZjYi9gaN88Uo42wsgY2qJqM6MyUN3fBWBD0Y9
         OHKlJmyz6LKdimuLIPVJ13dhvDnW5nGskpR6DYI2RAFcI41SXgqZkr241gCcV3qVPHW2
         XxKv8CoIkR4tgp6N4TaEbepE4VMYEEHt1OJWOY/EivxU+M4kYokmgK89FGm6mF7PK0KJ
         fOh2N6bbpwkhQgry/9e/0zmSZPL7x4N3yQYHWBoXwYAEuOKirHFPVIz1xGUI/3xWVUa8
         86wJJgJd3I6i3kRf+cBV2coK15q7Y5Wl0kPMviS+YeBKR90SJxZ5k+NNm5/cxSdDuPmK
         3Y/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=II4LtJXzO8wfWJO6IzGVeSz0Mw+iCSAWfsCHSm3S7c8=;
        b=raFO3S4fGZ5Y/o72ZFXgHVDUwh20L2ZkeFms7+l8TXfZ1KJdKpfwdNPlvaYLwh18f7
         Hjc8FF3oVq683M7JV+TGSxFdI4SVCEP08W4BGqAE1RYsmldzTJABztmb3fIv8b43VcKJ
         yDlCubAxSr0vjsmHWHNWjhSqNkPFgxVJt9JO/cUCzcNHnLFTRLmMhwhuaQw8qhoVjNzm
         Dd1MuWHYbuCXOjBNXfAz6jWE+fXOURHXXyXs8iAiu0eh7t+IZnt2dpZGipc8I5vtYnoz
         JyXSpP1pLNOluc5bhtIbJ8kwdPHeefIzrg++wBK46fcZvp/QBeeAjVvbjQ102aaE+R4j
         BWtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=NwVGWYm2;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=II4LtJXzO8wfWJO6IzGVeSz0Mw+iCSAWfsCHSm3S7c8=;
        b=SCQKU/pDrs3PMe+bncQfJ9n3bbnFmCGAQuNkAj5806jB3b2qA4lnRGEFfS5KSDSX7R
         y87zQzkoF8/1i5dCzk3cq8Y89cGu9KB3MTaC/tR4U50OFVp1ImgMWbBjsqPQy76Q/wur
         QULk+CxiWSTe08SCKDzelWTpb6LYTI004r0BO2BxNjtx/wsvhNy9Nj5XHjmAs9YVVG6L
         /ozPEjsFSHScVAiU5b4thNska9VEJN7Z/d+zJL4G8tcfiCVVvT5z+xBfxpRNqhygFmvA
         VAOtWi9PTI9HmqeBOcYfWGNQGIEHJVge++7v/BcJ93VuRSJU2rza7oCuonza1ierAKNa
         smOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=II4LtJXzO8wfWJO6IzGVeSz0Mw+iCSAWfsCHSm3S7c8=;
        b=J5DMhtoVhqDmG8w4QvLQBmsPgXDDfea2f9+hiKHrJbWEWnIzR29hXJZayRP54ppaj2
         DE+3WJy2vrlxCAXsm/xHGAUXf7T9yEfVALe3XEsmhZY8TVC9vQUCRTjqnYCtZw6U/EbH
         Ub6uAUWTu4B6lboWYHbfrVxX3ft0utNjyxly9dulJTHnvLebh8NnsFdhyIOfy0TCjC27
         aR72BQmiCPCZI3/xG3/CD+eXPxPlvGleoCC6NKtICSIjvbw17Oj+dUdv4kkKZ83WhNne
         Y40NZH1gfEkYCXoKt5gOaZ+C110aHBuYdlacf14GIcYPnrfdpouMwGLfkVr60r5WBfTC
         x7MA==
X-Gm-Message-State: AOAM532Yf8U6GvBLZPvmwsaVnDpl+FiTqyLuts9KitOFkNyQHQs7qAty
	X8YZvVoh+zyhChGV3/mCQ4Y=
X-Google-Smtp-Source: ABdhPJyDVjR0i8zxipStpD+EyZ+gjm2/fyXGicBJitrmAOqo9MqGuvVe+R0PKw3qxQwQYjjJ7MGtsA==
X-Received: by 2002:a25:4ed7:: with SMTP id c206mr8700375ybb.129.1599205919691;
        Fri, 04 Sep 2020 00:51:59 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:5755:: with SMTP id l82ls3971506ybb.5.gmail; Fri, 04 Sep
 2020 00:51:59 -0700 (PDT)
X-Received: by 2002:a25:d10d:: with SMTP id i13mr9090765ybg.476.1599205919389;
        Fri, 04 Sep 2020 00:51:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205919; cv=none;
        d=google.com; s=arc-20160816;
        b=Kjq+Hj1FUjL+QxkRRWJ7++sm3jLIZlKXrGVBvstlsQWkiEcrJoJRLAY0AB2+0rElTz
         e4WRg+2qiBuWNyxGDieEqVZ+MzXGHQpbcCOjIuNY6oqg9ecL3U9eGUr76QtET3MUbd0x
         FN0LZdAnKXVowlcGeW4LcrEB3VPgYsxvkvYoEE+hlsyEP42Z+6zOGBwPUOhuLc33g6ar
         /MXwNjLuKyt30oFDuznecUsr9TfUAz1y82WAtLT6Xeeg5Nxc9BKqFcJsqLbnMZnt3By3
         93e1ZFBmz7AqVMRrHJTtb9C48F670nZ8FG5UHuWpLD33IiP8dDdubsCWUQ504dS5uzxK
         ldKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6+pEZ2sU4Okxi+WU1gPDCbDCdtKwOEBqEUtnhiZE5hw=;
        b=AAlNjF+KtGqTJj02Rs5aq8g4dxllaD7Acc5O/kg/j4Pnc7SPSncO4vrbiwq+eV98Ks
         BIT09Je77BSyVPwrVH+ZBcuyP42Z3PTbpuOQS+Roxh6F3zMbOP8QMLydBgqMEud9Usyl
         FXON26Wb0N5PtDW3obvxVm/Xo8ElDdmkiK5wYZbIqWJDNpGhMGUh+lelLnNFFN4eazwO
         MI8+i3wUb/DBDXFlGBJ93f2UTi3gY4F5NiHEx4PE5Q2e0YyYQdcaF5mlQ4EAIFCyXNMA
         uk8zSOKkr5EPhLFRFKpbvwwHmVUBoEVj5OLeiUTYwCZ8QgKyf8ahpRjOORljbpN9n6HJ
         CvUQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=NwVGWYm2;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id p14si668347ybl.4.2020.09.04.00.51.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:51:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847pqvm018030;
	Fri, 4 Sep 2020 02:51:52 -0500
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847pqJw003519
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:51:52 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:51:51 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:51:51 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osNB058796;
	Fri, 4 Sep 2020 02:51:47 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>, Rob
 Herring <robh@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Tom Joseph <tjoseph@cadence.com>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, Kishon Vijay
 Abraham I <kishon@ti.com>
Subject: [PATCH v3 10/17] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
Date: Fri, 4 Sep 2020 13:20:45 +0530
Message-ID: <20200904075052.8911-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=NwVGWYm2;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-11-kishon%40ti.com.

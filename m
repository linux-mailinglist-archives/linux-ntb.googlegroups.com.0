Return-Path: <linux-ntb+bncBCOOP4VF5IDRBUNOSH5QKGQEK3XKWNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 869DC26F626
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:44:34 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id l8sf3852013ioa.11
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:44:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411473; cv=pass;
        d=google.com; s=arc-20160816;
        b=byGKgTzcgSob2+fm8FN7U3Am9This59Nl7C3+bc1lVSkXKmNw50dl2frDMzfmrKMz7
         DzcQlD0Pr5B/V+qaGwjh6lhyUdA/XxnlwU1FjzsY+XsFzH6d/3ChBYcGDUVPITcNS4Lr
         3jRUK7erji+ehsrIYsdg0OrAgWhIp8urEJHTKonuZUx7kZAN4zLKAyuUP72/OXRk3xkq
         59M4nKQlpQNzZ0ZTUU5J7IfQWEiMODk89iKFD5MpCGWoUhVKdBp1Ib7+3Ga2zHLhas90
         dFQt2sOfeoQkB9prydKLKVOeB3a1hq9cIcosfpvQTAiafX+J4x2wpz9NDlYaaKHwpyQR
         yDzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=QZsxDyLIc7bwnepvxBO98kb7d612ibljG6KUGwWOmmQ=;
        b=w3Km1x/+w7iq94qD37pFiH8nOz7FlpCvc+poPhGq/kNL89J+QyIquLMyb3+FbHTb0r
         YMIelHQDgdOfMOQCGyLeBW/+Q+mfwFQ7ODz2sQwht0SutDuFye0nLMgpL2WYnw0PDLQQ
         9bwn+H6hUiFk/SSbCHmo6k6oZrT01tudBJbpc1sW5d4x1u2JJ00BvPOKc2wHshb9f1NJ
         8iSUYcv3B9oxhPfs81OpFt2YQwYM+VaDw3kgiZB53LJ3ifaTQmOxfvaqsHYKXfdPSaEq
         pIfIJdNTcM203OCH6hJEY88f63JXcXVOZMTzOjmPrGxznAaUltnuptSEbOmKyD7BGRmv
         FfLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=RMjAWpJX;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QZsxDyLIc7bwnepvxBO98kb7d612ibljG6KUGwWOmmQ=;
        b=W9Xch1HDj1xMITP1Eo/E0ou8vqiYICvsw7RJSlaosv0OGRWarsH2jqDdIUXalybubM
         KDmuRUc0FywwlBUg1HVZS4acnc3NzPzFpNCTKwZUaAlprSOXgYVCU2+zhqmNkMyz/O6g
         NPpU02n6SBxCM6C17evdkitD+T0rlzijToj14K6haod0N3kBz6LrF4jhzR7cJcKgpUgs
         pC4mKLSwXrLwP/esFu2FMHB7zGmvtoARm5jhKOkrwBSZAbXED4MzjovVT/Bfgx/UPRSI
         q+vpJrnFiv02MPjugymVazjL4Duef9JNHrWuavEp7UneBizysbnhzlzfX4V7ow1XmZ6/
         mDBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QZsxDyLIc7bwnepvxBO98kb7d612ibljG6KUGwWOmmQ=;
        b=GFFwkiD7XqfmKR0OHpva8c77WvrGK3JoFAkfcIYxGsLxYNFAkuNyIybweAmq0DT3f3
         vyz0/wWsPWxffLEmTQ6jYvZkzpo0Jy8FzGq2iEzp78gEatxIQXOBxa/c5LNNa9z8iJoA
         N1pGAhnQtIGWePZ25mrp3dLdBk2vyhgy0tORd2W9kLGO28w7qpOT0DeTTxLAx1qEQ+VH
         +o+ak6Uwk0Zc3dgq8RZjCE8USWjNiNJUdELc6/8tb00IsX5MfFTNvVHHva4z2Njt6yXb
         nWEn3TCzIUNuWKJGAaHXye7cCZBhZOWEkreksqfOwfsIRXD45OmMOYSf9lSU2GHaRlwT
         LLjg==
X-Gm-Message-State: AOAM533I+VfLRG3rh6kA5RiL7yxh/ZYZR5JYrj0gBy3nfaXt09nrg01R
	ECn/xnAQIoSrR7O/lnge7XQ=
X-Google-Smtp-Source: ABdhPJxpiTtJ6eRgGKDPc6iDdeX9i628Dizfy/t8LaXE9prpCNT1VzcDjWmnZEJ2A0PcCoHhvozS4w==
X-Received: by 2002:a05:6638:240f:: with SMTP id z15mr9361052jat.38.1600411473544;
        Thu, 17 Sep 2020 23:44:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:c9ca:: with SMTP id c10ls587332jap.11.gmail; Thu, 17 Sep
 2020 23:44:33 -0700 (PDT)
X-Received: by 2002:a02:887:: with SMTP id 129mr30091723jac.130.1600411473107;
        Thu, 17 Sep 2020 23:44:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411473; cv=none;
        d=google.com; s=arc-20160816;
        b=l8jc7ZvCeZX3KyheanvTwzV58ip8tbtRcIl0SGGnph3tgzOi5Ke0c8sis3pnh5a2sM
         G5RBIzgseEV+T7KW8JgUSnZT/xzlzZPHPDHUv7JRHsLiCCkWotmei6l8Dktkrim6ACnf
         LgO1W8+uGp9jFcDilit3e0GvZIkhd9hym7rBr72turEpFZjd1u5z04/TDVF+iGKo1f1G
         rY/q8FBCoNfirJYNf6A8avNgIR+l/jAQwTGlT/cQMvRXu0uwvqMJdr7HTCUmBuP7mTFg
         kKUA8+ETOUpi/AqXCnFQC0i/RZUvnD9CKgiTYxwpMtQX9vRiTfEIFMbwFOwfJ5nlBWIf
         GPgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=6+pEZ2sU4Okxi+WU1gPDCbDCdtKwOEBqEUtnhiZE5hw=;
        b=eIGcAZS3W6gf8E3Yh1s/NJaOET+q10rs7zhXRUBJBL77S2YbASsz4haTIWp8c1E3u4
         kSfiDaUJFWApLhhnOn1oKerZYQwPrvX999hkQztVefoCvNj8UUfl/YLbXJFVs3hwN4pc
         uMpQfZvqAFFf/Q+T8cAJ85D2WB/o6isn7P27+/UmEqmrdUlpFcyWUxXxrb4nqWZN8oyL
         syk/jP31OC7cU5ePpmfMgJ5DqvD/GrxVWCuRkTt27Oe1aUwigzYXkkN9KbrD7IS955pC
         eAmwsM1OxNALXDTP77Tir3rB99JN5Y75RKTY+afsHUgsUU9ZDIYH3TS7EoI8PJDCngdV
         RyFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=RMjAWpJX;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id f80si136571ilf.3.2020.09.17.23.44.33
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:44:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6iPW5015748;
	Fri, 18 Sep 2020 01:44:25 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6iPL6125201
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:44:25 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:44:24 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:44:24 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCU094595;
	Fri, 18 Sep 2020 01:44:19 -0500
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
Subject: [PATCH v5 10/17] PCI: endpoint: Allow user to create sub-directory of 'EPF Device' directory
Date: Fri, 18 Sep 2020 12:12:20 +0530
Message-ID: <20200918064227.1463-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=RMjAWpJX;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-11-kishon%40ti.com.

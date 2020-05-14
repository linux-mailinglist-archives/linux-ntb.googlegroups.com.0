Return-Path: <linux-ntb+bncBCOOP4VF5IDRBMF26X2QKGQEASEZ3ZI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4596F1D33DE
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:06 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id h4sf18540882oie.2
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468465; cv=pass;
        d=google.com; s=arc-20160816;
        b=mnzrpEYRpPTizo03uAtpJiJ2Wbe/N/oT/C4z9NkXkZrpBjEIRKppto6Wf45Bt6DGAi
         kUOu0h/lwWmxibffrrhmKAu7yMMd/Idyk3359t0rHUZsXW6S3Q8tJJQdIAbBycRjQbi9
         +Zc6I7tFt6b9AaKCIXsvcsSWeErR4F3bJGIEMoMvednAMIWx6TMi+oJnCp0gKzxmd0en
         YKiVJFRFM1OzGOFw+3TlHpwcGs9fSB5zgqiSqvEbhK4e4nMMdOD2KdkexM4L25paq03a
         9qQiw1fk860oDfAS2p0PME1sLqehEhe3FFnzW2eXOKK68G4UD7roWaEr9VQY+S4WmR1k
         tuAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=10VxbOlSQ1lHFo1rp73/PXOu64XL8yUSXcd0XVg1aiY=;
        b=LXS4qIKGlWWM7YNTPJs1YsKH6q9Eu8jCplbPMlwA7YwaKb3bPACktl3PjXV7gWfCWB
         hhh/77RBdtf49Wy2JS5N+NuMe/vQrrkluIwiuM/mBspyhvr3usEN7FaOxcKTmsY3ZhgJ
         FtufXsWPTfiltGpg/NOQEebm/JEM2MtndleBcFu23erzmXphIQLC0FJgxvYVRYIA7A/0
         eWSsi+SPDVKBfJfupTpHaRZeZfiSKC3WQS+wHM5++lwHrxD8UPrQN1WEhdANhMf9GZIn
         +6q4WuyQqQUj9Uojc+1fqZcIH7gzqdE9u0Ov8fe93DBJI4F34WvUQj3jdtc1QjRWA75u
         01CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=t9jN4f7J;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=10VxbOlSQ1lHFo1rp73/PXOu64XL8yUSXcd0XVg1aiY=;
        b=XOf4hArM7mQF7PEF4VaS2LJo5h+oxVhpDbf8PYTQ0OmkyitLyoKgeuSYokuf0lztj4
         UrB7/aHxmGYXmEJikqDJxJEjUuJ7Xnogubk9hV1TQXSPoLEkEUvTPeAlS3Ozmh0ojmzM
         A9HHnNU7OD3XVZcHLRKBsd7SPvZPgMFLhhKANMYFsrl1xsuQBGIAmkWDeQyW3gam08SK
         h+sDChVXegjPsBREmiZIw6GWsjvizp+9k+7YwNKZNeApZaMYmG9iHwUcwEYGw7trHsJp
         Wc02b6X7uOyDGhphFVIWWNWFyay+CHVgDmXO/JiJWwLbCAFYz40Yu0WEZjILFmHofNfE
         Xv6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=10VxbOlSQ1lHFo1rp73/PXOu64XL8yUSXcd0XVg1aiY=;
        b=e3ZwQIwQREq3A14CIeAHa2p8OO00nM26+m1COi30Y5LNsqHzIArdR2wxxx5biy7xFU
         bd6FzgbLOH66nqQLeUZ47Lj1UTPJ+yXWlqPH5HKfSVDS2PrrBtIA4A8h1Xb0e/UKWkhn
         23HXbLLA4UrINv2yaX0TcYuhyea6GQyao94bGA37PyCM3ll4D/uFD3w3SqtdznRTOo/n
         02aMuv9gzUCCl/DkqCBoJma30T2Uvm6qhFPID+hGMYjf0N/G1aKgsGxeq7SZZCa2bWLY
         Oiw950x7cS+tIEK9dvCbwFuADSUBUB/b96irIDQwg4DlYeGLlNwYktDsdDYPnpPTQOqk
         a/pw==
X-Gm-Message-State: AOAM533EbQLzSVWBY8DVu4qAd+SJV6eM3GH1mOQcGCfmSIrytNN0idIF
	h2lq4pYGohblO5tzy3D+ep4=
X-Google-Smtp-Source: ABdhPJxVbJiemak/tws2ezDH0ONKgH9f5OATCk/aktpKFPhL04z3oDZpcAU2orY5lAlJYrT9SOaZew==
X-Received: by 2002:a9d:63da:: with SMTP id e26mr3572789otl.107.1589468464366;
        Thu, 14 May 2020 08:01:04 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:255a:: with SMTP id v26ls165486ooe.8.gmail; Thu, 14 May
 2020 08:01:03 -0700 (PDT)
X-Received: by 2002:a4a:7011:: with SMTP id r17mr3916741ooc.13.1589468462946;
        Thu, 14 May 2020 08:01:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468462; cv=none;
        d=google.com; s=arc-20160816;
        b=nffU8LiFNAJ2Qx+ekr/50+MuvsQDflRO8+POrhqeOJeL2DszCuCA+48U6xEtdfaXJ3
         DDxgdAlci/wIV+8oiKUCIOhWuSSfNFJc7s1KBhe1Lke4XLoxvxiC8HckwyiqYhXMnYSb
         ThQpmnXNx9Ne/Knl0RI7bvp/AX7kxdsPudmJPrX8HZ4qXKBYxWTZRCEQ7j6DTHGBXez1
         F+dZfkxxlQNAkmy8N7KYqgQLT98C7bSHOxZo+2XUHcl6XzyF+EwlhMP8sOD6DFuCCfLV
         oSj6Y62sWo5Y5J0I7vbhU3F+PnMMLk5YDug9oqv8nx4N99XvZLFP/AP63femYwaxA3sY
         Gv9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=qWW3b6wKFGM1AGP1VPxedbqz8b5wEZNj4elQBEhNLLA=;
        b=Ai69Yx0bG3V1k4T7yOLj1TF0DaqIJbJzkeBbFuo9AqyvbWDORu14vu4Ivm2Oq4lPRs
         LG6o6Bd9Oa1gGC/lT2iVAFf/l2Lzhfy70cPnkwUGuw6KIbQCS7zeX7wQ4f3QfhmKkG1V
         kF5q9XCYN5pp1Ybh46MkdpyOBE5P7Kn+h2SLfpI9IBkNAp0MrSNslCF9RspMkOGFEuAO
         6gFsEXE5aFzXyusseibgYMw1RHADMb7g2kYkmylMQNeYRuh96d+alYSBEV571/nZGURq
         JSQgUfsiR3vq5T41W4rWQQ1TkyJAmmolrv1KMjMQn57tyhhBH/j6/jDkPZ/cjY34FPzh
         mIyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=t9jN4f7J;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id l22si341214oos.2.2020.05.14.08.01.02
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0U5h000451;
	Thu, 14 May 2020 10:00:30 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF0U7t103553
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:00:30 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:29 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAr019279;
	Thu, 14 May 2020 10:00:25 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann
	<arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Tom Joseph
	<tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring
	<robh+dt@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet
	<corbet@lwn.net>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 09/19] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Thu, 14 May 2020 20:29:17 +0530
Message-ID: <20200514145927.17555-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=t9jN4f7J;       spf=pass
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

Remove unused pci_epf_match_device() function added in pci-epf-core.c

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epf-core.c | 16 ----------------
 include/linux/pci-epf.h             |  2 --
 2 files changed, 18 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index cb6c7b886325..f9ba2e8d4a99 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -347,22 +347,6 @@ struct pci_epf *devm_pci_epf_of_create(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_pci_epf_of_create);
 
-const struct pci_epf_device_id *
-pci_epf_match_device(const struct pci_epf_device_id *id, struct pci_epf *epf)
-{
-	if (!id || !epf)
-		return NULL;
-
-	while (*id->name) {
-		if (strcmp(epf->name, id->name) == 0)
-			return id;
-		id++;
-	}
-
-	return NULL;
-}
-EXPORT_SYMBOL_GPL(pci_epf_match_device);
-
 static void pci_epf_dev_release(struct device *dev)
 {
 	struct pci_epf *epf = to_pci_epf(dev);
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index e51f3070bcc4..9bd89f1be1c3 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -168,8 +168,6 @@ static inline void *epf_get_drvdata(struct pci_epf *epf)
 	return dev_get_drvdata(&epf->dev);
 }
 
-const struct pci_epf_device_id *
-pci_epf_match_device(const struct pci_epf_device_id *id, struct pci_epf *epf);
 struct pci_epf *pci_epf_create(const char *name);
 struct pci_epf *pci_epf_of_create(struct device_node *node);
 struct pci_epf *devm_pci_epf_of_create(struct device *dev,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-10-kishon%40ti.com.

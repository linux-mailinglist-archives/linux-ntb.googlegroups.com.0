Return-Path: <linux-ntb+bncBCOOP4VF5IDRBMVOSH5QKGQECUBSSCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id B692826F615
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:44:03 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id j8sf3855921iof.13
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:44:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411442; cv=pass;
        d=google.com; s=arc-20160816;
        b=FyVlDtnM1TlUJd+FX4IHmix8Z8w6tWf3YTDK0ptncw3VPGE/go9R7LaR27DcajP6Yu
         0J6uqpEm/PzJSwVKKH6RoHvRqPPVHjLdSm+oRVEUhb4kVQiQw5xRlQShK+Ljvf/c3IlL
         zBwaGQSsYhzXTPrcJ06uM5OADRalUvD0PmOK1V+AOShvWqmI56wT03BSEQGHt4lx1fD9
         gf8dyd9bpji+WZOM6Z+N2OsrT7rcH7Z90HJ6ItLUECmw3ZiDRPcXxxsetrbYG/tUNUQ0
         85/Wgp93c/KutqUTTtMP8iQB281E/b5r+zdF2GJvh0i1Io6bSMzlHattLzDicvYOyvtO
         8ilA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=QHPFdujn9w118XbMJnJlUcARPvgMMWic1CGpiAuLmeo=;
        b=HgggS+P8QPe6/q1hrFwomwCLXVLhn90vQwkttuws5q3Y4ulsPuPEjslD8yxnn+gj3F
         Jth2VBMoLrTH8EsZu/yaN2oc3M7LR0I8X1HkNn0916bAHYnQ3c3Y6obj9JyJQb2FOHiT
         +aLa/T2t+t0+qZ7fhBMtQYQ/ZXDK4uJDi9QRRIG61iNAdZNS01XHqvWp5LMF8cJpuf08
         vDWJwf5giunO2Hrt3J28oDWkBsPSRAYBc53e/QEEK8phsMv8KvDSh0gV7gE1suLJUcUM
         /tcmqcabzi2/0sEOINkGyZknizYTR0h3Hn+rzCxyUG2koTbM7ms6AdkV6//AHZ+Yx6Rm
         VZ7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=tEweahrA;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QHPFdujn9w118XbMJnJlUcARPvgMMWic1CGpiAuLmeo=;
        b=tMuE/Mv2xnhx8WpZOoWz2kc76atXgP8NcWVLeTBgt9zR/PKMT3PxhnVGS57ktBoFAF
         oJb9HaHxXN0Kmy6sw44HjISYI9eAvIFUiLEJdioQ0ri+jyx2ja3nnkyO8lGdC2b95rd7
         iN28Q0HrkAc5RSE0mgXvZdZsve0vDU/e7n/sIfc8spFLqI59+PbpFNOQz7aVnuEz+Hwu
         jV9Qo5qU8Zphe5LfgKVtxHn2cssP0t3qSOd061bgwnYWoeLvcJXS6owSWJGkOqx5UEX7
         d5hFBoqlp2/kN6j6qTSvXOpHyiwSPd9P2VZRPNWxCwTgjJ4E1+Vf272Q14d87YgS+TBO
         vU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QHPFdujn9w118XbMJnJlUcARPvgMMWic1CGpiAuLmeo=;
        b=fvuJ4zR4Z5EVtnB/eAZjgKgC2YIc55iY1odcrVqPKC6FsFdgzV52EkAeS0/0J7AGpX
         kzif1QI5WjD8y7q9LSS9JbMhuAOQmXOZAW68HJArwxbs5b1d3ruQVu7E99NlsuuajoCY
         dxXjpfjtOjRpKT9ru3ZNy8XlmKlDeZ1GCqeoOt1Gkv8NfrL/xyU5+i9KwNfJB4l7va/P
         8L5sV+utIoy96zBGHvyBTvjUZbfd5j9cccvXDpJs7avTx52B2C8/ZmwfPCeCf9xfLeNR
         FUvcNZtr1Qp6bA0p0Eu2IlPJhh1cmX/oLq6uLG+v5NMeHEtqeOscsY16sPm+M1PzjRgM
         g3Ng==
X-Gm-Message-State: AOAM530ix7JAo0cW0Ag6ZG/cDWR2XLxPdF/BA3snRbq3aMow+xNyDzja
	er4nexgLvp9vG4UiAk52mEU=
X-Google-Smtp-Source: ABdhPJxGYfqaJSkVJvz2zIU6JJohpns5wYQMknLLISiacZAJsle51O3WMDiHlDPuHdwaYhc/KCmVVQ==
X-Received: by 2002:a05:6638:16c5:: with SMTP id g5mr18057385jat.112.1600411442710;
        Thu, 17 Sep 2020 23:44:02 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:14d2:: with SMTP id o18ls1008173ilk.6.gmail; Thu,
 17 Sep 2020 23:44:02 -0700 (PDT)
X-Received: by 2002:a92:9408:: with SMTP id c8mr25643296ili.61.1600411442320;
        Thu, 17 Sep 2020 23:44:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411442; cv=none;
        d=google.com; s=arc-20160816;
        b=mN6S5g8sXpReVmrYqkQymulDRZgjGSvkXsmAJ6PgxTdbZqdW3K2gcszXWzU8UrViEr
         3bvmfaIt1nTh1rXmekPfwTRDph5VeoXKYYiWbXXSc4yHI5f1ugnSnaWe7woV9RcPCAe/
         6agQiesrO8eekqEcU8uCMs3WrsTHcbdQhZ8uHnmevK4inRfy+YsUoVZ4Xwg3Bsh/g4aO
         3N8DxMwrLiLyMbSx7gREY/E27kOzIGDu+bebs495xylue9eAbLPBcLwnH+/dKuu/ymDH
         hdskghNX/rTvwM8ubzIY77r40wjpaVnsmb0rEZqJPv3/yLz0wT+DBep5ubMFVchrm2uE
         p9NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WCJiTCBYarku1p+J3FGwyc0AS5UhsiZgThHHJxu9xzA=;
        b=saVFGxCpVCPGbnUA0rBfy13XHyrAPn3ib0+nOvRz7CAXBD+oQVcwNQAzqi8de1DPD8
         zOkttVB3EbV2QYAK08vcSHMWSNxIlKp+rD0mqxXDzbDOWAlnGVKcXajN2uFuhnzdoMvQ
         asShFQgqrvKGSouU5kdJCMZCdaSSOcfj2SR1gRTcaSrzX17OdwVnQehSFnr53tNWI9s9
         v3YlsB5K9lI0U7Zl8u1YRcaBvbPfx3UolNIlGVamNqgjoILdmDyvJAJtCyShjt5NN2M9
         A2S1cSOHlc9Z0thqGGq6+vFIEdoiO6sr4BSlcN+sVhenlei1z+WgVj+UMaMD1QbnVJ/j
         Gi3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=tEweahrA;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id n86si149717ild.4.2020.09.17.23.44.02
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:44:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6htbo107477;
	Fri, 18 Sep 2020 01:43:55 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6ht1g124170
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:43:55 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:43:54 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:43:54 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCP094595;
	Fri, 18 Sep 2020 01:43:02 -0500
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
Subject: [PATCH v5 05/17] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Fri, 18 Sep 2020 12:12:15 +0530
Message-ID: <20200918064227.1463-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=tEweahrA;       spf=pass
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
index c977cf9dce56..e44a317a2a2a 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -282,22 +282,6 @@ struct pci_epf *pci_epf_create(const char *name)
 }
 EXPORT_SYMBOL_GPL(pci_epf_create);
 
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
index fa3aca43eb19..f373a134ac04 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -165,8 +165,6 @@ static inline void *epf_get_drvdata(struct pci_epf *epf)
 	return dev_get_drvdata(&epf->dev);
 }
 
-const struct pci_epf_device_id *
-pci_epf_match_device(const struct pci_epf_device_id *id, struct pci_epf *epf);
 struct pci_epf *pci_epf_create(const char *name);
 void pci_epf_destroy(struct pci_epf *epf);
 int __pci_epf_register_driver(struct pci_epf_driver *driver,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-6-kishon%40ti.com.

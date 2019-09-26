Return-Path: <linux-ntb+bncBCOOP4VF5IDRBCGDWLWAKGQEEPWFBXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 4968FBF16C
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:22 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id e1sf1235530pgg.7
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497481; cv=pass;
        d=google.com; s=arc-20160816;
        b=d5GpdwDJp3w1XhZDX1pSbVM5Lc8RJgN4znti2pzOSk7f8tpLDaoiu4hUNHyG6CMwKX
         7QoxJjPrWF+4L03d5i941Y+jqC8+1BmeGrqUwNsvuJphglP4h1tp8BO8vB5vN0verpqy
         9zwMPOZJLADnKxsHIGJJrWJtOCeSH6KFQ/lz+qRdoT3LALfD4HcZZHPN8tqhd3BgWwYc
         cg834miF39XdCqjEj2+FjEUlxQA4s6U0AdJZJPJnM1xlw9bDFURdx7ytrsNSK5H9xk/t
         1q/RG+oe4MCiWBLAx22Di79r9mIs4H9ocd9RUfXSsjgyeSlNoo/WSTEMohJeulaqTsAg
         nQgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=rS4GMdePdQFd45QrS6xKxysW29oWzXHvl/U9J+i67bw=;
        b=zEf3nzZgel71V9rQ6ZMAM/2EoYOOYxKC20/jjb+cnoS5KwZaOkp5aoyEgV01qVzjyz
         dZJ7jJnkZl7r05DhGfw7qAB6nbEGU95qbH8lNs7ZcGjIQeyzLPJQiklvp4dvezrpmFnY
         T/mdKVw5DbxSA9TqmqlHa5IFBRmW7kRhYVl/tKE8Keswy8dFdZx6DhpTc0vksAVBWPlt
         26eu29EFvNYR3VuOeygXZMkZs5NPIYSb8Mz2KOERcb16aJwScL6DkX5ipujtkb9YXWRZ
         Zyi2GY9p/SP/OTD/FHFdqBmWLJr+JZtKjSwNwp9TO6C5yihXNI5n7ngC2rqC59HopM5M
         ldXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Sc6WLz/r";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rS4GMdePdQFd45QrS6xKxysW29oWzXHvl/U9J+i67bw=;
        b=gDidUbQGJlkxmCZsvRY98fKwT9Zb/IUqOMPugRXNaNs0RbUgST9fU/wo3s+l+NEiwZ
         t2NpBvhjyQnRNuEukjIkjxoPxKMBrSABmOl5cnq4ks1tLEJ+ghut9eX/OnNow+R47dch
         RxLV4gBYEAtn4iU2tPrvJ87aPgur/UCuUGkilFmU1Ad0q05BtQ6r5KANaj6cOmYW77ku
         UXBFRs3dC3stBSSh8u9v2Adg4n3QylADJELPhQNFiXY/fQOWlCvnTJJs1x+vhT5AzuGW
         Rl3VJakY8cZLxF/ljqaxH0QYGSjmjRGjLBjYuJhT4H13JWB8ecZSpMhVIjJcmKb23hjy
         ZZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rS4GMdePdQFd45QrS6xKxysW29oWzXHvl/U9J+i67bw=;
        b=MDYTFmeQtGnNWhDFDlvLlMCTSSfu4JybaYFLZy4mUq4OaiktKpp2sd3URs+yD1Anh6
         103wuv2ev/USZWHr+Rq+RBIXLHG2+xJ82YZrcEQ5vJpEsQkl6dlQMo4m/AGxkxtHA3rb
         HnGRJXLUeGwvL5MrB+G2NdHfJlZSWFHAaw9XJLsz+AbEocfhjOaoXiU5Ob2GlzPCoBve
         X8v7E0XS7DXYWQLydSBqIiCLh0Z8oVrAFav2dnoIlDCEGyV6bbLK0t9GeZh+KjxD5RyQ
         NCaa/6GXq+/HYxAl1bZPGvwJjwMzI93y5FN46oHGGyDWJHUloGBZNwEcifQCwvQhxn3G
         sPNQ==
X-Gm-Message-State: APjAAAV4jd9gzD7udZC+5lEhSgNJCUgOunwMRQn498NWi2XU/jQXwnRO
	x+TagMuqye8GLh8Tv8Sr0o4=
X-Google-Smtp-Source: APXvYqwCSIbvqElEjAsg1d+6EB5qmxyNZyn1m72VyUBw4yP+uO0uqk9/wYOt5Nng+F7xT5ivowZuTw==
X-Received: by 2002:a17:902:968d:: with SMTP id n13mr3346228plp.263.1569497480892;
        Thu, 26 Sep 2019 04:31:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:2766:: with SMTP id o93ls666005pje.4.gmail; Thu, 26
 Sep 2019 04:31:20 -0700 (PDT)
X-Received: by 2002:a17:90a:c244:: with SMTP id d4mr3103122pjx.129.1569497480622;
        Thu, 26 Sep 2019 04:31:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497480; cv=none;
        d=google.com; s=arc-20160816;
        b=i+Z38PvyihZKc09zc6g7ecqHcVuCxAXifdTNVlJztg10CFNOMg1EJEK4N/JxP5vhZT
         Lneuw6gSidIdqWU+dlM5V2kIAPXWRhKRZqMbzTWQe08QgPdDVvu82oZvv/9z2TlqSND3
         B8kiPXB3oZo7icXBbdgymft+V9EOJ1U2BP/wJESRmeT1cIA7gBIF6CZ7v+li+U8Bof0x
         vNjoSJdcsRO47lRfRZrMn7HBsl3UkFDvwVtHNDIt6HdXQnwl0s0v1axA67S23nWuj5C9
         Fw25pqQzkUG8CK/+xNhczt2AKiTV4y4Q2kymn+wdyX1k18VlKe9tUfvn+Ywc5VKUiiBP
         5J+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=E2GTTExAvbZbBjqJm7peVu26RwtsAEY0HmYYy9aUZio=;
        b=p9Bs/GS/9Vi4zV4oi0eUhC6DpFWf4lYGYw/USZQUTy2qZlsn8i1hHtD63uZpqjxAD5
         TcYz5qzJcAgP1gBbHc4avbCXsbuE82PeVqzT5IVq9gLVKdWO0geeI7WG8CIBThwgOgLp
         gLaCOCs2hiLqtmDy6zurLa7AlA5fM7jF62rEvlhusjXY4whyksvPzGcBRiYMa7NLjkmX
         ZjmysFWyy8aXUVee1TWoGzs234AYo/4//dIjmLtLizGLu4EhcPtBHDkft8WVwo8bNZPb
         /83YoUb+wZopPG2BKjdwEivwLh1VkVjqgfIZK0eTpaK+EkYphR1W7192pDcEV2ePvGmV
         1uPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Sc6WLz/r";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d8si65966pjv.1.2019.09.26.04.31.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVGt5042493;
	Thu, 26 Sep 2019 06:31:16 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVGH3013966;
	Thu, 26 Sep 2019 06:31:16 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:15 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:08 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTk3069017;
	Thu, 26 Sep 2019 06:31:12 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Rob
 Herring <robh+dt@kernel.org>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>
CC: Mark Rutland <mark.rutland@arm.com>, <kishon@ti.com>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-ntb@googlegroups.com>
Subject: [RFC PATCH 10/21] PCI: endpoint: Make pci_epf_driver ops optional
Date: Thu, 26 Sep 2019 16:59:22 +0530
Message-ID: <20190926112933.8922-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="Sc6WLz/r";       spf=pass
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

pci_epf_driver had two ops for bind and unbind which will be invoked
when an endpoint controller is bound to an endpoint function (using
configfs). Now that endpoint core has support to define an endpoint
function using device tree alone, the bind and unbind ops can be
optional. Make pci_epf_driver ops optional here.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epf-core.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index c74c7cc6d8bd..67015c66d09f 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -446,11 +446,9 @@ int __pci_epf_register_driver(struct pci_epf_driver *driver,
 {
 	int ret;
 
-	if (!driver->ops)
-		return -EINVAL;
-
-	if (!driver->ops->bind || !driver->ops->unbind)
-		return -EINVAL;
+	if (!driver->ops || !driver->ops->bind || !driver->ops->unbind)
+		pr_debug("%s: Supports only pci_epf device created using DT\n",
+			 driver->driver.name);
 
 	driver->driver.bus = &pci_epf_bus_type;
 	driver->driver.owner = owner;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-11-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB67DY75AKGQEZU3QOKY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B297625D2B6
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:51:24 +0200 (CEST)
Received: by mail-qv1-xf3a.google.com with SMTP id f8sf3345482qvu.20
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:51:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205883; cv=pass;
        d=google.com; s=arc-20160816;
        b=IBrC2g1b+w9tUFdZQjdVLztfbrKram/tDc2j2occkLqL+9kwo87xWz5C+CC3yrJ6Rj
         95hnkHp4QsaPjjJzfjS8e9Whc6cnEO74iExbEXwMxR6reUMEc5Mru4p+LKLJ7TVQsHQE
         cX+yRnjp2F1qELU1Rz2WQ5CrhMSAAAkVJQjaiErwpszOONpyNVCRray38A+uodVlMVke
         G4oXYu9gxiEFyj6v63T6+gmVfKxupcrrUkFduSpLQqCqUoaD44fGx7HXAniBubU6UW7K
         ZATIrhhDAEk50CCirWVHkX+hI921udc716/sMd+GX8W9yUnhbGO6WOnj3v/hhRokxjZm
         RvWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=2TvfL9Rpq+sLZsn43v+I6FlMVUzRg6m5LBMe3HGtRYM=;
        b=L5VKuxkBCN5c82EgB0hVa50mQkhCjFP2hQLYXDy4PMgOiVLrCzs1sk76XPsL+kxl7q
         ZwC3Kp/xcxNeA7LKdBk5q1l/tu5zAFV28Q5zKYEkLqTzZKnsFmcNAwiOlQ9upBefjhYb
         fQetgnu3FxsObiQmA/Xn7KXKg5cvgZ7WKOkCQohjRn0Yc0EkizVdSSeTc9A6V/AQ7SyT
         TtMOPAHAwpGrz6thxZxuLW6UkAcqndXTb1TL9foZFwPzHBOFSEuztupOi2w8zqVBBHEx
         gRv7OcWlocrFee8xsOpZv8kWufBhfkD2F8aDTtEeJiOKxa8IBxaGmkwyFbeWCbgfCCMj
         7MSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=J9nsmYhK;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2TvfL9Rpq+sLZsn43v+I6FlMVUzRg6m5LBMe3HGtRYM=;
        b=kZjY3PT03zPxaWfcUaz5VJtXfzzbkmH4vo9L7MohpaJLG0W969QRC5uY0n+amysz2/
         S3DKjYfenWioy8odT+Oov3e/sVDJ3DmRYQai+JzOWRYguG1ndE7ppQE81I3D9tpWu3/o
         xpO/lnOsJnVdSDCKdQNk52RjV3ndcE1F5KBajm7JbLMq+3T+R05Yv3INHtJ6okMlMbjQ
         jGYl3+tlOwHqFpht/U5H/ZGjbVuLZxyhtTn+Jttm7d/WdwVrtKQVhtQJHvltpP7UHh+Y
         KKD/7mtgc2iiTfDmWvfSfhhkxW8G3uIxj4NZWcmM6jfzkI2hfuHIIL2oK2rEsVhiLzwh
         wg7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2TvfL9Rpq+sLZsn43v+I6FlMVUzRg6m5LBMe3HGtRYM=;
        b=SNvEWUuzuOMlJsf81pYQbIwRbu5EsJjgDxT7qUmTqaf6HU4RwIFxd+E+3aglNY9P3P
         W1r9ssbR6HuX6PlSX5lak+M8VDKJzT/5C4vGNQZ+4ifvDMPXnxSayXYmnWJ0HHEayBPV
         ZN3NUw+GHGtvxWUg/rPcRU7+9F9boVPv9E2BUhKjYsrc/ERBCuPssue3JplQTLZ02ROh
         vIwI9Z1PXn8GM5Z3143J0txpFVGq111l5iUJFiTzgabLjdy9FTdaISfzSnF98KqqAj7s
         F1LFazv1m7BRyN6qRjDWPt8cdUzfUGX2FAYEFGl7xrrLiOMrYoE6xJQK41RxImgaFiTl
         5AsQ==
X-Gm-Message-State: AOAM533SO+yYHF7KUIr8GwB9s/VbP50yoDcK9z8ph87udYyvYpIphkMl
	1midkR9LAF0TbHr77p7cqrg=
X-Google-Smtp-Source: ABdhPJw4yK3siaBjAdwwQvlL23yrUbM+zIQ5PZGQOT0ThXqCD76ypk+4st55e8CfjpJtrjOCRexg/Q==
X-Received: by 2002:a37:9bd8:: with SMTP id d207mr7378716qke.100.1599205883649;
        Fri, 04 Sep 2020 00:51:23 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:b3d9:: with SMTP id b25ls1996981qvf.5.gmail; Fri, 04 Sep
 2020 00:51:23 -0700 (PDT)
X-Received: by 2002:a05:6214:1105:: with SMTP id e5mr5803244qvs.11.1599205883229;
        Fri, 04 Sep 2020 00:51:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205883; cv=none;
        d=google.com; s=arc-20160816;
        b=kPeBbZaHIUa0Lap33YxGX2EeZOx+VCMjz6Oow3gyi9WleGdej45IkLi9Ko11ueWZHe
         82yPbKjk5RSWVm1HY6gQy3qYo59PaBBQIRUX3mGROLwwv6xMcXiuv6+j7CrpJrj7yE0e
         FkgdvmYI0FtbJHUHyyfDoqIBvDm3pwy8lPshI+YSGHs8x69f1D+Xqvd39kCelwZCSSxI
         JCZ/9yR5elbke63L2qBeiP63+LEQ0B1jUm3tAURLvuMGtwyCO2XCzQz0QQW5akb4fiSy
         sonWGTKRTw6Jf0FyeEgRnTyipY3+78/JKHDB0PhXKbXgq1pDvvmh94vctUJBjanud/tF
         UwJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=7qF2OVbWDyaTlnP441W+A6WtQychKbyb9MpcDopQVLo=;
        b=0v7FRHeZ2D45UeiOQuGTPGybIMvcunIHmamdnF+JX5FAwiXAkghXwY3d5fsHMf1+h/
         1zW68oqmDOq8TeQEAJerq2hBHMLOOkrMs7hfa7awwCMJkP49NDYiGTSk8eOjwbzjVAu9
         H38hSkYVtwBiv0TBSARYf95adoVpHWQlBtYPbxChMW1XHJB3opxx+NgiGFB0FSRy4oBr
         NY46JX9zpkxOyDmK12DWV3jjiLefNnK5InfXt8kjXoelnnwCRji6A0sznLkRVygxrDpJ
         no8mc9k/8oy45QLB0nNckh9Qt5kfugpSrqotHMUK5jb1jOhFQpiV59lyN/RbaqDrAU8Y
         tSIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=J9nsmYhK;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id u2si198904qtv.3.2020.09.04.00.51.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:51:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847pGfc017731;
	Fri, 4 Sep 2020 02:51:16 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847pG9v090956
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:51:16 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:51:16 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:51:16 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osN4058796;
	Fri, 4 Sep 2020 02:51:11 -0500
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
Subject: [PATCH v3 03/17] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Fri, 4 Sep 2020 13:20:38 +0530
Message-ID: <20200904075052.8911-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=J9nsmYhK;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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

Add an API to get the next unreserved BAR starting from a given BAR
number that can be used by the endpoint function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 26 ++++++++++++++++++++++----
 include/linux/pci-epc.h             |  2 ++
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 25e57672e1a1..1afe5d9afb0d 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -87,17 +87,36 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
  * pci_epc_get_first_free_bar() - helper to get first unreserved BAR
  * @epc_features: pci_epc_features structure that holds the reserved bar bitmap
  *
- * Invoke to get the first unreserved BAR that can be used for endpoint
+ * Invoke to get the first unreserved BAR that can be used by the endpoint
  * function. For any incorrect value in reserved_bar return '0'.
  */
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features)
+{
+	return pci_epc_get_next_free_bar(epc_features, BAR_0);
+}
+EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
+
+/**
+ * pci_epc_get_next_free_bar() - helper to get unreserved BAR starting from @bar
+ * @epc_features: pci_epc_features structure that holds the reserved bar bitmap
+ * @bar: the starting BAR number from where unreserved BAR should be searched
+ *
+ * Invoke to get the next unreserved BAR starting from @bar that can be used
+ * for endpoint function. For any incorrect value in reserved_bar return '0'.
+ */
+unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
+				       *epc_features, enum pci_barno bar)
 {
 	unsigned long free_bar;
 
 	if (!epc_features)
 		return 0;
 
+	/* If 'bar - 1' is a 64-bit BAR, move to the next BAR */
+	if ((epc_features->bar_fixed_64bit << 1) & 1 << bar)
+		bar++;
+
 	/* Find if the reserved BAR is also a 64-bit BAR */
 	free_bar = epc_features->reserved_bar & epc_features->bar_fixed_64bit;
 
@@ -105,14 +124,13 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 	free_bar <<= 1;
 	free_bar |= epc_features->reserved_bar;
 
-	/* Now find the free BAR */
-	free_bar = ffz(free_bar);
+	free_bar = find_next_zero_bit(&free_bar, 6, bar);
 	if (free_bar > 5)
 		return 0;
 
 	return free_bar;
 }
-EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
+EXPORT_SYMBOL_GPL(pci_epc_get_next_free_bar);
 
 /**
  * pci_epc_get_features() - get the features supported by EPC
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index cc66bec8be90..cfe9b427e6b7 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -203,6 +203,8 @@ const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 						    u8 func_no);
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features);
+unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
+				       *epc_features, enum pci_barno bar);
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-4-kishon%40ti.com.

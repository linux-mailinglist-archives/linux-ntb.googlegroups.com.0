Return-Path: <linux-ntb+bncBCOOP4VF5IDRBL526X2QKGQE7RYVOSY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C17D91D33DD
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:04 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id n28sf1426671vkl.4
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468463; cv=pass;
        d=google.com; s=arc-20160816;
        b=UeQCaXfBELixtq6k6mWMWzHAvb+dShganOFQldEmP5eNsEDuF7oHB6gPOjR21Dw8zt
         eqwXhLZ25qNV7fQ6SnknwPSUQlWPo10HnP9Pod2j8eZQkXyO1pAE48esJwaecyIiokue
         117XFfLpSNe+WNqxdYwXP2w18XALDCr2GOkG6Tc6WgO5tENxlUJIEsG2kT/JY/BqRoWm
         uByM1xhkIg6GXEamClfAtWA09vpSH7m6TA9vNgl7xx3g9i73KsVJgOQXIqLsLZJzxn84
         fPG3UIZRZccAnYcU2INAIH+J0Dq7ESUZe6rdhQN+J1DeFqhrP7oC/P3ejRTB3bc+AlgA
         NZ1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=JT0Rn65spH9UUM2xChC9EkETeFGW6swE3gemrXkG/aI=;
        b=v/BiRP+Sxl2bGU53Kn4wky4ilKFJpIIlISGpB8rA83R9CH9iPuiO+nAIfcGd95TcYF
         Yq6YYyRxV+7qSgJQeGfHvzut5gYiZ9tdJcIfny5ibNqwPJQfRdKMN4lp9AiXFso03VSw
         BRmTvhUXG+mWgmPHEbPmIAtnZ/UzpJ1A7DeNHOuoii8p/Ky7WKa3cUn8kKH4o4cc8chD
         rf2PFRXiUVxZd+hfxtyd4FtDp8aKFQ5uJ3EqIFtgxqFV8rF0SquoRlPPUkvjZKzBLQSI
         vSynqtlbomVdbZDeDo86bESPR56A3pZmnKghsNlRhikmMchGgn4n+LCfy0ChxgyLf7SD
         xRZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Zto/dwKC";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JT0Rn65spH9UUM2xChC9EkETeFGW6swE3gemrXkG/aI=;
        b=qNQYeRc07CfrMHsyGI52++udLapAxiEo03ok9mlxDhPoVWEIHbH5dxM7SWahiYKQWQ
         chcOyxc12Nhc6s361VcHpL9iZDS9qNcZXX0aiEaX4DakGcle3Gbd50WN+QbAT4XrmHaj
         N6zagFtSeYno1/2Pfy/sikJGOIV+XbN/alnYSXqx6jBgpzEo+KUc8N2yAlze/C9BbMi5
         xqT1Tknt2y4BHFCkSuyEdLY6hPqC91jHzzWhqpM14/Qphb58s3jhTlcEbbUKBLGcSwCw
         LvwD5jOYzGhCG1gbwSZpSHyA2/L0Kh0klCugoCBFgltJXk9dRzJ0QwO8UxU2pzYFTpof
         UsHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JT0Rn65spH9UUM2xChC9EkETeFGW6swE3gemrXkG/aI=;
        b=UHo/idysctNCmt3PNuUJiz92UnQb/F+RCpE95i6dEKgJ+6U43dp9k3Hqa19rux9f2L
         +TAviqBQSMc0P3s0ydepUN1LKT1PE5Foha5WkdHKGxJHL0qs7P2/BE/wu3rqUvmINpP6
         WrBZkXUJiEjjhr0kO+ytwOVxu4rTA+9JHj0O7V5PoLsR5geQRfEwdgOrOAPRCz16J48N
         3EwbyzW6H/aXNTD/DEPYgwKoCUQk8gO98KMrc6VY+DG63VWLEI/RdM41+3HRAS+rSLhL
         6BMdi7yL19dHNCwGfZJt7dkCYMefOi4tR2poc9r4w6YbndBTOlQZWuaYV2MqDA+DjkqG
         M64Q==
X-Gm-Message-State: AOAM531i9ShgYG/S6BrQbVy+YZLwbD2UygKs5e8Sjc+fXe0vzPkSf7B2
	2uVCs5FKXMwOecOReaPi9+A=
X-Google-Smtp-Source: ABdhPJzPwGyTnXoKwJKByYZf1id9coyKbNtt6lGhyEiSc4d93dym3RCimAeFCHml0f5o7AeJhxNq7g==
X-Received: by 2002:a05:6102:455:: with SMTP id e21mr3488725vsq.168.1589468463594;
        Thu, 14 May 2020 08:01:03 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:7f86:: with SMTP id a128ls421800vsd.8.gmail; Thu, 14 May
 2020 08:01:03 -0700 (PDT)
X-Received: by 2002:a05:6102:392:: with SMTP id m18mr3894849vsq.38.1589468463170;
        Thu, 14 May 2020 08:01:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468463; cv=none;
        d=google.com; s=arc-20160816;
        b=zQj19HOFlfMtMKhfYD+NiuBtqAoUD/TkmknVg3VplVwN3cpXXID8mDkjgR86enrUjH
         U4iFs7L/27xZ/W6+u++8wdJ1ePNqOD0/K+rV4cJJwZY2FOSFA/B5JhJWu1gyw4zL5P4r
         qALkm1V1z0KfOrtxs1z+EczALTbbxuXWav88mh6zTL9njJBL9vD2qn9bU9rWyf0hSh5E
         KOpKhBwUMdWdwx7CSyBQc0nrhd+gREJ1u09aaK+9NPwJSd0J0BrPQDjTfJyfI+gh/3cD
         71VJpVYrAj79+tYMeUFGihCr2CDDO3PQ5NzXJ7h2US9oydbfcchFbNSPwMEJKiou3dTC
         C1KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=y89RQ0LlIPyIbyZ2I5CO0BLv3OcOvgocP9HIgT4BsH4=;
        b=GemsHrgGZRC0YJsa3HHBGYg5O/2xNzQ2cXnm04QQ6IzALAGeTo9kkTqdbnJdDmF+T0
         69eo7Oxnm21U8uUqal53t9OZW6sDiJYIqfWXA9hAZsXNiWjwp2mW0/mO6LsA29kWs7BE
         0Foxb2czx0KWwaxkzMBCFBA6M0DbknsZEASCkBmr0R7H1dNra7OvBglT5VHu0c8IsRsp
         4I4uLSpNUt9ikk3BNsAXcqdOmL8PH3hZodtdgm0TYcVywxc/qj5Pf9QkeGQzFE88SpST
         K+HtlwZNjctEzfcaWIBEzlkx9Q+Nzixwjj7Ls7BWT1Xos55wRMwOQkNgJ4kWwzVALDJI
         qzsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Zto/dwKC";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id c14si237823uam.0.2020.05.14.08.01.02
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0L0x000397;
	Thu, 14 May 2020 10:00:21 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0Kr3128969;
	Thu, 14 May 2020 10:00:20 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:20 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:20 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAp019279;
	Thu, 14 May 2020 10:00:16 -0500
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
Subject: [PATCH 07/19] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Thu, 14 May 2020 20:29:15 +0530
Message-ID: <20200514145927.17555-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="Zto/dwKC";       spf=pass
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

Add an API to get the next unreserved BAR starting from a given BAR
number that can be used by the endpoint function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 26 ++++++++++++++++++++++----
 include/linux/pci-epc.h             |  2 ++
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 49bffa2349c5..85e542aae617 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -147,17 +147,36 @@ EXPORT_SYMBOL_GPL(of_pci_epc_get_by_name);
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
 
@@ -165,14 +184,13 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
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
index dd3c2d566c3d..68f7c0d81442 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-8-kishon%40ti.com.

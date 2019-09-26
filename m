Return-Path: <linux-ntb+bncBCOOP4VF5IDRBAODWLWAKGQEBHMKFXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 9497BBF16A
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:14 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id k53sf1460354qtk.0
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497473; cv=pass;
        d=google.com; s=arc-20160816;
        b=k5InHGggYry2Jp0XL4VSDP/JCqpffBXkREW1HZa0coRQSf1/6hcGQV4W7NVZSFYQ9n
         iv6+pUnEAKPlk3UDp8hLu+uBfPapAidnJWE8qFCACCaNFyWWY05l6qmvizR5BVlzYuTG
         1mjGwSNfIAHbYLFpbw9Guu3vsEhtJ1GZCXDkd9iVQNkGKV5WL0PCFbQZ/9hAhWDRfw2Q
         aBtWaK68J0/mXZ+AHf/43weo8jd7drbHfwh2idmXjujP7Mq0VWRaNgz2AMf3q+UWZArW
         EWkkKg8kxyPg0TJ74tDebijSp5JOpFRgjxNpha2o44TkrwZ48zLYdKF1AJHXa1Oxl1ly
         rTNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=XF7hbk0JgHyRqGHObyDzlPJizLD8DObdizrTtgCLA2A=;
        b=sxM6VYGfZGSJHqsMOUR1lkytYmIyFubwNdlx1kk1tjn6QPKUIpL1DGGYn/G/pLBM0x
         a0T0TgL41KZlu+WXDIC14dBUm1r9ilqPYiq/tZ32Ipe61AXgMlRm0N6aum58+DoVlU2I
         /ESnmILT9f/OSGc/n4uI4WsAyTBdnoIcIgU5hyWPEt5JxX4tfTM+jR/D6ocX7qCiWJJa
         /pZZ6tYuP3GLG6c9v95LfxraMNBd3eFNFP7RZahJ1Ntp+SXL4pPxccuGDgASSzPQJkks
         ZFs/uoQC+7r4v6LQiVzcWq3LBTVAe94cwfPvau2Iny+yrVyHJZ2x+pnvFqzQdpQ2ToR3
         TAiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=oJoWYIr7;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XF7hbk0JgHyRqGHObyDzlPJizLD8DObdizrTtgCLA2A=;
        b=nalRIQaR63L4hQ/PYbdb61JegtU5K1mI25n+WOLtsuU2GDRoCuvtSUtNvCd/uBWmcr
         lAuPnX72qexWv5hm8dwYXw3OZfO34tHlbIg5t6wE/zDaOxB9+Q7UDMIE5mGan7eKKY/c
         WpU3KBNO/wgw0tdxOmq6ClMMobWrCBq1dh+oopVI72wZ/lZkH4cMupzh3wbhuNaDpDvi
         Z1XXGlVUzLTZu7VHQPRYyxfOfv8cyjyqPnrSg3gHg6nwQVG60GH2jKXvS2LL4uVFZMTh
         pmGrHXhd4218gc3Xm8wqREIIsZUDCQZBiU2qxz0uT8+NttckG+8O3j+m6C3z5prcRMKH
         0kXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XF7hbk0JgHyRqGHObyDzlPJizLD8DObdizrTtgCLA2A=;
        b=moy5IoxonjmkKDxqxRFAgrgG8FvNMwm5oEo0F9EDaaPHHiEu9CILX9kq8mALAxFbeS
         f2xuFPAJ4vWVIXs1pp9ZwRSVevKxM6wRoWear8dtlQ3ndHxC0mOffE6tqHYT+LeBG3B/
         5l6L4uVWhXm96GXlsK5R5xbzBlLSfItrFG7i7l7MP7Eagy+DjwP1sqCkh4Ibalze02Qy
         GbdCN+dQ2R0FhFKohvnQsIGroI1oCTHFQ5eJGnAByYUOb9tQeQVkVPjeeGjU5pkcA69G
         2aPFVoA9uDuvQodYwsKbAXIi4IcX4Z41sriKn3147Oasy431xDNwb5PceF/jGvTGJ/n1
         Dqew==
X-Gm-Message-State: APjAAAVhxBJL/JezqdbpwXGb9XQESkhdjHamXwc6pUfFC0pAbGGv3217
	oDvLJUbOkdjfTcA4Xmo3MFM=
X-Google-Smtp-Source: APXvYqwyH9tlrKeO0AfTzYaQwib2Fh0NjG/OvhYciBAD+ThLDDPQKkEGBGXiZshCvwOrTSG7289H6Q==
X-Received: by 2002:a05:620a:389:: with SMTP id q9mr2701135qkm.81.1569497473122;
        Thu, 26 Sep 2019 04:31:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aed:3341:: with SMTP id u59ls425091qtd.12.gmail; Thu, 26 Sep
 2019 04:31:12 -0700 (PDT)
X-Received: by 2002:aed:27c1:: with SMTP id m1mr3345983qtg.197.1569497472899;
        Thu, 26 Sep 2019 04:31:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497472; cv=none;
        d=google.com; s=arc-20160816;
        b=SXMot8gVa7TUBPS42EY5cp2ItDex0mx6FCitXofcXkf1ArQGz8gNhGgUp0E2uQYlfX
         3OE7PVIyAGAlZjJuBEhKVIG/3qFL0mBtFb1MpH6B42hgJGdUmezOVtbJbwt46I60Jiyy
         viyouoKVdHZr4bgzerIwxtKooMBTJJWvxhaeIwClkbSpUW1Whiuno0tDLTxkv5YsjPhp
         mEk57txXYjMaQuz7wRfgQzg2CByKGxuPwNCzHyi+fKB8xW41dR4c+MMq67jhoGaexzwc
         qpuIF/z724ImqIJhPy2Bnek1I9uwPqXIW1T295fkkQCjqLA1nyhvRppU4lboOAuRV/sY
         1Kgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=1Pg02YjtJWenOS8TSc+kZXfjbcewS60naZ8ogDPEpQ0=;
        b=oVzy35yxfM0wQgYWreQmL1won2KCM380ZvFvtqvYDKtRvXyhGGgI5ujHTN3FL9QHZN
         FD855APRFS7jBZezwiBMcaO2DCoSXTp5l+HRfe1kd2rh/TYdwcASl7UIzkq2lHFUAjdg
         lM/dT7Htk2xQ1DGcfKJBXHyb4S20cwVMUy3dVryn8X7pxRECBFgnFj0RLgDHBrc2cw8M
         hCWHf3l6HllUfG4c+kGv+zHI2dUeyuxsPGd4ThwcDGrjxTEwcPemklb3qaFnLcKuG0r/
         CkEXy1AWL4SiOdYyKIhXBIKY6CN1CjldP6jDAu4HkvUuV29YYYOyhDrzs6+i/D45VN1e
         ph1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=oJoWYIr7;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id n67si76453qkc.1.2019.09.26.04.31.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBV7V5026389;
	Thu, 26 Sep 2019 06:31:07 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBV7st050327
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:07 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:00 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:30:59 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTk1069017;
	Thu, 26 Sep 2019 06:31:03 -0500
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
Subject: [RFC PATCH 08/21] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Thu, 26 Sep 2019 16:59:20 +0530
Message-ID: <20190926112933.8922-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=oJoWYIr7;       spf=pass
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

pci_epc_get_first_free_bar() uses only "reserved_bar" member in
epc_features to get the first unreserved BAR. However if the
reserved BAR is also a 64-bit BAR, then the next BAR shouldn't be
returned (since 64-bit BAR uses two BARs).

Make pci_epc_get_first_free_bar() take into account 64 bit BAR while
returning the first free unreserved BAR.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 0c2fdd39090c..7eae7dcaebf9 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -153,12 +153,20 @@ EXPORT_SYMBOL_GPL(of_pci_epc_get_by_name);
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features)
 {
-	int free_bar;
+	unsigned long free_bar;
 
 	if (!epc_features)
 		return 0;
 
-	free_bar = ffz(epc_features->reserved_bar);
+	/* Find if the reserved BAR is also a 64-bit BAR */
+	free_bar = epc_features->reserved_bar & epc_features->bar_fixed_64bit;
+
+	/* Set the adjacent bit if the reserved BAR is also a 64-bit BAR */
+	free_bar <<= 1;
+	free_bar |= epc_features->reserved_bar;
+
+	/* Now find the free BAR */
+	free_bar = ffz(free_bar);
 	if (free_bar > 5)
 		return 0;
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-9-kishon%40ti.com.

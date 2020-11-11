Return-Path: <linux-ntb+bncBCOOP4VF5IDRBAUKWD6QKGQEXO32UQY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E872AF4D9
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:36:36 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id t13sf1369497plo.16
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:36:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605108995; cv=pass;
        d=google.com; s=arc-20160816;
        b=UvWVTi1DfUf2yBUFhBYf9d6SFg62p+vKIrKWMozwFofxXkf/HZc6EZGv24bF+rw/jD
         s5wZDAdo4UqnNUyfSolYfejeENWEKKxho6pEGTtg2CMBDGwI7UHoAH15DCbKE7iI1scW
         rwhsGntkdf+oThmWk3KaIwDFxGGEAyRkigBf4gt1sHg7Si/BE+g8SF4B3n2TxlbJ49XS
         7eenSAr1bcEUQhAXoY4LqNM89Xd+uROM7CLe9XVkblEPoiT6SGQ1Pa9Mc6qTVGuGHWQl
         deqTwE0uimoPzyXp8xFLussr7qyLLKo5Mt0Y3pHTiF20hB4LsfSX1a0XHfedsnfEm6k/
         XuoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=VtQDQ2ijcQJSj19hZdWN4pG+gynZJJgjwg1PktGm258=;
        b=tFiDkmTidDWcj7TLlcFGxean5BwGAxRl2e5MybL9NcaHPP/QjvJFrUW7kZsnjcW30s
         Z78rB4S8k3wZTXz23XcHKPkn9n0l4PksmJ62uU8dYPaky/OElPy8hwnATir5Tl/sS+zg
         gOkQ6LYKTPh+ZLYRLgoANPhhLwSZ9FK/g6wVkzkw7pznd5RutQtsrO6Hgu2stBJTramX
         ig3Ghz9tGV3bfNb+UQIbgk44GbuG4tffi7Lh/nbQRzVpQ3i65zic1IyaE/gt5FwA83eN
         hjvw9vhDjboiRwK11OEQLRYItc0TTuU4KHxdFuaAfO36m8WD24hXR53/tqfYJ/wCt6UV
         r7FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=afE+ZzSv;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VtQDQ2ijcQJSj19hZdWN4pG+gynZJJgjwg1PktGm258=;
        b=KOXPBntqVkP/NAIW8alep8tGShuoqvaSD5ssXhlFo2T2Z+KHBo6ULmO9PuQoNa2A3+
         TIocJjKduRZYeyvZ9LvNtPky7iZgdFDYEu34iC/Z827rRvb7Jbf0h2BxUrmNQCB7xmaa
         3AZuBIpewFO126G7AhbfTUlNjzURd2JRrjux8tHFMU/SOkNYutQpqFO/5LQlWCn3GbwM
         7/glf1hsUsYNJJIRM55rScPStMu4KK12hV4NQfcwuZTu7CH8UP3GYc2aod/kDLA2F7SM
         zljS3eg8BHtNBFzm6/wYKaFtS6iCootWXn7SBA+8SdcI7hCIQ7yKqPNX51L3BZXFWgxo
         ZQTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VtQDQ2ijcQJSj19hZdWN4pG+gynZJJgjwg1PktGm258=;
        b=Z6ZHEEjOxvV3R5L0GzeDTZzwff3p8HEar4AOdgE9BeevOIzn09p6BVz9xRBHpTLLWw
         ZP7mbnGo/0eguRLqtWf91dwbzNOCryLtaAowEFb6sJGdmMTIFn50Q1SMLWVmUGiSIYqR
         6Z8RKeKrgp63waXEGX+B6rtPQ+iFcxmI7Ek3HWnYAu6eYnGKC8ZzimZRLmlO5znFOCvG
         hxqryrtd5Tp1Wisp+jWgP81O9a1h0Y3E1NuGdAuL+AbvoRBpkaEWR1mE1dnOW6N/1IqI
         1RYvBqsPu0scjxC9vNOh0kpW+k68SzUzsanvzpl2bbj4xuaczJaMagXz/UceNMYpEV3D
         Dn6w==
X-Gm-Message-State: AOAM533f2cP5qFvVZR/maEkXyAERg6XiMYifnBSVF/76Aj2LLwGn72FT
	7zTWiDy2vnSeewQK2JBu/3Y=
X-Google-Smtp-Source: ABdhPJwLTiA8TOrx0d4R+K0EZc3zsIHJlc0YqQBJpRyI9iPReE72aw1pmxRw9AXfZmRzpEqdvEEFgQ==
X-Received: by 2002:a63:d542:: with SMTP id v2mr1821567pgi.250.1605108994848;
        Wed, 11 Nov 2020 07:36:34 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:bd46:: with SMTP id b6ls36715plx.10.gmail; Wed, 11
 Nov 2020 07:36:34 -0800 (PST)
X-Received: by 2002:a17:90a:6288:: with SMTP id d8mr4597001pjj.210.1605108994339;
        Wed, 11 Nov 2020 07:36:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605108994; cv=none;
        d=google.com; s=arc-20160816;
        b=iyDWW2NyZJ9UeTzjVzbIG06rXv6iDpbm4tvbn/S72UNGrtHPeaSO2yPFWiy6XwaQqq
         8rAt6l8cNJlnDFMIH274gI5JFxE86OwVM4mOdYpoDZ9rI9PgRcsezowxG4ULW4ek4KHL
         16evR31hax/epyNRVjYX6ZyurQ6BoiZUbgN1gSbM6VwkTyQ531bNjQOV/HZ09xhPlKhu
         ESz0sTfdl6JWItcoAWbv2Ct2Ntz4SXACS1oQtfm8bf9lUlQbyxnBfUPNIoEE1VTsUQ+9
         WONnYY6zfdrqimC7jWCjRRmMLFYgY1qRD5tmI4sP6kn2WdvkbMzq/Dh5dvEWQqFzuu95
         AJbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=7qF2OVbWDyaTlnP441W+A6WtQychKbyb9MpcDopQVLo=;
        b=Bw5/oWesmbTZ0EEglAAaQ4yU0ZaYkY9ITWjdWmvP0c7k9R8ZVoYTtpA9yHLkjWVWe3
         hXpsRy0B0yvszDid/RSgdOR4doguMkvO2wF6OFFw0lsQyf3slp4SlRhwLvQZF57rp4Ye
         1HPQV+s61ZFNG8+tZLbcAzVhvvwe5dJp6AFgwqMUWcWUY4KmtniTbIA3pdUNOCFUp8rm
         CTBfaRCtfbzkRX+ciJpKurDkz0E3J21azFCBQcAYiejZsR3dyQU/BOmRiG4/T36vH+1q
         BBL4PBtcjDrLH/X0qofhm+TAC0Yk5TB2tlMiQA2P0rLs0w9+Qk+EPYv9/QIPiyLIrQAU
         fY0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=afE+ZzSv;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id bd7si126431plb.0.2020.11.11.07.36.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:36:34 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFaQTI124753;
	Wed, 11 Nov 2020 09:36:26 -0600
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFaQeB111777
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:36:26 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:36:26 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:36:25 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa03s042109;
	Wed, 11 Nov 2020 09:36:18 -0600
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
Subject: [PATCH v8 03/18] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Wed, 11 Nov 2020 21:05:44 +0530
Message-ID: <20201111153559.19050-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=afE+ZzSv;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-4-kishon%40ti.com.

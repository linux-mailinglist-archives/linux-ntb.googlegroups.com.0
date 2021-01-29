Return-Path: <linux-ntb+bncBCOOP4VF5IDRBD4G2CAAMGQEMRP2PZQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E33330891C
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:44:01 +0100 (CET)
Received: by mail-vk1-xa3b.google.com with SMTP id o62sf2385016vka.6
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:44:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924240; cv=pass;
        d=google.com; s=arc-20160816;
        b=eV28xXZjIivPHd6R6L8ZgQ1u3mCwZBZxWUagNIdOE6Au3RSCw6oybtXZdXAIS4mpUg
         AhqoT4vxyuQnRHvRMrrMfOQhoanlQnFnjH5jjxi+2c5xabUXm8/Kfz/t4Y7OmyZpM5Ar
         a5Z2opFiIX1J8mVMS+nZmTiJ/I0AX3BRwGO4jDcgRI+zZNWPlUs1EO9/sfXkVBikCQ7K
         uJWSWO+uQ/fXyFrhrUO4CfHBlW4mZi0dCT5RpWtgnjR9GJhFwhqPWoUyxdKLQlpRaUVY
         uJxE6Uu1sq95Fn95bbUa2YcY/L6LFH5KMJHvMD4j5Lax3OqqqUvefnJUQwv67RVndWvR
         +G/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=5bEXTCrIQUlgtiikyTVdOyybICXNRskRChMlIQPJVqg=;
        b=bLCuBzYJdUxsBgQ0YO5XFxMgfJhPf+UiosXm3d7Au2LBUr9MfDI6NKIIFG8R/7n7IZ
         gv8I/v/aFYS2poB09nZJmPJL4W85mC0uWtQ8LL2cqbDT5kCsVKANDUPT+SzvHljj1iyA
         mZZO18vaQSrNuZg1AbCh65i+W4jYr7TD3lszmE7Hc8lWu9Py9I9sathOlMK2NYaXDNLx
         tsKo1FUvbc+P21OP63fHspbdb93Xj9Qb+cyYBrTDs/ZXDbVDTkVtN/0obxvPh+VizCj5
         Zack0KwutjyZDSRbU3oAgxgAQPY4K0dMi+hueNHSv6qSsbiIhLveTwISlrNEkVTEpq9w
         PBbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=sJh71Xj4;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5bEXTCrIQUlgtiikyTVdOyybICXNRskRChMlIQPJVqg=;
        b=lQsOC8aYikHJdKsGYaL03d/nfWs+H9He4i2cRdCZe02miGBpsYc31oHgsA5swu9++Q
         IZTxkFHLBfhXWHDNX9Zpc0kRv2r8yA+NrilupO00DMdX2QN6dTtdlNGcDx9gGaCLH/zC
         CDgT8rwznuXbujC8+rpJQDZnbLvBR8T4I+hTJupRAJXdwj5VUj4vd6uBZGjZoxJd6D++
         8TiCumyvmVzhYT+7mVPet5VJgP7EfMb/ANfP0LPPaIb7QB0wQWTG+ieXdgyxlkWSP3Wo
         EseEGmw4Oy+Vj9ubs+lKafwVHrCnz5iEvnOc19wFwBB7tPGNFuPl/ajGbZH8yZsYxOlT
         rE5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5bEXTCrIQUlgtiikyTVdOyybICXNRskRChMlIQPJVqg=;
        b=LuM54U8FYgq3meiC5Z8cg3hlD+C/9n0NVfBk1xljjZjkt09wWthwpqMMnxGmVLS2SS
         zn5duCm6HjLBsMz3Kc/x7yKHuKcjAjF3kBL/IlHPOj2JA9y+ovytzBJEsJUMDrBOeEaa
         E46ZnjhhkOamPpGspbU/g4SIxTAZ84fUylQ8uT6Mm+GFHg3BYNY2BBgVa3TLle2rBjuC
         Z+2btEhuM8Ztr45UKNTftmiS3AfUSnHJbnDRGgdgLpzutE79ZB7g064lOOCLF7kJdSwN
         uvKWY6Jf1zVPlXxs1aPNwQnkbV130Y/BnLHPxCmPxMxRlko5KjofT5WYdvUdVVOs/Tjm
         ejaA==
X-Gm-Message-State: AOAM533pDTw46NbtE2ATRjUIebCA8HRo0xYDH5vI7HewrAXV6lSnAMQU
	h+djpRy34e1laMbrSFlWZPU=
X-Google-Smtp-Source: ABdhPJxdI/38msZrZhnjWSx6OtErhZWxKdz+LXfdI5IC6ZQJcvt6AvI7FcqQF3dQMvIJGFUjXSuGBg==
X-Received: by 2002:a1f:2b81:: with SMTP id r123mr2851868vkr.3.1611924240024;
        Fri, 29 Jan 2021 04:44:00 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:e306:: with SMTP id j6ls1109217vsf.7.gmail; Fri, 29 Jan
 2021 04:43:59 -0800 (PST)
X-Received: by 2002:a67:6b46:: with SMTP id g67mr2078028vsc.60.1611924239505;
        Fri, 29 Jan 2021 04:43:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924239; cv=none;
        d=google.com; s=arc-20160816;
        b=DiZ/dKJL0K9LORpO7rSecuhK//zV7rcz383gaW49H3MQIWq+YB8j0Cu92skQ668hZ0
         iwzeIl7ZTrghRRMiWmq8XHOl3Yz+4KXavQ9Z1T8n3dK0l5dCU6WOttwOStsdSaZWil+P
         ya2MORygRG20bObqzEFrseQmvuEGmDeopsLwX3o4uhpjQOoGQqsNTkS+32vYqoo+WPtV
         Kw+H7j3CM0YsS5KfrBmJlKS37EWvzOJYVFfxAIMgAJUipCrSErrCODUqRPlSVx8Jveqp
         R1957IoW4rKIji4k391w5tD3lcZSvTmvVJWbTkZIzxhYrTNwl9J7m0vWMh9Gt6QpoiBA
         RfRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WCJiTCBYarku1p+J3FGwyc0AS5UhsiZgThHHJxu9xzA=;
        b=EYy1EIqsKMcFsInvmUNCu6fhRQ2m6HzWdwXz5NXXffBBLdrBx1z2f0AsNf0t+RZAYL
         2ni4JjCJd/drKzxRFDC7ul6HLZ28vvk6+Kv3QXUAq7tbeZh7AzHmrBwbnqKnM0/0ZQhn
         zcbGTPwznp7YU+bDn+ivSvlERmXqd0r8aZmNcAKbfBB+9zrA7UjZL9HJj2q0LnIvr4ey
         i4rWwz5sjSCFPQy93hzLz3IJTE+LswRlNAY9fJj9iLpvKK5spznsZPgahb/US1AjM/jA
         33uEE2BJeHmrk1lboK1tk9g6zzwddq2Tzlw46HBkt56cJMqg5B64BodeS3gEsdHF8Og+
         vhHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=sJh71Xj4;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id e11si628442vkp.4.2021.01.29.04.43.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:43:59 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TChnWN029743;
	Fri, 29 Jan 2021 06:43:49 -0600
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TChnQA011325
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:43:49 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:43:48 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:43:48 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDW4075758;
	Fri, 29 Jan 2021 06:43:43 -0600
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
Subject: [PATCH v10 05/17] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Fri, 29 Jan 2021 18:13:01 +0530
Message-ID: <20210129124313.28549-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=sJh71Xj4;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-6-kishon%40ti.com.

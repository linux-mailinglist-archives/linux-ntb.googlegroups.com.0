Return-Path: <linux-ntb+bncBCOOP4VF5IDRBEEKWD6QKGQEPFXRKGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F04F2AF4E4
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:36:49 +0100 (CET)
Received: by mail-io1-xd3e.google.com with SMTP id a2sf1649946iod.13
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:36:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109008; cv=pass;
        d=google.com; s=arc-20160816;
        b=Psl0CrStT9hgjxH26kdozHnD0zrfv6It6Ygfg9172tIfuKVdtJs547A8XXZr9nIfel
         8W1iB36FYcC/ILP7j+90YS510oKM5ceaBY7j+6qhfW6OtJKy+9nu/6M03pW8quwgi3XT
         iGuMgG24WhNf0mdAEx7dgFoZnUo4WGwX8Euzqw3OVLqdoXI45QeBDw5cJcvTsLqzI9Kc
         mHQd+A9ZaiEMi/xdKg7XR9ZwD8ZIDtnrasEvAvOipUsgKw+yywtqE3LdRM7rQAtfFXEm
         aXSwGFk3+Nr02pwK1LiTPci+xrunE+2u3XQ6P3fX8h+FMMWZWvDjLFbu1X0YqtZIWnpJ
         FMZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=TK1V+MJzC540gosqM1ubxD639/8lcz+mnMWY5hdIw4g=;
        b=DVC81apgBXtSRBXI5cGRWwzKfQQrYeBueFAKhwdWCT0OaetPBPEMB5OYL7DteQHd+k
         6suDs10DdhGq2MC4r75LEKxrKV3rYbl/s2XAYWMArvxZ+Ddjf5jHAQkzVMO4sVE8TaQr
         NzlwO5zCul1WMNG6KfUmasXAitZIa+9xtNl6+6vseC4OBAMeLG0cJvrcfoyWHI2j8vAk
         tk0WGFvhrkG9e3nuY5wVkRnIvqR9yWcPzbj4+nNWshyVpQ8OncyUlBrqIutGQPj+oHRm
         eFxAPQZqoEpLAo+LTUZmnU3eK1TG2wtbyQTQ0B3sl3mJH3+YBhclzbucSBMWKNoLtGMx
         nTpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=szDJi8Am;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TK1V+MJzC540gosqM1ubxD639/8lcz+mnMWY5hdIw4g=;
        b=gY8PaeKfDvSDd9QQTg7Z7g9O/kgqkU86PnLoQLgfHVWRrehIOZaXrb/ZNLafEpJvr0
         4l9X7nvprMOpsQUS/kq8ucnz7joz+aCObbD6D1NwequknZgCosg4p/5RNne21njfIWXH
         Z77ePdd5/uz8aKQ0xGArToEsOiShrFqZCiEeA5gVIKftO48SIUnlGoHzbU5u2N8aovfl
         ahD1rIASK0WRJEkoM/NuRL1U3FgJoiC+bjaXDAwf4ZopRnpeEBEgvJvTPokmkoCdIcTe
         TMA+RYNdypvtEFDnNYrbQ06TTvoHxmUlvpkxuUDiOesIOufCMAxvAx9Lq9SERfiUgnds
         RheA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TK1V+MJzC540gosqM1ubxD639/8lcz+mnMWY5hdIw4g=;
        b=no/Qvi5aplvQLNoeB9VfY6yF3rqndsUEybrfXM+XjSXXb0JKztmpCEmmv2nIkz1T3B
         N6CiwEV0VRrY4rVN9QOdydMvJ4H5ZAjLgkuDEC04fGly9saaUj1qGwQ+CxVyAUbrSFcW
         w8aZuz9Ku7u1BAAnB2Cw0LaW23ySXL5sPrB25I9n0ujcjo96Nf2k+aDW1OFqbi+QEBfO
         l1Z7Nm//OLN8v9KQLSofJ4vjVzjx+KhxB7EAm8+wCFeSJ+zJUdcbi19I/f0JUyE5lpfJ
         FaqL20eDu0PFOWcg1Almwpv15IBgUs8Sz3ss+dhBYpoIZT1c4UkcTH/9yKe9gWTNrIq5
         PlhA==
X-Gm-Message-State: AOAM530KzecB6HowfZQFaPiYToVc+M/RdujGjDuctBEAEt4q9933za26
	GqEypEHFa742OcnPlfI3B44=
X-Google-Smtp-Source: ABdhPJxB1lTLgfibRLMcayNaPAGBDHFCzA6wZMQubI4HkPY/d3vhKXANmBzdMymXC5dgU+C/rxUncg==
X-Received: by 2002:a92:9904:: with SMTP id p4mr1444330ili.145.1605109008564;
        Wed, 11 Nov 2020 07:36:48 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:8605:: with SMTP id e5ls1879813jai.10.gmail; Wed, 11 Nov
 2020 07:36:48 -0800 (PST)
X-Received: by 2002:a02:2e52:: with SMTP id u18mr2524606jae.29.1605109008230;
        Wed, 11 Nov 2020 07:36:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109008; cv=none;
        d=google.com; s=arc-20160816;
        b=nkswYYx4u5YrxKUe8Esw88mNCbXOgZjPtTDcvbs+U5/44S+HKfC35rcdzHMWPVhQWN
         1cZu417bcUuNTUMwG8c//WquZWTZ2ANk2zrYywvgd7hWrZOOEgiq/NAlAGMMDYjeRtd3
         GDSPRtSNWWgZkzl75C5kT0YHwfaQqOsgQuRavnPu6YfYWrr1hol37WDGra+VmdQixpHO
         mgQWj8vuw2UfpxRR/D1JCy+IDaEf7Ggkh0rBqtfIpcIoLYfcS52cP/mTp1Xg06CIk1Eq
         RbrhMJOXZARSqzej2EEgK8pvOxZ29M/hM4QpaU1tvMLn17DfHqhu5K7npsQ2L3ZgKT9n
         faZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WCJiTCBYarku1p+J3FGwyc0AS5UhsiZgThHHJxu9xzA=;
        b=fmgWvQ0j93NP11f2tBUVvGnvSs1FMFtxfxUsagCf09hTHA9oPyGWXgsCkigdGEOau4
         C+kdZq1vehtM3O6ocAT3/01MxSffEqGqz1xnxKTfDHKX8WDK0yk9DYsN/f/ZlJE3F451
         cQjSFKTM8MggrT2eajAW/2xRWF5wv4eb/O02KmKl5XxZ2EFaSxAs3IRtLIRG+TMLHyBc
         TOZ5zciz8tWdcYLXVR6Jshq+61uF6q8aLD5XbYvXuIog3dF311vaRiXdrwgEI/fWJuHc
         INEHCCjv8uLw3+v9ONoDm3oG58jPHfIeLaT3LELu8SejKcmqhNX1dlSo8Y3E/73zNeYF
         KOmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=szDJi8Am;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id s11si156952iot.1.2020.11.11.07.36.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:36:48 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFadA6097355;
	Wed, 11 Nov 2020 09:36:39 -0600
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFadvT111920
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:36:39 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:36:39 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:36:39 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa03u042109;
	Wed, 11 Nov 2020 09:36:32 -0600
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
Subject: [PATCH v8 05/18] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Wed, 11 Nov 2020 21:05:46 +0530
Message-ID: <20201111153559.19050-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=szDJi8Am;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-6-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB5PIZT7QKGQEHCRCCJY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D61F2E9885
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:29:58 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id 8sf21182488otq.19
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:29:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774197; cv=pass;
        d=google.com; s=arc-20160816;
        b=G0jvDQ6cr4i6YERUUn8J4gZQ0Ze+tc+MC/nCZjQi0ahHLZoodtiXL7UAjJNV69iaYp
         jd4Y4hvbWOZTCuCx2mVzfjOh9eyY1OF3G0qX4Dw7TpQ/pWr+7EvayF+VQRO0ICbG8B/V
         pmodwdO696jDjNVAw86WDQICZrftrM8+MSBpC5E3F8r0y+r1H/tCq+ar7E89w3aN+Ocx
         77JJQ+YIoWOC+gShZSa7MmdIytPrH1XYJs3DYrrZ1pRcFk1X6QbvR3TPdd0g8bqpnsSz
         kDXdTVZPU4kh13tqeGmbQUJcrh++IxOFQBKStURiEzGiO3jFpqK+F0XbizujacILKVze
         j70Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=87tyeNtXIdQA1ht+DB1B3W4sdwaEEnVTLystsj0mdTE=;
        b=C+najbxDENw3a8oz8CorTEhy6LF3t0lxayQuhsu1XkizFk3doNJ9MtsoxCf/reQJxI
         G88ge6C/5bAU+zAP9xec5VzvDhUL1JwGi76eHzA8DSdLnQB488I6SRc/Ed3504nrRy66
         lVPw3GiCD3aJHonnFsPnaN14O9J82SYkl9hh76SUSvc2j/ZdScqfI7VO/x4Rx2AWOU8q
         Qso6S/vl0eCCYv3E6tt8Kij6jqLhNBogE7cHE+FiqI3K5/ceTl+RXFBT1NRZRYpwOANC
         +A1AcbNk8jrg/uQWED5BM1ouXVwz/GYi+d/k8J4v8VcC1rzQxWrPCcZL8jyOZ0p8t/sO
         p4uQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=xrgqHGfZ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=87tyeNtXIdQA1ht+DB1B3W4sdwaEEnVTLystsj0mdTE=;
        b=gb327CS4iXSaxGZkS6W6ooYXZDb+IKkQW8A/HKHntT960pKLar11GWJ4nnjkqcmj2b
         iVgi2AZnTfQGEPHNaloAIDFF+PHbe9bB3XdlgYPOXGLK/304AQEzP7GAoWnnX2gt6lQ4
         n0fv4wLQ4cQpNsKKo7p5JW/pJa7Kge0/Ks4BADUYSo1A264I3X24XtXUNHzQLjvWLEWd
         y+A6kzAe0YNmCPf5PFKkGWOlysIVE/ojzKxQT3fQKcahZHV/thX0OkmaRpjzrlP9hHgK
         ViYW4vLx9tBp9pvKOJ3B9oKr/ec4BD3t41mq2k668OBmAhrjQTnn9IzCTY53ruDrb5UF
         B2Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=87tyeNtXIdQA1ht+DB1B3W4sdwaEEnVTLystsj0mdTE=;
        b=iFHMNzuVsRprVSd08GqvUBYI/lltyAYci3UjwZ9fkPh+GITd9San3NdbCqmPB5nutT
         V0qBeur5TllfNMM2xcGNxkYQQnKgGfCLwApJUNVdSAOd9f12NhEtLoPqXy9YslHXD/62
         rFQUE+K2oG8rzBlcpo4VnlKUxT1wnREq3rD+U5VLrD1dp/p5F1PASiCfEyFvMzMWVY/z
         TGW+ePsLWAiC9P9zEqKk5j4W/G7EbhmMFsFPxb/juv6R6qtybHuc6xc1YH6tcldnk8V3
         m04cvEVym2O7YulkkPKncHmohqERNflYucNs6N9xDbE4oB95xWxNeERWDCToIf654kg4
         xLjw==
X-Gm-Message-State: AOAM530QbkPmi+5vTbhZERwdaNJqw5XD2yTd/aqwlIggriGygwwsG1bC
	tWUQ/kfEeJRkmlSL85osUD4=
X-Google-Smtp-Source: ABdhPJxzOQI+X4E39JWC9s5b0tir1ST8yO/K09UOgH8cqn0L9fOunuOC0KRe82xooWzCxzMhwjR7Ug==
X-Received: by 2002:aca:5653:: with SMTP id k80mr18532073oib.0.1609774197272;
        Mon, 04 Jan 2021 07:29:57 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:4758:: with SMTP id u85ls12278975oia.3.gmail; Mon, 04
 Jan 2021 07:29:56 -0800 (PST)
X-Received: by 2002:aca:3784:: with SMTP id e126mr8532853oia.170.1609774196900;
        Mon, 04 Jan 2021 07:29:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774196; cv=none;
        d=google.com; s=arc-20160816;
        b=fIXABxKS2kDzLYilZARUX3oHj0ZRg0xUiaZh4R/nbKDZJipnp/aGexzdzfjyrxud8S
         zxrIrTmdurMnDI01QZ9peLpBwxhyqu+cM2/10aK0iCdtZmzV5h8igjsQXwxkfkOoO9Xm
         rIkldkSo059baKA/Hc1+6mXDHbwafa1zbBg8e8Zsl9Hdspyn0yo7lk7E5dSRcRxPt7/X
         z/2ChDnEVihnohDxhAZfHPmCxgiQh9/Iu2l0wuMUPgO7fB+pURDRS7wU010GfQyhEhpM
         eHl7SkLmowS0xp+0TL0YxM5W5GIU2AjEQiU+IIZUuIMWE6nQliyDfbgAA0Xx2OlteyAY
         M6UQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WCJiTCBYarku1p+J3FGwyc0AS5UhsiZgThHHJxu9xzA=;
        b=M2HxS+C7q4N23LyWSPJLIn925yM6ozsYCp8iBQPNm/uI0Cf00f1Ny1ewf1F5Gs5R/G
         txCtJzOYofRsnNdsf1dMvBlt/WtwA+a9wHO+yXMgWw6PLuUY6xLHMmejehUf1oKTudRF
         ly4EboAON2yXiL4OI45Sy4CSLTrHT0jGP3mfut5iBFlUR+wchhSru5tnJzrQuuKjJEfb
         hxGuEPdHRMjAbbPF6Moofcu+ZnyvDg9snxsSOL11aOzRCfQaJaaA1o5N94s+535oLqec
         CMrnufBbYi5Oc8SrUYDbgs7zlrsep+OcdWuYBSV1/O0aePbeFKYYXOfMdBiT84poqfqo
         om/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=xrgqHGfZ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id f20si4236555oig.2.2021.01.04.07.29.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:29:56 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FToF5075901;
	Mon, 4 Jan 2021 09:29:50 -0600
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FToqs006959
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:29:50 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:29:49 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:29:49 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZB093710;
	Mon, 4 Jan 2021 09:29:44 -0600
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
Subject: [PATCH v9 05/17] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Mon, 4 Jan 2021 20:58:57 +0530
Message-ID: <20210104152909.22038-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=xrgqHGfZ;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-6-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBZOL2L5QKGQEACBEUTI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 04BF027ED22
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:36:07 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id i1sf1138490ood.9
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:36:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480165; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y3pLbaGcWdOv1dxY4efvzEM3ZJfW/NbdV0car2uWE/lPL9nc2qaUdC2DKf4oFHtc8w
         bEzqMTOh0Tfk6kEEy3FXDzWkOXfkspRJxAGSe6Lqzhb910Mf1uibn1N1R5xz7rAxET6F
         JMxQ+1MAYeP3HhmsbLIf7N5SX99YDnqgr5w88tGup4yagq9EQ5GuYReOC8qlTRFR5IGC
         GDpgSshLZRKlLjFzXcOWdJZnZPWkf5CjsOuzQK9jXHEDxGlKtzKsUJOZSeDe2Yr4WmLx
         zUNAfmp4TWsg7VfR9hxBbsKEQDEmp2RufbU5W30uYuj3VQtsNx1Sm1wBejdPNksiG3se
         8ylA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=CLI+V5ET8FmNz5O9Gi4PcwNuPkPF9wcPVExHHvf4ku4=;
        b=dO/JIQZXDWnJ0Jli0wC3cehI88KXp0nzzag/x6s3FFrFLxAWEg3uwuQfsPF5YmOd5d
         Qve/fjJUel0uGINYb3/JTmiY+IOXIBqBqxPVGdhZOYbY51xUxPcIKjOERbR2c0SpIc2p
         OPY7PH5UyqO4RsPvMT+2j5abShMEZqeg704NLlweQUj8Mf5vdvUINXhlLEGaUUk8e32A
         f9Y9lnVWKsvXgsxNoaFfdjJ+V4Yf8m8QCGmzEdX+o59fluk5nJ59Ku49wYkOPbqv+xtg
         Zd7Y9wxzv8sqZDv4iw/BTuACuzHz0AtWhfodLICZgZ5Oai8dd7a/sfQag4ehOLZk7Otc
         akcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ntfsQa5h;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CLI+V5ET8FmNz5O9Gi4PcwNuPkPF9wcPVExHHvf4ku4=;
        b=H4dhUYJYuHeDXsUN5DM3OUxr5qcNLOjVl50FFTkITxVFHMklBlczE67lkRx3QzCGCd
         8EAgZ1mUjNgaMWH5bBWbycpN/ITzpKj761p9VmhtOfsw6oR/D/NlyNCiEMI72e8dfqJp
         BtRlzfA9N95fi3ellNxrL0lj4FUcuo7V7OYhI1oxvmyGcSAHXYIFa6YzLbftZZCMa/y+
         y9KWZYKsoPhJPBHVJdFNsgC3Hrh9StV2KFmiVuKq6zLlujPIgAZNMEJfoln1/C2qt7uA
         MxIOpeJn6/lfF/1+L1tp9gM2rn3vLFa9n3XVwpLHE2KWGTD8OF9bau8IciGdspswzpGD
         BlbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CLI+V5ET8FmNz5O9Gi4PcwNuPkPF9wcPVExHHvf4ku4=;
        b=gnV+jpFxuq06lUKJ0b6XJd3A7c2NeIPtc+qtpIXTCAVsIBLCM1qurg/Aumingr62KI
         GfMPdQ87SW6rZf5Xvj0X6L8iC7mIPGQAqGZ+52rv5DJZz4msbferxT6yaka0CAbH12ur
         j+Zh6oL2sEfRYSkoevKe+fPW6Opjt0uz9eAMqo6Au2L0K/YYQWate1TanMDRobQVHDWm
         ZSnVkVECy/z9LHnIkWoshYCZHG4VdYf6uv9wVpz4snL7xgKJRDcQtGs2iLQT1FriBDYo
         D7DzcUxi4QckcZFGqd1S1YOn/ZzvdNLrDIKajMMSR259uspdD+T5Lky0wYmzM9DmDlZH
         aoUg==
X-Gm-Message-State: AOAM5300Fz+IBCZ6EnBsWLy7UIBLfs8S/ySogtyD9sZEMwpd1wIh/FEE
	lGynnST6l1Gznme79SQKYDI=
X-Google-Smtp-Source: ABdhPJxaG0XBRqkXiSB0v1UsU0hXQktQghUNYSsrwRNxPM5JFj1SAjXHKiIQzNK6FpOf7Ovdj2EO5A==
X-Received: by 2002:a05:6808:346:: with SMTP id j6mr1779634oie.8.1601480165705;
        Wed, 30 Sep 2020 08:36:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:3e85:: with SMTP id b5ls607584otc.1.gmail; Wed, 30 Sep
 2020 08:36:05 -0700 (PDT)
X-Received: by 2002:a05:6830:1e89:: with SMTP id n9mr1864447otr.274.1601480165337;
        Wed, 30 Sep 2020 08:36:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480165; cv=none;
        d=google.com; s=arc-20160816;
        b=WYZyC7gsIURMf+ND6TeGN9jZoH1abZ5gH1vJ1bM1aK6DeRj5EnDw00PERoxdlPrVjr
         JzzF9qTXtsBf4VmkEtSZ5lZDSh8LDl9+JqUPXeQiq+TabmHDV2UbdQIEguA9AddSvyHn
         J2mzkjTzUi6iVkGpTttnETBGlwl0HFA7PRaZfgE1ezaoAAkXHPqrsKSyrHRGkcHP3VdC
         FjDO3ORr2b0wFF70hMKzp4XFCoI3rnfvjKFfFrqgY4MIoiFsMNwiDWnHVk8UOzPbmm93
         rc7VWFDut5fPVXkpo1wumvO2yutoLHvHPs4ZeyzUk+ZGusAQ+tx9xXrZytYnn3uqR8m/
         hJUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WCJiTCBYarku1p+J3FGwyc0AS5UhsiZgThHHJxu9xzA=;
        b=SPnLT42MGznT5H28lL+9teEwFqt3eFjGsOG5DL8IzbpcydaKLbjWdNGrBtn2K/V/nF
         t7eykpWVSqhwip2ahUbdN0VH1ki/6ro6kgZU1f2VrSnypawF+KL48oEIx/MSPpcBDGv5
         HBZXAXcSeZP0g/WG2GJtfgci2Tkgj9WwWA7ZbxQT+36fg5ZNm9Xx/lRFVDgYacsfB+ZP
         EAKOm87U6x5qWYC9p/BHcC7LXd6px2QiDKvmnexgjpyUiOpm5vEumEr/Z+xYd8cKXlC7
         eCl/wNmL3aRvRWXUIXKEcEcQ5MvGktu6BhhhCDRjT83cuL6b1PinivEgAUPpYcVSZDbo
         fwaA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ntfsQa5h;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id k144si115728oih.5.2020.09.30.08.36.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:36:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZw1r043561;
	Wed, 30 Sep 2020 10:35:58 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZwkO029960;
	Wed, 30 Sep 2020 10:35:58 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:35:57 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:35:57 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZU033254;
	Wed, 30 Sep 2020 10:35:52 -0500
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
Subject: [PATCH v7 05/18] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Wed, 30 Sep 2020 21:05:06 +0530
Message-ID: <20200930153519.7282-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ntfsQa5h;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-6-kishon%40ti.com.

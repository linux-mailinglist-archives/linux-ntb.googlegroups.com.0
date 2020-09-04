Return-Path: <linux-ntb+bncBCOOP4VF5IDRBB7EY75AKGQEEOS4N4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A6125D2BD
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:51:37 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id nk7sf2912961pjb.8
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:51:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205895; cv=pass;
        d=google.com; s=arc-20160816;
        b=Lni1+Qlt9vURcRTRe7BDl0z8sUlikC71/Vd1If0NPSA2LHb1pC12xBxX5hS+5uwuND
         JGxQsB22L2qW078lR1XCqrFooJGe2sO59e/xwOjQZHcj2K8Of0m+D8JtY9EIseMuxAm7
         uqLlQ8O5VZkmnKhSdwMW62uVqB+NdFk3AcQmVxxSSQNuE9Jkz02sfHp7mUrL2FoJruM/
         uWT616PVODRWrGxhRUKw7cHOt/8OVSuYEchk3+fN+M0pbYBwkB1Iw7iEwsM7S1COZLj8
         i/FdPkpkXYVFLJEA6Bzyw6H9HI+9I+j2zG1/TYowYlZUIv7zRHfTaTS2fYVegBkOwES2
         KYKg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=A/cERVU6pQTpa9Lt1+FKjSfCTJiK6jy1FN5WX3nzRMs=;
        b=Zyb76vpREy4Ji3acjWxGCicmjiDVGUq9ndlqXlhMpwYVNu7jixQkdnoCk+9XqzlD22
         w7C2+59PFO/ozVX8UJWbxNX1ZPTIPtYRt8MbpWzFuJs74yl5Hdj9mzsMx6dNK7O4tY3j
         gfN86GLHbZ4G7C2rLyAyPLLZYS1nDOexIpzF51XlZM/T1WOmZD/1C85nmqAerzim8cPn
         cGgabk+5tA70pHayosvShpnL5mbzXp1xcAiCNQ0H7CcXo8G69hqk/DOAo29FOLMuX+7v
         N+JPnd0d5xqdwvJgk//IymAAUb02N473oNT2KsNCNhVXaprrearYrZW/pvBuMPhWJc/H
         +iYA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=eZTKxEPJ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A/cERVU6pQTpa9Lt1+FKjSfCTJiK6jy1FN5WX3nzRMs=;
        b=mWnA2sm2Sdi4quMbGzINl/XTWyZtF9iE4U3aydIeaTYVq0nYLzNfWmxJ+bZOEZJVba
         Y2jLSTZlVrEQHJin7w1lQCl02pwKYTsp5JnPHZWYMMjHzNGCDqtdIBwDKNqxEh4QGVoy
         LN/lX8LP+xemi1OAZmYcmYpHvZVqGpbJpnpfALToE8sJu93qQY9Js7XVZaHzYHXb/alu
         wODFaMgYTvAz3+ZIAP6F0g/d4IGU0/54tnqLYvg/uUM8QrDjAJ4EdbMEi2IwRCUirgzd
         7Nrmo8EF5XDrhXE1ETu+mwriwYdd7yatIV9fBEQoUfRxx/aWu5Fwz6aAEy9t5WGKunUo
         og6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A/cERVU6pQTpa9Lt1+FKjSfCTJiK6jy1FN5WX3nzRMs=;
        b=RpLgMR7zuBV9By7E7FpMH8v5Cxyf9EH9aM1nySbRbkClqz28r0Is7DWt6/wFCO8KYf
         5zqbM1fxhITIXt74oWGf7xuiKFBv8LdgDK3vejjxnA0bP7YISNrFqwH4vvCMmCgQCDx4
         e3VSf3uviyvUeY1aaj5V9/ORyzPUfFB+5cGQmh9t/Xw+V5aDiOPnzpkPP8luWLnrzDL8
         x0+m8lhfq02mvakVzkKzlDQgnx+D+SI2lUss++TrO5NdIGcFSfLNMKmfk4TEiHkVnSFx
         2M6fCbnAmJ8LfpvCgsdsabJEY+h76I08kkQOi5HX89JbXgiSzgI4Kkocw1jWuWeX733b
         9K6g==
X-Gm-Message-State: AOAM532JwRfsj1nESG9QuVBQsX31+Lgu6NPH51EH6yQEIO53H1KJOlIJ
	k4TGnppg9pjmam2AXeEnSHY=
X-Google-Smtp-Source: ABdhPJz5X6OIlx366V8T7Jniy2zYo5dDfSQ/iHn+oI8E18hwTAS4OJftRsRSV9VV5/TbI7p72HKqfg==
X-Received: by 2002:a17:902:6b85:: with SMTP id p5mr7650891plk.235.1599205895675;
        Fri, 04 Sep 2020 00:51:35 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:774a:: with SMTP id s71ls3528915pfc.11.gmail; Fri, 04
 Sep 2020 00:51:35 -0700 (PDT)
X-Received: by 2002:a63:d25:: with SMTP id c37mr5955441pgl.403.1599205895205;
        Fri, 04 Sep 2020 00:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205895; cv=none;
        d=google.com; s=arc-20160816;
        b=ZESCa565s5ag/M/MWgYZhIn3sD4taXslCPuxxsiYcApx3/LK/o4alS7Tvoz/hHRZna
         ojk7Kf9V6nTVIqtP+kaomoyiPZY1xRR/aQrz+kjdmpH0KR+bxBG4qusVhefmdMSYAJ64
         CNw3u5ymg64Au0efJUVThYLzRMuPRewsH0g+NrRvjgbfyfKzniwhgV7DKt8Xryy2vjg4
         LMtujT+kAkB1JTaxVpTT8HzRiwC99yFL1iwbPyPbrtIUT51kMp+ucn8bah7b1kw0trSP
         7pLrXOuPwHsKyT4o3nWaCowGHzJ+lrtFSzZ2pu3Kae9cQIakz1TT85xCwmKxkdGNhYrE
         J/Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WCJiTCBYarku1p+J3FGwyc0AS5UhsiZgThHHJxu9xzA=;
        b=S4t4ozAZjrgRV/FWcXKxkKl80YstSIDOo/n3Vp1FO6zLmVq0EoXzQBuOi+GvXyH2oA
         wyLsyFE8PnagHI+UmRJ9OwnAYYn2PbyPSXMeg1+VsT2GKzQIJMPwY7GsldXzLeAgAmIR
         zH/9SfaPgpTNhsMV37FTFb1FTppGPGB9BZUkrF5XVK99HB4C5UGk3ovltmsWVOzy5upQ
         pmyZYjcgAdp0oTaSWBcqb2rewpuSctd6RnhLJilCfRr44alUrFXR3EffWnEELnp+1yKe
         Q86EIPfpgsEQKn8lyPqBOgi7dGgcBbxwWM31BUIUaZyvwZtXL2RR+cR4LLdGDY3aJLZz
         GYPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=eZTKxEPJ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id z13si275608pgl.5.2020.09.04.00.51.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847pQkV017909;
	Fri, 4 Sep 2020 02:51:26 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847pQ7g061239;
	Fri, 4 Sep 2020 02:51:26 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:51:26 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:51:26 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osN6058796;
	Fri, 4 Sep 2020 02:51:21 -0500
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
Subject: [PATCH v3 05/17] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Fri, 4 Sep 2020 13:20:40 +0530
Message-ID: <20200904075052.8911-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=eZTKxEPJ;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-6-kishon%40ti.com.

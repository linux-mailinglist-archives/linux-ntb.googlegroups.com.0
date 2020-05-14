Return-Path: <linux-ntb+bncBCOOP4VF5IDRBPN26X2QKGQENQ5J5MQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C1441D33E5
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:19 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id y7sf2530186plp.8
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468477; cv=pass;
        d=google.com; s=arc-20160816;
        b=A2KBMwjLrnEeDm5tacZdfOzvmr2h3mApTUchEgAxLSWHDr6jPU8BdihnZDpmTmMicS
         4d7r5lUUd7JlDW/mZwHi9bx9dqP6Z5XBL3IdvWVslkER34wekdg64RuVkCigJsyG19s9
         wuA20CpZI4WskgE1Eqcj7KNvOB54aqScX2HtJv6oTRNw4OcsshKGWNXtBQss8JXmXGc3
         LtLmmHFFg/Lb1cG89ExfySUE5ZObyBCKLu2QmMnFV9IB3MSoVo/HfBERttF/3bkdArbm
         p3Mb+LuQF+CW0YtMXNRsAJv66C8kkekWGiVG6MKF8d+JcFaXB00XSl6L43XfQdhTPuun
         za+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=1K7arzKU7OSf/zia4uS9jrpbcvFbwbFRjXp59Z5AaEU=;
        b=meRox47l7zPwh41INAYAlRozOf0iiEJcoao64ldNY40zcZphhUO5nM/QfT6aujIU1F
         ibZi1Pjd8BmYcsR6D1J5erClsPkZyd57R560gaJWgFyI2hnAFi5pxg5f6JlXgYsUNY1J
         LebvbCBmMN/p2LCzKap7z3dwbIqKZXYXup1/mschDSGWTeykYADKLKTJCMtggQ8fddVT
         vRQjCYOQ65F6uC2G/mJjs/4982fTJxI+LlPZtaxoyAYU/oipkyw4kuN3qxtANhfTMrgX
         7/TDbrlMdWRS5Tv14yGIvT9SlfU1sok8gQIUQqjjl5z67VgRfOQzp06oPZ6Je3LJzkQA
         xnHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Ld4YaDO/";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1K7arzKU7OSf/zia4uS9jrpbcvFbwbFRjXp59Z5AaEU=;
        b=EW82Ue/FT5DbsG6VvoJQLCddGoLTMD08vTcZMp8Sy4UBxJNLQ/GmyW0QtDt8eNe/0Z
         A65slPj5pgI75gx9V1J2cME6VeVyT8ScirfAg6UhZA7eSaGucSl5rB3I/GFMpdP4Dgmh
         ktEeIVkOQzIzD0stMYxilOrGr6IDUvP3JYrzCh5qGs4QMzpWlaD0S5J3M9xoKrrL6EWB
         PJv3/mGmVy226E1XDzq0tz46SZlUnRxJ5nse8lgPJCIUJXw7TxU/D5RgY0+IDZQ2gmnc
         URzf6iTeO6L04U0I4VbDbH8/3UwRBQWHLwC7JeaVmibgRWpdx6aPjyfKKHJRJCr+S9H4
         mD+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1K7arzKU7OSf/zia4uS9jrpbcvFbwbFRjXp59Z5AaEU=;
        b=K79o511GdG8BRovlZWIi+LmyguJ4+mFklN7apQgUoFWv1qNuV8V5RSTOCpcf0qWqzh
         gdyhJ5S3dgV91S3IMCs2tzfY7hfPIEgYnBl7A2vzpWuv/BYmAtmkowS+uM3wa/JRfqSk
         8KwU3WlKrJ7PDjexLdTKFK1Vky/EQDlKn53+zISDUMdTrkMoufc3/yHxceh7nQiZmt/h
         hrIdZMuYdl7xRRJL3TwZO7KUoRf/PtO570mu3sU/DGFfhgGE68ygcZIwSk6aF87/Jj1R
         n4RWgtRVJFebhT/+Nph+FvPysxCcpvjHExF/iG7k6sILrjSf2CB5j9Ml6tiBAk/Wq5J2
         RCzQ==
X-Gm-Message-State: AOAM530jP7qCq5FC7QVTIY0AfMbUMTrhalneOSgCq5ku/NMk/qCAmlOs
	V5ho4mgn0mwO+QPgggti29o=
X-Google-Smtp-Source: ABdhPJzryXLyhrLLDlPZPQ77nggABVhKHACkqnJYXTKSdvHRii44qWSLWwpta23TBqnZqqyVxWdfuA==
X-Received: by 2002:a63:1854:: with SMTP id 20mr4498147pgy.257.1589468477346;
        Thu, 14 May 2020 08:01:17 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:800c:: with SMTP id b12ls715456pjn.1.gmail; Thu, 14
 May 2020 08:01:17 -0700 (PDT)
X-Received: by 2002:a17:902:8496:: with SMTP id c22mr4491917plo.182.1589468476920;
        Thu, 14 May 2020 08:01:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468476; cv=none;
        d=google.com; s=arc-20160816;
        b=ZaSCOT2CoK3CM6iB8op/cLzlP8HhUTc0cqjITVEJdlNniUy3QcJwQKNNu0G+K6g0CG
         sukr7DI8+P9t870GE/tMTPvI8vZzQsDjZipuuPz7Q+NiOZExjDfNMIeEM/bpZvNqtu3n
         wwvte3Jt+jXfmiFlwOOY3nASxt7VVmWjVdPcxaNHlzcVPGUjXo1XXPdfiCeepcBrUDqh
         uEjK3lS+vY1g3sjSaC+rlbzRTqHhASVLOJufj7bgw2ycltqHp20TZ+wNTsT9GwVX3E0E
         8Sm23PlrBl6bAvgcAkecVS81t/2sRgI8PFpVv4QdyAmYV9Wvq2clhxKW1SS8HTx+lAkz
         Sn8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3kot24pT8I54Qo+jrpEa45lAzMIAEzTZmm1JUxN+Bjc=;
        b=zP1zYLa1jEebTC9b3199y67wII+VF246UnTeVl4OTMtqEA+YkkJuR94MugWpxYvNQq
         tUbIOIlHIzbKiE6GrnUnXoIPlIDKNg12GAN3YLCgc7PK7z0XRc+7LbwSKfchDD+WDBCo
         8Kq6mCzrFI/IMGQagyIPS55buxZ2HzMFpIiq0jlM/e4bxoxMb7vKcg/rg7MKbRmzAd/S
         w0xjLZfuVJvv1WhBQqkw33abubP0kbgHG5lPIGVzR1Oyku6ukx2Vcb6RjIHKG1nEsXx5
         Q4k7vSrob0tJRtLxXazPTQJavTIIJF0S4Na4QMngYpj35cHlkv7a1lnqu6oTjxTK/13h
         1V5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Ld4YaDO/";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id e17si788439pjp.3.2020.05.14.08.01.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0Z7o029269;
	Thu, 14 May 2020 10:00:35 -0500
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0ZGx129334;
	Thu, 14 May 2020 10:00:35 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:34 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:34 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAs019279;
	Thu, 14 May 2020 10:00:30 -0500
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
Subject: [PATCH 10/19] PCI: endpoint: Make pci_epf_driver ops optional
Date: Thu, 14 May 2020 20:29:18 +0530
Message-ID: <20200514145927.17555-11-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="Ld4YaDO/";       spf=pass
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
index f9ba2e8d4a99..f463eedcc3ad 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -201,11 +201,9 @@ int __pci_epf_register_driver(struct pci_epf_driver *driver,
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-11-kishon%40ti.com.

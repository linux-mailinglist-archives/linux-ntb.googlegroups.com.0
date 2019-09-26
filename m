Return-Path: <linux-ntb+bncBCOOP4VF5IDRBJODWLWAKGQEDZMDN6Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 27125BF184
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:50 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id h4sf2005549qkd.18
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497509; cv=pass;
        d=google.com; s=arc-20160816;
        b=VdXtR739o7Dkc+b4hOWixv+bBC/393D7y++0Q6pHaxdpZm+DyAITIWXKzX0phEaAjt
         P0zrt46b7cPrRiLk8FbRrXcHGglCPGFPYauvsPMXJ3YDja/UtBDvn0vMXVmpBqDq7bAm
         EZgRoCJPVH/E+eMQR7Bl30Qd2U486s3H6ZQipkD6TjgSI+l5xU5MMy9dFEQ4nXq/x/LE
         mDJCp689p87Nh2ePbUykMds2r8rYKsULkBP32uquMsWmYpKUQ191mD0je7m8CxPWmwsQ
         Udzgt3Cy8CdH8HFmSUY47lnyLnOuyNO6RATXyzOG1ZHKSAYg6VZQUBQMbNwP1bQwF8TL
         0EaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ewFL24h7rQ0D07AEvULLGJt2Yo73rksuVHUK2TlJ3A8=;
        b=KC4uxaJxvbOAshW8B1LOtSGucPQS8t3M+4cxX8g/l8xNVe6/HwxxfYix91b0r6XluX
         We7SBfwfso+okTk2et/FkGwWUhszGHIdnNo2kUlPCfawgjW5lVX+M2Q08fXdborDRFGE
         Yp6A4BQp5n1ZqmY79kB6OeeniA534ndI8wTDmL/fJqoDW0B4M/yvKwcNsjspf/ZdVFt9
         GsVfNjFZFS44cTZ/dsnCnUQTN7wZppoU9GI6bbj2PzXqce8w3M8Ly2oIDLAQgXtP5eIP
         igtQ0pSsUn2BmsYVdOcnQJIbj0orNdvzDqaKdLCbR85MU8ZY1pQJPSG6Osm9uBbd5jip
         ON1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=B5a+RGTk;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ewFL24h7rQ0D07AEvULLGJt2Yo73rksuVHUK2TlJ3A8=;
        b=ldx8x8bCdQqnWaHN2jdogxgXI89S9wfmxVjUSClH/pnZCgwG9aP3qWPdT1oje2eCzn
         JRVSidCplAgj/mO26nnoKVy2AHN+trsa0gr9AT4MGQX/z1/+SXSunyWTtSoytDcBXENf
         w9YDLwmywlyuw4a53F5UItaw0K7tzKPzSiZeTaW6h6JPxcGkk9Y6p8+IgCp4750/JH8F
         Tdck4hAw10XHLTI+gHxT3JXwmK663AfQHvSdl/Rv7hTevIO59KVa4rjNuN9Jn8rWbTQp
         pEvx/SnA0AgUuEX+MHwlAaUSBP8jA5nxIHw7NqvKV3wBifwmZ8NXFr3k7FKVgxDmETHt
         20HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ewFL24h7rQ0D07AEvULLGJt2Yo73rksuVHUK2TlJ3A8=;
        b=ezl1XZQLgjFIMXMR+GhrStmnEls1esO8kz6wCRxxbNgg4V3aopOO6KrnU+tXoEUa+y
         7PRFTWgHytRJ3ABlRXlTVJbR8+AUY2mGzLvYwBIgYAZNqpYyJIYk6Yh6UD5aA78gdbKO
         YoZXV+vG4Xo5+eZZSGy/dZDAImTlg3PTM4OoZJWY2zlvsm7Eh+QLafMbjLXN5lO/Vrcw
         vRz+o1mGDdL3h0r1CLeJJOUOm+k/0YnhFbLtPw6he3KKkU+qBYpANjk7qnmcdWXz9Zc/
         oqVWUZiDW7GukQckpOKeS8Vd5w0D0zNRzp+VW0X4PngZm9YZlEWMCBso/gjyh1lQSdoa
         x/EQ==
X-Gm-Message-State: APjAAAXdC84f2XSpL+Ap33ldbYS2drEbSYvNq8zGc6ILh09T4rolPagC
	spRR1g+lRzEbK1XLGCr5Oxg=
X-Google-Smtp-Source: APXvYqwVzt/JasORmlhpijJm1HSptqZ1DnXQQMTtooKq6hZnadiC4P4kqyncUkoDJTk9hBZSkM19BQ==
X-Received: by 2002:a05:620a:16c4:: with SMTP id a4mr2724670qkn.389.1569497509204;
        Thu, 26 Sep 2019 04:31:49 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:7587:: with SMTP id s7ls196273qtq.4.gmail; Thu, 26 Sep
 2019 04:31:49 -0700 (PDT)
X-Received: by 2002:ac8:7957:: with SMTP id r23mr3395519qtt.130.1569497509005;
        Thu, 26 Sep 2019 04:31:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497509; cv=none;
        d=google.com; s=arc-20160816;
        b=hKhv0AE8dlQ4JOUel92nIWrQBFVP6bLLfqr5Kav4nU6O9kYO6NGVCOXnWINQ2rBRg5
         zckiIulpVvm6l7qVkZoX57SW8RDNSueHWtATYEAlO5amHciP0YCYAHTQxChIck4ItTMb
         2g4nc9v8fJRiFA/mFm6jV6jocbIJmxNFqqx3gU29AvjLbXBCd5j2kNiY8P/D+x3RawxN
         8LG/FGjP4GC7opysAFIHBkf8DE70KwMJLNVPlFHix8bRVK9C2iNau1w+RubDvF1FM8W2
         iot5Ax2DbqA7dT75Rv+oZavIa7jQE/m5uKOfHKmmBh/STM85VAA1OaFcVzXx/FUhmOqm
         Cv6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=NsBIGvSBpp7lUk2avEDthRUDCLoNlQ7B/MXYwZ1hE5A=;
        b=bhpsPbfU/EzPQ1clPuyDemQD9QgQGFnMCpLKvn/oJJKFI4+BwFEJ/3Hk7/lpu3VUuK
         cIVe3TvGA476dhgo+/o+SKgPEn6MLUCNfDvMVuXTMUCCh0NxXhYipLJ/Kksr63mwVWS3
         hXYPzZdiwW2RJPaZfeKWvGmk4nzq3/A41QAfvm1Dsz0fVInOJDwP1PYHYeDHCtp/+jub
         pexMiCH5TQ7U05O4tB100R6yshyT8F2BCNtoqXfvQRsodHNe9mXqNt4VyNPIunlZ6NB+
         xrlyC8fSTxA9YcMs/8+jEwxGZ87DS5LEXydjsX9c4ZPYZ9NMYvshWD2cMigwR7worl0p
         5p2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=B5a+RGTk;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id c78si63409qkb.7.2019.09.26.04.31.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVffv016260;
	Thu, 26 Sep 2019 06:31:41 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBVfmw050949
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:41 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:33 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:40 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTk9069017;
	Thu, 26 Sep 2019 06:31:37 -0500
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
Subject: [RFC PATCH 16/21] PCI: endpoint: Fix missing mutex_unlock in error case
Date: Thu, 26 Sep 2019 16:59:28 +0530
Message-ID: <20190926112933.8922-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=B5a+RGTk;       spf=pass
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

There is a missing mutex_unlock() in pci_epc_add_epf() in one of the
error scenarios. Fix it here.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 797e5d323998..33c745546a42 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -686,6 +686,7 @@ int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf,
 {
 	struct list_head *list;
 	u32 func_no = 0;
+	int ret = 0;
 
 	if (epf->is_vf)
 		return -EINVAL;
@@ -705,8 +706,10 @@ int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf,
 	mutex_lock(&epc->lock);
 	func_no = find_first_zero_bit(&epc->function_num_map,
 				      BITS_PER_LONG);
-	if (func_no >= BITS_PER_LONG)
-		return -EINVAL;
+	if (func_no >= BITS_PER_LONG) {
+		ret = -EINVAL;
+		goto err;
+	}
 
 	set_bit(func_no, &epc->function_num_map);
 	if (type == PRIMARY_INTERFACE) {
@@ -720,9 +723,11 @@ int pci_epc_add_epf(struct pci_epc *epc, struct pci_epf *epf,
 	}
 
 	list_add_tail(list, &epc->pci_epf);
+
+err:
 	mutex_unlock(&epc->lock);
 
-	return 0;
+	return ret;
 }
 EXPORT_SYMBOL_GPL(pci_epc_add_epf);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-17-kishon%40ti.com.

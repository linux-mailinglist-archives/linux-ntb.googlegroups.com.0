Return-Path: <linux-ntb+bncBCOOP4VF5IDRBKWMWH5QKGQEOWWALRQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C06276D0B
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:26:03 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id b109sf1013187otc.16
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:26:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939562; cv=pass;
        d=google.com; s=arc-20160816;
        b=FSuA5/VXwfdwSNtn5QksmONr3C/yAyyX+U+xQI8iDzTPkbcV3LudJFIpsigUfwRdJm
         54RhsKU31CdD9BpgPGedUGxYgkrbnt0WRHMw8IfIxtqa9n+dgYEZDiQxUlbiRjjTJ6pO
         Nywx04ny5ndHycFp6Kdk5WMtNYVhmrjM2o2xfHr9gd1cTk4TjCChYWdKhIXfLp0l1xaW
         rJ+QJPTE1Xq0lLxgU2QI/0SVIbAe0IYW4BeHmrHyanMVi40dZBPJRof/nwqhDTRrcoI6
         RhGRHuI49V5lZ8aXJsJX4nhueTwWo1usjkJFFwby0WCjEwmDiEbNEtERKprSLqtSQfzu
         oW7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=t3OfELEzuPwfvKO2ctqtnx+FvoTeYCOrDaiyGm0wdAY=;
        b=o5X1fkHrhZLVKMuqKkIdtirvAswpGFyovL2oFyH3LEYCBUvSCCpUlgEfYsGHFfNHt7
         OOod7vjG2+hoLocQoHzYDXBv1v43lhyikDiCjhuMw++XshD7dUiyF97SYN1mO2MslfRI
         F3wwU3uOYaWrfNUzfk7iXKgrCOjMs8VN4nN4Zq6ZwfCqnlvxQL9cEUAPmxDKePbnKmW4
         wziZAaP7JIpiR1VI83CCSKaaqea08k/vNBdRxPvGNYdKAbt+3zPxRSewFjLSjHDLtpKP
         fVzKzHX7/Ng03wwsEBTTuDY3r+aH7yXpZ4tQzbfGipj2U0NU9XLG5S1dOYA/R3gOnXYv
         QMPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=MdopNGXy;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t3OfELEzuPwfvKO2ctqtnx+FvoTeYCOrDaiyGm0wdAY=;
        b=E65FiNhgUFXIKxAxk6iGSxIY2MCRYea5UMqToxffdL2h3nlsj0yl1DXFQwbikz7yfC
         fQHVVSlEzZatreiKzrh1/9yX0R1LyCY/G/O3NDLtfLTZWEmELC6OGr9IoQE86DW8GSw3
         sU1sh68B+2QZXDQBv8hIg4n3lAeyZhWkM3nn0BUuFGkofWcEnPZSe/A8kXP7KIy9G7Wr
         46yCeHHIoZHq+rD14uoujY+F3eXYrWrxvTwcRONxVOTao57ElVtS6U0n4TF8VcoOLuQz
         JMjZiHhwJt9Zd7a746ynu1T9PeN1Ge+ay+mHMXCojUzRcup5KxxSLGVgyoVxS0RKaFHl
         zldQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t3OfELEzuPwfvKO2ctqtnx+FvoTeYCOrDaiyGm0wdAY=;
        b=GPvnOYgAPNhy+O3friHP9k+/4hzD9I4UjerrYQzE5+WIKuRF39lkKToB43vjxgNmT1
         zSNkLJM8vX/788r98XAJDeZV5hZjZl7FQsVR+7ddb2hXVV9Nqgzppl6OkamfQyKJ8y7A
         csGHMEkTbcVwu0Zar+OG7yQgxPWFJoUUT7j6oBGvVMJ4sCLP+tew3WlCMQRIXFsJ7Qdh
         zYtuZTOoDLwUadGT0t3Rp1UuAv6guHRg5ht5s89qj4Ue8OZjqa3iUMYqNcT0260Dbm+y
         rKpJN/Kjd/SFEggxQUNQA2fVzlH6RIS2kyOPEBsSiIeXT6BnQtkSH81NeJeKf/uttXhf
         7N+A==
X-Gm-Message-State: AOAM5332muJs1oHTwcwmnljw8jh/TsoocbQ2C/TUBcgdS8kW+9soW/uj
	cVrkWyk4rFr/6RDCgsXcPDk=
X-Google-Smtp-Source: ABdhPJwtFov+3b1f/odnD/wZkPS2DWswuFlY118eCDJs1nh/trujoj+u5dM8NgMmnNJTTaTX71A4Lw==
X-Received: by 2002:a9d:4d17:: with SMTP id n23mr2520125otf.364.1600939562275;
        Thu, 24 Sep 2020 02:26:02 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1f0b:: with SMTP id u11ls624561otg.3.gmail; Thu, 24
 Sep 2020 02:26:02 -0700 (PDT)
X-Received: by 2002:a05:6830:13d7:: with SMTP id e23mr2486084otq.98.1600939561962;
        Thu, 24 Sep 2020 02:26:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939561; cv=none;
        d=google.com; s=arc-20160816;
        b=jn1n4+MR03s7bxoMXDLWgh8Vs5q7wZ5N6lWg4qYQlV2Feqov6fkS2DJXblUm2Izymm
         YpnNH6YKHhFzmhyRipGY7UQaJoV1STcpap6yBZnqfwNFpMlcMOp/37elYomuMa2ETfHc
         i8EqaGf7jLw5BNAZkLbuiEHjl7FRqg6WyZohA/OapH/vhEVHVNi4G5YQcyWRxgmXiivK
         a/rCt+q6f3puJ+o5MvXs9jQ69fZ+Qhn9J1PEUcTIKnt6toOw/GBD3sYLW9kOFiFST+zJ
         ga5LIaDSVu4j3VIAY9L96FZN+wxub3lB4nHpmKg6AXF9XYwWXKJ2sVoX9fPyL8SP2Vo4
         hEmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WCJiTCBYarku1p+J3FGwyc0AS5UhsiZgThHHJxu9xzA=;
        b=GmeFBuSZzQlAG5fN/uY8dzXBQ8xOsDS9rZsSBhyxykxfEAnSDy5pAxz66Q0n/gFEa/
         q2ShNd3cJtFhrM6D3YOFq6DFrZOAf/m0V1BIwv+TUn1YV463srO+KBk20oB48kKXfH26
         GapVW3KsUCqD32DkSsQ6/R891PYcE488tRnXFNbtFc8Wd/1Dq17lzVIEI9d2wVM8kpKi
         2LYs4zUaNONS++oBndbN94Vk8R1T9nxQ52fQsbam3TlT44ZoUUf+MBxxmreaunFz1ZrF
         KCFwphy6aNSis5+F39GziZ/mspTzATvY5acf5pdVYJZ5isfigQL8IC8ApXLbw8w9Z2c2
         yTDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=MdopNGXy;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id l15si240187otb.0.2020.09.24.02.26.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:26:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9Ptud117098;
	Thu, 24 Sep 2020 04:25:55 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9PtR0035797
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:25:55 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:25:54 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:25:54 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POYs011000;
	Thu, 24 Sep 2020 04:25:50 -0500
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
Subject: [PATCH v6 05/17] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Thu, 24 Sep 2020 14:55:07 +0530
Message-ID: <20200924092519.17082-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=MdopNGXy;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-6-kishon%40ti.com.

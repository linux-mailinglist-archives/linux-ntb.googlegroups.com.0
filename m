Return-Path: <linux-ntb+bncBCOOP4VF5IDRBVOL2L5QKGQE6HVROEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 20E8127ED17
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:35:51 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id w19sf1188327plq.9
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:35:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480150; cv=pass;
        d=google.com; s=arc-20160816;
        b=aX3VTsstxfOOExccb9/SWXdT2Uzst+OUW4lB4yeBHMPrTzgQufA8yOjkIjf5NgRbpw
         g9Vpf9AmeDf7KlhfAldrxUymi4aVe1W4AE1k+qSSD2WHywxedc2lhar28+DR3dUqcL9u
         +CZaEU1au6Dgc9LHHQcWCf34RXXwmXApv2e/tuJESiT6/XHnRWjcJ46YBrDiWwoAmX2x
         Zg+cqatjxGbDQQzAdntBXDiWwqz+TdbcAc4mj7O9YeTxnX6fzmd7Jh07r6Dhwmz4N+38
         wPDpLkobxjUTPDe1nqxMA6i5/2BmW/212+HTjr2aITZ8/3LFE1kt8UpDcdjjLUE47Ray
         9qEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Pbk6ufZso3gqlIaWwaSUcyj5k+qHugDJBnR20MrBQqk=;
        b=CH9y2ZC6q45XY2uBpRYpOVE2PYJCyo+0KbLfnIHEGP88EPbXfMQ2L/cv6WXlDGI3F0
         a6GfRWc2VViSN2+PbM50JHpwvFHIUSSRP5txxuNYE6mLIEFroiWCkqlm9HgqRzoQrD0l
         qiI9rnYc11EVg6fiiPEYaJo2IYAN7oZeLIj077Cv3SWvThXj2Yugk3QHX8jONdnrVz0i
         tkVLqwfL6XjPfY5hy8nn2x4jpnBeza97FxRZhg087aeD+FB1ZcytKjdso8u0FP27ATiu
         JKxpKxxSGkMUedlyhPWZUxGjjf6tGdFdZI8OlyEZSBCGQzj0qI0RLdZeZ9g+EGWJSxdh
         LT8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZCuj7fZf;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Pbk6ufZso3gqlIaWwaSUcyj5k+qHugDJBnR20MrBQqk=;
        b=Rh2+/53vUUH2ITG8BnOZZjGnKNMByMdCEntlXlblFeRj8dKKeK4SPU29firrHlpH7p
         koqsojXfoJLhn+hYODQDGpMj/ibMKf3jtQxp8o0m90adLDb6k0kd05W19Bz/J7hgmirG
         C5EdX8z+HMeAgWBSpabGA0YW434lEGo6rzTnfyVnETRUrZSnuK1x6/EOwTXHJfiCtDCG
         t/cjWWsLDsXEvpQwPHhOWdmFdDyOTJMEXle4rxsXKj6km+ik5CxH2I5G8SGBUftg4Mu9
         5hka6eFRuK772no+sie6i8qL7q43XZ78GqOA74WnPnz8lR9Gth1+zlshYdCu/PNn+Y4K
         X+eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Pbk6ufZso3gqlIaWwaSUcyj5k+qHugDJBnR20MrBQqk=;
        b=AvojHsl2bE7ZNHvV+sKVWyJFXsIrYFiTLqBfLjYv3q55mowcWADD5QxkUi+AFBiot8
         R+F5UrMDnKcyTe8gLr3z6dEVJWTgYXL8ligfPtQkdw268bxVSBxn/qJ+ysHV/r4orBHa
         kHSi1BzrGx5VMhb/2yZe6vRA6zzdfYPEKsVEBBLWVQsdg5bAlTpsLYUTTF5Vs7Xa8Vk6
         PP/saRG/DyfAvQIrtj0fZ7vXCK40NMRe3k6WNj/J6Lhg3OixwIKaA6uMHZHJg+N6Ecaj
         fUZZ1bETN9QIqF3452quj7p8tehTJbAjDXBeRWZ0xZe0I6CL4ArC8Qb2w2l35hRWvCdX
         VDNg==
X-Gm-Message-State: AOAM531q3+WiEpyGvk3MSz5wpf1OC2dvD537IXXRC+Oa+uv3bmWep5TG
	uPIoHVJkmd54ovjfz0l8bHw=
X-Google-Smtp-Source: ABdhPJwUfMccomMlcYnosaEItF7wLpQxA/umwZNy2/VOCuITloxme412Al6xtLP8ihuYlWAIy+nTOQ==
X-Received: by 2002:a17:902:8a96:b029:d2:8cdd:d8f5 with SMTP id p22-20020a1709028a96b02900d28cddd8f5mr2914961plo.69.1601480149853;
        Wed, 30 Sep 2020 08:35:49 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:4706:: with SMTP id u6ls782063pga.8.gmail; Wed, 30 Sep
 2020 08:35:49 -0700 (PDT)
X-Received: by 2002:a63:f213:: with SMTP id v19mr2657762pgh.5.1601480149247;
        Wed, 30 Sep 2020 08:35:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480149; cv=none;
        d=google.com; s=arc-20160816;
        b=UsyFW355p2qTJqg1Iw7F0rxPnSE7lVQzL0n4re49ApcbNHzhoPoWQ39GST4cdD0SMQ
         9dMH8BohBUPlf/DI9ccNxh0D2Q234YB8Dq0Blws3HntklmkdGgnkMS/QoBk4kf2w9w5n
         V0af1Dpclo6oLpbCU89pkcCMvHh0sSPREFA+/rA72p5gCROmIijW3G7lBItMqJBS4zK2
         MzmWv8/Ufi1BZDYO0ZBE+jxZJ5Lk4RhTSM/zrB6DPIBu999L01vKn7tGGBr6rtyVsBS2
         jtpDOGkfb7XylgWZO4QjQ4R9bzqTd+WAAQ8lmOU1ssP1uS1GRZW1VSw+LRVymUOzejzj
         13ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=re6MIOXxybv+Yv493YnPwG3dJx5wl6L6fPllpFd+bzs=;
        b=dFrTH883Av8uFaF95GkCgJWC6tr3THsG9PEWQ5oocBJ7tGW6nvzG8SqEMSCdUDEgpH
         46XIBOf+m5pu3RmQwyP/bIsOGubpDgo/MrwRcl9YKMIuNFimr10cD5HcUsHw4c6XsyfS
         NpQhsPfNkG2csWERNL62Elbr85XIUGCBvqNULkzmdkGy14X3ePRitsVgaGR+2NEv79Ui
         A6QpLxTrUjc5GYp/b3dVBe2KMrPoiGGIA83RBjpzcjURYke8fh6CkPN30geB8eZxOeS7
         gwYuicMCuuEwLsNAD8NDy6Kg3btqgFqljESrVtZYJli0/2ZC53HaDcD0fkjFxQduhjrq
         Eflw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZCuj7fZf;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id n8si209743pfd.4.2020.09.30.08.35.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:35:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZfVU043487;
	Wed, 30 Sep 2020 10:35:41 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFZfuN041084
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:35:41 -0500
Received: from DFLE102.ent.ti.com (10.64.6.23) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:35:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:35:41 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZR033254;
	Wed, 30 Sep 2020 10:35:34 -0500
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
Subject: [PATCH v7 02/18] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Wed, 30 Sep 2020 21:05:03 +0530
Message-ID: <20200930153519.7282-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ZCuj7fZf;       spf=pass
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
index cadd3db0cbb0..25e57672e1a1 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -93,12 +93,20 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-3-kishon%40ti.com.

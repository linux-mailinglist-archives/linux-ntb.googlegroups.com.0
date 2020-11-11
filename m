Return-Path: <linux-ntb+bncBCOOP4VF5IDRB6MJWD6QKGQEJF453EY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED752AF4D7
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:36:27 +0100 (CET)
Received: by mail-oi1-x23a.google.com with SMTP id f66sf803379oib.9
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:36:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605108986; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q595KYm42rSAFxbS+8cQkFr/5Oblsl5vtC5c094mHPbo1KG4juFbWkU0MXwKKYtlEg
         otuYVIn1tt2AUY7XdDacM2J46sWrzWPZES8mFOAllob0yp0LqjleQmdHTNBDfbjVfyXw
         Hxl5egqw6nG6Fh51FuXxQBjcWb5jNDLR4qIZTad+BNQBTD3RVjt290icXLClZSxQsP+K
         IdPv2p5c7erCUZbkC1nLOjmlDYMoCGBqUp+CudNWzNsjKHn3FVq0LvOB6FjOV2YE9DOj
         ntmbTjuAMuPu9LUiwcqAydsep5/rgtqk1mA/HvybkK+1ZgY8HKnfbsDo23vdCxQrAulj
         vAdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=3ksl8cp4mhGd5HHJiQ3hrGT4i3Ak6cKobQHxjhBUb2M=;
        b=GPURYvWMZRg7kVnD5xR2eF8lrfl0dnldWrqTF7N+HVL1PoFaWPk+srO6F3L7OPxpF8
         GHXfRlbIhuz/4X1dNYITggHUaRYwtO/+aOCo/voqn7qXzRdVAlITj0FVPHxj3jO2kkPa
         38WLvo5L33BvPYQaTfCqYxMAo7Zcoy4AQwwoQVHQkQgt/mCC9YU96HLfLw/tJcvBFBN1
         zJtpdkwK24dK8CZDevq57mIyYE1W448hXaV304CHcFXhO2fm5Bs/DhijdtdzqgifzdMZ
         GsvLRo3iEJzFx59UOSaW8yFZUtlB+VjZDb227fNavqpHldRQ5hBIhThfbqO6jdSry7wR
         HQKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="TOu/IdDZ";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3ksl8cp4mhGd5HHJiQ3hrGT4i3Ak6cKobQHxjhBUb2M=;
        b=BSkF4uFJ6S5eD15ELnLRxSvGQiVzcRS81qrmQY3b2icqrKm7x1oxFkNWkLM1+OWlD1
         j/2a0/ZT+hoawjwmC9zFvg+9gLaiIeS13QY9D1fF9p89Jl82rsmV14P540irQv9Nu4zd
         rzENzX4Ro1dSN+duXsFlfCV1CohtHxhJIKhisqEbiRLIibDXMdzIME3M54cww7WzWj76
         UJU0PxZIyd+GDknSO4Bz5DYgbNbV86R0ufbL/uVNpMqvQ9WMxISJsszS8Sm9vZIqWppH
         jnE1OeDWTDak0pFDWNXsjVJXQ/3TSyCf8U0To/y2uQBCNZJVjXqNyt9x4c0hLJHsyG++
         PfZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3ksl8cp4mhGd5HHJiQ3hrGT4i3Ak6cKobQHxjhBUb2M=;
        b=gfAOmU8rmi1OwvNofjGpKfDFQedhKVnVoeVEG0OspFiNsxC5hY4th6y5TaGC8usaHk
         CBpN539uYbRjXL6+HaigHmZt/5pSQAqQUGmdPljGg10YJ/eV5K6Tua8feweqw4qTCt65
         XMa8ms4x7zj7tkZyY02o+YsS9i/mWZNpR+3r5b/ByzDtHvMAQhloo8U3RXZ//JLNoS4a
         rn4dylUF8jqcd0UwwOOdKZ9nNc4SJNhVAwWufgQ9HCRfS7lV9BnYoRO/mAlI90Et10YD
         vuDn6AOiKRtsRh1bfdDF6WXlDJUU1HJERmOHHsoDwDqBL1lieGgXnblmBaueNF33fGKS
         etlg==
X-Gm-Message-State: AOAM5322TYPfCdT/qE6kBfG3OhDjyOxfH1ARUtn/OQwSgOmh/VCeJazQ
	uGbCrCgCwwpndAHbUqp4f8k=
X-Google-Smtp-Source: ABdhPJyq4wZV3G1gpaQ5HzklLY2z6yGUGj4IaSNI1nEQm0PL2RFMKoa/cN19cGU8gSCmr2T6/PsjLg==
X-Received: by 2002:a9d:17c5:: with SMTP id j63mr19238578otj.9.1605108986064;
        Wed, 11 Nov 2020 07:36:26 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:b784:: with SMTP id h126ls3995581oif.3.gmail; Wed, 11
 Nov 2020 07:36:25 -0800 (PST)
X-Received: by 2002:a54:4590:: with SMTP id z16mr2542951oib.63.1605108985691;
        Wed, 11 Nov 2020 07:36:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605108985; cv=none;
        d=google.com; s=arc-20160816;
        b=N8Ht8/dWWvkXJCyFTKrL/l69s2vNJxoSIORmyPwerbzziXWiMPejSmZxdLhgwuCy+d
         H69i3DKUmubBeA08ghnMrsIkCXNJBmvK2x5DTHTrgyN9cMQUQEGOMsxrpebVNnznz6MW
         CAJGIINWyqlXsFlBDtv7yfdHGg2lReOht5QTPFIn+S3JfpsOS8jJGLEbGd+nk7kF6uFw
         u9RoJY+5bnXUzHBYdrGsnxN3F2JExVGvKn57hTHWmtO/TDVLeNGIrY61XoLmW2fcvjjm
         2qxnm/BqeBVDXdRv3IZLGo/f1ID2qOdcjWX+PVHcueGOUEInKBHKoSq1HGhgDzNWZX3b
         RbrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=re6MIOXxybv+Yv493YnPwG3dJx5wl6L6fPllpFd+bzs=;
        b=GMNjEl5hyihTLfmZNIVy7Uk94mFTyWVkb5Ki8CqF3mBCR5mvHfROWoGy5wEmpOnaRu
         NQYetow9PCmI6filvl0+56ehJ1kd5Y74bGPi+lCKP4KRSM5i9X4RPKkWf/qU4r7aOfZa
         hgz1vizkf6z/Duim5Cihh8OTscLxwEk34KYk0O9VY1PyQDmDm+KbkUsBUtbnt2MeFz/9
         gWfH35mM7iba7IFrw9C4rZ66o+utmfXmbeMWGphdhKdx8ZOKitb2guwt0oQRTD/mhN6s
         Z+WkUa13vTfM73FqTBsa7HKS5FrpXtxzuepbldWX/yMnFdSEujnMvdnegfeSPFm60YF/
         XqEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="TOu/IdDZ";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d20si264050oti.1.2020.11.11.07.36.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:36:25 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFaISg124721;
	Wed, 11 Nov 2020 09:36:18 -0600
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFaIUT111619
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:36:18 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:36:18 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:36:18 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa03r042109;
	Wed, 11 Nov 2020 09:36:12 -0600
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
Subject: [PATCH v8 02/18] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Wed, 11 Nov 2020 21:05:43 +0530
Message-ID: <20201111153559.19050-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="TOu/IdDZ";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-3-kishon%40ti.com.

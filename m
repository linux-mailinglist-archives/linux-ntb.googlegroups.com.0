Return-Path: <linux-ntb+bncBCOOP4VF5IDRBON26X2QKGQESG7NO5Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3e.google.com (mail-io1-xd3e.google.com [IPv6:2607:f8b0:4864:20::d3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3871D33E3
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:14 +0200 (CEST)
Received: by mail-io1-xd3e.google.com with SMTP id j10sf2624738iop.11
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468473; cv=pass;
        d=google.com; s=arc-20160816;
        b=YOWGhyA2ZnhIjVpJhZG4bnucSj0PKVbFQuzNyW8tJEFZiMs5EJX9FwHowZC1N5kuUm
         Y1bsoPn54drMapCnTqwENu0lTicbgEhK3S1IMBzo9BNNxYPWL7qPww2e8oeAl24EQgSB
         GJlJx4an51TbNTg0PRfTBCOvJB7HznP+IbF8m661X+Zt1HRh8vKmXVZ4oEL5CqDdPrbe
         /aMQYB5a0TT64GHz08jg9LCcLUv/bO6ODzJwHXf99DHi0Cjafwk6PbEyzxxyCN3SEy5r
         x/tYa6g7NVoXEiZQU8a74wPlKCjlOjf8ByBWao51qSzHeGNhCPhOoLz/Dq/nOSt5QiGM
         ocow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=WRV409YRAcYGjDmk1SmollKgvDIy+v1q7MHsxuBgTtE=;
        b=SwHNUtJCtlyzQRCZwyDJtV7IZxP7qI2ptlPcno0wLRvEE3ap1C/iqXnPR8VAxcPupG
         MRnoUKRuomzv4j2RyeiryAMF2UdA9a871ojtSpkvxbnE/vSoTiW/PATZBlr3ihoz1QaW
         n3hQ2MC4weIfUYnv1XPpI96EOtzIlpUu2hguTH8i5qL1N3uNxQqfjJwuVyi4EqqkMhPi
         vVBcSO0DgSPgNLtfoBnImLY4Oy/vjRON9WrtGSrMiLYcEhprp87rFCoXhNbF0ERHvFG5
         lV53cTq9TgmUYJTw0I+dBVi9M4VQQcsUBCFXcw97six0TAwGb8eE6UjMjbRQywx5qmIz
         EtRg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qOIVeO2B;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WRV409YRAcYGjDmk1SmollKgvDIy+v1q7MHsxuBgTtE=;
        b=aAiwqkpLAs4lUsW8HAd5OT+aJPkCdjSQ8lEQtQstgwRSJDjyTAPaDTpamax9u/l9fy
         kFcNNQ1XT8aMOhNn+jq0dnhvWgWho1dovUwmxXsCOWDExX/GPTAmz77+VfguRKzMYCzR
         93N51jRNqm1TcBHIVXIXitBbd14GN7jBxr+dXEVQeYs7qebDA1/xc9z1DdQJdLZwjwaS
         mHchXYMwOOAImAz7jU75jC7DBO9oeAu705yUCNDHB6wN7gOFJ0O96mGDGgkNFVgMaoqn
         8Z6rfBXfH7CtPB88mJ54rWb0hsUWGFo4nsZlwCYbFseRecuMQJScQkwtUF9amIx/A3ED
         B7eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WRV409YRAcYGjDmk1SmollKgvDIy+v1q7MHsxuBgTtE=;
        b=huokfDCQADGIlH+W0minkWEk8906iBUq91JGseA6GXOWQLkGkFvQWh5DCM7W1e9Nty
         IBBWJBuVCxuZdVH9bgtHRORdyMjaZVbQeHAUvQZ3GXFTXBIlC15aisPcfjnYab5oZ1ru
         R7HTM0tFrxFp8ZDRML2xe+JQEzbgbK0xoRJ4z0TqIm23EubdG2a2LIIx+JxLR1Hkf7hH
         l5B+In2bH34SXnZf0U8o38urd5Wap/E2Dgmbavrk7hMI6Ha7DsGjcfKxuBParZTt9wu1
         gQMY53ldZRghWnXqvqdjnXsicPIzB9Y6BOkxTwdpWol9gZ9u7ixTAOJuP12nnyclPpSB
         oBcw==
X-Gm-Message-State: AOAM530tDsCFIAzMRdPbY85h/xUnEQb/m8xBQ/vAsfMJAN8i9aw6DSCq
	3NBYyVJHUGN8saGjODTk9DA=
X-Google-Smtp-Source: ABdhPJzdFwHYfeAFgffslnqwLfD7OAGd0Qx73FB73RnXyGdizp+g43dU2jJ8MDzxkPCvIYOnS4VO4A==
X-Received: by 2002:a92:8144:: with SMTP id e65mr4945818ild.242.1589468473277;
        Thu, 14 May 2020 08:01:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5e:820b:: with SMTP id l11ls727421iom.1.gmail; Thu, 14 May
 2020 08:01:12 -0700 (PDT)
X-Received: by 2002:a6b:5b05:: with SMTP id v5mr4565258ioh.37.1589468472231;
        Thu, 14 May 2020 08:01:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468472; cv=none;
        d=google.com; s=arc-20160816;
        b=wkFiCLOIg7BVFDRUD+BMcDfHql5xLaCaccjWgqMAoT8XqYXoIIK2bIF5nkjZGMpH2I
         SFE4cZxmFW+19fh9Z15bHXGkQi+6k5ChRkqAwF60ouoO8OVMpOQh3YoVgc5MJVXJzMMe
         SvFF8HnA3yL6brNvnehRlW9FFM5EVxKkQCjMivxftU11LHwvgahNdW3aesGfgWUonVGR
         q3xTv1lxVESBN5qmYvaZ6r3Bgsix1Age6tI7W+ZLA8NcWbZmTYehmEPg6UgahjvEExy8
         O2lCAzjcCm1lqgPTWms5x52idWEyHvwO0ZgRQimb2Z9Q0ohqF25n89bVP5yA5MivShKo
         wpww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=bODgLRx8N3aurYxKNts6y+sU8L8y/voav6PhIMduQh0=;
        b=vvymgO24OrnX1uB+IyAKXiHSMo0ThGKpuGEZqHGjarWQz7WjqDW39AExSLfJvZDLJW
         m02/h7ah21JFCzt4iUI1wlHgvh/ZxcAKWMr1vjEJXyZ2zB7U49eSkZKmD9ABmAkmYn2u
         SQ8bBVpCl6/m6JVly9Jx655jVha4zeR8tjhPW4BfbFy59SQewEMb95gpq9PQwDKmh+Z4
         MEBwNt3uUTqyYL4JThxBexHH29/p/QFW6GahXeDEqhey274geYVcPRhXRy46VZ6fJgj1
         pkwNiTWAwWyv6g83cBDbjcLAUrmGBuCLIkrmJHmO5TvLPVjJBspSIWqgncQaJeIJI/sP
         m//g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qOIVeO2B;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id d3si309148ilg.0.2020.05.14.08.01.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0GLc000388;
	Thu, 14 May 2020 10:00:16 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF0GqG059136
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:00:16 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:15 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:15 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAo019279;
	Thu, 14 May 2020 10:00:11 -0500
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
Subject: [PATCH 06/19] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Thu, 14 May 2020 20:29:14 +0530
Message-ID: <20200514145927.17555-7-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=qOIVeO2B;       spf=pass
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
index 177a3fc1a0dd..49bffa2349c5 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -153,12 +153,20 @@ EXPORT_SYMBOL_GPL(of_pci_epc_get_by_name);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-7-kishon%40ti.com.

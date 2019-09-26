Return-Path: <linux-ntb+bncBCOOP4VF5IDRBLWDWLWAKGQER2HVIXI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 346E1BF187
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:32:00 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id i28sf1528876pfq.16
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:32:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497519; cv=pass;
        d=google.com; s=arc-20160816;
        b=AJDW5Dqz8Hvk7TsaDraOSCqli7CBI2e8UtvEgP30WBS3Qr/nTTJaw1CJFA2I9lNnjb
         cNevMX42inRWlpxKBs1r4X3mh6sPISZGGs1HqM0f+DtrNVY7XKtB/MhUagTcnQhueXbN
         LRwfTJSbsv6CQpJfNE3VTbO4RSZ2zpFoerF0TooG80CuR1qym0gcb6hk8ERkst3eHQ+K
         tYljfUpBi9dBx2I/eOJVWzg/wlsikxc60uG0JHDLi+5Y1F6V7xrOsdUmCQlFl3Eh0gM9
         8jPkSjuKekyKbEzVnEYEIZ5DkCwXEheY/hQbTMwBAM2NC15sSApAxo0Cc7rtmxHJ7Ndz
         JLRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=5lRGEuBvOeVd394GcTkmBTSnkuiR9auIrRQnKPIZScc=;
        b=igr47JL0ZH4ArOujFsiz+Y9n0vlXNysxmFhQzYgMujbum5nt4xgp9Jpq/GzWxioBBZ
         7AKS1OJMkhXVXtqrhqEKYjN+bs5WgzGVTFFcgs0hMlyvkDfnFcsHYkbAj++4SswGOWbD
         Zm9bgTsCcXX/3M29llnI3ZrscTRiLJ4jzoITcG2SzNWnLHR8RXyZyGzU7+iSm8EmjB5X
         ZImw6xGhhpr1lrrt81M8t0s26AfMSFGW+TqhpBTs0n1efAMdSlm95PKK5Uw3psVw4a8T
         MDxEtnpDIvcPhTEZjmbhl7sIrXPE5H85nFiVJbZiWsp5KwdjMOi1vNrN64e5bAS0mnFF
         O70g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=BDmf43rN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5lRGEuBvOeVd394GcTkmBTSnkuiR9auIrRQnKPIZScc=;
        b=XyTtgiPtzGlFHzdewXysnJpJ0Qk+Q8ult1ZueMJiU9QJfhJ/QfSBnwDewBFuuh1ORx
         mxeI23dOcEkc2p31plN+dTOQLkY9Kpb/DriIiyWnea4hhM2lJHi3mj1tsf6+AOKOsAE+
         195JAb+w/b0hu6XQQJKvs7soiOOo7na1slTWCE/jC2CC5GI3FMEgls390e5SnCG6fke7
         i/VYTrzSarFkVOc2sz9aZPgwuafzmCUI0CDchXPZUflmAIDc2MIVtCwMDpEH8PjxYjvS
         2sXcoKtguQKaueHpJX1J2EOyDkpAiWIYqjyksdNDLF5M0j9XRn9D1hxa+XxKTGND12xV
         4oTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5lRGEuBvOeVd394GcTkmBTSnkuiR9auIrRQnKPIZScc=;
        b=fvykF8nsPkDQ/YD2OCflnHCd9zhVQ9YJWC35g8TkeilNoDHzLK1fUYvvfMNdy8zGNo
         9QAEUUZXbAe5YCNzvraR7gk2ELCpxM5p/5J/5m2yyth5KQUCJVtlhuh07Ld2IsfIaito
         eLAEDVbVVoIZY5OllRvKKlaxoXZoFSNp0hB/lvUyKi9bkYmdoEhCwPtMrdJZ75sEMRsd
         o45nnq6r+8jxKp8BOSxrhgWr2AP7/+Rj1MPPOG7r9DRHTWthKXsLCZmWu/dPjBwm1au+
         Up/QqWWS0jTyIo8xZaWAxtKi18qwWEOQFGL6AAK8AhqMoHBS0g6JpZKxSal1WFDzI6HI
         Whzg==
X-Gm-Message-State: APjAAAXFV00RzjGTfoFhDuJ3IngW3qpdmdtRiAeleF7oE/NNlk6eBzro
	xASyxLf3//m+chhwpg52vzY=
X-Google-Smtp-Source: APXvYqzkpeC3RGwMN6eERYIcLYUNHZuTmr04dlibJ6U1HMMcUP26XwFgzVvASOJoOU67jkkNM+3UGg==
X-Received: by 2002:a62:1890:: with SMTP id 138mr3130869pfy.161.1569497518782;
        Thu, 26 Sep 2019 04:31:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:bd03:: with SMTP id a3ls604073pff.10.gmail; Thu, 26 Sep
 2019 04:31:58 -0700 (PDT)
X-Received: by 2002:a62:8202:: with SMTP id w2mr3086801pfd.65.1569497518416;
        Thu, 26 Sep 2019 04:31:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497518; cv=none;
        d=google.com; s=arc-20160816;
        b=vpnr2N63l71pqUcu8ESe820Z24nO+A//dKHPL7UoBthCwLLChomHU76eRy5VNxBDhS
         eaJsTHvPImlvPGQ2zmueq0S9n9D04ilEWOaEkoRkySAetDrmosiy9HVC6hwgH0Y5JQks
         P18ZVDCR7HVg0QK8dCme2RTUQMqQFn5LYpHwnS4hs/TMVinecXFJb112YbiRV2cB3n1j
         4TR0M9v7jd7WrdFNF6WE1km8Rd/gd982t6kb1lhYCvGIrhdGAdRCwNNEtLnc4EQwboFH
         wLZpiioHRnqutPG8E1JxQxMDdhekzW9wtOBbUXw33wwfl+H0LnOXNrW1+yu/wtr5UgH9
         wtBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=Ba73hC2payjMjY03QA69XQlD3F4Pdv4g16+/XfFLTUM=;
        b=fesTBZQFU0dpXccS/Ahe9+a2V/Vt860BxE2GAZKE/WIK6PRmKefyqb2v4ZKDUQhgeM
         uydxIxs3EfBIAY8LcA+jZVqEvgayNRAqnbWQwBQxG7k5vCKpX0a1/BXv/eKekn48mnlG
         bY1ungq6mMfZxsmpHIvRAiFFygEJRHptb3LTT2v38+2kZVuumupvDheBmo5zdiTDg6/r
         jobZhyDDZtBVoCYH+a6koVCfEN1x4ROeAhPJZs9ARVv7KaILjwd2P0RVwpa9ys21LEq0
         UNn8AbH9e5w244dAOYQGM7LZxrGefZb3xrxB1UVEl+OH2OjPVZ3rD05S/h5uhGutPiOV
         nGJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=BDmf43rN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id m186si69284pga.4.2019.09.26.04.31.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVrtj026112;
	Thu, 26 Sep 2019 06:31:53 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBVrE4032357
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:53 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:45 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTkC069017;
	Thu, 26 Sep 2019 06:31:49 -0500
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
Subject: [RFC PATCH 19/21] PCI: Add TI J721E device to pci ids
Date: Thu, 26 Sep 2019 16:59:31 +0530
Message-ID: <20190926112933.8922-20-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=BDmf43rN;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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

Add TI J721E device to the pci id database. Since this device has
a configurable PCIe endpoint, it could be used with different
drivers.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 include/linux/pci_ids.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index d157983b84cf..b2820a834a5e 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -868,6 +868,7 @@
 #define PCI_DEVICE_ID_TI_X620		0xac8d
 #define PCI_DEVICE_ID_TI_X420		0xac8e
 #define PCI_DEVICE_ID_TI_XX20_FM	0xac8f
+#define PCI_DEVICE_ID_TI_J721E		0xb00d
 #define PCI_DEVICE_ID_TI_DRA74x		0xb500
 #define PCI_DEVICE_ID_TI_DRA72x		0xb501
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-20-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBRGM2L5QKGQETJSDJPQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1192B27ED51
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:37:42 +0200 (CEST)
Received: by mail-qv1-xf3f.google.com with SMTP id l1sf1263569qvr.0
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:37:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480261; cv=pass;
        d=google.com; s=arc-20160816;
        b=0g1YUXyrkNvVdJoDd2KBbV4Kk8oXXAOnBO4E+i7vBsJxmptfBgwfHRyYX4MQ9e3JxA
         r3Gj4JMp7GyFqPwyTpctyGNAv5zP89p0uSRONjSKI5ruqvBZyNooYWi1oqSZ8tHnmRYi
         Ijg+UFuy+ISYGYBIM6SqZtUYIJEa5cj1VG68WfAmgPVW55lFnSORAbtEWp020muygbSY
         fnF0jKhxpf+1MEQYfN1IC1J25BPR7cXFnYf0Vs5+07MhUqv+fhTgACcBtj7sWKVrBz+s
         K6WN5WuisYeGOABp868IUCCJaKiFrGUxUT2jQo109bfKVk72ypLlSRoLg/7pWGp0R5nX
         6H4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=NOYu/O6w4nNtkcRKddNFcG1mPkBKaJpvVoLoBtYX6K0=;
        b=q3CJnLRT4QxnnuD7goZfDP7zaQ8zH8H6x6lhVmlO229Fozd5A6jA+pVp6rPVD9RZHn
         PM56+t0g26NXAeLVr1UqrlW3qm2oEAwwBy9mR7Jd0Ztr1LI/8JdQScplVyNIBdUB6Gq8
         vqmT/8lg+elNad6MMAoY2ZHen7ZKFJ1gEjuP5+9zpGNxrOaVmf4UyYyoFOoTXF/czhn0
         yuCR63YkgUAI24y04I40P8kVf0KZXFRvN3dITr/s1R07XfA/CuP9AnNRbjq6mWUk2gRV
         LmKbyyyiuC+Ptw+xYqo1+2qM7Yyee3Yn6X3zYdNgqT/gMwqjRT0OdSdzLVjv9fg2TPU4
         VrGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ymXglrP2;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NOYu/O6w4nNtkcRKddNFcG1mPkBKaJpvVoLoBtYX6K0=;
        b=sXhd8IUnr4h4YPwrNWwVtHl2AAGIT9A76PrfHJs0YLx7ykMLJEW0mQ8ZvwW/VMWQzS
         WCXrUR++97Ncm2YNCcfCdm2qEO02rMp8oA8Npt92KyrGEckE4aAf0ky5mB2qKQiTPZLj
         UnHRw9hFSBuH6Iz6u0/ss+fQGs+8N499zq1aoA47tFHsJsE4kCCLH/WEqhP8MRZChD4+
         Lnk7V8rq5QElk7vF34AtexEpJzMxf2Hu7oxs9WEdF8A1XIFAnPCFDROUzdZi+a74Xrwa
         RNTm/Y/CQJ0lqJfg3mHDitF9KggN2A7pB4dLqkqT7jpRrdvdDh0NG/Vjp6ynBv+aeZWA
         M7MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NOYu/O6w4nNtkcRKddNFcG1mPkBKaJpvVoLoBtYX6K0=;
        b=axQTZ/tFiCeAF0QHfCwf1d8ZbYGGhDSwntOguZIWIMrf7Bh/irPRDLzbfVJDdzrgp1
         yoxRtJ6Loa0o/flxbn9eIp3UAnZqhbDEwdS54iL2xTeweH19p6WhxHMUZF78nZGncGjt
         BfIg7oPQdu0QPZJkn1E6l6zCfutM4q1u66w+x4o3K4P9L9njhu4FALJpUDLt+zyY5E6l
         Eb9LnsBQyowHPtHIswwEsfkYpDIKHOtl8LwKXywry4yOMeGX0wNEl5qXNnHur7bBJImL
         3q/Xg8SHxg0Z1ff84vRlrNUrL60fq83uBwe3ftyAAcwkjN78YWKIIkhbTmpZ5O/mUnuq
         wnug==
X-Gm-Message-State: AOAM532j0Wl56WfSFxIbeXKNUSvkhaL3uvDE0LRa82No/wlihQ09+f6j
	WgvfofaiyCB9EgvVajjxutc=
X-Google-Smtp-Source: ABdhPJyF1qLfYpY7BGsV0PIDp478E0wfA/JVXIt0jrr/ouk7C2zYmwfWgwfmLiaxwuy6OgGl2rxDgQ==
X-Received: by 2002:ac8:3876:: with SMTP id r51mr2903652qtb.181.1601480261080;
        Wed, 30 Sep 2020 08:37:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ae9:e00e:: with SMTP id m14ls1020001qkk.3.gmail; Wed, 30 Sep
 2020 08:37:40 -0700 (PDT)
X-Received: by 2002:a05:620a:95e:: with SMTP id w30mr3093424qkw.403.1601480260640;
        Wed, 30 Sep 2020 08:37:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480260; cv=none;
        d=google.com; s=arc-20160816;
        b=hdt3tbaYW9OC8+u0EcOn8eJsUAM65ktYKSJfud51wx2rSS2IAr3c4wautd9x30RZPJ
         I+c3gLJ5Q8QsN+tUtmhk9CVoTFVE3h3yC2aea4jZ6vFiy3PBrLSyx0DkZuei/8ZIygMI
         mLEibzJ4fHFlI/kJFrdTDU18bWN6cXkJ41fKAWbYIFtG6Cao/fPTFiprjVL+17MgJWub
         DZ+mvaEPKcanBTBn1hK2gkcAKfu1TpII3eoRkGUHybLdBvff6Kjd+th2C9Br4XPvHROF
         hLhLfTanJBHyBbdkDNGSRS/Ka7rCfL3FDMXCm+7eRzynuMCgTOB0H8pFqREJYbyxPEi5
         MdLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=XMppkYZ4t3t/jCdVdtCLKocKpBY6oIXcMXBRoQk+HUs=;
        b=zN3NYT6HxECoIpmuEWTzNwr3ukBHyCuavWAhiIlG4NgoalMIl0TZEFkSbX1oQCe6OF
         X+dCr67+7V2sNNmTrp9kvJvubaFU7bny7F8ejaimRlK24iZ6a4YG7UWt3kvGna47pTJZ
         oFpNFlRonApJvTAaEJMvcZTJ6cXCSTwPCj02bizoad2agMgND1UZuuTIQyMix1sx4zRz
         p2eh1GAJhepOCQZ1BllVXOz/bWpFlzp4dXI69YMlV3Vd3mMKRtxcI6dv3e+TrZCIFZ+U
         qbwGoew7UkR2TBmL+lXaNCSRLyqJ57rEyVvzFGj79jYIMzujA/vDYHi7KI/sb7Lrimtq
         bxIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ymXglrP2;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id a2si131944qkl.4.2020.09.30.08.37.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:37:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFbWLP044151;
	Wed, 30 Sep 2020 10:37:32 -0500
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFbWQd044547
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:37:32 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:37:31 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:37:31 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZb033254;
	Wed, 30 Sep 2020 10:37:25 -0500
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
Subject: [PATCH v7 12/18] PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
Date: Wed, 30 Sep 2020 21:05:13 +0530
Message-ID: <20200930153519.7282-13-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ymXglrP2;       spf=pass
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

The number of functions supported by the endpoint controller is
configured in LM_EP_FUNC_CFG based on func_no member of struct pci_epf.
Now that an endpoint function can be associated with two endpoint
controllers (primary and secondary), just using func_no will
not suffice as that will take into account only if the endpoint
controller is associated with the primary interface of endpoint
function. Instead use epc->function_num_map which will already have the
configured functions information (irrespective of whether the endpoint
controller is associated with primary or secondary interface).

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/controller/cadence/pcie-cadence-ep.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/pci/controller/cadence/pcie-cadence-ep.c b/drivers/pci/controller/cadence/pcie-cadence-ep.c
index 5df492a12042..59ce57744345 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -507,18 +507,13 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
 	struct cdns_pcie_ep *ep = epc_get_drvdata(epc);
 	struct cdns_pcie *pcie = &ep->pcie;
 	struct device *dev = pcie->dev;
-	struct pci_epf *epf;
-	u32 cfg;
 	int ret;
 
 	/*
 	 * BIT(0) is hardwired to 1, hence function 0 is always enabled
 	 * and can't be disabled anyway.
 	 */
-	cfg = BIT(0);
-	list_for_each_entry(epf, &epc->pci_epf, list)
-		cfg |= BIT(epf->func_no);
-	cdns_pcie_writel(pcie, CDNS_PCIE_LM_EP_FUNC_CFG, cfg);
+	cdns_pcie_writel(pcie, CDNS_PCIE_LM_EP_FUNC_CFG, epc->function_num_map);
 
 	ret = cdns_pcie_start_link(pcie);
 	if (ret) {
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-13-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBXPJZT7QKGQEIIWUYGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6332E98BE
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:31:42 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id t8sf28044752ils.17
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:31:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774301; cv=pass;
        d=google.com; s=arc-20160816;
        b=qnoACdsPX8+eHCPRXq9i2GyMX7J8c7F86Di9y4epXG6olbsKpgstEpycn4W6RPcOAd
         441QpY5CXIrenJyGKNidorfhja7ZI4MT9xKozjvdljHIEVyynkiCsKPyhYXHtICSBvMC
         mfd9hsuE8Q7BRbUNsA2o4k09TXxVwa5R9FgNe0CrGk4XcXRTJGUwpWrkWPvXGiOW5z5v
         PUdAq2vCZU0WC1MyFyMHxTmgfFAY1ysrkT2yXZILmvYgzXSjiijzXnbw/v3qHgUeuMN/
         xkr9WafuHN+51kdR+mcslMd7yBdwomGpepcPpLoZeDS/oN//eQC+BrFSpSOyP/NJWpBQ
         b43w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=YnVXRjyvEqDJRQHRFg/GV/bCpueQqKcElqA6fKdA9ow=;
        b=moPnGCyRt6avRtnZz3Qc5o0bcyqohf2CqBwH2ahkbnWBA6F3mTQecMemmDUukJXIX8
         j4rp8KZ/ZPJlAsqt+eTzPxodhCELSGy/xypw9rDQEgk6+PGPTm/um3RRbshS9PIQALUh
         vZvpOARFjiL3aaY+4zr/8ckMwb9T/DivwlB8iMLyFJMra/HW8/eVtrJwQW9LkiDfS0WY
         LvtkRD6Pir78Uj0eMw/Wyz+mqZj0//1ampSRhGf8NrQf3AH+A5n9NjdmEkcHZM/k8zA1
         w/pH6C2GmQwVixw6PA4PvQ7CSt8WTQdQzWxeQNxbN3HydEaGG8J1v0hzccagFJhuZsze
         UdQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="ejAhGFg/";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YnVXRjyvEqDJRQHRFg/GV/bCpueQqKcElqA6fKdA9ow=;
        b=XDlnF379zWTAjL7d/iQ9Rb9ola8Kp9ifkrRrIk7lJ1VehS/TVAjeqm7PBmbGbEJ5bt
         oZV1ek8CxLphfPCMHaQ504hwHmzmw5qOTFBTxhqlYbzJZZJiI2sOEKVrtM3cJYj3bjp0
         DFIKx/XAPaL3EHH2gBXlRLyldywiY5o6cwfaeFzuBZ7pYJmV7u3T3x8CCPeWOmHK/eeg
         D+kTBNXorpTuGgwJPnSpgqM4CUCxR3TFnvGvP7Vaa6i7mI+hSWu8ZPHpdoH/1wi2PK5H
         Un0Zci/RqS7fz6oyymUHjd1yMPeJUL+9eeAKodLMkzpGc2q5pmBjrz3R/ERPS+IPBtJ7
         0FbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YnVXRjyvEqDJRQHRFg/GV/bCpueQqKcElqA6fKdA9ow=;
        b=Y/lZKR+xeQDO6k4+Nx/HhEpMz4H+lE5bwYxsTz8wN+IsOVMQZ2ThWAc1ZU3VlIdOLv
         5Z1s9lk8fq/z9fjXgvZr7Vy3MoKa5vBUwBB0aFwNwnDxrAuM4idD8VXaGQXFecwa8qae
         R0wyS7QsZbKICRka4tJch6O09qHj/sLN2Ej2HSAX02gpoju7ZMK0trB7VLrp/9V5dkHO
         67QIQ72p/RDrGe1a9NgsymLzMBoVVoqJUEnSVwUxc9COJbs2aehrRZki1zmna172tFnC
         o2qJ6F8nywBQHQ2Q9AenO2d67xx1nwHPXg/CrgnLByvb6x/52Z3VSlCDR/9/0dS1NtTI
         dtzA==
X-Gm-Message-State: AOAM530N10g5+nOQW1KRhJOs44HhnSGMUKt43CkvnmWbZd9emAVV+eh1
	kXtjw8yF/eQraoNFIoedNt4=
X-Google-Smtp-Source: ABdhPJzFAYBPXQxbhrtO3QXxyIY9/pHfKDQg0bS3UtlSMqt6xPeeRdJmWw70CkBQ2gafGFaOzPWQVg==
X-Received: by 2002:a92:9509:: with SMTP id y9mr70673151ilh.103.1609774301326;
        Mon, 04 Jan 2021 07:31:41 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:13c5:: with SMTP id i5ls8748640jaj.0.gmail; Mon, 04
 Jan 2021 07:31:41 -0800 (PST)
X-Received: by 2002:a05:6638:1381:: with SMTP id w1mr63227568jad.49.1609774300911;
        Mon, 04 Jan 2021 07:31:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774300; cv=none;
        d=google.com; s=arc-20160816;
        b=1HMrxRF5CNBPcXs6D6ScFVrqurspEsEsb7x+TTcfBZllzNiGLaWPT+Zjae3UAxWdIY
         u/XGcav1cqTNAfikICgHNwEMC+6LR6wTiqdLHJzvavL2qR3TffYXvn9jz2QvJtH0haHO
         qxJqQEVViRXTf/POhfOSqk8xdC5k9plw+L4IVm3nkHyqwz84L3TbuetD3D0RqybzIJ4x
         AwRWyQXR8ZZDgiY9gNG+3TkXl71tmiVfk6b27HvJt+RfdVLLYGoZpHG1yrCMUkfn4Y8k
         Y3uQxmGuVtcIeNFvWkH6eKp05e3mU5YbSiJh8PyT8r7xGPw/qR7T7hmQuMbkgS+YFmQ2
         q4JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=1w/E83xgraISvfyhBwtCMOEqSwd+q9BBNSRptMkNKjY=;
        b=DVz0Tl7pFueHNxhBI4UeilQUqx4XeNUF02xv9CPyOHH0p27JhwpvyVxiMWS4gsUm7y
         BNjVMOxP/Fze2s7gwDEUrUdIWedpf3fzzcq6odac2eQI07IU8A/pya/+syvaaq4OLisC
         Kmsz5Et2XPezAgoiAgC1iP642GHv0c6DVEXvt7drju+TZlLjkvGIEpMJc0VPooEfCRdX
         NwQX74Zl5J9sHlQHO+YOc1gcB0u8ugv7W5xTwidMugZS0580+4IHsA+fyNlk+KjNITxB
         i32RQIrnekra/bWh4JRYzgA+/r6kWRd3t1WMYOXF4dJEP1m4TRzirO+nCxFXxNTcDLaQ
         JTEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="ejAhGFg/";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id b76si5383506ill.3.2021.01.04.07.31.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:31:40 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FVWW2030388;
	Mon, 4 Jan 2021 09:31:32 -0600
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FVWgR082432
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:31:32 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:30:28 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:30:27 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZI093710;
	Mon, 4 Jan 2021 09:30:23 -0600
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
Subject: [PATCH v9 12/17] PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
Date: Mon, 4 Jan 2021 20:59:04 +0530
Message-ID: <20210104152909.22038-13-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="ejAhGFg/";       spf=pass
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
index dc88078194cb..897cdde02bd8 100644
--- a/drivers/pci/controller/cadence/pcie-cadence-ep.c
+++ b/drivers/pci/controller/cadence/pcie-cadence-ep.c
@@ -506,18 +506,13 @@ static int cdns_pcie_ep_start(struct pci_epc *epc)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-13-kishon%40ti.com.

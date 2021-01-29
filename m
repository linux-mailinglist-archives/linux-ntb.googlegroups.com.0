Return-Path: <linux-ntb+bncBCOOP4VF5IDRBNEG2CAAMGQECTT6HOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 30278308923
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:44:37 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id r10sf4244697ooh.3
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:44:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924276; cv=pass;
        d=google.com; s=arc-20160816;
        b=jrIKzlCiDNhagB/Z8et3/sudMc3p5KLDgZkyVfZEybZIEU8Ok+o0q/5pC17cNkyNt+
         lM4+biVbHIRTf3RN2Uo2Sg6p9BxNgXaH7sbZ4FNw1LzmqXaDkPXlxAGHbJmfCUT5CMBh
         niBxWPLkd+VfNirojwm6UXwYEbH5KWMLEt48Fdw3oeJEQR98yqjRgOfcWtiU5q/B9Ki8
         vrP3xkgIfFnm0WxyTragahfCmyJ3ii8EVtH85V6I4CWsx32Lvze13L1bFV+SOlg+AA+v
         2tnY/DdmPuuj3SJTNpQjgE2KcAm2FqzbxiwuvLCxh0jNNZJEkCPxKiT4l7YiW095oCO6
         j+EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Bo99nLYlBEgtaM31GPrdXKMmHM30BpVSzL0PRH7qdQs=;
        b=nEEEZ8oT3f4a7XhV84VbpYrl5zfh7Ygvi+oI5f5UZF9bz/gqELIbnzjNCjpIHasHm8
         lfisceT83i29PwFM64G1t+RCh3ptKmPxdEuWLk4MuRZJsUitQ7u9onLkd0PkLDNzlZtQ
         NBFfAYI2LrhqWwTMGyyAJCWJQD8TvhOf1Asa8XqM+GOBKbFWiU7nGejhSGg3y2X8qD1y
         rhl6sDEVp756j9Vm2CsfrfEJ9nsSJnVA7U/3IgsPi7Gb08sjbDx20N3j11i7d5LC9Vll
         u95JADoZnNA6fxYppgj0MzSbr8J/sDDiJQ0ZuOHntDWCUOrLhCdziSon2/9MvF6cx7vc
         bPug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=BxIe5lXZ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bo99nLYlBEgtaM31GPrdXKMmHM30BpVSzL0PRH7qdQs=;
        b=QBn4rByNWWxOAdZPvE8CaTh8ArL6QYco46pz7Ts0yI2Cu0pqoBywCuDGER7wpLu6s/
         qhkSHiJcyno9LAfQO2lmxthoB9uwH/jmk4W03BXFaIMJ5VBlyd4dTFzfvai7RdOO18uc
         xtSuvUhf+tfWJOrKXrjsf6KntPjIAGvlIf+7LDEzt3OKUR76P91QKUtG8dlwtVzqkPx5
         9EPerIIhaaAbeU/aAObKkRE42uk1DQp1gZfnJeIlKtF+lA+GXt2ZN4uTD2XhmHK3wH6w
         dfvGxP+BkdQBpvsXPRwauOdt7je4mRGgpt49Ci3oKDrliY2sUSVMuPKTzPLnuf7BZx4I
         PWgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bo99nLYlBEgtaM31GPrdXKMmHM30BpVSzL0PRH7qdQs=;
        b=Kux8zPfSt0IOHunTHSZuIdb91PcxifTxZaEBG4cQ24LXNMIMEQWzZgPockEJ94002B
         XyQwGcub0StiLbhQTtKlvDN7X8xI2mxQ4XSGHmSTgnUDtt+7PitD5E/+H0r6novmp1dw
         YnjF28slyXuQre8SNjOtujut1JOmylo4SMIDKtC/3JbY1/fVbp812a6dBKUxHdnHn/Bl
         URTJcF8SVgU2QX2Ndjni1CrK+yYQwRPU9G/hqlh9O+DK4KsbFr6rczbrLriVIel0fLQi
         DCRuNz95lsnJpVdQ2gSlEWyqnYbVLI3z/Yb9ThDzinX2nbfqSiQeOzCIiiFZ7tqnt8mE
         WR8A==
X-Gm-Message-State: AOAM530Ap6ACQM3kFe6FGX1jceeiGaVDI/GY6ZtWSXTdvjweriXChqp+
	8uXqc27edmC3Vu0JRT95m30=
X-Google-Smtp-Source: ABdhPJyNmgyPnLZCFX8af/2KJQRi2skZkBUasQ6F6QSg7qHdd4x+4YdJJ2shs06zsv7KLpT/BLGykA==
X-Received: by 2002:a4a:98a3:: with SMTP id a32mr2951647ooj.51.1611924276171;
        Fri, 29 Jan 2021 04:44:36 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:3c5:: with SMTP id f63ls2111785otf.6.gmail; Fri, 29 Jan
 2021 04:44:35 -0800 (PST)
X-Received: by 2002:a9d:6c90:: with SMTP id c16mr2825127otr.177.1611924275870;
        Fri, 29 Jan 2021 04:44:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924275; cv=none;
        d=google.com; s=arc-20160816;
        b=KYNlhcI4CPw+WID9VwaIXI6mkjV9L4pYvLblxsAzJwCt2S6Ugi2yLu+QgwSXhsg0hw
         gV4XweEUPFxuyqQa6uHKhjzmr+IWLr2Z5a9ksMMQO/QMUFL16BgF3Esf3+mNlVy7rdZc
         fld976R5Hpt5Mq+6q1mZQF+lBK7NUw1FQRUu+NwJIg102S5DFki3BO1sUcOLr4zphBSi
         o2HXsXIBiryB1cIzXoGzrdcgUJhhYaO0d39PyDGoi6cUDJBdPLlgvlU/IgBiTByHII2m
         u3wYHVtNiCvLbjSUFN/iyuysdi01qpymhnpg5sU4cbqN/2zeIiea9UXJrf7qXCOuAg2H
         2XSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=Hv2Bn0Lk5Are5SnuuKfQMZlyBMtzlQMuYQhqnCaXHzc=;
        b=OL2ZeP8O0NqNCwUIsIOCSjUUKxJed+Nx41jEI+Evg20wIm4AYeddwnJph1uKzIxaql
         tr9wrDiUjqvInM8sVgsrrjb0Hb8/br2RHG3r4gCWr31z2WX7OAIvuCrYavIBy/GIm26i
         bbhiF+4lwxzrOTz6ZuZtfQRtTi5/uE65+S5pTvita0c4q0UqrAeEp1XMG0jPfEX270DB
         Ixnb7sl+KDKI6okLpIEPNH/rLPLEvmsSAq5fAcxhhbThEIZVsZQphFD29kPDYEDAZeaK
         aPHGbQExAIP8Akkpa/4jQiRTgTSzL+4vGfvL0sxS2zWirh81V2seL5XYLykvHZVhAdPz
         ZAIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=BxIe5lXZ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id l126si449041oih.3.2021.01.29.04.44.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:44:35 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TCiSaQ024360;
	Fri, 29 Jan 2021 06:44:28 -0600
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TCiSSV012342
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:44:28 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:44:28 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:44:28 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDWB075758;
	Fri, 29 Jan 2021 06:44:23 -0600
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
Subject: [PATCH v10 12/17] PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
Date: Fri, 29 Jan 2021 18:13:08 +0530
Message-ID: <20210129124313.28549-13-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=BxIe5lXZ;       spf=pass
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
Reviewed-by: Tom Joseph <tjoseph@cadence.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-13-kishon%40ti.com.

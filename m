Return-Path: <linux-ntb+bncBCOOP4VF5IDRBHOMWH5QKGQEZNVYKAA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 41F74276D03
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:25:51 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id w64sf1540203qkc.14
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:25:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939550; cv=pass;
        d=google.com; s=arc-20160816;
        b=tQzt7WiT9aA29CBFCNqYipKekhM8Rzbqx4BrLwunfrgsUcOux55z3yaaWJUcqjUKRV
         c7FWdod+zVKNEEscuVrwg07hR7Rv0+7RWltMl3P7JTzn7R0pHy1uAORAGNkkv/XQ/eM2
         NxjO22VP1AzQCLAJOTiRbO2TmJ81xLfcD269d4mr7Cvmwok6tA76Mvt6UJO5JgX20vSU
         XCUyRwP6T+PUboHHwXzqgDyuZN4BFOSYUp/sqLVKLupwtMYiNMU9xMQJcmkeTgMbZwOb
         s8hUclLCb28K8Phtz+DthvMg3sKpibhRWz6yKmxVitScLPkan68xlhGScYNP6B/ftwNK
         LHEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=wt4DoXkO96XOm1GlKiqfsnYMcWf+MBz/8BUhdNAHu/4=;
        b=hqFusAp7iaD4ZMjnDcoMUBdAYYzSiqAGwJgZRv+ODqMr/i1oGOW2K7NRutOglBiUAb
         2AsIG3UFBwCnCtVrCGx565zSyHoSwj3IB0MYgv2bjlsR++e8hTPt5HS7TdQ67DEqJO4V
         lCMl71MAcN+Ipw4F3L17qjjUu85/SRL6UlcXX/2t7bkeT4oCBMyo1S0ShFQ0d+uSVN1l
         5muVJL9VxNXRUbX2iX8QUsle7NugfJAXfkALLhGU8gyzTo4Q6nXO0kL4TTgD4nTcZjjV
         ZtMDGKZD71F3e6RBRFwWZomxIX9FbGZHfxATKw6j96bFCZldFfsEmlRicChjkbDgxtiY
         JIIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qn9Un3Oq;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wt4DoXkO96XOm1GlKiqfsnYMcWf+MBz/8BUhdNAHu/4=;
        b=UpVK1cwdLT+ubOoV3RirMQK0WBYn3b6sDThYRoJEJS85XM6oLyXVzZo65EXITJDN5S
         BUueufJvWG+jnejgTPJm8N1CEzAYB46znon3SyaUS9aWP8UCLDXu23hWbRC/LWvEv07o
         QZ0XRCS9OoOS1aOVfP/wU3cHp0eu3Jyc39Sq4v1qJfeY5ach90Iyrn5bhif8JAERmSqu
         87RhsDhgUFo0v/nEsuW3LhqyEeKpWP5uRfn0jVRKhP8mtGsY3bNGTw+FIx4V6nFc+W7W
         r3vWcCPEzu6LZnXSYOIXBqKIKWsUeg/KTp9tmNAwz2dNYC7ADeziovfCpNRs6Bxnezh1
         GOmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wt4DoXkO96XOm1GlKiqfsnYMcWf+MBz/8BUhdNAHu/4=;
        b=d0DIMlr7XkhmTyVn+aIgp1Ka5XeT40flJ1cCI+qQtgboWaHCygsw7uQxzHDInCG8e5
         JRQGUi1OC+bIshcJp/reXzv08pW9iF6WUw2yHl75liMnkgSPY3KJH3Gnifmd9xtLnCl5
         bKYG6U/Sg/jAOpiy0ioQEsE+fNRcUcO4rI8LEQihH/42Svn/fv7LHWu0ee7xT/o29ICH
         rFB6T09z/EBRrHAldU7efkljlQi46Wz1Bn5s0PHoh2e/aka6y5T5TLfPgo+Pp2NJo2+O
         T7t21teMqw/Geg60JtvXr96Wb5C0c23xXG98mn1Y1ym4VmBiqe7k/cIyn4zy2nKDCu0T
         bSsA==
X-Gm-Message-State: AOAM533Wmn695jomzcP477lx/X9IxnSkNvgnp6JIUF4TKWmqITayBu+6
	oGHrkrvv9pTJ3Q7OAfPqN4o=
X-Google-Smtp-Source: ABdhPJy+C0RnjMNiCBVvtkT8ZYCBUNtYg8Kpt4r3uRRcJtnRFkqZWtmyUYShruylUm+I0bccRhCw8w==
X-Received: by 2002:a05:6214:84:: with SMTP id n4mr4194044qvr.26.1600939549954;
        Thu, 24 Sep 2020 02:25:49 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:f50b:: with SMTP id l11ls1159649qkk.6.gmail; Thu, 24 Sep
 2020 02:25:49 -0700 (PDT)
X-Received: by 2002:a05:620a:c97:: with SMTP id q23mr3940460qki.168.1600939549527;
        Thu, 24 Sep 2020 02:25:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939549; cv=none;
        d=google.com; s=arc-20160816;
        b=Po9bgLf0LgVu/aIVR914OFvefe3XChQTR9r/r54KsZZ2MljpNO8h9DZAd/hlmVkdri
         mmNlcanwzWV933SOxZ3W1HXXjF4NaGMsxpdNt0QYmvXvPL8f0NT2REgjiCyADdoMAOO0
         HIiXeUS64hIg1ll6cKiZA0O5llito4gqY/JLScRuMCIkidu3sxsb7fxnvr37Cim85nrS
         KlgCPI5iTCdMj/z9iVJyZomCdzonCutdCaRj1zHbpt1GiH7elf1O4YCv+auPZ83mDtoa
         /wUX3n3P6izcyDdvVUW3cFP8ELpb12c99d0DAyOhHwqavvKhnlw+Z8hL+6fE4Tsm74Zy
         sNLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=re6MIOXxybv+Yv493YnPwG3dJx5wl6L6fPllpFd+bzs=;
        b=VeZPpNsCtZiLg5MzMtg89cV+KI5ZJxpy8iwYPmvKIegOP2H8iGu/HDCEQVWe/SsVFP
         P8uCOYXUpTicbku1d5xLI5GyYv997N4zk74VnpyFnJ51YUUw/KbUb1JwLXvHOG9EV5Gx
         OfzgS0tpgf2sEVeQt0oPukpP6EfR/irecU3ylKxlmdLMxqEipkd7opvQYAMbK53qeH55
         yK6b202UzcEtcnPB46JUtX9ZC7ldh9kWrpFi+jvf7yyIyZHURbqHLvu5ZCHSVyTo1ip1
         x4h7++caIwCmgH2u0/O65GcO2P8kUx8VTuzm2d9HH3zShU7+fMrGMn8u0OTkHPjBCEUY
         iU9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qn9Un3Oq;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id k6si170228qkg.1.2020.09.24.02.25.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:25:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9PeOa116973;
	Thu, 24 Sep 2020 04:25:40 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9PeNh035637
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:25:40 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:25:39 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:25:39 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POYp011000;
	Thu, 24 Sep 2020 04:25:35 -0500
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
Subject: [PATCH v6 02/17] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Thu, 24 Sep 2020 14:55:04 +0530
Message-ID: <20200924092519.17082-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=qn9Un3Oq;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-3-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBK6YRD3QKGQE6P6ASFA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 199DC1F688F
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:05:49 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id m6sf2692564oie.7
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:05:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880748; cv=pass;
        d=google.com; s=arc-20160816;
        b=C2E+f0tldCFbS3D6IE2/Q9ZteMMk8/SoiQHUZTLUZPFb+tijl/sNOE8EWR9hiikqum
         1UwRRY5PkUAnevPA3ZJpcXa/JZKT+fotVbIASLT2t8WWUPkVsqJM6zVoAICGyUmYuBlX
         CAqoN6X37ML/CvBpIaKCz2DG6DfgRAin8lcv9Je8Vba04Lffo/RgOyUZBDVmN5rRYEPg
         QA16DeVhY6erxlYMsj37SkSefCXvKqHt9YehwXYcV8GOGdaDD0gY8imwmOdZoR8OrpTL
         +tsbUqCTrZ/iK+YaxMHgazZCmhAJZBtqnoldHsK59JeGJkGyLCsJ6ANje0iAajHCXCmR
         OKAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=mctakTnifI3CRJr1uzJNnijXh5E9AuiNrVKbYWTHQrE=;
        b=nDHAzDg0Di8ZF+EPxlGa1Cp6KjIuGAiz2EjqPTTrl+FqzhN84MVUT2DOgWYTodvewW
         E1MBI4gtcUrl1pQMlvEr5Um5BQigXevtDp0ljMomgQH6/FkesuDq7mbh7QmQehNwL8/g
         KDMT1QtEg4bycHD/f0l6rdpoqsKih5yDWZbVREoqhSc+CWoHF7bTWjaR0LUAH6GRPibl
         Phhd4SPpDWNSs2ve0BP4o9E68hFuLKGqglU84sWanEtg0O5kbuRppt3xgtcZ64OvpoqT
         bWq0Ao2Oc+T5G6rA+zYasJwqxXOhurG14MlJn2wsqfXqacADbIX+9N2hk2TovOWBHwB4
         vb6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=tfWYWWZi;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mctakTnifI3CRJr1uzJNnijXh5E9AuiNrVKbYWTHQrE=;
        b=ZrhjrU2aTCGsGBgmOf1rao8uIH4YYWeDRs0zQXRKywF/PtdyOsComeCJU1FBFtKuSo
         0aGfE62kRidMt9ctv8pSSoGP9VY1tWC+0Rw92C3ez8x4FrUXvW7pTnszyxlPg05eLqTK
         LPsxuvrctd6n3XaJUU6Rk23H67bEsnOOBVhybj473CjQuVvEX92QBXuQlxBA/F2+S5h5
         8YOcXVXY2Jn5kZMhArzJWkHLQKdzV55UKQgxig8K9bzMItPeEQhI46SHDw6hFDX3NOGG
         LnA8MyelxQwr1zMXU3YbPp3JrilPjbc4pDaS/DTeL+qAQfn5bQmW5W1BOSK0OQQkgPZ3
         xgfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mctakTnifI3CRJr1uzJNnijXh5E9AuiNrVKbYWTHQrE=;
        b=ZK+1ANh9UPmYwt0lZbNpshOPh2bt7reiWWUFdkG6v2/RsfxnRahbPI6MixffJMzMBa
         82igh1EtTpZYkM5HB9taX8iuSz7Zc48M69K7X6848qK6d7yTxDFOD50NAUAtO0t0Cghs
         AcInjZO+yvWlDioZJO6mlmWJfBvTVMrTkJUdPz22rS04FOSUyu8c8y5AaXYKaQt8k4Fz
         RC1UJA7VOCIUbTlKX6zZNmXOnYXX9mC3FfIMdjjVE8DaQgMbKpvaw5PDS0TjqW4aygfe
         7OpJ4JiR0Y/2eETrxrRDp79GrJuOhgjPBp+JKpr9XnJtWtMV6gWoqE0+hdn+P0wU0ItG
         Hdlw==
X-Gm-Message-State: AOAM533i+JLFxfSL1oz1vM+6LPsR8O82ubCVltQSf544uzvYflkVuNjP
	vLMIfwOz7UgfLrg3ZKgU3wQ=
X-Google-Smtp-Source: ABdhPJwg7GVv6IKNYzcjuQfnSJf5xW8YUycDQVsdf9A+iG8BcUtpOr5xFjhbmL/OgXl4unEH96dEhA==
X-Received: by 2002:a05:6830:1e85:: with SMTP id n5mr6324810otr.362.1591880747854;
        Thu, 11 Jun 2020 06:05:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:a74d:: with SMTP id h13ls104684oom.7.gmail; Thu, 11 Jun
 2020 06:05:47 -0700 (PDT)
X-Received: by 2002:a4a:5d86:: with SMTP id w128mr6402241ooa.43.1591880747572;
        Thu, 11 Jun 2020 06:05:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880747; cv=none;
        d=google.com; s=arc-20160816;
        b=fevykAVPTpNlHk0oasXA4pq0lg8E4FydjGt1U82EF3tt5ex1qBPObNhWEcFsWq/xWH
         IL7pqXn5teyNsJve78Asw16zOJaWKx78FiEeP41C8FU7UVU1Kxn5Xs/F5VbludrnJk62
         MXIFSo+TQiRkrrFlKfdpSTzzOfNTos6jjs8ys/XG5s5rSaMMyP/fEWVowASYqCA42ywT
         y+TC6c0LHQYUt2JT43E3AuFUpwdi/AOmj07hf+7zh9Mkbh86WEs7aecGz7914kqKKz/U
         rAby/qsQFoKtrp01L+IDFoky7X/TJcg3kPgOACKJ4X27tekDmlGR4Kh3q7Qo7m2M23FK
         79ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=9k1SMuX0GI5XyU4KZUr/tv34iy8rbbu1GawXFLBPH2k=;
        b=CG3iqPgjf0UjOL0rGv5RQxZNOC7O3rbizSBJHle+HZvlA4xrdsYgxesJDxT7hHW09p
         flRsOpFQ6qbIgCyOuF7bR/KWPSaK8P9j5z50n7VFPznwYQ2abY5HFd6dNdds295z/LdF
         KHh4HcCpSfXGb1xrz0UPMW6h/hvMNC8cHnRYoirX3v3JLB68+OHlBuKC2h/OB51A0/2g
         Mb/CW6Y++EO2CmkWD/u8XkbdL90PBsXxbSrjzKpdAxHAnuoEzZgoRUKDED8og95UUB3J
         w8r11j175jYjA/3BfBhG1IHfuNRIb4d0WnyRA73g5MMKfiaCCH+qXW7KRldcaHoU26aB
         B1dg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=tfWYWWZi;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id f133si83774oib.5.2020.06.11.06.05.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:05:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5eGI107485;
	Thu, 11 Jun 2020 08:05:40 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05BD5eTv121460
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 08:05:40 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:05:39 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:05:39 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZ3082585;
	Thu, 11 Jun 2020 08:05:35 -0500
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
Subject: [PATCH v2 02/14] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Thu, 11 Jun 2020 18:35:13 +0530
Message-ID: <20200611130525.22746-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=tfWYWWZi;       spf=pass
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
index 82ba0dc7f2f5..b9f4d3fe2f6f 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-3-kishon%40ti.com.

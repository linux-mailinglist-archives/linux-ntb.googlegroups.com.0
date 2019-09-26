Return-Path: <linux-ntb+bncBCOOP4VF5IDRBJWDWLWAKGQEXNKS3MQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 1773EBF185
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:52 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id x8sf1222661pgq.14
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497510; cv=pass;
        d=google.com; s=arc-20160816;
        b=m0ZCvqkG5a2O3PqRO5aJ/GpESkukP6zHzIVlSZJzwEuDDoqcrXCt+ttzBvUfoVJwpe
         /7qnAXQXj/6dI5usVFhurtNpJokcaQYO2dzJsfclrdDS80FGrDoFbnLLkU1SfN+2quva
         FzoXC/j7+VokDTASDQ/xhkWSYUTf5WzjYFegQjjjguKvyNN/hzh/VwCU2JJRcOb05SXk
         EjBIaPuayFEPZqK/Mh6ROvH//WaCbkX3VKbwKjojb5PpMcRtkuNBkT+rfzmjini8tsUd
         Sz24lzkW7MuMPsLRZRUJ+lLc6B916FUmSc6FjmK2bfLHzz0m7MUwURXcPx0PZzp2xbXn
         f1MA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=vGUIz9euLn2kYGdds7mvhRL+fkoxwTMhDuM3AzKZJcI=;
        b=H5cr+4mWwYQOWSSZacndk7+aXrrKZN29eA+OJEzPFMvSp/GupaydWv/t2DOXf1MQC1
         Fo79ZKa332HFOC03F3IchjjdFP5OL1OcVRxi0WAB+ZyJAtrtZPhd9NdgCfKL8rW99qNo
         TjE6T9eaXxvBg1dP7GYXVGJJ/q8SbeMgOiWzgIrCRPPQ6kNTy8Ickg9LzckoHo3bi577
         L+xZKOJHg1ZomF5640yPhoxaoYf7tOAMi6rbWUXSUNYTyZKiXZXsIDe17uyDxGmfgMro
         HJfGpB54jk+uwWzi+4AeM3djlFw2RqQnahphnoSN55uZBXBt3IqzaJaAUXKmzhRbecPe
         /hbA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=jpWByUMO;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vGUIz9euLn2kYGdds7mvhRL+fkoxwTMhDuM3AzKZJcI=;
        b=na8Hxt8WwcykLfyqGts0UYKPZMeDqr19zgKRKmOjpld2GhpvdZGGsPdOCSl5mGtH/P
         N9ALqcvMQKHYxLSW3bwC2pAsr3c3lLw2dhQFQhSUytjGba05dQX0tqTtPVbZp5kHtmbU
         h5XUimlYPl2mZJrVPNsv0MtIQ6SbGISvGXIpV+LmDpIUllqTRjfvptbfLYY3QtDxbhpl
         ytXcT32UnKvlXDOvOHI3nGKxd0WBy+j99rhFxNh3tF9fidil95VEBDsbnvdsOhAwZnsf
         Z5yZHyYC1vZRS+KsPzQOmnA4pJnB9DrMVnsfSUc/B8a8+9UBydFyuPyqMD/ctHt8vcFD
         dxYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vGUIz9euLn2kYGdds7mvhRL+fkoxwTMhDuM3AzKZJcI=;
        b=fSPDMU4SH7KAiE25xdPOvBb23tN4vTyT8jhLaS7hdqzdsWAodC/od3ZYCb5mdzxnuH
         labJEPaeUQEVxP9FNM1Ce9uj9Rww5QfxMofhwTRwd0m4iWfgQWphvToUyWdySe5vNRxt
         9iAu0UVWDLXB8uGN0ytML40wyhsPUoF5OiNOdgKgzEWGwuAEShAX3iDtyWgbLPZsCM6G
         r3ibgtXSRZkF3oiK8TxrbfVwhxx7WF6od4HX0kYixbNfSwC8EnfIwUm+mZk2BzMLuNpO
         bnEEVx6FRO8xR9fXi+OgXDUYwQTzL3U4huMowMeG7wmXBBWvuGpozENnl8gGRPAuSDTe
         9GGw==
X-Gm-Message-State: APjAAAW9lMYn7/JwU9iicl6ZG8BiHYIb4XIBCkthOImCmRDQPcFqtDYe
	i8P4JYBul5ZPs46Uli4GxHw=
X-Google-Smtp-Source: APXvYqwiADwlmLTpd/w82LDHnd8aHWkE9SaYFyBVyu+hWAKjPhiR3CQGIe+ImAR6vdokBI2oBWi2yA==
X-Received: by 2002:a63:4603:: with SMTP id t3mr2929140pga.438.1569497510697;
        Thu, 26 Sep 2019 04:31:50 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:a704:: with SMTP id w4ls647873plq.14.gmail; Thu, 26
 Sep 2019 04:31:50 -0700 (PDT)
X-Received: by 2002:a17:90a:fa0d:: with SMTP id cm13mr3156954pjb.70.1569497510419;
        Thu, 26 Sep 2019 04:31:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497510; cv=none;
        d=google.com; s=arc-20160816;
        b=SkM39O+YknRhi0h3Z1+Y2MnN2TYbN1h8uynn1ZOH0YAYGO36K8HL/XGYaDpcPtdwNo
         RWcLhkKFytdAuy1KwF48cX/ddsGvTvwgAGKB3FKShA+UrnyNcMUZfdouem/hhP4gM4hA
         lPhOwnbqPGQ8vpsA0FsMdSiPvuOS8hLS5Ubp7GHF64+wiXsQgMfX4OBQGi4icHV3v0eU
         GytCqEQ31zTLIxk33DKPihXz8Ihy53qagork2tXwJdStg0LijqHDg7SsAtrbd42SF7K8
         GX7iqXlj9hIi0Ln87ixe95u4Wh8Jrk3S1BK7KaNK3Rd/FL5/BYKg2a4MjCzbdZnEuvz7
         mhlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=CVQLahlcO/peyrVMGcW0P4vLEQL8s6mVGnyOrqGBh9U=;
        b=UomcYTLGg2YU/6Uq5uw0bMK9bHBekm4aUWIcf7NBNNQOdqKijzmtaFlg8+xQBaNTvx
         Ql0hfka6dsTPPUSAujaS1AqSEo0RYWD90QvrMXdnzznk9R4RC1Fky5LGvooyN/j/R+Un
         0Etk4JSPLPleK+Z+0+bQTGF00LacPReGX8m12zX5nONp4Iu8MsPTSxeiWoMZUB7dyE7K
         OzdHGYamF9cKv+RKuc4B4Pwq47UZF7FT0fD1M+b9jGs2cWHGJuhomgO3Yht+x4yvilLd
         1Bvrum5M7CEUxhzAmexeQeAB8GPstgpJFP0HhJBQ8IF8EWA54K/s0GGiJcGScs16vZ4e
         MiLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=jpWByUMO;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id h1si539235pju.1.2019.09.26.04.31.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVj3F026099;
	Thu, 26 Sep 2019 06:31:45 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBVj5h092389
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:45 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:37 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:44 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTkA069017;
	Thu, 26 Sep 2019 06:31:41 -0500
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
Subject: [RFC PATCH 17/21] PCI: endpoint: *_free_bar() to return error codes on failure
Date: Thu, 26 Sep 2019 16:59:29 +0530
Message-ID: <20190926112933.8922-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=jpWByUMO;       spf=pass
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

Modify pci_epc_get_next_free_bar() and pci_epc_get_first_free_bar() to
return error values if there are no free BARs available.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 9 ++++-----
 include/linux/pci-epc.h             | 7 +++----
 2 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 33c745546a42..a93c78488bca 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -173,8 +173,7 @@ EXPORT_SYMBOL_GPL(of_pci_epc_get_by_name);
  * Invoke to get the first unreserved BAR that can be used by the endpoint
  * function. For any incorrect value in reserved_bar return '0'.
  */
-unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
-					*epc_features)
+int pci_epc_get_first_free_bar(const struct pci_epc_features *epc_features)
 {
 	return pci_epc_get_next_free_bar(epc_features, BAR_0);
 }
@@ -188,8 +187,8 @@ EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
  * Invoke to get the next unreserved BAR starting from @bar that can be used
  * for endpoint function. For any incorrect value in reserved_bar return '0'.
  */
-unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
-				       *epc_features, enum pci_barno bar)
+int pci_epc_get_next_free_bar(const struct pci_epc_features
+			      *epc_features, enum pci_barno bar)
 {
 	unsigned long free_bar;
 
@@ -209,7 +208,7 @@ unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
 
 	free_bar = find_next_zero_bit(&free_bar, 6, bar);
 	if (free_bar > 5)
-		return 0;
+		return -EINVAL;
 
 	return free_bar;
 }
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 0632a4d4714d..ad8021b0efb7 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -227,10 +227,9 @@ void pci_epc_of_parse_header(struct device_node *node,
 			     struct pci_epf_header *header);
 const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 						    u8 func_no, u8 vfunc_no);
-unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
-					*epc_features);
-unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
-				       *epc_features, enum pci_barno bar);
+int pci_epc_get_first_free_bar(const struct pci_epc_features *epc_features);
+int pci_epc_get_next_free_bar(const struct pci_epc_features
+			      *epc_features, enum pci_barno bar);
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 struct pci_epc *of_pci_epc_get(struct device_node *node, int index);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-18-kishon%40ti.com.

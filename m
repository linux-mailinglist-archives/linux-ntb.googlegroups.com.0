Return-Path: <linux-ntb+bncBCOOP4VF5IDRB4PIZT7QKGQERGHMG6Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id E39B12E9884
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:29:54 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id g1sf28067714ilq.7
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:29:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774193; cv=pass;
        d=google.com; s=arc-20160816;
        b=rsZ59k0+WI+xmdpzokueUIyKUAWx3Y19Iu0qiNzL6x+GI1kYPcr7tG3qBQJCXd5Ey+
         Eh+gbsmZZr2AQ8MVd2evmetmZw+owSAgkQlBvCH7GcuHFBUgoi3xxr3jGFopD/3atKeG
         7a3HgJ3yZbnR3CGEFjY1NE5W2dO/LssOkofqHDcfZJl8AHT97+fsA8gg8vcZbfFNzxTK
         n1hJznjPrJ41rLkqgbQDR4xbGHx+SJ826RaRMesL27tNIOXe3+r8EgoIFYz+FGJeZnks
         CeGdfi1+5t5I+XMgFWHa1RvIer6fGcVybJFt7bjcZULsty1NIlAweWX9ubo05ZUFnvMU
         1ycg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=AaI/28q6ATHc33jYnlKlQ91pJ/IqZEsh3yyqgj4byvs=;
        b=gFx74+abpMt/GSQnBRNlczIX04UIWovuFEyXV+jL7qaI05kiDo/VudU7Xeo2/WIroR
         7YWG4NLtc0jMjwenL9leVFRDgLwaBK+LFcIZwRrEeHCesrmUwZiPhEu2ze6dl0/EOuON
         hNVbptgumYYCxT6hDvLgDzUlkCy6krtc0mvy8p9k8CMMZUePI+CKC1hvNr7dZyx3rRoS
         CvDkBoIrzsWobflIkqwD9Ro2VqA8JdP3rf039SLdb4tIHT11otldjI8eT8iuYClDmh94
         5FiFp3j0cdpMEG+NOTBemI+fG25MIIUtpjPjn+YK4QRPoWD36KrUv9gS73LQR1mAkCNG
         PHuw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=B11uZVI1;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AaI/28q6ATHc33jYnlKlQ91pJ/IqZEsh3yyqgj4byvs=;
        b=PjdfMkEbptXFVXS3VZSVPsGWyn8tU6fdfsWzIK326bmSAVYovX3pMe+aw1pbRLR+az
         5PrqFsD6uQ6K0mrZJ04TegUitg+ra7V916VCpyRjZDORrQdVmiXMyCJ9AosYNVk+kl1a
         GCkJrNi9S4qYofJcITTeHBCLj/hNrZLSU+RC71/tUJieZkZlbO9/551+Tz0s4pq4dG5M
         hXmrzwt04U0r9hBIZcfRn+03Ru2qxdecabjrKC2ZSVnOkbz/jgqp1werl0GizCzROYqM
         D3GT2XcY5hfNgmE+ehnOGHgyj3DT9MeaOQxiufPKN2avPULFQ5kyMVDOZ2txUT5b3dBd
         nWYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AaI/28q6ATHc33jYnlKlQ91pJ/IqZEsh3yyqgj4byvs=;
        b=ualdWpoz6gg/sXK6fMU0gDhLZ4WO1YFB94PJLOKV5sqmlG5ajbJ1iqk7iHKFhNxKpg
         HK9c6m3aKtmzvPogRMp5j9czyVd9SVY9Ry5Lg9WVhhPv6ep4Q0NgtBNlDL+IO15x0xMb
         8oLzys8Kmu6pKHNDsnb1LdtXnTtaj7ahRsR8u6J/xejbcIIqWC6krdEfklNTzQWXzYGH
         ndio/9olcs3gI14cx09VoWpxo5SSvYNWCPLPDI7ll9kVouRAJX8BGl/b4fQfpjVnT/3B
         XEJ32613TUHdrzGrTRpDBrysKCjGKEatpz+WqgPEgd75wcdaXKIqgYGOpuWw+j0PusCW
         yzmQ==
X-Gm-Message-State: AOAM533i++I4jGuHSjCseYjH/rNPNPx0wPu/zFX2qqhVxBm4uqvRm5VP
	dmFa8ZjGGe4HsuVi1duNSIE=
X-Google-Smtp-Source: ABdhPJwDhX31ysF5DB/BioD1+bcrlliazzi0TaZFWKWz9qEbGhgAIt64rF+5l4Wc+KGlY0b+aZPh0g==
X-Received: by 2002:a92:dccb:: with SMTP id b11mr72845055ilr.36.1609774193623;
        Mon, 04 Jan 2021 07:29:53 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:921:: with SMTP id o1ls19722903ilt.2.gmail; Mon, 04
 Jan 2021 07:29:53 -0800 (PST)
X-Received: by 2002:a92:c942:: with SMTP id i2mr70441381ilq.227.1609774193151;
        Mon, 04 Jan 2021 07:29:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774193; cv=none;
        d=google.com; s=arc-20160816;
        b=qfI4bY54f8qDPpqdOGiGXlqu8O6akOkzu7qkqZPHVefWeAtDuSMO0EGJf1/Cg9+jGu
         cGIBGOfvWftxQQnwTBW8sVjDelmN1D5slD2NAfurM/et7LCWBqEV9tGgGCGgdVPiY4NW
         v6eSOaf+cV5zKgK2wEudPjkGTPSAKDz+Wnj3oOfpVeJ123WsA9bRD1nO0McH9hfeoGQI
         e6TtvQrwCDgIAbRSoasomcNXjUvMLSnloAzU6xh8DzTjovLc7VxJHhyNwI2fjg99Sl+2
         3LqpDZumyRrJBr4zTCHVOvbOvs9jHhFnduJ3zj2lmZzeLLcjVpq4fqbjvZZ5fbrs91Tf
         xl4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3vpCkC7uFlZ+YibeWVFAIXOSzm64dBgudr4jQOKgpzg=;
        b=c6M6gAgz1WhITLzGSXMh5XeMVxO8R+EkFPbkkBE3GLPRbof10LHzhJ3b/t9doKnt8D
         LFbCzq47Pt7osZJ2NNY+3ZkK+8a0RrN/Fn23tNkoEaEuGY4JqvAzPheRvfChR9AYaSJc
         wHDDSJhRprjPLWDuTHNvGluBnkREcn98TTjsOJtyuQPTNBO7gmli/TeCAhLpyMxSpKL6
         XTPvxSBcmM29t6iCo3jHTT4bePOh5xu7ZyAmf83kpIcDObcvm0uXwigXUeJ2Peh1IMKu
         EcQCiPRv4rSa6hT4Gnd63wsaX96Jvd3AWm3ofC2OLhnjVwxObYG4Sw5maybr4WpOoaEA
         MZlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=B11uZVI1;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id q4si4060634iog.3.2021.01.04.07.29.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:29:53 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FTiiH029132;
	Mon, 4 Jan 2021 09:29:44 -0600
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FTi4w078583
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:29:44 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:29:44 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:29:44 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZA093710;
	Mon, 4 Jan 2021 09:29:39 -0600
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
Subject: [PATCH v9 04/17] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Mon, 4 Jan 2021 20:58:56 +0530
Message-ID: <20210104152909.22038-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=B11uZVI1;       spf=pass
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

Modify pci_epc_get_next_free_bar() and pci_epc_get_first_free_bar() to
return error values if there are no free BARs available.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/functions/pci-epf-test.c |  2 ++
 drivers/pci/endpoint/pci-epc-core.c           | 12 ++++++------
 include/linux/pci-epc.h                       |  8 ++++----
 include/linux/pci-epf.h                       |  1 +
 4 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index e4e51d884553..7a1f3abfde48 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -834,6 +834,8 @@ static int pci_epf_test_bind(struct pci_epf *epf)
 		linkup_notifier = epc_features->linkup_notifier;
 		core_init_notifier = epc_features->core_init_notifier;
 		test_reg_bar = pci_epc_get_first_free_bar(epc_features);
+		if (test_reg_bar < 0)
+			return -EINVAL;
 		pci_epf_configure_bar(epf, epc_features);
 	}
 
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 1afe5d9afb0d..ea7e7465ce7a 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -90,8 +90,8 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
  * Invoke to get the first unreserved BAR that can be used by the endpoint
  * function. For any incorrect value in reserved_bar return '0'.
  */
-unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
-					*epc_features)
+enum pci_barno
+pci_epc_get_first_free_bar(const struct pci_epc_features *epc_features)
 {
 	return pci_epc_get_next_free_bar(epc_features, BAR_0);
 }
@@ -105,13 +105,13 @@ EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
  * Invoke to get the next unreserved BAR starting from @bar that can be used
  * for endpoint function. For any incorrect value in reserved_bar return '0'.
  */
-unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
-				       *epc_features, enum pci_barno bar)
+enum pci_barno pci_epc_get_next_free_bar(const struct pci_epc_features
+					 *epc_features, enum pci_barno bar)
 {
 	unsigned long free_bar;
 
 	if (!epc_features)
-		return 0;
+		return BAR_0;
 
 	/* If 'bar - 1' is a 64-bit BAR, move to the next BAR */
 	if ((epc_features->bar_fixed_64bit << 1) & 1 << bar)
@@ -126,7 +126,7 @@ unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
 
 	free_bar = find_next_zero_bit(&free_bar, 6, bar);
 	if (free_bar > 5)
-		return 0;
+		return NO_BAR;
 
 	return free_bar;
 }
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index cfe9b427e6b7..88d311bad984 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -201,10 +201,10 @@ int pci_epc_start(struct pci_epc *epc);
 void pci_epc_stop(struct pci_epc *epc);
 const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 						    u8 func_no);
-unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
-					*epc_features);
-unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
-				       *epc_features, enum pci_barno bar);
+enum pci_barno
+pci_epc_get_first_free_bar(const struct pci_epc_features *epc_features);
+enum pci_barno pci_epc_get_next_free_bar(const struct pci_epc_features
+					 *epc_features, enum pci_barno bar);
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 6644ff3b0702..fa3aca43eb19 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -21,6 +21,7 @@ enum pci_notify_event {
 };
 
 enum pci_barno {
+	NO_BAR = -1,
 	BAR_0,
 	BAR_1,
 	BAR_2,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-5-kishon%40ti.com.

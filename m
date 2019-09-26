Return-Path: <linux-ntb+bncBCOOP4VF5IDRBBGDWLWAKGQERA3OMDI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 46341BF16B
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:18 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id b2sf1027219otl.23
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497476; cv=pass;
        d=google.com; s=arc-20160816;
        b=FoFwkrrEJLIb69XG7jA3Jgr8gDZZGo2kKqBf4wtGrheAJm9kui3mW7ye0gKssmGugR
         12ybbkTGV0y0VbzGcHvPkg5CpKa71LocANnpGIueWGdL3PUCtqb65QjkfwfTJj96mTG0
         gLeXr2m3Zc1+ikLHy76/4mPGLsyzJVeiJCshFRJPZJ2ZcAOUs9T0aol4mfv/Tch/w4S4
         mhIJkK0TSdK1eJJ5sDRdzohLbzBpc6ijdwpGG4odFu333dHrvj8/Yd3Ay05k8rJs1mOi
         E1fkTefRdUN1dFzP6V04PJApbM0qs2ysH1zAU+oUV1ZPRsjQbeXJoAK2ZhhQnI8Au5JP
         XjfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=QNRIE9fazlOf90Hf7vFunS6HRHk5aGek6uTr8T4H9Dc=;
        b=jVthqdbwLayO9znZyIdTluqksQAC9m5vOgxqPc8kzBl+/+qL6wtrw4ZHUYIHSn3aRP
         aIdOcSZsvuQQ5K5SSbR0Md1/exJuLLIaR5yqF4WvqMQwORtCodkEr07CP/zump0tc7sR
         gImZdhby1Wo6AoR/4K1nJGcXcmfhzaRK8Xsxdov/+3fhjyDtJcBqE/+PfZfz2B0atTDr
         U7BBHHgTe8AkYCJ0JnvX4lGG/uNN/3Fi0HjtfdL2/Bvr+6aUWeCr03gIFohbLUGZ14Ve
         eVmbpuv4u9fOLE/tDKjobwlzbrH4BXJGKNpdafQ9VWf951IpSea3JhbQP+2lVK204uUQ
         Vhhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=RQUZDPwN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QNRIE9fazlOf90Hf7vFunS6HRHk5aGek6uTr8T4H9Dc=;
        b=XzkdnZYYbmgCMyYfna6HCnBMiGG466zeF5d1dXRwdPMXoWXHWe+UCZ0+qgEiUvO4zg
         kPyW2WkLQJQlNMOgkc2GU0RtgOe7lIOOgYkWCWi/gSiEnJI7rehgqHfqGN5n+77OZW9U
         me2gKincIDtxEjHwzgxrJrxKk/ddFSDwJlaVMV2T8e84FgC3OxPVCG4v2cDKszBEz1gj
         fBdasyMEJDAU2NoTuBK+0U463ghfkumN2b6c1k4a6r9QAv/XSzECoytuV2X+smvtHu6Z
         wOFWfy5Xo9Up2WziI/jcDs30HFs8qyhtae/7twHzrQtTfP/ZEMohF7t9Vwa8t0GJtpBx
         GgMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QNRIE9fazlOf90Hf7vFunS6HRHk5aGek6uTr8T4H9Dc=;
        b=j8fc/Y3RxW+WBuNEhryks760zR0ZOwvwZBTwAOoTg/DR2ZrCmf/ItX0L3SES/nu+wC
         RKAyw5MSiXOpSU0t4QFV73eH6Iet8FHTG62v37i11oWmHgdN15LVzCIqgsV5ElhUX04l
         q3B3Xl67aoQqKnpPLslluhj/bPyOhracI1cAyhL2pDhiHOUsH5ElIEQijI8/8EFk9wtj
         a67OgvFz+KhV4k9eHXNROu4YMWmW+ZbUMeX/+g+wCbbEs5rLUhWrdTn0kGvUhFNHhAHb
         e4sys8XVLErJUzpZc3RorCK6j0hc8MaDRscnpXLHrHd2K6HlGHQjkPprRg0jtua63FzN
         PmFw==
X-Gm-Message-State: APjAAAWChIk9TEunbGQst3tia10fwbnbFM50lJUVqDnV4UF9+RHf2xsr
	VF/brDghbJo6iDibAn8Gmmg=
X-Google-Smtp-Source: APXvYqzZ453YT0BrvojAPFaz0ekDVGTBfWi8iWEX/zawwaeEu8l9kXINam2jT8kGu8QGg8kONR6QfA==
X-Received: by 2002:aca:c591:: with SMTP id v139mr2136344oif.20.1569497476707;
        Thu, 26 Sep 2019 04:31:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:2101:: with SMTP id 1ls411095oiz.9.gmail; Thu, 26 Sep
 2019 04:31:16 -0700 (PDT)
X-Received: by 2002:aca:5f0a:: with SMTP id t10mr2295932oib.120.1569497476387;
        Thu, 26 Sep 2019 04:31:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497476; cv=none;
        d=google.com; s=arc-20160816;
        b=DAJHOQm0vkG2pAPx/KC4eT91CwTxtezXyl8yr9nXcQ3FS57t3jt/y/uIV2gS3TLWqE
         40WcI68XDfVUFq+dMA/0av3597YkGp40ImKtGGEqeLyvqFqk8jHIM8q9VR3DR7yXmhyU
         f79SFJYJbeSNzA+CPsh6Kkg/E9QxSUapO7glyqr3nMyt3WQzoiKtAPpULEzXy8UCe9sZ
         ypLHWKyoAaP+Aluf7xRj2oq4654PG9BlWe0+Y5/vbzMEmi6BRviUIe/6dclL+LO7ySO3
         AGAYgaAk5vXLQX7oGIgfxQsHW6d7Am/VT3aXlUMxxAzN70e+XBcCnsYs0iEoivSQddua
         Gf7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WN6zQz22SKDDpOt20zGyRCD7tAdq3OZmA5JGj+CItiA=;
        b=A026SusjLiKgC3FWt5DuutO/XE6Iybb1b4lURCUsmSPF1tXoJL9PCyNa9jZCn8j33I
         ssL0/sdaQHZwOTtVRD8iCKrBRspCE4g55K9CGbsciEjUFcAJoynTQaDAKNdX7XmHDhzJ
         1q9lZAHqN+D9E7Y6AzAaBJmTFEKOYS/xKyKNZkHtNilnkhqk9zmOz+OejTzsaL8o8poL
         76MXgOEP/u2C/XnrT/7aqTEoWiWCfuAJz5QicVPlzH+7JvuiczG1QGQNrc5uNtlmrTKD
         8Xg2pNYX2wHmYF9qbEdmQ8B7o/aIk2IyjJ1KVNUZrDSgYnD49ttW5gDkpA5tV3HcPLjN
         j9Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=RQUZDPwN;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id w8si170117otl.2.2019.09.26.04.31.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVC81042477;
	Thu, 26 Sep 2019 06:31:12 -0500
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBVC84050400
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:12 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:11 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:04 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTk2069017;
	Thu, 26 Sep 2019 06:31:07 -0500
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
Subject: [RFC PATCH 09/21] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Thu, 26 Sep 2019 16:59:21 +0530
Message-ID: <20190926112933.8922-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=RQUZDPwN;       spf=pass
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

Add an API to get the next unreserved BAR starting from a given BAR
number that can be used by the endpoint function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 26 ++++++++++++++++++++++----
 include/linux/pci-epc.h             |  2 ++
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 7eae7dcaebf9..49bdff217777 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -147,17 +147,36 @@ EXPORT_SYMBOL_GPL(of_pci_epc_get_by_name);
  * pci_epc_get_first_free_bar() - helper to get first unreserved BAR
  * @epc_features: pci_epc_features structure that holds the reserved bar bitmap
  *
- * Invoke to get the first unreserved BAR that can be used for endpoint
+ * Invoke to get the first unreserved BAR that can be used by the endpoint
  * function. For any incorrect value in reserved_bar return '0'.
  */
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features)
+{
+	return pci_epc_get_next_free_bar(epc_features, BAR_0);
+}
+EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
+
+/**
+ * pci_epc_get_next_free_bar() - helper to get unreserved BAR starting from @bar
+ * @epc_features: pci_epc_features structure that holds the reserved bar bitmap
+ * @bar: the starting BAR number from where unreserved BAR should be searched
+ *
+ * Invoke to get the next unreserved BAR starting from @bar that can be used
+ * for endpoint function. For any incorrect value in reserved_bar return '0'.
+ */
+unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
+				       *epc_features, enum pci_barno bar)
 {
 	unsigned long free_bar;
 
 	if (!epc_features)
 		return 0;
 
+	/* If 'bar - 1' is a 64-bit BAR, move to the next BAR */
+	if ((epc_features->bar_fixed_64bit << 1) & 1 << bar)
+		bar++;
+
 	/* Find if the reserved BAR is also a 64-bit BAR */
 	free_bar = epc_features->reserved_bar & epc_features->bar_fixed_64bit;
 
@@ -165,14 +184,13 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 	free_bar <<= 1;
 	free_bar |= epc_features->reserved_bar;
 
-	/* Now find the free BAR */
-	free_bar = ffz(free_bar);
+	free_bar = find_next_zero_bit(&free_bar, 6, bar);
 	if (free_bar > 5)
 		return 0;
 
 	return free_bar;
 }
-EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
+EXPORT_SYMBOL_GPL(pci_epc_get_next_free_bar);
 
 /**
  * pci_epc_get_features() - get the features supported by EPC
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index ef6531af6ed2..993b1a55a239 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -200,6 +200,8 @@ const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 						    u8 func_no, u8 vfunc_no);
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features);
+unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
+				       *epc_features, enum pci_barno bar);
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 struct pci_epc *of_pci_epc_get(struct device_node *node, int index);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-10-kishon%40ti.com.

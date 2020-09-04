Return-Path: <linux-ntb+bncBCOOP4VF5IDRBAPEY75AKGQEB2KCEJQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 4775A25D2BA
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:51:30 +0200 (CEST)
Received: by mail-oo1-xc40.google.com with SMTP id t187sf2514583oot.19
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:51:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205889; cv=pass;
        d=google.com; s=arc-20160816;
        b=0QDWlkT8pjy/xMwRQuSLCQrdr2l4iwBNoeLik/jiHzxWwKqZYnpV5c59IZ/vB/1hKp
         wxsB0kO0nhA5alV6jhlEjtH/BE7PBtbM5VzEb1qs1DGAeU0LUi1uj/9TKigHfICvIXvj
         BYrpRpWaJxGGDUK3SVfycWm8vytlcBV9yHVt6H79OL8vosBDQAOBZb7G9Kxlh40O4Bkt
         axxuj2W5AghNKDEDa+K2P2dfi/v+Ucy37iZQ6nNZJWEiTVBWMLVr3iWHbbEJcO5BaOwL
         3mAHRQY0fQULiUYprqgBu9NQvokZumXixP8ZoKh7qfnRkir3/yQiTGUekNCTENcew3os
         dg4A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dq8j3IOKue33imCNzKURRcD7YCvVQb/F8WIIR82wyZ0=;
        b=Z2585NXJhjI4lflM3GAlP6fQlProQW0odRQ0m/dZcnXrvBIPdxH17wvD3UQRkWCexm
         BlLVIQjcwbAhhMMtzISd/RwV3TDb2dH9dLao7sz+c9w4If6kuaX8OK/TeDxXYnoeaiyZ
         funhJJwprWnBEXnYamqKnZMnaiH0H/zVK+DPGjIwIKo8+pPEwEg/qbC7USlrSC5fBl+Q
         7MDS5jhV6dSeOWTufr7OMlVbLKaMVPCxo4PPJ2xx/QW0TnXjjDxxJt7TeIaPOO2/5Vtj
         GofGA3Nb8kVr7LIUQEaI7wTix/Q0JL9RGTkGh4+lHnkvDKmi3t3Pc8eH8W5L18RB78cc
         9QzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qziJuk+4;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dq8j3IOKue33imCNzKURRcD7YCvVQb/F8WIIR82wyZ0=;
        b=goadrKKvnfTMSo/mPg1A9Y4KWY69hHytjbzYEFJKJyFL+gNxwEHVijnb+A/ROwCmVV
         XqTIxpYmCNDmd4wrFirKYepqGFiYoVE/F1QkjklI1rTkSGnX280CiKN9fUNNImXI+1ZD
         LGBioB+mBsiNFZFOsl2vvzoYEHo3jbKuLeKH8hbxMK9ZNnkD2aMjiZ26xBSnp5aSHcvT
         7zb7DKv7lJ0HSqKnuRT31K6KSF19qtUnCT8J0dF1S8m5sQSJTX857kcEpos1WOO/qMjh
         IB4JpADRVLy8R2d6K6RaryQW+/IHKPY4CngSn6KpLPNpYuO1hkUarLVqXqpG9hnQW3ki
         yhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dq8j3IOKue33imCNzKURRcD7YCvVQb/F8WIIR82wyZ0=;
        b=oKZ/mLeEO1PEoMqMfi4AK5OF4A08bscFeH+rCFb/WC+HJUOJXvL4LpP8WpYnEKIx70
         7oH2WEhxdeCYgPGNRbKpDlmT/xguZ64DSNLOXCXEm294OVveLPAK2sQj862psQ9WDoO9
         F/R3BDl89BquQQGYo9MjgvfApUy5ktKNWAIuoWIKa2oBaGHRDsqJP8XQukXD+/NTdVV+
         yd6RhTxl0wn1L20QaQMgH0OHe7dbFKiMWO1DnYjfoRTFwTBws4wy08A6Ih+S05tObFXq
         kSKYUjqPQ4XyxAZaeXlKXEIoTCZWkoeNc0uA9EvNFjJrX5i5jxlAk6PXF3SThBUfuEQd
         2P1A==
X-Gm-Message-State: AOAM533w73VQwq44ONpl1m9/HH2ggyypyDBWBjX0tZi+vVAk/uKBmNyZ
	BazYtXTz4720Nc7/hpCDiTo=
X-Google-Smtp-Source: ABdhPJzgGG7Cj1GaZbV2DlgAIl2gonOfm3gIdVXUCFbrGv+FDLDa/VSmb9y8Cntc8hFo5KVI2DvG+g==
X-Received: by 2002:a4a:da4e:: with SMTP id f14mr4926571oou.40.1599205889155;
        Fri, 04 Sep 2020 00:51:29 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:b541:: with SMTP id e62ls1865610oif.2.gmail; Fri, 04 Sep
 2020 00:51:28 -0700 (PDT)
X-Received: by 2002:a05:6808:b37:: with SMTP id t23mr4760978oij.174.1599205888900;
        Fri, 04 Sep 2020 00:51:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205888; cv=none;
        d=google.com; s=arc-20160816;
        b=YfTF6un82vYvYYrv+HX0b0Javw9uvfLA1dB0PFfiLQqGbj6snhD84iis0cSH68WVMM
         y1OrSs2WwigFhkNQuIxG5Mql3+eyJU97F3lSnndHV7WwMon0r2WtGbxYIXR268ogLFjX
         P5Ff7ShuXjqKN5NsA16GlTK99WzTmsvLf7j5OPoxYXEM0dUncwt/k5wwHPvPrDCXqGxA
         L5ZV2b+12Z70sfzM2i7uS/9d89zZ62cyJQSWMfyxeeczliOkv7WkqefI1H7sMy/4lEMP
         isWObTYk7GPUhGTjFi2S/493AQInCfFtu8p9ptdY4cqzVTQiZR4IqGywnhj5kXLdqjNG
         +2Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3vpCkC7uFlZ+YibeWVFAIXOSzm64dBgudr4jQOKgpzg=;
        b=DCyLhkde/zeOEgFxHVDvWrThrMURt3eCQEPgj5uQRxtJ90ENA2xQ5CYZgUq2aC2/t5
         gxp4IKSuv0O58MtrPZp8c9PJ8BfqM6y9cr+nWklgt4qAMN/PaF6Tt9RC4dI71vy6AUYi
         QdeyjrGTeAH8PCSHPGBAFH1dF8aW53KUvc6h8nBbjfgW7nLGtavqCpI5YiY8c4QJ/m6L
         He1FnEHUAqwi1fKZK51b1ApC2FfD+m/VIsCH2S84nIvBB7xTsIn6wZgz4e6IfzIhhqAf
         ucwFZGutSuyRgZY7chZ2v1rIAUqN6X2rwQz2zC+qMrARtAFskYvmaAxMC4nYuDnSi/5w
         d9NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qziJuk+4;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id i15si230528oig.1.2020.09.04.00.51.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:51:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847pLex017881;
	Fri, 4 Sep 2020 02:51:21 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847pLok025594
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:51:21 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:51:21 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:51:21 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osN5058796;
	Fri, 4 Sep 2020 02:51:16 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>, Rob
 Herring <robh@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Tom Joseph <tjoseph@cadence.com>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, Kishon Vijay
 Abraham I <kishon@ti.com>
Subject: [PATCH v3 04/17] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Fri, 4 Sep 2020 13:20:39 +0530
Message-ID: <20200904075052.8911-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=qziJuk+4;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-5-kishon%40ti.com.

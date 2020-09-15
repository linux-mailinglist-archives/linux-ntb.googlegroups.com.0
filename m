Return-Path: <linux-ntb+bncBCOOP4VF5IDRB7ECQH5QKGQELE43K2A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x640.google.com (mail-pl1-x640.google.com [IPv6:2607:f8b0:4864:20::640])
	by mail.lfdr.de (Postfix) with ESMTPS id A4BC3269CFF
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:22:21 +0200 (CEST)
Received: by mail-pl1-x640.google.com with SMTP id j5sf635306plk.22
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:22:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143740; cv=pass;
        d=google.com; s=arc-20160816;
        b=am6VQgc3ubPOopuxA/69MmSn3e6gtCBmIS5fynbOo2oiAwHmWB9jvYwd5bkO//9bmx
         DQrVScEeBBVua4LFw/tEOLAcPAPItGcWjbYH2bOZsut7+86rEJRmGEjSW10RW7kR8Xcu
         AWtX55rJPEVlzhbnf/gTLpta2rqJkLIej+Td/MERLhDfsSWhWTwRxyH3pENVgpS/x5yv
         jzf3H0AqSqyOhpKv+Ec2iItd6/q6X5tMr7ohZPNdS4Gs6uGCApL5yOCxn+I350/xg+l5
         CUBJCbFR1zFoTKMutOsEbJFA7XixWmTQjyxXBibwuKxKLNyxXJvrctw7rvlQuAo4B0qC
         VhlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=v9pf0uBXl8ofc2qQ2cf9N4/X7y2A7YqAaejMP8FyD4c=;
        b=LVuprZia+yCtOaJLbuE55Qf5Z+k6aDRZWNIhgv6/Ix2ADBJpGoeeCKYDKbejvm9SZV
         VNga0rldF1IMYfJmwyvPPTXbPLyKrA6SO+2UPyKBo8VKy18r99PttIaBCUwlDoAk6nrY
         rtGvibdi1BLFxLZZ1llE4Mj0T9JWZW3IFWngHf2WLAC64P8315QkoRbijlN3Oq4ncRx9
         tCvVTLuwzb8IPn+3nl0kTgbbLEfYyCAg9biIWi4vFRI46VRtRfgMSlHzR9D/wsU5JJQ6
         MaoOuaT4MlcjYjWFXbqehzG5DyaPjej03f6ykdTtNxqVdL7n7YA/BmwtTMKaqQSbYrU6
         XUKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=cgD0qC2W;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=v9pf0uBXl8ofc2qQ2cf9N4/X7y2A7YqAaejMP8FyD4c=;
        b=eGukiOcuDHNkUPC/PxcGmtRWkRD8CIb5e6HgIpB0GVI3irMfmdrigfBXcJRDZH+APN
         i2JyPlCiEr90Y18cKeGe2A/vmHcN1VDPjB7TBK/r1w9o2fxjyT0ftCPAdToHj5TvyUTC
         VSHjEWvcOVUaRUAS5BPM8rGafWk/fUH5ypB+QbyGtRwNhr996Ciat9zmhj0STod1JJhF
         xQ0C9TYH/mhCfAM//PbF+RIJ9CPyqT6r/2d02AsRmqp/tDADvSou0g0BIKFCs+OpaDd3
         qNVTc8H8/KNh3jz7b5wLpF4/SIz5L3+/EWuLwzKM3qmU6/TbF6nTugPvni38rpUUdQrR
         ZWeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=v9pf0uBXl8ofc2qQ2cf9N4/X7y2A7YqAaejMP8FyD4c=;
        b=HPSwcYDGKX9hC9ymGlGd8HuB84MI3pj7aLIFhD6hsfxcVV8BJsB11cr0qyG5LWaZUX
         6Mjlh2X4TT1tMounrNqQloU244Tx4YUXcyLXtpbyb8FWtfQMbSJUrC4o2Pb8ZI7IMyit
         lz+fTsmrPSi19LA2m36YYUxlnctEjsfqcZ9EsNTMLpmOvzAf5wPE9xr5pPTeqmzi+Ihf
         ACh6wvlN1BNprm41veGDoDp+sirJ3M6b0QXyvTqwNdaAt+9OvUscUsMPVcfJDUdak2JH
         /AEWzpbL4fhwLDOXWpMGm69gZrw2bHBt9gk/WJpYtneLt/j5euOru89PKnRCReWfhD/+
         eukw==
X-Gm-Message-State: AOAM530eRMdkVb/njz2qYjR/Avd2VKVqXgnbZ3jXbAVpbAYmXqshs1Lm
	krXftL1HWkkdjfg1SXJPOHg=
X-Google-Smtp-Source: ABdhPJx991CReJdovMoRrR+IH6ihweUTFDi1pf44K/kB9DRSx/JdxTXeOIsbSERYgl+yqGht+Y4q2A==
X-Received: by 2002:a17:90a:4043:: with SMTP id k3mr2433738pjg.141.1600143740179;
        Mon, 14 Sep 2020 21:22:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:8d89:: with SMTP id v9ls5966519plo.4.gmail; Mon, 14
 Sep 2020 21:22:19 -0700 (PDT)
X-Received: by 2002:a17:90b:707:: with SMTP id s7mr2452908pjz.25.1600143739642;
        Mon, 14 Sep 2020 21:22:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143739; cv=none;
        d=google.com; s=arc-20160816;
        b=UwAZYLc5L5zyAcrbM9CgCN10akmE8qORfp8ezM7V3VTcFX0XsAsSui2p6+tSDffr4E
         AGdSATg9unJM/kI0DAZxPDtflt4BKovOKHAOtEIknmHnWIU54n9ZtnnAGBVHwMdDx1F3
         93jH9Pi/Jx6E4/T5/RbeNbCWsqy1UMySIsP7zP8gJSLzOKK7wzzACu+jKEf/F1LxKdzy
         nP5Y6a4481jfcqv8c+vkksFkZAVLeYF5CyDuiZxd63TLxbtk1YMyeHk3mmFUHjP0nr8/
         dJgV2zoB//B3Jw+OSbrAsBiMVILhwCf7EbdHz8v/YSnf6Ze0UhMaqwKzGHlp6Oghg2aY
         1uyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3vpCkC7uFlZ+YibeWVFAIXOSzm64dBgudr4jQOKgpzg=;
        b=GjxyXGQW9IHRQYcYBZUdRx5ZJhjzlqUtykOvO0MFqPv/a0f4QjZdtfQ5x6sgdhZ7uh
         7npWSGpeHAKHwPBn9pvz9ug5y4+9z/lkf3OOozySikmFBcmpZM269JSXoRSS3z+dzZb0
         ClcT/2SJ/3aduWNC/BpE/XAWsHZYH4ekOOUNhUX4R/UU9asiMoPRqXxD1SPxgTazyjy9
         pG0ut6sa5Ig9Ak4IoeIT5nJsW7+7uNVeiN3d0d0nstEYUA4TAKmE7bMNOt5PhCItPZ7z
         JAWBUevMV5irqSbPDLIlhhVPn3SdEmvoqyR4EDIee7giIyGfnaNY5E+WrndhAY2Kfp6E
         jXOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=cgD0qC2W;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id g11si791919plp.3.2020.09.14.21.22.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:22:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4M5EC017327;
	Mon, 14 Sep 2020 23:22:05 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4M4xk034994
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:22:05 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:22:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:22:04 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMk028615;
	Mon, 14 Sep 2020 23:22:00 -0500
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
Subject: [PATCH v4 04/17] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Tue, 15 Sep 2020 09:50:57 +0530
Message-ID: <20200915042110.3015-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=cgD0qC2W;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-5-kishon%40ti.com.

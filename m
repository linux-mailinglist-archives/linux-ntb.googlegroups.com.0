Return-Path: <linux-ntb+bncBCOOP4VF5IDRBYOL2L5QKGQE637QIXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EFFC27ED21
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:36:02 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id q16sf1269665pfj.7
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:36:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480161; cv=pass;
        d=google.com; s=arc-20160816;
        b=SmqqE+aKb1w3HrUNvEBeHSgQjvw9WRTZp5m/UiKSCg20QvbHkLHCvlsF657ymaNRdQ
         FmLRC+H2LrF6cHUfc4wAP+UsGwYpHmylwJtkWCvaN+k+DjFPDJlXEtWBDi/fJoQSFwUy
         KklLd1PpIh/NDZLEOhL9i+nCRGnOoz6ZdmAIOb2kuEwKs0HqzTbQ66PKM6ekqIFWyOJL
         sZRQP44Wmqw+qqS6FdNlU1/V7nviCBiLXQIUseRU5NfZuQYdD7tbpvrwgO22UcNBFxCm
         xacbDti6T4FOeZtkiDlkAtxsPDsoPCe1E1fHtNV8N5d+zyFebG3drLAW8Xeku9YZMiuC
         NfVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=peCSE/TNfbhc5J98pGmGvqRiniJgvVNFmz0k4MMg508=;
        b=zvbLbRh9PEckCFwtkAE3OpBoKPbkTyi3wf//zVSQLNJTLUHDiqQGzuNMfI0aDLd76q
         GhWPFxtZQKNZteqGOQv9J2js4SGM0GLTOUYL7sk70AjmXdm8mCq5dxzrcWP8B32ASXMG
         ak5k/sMDCUXqY7TEWi6tAgEnZ/ySWslyByaXXPn5vMRrtky7FfOCQY5wwDI1RgQ+/Jks
         /bjRxheNDTjmpC5HytS+0cp840dKCaXI14MxgcZ6jA5qpFVHRDAxklKtDbKHPc2jkVnl
         W9NuPgmbA0YMZ9f2yj1CUJlylFcgDtdmCnA52I3i8nMEXm2CRGOOqP4qwu7ZfQ6+bC9E
         M52A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="LHuUsW/F";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=peCSE/TNfbhc5J98pGmGvqRiniJgvVNFmz0k4MMg508=;
        b=ADRIGKsUX9XMqGreZMj2rjwG61qKN5ubXGY5OuLhgAzX5KfdAxXU4fGhK4sMWQTD4V
         urpSglddHW4vwazFYm+BmDOhagcG5WznlcVmGnSrECLMuzZV9vVVm1wBi2UZQ8mbrH6K
         qJv/ZEJBfUpbvVcu0Gpy4rH8sS7/7qRX0ABFQftpk33FvTys5QnJjtJrseKY0x2P/6cl
         kWJBWs4aLRX4Vpi19U5HHhTZpJV/L4WeTNwTQ/kbKAbvFidC6Kd8d7hjP4E01EI376qG
         oinEguMElLY2Ye/BzfucLhvuShmSz7OtttkxrrNj47K76vCXJYzMyxPZzm2ogf8C4DZ+
         B0Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=peCSE/TNfbhc5J98pGmGvqRiniJgvVNFmz0k4MMg508=;
        b=WmLWNzkCEb8251VYPQqVFKFW0Ztv1eyky/O0ySDW9NWiELlA7BIs0tHw0HmphpRtUT
         cYMlIws3astdJpf/VmIy/2ZdogjcJRJXbsyfzXN7F8usCKF8FbTIAxe7ohsUD2GFTGuP
         bFCvNaOYEXvMbUBb4cP6Uv5JDQ9kARiU+b5LtZWNL5WaP/GeCO9/W2jfgU3dc9pECwjA
         jeGc9EPIVgqXvABzTWVEjT2+4U2uFJwNdHmA2KCvgPF+A0dZZrTwXnEZS/0gURQTYAHH
         K62ySEXuxi44/84fREi51Qp8nKmNvQd9j69QJGWeCLDWSujp/EaS6uvIlMu7xCJGYPA3
         s/wQ==
X-Gm-Message-State: AOAM531wQhasew/ZfF7S7kNN19SLWtDSGcYydoTYOw8lbZLX5hz+uFj3
	V2KHLBURkWrlaZ8JlxWqzhM=
X-Google-Smtp-Source: ABdhPJyIKe2+3dn8uyIHy06069eWtM8ypv/b93zMObcXNwIp4q3CnlnCZPCyF8ay+10uq6z70HktoA==
X-Received: by 2002:a17:90b:350b:: with SMTP id ls11mr3134381pjb.201.1601480161147;
        Wed, 30 Sep 2020 08:36:01 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:7c92:: with SMTP id y18ls1206230pll.0.gmail; Wed, 30
 Sep 2020 08:36:00 -0700 (PDT)
X-Received: by 2002:a17:902:8215:b029:d2:425e:cce2 with SMTP id x21-20020a1709028215b02900d2425ecce2mr3028483pln.70.1601480160552;
        Wed, 30 Sep 2020 08:36:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480160; cv=none;
        d=google.com; s=arc-20160816;
        b=apiPWqWbXiWYWaL2ksm9gdYmNcj+bmz0BScSfQ0kPNmIJ+9y0G12SL7K9L4FDdSZ/d
         7iO0W19Ui3XeppHS1iwGa88k+a1zVL8BhTQwMKGxD2eHCeVzvDkZrDokiPV6tVrdXNth
         Cf21qKWu4kSuz6jRlTr7qwAgYHrZN0vA/jQVlkYclCA8/KDj7e2VLCRUZ2trvuvYDw4Z
         nsrnvQBcpkfd9r9Pq3ZRjaHm7OxH0GpuZYZnRo71ySTDJXzlLVNTl8ufcBfH/Ss7MeFM
         zKvfsQAZcZ+Ur6mr+9I1avS+k6NRp4IADaG8Isq9f6a7rldyJxzITZDAhJwlQJUSwgtw
         bR1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3vpCkC7uFlZ+YibeWVFAIXOSzm64dBgudr4jQOKgpzg=;
        b=E4OuxUGPdKUnyJ7GAyALdhVLG3Ux4wAFhM7aoYHjyYVuaB0uWYH4gRPuNRo5kl7s01
         VRWQPG6GJue3+JaCj1nILYCDxpP5CYTJNQZOVK75yXbo+ORMy/yliBdJpBnlA79jpxgY
         gg5qKjForKhdSYtbmVjuwuDePIHyp7QLwm+8VyOzNmoZRHe9ODDjCRRmtGFLJKGpSxi3
         f+xeWFBKpzIpgI6L9qBR16g/bOWb8dUTR+zoKoBpkx0dh+wcJJUZtzMVQQ/DsBpvn5HW
         pQBvx8rubRY++HYkfLUZ+iVQrGfqmLFAqFHnq7xxMFBAcXm5G0OJqI4Egn1Q9V9stZeR
         lyiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="LHuUsW/F";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id iq17si135935pjb.3.2020.09.30.08.36.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:36:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZq97043540;
	Wed, 30 Sep 2020 10:35:52 -0500
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZqfx029910;
	Wed, 30 Sep 2020 10:35:52 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:35:52 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:35:52 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZT033254;
	Wed, 30 Sep 2020 10:35:47 -0500
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
Subject: [PATCH v7 04/18] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Wed, 30 Sep 2020 21:05:05 +0530
Message-ID: <20200930153519.7282-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="LHuUsW/F";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-5-kishon%40ti.com.

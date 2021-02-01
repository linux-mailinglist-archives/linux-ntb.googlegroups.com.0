Return-Path: <linux-ntb+bncBCOOP4VF5IDRB5V24GAAMGQE4YU7WWA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4B830B0FB
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:58:47 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id 68sf11460290pfe.2
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:58:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209526; cv=pass;
        d=google.com; s=arc-20160816;
        b=ybHndSnkIZGKA1NTe/7LmchGfM6Lf+sxtjm1FvhPIZ3SmELyn/0SpDKI2sxmyG0Emx
         xfA3krkUkl55mK5bOF1IPP/xsEXK3vH91SyTekEctotWNNQDbvZr3rWj46URgXKnhnRh
         AOsxTHa9o/AdwYIpAoBwQ1KvDUpD1vPDWNKuwOOnymS7XvNAUGWOnac7TPrLC9N4+/qQ
         WC89LbaO1VwDswpiH+dv9Ot+uktORfwO+QelQfCMgbAGRYJzox0GQhGL8RS0qu/EHzr8
         OFzBLB4As4uGS7V0gxLg+GsJBj4Ne29BOqjVmCtmmLQhQGvJd0bK0aFN/ODAvhFCgcXj
         b/FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=d6O1wpSjQ5Q8VykqsjzjP0SqH7X3swj99m/HysKSMWU=;
        b=zNqHYIqjfmeBh1l23mxfF3XK8Fs8UWkt64hJIy0BhbmllxKUmtcjy4RJBaVgXhcLNv
         vabXwoesIOvB/VfkAUApZHmN/J8ndMX5dAsoXZDvztfIDUm28F8GTyw6IqKbbbhw3CV/
         GwvX+aiIFXrzHHxiTI7oySWtSWhTHBkeUFaeUYWnUo0FsCW7psq+9OMO8r/vLOlbWSsC
         L4M9sixE5ckTUS3VZP6hb0s4u3/I5hHE5Dpf8m79mvok4k/MPvoEkqsBIpvjSL9HcURD
         uPdLYJJF/RiolPMsUcrtdOiI8s4FeskUrq+Z2W9fctea8kyQVpDL2rJTVZWGKsMhkiZc
         BVxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=DgMIxEv5;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d6O1wpSjQ5Q8VykqsjzjP0SqH7X3swj99m/HysKSMWU=;
        b=UIWfLJi7KFwSRxC7vQwTUGvsMjxzV4bOTR0U50UGH/WZV5eC3oV7rEw9WVrPpMfJfQ
         v7B+qRveNUmjMgg62Y4QKPyW//RiU0Lc3O1+TMtIVPotiqM/d4ktw98Pr9oSPrRRdjqY
         SZSiCvzAk9CJJqg+WW4hx6THqxh1yLHnSrg5et+j3yXKGA9R/EuOZUDAocgdyY9cNT0x
         gSTgpEa6xsb1sR5kKW8Ngipu2uWtb67zJgsjPb/LhZqmw50RgU5kNcW72W3CY2P1buKY
         9kiz9drrJIGMw4XFansC2/LRv0q2BMrBR25/bkPz7f/fpRlhQ++NW/yXyACrqNplAjY6
         Bl/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d6O1wpSjQ5Q8VykqsjzjP0SqH7X3swj99m/HysKSMWU=;
        b=SRvk6H8cyfCEXOXjThTfHYYIF5VEqFSbpIiSPi7KVGlvM9vInq4O9MhVgDCHYPTk90
         cpIRJGlmRM2y6Ai+KF1s2vpGno/OfHeOL3kZqdnX/L52wvQBqxsWdgDDcbViCmqhUNMT
         YGRu9GgZnsRQjG6g2MfRn1kh62unYtgrfJ+Ual/mKL0yhXnWwJTEwIv2g+vVJkxGC4ol
         PqpeJy6H0kHaDsQlV0OjfN2eG3Mn5zDi/m6IP1BFU4lIq+xPyybLzbfowsGOr1f0bfmj
         gDi+GwuqhCyDAIXoxfV1Bf/3GDOr8RCa5yK/fOyrQk6WtV7Vym4Ira26CGD6iNfrORy0
         qPPQ==
X-Gm-Message-State: AOAM531SpSaP0XxHpPBlLBBPjq8UUS1Y+W49WBd4cPXWA/swfCpN8WIa
	Oy3US5736WfDk5kN4A1N6jE=
X-Google-Smtp-Source: ABdhPJwJt4Qhqqe7X1PgqNPE9mQKm3F5P4aRPdNdghElKg5INX+vp0zxqhbDLcPojiLu1vznX2YteQ==
X-Received: by 2002:a17:902:d20e:b029:e1:79fe:2f89 with SMTP id t14-20020a170902d20eb02900e179fe2f89mr2597347ply.9.1612209526387;
        Mon, 01 Feb 2021 11:58:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:92d5:: with SMTP id o204ls7058725pfd.6.gmail; Mon, 01
 Feb 2021 11:58:45 -0800 (PST)
X-Received: by 2002:a63:480f:: with SMTP id v15mr18410893pga.341.1612209525824;
        Mon, 01 Feb 2021 11:58:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209525; cv=none;
        d=google.com; s=arc-20160816;
        b=ZVHe4Mg0Z1PGUWhBPYdqoUXoKc3sAeO/ELWXR1qokJcF87sphEC1+8AUaXsNe8ZEIk
         C7fU0JR/scRpum+2euhvadoFVXgUGc+DgJiJUs/fMhxW4547aav5+bpSmWB2evGmWto9
         0+B93aHjU8lfKrapc18nu2UMXQV2PvgT+86JEcpG3Di2brkauC/1sIiCppRmPHfW3xPI
         TySiEAQYvDLJfRxFLR1L/O3PXES+ujSz0hJDgFPhJ9buet5qz2ZfryIJQ/zFXwdt/2/N
         v5TV4P/NQt9Z/TpLAZjxb6A5Cz3TDAdf06zVEOvfxXLU5FxK6PpKYLxDBFWAa/t2FOHH
         aP/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3vpCkC7uFlZ+YibeWVFAIXOSzm64dBgudr4jQOKgpzg=;
        b=xR1umQqesyyLmsmYo5xun/LfOdo5/mkUP+m8W7d1laPQw1eQsn//wOnJYtqS7ZEGoJ
         Waw9gxn5kjm+MPKBgjHvN3ep9ujJBIaglsJO9OwhIDvfMqpwbrEjcOq/H1CegKGlF2n3
         BI23ML/sCgAr+KB+z6Kk3sq1sbtd15DbahZuQayi5i2PU1B2IE5U4LfXj9mkPO+Ofg9F
         VICYiogt9OtCMjKdOVzgm8PylbT+0KA6U0PTlYxI1Vg2jYL0IAyI45ZCLgbueTKte/Lv
         zieey5vKDrN3ETkyZv7FpPV9JEJ4rqr8MKuXsflof7xILPNArwGYiDWcVlz2q8Ci00Tb
         kMFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=DgMIxEv5;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id r142si955841pfr.0.2021.02.01.11.58.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:58:45 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111Jwc7E023845;
	Mon, 1 Feb 2021 13:58:38 -0600
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111JwcqZ100831
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:58:38 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:58:38 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:58:38 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQb085814;
	Mon, 1 Feb 2021 13:58:33 -0600
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
Subject: [PATCH v11 04/17] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Tue, 2 Feb 2021 01:27:56 +0530
Message-ID: <20210201195809.7342-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=DgMIxEv5;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-5-kishon%40ti.com.

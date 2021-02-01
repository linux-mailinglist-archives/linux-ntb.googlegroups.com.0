Return-Path: <linux-ntb+bncBCOOP4VF5IDRB4N24GAAMGQEFGQ5JRY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 9440230B0FA
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:58:42 +0100 (CET)
Received: by mail-yb1-xb3f.google.com with SMTP id q191sf3174355ybg.4
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:58:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209521; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nul+vlZie447ziXGiQ8VEx4YTy9k+epkjopEMTpK0vTapTpEn3uuKHkkKY+rpjhHEC
         7ymMpH1PVnJdmHmoXgI77UOcp3ePIkh4trEHos3tSyAWOV22xSaCUAgquKYRG39UWZKZ
         Uz2hsloigcVZnq1klyHnRqtEHfSyX92KqTbjukrQccLPzHua7r0Iam/nGLh7IPMC5PUi
         ocFqjmSC0+IIFcs4E2PHJwhGeISXNv3Mr4HJRg/j0XLR47oL9HJ2otVGDF2bw747FIh5
         wPz3ElJp1k63uAZrHj5zdraYif9AdMkyiXu3bWbwxDH3V7oErud58No7DZ/7VSQkr9S4
         H02A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=A1CJtzzj1SPP4Xev7Rgm1TUMmN5PhD8UZO5mmSk+lnA=;
        b=Uecz9LJUeziBuTmwWuONhEhqLB8gZeoKqSjkUpayJ8P0WJYXxzSZo76tu5Kql6hmnv
         Sc8XqmCHjZdSPiapOIybmarOlQRdC2FB1YxsJouBUz4pqmV/Aupm8QjeC3oo9kRYTq2F
         T6rBEOpF1RWEvWh1IMTipaKUo1koQftoLVTEhHHO0F8Y/Jpni4tKUdh6yzQuQAmLhCbV
         C94Og215Ipr9Em60CTm0ECz+cAevi/1tx2p3Ya2/uccYn7waia9Cr2YbIZff7kjsmLlr
         J8aQlAvXEjMX6ymo42F4HrEDyU6QA23dzQmKwLvsShnnrbWDviZQfoXjd4Um4l2s+8hI
         VYNg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=BMNz41ye;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A1CJtzzj1SPP4Xev7Rgm1TUMmN5PhD8UZO5mmSk+lnA=;
        b=X3Jkg2Zby1Xy7IKEcg8O1UqaCJGemvG+D1KF98JHEzk457PeefhPvJX3CGHZDfHv0Y
         gxkkzFC0P4is98Mb7uuO+mXUcgwyrHxLuV9mooA9fu1nGTteUwZBcE/KQVN3x2wDqIqx
         YJV0ZeQZiVtDyICEkTha877Wv3qlkSvIlcwpVtUBopVyeWRK/LDfQPgcFRsUFwyXcgy8
         GHnwKPuN0swjmSIuy/WyH6VFjqlS7+OG8NBHrUzZxUQRWlsD8vetD9RSkUnTOhTLVVKk
         tA8Q/8UBI9EIGep22J6VL0PKnFeM6P+lS7223zHom4eihnq4BWF5hwbjykcurg27w+M7
         XXWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A1CJtzzj1SPP4Xev7Rgm1TUMmN5PhD8UZO5mmSk+lnA=;
        b=cclknpHQuprYCL/qrq2lqHCniiLT6Mn8r5M58+hjaIqO5ZdP17ugmc7dW6eKNMi1Va
         vg/48isx3/VS1yLLH4T6G1a7YKbVdczDrmynhxL5jyAtV/3CfIYlNv2/K8H8DxAlgPAI
         qMpGovniE7r4iJz88WCnYzpv6/hxf3CARi/VC9ubfp6SXBSB2LWuYkQyqfzGfWtYSJ2p
         QJ9BdFrrzGzNPWAcNRtXL1xWv776hhYvr8Ix2ynMFxzBoF2FsTyjyuzA0Dvn6VN8+kMk
         nRO1S4cijkMRDoAeLX8XaNRTQvtGB+WhulQZks9vO56hrstswM+KNhLp8petoXtd+aX0
         ShiQ==
X-Gm-Message-State: AOAM533ATkRFAY1xfakdFEz14yt1TnmYjs92IIz6jgsEcyRQf/PXvl8z
	mYxnGxq6pvZnqDgtcg9q5r4=
X-Google-Smtp-Source: ABdhPJytE4ojXDnTyMw5rK1TQkgAwGwgStElBIYYLvxkfeWZwPw38fX24F4cAvL9qFS7pGI/WKNghQ==
X-Received: by 2002:a25:bc89:: with SMTP id e9mr25592418ybk.514.1612209521662;
        Mon, 01 Feb 2021 11:58:41 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:748a:: with SMTP id p132ls1404776ybc.7.gmail; Mon, 01
 Feb 2021 11:58:41 -0800 (PST)
X-Received: by 2002:a25:8882:: with SMTP id d2mr26659460ybl.7.1612209521291;
        Mon, 01 Feb 2021 11:58:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209521; cv=none;
        d=google.com; s=arc-20160816;
        b=oV84f/rHsQGgpkxY1eD4d5czqMSWGw/L4K9vQ1kcyGH51KyAgatAtnbAJ5KRKi1y/j
         +9d29X4uqO7lll564Ju06U6bYOiJ4HRKcCgXXWljdN3jcRa0iYNH0CwGaw+bI0DBSIg5
         dNbMQ2YV9bt3b7GcahVNZqnBZqvzl2MRg5YrzMQ3JxxNUoY9+tKNYOs2OPMi/WKeppy3
         wAik8mIfwcpN8x2KccMNlYogWvc4RDJW7vIEoHObCN3pKvCTDYFbVZAipYPidYST7c2I
         xkBNViNo/N0pLvE7fZjluWzbIJgjkP/ZhfS3xobIAUCkg3FXl1sQQ+NQKqmOuLCL/2v+
         Lamw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=7qF2OVbWDyaTlnP441W+A6WtQychKbyb9MpcDopQVLo=;
        b=OGtiIYRj3/P1JUDWewUWkTjlRBBbmqRiZlnnGLTmSEeREeF6un67h1ZG5llTlKVZwP
         M33hIJjwyW0KX8R6rmsxAy61mdmOzTphfQWokYCu+BQ4Jj7UOWX1W4x9L2swXEBLDafz
         bDQdN29tCt1NbzS4bSBT6e3Tc7zgQrgeArWYgLjMIYzmAiLxd+iyqMazhEoib17Yz23k
         7tnfqduJPz42bXCe0/iXpaVX9PVSk8M1skMuqcHplxWIL+E/wiBOqlR634d+uorxkt5K
         P6RmWrI/QrFwaSbtqRGY52Ahm7L0b2FYKfdkFmADv0pBtQrV/2rLnghqRSK3AurejEpO
         uoNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=BMNz41ye;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id k12si714086ybf.5.2021.02.01.11.58.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:58:41 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111JwX3G037087;
	Mon, 1 Feb 2021 13:58:33 -0600
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111JwXYd072956
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:58:33 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:58:32 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:58:32 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQa085814;
	Mon, 1 Feb 2021 13:58:27 -0600
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
Subject: [PATCH v11 03/17] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Tue, 2 Feb 2021 01:27:55 +0530
Message-ID: <20210201195809.7342-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=BMNz41ye;       spf=pass
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
index 25e57672e1a1..1afe5d9afb0d 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -87,17 +87,36 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
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
 
@@ -105,14 +124,13 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
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
index cc66bec8be90..cfe9b427e6b7 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -203,6 +203,8 @@ const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 						    u8 func_no);
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features);
+unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
+				       *epc_features, enum pci_barno bar);
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-4-kishon%40ti.com.

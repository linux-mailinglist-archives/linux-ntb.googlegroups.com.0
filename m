Return-Path: <linux-ntb+bncBCOOP4VF5IDRBMGYRD3QKGQEZBPHC4Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF461F6892
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:05:53 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id y5sf4737497qto.10
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:05:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880752; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jldm6BfN763TCyQzPB4q1XCT9Lumo0fSH6Jx/GYacRZGO9YT7If0i7g6in72ytYJBD
         FzMPQBJc0W+uItL2q0jZiZEV9R8KqKXputP9cE5k+cB9a08h1kIk2zGhz4uekLG4NKTR
         T5U8U2QkRjJxTso0Cw65qmPgQqxBS1ldiK+W0W4zVUfJf7cUdGLGfbakvL4t0e44MMMi
         83ob5uBWjJ5SVSAMT0nadyQYnNK4/3s7Z/DZ7iGZJC1xMa97BB8/AlXksyWFIOLVytm+
         XjcRf+YH/C3xtgf5tJrtlETXujY7uoRPVg4PkWzsozBGs8Su3Rx2logF+eGD6/ix0P+J
         /2kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=mBr6T7JIWivsBtHaQvZ4S9uGYczcinwRN5r7Qt6h8ZQ=;
        b=at6clUfxHIZeAygVUYlmVu/IZqviPvmL9UjaiBTxwkCqhw0zBWce/N/FiLpgXfs8R2
         +dTd3t8bOROrIBp4XqwWgbmUV0FPNNsTeQ2xEJDNSkJBPkpD6R2OFXqnX5/UrXy4CZtu
         hyP3qPvOoGz8uAnBwQz3YJBo0xDqmPTFyPBnLQwBU8/j9Lv0Th4DFjdkzZVuzF8FyaSD
         tm3W7t++Oxs8oxAQAfGJvkt7Z1qZ1EVleyRm6R2vOyALmytsGrlRKkzantzdupKPqq9Q
         wgxm4HsnpPhbC25wibiciC3cRAwndHK+kcchlaLeRK5pJy89GLmNe9r13NKOz2rwntEB
         rmPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=KwGGAIND;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mBr6T7JIWivsBtHaQvZ4S9uGYczcinwRN5r7Qt6h8ZQ=;
        b=aBWna6NTQBAKtARfRI5mKnGxftOSV8xU+bDNffboweMg3e7gQM7iThcXUb/zq8pd29
         /fJYEctKvtMSuIzueNvH+D2j4sXxNAB+tyR00YClId6EJd7IZWtZP1az2ola7v3gyvAI
         gZeR2tHMp0pFWUvA+tWy63En2mzva59z4YolDkQxG+kXCUnQZfkMCRB4vsn9iR8JH2RQ
         DuB0E9YFpcgDDIMmdQLehKAFqIWSLTKk4IzKvE0BWJE9p95Xag7FuXVaNxBn94Nfwtv1
         yKSSf+ROhEMSe0t7PZNP2WplRw9uKg0joNVR4VFKvfczrx83m54eZGRIWTZSJ3k77fL8
         shDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mBr6T7JIWivsBtHaQvZ4S9uGYczcinwRN5r7Qt6h8ZQ=;
        b=r96OCKlaqoinzcIjB995Z7BSEgLzO8X1rEh4IBzuBOefVLJiQUdXNuIKLY/B187A/6
         6yOPaVUMhlo7+VyV3PrqFpnEmos1O9fTLdwV16zgGDMilBOY7ActP789vzj1lx3C5yHY
         dk6TT17Ye1+RyNHGqQshJXxUEL5ggT1DDrRYV8o7Y/b2r/hSydf8qpyDhi2qF0oq2hLV
         tHXJts9xG+T0gNKeihwezKDNHM7R+PXC4URQi/gxtR6e172xP2DA3XOUEPLLHqi37Im7
         26ZUaT78GzFKNHkHlJIa1gf4/x5dbfuBjr0Th09AN4dN5230tek140iE4gP4nYX/pn6w
         /NpQ==
X-Gm-Message-State: AOAM531W8+ijuxPuvlhdmo8oCYZi2WkmD/THRcc38scWg6ElITP+jN/0
	srRFtl/dgq+rLmhISTYUmZk=
X-Google-Smtp-Source: ABdhPJxmH+dXGpK+w8tri8+S5+zsWwqeIs97Af354Wm2ti2aexexs5/sC6HpQBLr1v6LXmR2I0DNEA==
X-Received: by 2002:a37:bb42:: with SMTP id l63mr8136286qkf.237.1591880752723;
        Thu, 11 Jun 2020 06:05:52 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:ac7:: with SMTP id 190ls992682qkk.0.gmail; Thu, 11 Jun
 2020 06:05:52 -0700 (PDT)
X-Received: by 2002:a05:620a:1099:: with SMTP id g25mr7988814qkk.302.1591880752391;
        Thu, 11 Jun 2020 06:05:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880752; cv=none;
        d=google.com; s=arc-20160816;
        b=dOvkPN2ArS5OygjrAJPW3ASZQLx/EXYp2m53rrLHBNS6tHEM0CeTtfs3s7USq1jbAP
         YzsxOTqOuzsPsTNO7EFIon3owlO3Nc8RegqUr5o2CgHvQuOdiM+hUiebzXnguN1O7ZFL
         3Wie8w/yH/Q99UutYW1jdPkiv6XhlKN2ELqncqvtMYimIgCeautrLtMaeJUqp7jjUxpG
         VIaR6LhLfmyRjQamcr3cuDi5Xyhc6mBxq1vJcy+Fvo14kpTd+tHGBeDgDwbEIC/M+nCd
         EfIxWl7fqMhgH6Uz0aft4fjktkPWQB73wC+IUep6bpAWE3iokMD8JVPdeEjp5m0jtlgf
         LeSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=Okw0JvcG8myDw+cXt1PvxgJ6s0zHuD+NZh4zOGWPTFs=;
        b=tpGa2K3gMPK30SFgHZ05eFaTReJSpJ23wEpPu7Sr5v4Q8tLke9knztpIZY0/EO9eQE
         zqsTvsGIutPQ1wlaIxyh462Ei5G465Q+s/3tpLupVI77rkPviguu1CiBEWXkwHFiKHM8
         t/Rw8amv6uGGq01zR2TnhonCqFdl45HlDu0P5pdryY92dnmUtCK0P04tHCAol36m+pH1
         CK24uR+uaNXHbiSq2OaJV6ASgu3+FZCRh/fzE1xl7UsRL1KudINQI/os06Pgxp1NVz5E
         GRZ1bThwkRSBP2wroU/Hj0RMsYVhiwJ/gjczwAx2TyXkATvVTIB9kMkuGQaBVKKC7xl1
         ePEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=KwGGAIND;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id x37si145204qtk.5.2020.06.11.06.05.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:05:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5i0O105531;
	Thu, 11 Jun 2020 08:05:44 -0500
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05BD5inm057278
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 08:05:44 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:05:44 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:05:44 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZ4082585;
	Thu, 11 Jun 2020 08:05:40 -0500
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
Subject: [PATCH v2 03/14] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Thu, 11 Jun 2020 18:35:14 +0530
Message-ID: <20200611130525.22746-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=KwGGAIND;       spf=pass
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

Add an API to get the next unreserved BAR starting from a given BAR
number that can be used by the endpoint function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 26 ++++++++++++++++++++++----
 include/linux/pci-epc.h             |  2 ++
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index b9f4d3fe2f6f..ba05e616a407 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-4-kishon%40ti.com.

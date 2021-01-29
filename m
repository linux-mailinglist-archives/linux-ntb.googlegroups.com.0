Return-Path: <linux-ntb+bncBCOOP4VF5IDRBAMG2CAAMGQEHWWTSKY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF0030891A
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:43:47 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id z20sf4226225ooe.13
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:43:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924226; cv=pass;
        d=google.com; s=arc-20160816;
        b=VINKIrpxENwvycKo1kShzQXqndfRkdyPAz6x0RANG3gN4uvkEs9+A1d+h0idllgr9f
         +EoGJlwE7/tGaRb1gPf6MN3t/Tc3RTj3S35QM6c+vLz3+oZIa4UtPdy2uQx9q3YZTuvd
         yD9hzId8pBziZ98Zm9npQBZ4kTSnHkNhKxNK1Ch5IsyainGPbYrlMyDSqV7L2LfnpNOE
         s5+Be2E8Bx2gckmqC8cQ1oRZw6VTnDkoDH7DipmfeyoJJ9XWamonGZcV57tkdBP+Q9Zp
         yx3sggkAdhaQh9HtkhkUAJ73j+6TzPtNLDt6C6wx81n32mRwebz39Jo7LHrmUaetsGIn
         I4CA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=O06r8sE0T+n63X+Fx5kacsf+qVClx6HJB6t478J2RTc=;
        b=hte/on+eHZ0+OQGlvRoc/18F3kHZ6MnuczwRibf4mZ3r7pMOjuOA9SJ3vWnsIeTaat
         5dJHv8cSGITdUX3h7PPlGyBaeX0uIoNvbI68mmibQqyIAmdGjlZEwLgHIJ0ZQBTsptDP
         vw3Notws6nZIPQfDBuZzsK7j31i+kfSnz6JMCic5QWd+zlL+5TS/O+RqBKTlL0U8CppH
         GYnvXd4Zl9G7QUM9BAKfzUsJLcXP/Oyb3TuQg8pTGmdOrGrEjyZnbYQGFTxBU36OArAW
         YLa+w6MV7HCDbL5gTrrftVbEubF2veh3bB/K4UaHvD4STWujlw0grkIHjvBnEO09MNpA
         D4yg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=BcLjUtpC;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O06r8sE0T+n63X+Fx5kacsf+qVClx6HJB6t478J2RTc=;
        b=GXJHXcciazm8WzftiDWJMN8w3RWH1RH/TQEwgaTlZ6xtCqbS58wGU0KANO5Uw3YIo1
         /JzG7635++kuzfAg3bbR+s68A3ss0x78y4piQ2bsmkL/ZiINs3gpNduI1WVrexM2D+3p
         5iMuBdLIXXDqS8cpItmdt8siFtSsUya/m+nPcDPufN9bKvlnlFxuiVPfwdB9ycOokIkC
         J4meUAAVaOQtaJSyx87PpvWuB2vZWLB/ZXXCbLd57U/X1N2Th1PlT+s31RCeOcqfFc5k
         vgEJlqbY27VRdEYs7bxAy1rZZVdB8FgfCRY1TBkY6je+75cu8THZ4/ichOcuwMWmrc4p
         GJvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O06r8sE0T+n63X+Fx5kacsf+qVClx6HJB6t478J2RTc=;
        b=sb0k++hcCSuyvU8KV9a9+6hQ8ycm7ZlkD9w1tgiD5436eYppAc4zZRWOQxOZ6WZuKc
         b1WmuuhIzPMR5ecoNTU0h2XaiFd3LGX+OAwq5svmglLiulbsId5wnY7T5IWKzcKVgMr6
         LqlFlpnedvABkU6icnH4cZ3WtkN0woLoQXo8ensIaZ8nvRjcCdrVIT5WnZ+DHhr1VhxS
         hVM6lUYbSDr0Qmo4nKS4wkXVkVugYxAhc1RMJiVOk6zjpuX2D5DA9cAOnuJ0Nv42ngev
         BnBheEFK14841fX+KjbrHLYUEaCRycqGb6rDOa22U7VBktjN6sQ5bjCR0M1RUfui+3P4
         EHZg==
X-Gm-Message-State: AOAM533C2uj0b3w7OPHapJjA2/EAtBvcVaC/1xc7FrDuveSYTLiNqesx
	tKLz7dR6E/uf9ggnsLVM5yU=
X-Google-Smtp-Source: ABdhPJz6I4CMuF3qLsu2ZkrM8TEHPB89GlzwI0nd1rI3m2z60bCWLusXW14d1tzyFHacntcWJPui4A==
X-Received: by 2002:a9d:6b02:: with SMTP id g2mr2655970otp.19.1611924225617;
        Fri, 29 Jan 2021 04:43:45 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:fd82:: with SMTP id b124ls2026209oii.3.gmail; Fri, 29
 Jan 2021 04:43:45 -0800 (PST)
X-Received: by 2002:a05:6808:42:: with SMTP id v2mr2456981oic.170.1611924225330;
        Fri, 29 Jan 2021 04:43:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924225; cv=none;
        d=google.com; s=arc-20160816;
        b=0zaJmMR9BjMCmD3nrDM9VLJjha3EDB8ECM2KvhLwbnkhc8F45uL+qUGyaKy6Xymgcu
         hR2Sops8VhbD+PDf88xg9UDksbAfox6TFPZwfqOMlGQC4XErASJ6M4bOYVbCFnXSUpFc
         vHs+3G2c0vlmVhP5GCjfZKaFtXFUFerLeCWFhh6xwGjC8VdwTBEtqTSpG2Dy1QozaAon
         i5dpJmsiPIYmpBZKVClOaPmtpI9uKnzVWHZny1VP02y4xZ6nPIcE3MddqHOuKWEEhfJL
         t58TmeNUhXQqY1uGPeuKlXAySa0ciqnO+vLHmcOgj/8bBYH9Hap9arNE51JveXrMEU6P
         GFbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=7qF2OVbWDyaTlnP441W+A6WtQychKbyb9MpcDopQVLo=;
        b=Zf+bhcT7tjiwCrZXzbCF2Il6WAKExLkHIG8A75KEpjFEBYroM/u1BtR4A1KhegKGTN
         NPStQHZt9Yf9t1Ea5f4VJwQ84Mg2j0Y/sdOliXocB+gCydCMIPeTe3DGWwylswOh7DIB
         RNrlttcQe0E0Us23SgZI2VW+Rb2M1nx/LIVhjXeffOBYaNfs2HYPmZcuITBs6K88GeUg
         ZSMaglWyCqunI11ljdrwr/7eGbHwY1Jj3aTmd2x42fsRRUnR1y3vgdKEukWTIuGYk5FR
         lufMDSOwHo0zlEG3+wL5jByuzGGor6dMvj/NcMMu6mh5QOuVXrPdOLBJj/1kGtz3zfM9
         IlmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=BcLjUtpC;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id g62si417464oif.2.2021.01.29.04.43.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:43:45 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TChboP024170;
	Fri, 29 Jan 2021 06:43:37 -0600
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TChb3q011112
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:43:37 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:43:37 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:43:37 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDW2075758;
	Fri, 29 Jan 2021 06:43:32 -0600
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
Subject: [PATCH v10 03/17] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Fri, 29 Jan 2021 18:12:59 +0530
Message-ID: <20210129124313.28549-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=BcLjUtpC;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-4-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB3HIZT7QKGQEV37U2XQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EC32E9880
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:29:49 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id t7sf17710687qtn.19
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:29:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774188; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xn2iQmSqkoZlpJCHJQniixge5vw92y7ZYedkhgtKQV7wjwOX0sXrTaQ65L40U9dvvw
         SwZl72zK6rOKytk5Dh0RvQ7CAVqkRLe32JpphsF9qXsu7vjNkDrtn9i/8nWioB4cjRKn
         A437LDwkI9ZWKYlnHmG/VM/Q7w80LiwJ0II9GnBTotEXgsaeQYGFqhYTPxdDevykYQZk
         DOlzFXSb227/3tbCaruRbUsYXic9sUYwWh+NvD5C7YixtKV1XoRwjiC6Tzk6Arqoq+f/
         TKPi3RfTQ5yuwtjCcGrMwdMkIo/VVraE3bRA2dyK4LBTtxs8OtCnZLPI56YKgoTs+6JH
         m7ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=qHpDcVOMUina1YOcQWIK36KlJJr4lFfjj2EEIvzU+K0=;
        b=gR23xjAmNZ7S5p9kqk77fNI9mF8g7XPHuBqps4A1s8F6b77W8gTRjhbxfT7JLNACIV
         nvBhQL8YR6Oq2oPOEfoXk5ozBdOm2ZyyJ2F9nO/820dXotoCYpL/26FmOJEddLr5g+i+
         YfcH0f2Qxy0MeL8U28Vnfnp+N7fLcPh9Dttz51a6mJ61u5/I519hoxeQzCB3NgKOMVeK
         KU8ALo9n3lVn9HMngWqPm6GiE58YGfRqDAstJqCmcYVMZ0Y7odrZzHvqlOTHXutOG2rw
         MPcwhXqsMXwcS8d/psp8ggE1PicuYw5mGdJFjesb5jt/HJYrXxBUDydlCFEWGdu5ANg7
         14WA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Xp9J0vDb;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qHpDcVOMUina1YOcQWIK36KlJJr4lFfjj2EEIvzU+K0=;
        b=HpyCE71zqBwPZsmIEpnmzEQY+DN3yeXemJs0VnxTs0revRPeE4gnXCsa/5dpkp+7xc
         dlXf2CQutFstynfzBtc6RCC37YgVlQhuTbFypIeaRIxVF9822HGx/Wdy8UFoRy0WxuLU
         NP7G6eQlqourqIP5P1EDN8wQQUMO5KWZPTgIiu11yUB83FMxP+jCOEwTd6IeKcEj5/Lf
         /eL4H8LiRzGAIQx7CarVr8TGF5s9w6/o2jpMTkWmlq6HWONE27m9ELNWcW8tIgELBXzL
         MAfQjSFBI3hjN7BC0KV5xFX90jqNTIiMsQjBFEw4qioicxhJ+m90aDeD1IrXhK4WH8VF
         uUvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qHpDcVOMUina1YOcQWIK36KlJJr4lFfjj2EEIvzU+K0=;
        b=tz7Hce0q0xrqB3fBxyeh1BgINQcCZnCThxPW4y80EbQpK27ne/e3w9da04UzXq7XYe
         Cvod/gO/usnOt5LH0DCMQqhBHGBfRO2sDYRgXej765Q8g1KjCxs9t+O0vFc2ejo4UH3h
         5nUBaeYPth9tD+B/OXGuZUUShIBd2weyRbDV8/YbSjzfvZ2ho18fgEiifltuVYx85mZp
         4FlEpO9u7y85ZuYBlqU4tkAcYZQFhT14fKPPsYdEbeKSrMc7IZHSsHYxkzfEt2SzFC0u
         rOjpz5VbBMmEvJ9T4MsGlAQ/iusHke4E+c+YqxTNepKKr2nrpXrmMwHeT8eT68xdG2QL
         M9lg==
X-Gm-Message-State: AOAM530MjnLP5TlV+Eqzdf3uHqZx9LwMBCavXWst/Xubb6pgWI+4BrPl
	9o4RBh9O5U9q/pYEhE3v/P0=
X-Google-Smtp-Source: ABdhPJz+xf+If1Mtl9SOlAoVr7CTbUDrZyyfrYFq4//xynV+A5S9Xz+J2H2izuawH8LEPtZr6ICBKg==
X-Received: by 2002:ac8:6b95:: with SMTP id z21mr70808718qts.353.1609774188618;
        Mon, 04 Jan 2021 07:29:48 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:9a4f:: with SMTP id c76ls37091999qke.8.gmail; Mon, 04
 Jan 2021 07:29:48 -0800 (PST)
X-Received: by 2002:a37:63c7:: with SMTP id x190mr69902825qkb.277.1609774188323;
        Mon, 04 Jan 2021 07:29:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774188; cv=none;
        d=google.com; s=arc-20160816;
        b=T384CDv7xxswCOIRhTv7emDrrm1wrmg701+UazC7zxHxucgOECzJJgKji+sqNw5o8f
         M2zxOVfUgehKyVFQF3jahzoL9cBbQlwdCrRmHHhGsWEyELAeeri1OAANd8ZtSB4mEAMf
         KqkneAE98b3e3q2NtW4p9I6cl3W945DjG5f4uvqQFjMeGdaxWAjTTKQJ/xvFZs7bq8rF
         N9mpXRTUe4lIprpVqxHOWTM/bpqXVFn+Be9k4wqhHR/zz43CmZNplXUjdxc/FPJOkIiV
         vsyFvj9nz4T+KMeatFUhxMlyHLVGIrxK+KNtEFuEKuxPCmcH0bZPVggnENP/9u9FMnvB
         MAjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=7qF2OVbWDyaTlnP441W+A6WtQychKbyb9MpcDopQVLo=;
        b=HIfPs7ruN2pZtyfD9eerqqnjhc+dY1co0U6HCBulVKMgWp9mQLfx8PFhGElHRPXqV/
         NFRrdCb9S7WiRocdCr38twKjIqZUZ8UTQngPvdY9QN+ljZ5C655kETGqNcamfohoVRV0
         PZMaInL0L/5h6b8/YhQ5gZMK9cUmTlWHFawijo9vaIcbAHypLU8lfO/dLshE8P+AiHnt
         cM9ZrCXUbKx5o+Q9evVo9qPX0cDe2AaLLsoDimALrs6rewKX3aa6RdZjiSFpv4fa4jyt
         pVq+9QfWCB2vjl2lrN7X/5WvEtq8QJHrLRRlbccqR1BIrZ3r3dvdkGMzbHgJ3J/1hztb
         74mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Xp9J0vDb;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id p55si4268653qtc.2.2021.01.04.07.29.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:29:48 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FTdrQ075887;
	Mon, 4 Jan 2021 09:29:39 -0600
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FTdk9006844
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:29:39 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:29:38 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:29:38 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZ9093710;
	Mon, 4 Jan 2021 09:29:33 -0600
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
Subject: [PATCH v9 03/17] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Mon, 4 Jan 2021 20:58:55 +0530
Message-ID: <20210104152909.22038-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Xp9J0vDb;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-4-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBY4CQH5QKGQETU6BX4A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A53269CF7
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:21:56 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id r4sf1277417pgl.20
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:21:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143715; cv=pass;
        d=google.com; s=arc-20160816;
        b=zNyyVolFQj0OuK3WWwGaFlw6JQVNUcScj30PDp/maAWn54lJLEe/aVleRd99AvVTRV
         AS69c4vJbia0MOJBcj/F8U+Fy2I8bN/a4rj/N2d29+hJi8KIjoqZK65hJGTQtFrEVvYF
         hhoWw+KE9h7SpPyZezYjbhJADxCpF9LKsionAgHZD6cpYFFxd13kiTZm1UX2iswjQkPt
         3NeT6yahH6LYibcPOywNBr8LgMHJz+G+4I8j1WXPaSTUmcXd+qDLFuCQaKweS7ahl1/v
         /QGn9Df3Rm8LbaAATye00ZzeAmiFu1w4EJ6iFzKvHA3C3WPzw+vJ/CxPBqxCjCma0aVN
         ulFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=/1vRj5kQY2SHXUvfLVh+kdr7vCKf6HdfO1dbz2PdGIc=;
        b=gqSnhFUkv3yihm0fIzkWTqj2nVhViJ0r8fxal54ciTsEdDDnqBGg2SUxFP06MJmkKg
         2vJX//IYVPxvzgciYZLZd+R/X+4g8NBRLSziKfr3jUWZVJA9+3KpxXgkSiVcKv48XHkq
         ykCeTV+HCxw+TF7/DlpND+6899GGHSqFn2D0jglOGpGzclsO2QTEkA4VFfzelNWYs2WR
         2DMtP2LgCNXrtNYzu2Ymo0qycUVPGxXbKrlQSkNzmcyw96A2AOWM8XkK21rj+8nrMWnR
         ivePa9UP1Q/FhFhPRPJpKVLehl6ebZqYy8oMoQyORkeI/UMPxSFNfGauX7UJZaHv6Teb
         qOsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=hbhARPU1;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/1vRj5kQY2SHXUvfLVh+kdr7vCKf6HdfO1dbz2PdGIc=;
        b=oVOzD8rP2RtmZyXVZSeyOgXjesZ+SHz+c7uAwNP/qz4quoShdpG07uHH5GUsgDZmIh
         8vP3WDP7hUyPya/aExQC2ZoK2IAeqlnMMl6rBKJWV1xrxS8qhz/MPFXqyTG3cIeV+YTm
         9inzs9p8BIuNwBvIMnXQ1ESu95WgcMzW4txMO8iZeBX9t7g9dIEWAaTByo18cbRzcpXv
         0E3NqkxNEUHccIRD0VaJ8+oyZN44cOBaG2U0d5hpxsj6yfsflhOxVRtFRFUvnLdWH/Rv
         BY407z9Fa2ESibNFOSNGaU/HIR/zotJnzyl13SjIFWrnI302z/81/7kIQiYctWwkaU2H
         Z7ZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/1vRj5kQY2SHXUvfLVh+kdr7vCKf6HdfO1dbz2PdGIc=;
        b=dstXx4xiE3e1ZK/izv1cD8x3zS1bDQjRTmq1NkLoWVlrC6mJ9QfX4tdTSIHo4n1ugY
         iSFBeAF0hGDxnMZDZ+2LdCYwl/o5LauHobKCJZ8AaEOc6dihNOQ7vuHBcoEXAyaU/Nyd
         qoVOdiw3lub1wZsTutlR/Nve75+kl1CcdkknsEWgM+600D3MrP6FgWBQZJ658frcJ1/N
         1wwCMkKq/N4/mlw6PI2cJDCH+ry4ruU0h8Cg5miXWrV6nQwXqCGmHJqbr7Qr7+f8jSF1
         KXwvcDXM3Pi+wSZDOa3ka9LcrrO5RBYtiCGBV+pWio7yWmthf8HcR2axNvXuu42dcfqX
         OoQQ==
X-Gm-Message-State: AOAM530JJNOwIYLokWkxvUfzIyGrIahKDodaw+DK7niDpW9o4ZEXkQLm
	W73sZafXQp6SbtGdrikItlU=
X-Google-Smtp-Source: ABdhPJyJRAm2VS7r3slmJMB/znx0Zv2RbfSDKN3toX6En3zpqYjGbfbXcth4Or5iegsgjib83RNf5w==
X-Received: by 2002:a05:6a00:2291:b029:142:2501:3987 with SMTP id f17-20020a056a002291b029014225013987mr157979pfe.76.1600143715446;
        Mon, 14 Sep 2020 21:21:55 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:8c8b:: with SMTP id t11ls5964418plo.3.gmail; Mon, 14
 Sep 2020 21:21:55 -0700 (PDT)
X-Received: by 2002:a17:90a:a60e:: with SMTP id c14mr2510240pjq.31.1600143714876;
        Mon, 14 Sep 2020 21:21:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143714; cv=none;
        d=google.com; s=arc-20160816;
        b=qpwsMr8a8XRw6e3gvtB3ZV7u+5KZaw3Kk3/vgucmlyXQDAYtGTKoxjpJW7rP6m3+I2
         3SOz/MmblhT46WoQLEpp3lhOYKBEiBxWjEQAr2Hghpfshao5vdNvl2JjkrRagM9n7RsO
         m6ezi9Ys8mEauF1F3z/BVlDebBNLFeiz8KaAzcU5AADJAcCvKuM7kx2kEhjcsp7s2AuJ
         lFdUT3LMVoUJkQ6dCye1leSynrJwmTP7iKTBDcECyN9tusQi8IIf5sYFHPnvAtYwdJAY
         RyOC53lR96mqCPFW5ia43owLO0U1DlT3oAXMPLxbJ3RIjFbY2ZYpKov+kEdK4Vcxsi5m
         Whiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=7qF2OVbWDyaTlnP441W+A6WtQychKbyb9MpcDopQVLo=;
        b=bJSEoIrxHb3OMmR5H8aLwBDUNR0X0MxmQp9fSM3oaAkBOVvd+u6Cj52mLnKQzkEmt4
         KxHZ67TbQO1TUL5D1s4KuLWGU+VVpErsP1TYvjoGMZk8yGe/keYCIAL79Tl+lyhJq9Wh
         Cw8sF+r3xneg0+avEHaE+q4CZdorT8czv5GAw5wUObf63LIVGE4At+U/8TnCo2/O/qnw
         RoOKwGG4uOEb2GJtnlOhAOmvdKegtGkcKbXbCKrj4g2GwXjVIZIh04l3mJ6DmeF7UQiP
         Xi6iRN6xCedFrHH6wuekgNLWY07fx0yN9RhE8zzytMKpORsgazbpfH1DC1l7++kdJALc
         11eQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=hbhARPU1;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id t15si327671pjq.1.2020.09.14.21.21.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:21:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4Li9I001418;
	Mon, 14 Sep 2020 23:21:44 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4LiCU042740
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:21:44 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:21:43 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:21:43 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMj028615;
	Mon, 14 Sep 2020 23:21:38 -0500
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
Subject: [PATCH v4 03/17] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Tue, 15 Sep 2020 09:50:56 +0530
Message-ID: <20200915042110.3015-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=hbhARPU1;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-4-kishon%40ti.com.

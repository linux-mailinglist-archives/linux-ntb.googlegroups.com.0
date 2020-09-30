Return-Path: <linux-ntb+bncBCOOP4VF5IDRBWWL2L5QKGQE4OTGVSY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E1FEF27ED18
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:35:55 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id a143sf779699oib.14
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:35:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480154; cv=pass;
        d=google.com; s=arc-20160816;
        b=CITYDY3F8AI2OHLxJKfYwdAZehbynfnU7qSSoaTIjU/C9mjjniJXUVYvSeqy3qCaTV
         P21jGhsv6P9624fsmNZqVL5AqzKsC3hYYhyPEvCg3Ketk7Fq1rPi7P1v8V24CQu7iMVG
         WB7UUUaqbg2yiLwZR5CO97SNkgim0Hev6s7q7ioUpswUNQs1Gp4FSpuPRVfUDIX013+M
         0j9G7CvHXn9c8gnQJgCzlDTTdnfwcVHOfCngKYJPShb13Q62i4HsZC8O3MuTj+kGeaN2
         L/W1Slu95SYhX/bDiXHjGLuE2UB3wC+qxBg5pBw3DtQ/D9WzzZeN/Jui3r4jZqetgEuJ
         e0wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=TuFtQKt4/j/2/+r4jQYqLb12gbVLW78LJHPNKmUkJ4M=;
        b=kjB8PbJr5GCiVsDZlU2WD9Uh/7LOOYpR8+Zzfg9DLDaqiUbKwCEN3qBucrL3tyTB3A
         cmutM5FlCpUb8Fb5QifemQ7ccfxB8HenbMfrfuAkK2o9vFHxV4cAFGYXELcRUG3UGvCF
         wb/UD0zSknNcMLAkkku3xjqpsq/RF32pmX3spn1QGYtvY6nQyW9f46mjngRJfQgRpIjA
         kqc+evPn+X5i6VONGn8C4CsEZNbYMURrIEix7gl3YbB0YaAsZhgiVp4uX4dia2zpuxzY
         4ritK56l30BoDkJd6ThxowCuLRq2AB3XgUpMdJO0ag2+jntITFrRNAk8maM+tzPmGkpV
         d2og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=lju6XZ1j;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TuFtQKt4/j/2/+r4jQYqLb12gbVLW78LJHPNKmUkJ4M=;
        b=l+/1RkxB3PcduFJb1rykwYmgkhO7799Rkm3EHwjHWF44D4EqKMBGX003xarX3VZ2o7
         915CmcuC/CXDlMR628np8FeIdUOsaxrNbYOx4VAwTWy/6OkhHGYmCcF1NrRjCcbIwKj6
         xFGq9pjKRz54XU6UZ8ZIa88WvYzLyIq4VPW+FIjLLeGTGAZ5iT8mzA2yjEleLP4BQIpd
         OSaKXZFhzYVhhrsXxm0S7Ki3shZdRO5QZkZKcySyIGIz4tid5zSfZeu7hs4hRcxtbgBR
         xHPtiKHisT63yNBgOs1WaOZBINy57z5lfmN69HPyR23Vy1oAUO58R/pIcgZJTgUi57/b
         f66Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TuFtQKt4/j/2/+r4jQYqLb12gbVLW78LJHPNKmUkJ4M=;
        b=Tkt6L44afT92zKciUjVCgP8hN7DYkCKx+fS0ygVfLwT6SH9OlOykogiTTs/uhOD65d
         V8cJPaOAWuO2AFXUZOAUBiZuJ7m3KVcnsplvIhcRWLZkyAoYEIqy3mbH/IU8wwKW1+Uj
         pgMecjBcVX95hkjmwhScZq+FheR2DBjRmCdAGc4TS9k3ci02WmJiapxUJHTxtMeaeabe
         wW39LY0sU3jI1a1TAY+0EVTCqbZiiYIZm5wXoCm/YnXnz45clQmNU4HHSLTevwpLczWn
         vKtqXQWnFaG2c9DPGhXo3vQ2TSbtc/p6lPZwVHePHWfHsgw/2t/qJ5wZwMBu2xzbrGk+
         YlNg==
X-Gm-Message-State: AOAM533iNxGI6Ma8lzJYwPBgF2NjFFuDEOKFtuzQ+UJC61pjPyKfzDUH
	I2la3zmdV0HBrHvF2iFjBA8=
X-Google-Smtp-Source: ABdhPJwBAnl7xjPld1B3vXWHcWlP9ChitvmRWyzz07jt7DlZABLOFRG8Cuek3AYGa0o7ctGxwbzilg==
X-Received: by 2002:a9d:6d99:: with SMTP id x25mr1855689otp.51.1601480154359;
        Wed, 30 Sep 2020 08:35:54 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:6a86:: with SMTP id l6ls598740otq.11.gmail; Wed, 30 Sep
 2020 08:35:54 -0700 (PDT)
X-Received: by 2002:a9d:6287:: with SMTP id x7mr1956340otk.14.1601480153951;
        Wed, 30 Sep 2020 08:35:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480153; cv=none;
        d=google.com; s=arc-20160816;
        b=pH5yZPH5fJ/R6P0eotriir2QvJaWcvaUdJWSKDP4f6GKgHPjZIAqLzPtI4j6iqNAHn
         c2kgyEYEp2p351DrSKYMqsA6eaK26dlHGfPnekbPFs/I0XC+x8oyggwBLhFKzJuPSTTC
         W7HqexVOIH+l/FWhtagodlDrSbcn+9GYE7WXozypaJejtuGavH+izAE0KJvn2uWuaZQb
         1ptBkPJR1TEbn4xz97Lg92vDAKBnEf6UdlsqO6v9zYRhNPEAVs+wYvJLiZq7/UBIV9i8
         5CpWCcgtNnqOLaz9cdTa9J3yJqtEx0Km1yQ5PCyKX/nsYIt3fNMBth1Rhtv8odYwBWGu
         MAYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=7qF2OVbWDyaTlnP441W+A6WtQychKbyb9MpcDopQVLo=;
        b=pZPmq9KAzI7nBYgZJmHFAWqw03TRN51BzCxHR66NpuhWHMUpj9OjiLbF4xVC6fJAWB
         EOFLdv2Leq6RGKhLbkFp+O5razGdjmCM+vrvyoLYSihbDxn/hnlLcIky/kVwH/k6CKwx
         3pdfYG1QqO71WAov/Ps+hzxBI1nW9iGd+iAMySCZP0ltAYF0H4U7uJC9PDUj3wQQiKWl
         dgdcNfnRAi6wZlVK0smEpEYNctfHJPpqa73xMS0GMz/cNajhuC+I82Wf1livzYgMeJjI
         TxFawJfVMNkpgJDNCd1TJlNIWnE8PKuks1HUmuykbFzs2gbaqVBsc27il04/8uZxUeaW
         T+4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=lju6XZ1j;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id l15si221559otb.0.2020.09.30.08.35.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:35:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZk8I076424;
	Wed, 30 Sep 2020 10:35:46 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFZkkA023128
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:35:46 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:35:46 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:35:46 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZS033254;
	Wed, 30 Sep 2020 10:35:42 -0500
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
Subject: [PATCH v7 03/18] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Wed, 30 Sep 2020 21:05:04 +0530
Message-ID: <20200930153519.7282-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=lju6XZ1j;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-4-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB6FNSH5QKGQEM6WAL7A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E83826F60D
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:43:05 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id h2sf2235708oop.10
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:43:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411384; cv=pass;
        d=google.com; s=arc-20160816;
        b=a4SIAh039jHBnicYRejBmaaKLhvYvb33uDmL+MXHBXVFN4XnPneZ4WQgq2K2/VdQ0j
         zhlPSZ9iur9if7JwRwRrCVZs9tiHtMetpdcs1Me0cosIl++ln/lYtLxQamW/+mB/q0ly
         AINvClrLFsx7cWns55enYG2kEKcMVa4y7W9lJO0vEyWdghdkAPangItD/bxAiecyE8T3
         WJqZ2sRMi8gPJM66CpFWFzgvM7GJaTUe7oySHf3A8jjEyWa26g9G+dK4Qoz/wKJeh3DW
         cssowTxQqljl0vyW1FxGtiSCNQUK3geOxr6UpYHrWMiVJNMfitWr3IB3dtOUMtYv3LW/
         Ocxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=w3nEOhPBgHvZjRsWvXisizRLwC7ICqLY2wCq+I8GxWw=;
        b=Nq5niCt5CFVVnYqQ1jXaXK+cOfp9KdLeI8PZ+5LVFm+8atEQ+b0Vm8LvyarHhZuHe5
         HMcaT1j9a4QyTatctiC9s57uMsvS3Hx9TzAAU2fjDwoAKwnFzCU3do7JgOQDhJhGWbu2
         yIiSKXx4EDYCIG904uPMrhT8svbhPLFVtjS7xnTvHMG5oMQILLUrZ2StRcS+8pBYomGg
         J1LYjqbmUgBfkDEm0b6I4BA79bxGiUaWn4i8d4o8lSHFm7/Fvygvm+Ujwn1cqgI7hKoc
         8Cw3xlkIFtCKvpyOwEt4BUAwCEJ3j7IpRXe4QF0szmh+FIXxquOR7kDf1LzCNOdwzk6n
         4iJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=OzFsfekP;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w3nEOhPBgHvZjRsWvXisizRLwC7ICqLY2wCq+I8GxWw=;
        b=n6sRbuIckiV/gGI4vmcL02JDPQW1mEQNhIQV3+deZHjP0FoDc92H7i/QsEg6D2EIpA
         /AHwrfk11WeQBU/JO2NHV96YCrWTCqWPJFftYcyNtZgILEGRmuprJHpo+9YpCLr01p/x
         RZ8I1lkoUnWPNCT5bKUJXM1b77kSjPd4r8h+YNtSSmG+yD+/RFxeegB4DzHvII3BXe2x
         ImvCefdj2XK6folavFotASg5uuJ4FqBJyy8wNv7qIyECaBaVyzA27FueQQCJ2xUV+Qmg
         DDw3V4UJFXuBToQlcaYndSjTp+O4oHoMgcmRhcf1LJM1zRa8c+KGk19jwwhn2232rwNM
         74Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w3nEOhPBgHvZjRsWvXisizRLwC7ICqLY2wCq+I8GxWw=;
        b=o58jPZswTza83wG3EIdsdGwdIQtSYvtRBBVT6RayukJVNZAuYGt+G0Pt0C+ADTgRvB
         19ueZWzelgHAhyyUOJVuazA4vllIgiLitG2RtRrLzOfDQmpLVH0K96MM+pHguinrdnAH
         WP5XzdnGGsJ3v/lu7Af5c4YqXSGLpGBz+q1lAbvTo+Gdd5jD3XOBSAU7fWKQsE5ZVbeY
         4fAPfH8YzJ5Amte4A/FlgvhnORkV89w+fQQCj1ZkKzETl0mkiMIlPBDNKbfKN4gjw6Gu
         lQ5jCeYjC04wEXql2dTZiTpceMPgqIIauZ4taPB/oSPYoTy7kUfFepbrmwKnUMpMgakD
         BwNQ==
X-Gm-Message-State: AOAM532znqqIY27zMVzbaMj8/bUSbE816ds48AM/Gq3X4HZlpHk5N5uA
	OQmXbVx4vtDElhecBnc167Y=
X-Google-Smtp-Source: ABdhPJxjw7/UFm6TDQvsNTRTe1EOeiurgOMrTSivKPkHaQIs1TGxb7ia9oUUuoOlsveCdeacC9SJdA==
X-Received: by 2002:a9d:128d:: with SMTP id g13mr3341832otg.245.1600411384168;
        Thu, 17 Sep 2020 23:43:04 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:7ad8:: with SMTP id m24ls1036123otn.8.gmail; Thu, 17 Sep
 2020 23:43:03 -0700 (PDT)
X-Received: by 2002:a9d:2c26:: with SMTP id f35mr22697382otb.0.1600411383865;
        Thu, 17 Sep 2020 23:43:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411383; cv=none;
        d=google.com; s=arc-20160816;
        b=p1T5pjZe65qhGchilwcCYHyOkexu4+qsszwztqrp7jmduyEsCiXj0shof0TPG4XpL1
         oMuTBzpehzQjTVfE9ShVZE9/Qma2eeaTbimYtwMocXj+EUtibXLP1Kt0aUmCPP53enGy
         ZcegC3dJGici5OuZlLHZyrswX7fHh17HHj85Da8xX4kLp76K2BMXqlWU93Iu33mKGtMU
         wo5hgfp5rnc6KvphH+himCnXMr+a8xHpHjFVDJwsFkJNe7WVZh3ZY+L5aV97NDsQUYpr
         FC3xzvs5Dr/rj8wv1Vo2vgTowAbcOt3TvqwPFpRGUXI3D0DKDofATEObMwUuemjPR0sC
         MnqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=7qF2OVbWDyaTlnP441W+A6WtQychKbyb9MpcDopQVLo=;
        b=L2lTj/WCNKeTMNw4v9IIpBoHKJ2832rEeJA+x/gB0+UNOrQZqMdGHPM1n5/L4zGK1L
         HHg6nWMZxgmx9uOaVtvB4Do9Na4LRt4ehk0jiB7un5f85p2GOfxbTl1xqvPKGL6mystz
         6v9rsM3SCNroidLMZWlz3ExgT66xF1JK+vf2AIV2ik28AYc6wGs2H5FX6D30mIKIp3Wz
         PgYw5KtfW+OhWbMst51jmyH9avziri30i5g108KAAjsmFa0RZV94DQiInHC9DZfl/Oi9
         W22o6uxLNzSDLA7OULsCYu/akmj7iCLh0OSQK4krJK/f6GnJNT2fSUEKBw8zghDl1d8b
         Mv8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=OzFsfekP;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id m3si230774otk.4.2020.09.17.23.43.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:43:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6guvl016173;
	Fri, 18 Sep 2020 01:42:56 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6gu1N107924
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:42:56 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:42:55 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:42:55 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCN094595;
	Fri, 18 Sep 2020 01:42:50 -0500
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
Subject: [PATCH v5 03/17] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Fri, 18 Sep 2020 12:12:13 +0530
Message-ID: <20200918064227.1463-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=OzFsfekP;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-4-kishon%40ti.com.

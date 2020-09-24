Return-Path: <linux-ntb+bncBCOOP4VF5IDRBJOMWH5QKGQEMKVJC4A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 72CDF276D0A
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:25:58 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id d21sf1893532iow.23
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:25:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939557; cv=pass;
        d=google.com; s=arc-20160816;
        b=WuwI3aB0lqxI92nN47F7yv2i+Xz2gcNlC3uswSfxarpeW/OooFh+5RijryNTWzBpih
         vEKon6XwkEmvrLAKVlZAEMdiwCLsNHbBke+R0KsoNuLaEOof7so1xak4RF0Nlg9YPZjT
         fZo7OmxI4KrHz9zSy2xsx1r1IbjP836pynsb14JJJ/qsbnn60R7AdRYfDMaXmvVOSSBl
         PIawLypMx4NrjdASWuWX9obzuBcCLdujoI1JIhxZIXxtFN72KjdS1sH82Z/a7jNcUKfF
         mj3pfsvXc5yJqymKDixDkfCIdhtyJOI9TsZG0GUtQ7M3kg2iNZD18AuKGgE5wdwKIO74
         kYZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=qrqD1PMkpduQHdG/ysYs8AcNj99RLfXx2Lv+foQHYZU=;
        b=xXzVWZVaNsxBs3Kb0YO+1KngCvS1sc633iCxA9er03bqcMpJD/NddaDcx5q5BzpCbj
         kHFl6Brz92TMmfR+lka7X6e5FO9amjokfuQ81v0KxVOLXsHaQ0np6+5NcdhLjY799/gq
         kN2ZVJeUEgfifmL8Lw2Bh351+7lkmb+BrG7D3T1pjKpwlcURbZ9sHPUoAaUqkShTnuwr
         JZEWXC1meFJih+80GRP7AzHGDg3EOgqrVYgaKjDsqmizy3n71gZKOGOhqNgaPpskqN92
         mt/g1rFdWtyGzINQtv1nxV76O3nrU9y977pRuAhMB+TXxU6Gr8VU79DPTwFrvwOOvX/3
         0EEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=DFKMzjdZ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qrqD1PMkpduQHdG/ysYs8AcNj99RLfXx2Lv+foQHYZU=;
        b=lyS3B0gOO6G6mv5AA2IB8RQOEeB1Td/nJ0K7nDPCWk6DLLyh5ddtqUfkGQztlpe/hC
         ByguaRtlfn4ATJm3ONV95DiwyULpKMIoRnDMvBeU690nkNqOoW8UytTaLA1WsiNu4Ypn
         Q9hZ5Guft819uoaJ6hfSAxUXKjxRa0wZ1i12uYUgPputwExrdNuerV5m9grm0O9Wq2Ol
         w1b0i56pEKtDgk/SlP8VHLazLNfa94I0/Pob+lvf+rHPJs7hVU0yWj5qEjVtb2CCjCmO
         /QoaEMbZ+xzVbeegjyD2N/T+NnIm9ByQzsOUcSU3rE/pb9E/RM/chKvm23R/4HRBB/r+
         4KUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qrqD1PMkpduQHdG/ysYs8AcNj99RLfXx2Lv+foQHYZU=;
        b=ZO+MWbrjhzP4FJFHTvRbWqu3p+aCxy4PFxgrw0gXgsB4JxfLE/fviJK4y15VdZGk/k
         7mS+KHYka//irMTmqPqMsF0d4GL5PeRBjJ/vqpH1ByH0LetkBD/RE3OqMJpy5ayEhRWv
         NqQk8pG83p82hsb9l7WfG8N/qseYd4PQqIg/8rM4zdu6DCKZA4C/dfpq0Kn7BLuXUS7h
         HNU0SeOq+1XsZELftZfywzeO4v4UR9d9dy6tDqGq2rKzjotC+MaGFBgFR58kSKHEfLre
         jXpxAhqRb2ylLLhM6QVHliOrgHHfgx8SQ/MNxWmR2PhsfgVnUEKCG6lSB/Vork99Oqou
         2Jfg==
X-Gm-Message-State: AOAM532G1pQd1aSoev7NgVkMuS3ZdhBc6oAPIguMs1fFnVBzyQlVEEaQ
	GprqAsWV7ASPtL7tnsmsyaE=
X-Google-Smtp-Source: ABdhPJxfUWgQfPm2Ac+wWDp4QsRjhet2inn54xtxAp804y8FtgWxYn/tZXv87adPEYIPsduv6o7kWQ==
X-Received: by 2002:a92:96c5:: with SMTP id g188mr3012773ilh.283.1600939557334;
        Thu, 24 Sep 2020 02:25:57 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:b603:: with SMTP id h3ls320944jam.4.gmail; Thu, 24 Sep
 2020 02:25:57 -0700 (PDT)
X-Received: by 2002:a05:6638:224e:: with SMTP id m14mr2810092jas.101.1600939557016;
        Thu, 24 Sep 2020 02:25:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939557; cv=none;
        d=google.com; s=arc-20160816;
        b=em4xOMYgWb5CWEGXK3RtxXVVi1eAaO7yfHIRFdboaNDWvAugiVMwehkIrKkPeYGjjk
         bkuQ0pJAxl5sk74KvVW94sKnV3ew94nZfwkM2+sXSfE8QvM+Bbu1crsOcExU/StgkLer
         AOCfaIFdPbdK6tB5/t3X4oDbHJ+ms2yC4ckGAty6ncjMxEIRGtsyPanqPYcdcoooF1dq
         GBD4MhGXkqS3mVVcnhElUKd5OIHHNwRWxe/L8bnyuJUlgkGsRc4gAQidoAZXooeRoOc/
         E2b3+B/iJw+bFviHMJnkLozq0dRpB6BLcGF+ZwjJNHMxf9nhJPfXti11ruEcoqcuXH1F
         Qk4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3vpCkC7uFlZ+YibeWVFAIXOSzm64dBgudr4jQOKgpzg=;
        b=FDYSB+EWzmaML4NxyX0b36hvU8GEITpS0wvnr0s81HX65/WEAm4CDoVs2RNPXRtocm
         hehGZPOPFQTPSSnBwjGEFHPxwmzkvdfKVZ7tuciul9sPCKo+ZZlvZuvSP3Mh46psARLG
         mAWDJbWRDCpl0j+b+tSb4Q9pxu2G82/Yd4ki5ZPMkXS+c2T15s0E3zGKcws50tNHEgdq
         yL2LoxnL5lM/ViiYUcQik8VSv3NtSHusDyfygDGNWubV9K2FoP3cT2EZSE/7qZc/ktdM
         Z4euwBsvs+Wv3sDlqoG04bjFQ2mgAkYlQD5c9boZEsHp7j+BZ1Yqn8q7K4qhN+R3Mi98
         Jqjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=DFKMzjdZ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id y1si234233ilj.2.2020.09.24.02.25.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:25:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9Po5G117050;
	Thu, 24 Sep 2020 04:25:50 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9Po9d017747;
	Thu, 24 Sep 2020 04:25:50 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:25:49 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:25:49 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POYr011000;
	Thu, 24 Sep 2020 04:25:45 -0500
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
Subject: [PATCH v6 04/17] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Thu, 24 Sep 2020 14:55:06 +0530
Message-ID: <20200924092519.17082-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=DFKMzjdZ;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-5-kishon%40ti.com.

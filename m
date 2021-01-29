Return-Path: <linux-ntb+bncBCOOP4VF5IDRBQEG2CAAMGQE6AGSROQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BBB308927
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:44:50 +0100 (CET)
Received: by mail-pf1-x43f.google.com with SMTP id y187sf5856538pfc.7
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:44:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924289; cv=pass;
        d=google.com; s=arc-20160816;
        b=NvlAktO6VcG4XK8JrIneST+21wZMWsO0+Pf/7jGaEiGdXrUNeFXbibQdb30hm1pYti
         hmx9PZgedez4NjsSp3IKLI9xXkHEq0Fv1TgS+IzkOkPWTjeVyTZMC39uR/o6O1PBvJjH
         SaeAwFtwPXA2FPyLYBBu6ezTNfI2hGoZgntEJ/30qP6PDcaIeA+TrsP/VXnAzfg7JZIY
         sgzVGWSevviW8Onc7G+DD3V92Zd5WULj97YnQWb4saZgnTcpVSRmDVsyJja3ZSklgJ5L
         4BafJQYlEc6We2KrFpl3oujDXRnFAOdMOsXr1fpsQrB4+Mt8lDj9GsVUdAAUh+gdiWrY
         sSBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=av454GfPmSyaodOzn18bUpCRX+5fZ6ulc2QxK7FJWAc=;
        b=CMv0SkJqDZ18Y7EIwBt/Nr6IWMGQ83R4lQlhtHEeOCnQ+RLe343QCGRw/YE1xtlllE
         lFTBu4RB/Y2qiViIUJnnaE68ArsHTwl4ixpUJW4elZwe6BigdWE58MmPZX1fD1wGnwPT
         dXIfEELKpYmJBJIO0bcCy4OATn+PIJFjYqDtxjNWFgL8vqV/KoytqHTQo1aIAwTO3CjH
         aB8rqxsZvVLiFqnAt5RzsE3vFFSuDuzsZhFbBv4pKD0T9IknfahQWWBZh4EC7+ryVGAN
         NRmLLQvXSwLz8Taq+8wG4rpuzEjhDnhC8YEbA53tifcClt49YMy3UEuVjX0NBcOa697t
         6YEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=D9srrGU5;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=av454GfPmSyaodOzn18bUpCRX+5fZ6ulc2QxK7FJWAc=;
        b=TCrvcyIZ80AM+6oP3r03nkRI7nHXwW5iaV4N8GhzERKjOuI50i+kF+zAWoRZntLnX9
         MdxAkQYEognji0DfUFBNVTo7pB53BlKKye789PIE2Nu9zB9ECkFFzRD5YRyTaffDS4bq
         5sg+wQTnazeQKtWCULu05L/SSLaq7p+1UG4tzyUKdSiTknaWeWQekkN6Dls8NqQqDT3z
         kd3df+m2E1nuXMO5G6iOAkKzQc2Um/tn2nIHVZMaVsPtogtn2MlQH/pjHMIamI1yICSR
         0+FU1mPuOMV4TOzCpBxLSNsmRzV/qdzyoh8aAYNBRaHhwM9TVSxp78frOWSPGfLTY5dT
         v3/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=av454GfPmSyaodOzn18bUpCRX+5fZ6ulc2QxK7FJWAc=;
        b=OFIfZrd5hl7fx+nP8sH3QA6caywdf0d6lZf+iCteJa4pYRgYHPzJHulcIBZZCnw3Ua
         lj/0SSRQO30L/7fPJtbaMIDOP35jcbqkx8xaVOoKGn+M5o0flBNwbWReiwQ6/ZQcXIaN
         eS736wt9n5Irloff9F7zqUzNhcOIIvqbTu2imXo/kkIW2Xm1Dg1ZEb0zpI6aBsKuQ4s5
         CRt1M8MlDfG7Ak5uX5cA3Zf5GPFRZu2zHKyVe3fs63oKvniGmWvjtqk7G901zsuyGrlo
         BdEOzDWOVyDOhWJvk4nwREAfUTte7OyhKOjlVO6mxxwYGKRKJASRCmuYgNl8d9gDAvn/
         /nJg==
X-Gm-Message-State: AOAM531rdbSZaUnDo2Ofa6FgSxSaOomohpMJjuIDRtxn963IhbuIJ9Np
	kFltHKnQQMUkbWqcEMGBe9s=
X-Google-Smtp-Source: ABdhPJw8WDuXM2Ywa//FiYFFNAC1ENBmcKA7fRhTRivyElJ1JhlKWVr37TdCP4mBecAqi+5RYD6AZA==
X-Received: by 2002:a17:90b:690:: with SMTP id m16mr4390630pjz.74.1611924288986;
        Fri, 29 Jan 2021 04:44:48 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:96f8:: with SMTP id i24ls3623424pfq.9.gmail; Fri, 29 Jan
 2021 04:44:48 -0800 (PST)
X-Received: by 2002:a63:a312:: with SMTP id s18mr4462317pge.229.1611924288434;
        Fri, 29 Jan 2021 04:44:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924288; cv=none;
        d=google.com; s=arc-20160816;
        b=WEDXuGarWL7xxYHJhCEWNgKxwqDdA9WrJYiO4Ii8iJS2w0FkKmD3+MZcWLOIvjKGzW
         DJfmLNWT5/6jvj47bMb0uy9YKIOiX2xAr4TLC8gEijtEp0qclSikmcOaAFX+v90osGvt
         IIYWgmOj7AZQEFXCZWuWVWH6p2VfEQB0X8gVcbVOW2eaZBm7x86TyUJJvTYBSrxbl1vb
         voDm5bQ6jTmo2kREg5sAuwOPT9Z8ZXpV5YtVMoGTlnxbXtrxw2Rbdbip7LvYDUWokOxu
         Zu2gxJDttX/Jhw0c1fOWTdkd7687KVgNF5Vsee96lkpjUJ7YNBEtEaSbFPkhCqjJgjge
         1YwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=EuXUXQ2MK6XQb++j+zAUk27hVnYjozn7DI26CkPIRjg=;
        b=zMtLlMvhhJzuINehkNFqKgFSb2EGymwt9D89DMD0WKhXBigFJkyh1DTm4/s0BzMXMM
         TqTwle1KN+dCHvvtW70mN/6KbP79DiaqpQawAy5GdciQ77tXQGKPVmhz4O3e9VsmpB4v
         c4iVtbjIKdigqU0Ra4eddSXk2bMMr8nU9J4ivHoXFri4eZ5tfve9+uYjsAtpHNl5CfRd
         XRwKpKZ9i8uDxD4TBQbHI0SrZbdmYRWQWKnPS1c8mN+ec5JXilLINMaIG5qLGrisBn+0
         dK2WnKeahog+5sQA7CNWvVfK2YY/OO1d2pV4JC0E2Ma4WMeo+bakBjBtTR5SkfuoNEmJ
         OqOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=D9srrGU5;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d13si587861pgm.5.2021.01.29.04.44.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:44:48 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TCifnn029960;
	Fri, 29 Jan 2021 06:44:41 -0600
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TCifCv013391
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:44:41 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:44:40 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:44:40 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDWD075758;
	Fri, 29 Jan 2021 06:44:35 -0600
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
Subject: [PATCH v10 14/17] PCI: Add TI J721E device to pci ids
Date: Fri, 29 Jan 2021 18:13:10 +0530
Message-ID: <20210129124313.28549-15-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=D9srrGU5;       spf=pass
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

Add TI J721E device to the pci id database. Since this device has
a configurable PCIe endpoint, it could be used with different
drivers.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/misc/pci_endpoint_test.c | 1 -
 include/linux/pci_ids.h          | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index eff481ce08ee..1b2868ca4f2a 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -68,7 +68,6 @@
 #define PCI_ENDPOINT_TEST_FLAGS			0x2c
 #define FLAG_USE_DMA				BIT(0)
 
-#define PCI_DEVICE_ID_TI_J721E			0xb00d
 #define PCI_DEVICE_ID_TI_AM654			0xb00c
 #define PCI_DEVICE_ID_LS1088A			0x80c0
 
diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index d8156a5dbee8..f968fcda338e 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -881,6 +881,7 @@
 #define PCI_DEVICE_ID_TI_X620		0xac8d
 #define PCI_DEVICE_ID_TI_X420		0xac8e
 #define PCI_DEVICE_ID_TI_XX20_FM	0xac8f
+#define PCI_DEVICE_ID_TI_J721E		0xb00d
 #define PCI_DEVICE_ID_TI_DRA74x		0xb500
 #define PCI_DEVICE_ID_TI_DRA72x		0xb501
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-15-kishon%40ti.com.

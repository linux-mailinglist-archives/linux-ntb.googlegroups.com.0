Return-Path: <linux-ntb+bncBCOOP4VF5IDRBL7EY75AKGQENVO627Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 26CED25D2D2
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:52:17 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id c2sf727169plo.11
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:52:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205936; cv=pass;
        d=google.com; s=arc-20160816;
        b=kxG3/jV2bvAAJ3M9J32R/SVeRk4ChN/fqsltYY6NJrbNGr//VkmpJSGhtwKQX0uHyG
         +LvZ6tumKf3GPbQX1HOVUeuMLdHf2I9Q9Ae61/coRczQqWApzMR5bmaEiTgiP5vBwoii
         kNaCJjsPoBL26yn3vJRhSdX+8Gd9VcxzaeZyVn0duMbrvYt0BDsJtXtOcRWTFcwYy9yg
         kJt/4aicdsN/QWsVSpUisBpz5zFQtz9v9qse/GVXufy8eJ9cPRlmYP1ib+sIoytnJW12
         uiToil6nF+nAlM7/PgelHFOhEtKicw7e5yDtY02FcJbBp+soG4sRYU+1+2ZPNgDFiFzX
         lnAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=2Y0XZz6z0WqVvQ+wFaMP/Oio1A5LkNtgTOJoNUG0hx8=;
        b=r8u+Pkyme0vVGGUbXNvG1LsQwq1p/buxwspPZuYuhsg0esBVuMwAlt/wl+w5S+A3bh
         F5oQ835ynzKWZdFmO1Sa3HWG6aSyyWWSxrKip2DTDwT+IMKX9lswzQaORJzJri64d9wu
         WsLALK9Shn2vPH4Eg1RI9QAeGisqCZkfBfdIM9nMyyfl3WvHqehXf7kvUOTeI6tv7xaM
         KM5MvaL+kgMjRv4DKoUW0lHEXJMToMlNaKVByX6dZRwZR8orKLxXFM6UxPRfj15oxVbI
         Bf2w+b4JOKp15kYnryA0bw+SQmN0vmsuu20gFmku/3a+Vvr/WP5HV3WJmjDXG0lwLI/f
         /MDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="pg0KpA/a";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2Y0XZz6z0WqVvQ+wFaMP/Oio1A5LkNtgTOJoNUG0hx8=;
        b=htbNWMU1uTWnKOM+QC0oPzqDCztzLHWjMm0agVV2lay94+685QIZeYG7a9z0uvRNIQ
         oRhXnd6yM8VZWBbsnl6sML6WU6mVAVRZoqH2D8nio2gBKU6mm06SNdbO5OVaMzfNsSYY
         1DFeDL65O1YvkGwcy/zsAvj6o1HJzwbo0csawVppmr023MPIw0iHO/IrjJoJiyLnsUhX
         D0XBIBjsWN7BRATGleRr7rmaAYb0HyIDGXcA7iSoPqcZuOJoganRchyWOCVenKldjz5U
         cJoqMKvxvF1ZtGF79y35NWBm7NznsRId2hAyeQsLChcUa303r16HK0zSzXMkklJD1+Wz
         cVTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2Y0XZz6z0WqVvQ+wFaMP/Oio1A5LkNtgTOJoNUG0hx8=;
        b=mQ6AnEZaAUvz2MWN4g9Dkw6BAsJUC92CrBfG5qPoVV9nVQVFgCcMNQmByaW8Dq+yhR
         KnySivYCV60qytPstq7P/+OX1+wqXtt2zIypDDXD9/FsZTTiDUlIlfKB+XVigowCMK5/
         1W6sI5qcKpNlWtEFicAOUKbew8nFooj6r59bllqgy8W3HD+HwMd1oivMyBIaTy86pH+i
         gv27ygw4QfgeuDA0IC7Hi9c4VyFJeeLpcn6JTkOMTCDSXWxuJMyxcaqFL20v7LhLcqYj
         i7O+Rkq+dcdMeWwyab8h3/5OWycqHLwT/ERO5sbDGhgcQb7p2q0NQ8hvNRTZAweCoi8D
         kBrQ==
X-Gm-Message-State: AOAM530ihMQbhcRTJZsu+Iax/MFCrWBiC4HpPIf5Kj1KBV0icWZrFY5s
	dVmB3Ejvvmk7hhLTWFq7ts4=
X-Google-Smtp-Source: ABdhPJxcvDPAUHsnUTagmnXStvSBgweXMvPM1YmJ+OO44TVzRVMQMSi2ujtfM8aWGryeZVK+FIU+ww==
X-Received: by 2002:a63:141d:: with SMTP id u29mr6422505pgl.315.1599205935829;
        Fri, 04 Sep 2020 00:52:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:3502:: with SMTP id ls2ls3795633pjb.1.canary-gmail;
 Fri, 04 Sep 2020 00:52:15 -0700 (PDT)
X-Received: by 2002:a17:902:ba8e:: with SMTP id k14mr7731809pls.256.1599205935388;
        Fri, 04 Sep 2020 00:52:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205935; cv=none;
        d=google.com; s=arc-20160816;
        b=cVpfwoCmSGA8c6Et2V0lYztDzaBMQL6SvV3iigMQdyrOMZdPOtpaOdZq9P6CLZO3pH
         aL+BsoWRV8jn2iy1AHkHAPc2LSAlchWUfRW42J2/9BQlAGgZGRvAhQc1f2hjIQHuWvmc
         RY08BgUKLSq+iyN+yUFhEW12WAGTXRnRRhOezeDNB0DNO5G6nIEuuoqPnsGAy8uOXIiC
         gwfHSiLpzfg6wI46TRDYwyLl6oZ/7O17qap1av0TdG96/yJr85tjC51Dj6nFDW3RQpqs
         TRU5NJ9XbiPmMPSEOSwPOv4POlMauaSnfizCit8yMbn5p3rlurxVlT4RhvrpWfJvhBE0
         Lsrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=mBDRi2H+5RmDLfb3VgWO2CxtWeit10rVqDT4xYAQnwU=;
        b=ef/O+CDGRVi3rKqI+yryChSR0WF3NdczY1m15TiKZCrKlpA+uHZRvYA7dSuiSd6x7R
         hip4BPXbBwXJVkTC0bahfuyB5UL+9BID2qJ2qTWRULwECzslUBupXCj6slsXrtBKL1xA
         86vXYeIHqXoezXBaTu8VStj+FclCMuv5a8frYqJU1rl3Awpu33hdmWAJEcbVcYSczvY9
         pPk9+RyoijbNUUPUGvZ8Tjhv3pI5mvyJJQVpXR9zgZ697eDQlEImWSJzi18v6KGpm7Jf
         CxGLzxzQuEfF9R0aN/4A1tRNo2xyDLpdNp83TXaHrafEsT5aO9W7rbHd/kQhBU4BsdLk
         tzoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="pg0KpA/a";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id 129si320575pgf.2.2020.09.04.00.52.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:52:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847q8QU018084;
	Fri, 4 Sep 2020 02:52:08 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847q8kk092058
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:52:08 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:52:07 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:52:07 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osNE058796;
	Fri, 4 Sep 2020 02:52:02 -0500
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
Subject: [PATCH v3 13/17] PCI: Add TI J721E device to pci ids
Date: Fri, 4 Sep 2020 13:20:48 +0530
Message-ID: <20200904075052.8911-14-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="pg0KpA/a";       spf=pass
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

Add TI J721E device to the pci id database. Since this device has
a configurable PCIe endpoint, it could be used with different
drivers.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/misc/pci_endpoint_test.c | 1 -
 include/linux/pci_ids.h          | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index e060796f9caa..03fade34aeac 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -68,7 +68,6 @@
 #define PCI_ENDPOINT_TEST_FLAGS			0x2c
 #define FLAG_USE_DMA				BIT(0)
 
-#define PCI_DEVICE_ID_TI_J721E			0xb00d
 #define PCI_DEVICE_ID_TI_AM654			0xb00c
 
 #define is_am654_pci_dev(pdev)		\
diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index 1ab1e24bcbce..6ddeb64049b5 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -880,6 +880,7 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-14-kishon%40ti.com.

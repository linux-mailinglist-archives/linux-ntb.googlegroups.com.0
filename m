Return-Path: <linux-ntb+bncBCOOP4VF5IDRBUWMWH5QKGQE6IRHCPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 52BE9276D30
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:26:44 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id 8sf1483062pfx.6
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:26:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939603; cv=pass;
        d=google.com; s=arc-20160816;
        b=tiQrkn0pGOz87leh3lYfrI8ZnJZK46mOunY0wCUPA8PkZ8eiwMqbnDw3p7hshzfh6L
         Rhi0n4QZoa8682DKIIH3dSonDbhp+wHxQlH+agl7xbGhKBulrbyC5WP149ccpCw1FSLx
         0E6jges+SsNtbjf2nP2etnJDWlaRcm7nvuzn7cLmHPiRnI3knRn6Obv5DdYrvnb/9UGB
         ll23W3OCbjJZggVRWvsggyFMbtev3DUHa6dbArVX2uXVK3I7lur7ZOcGaAWuInjw2Vpa
         TNt8uYByx/2qopGzNOQRvLDGX2ux0d0qBumHvvJCO0w6i88d2FS0qGBlDUWJTsXbPKke
         OtbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=4AX9kDX0YcMuz+NHD2duGnfQXVTXINzlkH3SGgNpn/o=;
        b=Q1EqvnpB09YXYeouz938y4yCecDXFnHQEH6CknJwnJlY5bSnYxq6P/PAiFWGRh3f0u
         ZDXV1b5w0LlNL/hR4u+BwI8g8QHwkAK6IAnDHGfw6GptTbe7obwIX6ML81nP628GvBYq
         sgNqH3wFwyTbdfIM3Ud+zp3cwMrCF9jwnpJl1xIV2AO10dq8oX2hnIopO2RUn8smCO2E
         72JK4WTKowLNJfr8jIuLPAeJDJbjNo/+H9mCxHs6AxGWn3EWaTvuNLlQ17Im/G5GXKb5
         /EceFQDkH9fDklJ3aBfWw/wa5thdU0xPurRxg3x4IOYAv09Pkf5CtsyxpccpqUN0zlRQ
         bhHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=j4USykNx;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4AX9kDX0YcMuz+NHD2duGnfQXVTXINzlkH3SGgNpn/o=;
        b=stzZlijFkYoBOhDOMnc7Iau6glkQRtnUjlDF3igD9bsYDkAbcjowrRhKa+NfmazwG1
         HgdW9xVFNIo+eicde9ZMaEnWNlWTgDBM3xsWd7jKeWlSrZTvZNRxcD4V3fThIj2sb6Ve
         Ax7dyvcR0+OM5cZk9cSWHz1GIP9nnsXFVnxjyFKUqRMB7bvvpjbcIVOm7OINHVMxgVEQ
         Loj4s6fEQctxe+/yoprZxwXeQ2sWoxHtzaGTtQbeCFcv2OT2n/FALOWhcUaqhb3G+N9Q
         pXtkMFfwpU2o6Ltvu/kQYdyH7h0VSXTnRv1kdOLg6EHjME1jLb4zux8aEgwDRIE5iDCI
         KEGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4AX9kDX0YcMuz+NHD2duGnfQXVTXINzlkH3SGgNpn/o=;
        b=uMTmrM1E0a+n8SquUPFBQPZxMfV+9NCHqSadK+Mieuh5gm2sC1XiZ0+tLQqrczc13N
         u1si3NaQAFy9Jlc+iNAIQ2x6uOvKLkWkaBQyH+/xtYOzNZhoU6gXY87ZgproqY6F47Uk
         ywnZtRbZCTsDEafvqm+CLPWvctHkNRBHZh8/CbsbFlNMYBQUsLBBa5ucb1fAB6Ou9CcF
         crau/wUhv6trlHhHtIkfLPauXn84FdkrMuPI+L9C/6zdN/obKdbScjUTF4FnhlJOcOXE
         MzwcoUU8Q0wGBDUI6af+RZNoGai+8qX9+FnXdKtiPtCsE/Bp3uzyON5LihT4Mvgx6bfd
         jp1Q==
X-Gm-Message-State: AOAM533JW2aXAtEJMB2S9TvAtUb8nE41QmJ4dEyITZGc1pjmJe/h0kPl
	4c+1MI0GvyU2Rb+w2yQxpk8=
X-Google-Smtp-Source: ABdhPJxxjD3o9z8pjv1LOpcUHWscZEX+vfC2wRCGKnSGEExOHXtzjj09vOA056LceRyOyWj2mQGZ4Q==
X-Received: by 2002:a17:90a:fb52:: with SMTP id iq18mr3213456pjb.162.1600939602956;
        Thu, 24 Sep 2020 02:26:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:441d:: with SMTP id r29ls951271pga.4.gmail; Thu, 24 Sep
 2020 02:26:42 -0700 (PDT)
X-Received: by 2002:a63:6bc9:: with SMTP id g192mr3317684pgc.236.1600939602462;
        Thu, 24 Sep 2020 02:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939602; cv=none;
        d=google.com; s=arc-20160816;
        b=kR1ORtXaBmvePFHqCr5BkiUpAhhtfIO1caNbUurNtt9/snmEfTqekcRWnszGENEl7o
         rrITrKaiMPXtdbVkiyIcpfjrsNr03Fgu0sBj3qLLWryfqMrMWRA/7NiO+O2aFpFABcbR
         a36H/rcMeIKG5oaBzuxP86B651FWDu7nUHkMzlzYW9+Wf3Xubo3Bec9QjTCR3KILz4dw
         xQaOdT04buG+omZEkL8r1qxRNC7T0MEOW3n9LFIyU6yg5eVQ0TGFJHYvlNQdaU4hVYP/
         gG/kkNud8Bi+Q3MwmAosN7QdFXHD90L+QargTJcwGBJHef850/Y1RvYEnV3ysq97iUKa
         i65w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=mBDRi2H+5RmDLfb3VgWO2CxtWeit10rVqDT4xYAQnwU=;
        b=Wkl59KjuW2V0MwzTIx183am9uHmliSTS/zcoOXEvAl4RKZHvzSGPj1YvoQYpngkrQl
         L2Rb6hlzpd8Xrny1qPqPBTm8iRlL9EFW/6cYFy2AW7p48oO7rLDaVDDxmAxjpQrU/Lun
         YUQLxhsMZbXL4LJBgeN3N4VrttK1mVGX8P02+QeEMu5QlSrpu70uJZ01pWq+NqfgzUgl
         0OcE/+LMy0HwsFxQBEl3q2vgpPVvlFN733R5o8M9H/WIyoLJfKRRLjltB/OSPe5B3Cdb
         B2R5+Yr2DwxMZEvN4qpkEqske7xyrqOIB+lOokvdU6xx+WsnqDhEv/C0N4CUougJzlwr
         JjOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=j4USykNx;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id f6si156936pgk.3.2020.09.24.02.26.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9QYcD117554;
	Thu, 24 Sep 2020 04:26:34 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9QYA5080487
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:26:34 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:26:34 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:26:34 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POZ2011000;
	Thu, 24 Sep 2020 04:26:29 -0500
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
Subject: [PATCH v6 13/17] PCI: Add TI J721E device to pci ids
Date: Thu, 24 Sep 2020 14:55:15 +0530
Message-ID: <20200924092519.17082-14-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=j4USykNx;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-14-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB7V26X2QKGQE43PMY6I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 801EA1D33EB
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:02:24 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id t124sf18551658oif.13
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:02:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468543; cv=pass;
        d=google.com; s=arc-20160816;
        b=GNr4yTXDjMkRytwZrtSdqtwkbOZYbvQpTu5XyLKYOyQhHtAr1GZUguJti6GoyVYUg7
         5dJIMoSayOMz2hLTnGWJu5wTaoYcPDpUmd5HawV6ipOpOFK2owWN47NSKIwiKYpLQhtd
         +YhbEhADLZ99lwQlYKjOmk7RQlSfW1V16sh/cDXDXXMEylx4J/xJohCWKfKfabCxGGGc
         O9SsmdCms1FE7Akh+FJa3omM3p/mxZGlk8CU2ksUiOiF9unCGYOE31lZlPDgpzHmqVop
         woS28r3AA7rTfeaXQDWgfvAcxFQfNxC+gU7/T4l9bYEUeHK4tXBOWZH6uAy7HiMjY7zr
         aq3A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=oqHsT2l9BXs7MdBQkE9bow6mr8mh6YrnhNMPUCJrAq8=;
        b=XT52SlSR2NzcfOoGYYGrSYJqkfTtlpm5iAmJE1iWyCXMvHgbabZOlz0XethLhlJmDv
         wD6lu7OeGeR2xvd0+n1I96PxN8o7W9Cl5KOk25YR7bt55E8FS3ToOG17FYU4XQciMjQ2
         iTTygNKJPc/yfUDvDvCHNYSmjnT4zXC4zcrzRvPEMcg2t6mo+NcVdf3mAeVPCThYtdIv
         E0OINpU7rejS2l7YCPeZDMUe9cLOpl8tiqGsSe0YJ6dfKsBdsfhl0qPak4Xuh72bO65e
         9utpVxxilhkKhSLQypfRPe+mcC6xAoa3gq7TnHy44C7fA75RhaivIcNaTyDLvZ26cGQe
         ZFFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=jAYRbfcZ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oqHsT2l9BXs7MdBQkE9bow6mr8mh6YrnhNMPUCJrAq8=;
        b=S/BWcZdgC+YSK4SPmQj6JDcwrlhPzL1betMAsYR1bLxqa+DMZc5LASQN7z5NRkWFGk
         H7ik36MEB01ProhK7+FYzieiv125S/GXJa9DAIOSmDHIS4+GC8yRa6qF4Q7VI8nyHsTs
         dJgOgNlci4rN625ofYcDZAI1OWpIzv+4b8FdQzLRuuhHeZ1i4mpuM6tOBfqATw070sLE
         JYlycMjpbctLPmOTLMe4nBDmTTBLexyhiGkIu1R1/fQbBJWjZxYRxZcwPFG6lUYgboGb
         JvtgVa++MPSi6wIu93Qlj/ZCgKto/GG5b7ULEHhZT9BpwaeJkL/Q/d+LhoTuYNctXO7Q
         UFDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oqHsT2l9BXs7MdBQkE9bow6mr8mh6YrnhNMPUCJrAq8=;
        b=TuKd9Aha2US6W044PRtiJl8dKmDvvbWr//wqOVgBkfqRj+vzJlVYHEN8m4S/RxYpEC
         6Oks9jeK9F32/ox5sFjcbttQ8/VY/yub+AXAChM9tyM4ORlLvUbR2xSfJuqEX1Qqcxl1
         K3Wl8M7eQrfAR9G68LjxcE3whtWmRqOA8Vy8rZgXDhscBIwhE3pS/J5a1mRX7RLaRZvB
         /TXZkNGPmWVjHdCIsOUECIZK3phE0gyub/4qiwSh1wcLQ8U6Am6K5KS1QvyhgkIQTbm8
         o2WRhOhuPJtk8exiRP/yRONVK0qAHhM3u/gRbUdD37OgEbJ5PP/l3eR4EzVUNMxedGAC
         R9+Q==
X-Gm-Message-State: AOAM532iDe7FaAAfE6pZjhFt9jXV44TwlBm6GNmz9latU1AHPLHLVwKr
	bx44BLNj9jwsv4CGHg/TPtg=
X-Google-Smtp-Source: ABdhPJwn0k9QziWoJpZWOaViIO43h+yknGuW3+ROBX6zjVmzNBbMddJ5nB4qXNCQoQ2wzkUNvgBhGw==
X-Received: by 2002:a4a:ca14:: with SMTP id w20mr3912855ooq.42.1589468542999;
        Thu, 14 May 2020 08:02:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:64d0:: with SMTP id n16ls617672otl.0.gmail; Thu, 14 May
 2020 08:02:22 -0700 (PDT)
X-Received: by 2002:a9d:7988:: with SMTP id h8mr3910623otm.191.1589468542582;
        Thu, 14 May 2020 08:02:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468542; cv=none;
        d=google.com; s=arc-20160816;
        b=wObOL3oLu7JM7p1SOBOquxSDaVOp534hLpRsxocuiPGpvef9vlIHjtdVugNIjE4DzX
         4m/39reseXqUzqbCk5bku1aL78ayphP1VaUJko26B83yt43dR2B/1rozULzdTtGhkZiz
         NRNAtfZXgQhRjQNcJ3S6diAPDpt2l3Ennu2h3bkI3ndfgGrghPD1PwvHQkMDfV50w9k6
         xW7dsbSoKXF/xEy8YAMEf5/HeX3xmvzx0KqIAWkPJsHHgEsBhwhPEvDuBqXuO6w9DUJg
         uQL6iHDqQ1H4vUUrMoX2bMGoQeF3CJiucF8o6SH4i7Vcb+Y+hZ+qpOA1YlIH6ch77PL5
         OOnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=A6Ssxj35tS9GKAgo2Zr1tIo9MC9TfYgCsCUFdbPngV8=;
        b=Tbfx4h5C0D5Sg8+c33q04q6D34A9j1R2e3xVHl6QspK2lVuXuYXO/vgK1CYpQ1JUJr
         AQxZrCIFYGIiYQiPClZioVz56VeVqMpPni251Czklg7d0sJ0IND1kIEIc2UUwyWylqo2
         MkjoCmHJ0eTH2RbAGHQWoNn1F1Stweoooms5jIIFuu6S7HUoSKDnlKgQ+S3rNRQLedld
         501YUpeG4tTIj21fFCQp1i6PvZV8p7qrZ/P1vgCwe5+P8tSOljZnwturY9HehpHt7W6s
         VebdUF4g9sB+xZVQHS6zw5+rZ1oVShElrjza7sQyHeDJyCQIXYIsXbjmdngSWfJS8w26
         d+Zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=jAYRbfcZ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id h17si322985otk.1.2020.05.14.08.02.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:02:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF13Ij032820;
	Thu, 14 May 2020 10:01:03 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF13Ox104208
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:01:03 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:01:03 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:01:03 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgB0019279;
	Thu, 14 May 2020 10:00:59 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann
	<arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Tom Joseph
	<tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring
	<robh+dt@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet
	<corbet@lwn.net>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 16/19] PCI: Add TI J721E device to pci ids
Date: Thu, 14 May 2020 20:29:24 +0530
Message-ID: <20200514145927.17555-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=jAYRbfcZ;       spf=pass
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

Add TI J721E device to the pci id database. Since this device has
a configurable PCIe endpoint, it could be used with different
drivers.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/misc/pci_endpoint_test.c | 1 -
 include/linux/pci_ids.h          | 1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/pci_endpoint_test.c b/drivers/misc/pci_endpoint_test.c
index a70b17e5dd9a..a322e60fcec4 100644
--- a/drivers/misc/pci_endpoint_test.c
+++ b/drivers/misc/pci_endpoint_test.c
@@ -68,7 +68,6 @@
 #define PCI_ENDPOINT_TEST_FLAGS			0x2c
 #define FLAG_USE_DMA				BIT(0)
 
-#define PCI_DEVICE_ID_TI_J721E			0xb00d
 #define PCI_DEVICE_ID_TI_AM654			0xb00c
 
 #define is_am654_pci_dev(pdev)		\
diff --git a/include/linux/pci_ids.h b/include/linux/pci_ids.h
index 1dfc4e1dcb94..1707e67cd088 100644
--- a/include/linux/pci_ids.h
+++ b/include/linux/pci_ids.h
@@ -879,6 +879,7 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-17-kishon%40ti.com.

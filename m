Return-Path: <linux-ntb+bncBCOOP4VF5IDRBAVPSH5QKGQEZWFB6YY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D0126F634
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:45:24 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id z2sf2835854plo.9
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:45:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411523; cv=pass;
        d=google.com; s=arc-20160816;
        b=btuKOecPyr5lvm6N8RjjKodmBi2pqR1zCRQbfiouBSpU3ZbM/L+hXgcc0vfFsQgSIK
         O7PLmJF6dVyrwA6MUlfvyJ3ksbmb3KmCdQRdSipUdMJFGJbdRlrcLdjuhqGwrh22r4Tu
         ap0Ney98IM5TV3NOk4aDpzvhPdCjIR7uTQd0eDl2JPolWmiumgbJO+iEHSpyw8bJqlsA
         pTVndQEJC04U5v+YSuK8T6duaFQpBmDIQPXqzpQ6batKa65jfk6/QbBLlEJgoq8nzEKX
         wx85bQLwfmzWuwIdg9IrGA8TbKwqrbyHofTQcFhUJN7TjuZiyewWzUpAEy31M6x5xDhg
         6//Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=j7O1EkFZpoRGzgYWPrbxXPjrSfVG09+KSUn+OF5XSGw=;
        b=Qruq4BO5DoUxVBDnxrvs8b00XaAS1EygqvDAEAnNXe1zo2BplnJo89ROHmcHRkzo/Z
         UchQOHbZpEikZSqjk0oyKo3+Xz6ebBpAwiiEtF72KgzrcxYzxVgGGdwpDs7YL8MuB7NE
         zX3nVkNcY52mXobqUO9rl0Cg5zjDNTlUCwQxjw5zxfRndPERosJ2Uketo2DPYo0X4Jgz
         KVx8V61V7mc+YmdULQRKOCCbqvbftva5/7rmANLKNxaESWqLOS2PA6EzFIl7104sr3SN
         A6TRLz5ygrc8g7BegBIT55aUG/ojl5k4rZ6FQUktlQwReMJfca7X7FI1FrKcojyOj9JA
         INlw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=foF0TR3Y;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j7O1EkFZpoRGzgYWPrbxXPjrSfVG09+KSUn+OF5XSGw=;
        b=Pevxv0WI+v/y23Dw3ISM6ALutU3jjB1jePT6qcIOK446flGgAfUVZgS9l5ENfPaH07
         zW5FfOYjsXrfLhbTIupQDkFFgN+PqrvNu25IvMFWyGWAnm56vz1nmpnrbIzWzojvZ2wW
         dK26kKk7ymfeUfqj7omyOcbyx8193VhQk5n8aV00XxuMaAAiwH8vd8LTFXqTkhCXcjG/
         pn+OMYf7+vbJgfidI0L6V2RH0++s5izJSfCo2u+05LA+/OiSuj8c3U+OIoDTTbEJxZNg
         C2wxXkFvx1W2ZEEr0l07A6ylmmHBRcAeLUGB7OqGg94t4iVNVxmaf56zAFjeS5aGbhE9
         Bi/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j7O1EkFZpoRGzgYWPrbxXPjrSfVG09+KSUn+OF5XSGw=;
        b=rQ4Y5by5zwx44kYRGzUOtDm7hr7a+Ekjs77NlGwrS4QbwEO2f3GsLLzwlesmYr7QJv
         2FW6Zvw3ugI+Sq04acn5pfPABCHmV+JvwAec3D/IRkh9Hhc+xxgC0eLdakLhU4ogMQDt
         vP96JYgniKOzvf1PaP1hcCIOcbM38kdHVH2ZKAdV45mwoxhbp75edvmp/D3qVRSIiNam
         D1jjxQ0Oyx3WkWSuXtCOy18D6d0x61fh4c6QY/pfX4w6DbRhhA7ixUD75jVnf644ob6H
         qpwOPPXxRI3BwOTgFOyjhyKoDb+5VKduL7ja5PdXrCcj4YtLPxkVntTsK7EGYiL2UobV
         KgAg==
X-Gm-Message-State: AOAM533TRV2WDETMqJ5BVvKD3+H80iOtrMz/EqALDd5K/rM0rFvaTOFK
	6mR3SVF0fYmudL2Xr/7NIWg=
X-Google-Smtp-Source: ABdhPJwGiQVsXCIQVQHf+HU+RSmd5JIOUUAEz73ktZEnRcSrZHFwNvuvCBIQeGiQ5OlJX2K3Tes0QA==
X-Received: by 2002:a63:2f02:: with SMTP id v2mr25292458pgv.369.1600411522718;
        Thu, 17 Sep 2020 23:45:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:9706:: with SMTP id a6ls1775584pfg.9.gmail; Thu, 17 Sep
 2020 23:45:22 -0700 (PDT)
X-Received: by 2002:a63:4b47:: with SMTP id k7mr12181377pgl.315.1600411522150;
        Thu, 17 Sep 2020 23:45:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411522; cv=none;
        d=google.com; s=arc-20160816;
        b=dW7+mcl2ovUrroPLx9Rs430Vvk6Ap+OWCmITiT9cYIMhgQ2Ep/f6djMWYOWctYQATl
         zmKKjgRea4n+9ZpLiWXNh1Xi6a7I+BIXE+qWnUvUvqYDfArA9RD2t5c0ft4yFDq8aE6t
         NQdkm8rZs5HhgVy8ULE3ynLiJZi5F2QT0ZbaYhgIC1v7YEeI0CmBfanXAG2VYSCRLA8R
         srncbHowgQNwWhDOBV8Pa2URQ8Vh6PNZzVgs4BRlGOyhrS7/Ty1E+s8EtEOY2tMtTj52
         m5umIxSimyOtJU5wgiL+dc2qtoy+nddkbBnMtD4ZEpMNkfXZQZ2M4txwH5piHT5FbxyL
         AXiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=mBDRi2H+5RmDLfb3VgWO2CxtWeit10rVqDT4xYAQnwU=;
        b=ALlO9FcaV3I2CgixfKR81cg7fcwXJdXJ/VJh6cQc6+UxwHm6D3EvfkzWpDH9vWP0AJ
         nUKIuPHOXXBdj6bnTtaKznQNlcTw5Tuf8wnovKNUUaqiEat+yJLR0hfPcS3YNMVRHwB1
         Qv20aERF6ZUJNmPNjHV2bFevWq3XYl0WLzL+2r33lf798S5MrZ6Q9ZPSJR9vFO9stQxO
         uIHd2hNACnGBN4MVtHV+vaQlFHwenuUrZzsD3nrNdvDJbk+ki1QS/cZKQ/m23Fht7oSk
         Ap9JflEhE4rPfx6KOoLd6sPMC/c0gTA4wPCsCgCqKbx6W8phCZaNZW8vbCPrEpL0yTYy
         GPKQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=foF0TR3Y;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id bk9si142399pjb.1.2020.09.17.23.45.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:45:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6jFCb128370;
	Fri, 18 Sep 2020 01:45:15 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6jFMO126350
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:45:15 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:45:14 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:45:15 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCX094595;
	Fri, 18 Sep 2020 01:45:09 -0500
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
Subject: [PATCH v5 13/17] PCI: Add TI J721E device to pci ids
Date: Fri, 18 Sep 2020 12:12:23 +0530
Message-ID: <20200918064227.1463-14-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=foF0TR3Y;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-14-kishon%40ti.com.

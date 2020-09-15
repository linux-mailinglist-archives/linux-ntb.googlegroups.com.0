Return-Path: <linux-ntb+bncBCOOP4VF5IDRBJEDQH5QKGQE3BD5GHA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id AC179269D15
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:23:01 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id q11sf1688408ilt.3
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:23:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143780; cv=pass;
        d=google.com; s=arc-20160816;
        b=ML7eCyeLubaxCPhuqx1Bws9sLpJLLs7wVTtOD7Q+s4jYpQo/yyS9PZjxRsnCedRCRb
         ZHo3VxntlDx+WqFbh2W2zy4mW+Dy8o+1rOfy0MV2CNpykZ47Xi5heWhGMuqIyYjfjH+D
         TTJdaPdooBwXfna+cm2IIpdNW3L/Th0Nh2NglqUIMF+u+caxXRXnVSZBBZVPRKSQV0XE
         k82mekYRjeGRIGkJ4kdNCQdM6C7xJvYKoQeY17tnb5+cFj3xHqOJ0N7o5HA57Oq/UpXH
         Qam4s+TpYJrgbBOau4Y1I2y8GLvxCzmy1bvKepExj3jBAxzUP1PQ3GYHIVs75XcQjGZ6
         eWbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ahU+yhT1rYHL/vOgtnc9bNqxhEk4vuBpcbdKEup+gRM=;
        b=h/J0UmwXlJBAEnvjkL5Q4YSrCNjvQzRp4tCWgKk/nhRhkwQUlVkWc6cihutPK+fdmc
         ljGACwmoYu05i3vsZGU9+LvZpVskn9vdAnkaxpiSRSoOSN5K91tXar43THKjzzHHj6K9
         uyxFg5JjAw+LILToNXFAQit7zGFel83FP/VJjepOymfi7L42STR7oZONsot8U8AkDZ00
         hUIsbTTLOTQB7AOxZ+Ex8uT2jY7Hiq8TKTvZ1lOAv9A0qPelj3UE9m3zTQYZEEHHKlq4
         8H7timB04mcyj4fNY9ny65kz9tYifZZj2RExn9D5iqWisCrQRhP4hk7nCyVgBwn0R1Eg
         6O6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=duhLDC5l;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ahU+yhT1rYHL/vOgtnc9bNqxhEk4vuBpcbdKEup+gRM=;
        b=WwUwkK6G/mtBe7gQvSwV2tIHMt+OYhQUpVhAP3Vd/aHLI+cRXfrh3A0VHC2MENl03v
         X5ULWna0B4RLXZ+v9rrLFjc9ux7R1EeuFBUH1RaTZgy2Ip0b3gkXFXnsS1en1x16Zqv9
         03rpKQUXhhbuq/TgbSLMaA0ekrMp5lCR6NL6T6T7DTRIIBqorJdGTtN31bTpjjqWalNf
         lMmevctGNqrdQGtSXsJCe3yK2ANFKsOt5YUQg3Z3WP4Qlced2E5NG+OCNC+CFRp3VUCZ
         kYzjb5+bCFl1x79BDgDrMG+L36RFCsstopOgml1JkR1yAWq31PwcvTV/JH2hqKlt+IkQ
         s4pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ahU+yhT1rYHL/vOgtnc9bNqxhEk4vuBpcbdKEup+gRM=;
        b=F9VEeNl0u59WJoAc0pYFwXvg8E6Tr2ppfBQw38X4PTQ4HxbIVRMHAoY4z+o7PSxNPC
         1Xf2SS+wKOez7Lh+BqHZc5hRW67ya9MARPDYljcVbIKoRkO3VB3eFQtVuj1mhRzqi+Dm
         KtziP6hJntburFYcbAjKc1fKn7O40/gQD8Os3K8MVEEPNQh8oLnTw1oz82QkNcCo3kQC
         eSA5kFfzIQMqkjF7m+CNpKM29x5TcwVsyheU5YlO9XiH42sKYgBp+/Hte7Pvo9/NpJPr
         o90dqbLC56cjT38AXXJkfoApYAahDmYgTFoAamcBO7Fk4egntQMUBKSHHvx9IVkAckaj
         XFbQ==
X-Gm-Message-State: AOAM531zsnpiJk7ab+ebx9/ym6arlFCRmTzyrAeCYQ/yjVAVAp2yXy2v
	Fss0mbXERinp45UX+zFjBo8=
X-Google-Smtp-Source: ABdhPJxWigI6w5X8jf8BlnTtH4j+LerLxudyZ9N08Kw60KpErjrhUUVrg5MPYG/tSXpw8iiCx3ImlQ==
X-Received: by 2002:a92:9186:: with SMTP id e6mr13739357ill.278.1600143780646;
        Mon, 14 Sep 2020 21:23:00 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:c9ca:: with SMTP id c10ls1611508jap.11.gmail; Mon, 14
 Sep 2020 21:23:00 -0700 (PDT)
X-Received: by 2002:a02:c486:: with SMTP id t6mr16905505jam.131.1600143780308;
        Mon, 14 Sep 2020 21:23:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143780; cv=none;
        d=google.com; s=arc-20160816;
        b=CMkFfuvrPTPmp9RHltgjbDG5K3Op5G4oz6sdir5J9xFK9FMoatbtEpM6NFAgwoFxN+
         sBBAPu96h0mGd9iqK9M0GSDXxz9BWSpBkUD6A858x9RQgfcLa4V3v3xePuKWGjB/nvF+
         vnJuGMWFdSrty36l2PrxEqg415+HTv//c4TKmJaCp5qisUOvPgHCzvjsmmR1VMRH927m
         rDZJv8uv/OaAOmBm2LH7lNaz7wTr+tpz/np3WPXw7O5mZkEDayyITkGEtLEc4bNp8vjO
         MMhXOH8DOrAtGmeNAZdQJbp4shYGjk2gHpX5NrGoz4uj8C2n4mdmYAJLYbUuUdWCViQL
         f96g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=mBDRi2H+5RmDLfb3VgWO2CxtWeit10rVqDT4xYAQnwU=;
        b=ZVSWV8YoI+7lheuDef6BBZLObDXF12IBe39l0cEYMMwuHCPil3UW/vC5ADvu5ErNhM
         CahNQSYrXSFK0XnaTxy4/956f3e9fEA+D6F4nFLkBjE1ADdjdfW/FqDnJCwAuDqegD+H
         viZueKiSSsxctH0AEXg5gemY7K7sfHwhddFQjYOKUaGzkvvwC+eL9X2lSYgSX/kd4xdl
         7tIVNfr1iJUZoT5EPd0C+zwKKcAQctjWsA2ZGdkEl/6aS7ZXWyur8I9oYmkRLkY/Iwt4
         nzR73ywEmsmE3M/tBKsOjEjNUXwCYTmRQuSWS8jrBWzo33ra6FFGdUpDXVSS8n4KIZXS
         z+3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=duhLDC5l;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id z85si583109ilk.1.2020.09.14.21.23.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:23:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4MpQF001609;
	Mon, 14 Sep 2020 23:22:51 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4Mpdr044406
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:22:51 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:22:51 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:22:51 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMt028615;
	Mon, 14 Sep 2020 23:22:46 -0500
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
Subject: [PATCH v4 13/17] PCI: Add TI J721E device to pci ids
Date: Tue, 15 Sep 2020 09:51:06 +0530
Message-ID: <20200915042110.3015-14-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=duhLDC5l;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-14-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBMF34GAAMGQEPCUKL7A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE9230B10C
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:59:46 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id e23sf2833778pfl.20
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:59:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209584; cv=pass;
        d=google.com; s=arc-20160816;
        b=wqu28d+J0qlRD83yDKEgRcK+wpOmKcRCu4H8JIR/9e6FHAqOKFHdXB9MkzF4YPEAY6
         om7IeIIkIFchvE1Yc8bdxXcZuJzrZ8pj+gO9J/jjGInqwO0NVHmsmdii+f2y1e2Gvnaa
         ZhAKqxtnLY7EE2qteSYzQAy2pYABUnkgBy/zVflwa4sySsGHdiGpBeM5wzHULmQo59ht
         GhiPm79WDbJ8wqMyxiPVYXqRvDSLFJodR81WYAIxGPADemfWJP0ibWCNOjc23M+HdbTe
         ads3YfHqEizqO6JRmQfb4tIcQdg/WUR8icT+KjgRCMbqyJqce1dwTnOZTPxQ/trz/w9R
         CgIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9kRcJU1grAfmmLielTLWU2bb6bcYzy6InBA4nLo9+oE=;
        b=QWfLjc9aZIdAdUa3xH6Vmgg7kDJcej0+YBJEG3uHBUjI2JgXrepAeKZ8tZZTSVgl0C
         wOBKqZoRQOt+wuhheP3HCwzSzPTLkyEs3dR8YesECQ5ijaqhtLsHgQCfOTbZkWC20VHv
         eNo52sAYwiVp5JfXrTBbdZkzer/hcKET3AUgXBejZInznbgOsXpa6d/zGvKH4vp8/MuV
         ky3mXVYutJZkLjmG/IS4R0FOHrhFEP23cDHLZ53GOcjgzPtZfsvGQnmI/L1TggOf7mJL
         jSZEjgoFEHNVs0RsM45NiIoKst+NoXpVqIlKUTqw68kih3DXZaias7TqDRtCvIhkm1OA
         IREA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="APLRnJ/Q";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9kRcJU1grAfmmLielTLWU2bb6bcYzy6InBA4nLo9+oE=;
        b=HToGCOsOadMb4l+39vtLz/Vy3dKFnsRBi+/2MVjmlV5BVRV08kTt10JrxoRSgqhkax
         kSesk8+zoj8Ls5bXnjV1Y12bnuA5Wkj3C4lChudLqRwEpZC6cFBJfKnG8EQ9cSrd648n
         LRCH7sbdKSCiA/DRYQSFg8tb4GuTTVH7qz4mGgztFye89mq5Jy/F2QPJB/xcPNxR1QH0
         MoO+ZI3RrSjZfv7UIuZVUcU/TBa3W3fjyB88WHCnT7kit1TO3pn5GiqRQxdDuQx722Wq
         iVHgTnCzdhmnPm7gRrRr73IGLZcNwVmi1auJftmTe1rh6G7cTRlNuthgSI+JBxyPw8Ny
         hMEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9kRcJU1grAfmmLielTLWU2bb6bcYzy6InBA4nLo9+oE=;
        b=KYVjSLUQMCn2tW1ubPREwiY6l2wUHVfgn9WrHaM7E7sA8aF0JtdT3Ys8Sj9dmfhY6R
         wG+0te7F29445eue5GhJA/DuE+02jvW/tUoA6DRKKDxlodjzoyLlOoSJsdQo7wJTj3FZ
         L5a9ytCr81EKHP+RRwqy90WL5mRO4uxS1SApXBAlEgAyqaZEAx1iLUjri9tD/XEvrm6Z
         5z18syPvEjXhFxeLSWqaoh2icZWU1a3EOyTnUTQxKa7/TEd2gYX5JIfjgf/GBIBQRfQ3
         rYFoKQsGIUV4E90pQqcjLjQhk6/flwalehgUfIvct4HFToHdXHJokO3XaYsKqnDWil7W
         la/A==
X-Gm-Message-State: AOAM530bAEbf0fkO2aTZm+orpYpk6Fp5lAhA2H39rBgSFjdJ7lhP4Ngk
	jsPL8+8rP4R59Y7sqByoxJk=
X-Google-Smtp-Source: ABdhPJxMGXeQimwYKhVR5V227lsLoZ66lbN0mExrado8O+D12z/WgHjjsKfJFXOlRzq9PeZqt4oKlg==
X-Received: by 2002:a65:418b:: with SMTP id a11mr18645506pgq.231.1612209584797;
        Mon, 01 Feb 2021 11:59:44 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:ed85:: with SMTP id e5ls8798882plj.2.gmail; Mon, 01
 Feb 2021 11:59:44 -0800 (PST)
X-Received: by 2002:a17:90a:5b05:: with SMTP id o5mr493057pji.109.1612209584134;
        Mon, 01 Feb 2021 11:59:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209584; cv=none;
        d=google.com; s=arc-20160816;
        b=FVKhaFRH6nO23oMfzxPy4ajg3+hov37AFpJXBFuH4gf/hc4JHc5WXP1+cdOibDOBzE
         cF9qgeNeIW7s9hbKHlfhFVkv6KFC0CWwYgtn+pXHrOLR6qwse9+5NFc+TUnyu1IpgoLT
         kRhzi8hE7xI88EwvJK9v+OzL7PbWTzcwyFXGiOvAlnHQgs069VqqxZgdaNpO1mPxOjHi
         ZZ81EgRkbgAl+xgNeyIioHn3D2NDdHwkcgRWEQDLJC9UHo8XLkTLq3w9+TftxhdmWlu3
         AO6WmzJqhlqEktK1W0sct1MV5k4EzEo47bPKnPmWfPxwiGXOgehE/EFEfeUL0yAbvCAW
         CMUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=EuXUXQ2MK6XQb++j+zAUk27hVnYjozn7DI26CkPIRjg=;
        b=pGs9kF5Qjko+6TFWcvQELcTgZ8OsGsfm6IOBPG7+xY1uSAp8QsNVVDFtYeXOJ7T0Ua
         ijvaJaREGc6NQ5wqdiTgJFpP7xQDgm5a1ehCGgmBf+g6mg7MYb9pOu4NACT6aPfRNfFa
         n7UkOLejH+zsnxl3g2Ym+Ey2DW6E7YmEho0jI2D1FHqCk5ZN5KPVnGrSSatP6q1nhw1e
         DaRrVBmdftBdqJuRkHMi4rBHVv0v/RmvFs/eZQHwQgpc06tyVjCEosGvRu4vgxfupSz3
         a8JIdwX1kWiYmUtCf48DCDdXPv07RL1vr10zNRTvyQ4Awi/t3srUaUthYLjbexJ1zaTs
         FgTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="APLRnJ/Q";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id d13si1181908pgm.5.2021.02.01.11.59.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:59:44 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111JxYsS024167;
	Mon, 1 Feb 2021 13:59:34 -0600
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111JxYU4102086
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:59:34 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:59:34 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:59:34 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQl085814;
	Mon, 1 Feb 2021 13:59:29 -0600
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
Subject: [PATCH v11 14/17] PCI: Add TI J721E device to pci ids
Date: Tue, 2 Feb 2021 01:28:06 +0530
Message-ID: <20210201195809.7342-15-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="APLRnJ/Q";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-15-kishon%40ti.com.

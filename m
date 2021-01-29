Return-Path: <linux-ntb+bncBCOOP4VF5IDRB74F2CAAMGQE5JPDKIY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E56F308918
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:43:46 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id e63sf3962903oib.21
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:43:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924225; cv=pass;
        d=google.com; s=arc-20160816;
        b=R8TuXhAIdBVvLJzIBE0T4qWEQJe7LgQey3TQ9PGHiwhT8Bhc+OCUcyMfGHDwwEReKY
         ck95HIDzbiuHWQGAl3csplEE8HuA+R0qllNAalUyjc1uUTmAGZ2pIxwTqQQKN+R1NHit
         /DUtzoaOsQHtDXC1rIxvQ3J2WaEf0zGydfKDWgyxWQonnjetU3AubHsydBT5ZUyMW6vL
         za+neJBoxqMlMpi9Jz0z9Dgn9ly2aTKYOi4Y0jLZvy0xq9VynALmTH3YUN1xDOuZCY1i
         oA+kwtvfAofeoa9tCNZQNRE0kSDz9uWNC6EepBOMh0FnI9YZhiLyA5VG7ltT1aBEqwNp
         ookA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=RTcCpYes5XOon7QokJSgzs7bR1dhdmGLOWvSWEjdYPI=;
        b=VL6pB/3XQ1dTVdubqO5+y05LB56P4kESlWzTxza7BZe06M45ExVqagSyeSP2rYDh3n
         WXHq1yMYgZ1j5mt0EytKSgwjtfjHrRCxrbvR2DNldCHahh6F7IJK8ks7Nac9zp/xuORG
         oh3C0XTv3g4ETrfquql1Rlt9Mr5FJtn+8+0k3+gk6qPGvOcwYXBBs1904WXy58uwzVvC
         7+JQs6wiSfsfRpUjRKO9Rn1aXPW0Jsnziuu+QawCDdSYna5Kgn8/zspPSXZgo+Pse9Wz
         b09aPdR8pskMUVG6wIM9Ss98Agv7gudZ2073JjtBx+ZqwHjmb9GfnnEh0ZH/uzchkO7l
         jZgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Z4r0KUww;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RTcCpYes5XOon7QokJSgzs7bR1dhdmGLOWvSWEjdYPI=;
        b=KR6/R1UFnH58fnd/hjS2iNQMUL61Re+3c7G8n/gan/sk2dO0XIxXVAKNgtANBb1orL
         03sVPsg7N5bANGmqlykF9K4MsSbWbZg/aqLKTl4JHkxHGA+nSZ4OZjkdXVkpKz8ysYdv
         uanBq4C+BxVHTMPMEU6dcEyaOLF9V3XUlR8KGUJjxFyKjvXL4UywGsj+RkQjSXQquKhw
         Lrd01rQCeZ2H/xqvIDvBH6Jx+taRvTslt9Bp9QoR70c+FeO7glfo1EHJNM4vnMuGgH1Y
         f7U5favmOOLPak4rrz9ogevVqtNqkd9QMeALTdct6eJldYQNow6Nkpkbt3NU52KPYylX
         N/JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RTcCpYes5XOon7QokJSgzs7bR1dhdmGLOWvSWEjdYPI=;
        b=a19fwOYh7JevkMglVXEoREI7ztx6hAPSEwTW1uu0JmVf1NFip0GGw/xLatWgA8AWoJ
         3HNQzSJIcwotA1OUdAchOuiMz207G3GrY+d9oFcdIGF7vJWfYAmxUicjDkajmW4lbEmY
         Aawd0cyMcb0pzt3BuZlJBZ/bxrxX6TNq80/59AnQuNsM9Inv+HZfGjshg3kWb7FxRhWn
         q6vJ1WrxoDQTO4MFYlktuEoYiT8tbHnnWsu3WF/2fHdrznFXOh8MBM3XhTDp1oQuCUQK
         96rwcmwUanCvnZtUvEfVkKw9aOrgAkxVTZzbvKg4UAjYLxE+3rUA253YUSRfpsOGl2eT
         VuuQ==
X-Gm-Message-State: AOAM531x5qc23hL2qal6zm9gpQaBX7oL9OFx+89llGLeNQ0vTlPTUAIW
	guuNQWfjwI0BmfZj8p5sLPA=
X-Google-Smtp-Source: ABdhPJy+8k/ojYxpk/3FcLbW3pJx4bLh0hrxo2Mxm8zJL9P5UprkqyFyov6XncCRVszW9RjLEOe8ww==
X-Received: by 2002:a9d:7d12:: with SMTP id v18mr2787821otn.205.1611924223415;
        Fri, 29 Jan 2021 04:43:43 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1592:: with SMTP id i18ls2106519otr.10.gmail; Fri,
 29 Jan 2021 04:43:42 -0800 (PST)
X-Received: by 2002:a9d:3b7:: with SMTP id f52mr2674742otf.265.1611924222346;
        Fri, 29 Jan 2021 04:43:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924222; cv=none;
        d=google.com; s=arc-20160816;
        b=s0q+f4tkW70pq2FMO3pzYEywVlo3METN8AFj06YmTXNHXp4al3jliMFWXoJEJGWRZ3
         82YAxui1Y7lSkto5inPGBe8gmfrNwEnDVyFcfa5J+2FS0PvydUE64Vs6JKUn4VuI6L/O
         ANuLCu1yRcSfakaNYVU27B/iQ9z7z6A+0UWUSNwM1Uusj0DckL5hMJK/dPN78oU6S8/o
         MQ4v+i/SDoubqdYTV8y8eEetQOEWxUreWqe+iBNS+TQuoBXIgfUgIkH5IXTmraRZJQoy
         pfpr+90H0flXyDAT/iq4eL1PiKdZzWZYHFRFlfZo8xJwMt+mbPkBF1SN1j4BbI8PYiyo
         4Mtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=re6MIOXxybv+Yv493YnPwG3dJx5wl6L6fPllpFd+bzs=;
        b=yoVgPEw697oYg8Owd4OToaropEuygghF7ZyvlsUX7kKNoYoNQZZISOMbApQdXkhvP4
         1JTXbMAJSBhXk5XmDaXnhKomO/P5hC6uQeI9udBV5bqyF7ExK5JDHgSDImWSUw+CXq7a
         RC4hnAqpF4w5bqRwo9oOdtK8BVwYXoPChgvmTU8u+exn/7mnUhqeGBAJIzOdnap705x+
         W6XLXz2nHBCjBU4UjwI4vQ4CWflAFMIFQ8zvl8N0InjXf0HzKCqoEd1n6+etzlxZyU8Y
         vZCMhrxD4W84gyOK4AcnGLCcET3lDR3v9PVe5I0ZaShWCJFlmUok6IpBUO8rBIyv626n
         fZGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Z4r0KUww;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id r13si418593otd.3.2021.01.29.04.43.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:43:41 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TChWbR024134;
	Fri, 29 Jan 2021 06:43:32 -0600
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TChWlW012068
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:43:32 -0600
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:43:31 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:43:31 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDW1075758;
	Fri, 29 Jan 2021 06:43:26 -0600
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
Subject: [PATCH v10 02/17] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Fri, 29 Jan 2021 18:12:58 +0530
Message-ID: <20210129124313.28549-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Z4r0KUww;       spf=pass
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

pci_epc_get_first_free_bar() uses only "reserved_bar" member in
epc_features to get the first unreserved BAR. However if the
reserved BAR is also a 64-bit BAR, then the next BAR shouldn't be
returned (since 64-bit BAR uses two BARs).

Make pci_epc_get_first_free_bar() take into account 64 bit BAR while
returning the first free unreserved BAR.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index cadd3db0cbb0..25e57672e1a1 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -93,12 +93,20 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features)
 {
-	int free_bar;
+	unsigned long free_bar;
 
 	if (!epc_features)
 		return 0;
 
-	free_bar = ffz(epc_features->reserved_bar);
+	/* Find if the reserved BAR is also a 64-bit BAR */
+	free_bar = epc_features->reserved_bar & epc_features->bar_fixed_64bit;
+
+	/* Set the adjacent bit if the reserved BAR is also a 64-bit BAR */
+	free_bar <<= 1;
+	free_bar |= epc_features->reserved_bar;
+
+	/* Now find the free BAR */
+	free_bar = ffz(free_bar);
 	if (free_bar > 5)
 		return 0;
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-3-kishon%40ti.com.

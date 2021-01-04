Return-Path: <linux-ntb+bncBCOOP4VF5IDRBJ7JZT7QKGQE2UV72JA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id A4C602E9898
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:30:48 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id x19sf25435905qvv.16
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:30:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774247; cv=pass;
        d=google.com; s=arc-20160816;
        b=DA8djAEaPA6+QvS5dXcrqUq42YbH8PNhP0HFvH99ihCUtn0EApp+FZAHHkLvZ+5lmX
         5F9YkEPx9kjfEtBHaXtzTR4xRP5jHAKac6D/d/bOyuRCFcBdCg6SH7Lr2yiVLxUvdYbH
         1vZwNGh36XLVdbLfO+5q1guFOs8ZA7X2sCtP6B3AuLYiDpfKDWKtvmaL+98rLc6XQtEA
         lTFtRktmyN+dg7q/9HSzMjtkSKwQ9+w1/ioR3kj1mTaAFyKPJlNJ/8IL5qhsLqRzb75p
         aIZr7Ub18zlkdNDJIaVJWNtA5Et3OXRQH8We398kjWLtsgswVa23awpx1z4DIeQ9SyWX
         JY/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=N+LxSQK96fqzn76GOF+90onot1O+cCnVdP4mMuyLPOw=;
        b=aJ8QWyQ82VYAKd7oh17sTKZ49vsQhiMS+8+qaRjKJJUTGh2mjNxOTRLAHsfqqV/Og9
         v0cWQNxCxvh5dQGUXMBaHGCHhl2qpZe9dfwLphM+xWtaYTLMJbLRTpcnpUvRvKe5LVjf
         kbq3ZPyfjvQ+5gdBUT8yhkSgTN2WfJCjFzmT40sQ3R9UH8dWDq4SvWrNfFOu75//BMZR
         3uNHks1l1Ruk4FJZnAnWTk/OmwoEWOlasQauxnzNhU1C+R2wxCMaOPpU0E7lOFFWsa5w
         X/YLV3rMgHWJTSy9xvmsrzaEp+9ZXHh6OY8Fltlx3uwfvJPrbGIjyC8qWq6vu1LaVROw
         xKww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZYv96LuS;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N+LxSQK96fqzn76GOF+90onot1O+cCnVdP4mMuyLPOw=;
        b=qIknoEsNBP6/IqLgbjnwqJQFtwo8SyKOeEG8FYkJmp6VN/jEBWSQOmxR6wb8ct1iAh
         wK+vBw9MZSIz7NbuIGy1h9Ywx2tm8MlnPQMG0MH2o+ZCCkNX4XJpFRLojX4XhcKkcvlH
         1TONUZgg+Pk94Z9IaLkapDsElx5GONMh+uqp5N421Nx4eiI+OVgz5SFZ7L1ItVf6JjDY
         idn+q5lgqSRR10bZ7Bn3G0JlGsf0vdq4dNMY6bDgaxP4Eb4YaFnDo9u4l7S3MF94QycK
         qaxIYvqjLbdxV0MexuY/RqtFAfyPWRAbRVewFrIr9CtNoMjIW7HyXlE8KkQP0hwV0ON8
         px9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N+LxSQK96fqzn76GOF+90onot1O+cCnVdP4mMuyLPOw=;
        b=h9uqdjLvBH9X17Nuy3eoMy8wO1YSkbTZfxVBhLbVuGEiFUfi56HbWIZCYodmLJIzCE
         eoQ0Ej4EVe7C+inR4vkgYG2WJOwwM1/7oi8s7hFiEQcQwpmNJ5Z78H4ruNLbYqRLeOgi
         SI7UwDRtSMzV6qYwUKah1t39UyUq6urbY1O+t7RGVWNr3k/VmNdzQzNmHpa4nuykog5m
         w29ydAcyeznVEA4UUuaJ3+/v+t2wRcEdujWw1ZXqFfEYlPjKcwowOO6NaQWbx6JM+VyD
         oI3zdp5jrbj+E+gNKIOdk217lODS4ZmSqjBG6RNV/kit78+ZRbkQmYPzaMJ6ncquFnnK
         yTwA==
X-Gm-Message-State: AOAM530479Nt716wC2CE/7SA6Mf29m78zV6IIkrxYKmuuwhRShw3mWIE
	HhKpjCx/NlYlW2e/B+p4JS8=
X-Google-Smtp-Source: ABdhPJyWW8X7CIs5KI7SkOqcN5GtV6Jyq/rBkrbUdbnk/48kbY6ny+gubVgLm+ikqgO68bjxmCIW6w==
X-Received: by 2002:a37:2f85:: with SMTP id v127mr35268758qkh.18.1609774247762;
        Mon, 04 Jan 2021 07:30:47 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:132f:: with SMTP id p15ls31068567qkj.0.gmail; Mon,
 04 Jan 2021 07:30:47 -0800 (PST)
X-Received: by 2002:a37:90c5:: with SMTP id s188mr60531940qkd.128.1609774246995;
        Mon, 04 Jan 2021 07:30:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774246; cv=none;
        d=google.com; s=arc-20160816;
        b=esaz3uu++U3iYeLXjmBz3/p2XvuSA/EH4xMF8O6m86JD7kH3Ncq8g3L2XaaYMvc/1m
         6mKY3GP4KyiW7gITTgaTz6oWc+fVA2CDLXUtSHl1WAPI7+fET46g6TBR/TLbV7Xt9EhO
         Ypo3HkaQnZyq3mSzZ+9HNyEiWkcl1grWZmmKNeqDdCTEXa7tldFNvT1yvHvceKMLhMTD
         LLJP5/OwPwjXBUZP7ciDHdtDqekgnqESUucAV4RpGdY/Hm04Rye0jSI55Qovna9XLJWO
         m4XiF+P4K33VWJit2rkyPsUXTZVJ7wUHMAKpC2h/NmIXHy7SMzcRRmPEmL5OKfkxses7
         XVvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=EuXUXQ2MK6XQb++j+zAUk27hVnYjozn7DI26CkPIRjg=;
        b=PCrIIsoRDzmkhGGzD6pBQ+tTHz5y1FBVWJ+8btrU9wNDe9DT2VpiSX+2PdK0zRYQL9
         q7okgFEAyIwdhFVKIIwcw4F+m5Y38TjQD6VoUrd6O5ZFDCGzeiY22jqHkXp7ZcvAcc6L
         MAjQij+zghy20CNyQmIwF//3Df/m/QW75Ss0PmccY6lkihuQtZp8Oaa1PM6b/aOtJa90
         +tD3EguXfYt1WqMdX0n+KyCv6zYXSOExjcJMXHmIgpe30NusLMK9EM/hBjnzwc3Um4ek
         mO9k63MF0IMcnmvKjhiq8Dc0/PpTDSZtzv+ne07d3GszTeAePss56L5ptSMtJ4CHFayR
         B8Qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZYv96LuS;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id f21si5069568qtx.5.2021.01.04.07.30.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:30:46 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FUeZk029969;
	Mon, 4 Jan 2021 09:30:40 -0600
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FUee5079859
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:30:40 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:30:39 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:30:39 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZK093710;
	Mon, 4 Jan 2021 09:30:34 -0600
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
Subject: [PATCH v9 14/17] PCI: Add TI J721E device to pci ids
Date: Mon, 4 Jan 2021 20:59:06 +0530
Message-ID: <20210104152909.22038-15-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ZYv96LuS;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-15-kishon%40ti.com.

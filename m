Return-Path: <linux-ntb+bncBCOOP4VF5IDRBS4G2CAAMGQEQGIX6KQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D04330892A
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:45:00 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id y62sf738111oiy.15
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:45:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924299; cv=pass;
        d=google.com; s=arc-20160816;
        b=T9wmABls0iWGM5JlHAZYE99VPBYKPNuX70psY+zaYVVAmeqX1nWQvK87qQSY2XCcWE
         YBOH9PJ/vBQ9ngG7Qnsw7TCRPR6LDaTp3HuiY93dR8lybQqa4vljvndehnsTke/zSxB/
         MnET96TNFFqSa9qhnOQQMNN69r9GfoCur5J5+l79E+9rrnijk4KUVXdlaww6uxSp3COi
         FvAN8747CH7xedSeiCaEfQwwupGMl5PIZiwqdsIgrUNtQuls33F0IRDBaTAyzIPExUCN
         hCOTIg4Lm3WVFF46FW8kR7P4mcOHukO8qZW0RirZXt8kaf0c8qtdjvq4spcGeelkSjlI
         IsGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=udEpbH5QRHj0GHpKaEeT2ODyO+w0J6/f+XGHoCztXVM=;
        b=uWCwWO+/WWXE8XNJI8XvmySmdKh+d46yiWLCz/ctcN4Osb9+Ex6c93E8eGq6+GoLqJ
         9dMhDtNcD3Ur4fq1p1C0T8jzz7bIHhSyToHwxz0GY2GwGJphM74n8vVFb9EUMGbU8Hr1
         8WCLKglddVQO38BNDIUKVx8cDnOyp7jjRMmYhh9S+eSZjp6GMxNAUx2HCaNOfXkEn1Hf
         Tkttvr5cimB3L7oSsmDiDyzLqbUvyedVsXCZ+678clbvanN8y/XXZHMoV3jji/TP35qe
         /Y5MMiPt7K40o5ingHvGmf8ORwjSSdRtD7pFSDorJdrMCIF+oND1dMBRmX2LKUOJaIs+
         ow4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="v5Ex8As/";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=udEpbH5QRHj0GHpKaEeT2ODyO+w0J6/f+XGHoCztXVM=;
        b=m5XNHiVpqbR1+GYIsdzlVDC34xH3rwZ/WCOOKR6ba0QWZ5KJfJ8QpZaxKAmgpeJ+ZV
         C2NEVwWao9WwZ3mmgjpZGR8Y2X5V0NcZyTHbfKEnqBW+ZuP8J1P9swhJvAzilfiewx5A
         szbzfk7rXH9Id2vR5Km0rxr/B5gpkLv8i4J/lCh1l9uwWsIOqJfkfSNItLsLiZzLnBhP
         uG8900XnRFGZ4C5loOxHb7gZSQj0IJ9Gori2XC6BbLxHhewehW2TFIEExCO/QJRx4YQa
         ZE5QMoSdOAnHkdiv60Sl8EUsLSWFTvDLtsjbho1rAcbmFaasV+MUhpVZgKOuaxe6jUiN
         ZM8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=udEpbH5QRHj0GHpKaEeT2ODyO+w0J6/f+XGHoCztXVM=;
        b=ix5kEFd7+LMEJK5Jj9NXs3GBeAjXdObmKdPd2Vs5ryZ8w0XQF0mHMTgFLYccC0MY4K
         MN8XrbFEOuhBwyCdAf69ousrEjCNn2Vf/ACzXmTjPzDSXlRr5LekWKZCEde7s3xwAcl7
         ce2+LsMBCDOOot0ALh8mcRR+y7EVEGJAd73+9ZvE+Jf/3jC3qMPmUgHPFMb6+EEI1xyC
         7cNsrqJEFBTY7Sg9CVbrZ/VPdeevjNSXifqbRBw8VNnLG6NzelxLRRkkaqKLBNC2wf0z
         F7qNU+FXP6XNgnpHUBQXh0X9HOztJyD1syFysjsga7UmamP0M5TSJs2cZmgF6bb/pQHC
         JLxw==
X-Gm-Message-State: AOAM530ikzlmrObHDLneu5UAhuy0avajrG0jtTPb84goGvCvBnM6dca6
	PfOosiGVosuuVAgcpEojtLU=
X-Google-Smtp-Source: ABdhPJyEv8VA/hUBxnLbhqhJatomxLUdl/2wrdHlte9k2QvNuNWy75gJvoeWJm76+fA5fkv6YllzQg==
X-Received: by 2002:a05:6830:1d89:: with SMTP id y9mr2820817oti.346.1611924299617;
        Fri, 29 Jan 2021 04:44:59 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:2185:: with SMTP id u127ls547172oou.8.gmail; Fri, 29 Jan
 2021 04:44:59 -0800 (PST)
X-Received: by 2002:a4a:d891:: with SMTP id b17mr2968927oov.28.1611924299336;
        Fri, 29 Jan 2021 04:44:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924299; cv=none;
        d=google.com; s=arc-20160816;
        b=UxUhzapyLYekCLbsior1vEhwqheM6rD35+nL9XFh1yZ6RP+qjyETPA6I/+wbnXAIV/
         aImwjplAEjq8JTbiFkqiaUX1+gIRYj9hjGnPZGo/qyOM/DtcsELHbC1C7mJW+hFbJqMN
         XkKejz1mtXcM7dAEwvhtpywQj3BiTwXN10ulZ8vXbwawpFNIU4gCPUEeJHnZSJ625s3K
         ceSw/Cqp2gL3Tg6lhQ5y/heSuBGFVd5XU+eND4jHAuNaDINogh6jD3bN5mm5CYT1clEU
         FnIVKysqLp55xSmkrf+6KU6JVsD68oJliFK2kuFsxdYmd+gs2ow3iPjJeBwGAUGJcDWe
         RSrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WksIlAP2St63/dYiNF+cCQGpadcOB7vBxhhFZVaW4Fw=;
        b=h3cU2xnwH+LcUKYhSGJaFYht3h8C8J5yiv4wkhVKYeALijURogRj1i6y8iJumcvGqX
         ZM0oLl0lC2GODRGXzrknQDUgtaAYtd+N7hGU7L0GmCiXO/J0U6z+KJNz2407Zu3rs3RW
         AsBAdgRVTvpmSY4FXfLxtm3pS4/sheXEj4WJ065PEjZoCUlkQAkDU68Jq08wTD8Flcaz
         qtLkJStys+zIddu23xpJveFMcuzb1EOPJSuQ4xJPYvQZDVE08255Gcivi4cxr0EzK70C
         +VHSoZwys8a/KHQKtF19RnHrjBmw4+k3qj/3MqgzGh9FRC4XlKrDnFllk+QRDOvZmNja
         JxdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="v5Ex8As/";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id j1si808968oob.0.2021.01.29.04.44.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:44:59 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TCiqg6030010;
	Fri, 29 Jan 2021 06:44:52 -0600
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TCiqv7012548
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:44:52 -0600
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:44:52 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:44:52 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDWF075758;
	Fri, 29 Jan 2021 06:44:47 -0600
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
Subject: [PATCH v10 16/17] Documentation: PCI: Add configfs binding documentation for pci-ntb endpoint function
Date: Fri, 29 Jan 2021 18:13:12 +0530
Message-ID: <20210129124313.28549-17-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="v5Ex8As/";       spf=pass
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

Add binding documentation for pci-ntb endpoint function that helps in
adding and configuring pci-ntb endpoint function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../PCI/endpoint/function/binding/pci-ntb.rst | 38 +++++++++++++++++++
 Documentation/PCI/endpoint/index.rst          |  1 +
 2 files changed, 39 insertions(+)
 create mode 100644 Documentation/PCI/endpoint/function/binding/pci-ntb.rst

diff --git a/Documentation/PCI/endpoint/function/binding/pci-ntb.rst b/Documentation/PCI/endpoint/function/binding/pci-ntb.rst
new file mode 100644
index 000000000000..40253d3d5163
--- /dev/null
+++ b/Documentation/PCI/endpoint/function/binding/pci-ntb.rst
@@ -0,0 +1,38 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+==========================
+PCI NTB Endpoint Function
+==========================
+
+1) Create a subdirectory to pci_epf_ntb directory in configfs.
+
+Standard EPF Configurable Fields:
+
+================   ===========================================================
+vendorid	   should be 0x104c
+deviceid	   should be 0xb00d for TI's J721E SoC
+revid		   don't care
+progif_code	   don't care
+subclass_code	   should be 0x00
+baseclass_code	   should be 0x5
+cache_line_size	   don't care
+subsys_vendor_id   don't care
+subsys_id	   don't care
+interrupt_pin	   don't care
+msi_interrupts	   don't care
+msix_interrupts	   don't care
+================   ===========================================================
+
+2) Create a subdirectory to directory created in 1
+
+NTB EPF specific configurable fields:
+
+================   ===========================================================
+db_count	   Number of doorbells; default = 4
+mw1     	   size of memory window1
+mw2     	   size of memory window2
+mw3     	   size of memory window3
+mw4     	   size of memory window4
+num_mws     	   Number of memory windows; max = 4
+spad_count     	   Number of scratchpad registers; default = 64
+================   ===========================================================
diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
index ef6861128506..9cb6e5f3c4d5 100644
--- a/Documentation/PCI/endpoint/index.rst
+++ b/Documentation/PCI/endpoint/index.rst
@@ -14,3 +14,4 @@ PCI Endpoint Framework
    pci-ntb-function
 
    function/binding/pci-test
+   function/binding/pci-ntb
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-17-kishon%40ti.com.

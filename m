Return-Path: <linux-ntb+bncBCOOP4VF5IDRB4GM2L5QKGQELZJUFDI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id B9F6E27ED56
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:38:25 +0200 (CEST)
Received: by mail-vs1-xe39.google.com with SMTP id s201sf243764vsc.2
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:38:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480304; cv=pass;
        d=google.com; s=arc-20160816;
        b=UgS8yq3BwutSKU+UuwvlJEFc6/QCq/7xHNCR1tdk8CelJS/5hAd7aA0l4D4DT+g/JQ
         skS/FnoK2K5b8JnE10fx87UVA1/TIGP/5xkIyaixnxfUzPtM9vhNV99P1C0ioB6vtT+k
         deUDcs/GROEDc7Ij+/8BpOMojGmldyqlRGJHz4Xr1sypDPg37yXtIu5z4G+7iWZrUi/y
         aQ0JRsSRpHI/iq1tlSrtW0tf3Z8Az0/Z28S3u2g+DbZtirDDrluqpbWKm2POnmCe4QNq
         u8kOc9DVzqcSiIqvx7JpWDkfsXO3a4CsDfr0QAlFeEMQeZwjny5G3OQyw5YwOP4CYvLz
         K3aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=hb17h0M0h6LGutWdNms4QM7962SUtYj2/qxxUJR4rHQ=;
        b=ayvfgWRfWW/eOfjmGNtEiDNo1cci7rX2id8WJs/xAmnAt5wQApw55k8OqBia6zjiol
         hrOz2XEBqxHNVXiz97snHKjSDGrc4RsV1aUh+1RLM99AJIK/YcJhEqNyaKwIegg79YeY
         MuBw9QtXHmAgpJjaRg1H2uBUGodRrjOc7VajjjmkvNohjHUZpIAWfB/SzqbN4IGkXUEC
         QwoovxkQTUJCLy3khSviQSqSh5POQcCOLogth9TuTyTeqWCzzx9CNsGekKSqEcAhk9/B
         +x7YKX547xLtEj9O6b8a8mu/lbaij8FIZIqj8FarFCWGHFGmzov+EnrFTmR3Mxl7UWrS
         kk8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TnZ3HIgw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hb17h0M0h6LGutWdNms4QM7962SUtYj2/qxxUJR4rHQ=;
        b=pAnX1gdcOshY7XSD2GCXCAw2sla3rpurJweDhysAm0BwDMHT6z+Lbjzf1JSbrHupBx
         IdRZVlEnmRmkozIUTNWYmssGXH2S8KcEUZsfLtClECa1BSFkpMOhdn+MP4roDmTni3Qo
         5MAzAzVWq+RaeJsWoDEot83+tUQkc2XaJwgkV75ZPQ0OKqOs/RW58rKqAf/i/H8sWCVM
         ClNozroB9TEhNxi2K8rONaCpOPX6ULf0aBgC+5dzcuFJpnlTMCNXpa9iLeKbjuDRSDwF
         MvGyB2evUC442wmldiJaS/gXHpZuqgt5RKA1iuy42WUJoFa9DpurLPlIvDfBzoUzDAwV
         /OtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hb17h0M0h6LGutWdNms4QM7962SUtYj2/qxxUJR4rHQ=;
        b=KvCgcLL0K6hYz+0HTGLrosoBjNyAH4yrXy3qEqYodeJO4l8YaeNXbG5e8k/WFoQ0Fd
         sEOhXusXSA1hHstQ5ULDMaTlH9lSWbEEbwS5jY7TC711hVng+T6+CxvdURHXZ9L1+cvJ
         nT5TrOgi3b92vKoJHn98DkK3x9ySF3J7Xd8wkYUb5ox5cWapvS1TsoikdJy1FHWfPWxR
         C6dPc7TJk2RYGEjSEXezvrfIHybkBDo6U3MK90rZvZeQj4DUVRKjG8Qwy3iC2zxHx+bN
         Q4QvJ3cqOVzHysyzaWOGE5SA3wKyqIH16JKaeqaNmQ6MuB/JTC9x+sYnQBuRXQ5/eAuy
         F60w==
X-Gm-Message-State: AOAM531KYhMajb69/4oIWYC5EiGlQhkXTDwvG3jQ8bXVZur7QE8Dy0iw
	2E1c8yz3TZVv+alT7D7dO7U=
X-Google-Smtp-Source: ABdhPJwvfRkP41YtkUkndN/kGta6f272lV5NqCVBjTWw0Pdq7BCoNJVIDVTiWvEkLanHBzGEFNOBVg==
X-Received: by 2002:a67:6cc2:: with SMTP id h185mr1922594vsc.17.1601480304766;
        Wed, 30 Sep 2020 08:38:24 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:f246:: with SMTP id q67ls121466vkh.11.gmail; Wed, 30 Sep
 2020 08:38:24 -0700 (PDT)
X-Received: by 2002:a1f:1f0d:: with SMTP id f13mr1933881vkf.1.1601480304316;
        Wed, 30 Sep 2020 08:38:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480304; cv=none;
        d=google.com; s=arc-20160816;
        b=Jmd8Oj/B4MxN7c9vLubNTdxdT0a4iE9rlWPi3/RC6A3NHLiMi4x4RmGaByoz6CfWyj
         3RYNlXNY3b8g+BiAAKmcmreuN2Gj30uXHcpYkcA7uN2DOPCaXpmHhvLkbl7KvCYbAyiW
         bVAK8bE2RhjUJwxFBtM+brrU2+00rGjr2+bZCWu/00H1xI7TUdUgQE0HQ2Q2L483k/Tq
         yVHbBwd+zmpK/gIs2o8sar6nsnJQjOBENK4uArqE5WwpJecWPT9+S8uYZgCeRO37f9Gu
         pvRbWmA3b+lD+GBMdXa+ITevBFuUKis7yCDEx/fDBFLzW0au7oMCbs7BnIFbFpvcoFkA
         s/1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WksIlAP2St63/dYiNF+cCQGpadcOB7vBxhhFZVaW4Fw=;
        b=TbOu89LGQsi7vI2cQvCYUvKHAuOXoVog1TGpIDRv/XJuiCtine3AEyzy2cjTB+Choy
         p2MZTqoKWaSIuenRCOpkUev/i4lyXIltoQkmZUDKA6C4/TNx5CJlO2T25LkZrJEQAg7y
         14POHckOqcS5VpfalPfDAKSr5I2p3kyD9hSO1Qh89njuKB+HjvpbBq9KV82CjGh5i8Ai
         HNel74qoacLMhjPBPIy55HsCvkGb8KCKGPXtTtzSz2sYnRaOHxLE8JA/6QO/hjPVM7zS
         MQmJ2lQU+LCIe2Xid5cHI51JRekmCUryA3DJ4/zfLI7nhrtiT+2lwezxzAXu/SOM8Zag
         GJ0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TnZ3HIgw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id 134si132346vkx.0.2020.09.30.08.38.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:38:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFcGSF044341;
	Wed, 30 Sep 2020 10:38:16 -0500
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFcGaR028718
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:38:16 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:38:15 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:38:16 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZg033254;
	Wed, 30 Sep 2020 10:38:11 -0500
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
Subject: [PATCH v7 17/18] Documentation: PCI: Add configfs binding documentation for pci-ntb endpoint function
Date: Wed, 30 Sep 2020 21:05:18 +0530
Message-ID: <20200930153519.7282-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=TnZ3HIgw;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-18-kishon%40ti.com.

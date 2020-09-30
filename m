Return-Path: <linux-ntb+bncBCOOP4VF5IDRBUGM2L5QKGQEXCO6L7I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C9C27ED53
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:37:54 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id t187sf1388321iof.22
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:37:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480272; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ltk/+yrnjrdVqX/eUNMAa6ovPre9Be5CDvuMyog591PIHbn5zrDlY8rnz1b71w2ChU
         3DR8+zUHrJ0XAGuZMKje18yTN+oRAiakoFg7+bJsAvYJVNnh3m67d9X40Y+jT3FlM8dY
         YVgKFkc6WKd03ualVnlSa5IrxI62ZeWrUHN39DFGkuxTYCRh9HRHEysdA1lWwMdyK8CI
         aTPBlZCqQrwgs8C6+b8SoDdXz1s++RIWLuaZLQvMPNNN0KeRfCn5NRB/3SNwL5QYVDKk
         fZLJuxpKLZBAjdVxuTqAOYL9h0ONC3nRwyJ5BtlBGa4Pv8Q7fJzmqKc0gAB7dBVv1P1O
         jgPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=hLes23rbMwKx6UhtmmYwLwYR4IDYLSV6XF/Cjc6jY6A=;
        b=DpSszoSKWIflv7jqZ+XrsSGQ+wuyV3JL68CCkCuksQC3eJkR1YNivoo1c8DD5MDDs6
         MPj9bfUalbrXJ3mtNTa11jAKL2CbuZOGbhHRqAPkT+12ZesYA01kc/JdwLBj1yqeOfl/
         ILK519RSY48VyjhZu7QVboY2bk92xwFrAwFhYp8F4OZD9TzIGZgJrYWCgUNC6/ksuL9A
         Ym7lmjKhhCyaMiv3e5Ol9YtJop7lUaZpaTATVBuuUpx5+3U07IcxGLl4KadbTrVKmqlQ
         TeMBJM4Y20SX0r9elaWptdEbjoHMcQ67oBAqTpoyyPYDXw3jKYkegEoS/y6crh11nR+A
         yRVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vvCD3qOC;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hLes23rbMwKx6UhtmmYwLwYR4IDYLSV6XF/Cjc6jY6A=;
        b=jcOREPf27Tr9NpeXlMaCxz3XOudebVqSBT4ko/6rw/qoBRcEtybw713luOMuSancHG
         FBgPi8q0LU4gBEY+Cdc50iufJ9XMg5SysJ+HLYYMvkAP97y+V15NSfaGFwVPSOuRZqgB
         Blzc8R7wmDxlfxOSJ1UmSSUfCwW0Ai3iYoskN0pbU1Q+MF84n0M2EDdESV601QTJmZLL
         eQzxYeQhAtAb5lWOPAFJWvR/ov5VwgrmhJ1oGk/ogX3kKFFLHRMZZwk8xs/KJaTWO9ob
         CIveWaHHrwcgff6AkZhkeKBDT638m1DwAF2UY7a/y9OXx4f8qeMWG3O9lKdvjfLJkwl4
         Wfaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hLes23rbMwKx6UhtmmYwLwYR4IDYLSV6XF/Cjc6jY6A=;
        b=i/KDMzXyADZPJ2amryVNEQIRETY7isHD4AQNItCiEvIl232xMunC933Uhesyv/A50S
         iccAre85WFLVNLXzvktbK8Xev/892SRbwzo47x0dqy4fATZfLr5s/BUxyc7w1NULLNiz
         R98wwQOz9H63TSG5EaLKeyCtDBFaKSvyG5Kw8BuCCa3tcO1/EeJEHtjmLQ+lm19qYlvU
         WtOLYCaTDPWNKgcbQX83Xr30u1LNCZWF51ugDZWVhCsxtBRHTYVPjXMHRX1A6RBOCCME
         Hzn3WC+/l5MX8ru30DTh/MiXyfgZvbMpUWLALptsL8gAQxQPIoMYGrT9IAaEj33O/kni
         66mQ==
X-Gm-Message-State: AOAM530q++q7WdWs3i3ms3Bmk+3q5I+9XhLiTcPDsRTjbMIsKq80exP4
	zmv//d2n4uurl3WBBoTOw+U=
X-Google-Smtp-Source: ABdhPJyD9jsCG0beTWK/BdWDTO9DX8Fzp/rP4fJHxK/VYVdWySZwbFtsNhzzo+JYiQgd5LO4qeNPPw==
X-Received: by 2002:a02:cf22:: with SMTP id s2mr2411571jar.29.1601480272576;
        Wed, 30 Sep 2020 08:37:52 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:c805:: with SMTP id v5ls662156iln.1.gmail; Wed, 30 Sep
 2020 08:37:51 -0700 (PDT)
X-Received: by 2002:a92:94:: with SMTP id 142mr2461527ila.21.1601480271085;
        Wed, 30 Sep 2020 08:37:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480271; cv=none;
        d=google.com; s=arc-20160816;
        b=nKxGqB5HlvbzsMofWx2o2h5ZCZFad4zBW/OmK1CDB2jovEKNGaJn9Zt9SO9nGSDuee
         N67iysdkeVgMchagsF/+DkOPDmkKe8P0UFUFnSa9M+J/6wlC7sDPN5wPfNQAVC5sPb+5
         dWa/G4FtdsNrDrmPUvgZ+G/OA+Xfpje2M+lwONB1sSXMu4si0SXZ3F4iClQd5CUQGlhu
         uL4e3qr58fMdvmFT+RxnyPHNcKnR2/TvO5mc8IHvmI/ceoSQGo9uzc8XK/QTO6o+YUzn
         TO3GSgKJw8lWHk/MCx0ZTVDEqk5UdUoIxNOuFtLiL9oNtM0DZlJ/HrYAC5nX3hNn4Shw
         hhuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=mBDRi2H+5RmDLfb3VgWO2CxtWeit10rVqDT4xYAQnwU=;
        b=fRohNtMVSEMQXbBNofawkn+CJ9ddhzImElSOSNRz3rBJpDamjZxnBuzLtoHRqM3N4v
         q1I3djVGpF6NJYm391OZoS4+AAbHJC6JAR1QtUAmBcX+uGuf1lgsms+kGKEyrlReF6vb
         svpyKTzF4VAtN0L1WfzcCV9XgvCEcg1z6jGbehIyNxSj3yGSLFf8Rfm6rPMcTdsOmjgo
         WemZ4os0FWhtlgASa56xxF3PWanuqhV+1eGdyzZwljo5ZRk6U1f8w+xOrTgLIzATMtlV
         PNdLgHX5CrZMMx2ZwNc2r8S0JPWUQSWn4FmSt2ZNZOG90L/g4L+92skI9pf/Lp7i4y8I
         IK+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vvCD3qOC;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id y1si172956ilj.2.2020.09.30.08.37.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:37:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFbiIj044188;
	Wed, 30 Sep 2020 10:37:44 -0500
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFbisO032862;
	Wed, 30 Sep 2020 10:37:44 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:37:44 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:37:44 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZd033254;
	Wed, 30 Sep 2020 10:37:39 -0500
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
Subject: [PATCH v7 14/18] PCI: Add TI J721E device to pci ids
Date: Wed, 30 Sep 2020 21:05:15 +0530
Message-ID: <20200930153519.7282-15-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=vvCD3qOC;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-15-kishon%40ti.com.

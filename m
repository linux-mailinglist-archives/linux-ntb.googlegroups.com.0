Return-Path: <linux-ntb+bncBCOOP4VF5IDRBS4CQH5QKGQEUECNNLI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 83042269CEF
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:21:33 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id x2sf1136500pfd.8
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:21:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143692; cv=pass;
        d=google.com; s=arc-20160816;
        b=n7V8gYLsXw6kAb6V3BGLathf7LDGPdrrxVXtWilVov8BHlmjswkqE+PwZLXYbiYmpB
         w1GOdG4FAJuSCIlMtisIM5C4/FeK50fdzj50a3cn5u0BBUF7ASC2vW6Bh2pNQb7uf8u9
         I8s6e/WJi7lK/wh/XGixJAB+QnfQpeW+dbWh3CZ50XmJsv6OenfDKAl6Qh6lXVRkuxYy
         L1RhVLoqwUjeXbz4UuHKx7ngVvjL+rMOp/priShJ7q3sz7DAu+8Pt/NVNjcnBe8nKSiM
         d6jw6OFd0btJzRj99lmCM76P9zh/4vH6MtJ8DBbNN/F448+/HeHs0yzD06agob1q6y5O
         niSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=Bgj1FH4iBvOsBMnbuTYOerC7G9mGqJfOmobybtRvU+8=;
        b=ltNTQClrhmMYmlRnA9imUIpX2oN8BRDq6DFdYIQLn9CEEqwcUYSfHoVYiDWRO+zUt2
         mAkJ4XREpGyEyaPUhegt/XSPdP2gZZe0qcnCUDQxLF0GOPsLwY8Hpywmd91E2+xN1efZ
         Pm+DZr7tUPuGsGeceXUTBCZ4V3cOTDXFL/5AkVKbRmnD8gdXfnzYojcvVsMJdffV0WM8
         4ShmFhFIlTfYj79SwoNuFnJOXLaUdzTmXeXQ3FMECObGqchXi+KLYiSPAqQIoXAnQD+x
         DdvxPcD8kT7Hp5/aiAk77D+4dOMnkIE/MfkVbysCD4tKkGflMvNgfrfB2Ha997daOl6a
         n1jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=LIBUtfCg;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Bgj1FH4iBvOsBMnbuTYOerC7G9mGqJfOmobybtRvU+8=;
        b=Om7FbiTdbVS3V8MEDNE+vVFiG65VKcmBGxUkPP/ouhAH4Qmgo47ACOEIdgkHa/ESS2
         tWbuZJx6KVJXhUAQp4HnZpuwcBfA7JQXATiQTcbI9OlnA2aPZgkgl2geTPzfHlP0Zo6v
         DbSH5YGhOKZvpPeKFXYZZxpekArCqymtlm1P82AgA73hY2lT+Z/GHm7/53UrGJsnCU0f
         ga/qrTp2kEKL/tIfHoLUJQynmVa+raD3xcFRKTfLrSKEticxZCrAlmvMN3NJ2Wm4BAzQ
         epiDKfhh+TrJnKcfV410Ipjl81bKB69vD6dYD9GXzl77CXGSYG4+vMpsFINWnB2SYf8r
         kgBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bgj1FH4iBvOsBMnbuTYOerC7G9mGqJfOmobybtRvU+8=;
        b=QQ9ZbQ1DNfjOHtQmyIWMc5hGXE2JUT8BkS/WEeYBaXX3SRwPUrrQI3MyEY7OV70TaS
         cep1IEMmbZ5JP3QP/J1/bnaFYQSA/eDF8wLnD61W/o2L2NPJIw2GkPl5RutH/jRKeouM
         wgD6viceksR7bc+7nu+RlwmyYeD3D2frEcQRl+jyqwRnQoGbwALz4HKDECioWq4wAcyv
         KJl+XUVpCgJy6YWOR1L3JhWAOItFLYfDqbHJ+zlGb50Dvuvs75RWaKrwZt8zlIne1LG9
         AYRYn7fRHnIqx8IEIz7psoN6WPWBiVF6JPmU80IVtHxz4O7AiU1zuw5UGAjD0KclF9D4
         5o7g==
X-Gm-Message-State: AOAM5308QaBR+e5gt3PJhEuULIkTWX5ofrt9MqN6e5G8jE7zVI2UXrsm
	AiD6Hwm8HFGkisvRZ56OpwU=
X-Google-Smtp-Source: ABdhPJynmQPtvqSq/T1Q6c1/sgkNqPJOL71/jFbpdZO5OoTh/KuqGmMojm0vyiPYIUz9bauyLCu5MA==
X-Received: by 2002:a17:90b:3105:: with SMTP id gc5mr2459148pjb.225.1600143691856;
        Mon, 14 Sep 2020 21:21:31 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls4562843pfc.3.gmail; Mon, 14
 Sep 2020 21:21:31 -0700 (PDT)
X-Received: by 2002:a63:ec16:: with SMTP id j22mr3128566pgh.208.1600143691229;
        Mon, 14 Sep 2020 21:21:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143691; cv=none;
        d=google.com; s=arc-20160816;
        b=Xi9hFhBE2bt/xw5m+SkN1fRIPK1TJA50+V70h1SWXKGZxZBwZApr4uGjXWJPGnpR5Q
         N/DQQBsK5y7XtR0dkXCjeUw2yPgvIgg0CUQxZs0h18Dcr+EYSYWFeNhCGhv6/IVZH8wn
         t5AbaSb7N9RDFzG/Mejnly2PrjtufOshwc/Dn7lph58apK3Ppmir64s8zHRtpaZJc9oF
         QjM0wtembVC+4kTvQKT+v8+0uMKCssbrg8sTW4ehg6tWWuZDCk4Nix/YQvAIHNd2SNdG
         E33rupxp0Yj6Yi8HGTGmg4azyOE3hAtinCIh2BWERMcG9Wx4YtYgvsKlI0KJBBJfU2Mx
         71AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=MP+rLSwocP91ovcyYhzwFYA2V0wYIwd9JxwMXQlCyK4=;
        b=JrhTDEn0IQRkb99k17LeFW/f11SjCyhZMvhN55eyhnmGGLW6paImrCq5clFzw1jzoO
         Xhqlh+Y9feegyIXjFcA08yX42UdkR6AmRiihcu8W83r9xdaQsz79muNBO3tubDCi7chr
         nBHxudGPcb31u53IIiuccFMDi0akac14UcUB9n40xFAXmoHWyHgzKprxWU3h1Sk+CTOO
         GY3yNH76NX0Ybab0H7mRoHQv3B5+EZ3gVWJ2yms3HEvuonel/XhvfgOJfEqFPZ63EdH/
         JvCmEkyZoGs5jcLD5lmx6zEhg1cIsfMU/IJcSkeB+LiBTRyOPF2L6LuUOVAFbfh8BC07
         fl0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=LIBUtfCg;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id mm16si973695pjb.2.2020.09.14.21.21.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:21:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LKPB017202;
	Mon, 14 Sep 2020 23:21:20 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LKtF007760;
	Mon, 14 Sep 2020 23:21:20 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:21:19 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:21:19 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMg028615;
	Mon, 14 Sep 2020 23:21:14 -0500
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
Subject: [PATCH v4 00/17] Implement NTB Controller using multiple PCI EP
Date: Tue, 15 Sep 2020 09:50:53 +0530
Message-ID: <20200915042110.3015-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=LIBUtfCg;       spf=pass
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

This series is about implementing SW defined NTB using
multiple endpoint instances. This series has been tested using
2 endpoint instances in J7 connected to J7 board on one end and DRA7 board
on the other end. However there is nothing platform specific for the NTB
functionality.

This was presented in Linux Plumbers Conference. The presentation
can be found @ [1]

RFC patch series can be found @ [2]
v1 patch series can be found @ [3]
v2 patch series can be found @ [4]
v3 patch series can be found @ [5]

Changes from v3:
1) Fixed Documentation edits suggested by Randy Dunlap <rdunlap@infradead.org>

Changes from v2:
1) Add support for the user to create sub-directory of 'EPF Device'
   directory (for endpoint function specific configuration using
   configfs).
2) Add documentation for NTB specific attributes in configfs
3) Check for PCI_CLASS_MEMORY_RAM (PCIe class) before binding ntb_hw_epf
   driver
4) Other documentation fixes

Changes from v1:
1) As per Rob's comment, removed support for creating NTB function
   device from DT
2) Add support to create NTB EPF device using configfs (added support in
   configfs to associate primary and secondary EPC with EPF.

Changes from RFC:
1) Converted the DT binding patches to YAML schema and merged the
   DT binding patches together
2) NTB documentation is converted to .rst
3) One HOST can now interrupt the other HOST using MSI-X interrupts
4) Added support for teardown of memory window and doorbell
   configuration
5) Add support to provide support 64-bit memory window size from
   DT

[1] -> https://www.linuxplumbersconf.org/event/4/contributions/395/attachments/284/481/Implementing_NTB_Controller_Using_PCIe_Endpoint_-_final.pdf
[2] -> http://lore.kernel.org/r/20190926112933.8922-1-kishon@ti.com
[3] -> http://lore.kernel.org/r/20200514145927.17555-1-kishon@ti.com
[4] -> http://lore.kernel.org/r/20200611130525.22746-1-kishon@ti.com
[5] -> http://lore.kernel.org/r/20200904075052.8911-1-kishon@ti.com

Kishon Vijay Abraham I (17):
  Documentation: PCI: Add specification for the *PCI NTB* function
    device
  PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit
    BAR
  PCI: endpoint: Add helper API to get the 'next' unreserved BAR
  PCI: endpoint: Make *_free_bar() to return error codes on failure
  PCI: endpoint: Remove unused pci_epf_match_device()
  PCI: endpoint: Add support to associate secondary EPC with EPF
  PCI: endpoint: Add support in configfs to associate two EPCs with EPF
  PCI: endpoint: Add pci_epc_ops to map MSI irq
  PCI: endpoint: Add pci_epf_ops for epf drivers to expose function
    specific attrs
  PCI: endpoint: Allow user to create sub-directory of 'EPF Device'
    directory
  PCI: cadence: Implement ->msi_map_irq() ops
  PCI: endpoint: Add EP function driver to provide NTB functionality
  PCI: Add TI J721E device to pci ids
  NTB: Add support for EPF PCI-Express Non-Transparent Bridge
  NTB: tool: Enable the NTB/PCIe link on the local or remote side of
    bridge
  Documentation: PCI: Add binding documentation for pci-ntb endpoint
    function
  Documentation: PCI: Add userguide for PCI endpoint NTB function

 .../PCI/endpoint/function/binding/pci-ntb.rst |   38 +
 Documentation/PCI/endpoint/index.rst          |    3 +
 .../PCI/endpoint/pci-endpoint-cfs.rst         |   10 +
 .../PCI/endpoint/pci-ntb-function.rst         |  351 +++
 Documentation/PCI/endpoint/pci-ntb-howto.rst  |  160 ++
 drivers/misc/pci_endpoint_test.c              |    1 -
 drivers/ntb/hw/Kconfig                        |    1 +
 drivers/ntb/hw/Makefile                       |    1 +
 drivers/ntb/hw/epf/Kconfig                    |    6 +
 drivers/ntb/hw/epf/Makefile                   |    1 +
 drivers/ntb/hw/epf/ntb_hw_epf.c               |  751 ++++++
 drivers/ntb/test/ntb_tool.c                   |    1 +
 .../pci/controller/cadence/pcie-cadence-ep.c  |   50 +
 drivers/pci/endpoint/functions/Kconfig        |   12 +
 drivers/pci/endpoint/functions/Makefile       |    1 +
 drivers/pci/endpoint/functions/pci-epf-ntb.c  | 2106 +++++++++++++++++
 drivers/pci/endpoint/functions/pci-epf-test.c |   13 +-
 drivers/pci/endpoint/pci-ep-cfs.c             |  176 +-
 drivers/pci/endpoint/pci-epc-core.c           |  131 +-
 drivers/pci/endpoint/pci-epf-core.c           |  105 +-
 include/linux/pci-epc.h                       |   38 +-
 include/linux/pci-epf.h                       |   28 +-
 include/linux/pci_ids.h                       |    1 +
 23 files changed, 3918 insertions(+), 67 deletions(-)
 create mode 100644 Documentation/PCI/endpoint/function/binding/pci-ntb.rst
 create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
 create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst
 create mode 100644 drivers/ntb/hw/epf/Kconfig
 create mode 100644 drivers/ntb/hw/epf/Makefile
 create mode 100644 drivers/ntb/hw/epf/ntb_hw_epf.c
 create mode 100644 drivers/pci/endpoint/functions/pci-epf-ntb.c

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-1-kishon%40ti.com.

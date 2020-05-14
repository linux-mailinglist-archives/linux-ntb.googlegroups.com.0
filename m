Return-Path: <linux-ntb+bncBCOOP4VF5IDRB3NZ6X2QKGQEFISCKNI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E831D33CE
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 16:59:58 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id q10sf1483887uar.23
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 07:59:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468397; cv=pass;
        d=google.com; s=arc-20160816;
        b=PF5v1snxm0RMus72+J3sJk3I2zlDX1GGiLEJm/9CPl6hNlPWYBaHV9M+6yWoczaMnB
         jqHDimhtetHQeU4nCeNDDHh1lkXGAiSPw402qCz/jSBmq+jV1BYYDz5CBgOwitGLkHfi
         p4qtGzu+5ALhFFtfK7zbEIrUbfRY8kziki3qhay8BfBriWRaZ7dzIjiuYheFVgbPA9DA
         T+QmdkHmEinvekGKLel+YSLslCmqyQkUtPIVcEXwclzf0AZag9YsVdVy6Kj47tRdIbOp
         zsC1JdFgobYX0g9w0gBWfkgBeOKSkcsryrA1tBiFwuMk3P1k3IUzsONEXAF8NxDpow0x
         YdMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=0l3oNovnUD+o2sRHOQAhaVpm6E+Qetbf7YJpUFKEszY=;
        b=ZT3Pt5WThLvJ4wNypqZ0XXVeRK8QpzpsHx54KI8PlynbiK47QPT/kRk1NQ1s2AkxH5
         UrFfCZrfj2+Vp8YutGH3UW2bdxcpP8UfSieFxHsAOdcqEkKuN2Lb1lX5TpnxQ14ARyc5
         +/Ev+MGUIoNXD1NJQFT5PdGRzFLXg6eYsXp3i54CFpfU4gGThR8oZTrpWXNd0CFZbSxI
         2cXC6xXZXSl/EvPR6FdF7NXnLH6PTvXnaMSYeNCnm1XTr3uu8vkXuYoISJIT7IWOPIjs
         7uS5QHa3W2LehuDLGTWon0DmGfdGtI3YoJveQtqx3/VGsx2L0PIZrcMrQKrmUJfEqcT3
         ECdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=i+2ydMI+;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0l3oNovnUD+o2sRHOQAhaVpm6E+Qetbf7YJpUFKEszY=;
        b=St8hC1bPwtHZZqkFu4vTRPxiohPVQ1Cj9HFXn0UmT6tew5l2R0nItFzmaJl5gIfcVN
         eSn1Hu7zOwcO5SUHYRghA0lVZU61FPbcY5OZoMt1xWPyXLa2HUwH1pgsicGgrzM9Qtgn
         0cI9NnqMsqOjwesxDgzUYWKaQ5nFFEpAjr6MBePCn0rse5IewrLOZnbLWf7bPF+ESHF0
         U1Rrg6Lc72GplB9RDpgWbgIIcUJAQ4F+NCaFdTqDOytPMjCxBcUY1oLjAp+CJCQ40Z6u
         fK17eeDBKI1sq/U/oGSIVZRdWHYHa1ShFLIAGkQuJ6uP7ylR8HRXSS/pSjQj8Y+mWF9V
         qnuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0l3oNovnUD+o2sRHOQAhaVpm6E+Qetbf7YJpUFKEszY=;
        b=JVVZkZB4FskhdUxus0X9MhQ188uceYLM1mVzfGgkWMVWewfE1m6VaFIUAvi+D6PhLV
         0uEo0GAtob45rCSn1dLUSyWWM6A4AmL97Y9uxB6eCcrNf3Gq1D40R2jgjvesgK91dd+u
         +v5lktHrQ04Y3aJyMNd84vv0VpmcK9IspK7GOxWqMF08HRyHjNdSRvsNw6Afbodlgk3y
         8gwTZzz2g2c8djJ83HsZLSzffhrkYUXhOQLjURJyO4Nk5LreE3eLeasw6Sl8UvTALbiH
         EXk8NHbLnshmNdDmaLaIVAMyqGojdAnSExMvwoj8q2WwA/wRze/UT+24WfUPgwsQBzp5
         z1Iw==
X-Gm-Message-State: AOAM5336HP8Gdag7HRHPbrWEhbljJXNptwsyTwGjmjnZ5tgR8MGVCFMx
	pkyZxVQnJogvK96MZ+NJtdc=
X-Google-Smtp-Source: ABdhPJy5FXMNe1qTrHphrIF1UKd/ZGoBU1Z6/LVb+0AsbLhaWs3P1G+cwLSlUTDDUrEQ05oy9mf9BQ==
X-Received: by 2002:a05:6102:409:: with SMTP id d9mr3618652vsq.220.1589468397450;
        Thu, 14 May 2020 07:59:57 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:70cb:: with SMTP id r11ls250215ual.5.gmail; Thu, 14 May
 2020 07:59:57 -0700 (PDT)
X-Received: by 2002:ab0:5ad5:: with SMTP id x21mr772274uae.89.1589468396941;
        Thu, 14 May 2020 07:59:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468396; cv=none;
        d=google.com; s=arc-20160816;
        b=EPQFOuBlbq21SyTHXg38uTP+nG93eCEawflhai4lmzEOKnQcNgAVudPzGFLZ4fcqnJ
         p3MCdwDwh6y7EpyhJWAniiBJJFX/hHcTypmtpIIDUrLilrJ13oLtC6DCDyfJ8fSak/S7
         EpCGea3xSULmQYKLSggtWXfylOwmdK/T9iJkd7yp0CWYPLLmgvJ91SYPpZXmYh58yEml
         j5PQad22Vc9E2cV9KKgMlNK+IlahMs5kM4cNeajdCijm0vurh2gKHUfPVXbwd1u6NvNx
         NTbiWVTjfSw9jX+WxfjAgjNiIZmNW/tYRG4Ksf+NDyc8696FYczMQOKjRz3HY2UBCaao
         yTJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=s/fQErzjm3QWmzuHGPvhu9iIxEqXqRByZCvFxc1DEN4=;
        b=Oa7B3R0t1f8FX4pEqAnn3z/SZaSt/zsVGCRkNtJAG3d6/nTn9orSzhtfTQcsBE0/Lo
         MscoYTjwmblUaxgtCapQ6uhUoouBV9Us7s3l8C2HUZnKS/xPHle3GPeWMu3PQAyrd7vl
         IzAq/eVOXKfWHg6aIXNGWHZQSTbbPt0CLwBeTM3/nkVKrIpAM+JM2FME/8G47CYRoxz7
         PFaD8QTtCaaOu6OlO/KzcalNXJdJWDgihscYVQhUvBk4lbGXwBNWlN9iqxGvo1I6y6RL
         Hbq6wJHPk3ywh8MXZrEI8ctA7jjcEgC681v3KiIEwdKHLanLnSmfhCAPmbUzG9wMeahm
         I23g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=i+2ydMI+;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id 132si254169vkb.1.2020.05.14.07.59.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 07:59:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EExlpp130892;
	Thu, 14 May 2020 09:59:47 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExlHx127031;
	Thu, 14 May 2020 09:59:47 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 09:59:47 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 09:59:47 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAi019279;
	Thu, 14 May 2020 09:59:42 -0500
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
Subject: [PATCH 00/19] Implement NTB Controller using multiple PCI EP
Date: Thu, 14 May 2020 20:29:08 +0530
Message-ID: <20200514145927.17555-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=i+2ydMI+;       spf=pass
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

This series is about implementing SW defined NTB using
multiple endpoint instances. This series has been tested using
2 endpoint instances in J7 connected to two DRA7 boards. However there
is nothing platform specific for the NTB functionality.

This was presented in Linux Plumbers Conference. The presentation
can be found @ [1]

RFC patch series can be found @ [2]

This series has been validated after applying [3] and [4]

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
[3] -> http://lore.kernel.org/r/20200508130646.23939-1-kishon@ti.com
[4] -> http://lore.kernel.org/r/20200506151429.12255-1-kishon@ti.com

Kishon Vijay Abraham I (19):
  dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF NTB Device
  Documentation: PCI: Add specification for the *PCI NTB* function
    device
  PCI: endpoint: Add API to get reference to EPC from device-tree
  PCI: endpoint: Add API to create EPF device from device tree
  PCI: endpoint: Add "pci-epf-bus" driver
  PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit
    BAR
  PCI: endpoint: Add helper API to get the 'next' unreserved BAR
  PCI: endpoint: Make *_free_bar() to return error codes on failure
  PCI: endpoint: Remove unused pci_epf_match_device()
  PCI: endpoint: Make pci_epf_driver ops optional
  PCI: endpoint: Add helper API to populate header with values from DT
  PCI: endpoint: Add support to associate secondary EPC with EPF
  PCI: endpoint: Add pci_epc_ops to map MSI irq
  PCI: cadence: Implement ->msi_map_irq() ops
  PCI: endpoint: Add EP function driver to provide NTB functionality
  PCI: Add TI J721E device to pci ids
  NTB: Add support for EPF PCI-Express Non-Transparent Bridge
  NTB: tool: Enable the NTB/PCIe link on the local or remote side of
    bridge
  NTB: ntb_perf/ntb_tool: Use PCI device for dma_alloc_coherent()

 Documentation/PCI/endpoint/index.rst          |    1 +
 Documentation/PCI/endpoint/pci-test-ntb.rst   |  344 +++
 .../bindings/pci/endpoint/pci-epf-bus.yaml    |   42 +
 .../bindings/pci/endpoint/pci-epf-device.yaml |   69 +
 .../bindings/pci/endpoint/pci-epf-ntb.yaml    |   68 +
 drivers/misc/pci_endpoint_test.c              |    1 -
 drivers/ntb/hw/Kconfig                        |    1 +
 drivers/ntb/hw/Makefile                       |    1 +
 drivers/ntb/hw/epf/Kconfig                    |    5 +
 drivers/ntb/hw/epf/Makefile                   |    1 +
 drivers/ntb/hw/epf/ntb_hw_epf.c               |  752 ++++++
 drivers/ntb/test/ntb_perf.c                   |    3 +-
 drivers/ntb/test/ntb_tool.c                   |    4 +-
 .../pci/controller/cadence/pcie-cadence-ep.c  |   50 +
 drivers/pci/endpoint/Makefile                 |    3 +-
 drivers/pci/endpoint/functions/Kconfig        |   12 +
 drivers/pci/endpoint/functions/Makefile       |    1 +
 drivers/pci/endpoint/functions/pci-epf-ntb.c  | 2038 +++++++++++++++++
 drivers/pci/endpoint/functions/pci-epf-test.c |   13 +-
 drivers/pci/endpoint/pci-ep-cfs.c             |    6 +-
 drivers/pci/endpoint/pci-epc-core.c           |  216 +-
 drivers/pci/endpoint/pci-epf-bus.c            |   54 +
 drivers/pci/endpoint/pci-epf-core.c           |  137 +-
 include/linux/pci-epc.h                       |   43 +-
 include/linux/pci-epf.h                       |   26 +-
 include/linux/pci_ids.h                       |    1 +
 26 files changed, 3823 insertions(+), 69 deletions(-)
 create mode 100644 Documentation/PCI/endpoint/pci-test-ntb.rst
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml
 create mode 100644 drivers/ntb/hw/epf/Kconfig
 create mode 100644 drivers/ntb/hw/epf/Makefile
 create mode 100644 drivers/ntb/hw/epf/ntb_hw_epf.c
 create mode 100644 drivers/pci/endpoint/functions/pci-epf-ntb.c
 create mode 100644 drivers/pci/endpoint/pci-epf-bus.c

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-1-kishon%40ti.com.

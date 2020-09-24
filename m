Return-Path: <linux-ntb+bncBCOOP4VF5IDRBFGMWH5QKGQEPPFWYSI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F56276D00
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:25:41 +0200 (CEST)
Received: by mail-il1-x13f.google.com with SMTP id g188sf2083630ilh.7
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:25:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939540; cv=pass;
        d=google.com; s=arc-20160816;
        b=1HmMMiViidQjDO8Us01b/y8k3tyMl7SJbpI803QJJIzFOobOkzEPkuykpBddlU1Rfs
         48NChFzwm5uXiYH6XACTtJXdDMd1+uOmrrQ0LnPFoG47ea7adnYABM43YXzyMPBafjqW
         YZhcPkdNJ/OK3kIrX1cGlXDOoAYRchAJTN1BYJWG+pZXX+6N62bcC5wm/XLuOiDQnAk0
         nPqfBffKbbPul36PXcmGux/qPwVjRBNXbu/PHC68n98prq7JrgEHeZzAT9+E8WiLsF+f
         QsZVwnVGh+mSSg/lLdH+1MrL62KC7OzvrUsUYnSk7LsXvwvFa5i9t/Oqo+sCsleiZKTa
         OTQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=pTmK9q27dHUpiykz7JucxrIqQmGEwgXPDWh7UiBds6I=;
        b=d1YQYkhd+P30z1MMZ3BwwfMHE77xbJhT7NkCVaJTbgDFtcjHoVMkogBLQowyvX8DrL
         fjQsKpOhi4A8F76qA86bRTkTwWWf0Rjw8RsKl6f0LSmlAGDqPMetkoboQt4ykYQKIeTu
         hft+RppIIUDpTFp/WG5t7cr+MUlLxDR/Zcd/xKe4vnR16z7Xi/g5CeRq8pOnhXyKDeMg
         wXdnKIUfIS+A4QL0CbO/CdNwgshnD6Q5HBnUfcK/2aApgu9y6/OBbwo7m6QJmDaEjokl
         QO+BXkaeQffGGYg4S6wPTxsqocvaRaXD0f5hIL4/akW7HY5LjiDPUGdjog1QehJ2YD4u
         82Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vNzj4bi0;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pTmK9q27dHUpiykz7JucxrIqQmGEwgXPDWh7UiBds6I=;
        b=dqV6JLH9gkZw6rLOE++5wQnhG60xNuwsub+XQfq0MFAqPxvxxAAh0V1KAYw/joF/Aj
         z60XWYdF0KEfksDUl3qGSCpXjcQUlhTEtdt3juLKM6zipTk9vt7UdP2h9bo5AphAUdt0
         2KEYvnlgJK5iUrU6+h5Df23Z+Fls97LY7CTBF2RdsabATim7bzUTIMGJn8Fya6A3ZrNj
         H2g+ojavwc7ptSq/SnkswaAQnG4c2+QTnx4Rg1gJcnrNc7nlpafsCM+DPTA8vmLhz5yL
         HtR38VkT2VCUJ/wFKGwOxhE8+COneh+7bD33FCQ71cshKwb0BHRxHuVdisDVPSMU5EHg
         9Pmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pTmK9q27dHUpiykz7JucxrIqQmGEwgXPDWh7UiBds6I=;
        b=S/80JdNiOVSqj3TYX7uUPseR4wGjC73UZbaG2EqPYUUX0Wszs+AnjDUTOI0jdbJBVy
         5lwJEkXDT6K1XyO1i9wM1v2d0HRUOI7GZq1if+LNhPGJ7Ff85Eubi+7TcdSKDQHp2e1k
         f8PAgF1Qx80ARnvG0HEdFta2+AdX7hVaJgVps03dyPsdk29ZWe4KzWowInorHEVdnRk/
         z2EqTJmIyBT2HF2utYhQVnk6g+D++DhS9ieHNKu8TLKQVjW89v4H3guP/5VxvBLigYRo
         pWLG3nEcYsEN9XqGccVyCsqOpjlYrM4Pgvcl+EAHIh+uyVWn2PIsKH4ShzGyUIma16cX
         MhhA==
X-Gm-Message-State: AOAM532/hkusFklCWXQFs7mtAJmmT6ZHb84F+GF3GQkeHIRG1z6xjPFQ
	F6fJxjH/l34LjMYlihG4mc8=
X-Google-Smtp-Source: ABdhPJy8lRIjB2bSi9fTrF6xltk892fEevntLcG+aBNYG0TaWrYjynW2/MToPCTgTKBH4TcctNyFeQ==
X-Received: by 2002:a6b:680f:: with SMTP id d15mr2603668ioc.198.1600939540623;
        Thu, 24 Sep 2020 02:25:40 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:a48f:: with SMTP id d15ls320180jam.5.gmail; Thu, 24 Sep
 2020 02:25:40 -0700 (PDT)
X-Received: by 2002:a02:780e:: with SMTP id p14mr2795331jac.144.1600939540259;
        Thu, 24 Sep 2020 02:25:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939540; cv=none;
        d=google.com; s=arc-20160816;
        b=Jx3BNjbFLhU+gkZu8eK9LmZ3NKrBUi/aCX+j7e5aY8MfNwpI5xwXQQWbfECW5kV3Q/
         BGwqrIHBudKgqqovKPBY422QT+UG1hHCoTDAmNWuTJvKgA8NPsDRCUH3oRMcHPqD8CMd
         CIr6jX1rBK2TTi4QmxkQes3jxk9rVqJSbTrrGszpX7ZyLRpTzGowkyFbax5a4MIuZ4Rx
         YX0DwdFAEXohwEUevK1D8Qbco9NJnthHs6zvP8fkdPPmcjFR3hbtaMdkuug0RZ9ynFhG
         p2787+fxqFPmZQv1nfQgTCo8WwRhk+3NluF/1VdJrQ7dDwNibFrScf5giqNy4vxNP7dT
         pCKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=rcGS8COlUp+BTDbmhmkjFy67qGy6Z1jezOO1IajNVp4=;
        b=PDTIf7xiW2JgpWzTaB3++G2kAiuyq4sCylJBXwMBS+XlSdwyPR2SW0o5WtJ60DT7zv
         y2YMbW+6sYZ8GKmcupnSatbe47UoibRA4766SWepKIpjP73VC+lJtRyA5UqYuTd4DRyq
         2DNpj7aXiPN9a5opShfXJtisW8NiRQ3sxjPIZSCPozqrfUuU66Z+16un5gTRSSKM7r1j
         +Xc7ZWE5rX1foQ15OXKJGdirTiFtgieq51ZSG0fZOsqLN4KHYyPnYhROiJTAIe88LYsS
         LGkYhN6S3VC1FavwTWyQt03gnekh7WPg3d6I7o8FJhOYZ7IEhX/eH8hH1y0O+iFpV9nt
         UBmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vNzj4bi0;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id c10si56645iow.3.2020.09.24.02.25.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:25:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9PVA2116821;
	Thu, 24 Sep 2020 04:25:31 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9PUWs079221
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:25:30 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:25:29 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:25:29 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POYn011000;
	Thu, 24 Sep 2020 04:25:25 -0500
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
Subject: [PATCH v6 00/17] Implement NTB Controller using multiple PCI EP
Date: Thu, 24 Sep 2020 14:55:02 +0530
Message-ID: <20200924092519.17082-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=vNzj4bi0;       spf=pass
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
v4 patch series can be found @ [6]
v5 patch series can be found @ [7]

Changes from v5:
1) Fixed a formatting issue in Kconfig pointed out by Randy
2) Checked for Error or Null in pci_epc_add_epf()

Changes from v4:
1) Fixed error condition checks in pci_epc_add_epf()

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
[6] -> http://lore.kernel.org/r/20200915042110.3015-1-kishon@ti.com
[7] -> http://lore.kernel.org/r/20200918064227.1463-1-kishon@ti.com

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
  Documentation: PCI: Add configfs binding documentation for pci-ntb
    endpoint function
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
 drivers/pci/endpoint/pci-epc-core.c           |  128 +-
 drivers/pci/endpoint/pci-epf-core.c           |  105 +-
 include/linux/pci-epc.h                       |   38 +-
 include/linux/pci-epf.h                       |   28 +-
 include/linux/pci_ids.h                       |    1 +
 23 files changed, 3915 insertions(+), 67 deletions(-)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-1-kishon%40ti.com.

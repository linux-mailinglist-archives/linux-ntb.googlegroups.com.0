Return-Path: <linux-ntb+bncBCOOP4VF5IDRBZFNSH5QKGQEGJDD2HA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B70D26F606
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:42:46 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id z75sf2219297ooa.21
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:42:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411365; cv=pass;
        d=google.com; s=arc-20160816;
        b=uPso3oIKlKkXVvT5tjXZI4ZGi+MTc4RzIx0qGPd+NMrBj5SFX2h2E2nYMP7bea+PJY
         dhY0zhM+hWU+7cnGl8TuD5d2fYkcunERSijgxtABJbGLqnJwiMymdkYGWl2YHOO+FRMz
         ka94M7R0TbCRUG1hoM3SbVwYZvDK5YBVkiHCZjyJnC14porS4VNE9MCCNkSfP6XGgXUz
         EEG8tI2BpzpGnZsgVdhmABFm9ww+Hybt8BpUgnZzPnH1xiqxMS+f7XsPMyOszvlBXyvp
         9gmyfyTlYwpUuUICK8ADyWneGnjVN6cKRb9dpd/74wm4wrwD2kPNu6gb+lVJUtgxTH76
         IPqQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=+Hph5p5OiMWkMpPWmgnJzAUrQ42EQCaZHkZNPMEaD0s=;
        b=oDQo2ZLUKBDjG/Oqd1+X3DxoJ4319m+4KrpameHP/aTimf8SuR1tDxaZP46ZraXeSP
         B4KhuRvipcjqrUeS6LCKuG3AKxdW6/+dlPw9X2rUWIRT5VOuGIR6bQrIFiGm0iX5fSL/
         eTaWfU4PS5i5eiZVshc/ex2344FnLnzllaxY2ynUadNO47J5W2+tV/CAuXf0AnwtttSc
         6W5LZ5i/E4kD7zb3v3J/rBi4WQKR8aqJG2dGHw0foaW+gccugKfz3CmL/2K/2zvRJUOn
         2l5UoIkkGA8YebScLD8ZyGaNxLHoNOFu9EPE7lgQN1BbsjiF5rBKVeqXhQTr4E4sC+D8
         onIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=D2HNf770;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+Hph5p5OiMWkMpPWmgnJzAUrQ42EQCaZHkZNPMEaD0s=;
        b=o8MZVt5qUlzjE6EOH6Okjp6ax2Hhqlflnwwx6zi0vJ2mRIhLwSMK3eM69RAthzFA4a
         gWldpZWHpcNaw+auN2UYhu70S00fJ9s9UWzg+71l+NN2HeJboomIWzjhwwzSKpvm7cP0
         vaCDI+gk2t09n7LvLk38PywVuyFNAUwBpWZ6VdY9BhdGGpVHU7vgAX0TmrcbbmahmLSe
         17ZEEdNiX97k4okNYPfiGYZxS5MYHVO7rhx2Hmd8Wq2tn7i9qyq9ck+jYwaMe4M1QNiQ
         h9of9e+xD4f6WV0mLZM+1/P5fjfCOs/pQKoI9wD/RGRgEvFKCd7QJngbiplXnvdYsEnR
         1TQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+Hph5p5OiMWkMpPWmgnJzAUrQ42EQCaZHkZNPMEaD0s=;
        b=S3xj9Lk8Pl9Ke1Vk22ZedMbjupmQzY5clqYxZ9S+XXUqP8QqdAUnwigwwtEMLaJ60y
         YDghYe9Db62GgPcnVgiD1L5vHiU4iWfs67P01TLs/UeNhX4aD0PJ5ElRiY7iPePl8yAW
         Ir4VIBgCkaEpUD2H+pbtPaOvTn1WpekfRNEkF6qBH4VVSjHkZXJejDLNsgzGyTQFyq5r
         DqQf/6ktIOean5GCC7v86Cd3QU98p+8KAYKmTe4pPdLmNIxfGxEeUg5XH6lMmH2dV4Mf
         R4U9AHuHS68TovBZ0PNAA6z5uwRRwkBTInDxikHjss5SCDaBNVSNguWl/a6rGAUeltEI
         K6lQ==
X-Gm-Message-State: AOAM531tq8bMk9072XNzkojtyscNBN3bIpkBGQaow5X1dszHuv9v3NQt
	/k5vYz3/OoVHg0d23efBi0Q=
X-Google-Smtp-Source: ABdhPJyqQp/vqYHdONFSi7PAbCEhh0409yKQe6hgJBe0egbhpEXPO8QJGgWue+Jum2xMg//n6VPRAQ==
X-Received: by 2002:a9d:7856:: with SMTP id c22mr22795451otm.153.1600411365069;
        Thu, 17 Sep 2020 23:42:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:210a:: with SMTP id i10ls1031101otc.4.gmail; Thu,
 17 Sep 2020 23:42:44 -0700 (PDT)
X-Received: by 2002:a05:6830:454:: with SMTP id d20mr23209657otc.139.1600411364621;
        Thu, 17 Sep 2020 23:42:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411364; cv=none;
        d=google.com; s=arc-20160816;
        b=qla7ygvsHLwUp+Q05O/dvh+jKOPKbm40iA9272/xHbaDtbJS3BOTgraMlgDoSjayGb
         DEcRDqA3opRdWXCHxW/NuWvWy7nrOOgQygVYSnhTv54tDLJeTz6E3Jt43cbv5hGkEF/c
         GXLKzZcmlrxWmdn7jyYJCjobHXQlhjjJqIUzBRkSt4niA9fojs0S9Tp11mqDxlrPO58l
         2N+QivWBqLbrGDC/ReJlJcAAt3H4s8Hp5h8QCrLe4GpGwAzhE3mSmQdvgtfDxOUAY1yg
         fWO4WwXKCShI3OvwabVOoibBsDl/7909B9m36opaHKEdIUo8J3ehlElBPKXJu8Y29snS
         k0tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=lFqkCh1cP+tj9UFVkaUqI+8hDhaypWD8s62IvqB0b5Q=;
        b=N4ybPN46IZkBRQ2rccrsUHMuoM5BgW4yDOWpqgDhZiD1RlwrnK0duUdFgMZkP3W8yD
         oikk1rbwqH3RFAIFnxRFyS5Wk3CN6uQUZERw7M+j41oa5OKpjaXOug0t+jfC+U8lpfYZ
         vwbGo5GXHm50nDsswytu2kWbtW6nwosepPhfx3aFfN0rpHY0lkLMLorDCxA35HSGz/8p
         RErEJwB3a5pDkg7gUdsT1ABtW4RYfT7q2ab3rf5Nsy+qCDFpzG9XxOPsjYNLrNouZwTg
         mLKjWG+S7fpmkuJQfblH4QQsT54zgpEPpHuvTYToKmRs5223btfFpNVVKeYh8xK6nA/C
         Rw6Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=D2HNf770;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id l19si188838oih.2.2020.09.17.23.42.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:42:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gaXJ016099;
	Fri, 18 Sep 2020 01:42:36 -0500
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6ga6j081896
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:42:36 -0500
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:42:36 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:42:36 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCK094595;
	Fri, 18 Sep 2020 01:42:31 -0500
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
Subject: [PATCH v5 00/17] Implement NTB Controller using multiple PCI EP
Date: Fri, 18 Sep 2020 12:12:10 +0530
Message-ID: <20200918064227.1463-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=D2HNf770;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-1-kishon%40ti.com.

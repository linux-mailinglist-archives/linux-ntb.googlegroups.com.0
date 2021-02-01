Return-Path: <linux-ntb+bncBCOOP4VF5IDRBYF24GAAMGQEOCI3REY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A464930B0F6
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:58:25 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id k141sf13804002ybf.11
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:58:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209504; cv=pass;
        d=google.com; s=arc-20160816;
        b=FHQoaBwRUAEZQzcgSSSaSs/b5fyVGLo1lFJCmRfjaIKdOOoJkm0aYQ/aHKd4heLWu/
         t5y9k3R0T6HCVYcLI7Zd5eriNu09HgjYch9cLTOuz+ZZRPdeKyFSDMNyGc2K7mBEJ5wm
         3+BCkEhEW3afVsGmz2D+4TK5KdW2+lyoYFlbbwBrEt9WhJAawewqy57REXm9KWCPhdAM
         1KWnO1xeuetS8uo/p9H9HTGaERRV2MNtDPznLRUhwL0dbbw1v6dJ4t9jaNzc5pNhkTyC
         9EE1idgMtCjxcFpdV06j5b8bLlOitYOPin0TPUpfePbVctIBpjpBnbBVQtnL62WeOZPX
         50rg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=FsAkBwJN5O7r5NzdyAktwppjV+2X+XtbW5TmERXzlsI=;
        b=wwZc2ew2mwWxAlPopisjipCbgtXsQ5AWmcShGqeBAWR+uFZPAv65oQJ9iYiTeuMLp+
         qYT6Dq9DQgS+y0I9Ru88L2RdcbwfWAynb7Gsvb0e+Z+OkBYr5Dj7eS5KCOyQrEjtDg7K
         qXO7wxo7XPrHY8Iq/IDAp42CBdoV1f2E4AreiDk/iKNG5yVl3M8zPML+YSx/eq5h9NyS
         xjnxxbbRCdpeR/JfFnrrW7LsVZ4CNvm0larcqxoHpmKn+SqYtj2AAcbNoc50VuTh8N/e
         j27CCjRLKbdLxxW0fXavskmz+gAMTz054lhCBuigcZJF/XTQWfZ3MCDmqBbzQl30c4Dk
         TJ/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Imn8PtQl;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=FsAkBwJN5O7r5NzdyAktwppjV+2X+XtbW5TmERXzlsI=;
        b=gHd4gbP/LgntiqEZ/hMUHfjdg14VvzX3vpZlOwwuO7DGa+2dVhbrIXq2Zwm9jsumI3
         HMd7920emIE4hdYKdhmd67Hjb6LTqIhLIAoV6bXyYZWr0ba4JD07rvXat0LtQJM5J/YP
         MF0gEonmdPTUy3TrSW98HHHPlT5YIiTuPYlhXf4hN7Ub6jia/MfZEyJWlMwDI7gLgmh/
         NX5aIsa/xRMJ4u/OEA2b0gZXMDESsbYOHxXxzZ1hNB+n6gXeHFCfbjAL2Mj6DRxcRkjx
         w+jAjC4hK/Y/oCKrgxPxcGTaIyMj9E4TwHCmRIDDCsvfw0uI/nru67Edd8KCazLc9cGN
         ssfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FsAkBwJN5O7r5NzdyAktwppjV+2X+XtbW5TmERXzlsI=;
        b=px9TiPdOBEXCL2rJef9KBv5v6gDgM/GE0coxhDyOxSONgQP3yXw41ZtpW+7AwhcWQw
         5dsy0tz6Y+HzPbnbFf7kBlYuAPqgxcpOHF9+LJEjTXTENWsYhmhLgaAY/Ubj7oY4rOgR
         k1s3wmtUkorhbDEU2wzSkUrbtzZ88BpersxLTfgLZMFXgH7l0zsu0jBgyCL4RCCA0gqf
         njH1HXwX04kovPguTV4m45ZRqjzQEk5HRFI2bI7qsZAOi0sQo5Je1NX0eViMEYLvSNqv
         6sEQZudyhLs371wBiwGfnUVrcRItOap0HYSfHLltcUphdNUMIHcB0RpJIX4u2w9RHpSv
         LSpg==
X-Gm-Message-State: AOAM532tkqIV8vQhY+rLKAvzXT+hODDvdW1JJg6+5REUNKAFILrViILZ
	6tIpeN/E1dojGM/vFiDWjrk=
X-Google-Smtp-Source: ABdhPJyQwS0MSS/qni7zc6f9NVZVU7YrnYBHsj8REv1e2RzCbCDjmqOlEN7QvJDY1p6QJGdagfnLrw==
X-Received: by 2002:a25:9d8e:: with SMTP id v14mr16771943ybp.206.1612209504678;
        Mon, 01 Feb 2021 11:58:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:d612:: with SMTP id n18ls3352880ybg.9.gmail; Mon, 01 Feb
 2021 11:58:24 -0800 (PST)
X-Received: by 2002:a25:c142:: with SMTP id r63mr27209170ybf.468.1612209504242;
        Mon, 01 Feb 2021 11:58:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209504; cv=none;
        d=google.com; s=arc-20160816;
        b=dpOl7XiGO5evvBYC1aaPhgk4NtyP1eCRpEg0odbzibqZahYOlID/NgtEKP5FXCtRAG
         97rSamyhSggB966lA+PJJAC1gOXct7CVVFx4nfZHifWu1SLc+j+5pv/dOxbNuBJF/k9O
         kRWDcXtHkpWsJvSbfnIO+idq7JIx+i5vsEfGwDyYGf681AyLPQnKqzVrj8kWk+W+AQPb
         MafQri2uQEQcDzk3BZolyW7Sz82LMWnPacQG2dOfl+Iek5/wRxbBZgeNTn0TFZBfS7Ub
         gTBBjyjWaUYZl7fuMPALQgX5Nn0zQhsO2mpRk62T9f+kSeU3G9HotkUsp8om3EOey+Qm
         n8gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=MeYT9hatgam8hXrRqqzXaKwO21/2Hfpaukkcx+s5p/U=;
        b=NDQxICOSEo6YwJ1pPLWsthr2plyvIfQV3Boc9M5qvNjhxLVR03yoEvBd1C8CJ+cdqs
         +3e/NeCERNcFxyJldJuSpaZ5F/4b2tpO35DJhB9srWtV0F02fDIvYdlSOd4oF1R3VQa5
         icdosJpjeFZJ9ZV9c0dVZIcIo1ACD5iZ1tgARQAiECgEFKDtmTVwgZNpSK9FaDBSHo+N
         pNo2vAflkkXIWixHiwQjLCq+Y/Fwb9nc8LQqcdh8rbOA5xQw9FjqWbJJSmLc4toTwbxs
         S/sfEJC+27rfc75K8vO8kZaJ4BhHLnRJ1CifLU9yPKOXql9r8A9n+J1UPjauuhnyz/ow
         WqkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Imn8PtQl;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id k12si714022ybf.5.2021.02.01.11.58.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:58:24 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111JwGSk023741;
	Mon, 1 Feb 2021 13:58:16 -0600
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111JwGli072730
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:58:16 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:58:16 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:58:16 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQX085814;
	Mon, 1 Feb 2021 13:58:11 -0600
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
Subject: [PATCH v11 00/17] Implement NTB Controller using multiple PCI EP
Date: Tue, 2 Feb 2021 01:27:52 +0530
Message-ID: <20210201195809.7342-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Imn8PtQl;       spf=pass
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

This series is about implementing SW defined Non-Transparent Bridge (NTB)
using multiple endpoint (EP) instances. This series has been tested using
2 endpoint instances in J7 connected to J7 board on one end and DRA7 board
on the other end. However there is nothing platform specific for the NTB
functionality.

This was presented in Linux Plumbers Conference. Link to presentation
and video can be found @ [1]
Created a video demo @ [9]

RFC patch series can be found @ [2]
v1 patch series can be found @ [3]
v2 patch series can be found @ [4]
v3 patch series can be found @ [5]
v4 patch series can be found @ [6]
v5 patch series can be found @ [7]
v6 patch series can be found @ [8]
v7 patch series can be found @ [10]
v8 patch series can be found @ [11]
v9 patch series can be found @ [12]
v10 patch series can be found @ [13]

Changes from v10:
1) Squashed a patch which explains  NTB in PCI_EPF_NTB help text.

Changes from v9:
1) Fix the typos pointed out Bjorn Helgaas
2) Added the received Reviewed-by tags.

Changes from v8:
1) Do not use devm_request_irq/devm_free_irq as pci_free_irq_vectors()
has to be used after free_irq
2) Drop "NTB: tool: Enable the NTB/PCIe link on the local or remote side
of bridge" as there is a debugfs entry to enable the link
 
Changes from v7:
1) Used values stored in ctrl_reg_bar, peer_spad_reg_bar and db_reg_bar
   instead of hardcoded values in pci_iomap of ntb_hw_epf.c driver

Changes from v6:
1) Fixed issues when multiple NTB devices are creating using multiple
   functions
2) Fixed issue with writing scratchpad register
3) Created a video demo @ [9]

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

[1] -> https://linuxplumbersconf.org/event/4/contributions/395/
[2] -> http://lore.kernel.org/r/20190926112933.8922-1-kishon@ti.com
[3] -> http://lore.kernel.org/r/20200514145927.17555-1-kishon@ti.com
[4] -> http://lore.kernel.org/r/20200611130525.22746-1-kishon@ti.com
[5] -> http://lore.kernel.org/r/20200904075052.8911-1-kishon@ti.com
[6] -> http://lore.kernel.org/r/20200915042110.3015-1-kishon@ti.com
[7] -> http://lore.kernel.org/r/20200918064227.1463-1-kishon@ti.com
[8] -> http://lore.kernel.org/r/20200924092519.17082-1-kishon@ti.com
[9] -> https://youtu.be/dLKKxrg5-rY
[10] -> http://lore.kernel.org/r/20200930153519.7282-1-kishon@ti.com 
[11] -> http://lore.kernel.org/r/20201111153559.19050-1-kishon@ti.com
[12] -> http://lore.kernel.org/r/20210104152909.22038-1-kishon@ti.com
[13] -> http://lore.kernel.org/r/20210129124313.28549-1-kishon@ti.com

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
  PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
  PCI: endpoint: Add EP function driver to provide NTB functionality
  PCI: Add TI J721E device to pci ids
  NTB: Add support for EPF PCI-Express Non-Transparent Bridge
  Documentation: PCI: Add configfs binding documentation for pci-ntb
    endpoint function
  Documentation: PCI: Add userguide for PCI endpoint NTB function

 .../PCI/endpoint/function/binding/pci-ntb.rst |   38 +
 Documentation/PCI/endpoint/index.rst          |    3 +
 .../PCI/endpoint/pci-endpoint-cfs.rst         |   10 +
 .../PCI/endpoint/pci-ntb-function.rst         |  348 +++
 Documentation/PCI/endpoint/pci-ntb-howto.rst  |  161 ++
 drivers/misc/pci_endpoint_test.c              |    1 -
 drivers/ntb/hw/Kconfig                        |    1 +
 drivers/ntb/hw/Makefile                       |    1 +
 drivers/ntb/hw/epf/Kconfig                    |    6 +
 drivers/ntb/hw/epf/Makefile                   |    1 +
 drivers/ntb/hw/epf/ntb_hw_epf.c               |  754 ++++++
 .../pci/controller/cadence/pcie-cadence-ep.c  |   60 +-
 drivers/pci/endpoint/functions/Kconfig        |   13 +
 drivers/pci/endpoint/functions/Makefile       |    1 +
 drivers/pci/endpoint/functions/pci-epf-ntb.c  | 2128 +++++++++++++++++
 drivers/pci/endpoint/functions/pci-epf-test.c |   13 +-
 drivers/pci/endpoint/pci-ep-cfs.c             |  176 +-
 drivers/pci/endpoint/pci-epc-core.c           |  130 +-
 drivers/pci/endpoint/pci-epf-core.c           |  105 +-
 include/linux/pci-epc.h                       |   39 +-
 include/linux/pci-epf.h                       |   28 +-
 include/linux/pci_ids.h                       |    1 +
 22 files changed, 3945 insertions(+), 73 deletions(-)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-1-kishon%40ti.com.

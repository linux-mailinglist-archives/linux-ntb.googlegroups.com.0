Return-Path: <linux-ntb+bncBCOOP4VF5IDRBSOL2L5QKGQEL2UQALA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E3327ED12
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:35:38 +0200 (CEST)
Received: by mail-pl1-x63c.google.com with SMTP id p15sf1185127plr.0
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:35:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480137; cv=pass;
        d=google.com; s=arc-20160816;
        b=RYxJ01DxY1oKXMf3sh6oq9oge6oyzonJAnqjlDLoA4xXew0w/PM7BQgOp4HYEXaNRM
         BaSiLiIMkp3UTFULMlkJGh8GBuOQugpoM0SIvjkSb/0MOKbnyspgfq1ma9lrsF43Fhjt
         N2n6frEXYwTzmaHH5WHWh3cj2g8WIdu0CmTGbRFRzB7Ext3lX3XBCwURQW3JsnXSFRg5
         bBL6x2Nw8EDYQCcPVMjMHiLsVY8vD4s04XiK78L5q2oLOI1dKJ6R8I1F4/JBcckOoP+x
         GWNhBMs1P2wLVi1WXkoCRUo0P5g2S2sg4ozHPpFoupJ/cEPgh3FoCrm23PwN3UQgu7jp
         tuVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=1O7gUZEmKd3nOj99rqmDFIRt1RbKIJLCoETnC3wIRE0=;
        b=YvFx02ywiGzIkJgxPOKRHziz/LliU+fhH3JSAmRfzVGKxO+xneV8dzEufLljpjJWRb
         1q4oKMZOlG13wqal7SBl5ADt3HO/8ab/5R9C/4l/hYMABk+/EQbgPdPlaqC1WvOy3KBk
         8ZywIk2Juhtm614QiTtBsmVqFg7Q0MGL4cylvFeD3HTUEeyp6fp+Pw9lewNCkJoWRgIR
         NMqz1O2hRxR7JeFz1Gww3C3HyUKRA2EiyX5LjKnyHWsuxJzpe2f8s0b0IEkBNXbWYW1s
         ISqD4QFCWX/rFa6BVyXJUXFfKYEF7yPcEHh91pab7vjywsEL83PbLgBEZf2UY5mw85g5
         yhLw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=EQDLDjAV;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=1O7gUZEmKd3nOj99rqmDFIRt1RbKIJLCoETnC3wIRE0=;
        b=LvoqswtKGkKzRvX48PvMatPA+E/Ed+PsTM0GeAjTvbw9zL97tVYN/jEg7DK/93SDG6
         CjinK4I2Ri3S7sV5tC0Ouz6tFgmnlRhOSSFBdInKaCt+c9Gewszed1IBAKtLYTJK6DXg
         WrXTT+wnB4ZBlrPBQriJf62sxYTnT0Hg5K5B3gKw9gZ3TEHbM19vDqiUvCT3xDLkwrPw
         JnAw0Q7qtp6Fe2RBvwfuO9ZNmFMfL1rnqu74HoQkPTXpeLU5EUXq2lNWPF76UToB5IUa
         B2mo4tEISUQaz1q7SfdzkdwxdiL0KjUio1e5fXTkvv25X7UR88w2z9vwtZVr/ZF3uuX2
         Wyrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1O7gUZEmKd3nOj99rqmDFIRt1RbKIJLCoETnC3wIRE0=;
        b=cd0yZjDVG8XaSGByHlBSBgANrgPytsITPUzUSBIwos2MvEK9CORdJv6Oa3jcm4D2Bn
         3VjVvdLNN1U70PuHY2T38FS45A2xMkXeNIIK6NWCmRFJlvK4xtDKkj5oKZu/PzUderOL
         RBLB93Te22wnrzgjvXQZpO/7bLrxIhQTV6Od41A5CFxZ3e5dzFQZfK9p3xRXAduiyQR5
         /qsFoTOdlZzbLyydCMwfe29C2NV55suJMbJ9926EMYQ5qbPU3rHA6riirpACZkRmLRvy
         eWb0+dCidwhE6wbFdK3/6FrEEDXLsvLVHcM8s56kOyLaVGghc4haHS6xArHk5xSD1Kz6
         bFZg==
X-Gm-Message-State: AOAM533uLGXd3rvXZz4W2AkZRMka4iermOpTjeAB/34A5kEwppHcsivE
	kl0lBk4pZyhfvTTnz7PiWxE=
X-Google-Smtp-Source: ABdhPJz22ZnXLBZFauHUOhEW04WIkOw3KeDZ5iKFiJLF2AyDINQ4/euBkwSJdLHyb74dvFqJcEIzjA==
X-Received: by 2002:a17:90a:2e13:: with SMTP id q19mr3044644pjd.211.1601480137195;
        Wed, 30 Sep 2020 08:35:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:c3c2:: with SMTP id j2ls1185227plj.7.gmail; Wed, 30
 Sep 2020 08:35:36 -0700 (PDT)
X-Received: by 2002:a17:902:ea82:b029:d1:7ed9:5470 with SMTP id x2-20020a170902ea82b02900d17ed95470mr3007089plb.26.1601480136602;
        Wed, 30 Sep 2020 08:35:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480136; cv=none;
        d=google.com; s=arc-20160816;
        b=KJSIHagpVecTs2naI+9HQz9ETh/Doule4jkqRHJWSyEt6dSNWOc1q3pIyyT2DxpqU7
         /abohO1P2e18ubVvfPo3fCFKW6EVklipQJcIWHPiQYDrQCovxFFZXy5W8HIFeJeIxayc
         XMVRiMxQJx5/bmx4/OxF6ywBTpFK37JkSnKcbmVnf0aFBGbqaPnCDWQX51NXeSLZH+r3
         t+Myrfhwc8tnbJiSZIcuXX4ne8qf4r2GOca0/nQaoqqQaV5v6JPUF12nDf9r9qZejx5K
         CadhzjlRzuVivgrECIOLEY+PMee7S2GksxwaQnxgzpt+Xgloj+AECU+78y1YCUgymxSJ
         bMEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ha0TyEbot1I7jz4gfFATAE7RfhJINYxlN88YUqG3+64=;
        b=r8S+NIBHPgpr79rv8IjwB2wuboE1iuctECVewtPqRLOHxqBKnep6sYA9rX6uGQ/H9P
         uUqeV/kX2R9HtaWqg4DhszYP5LgmQh7v0iuZpygZtqfNBij26LJimQFJqxG4/ElLgo68
         /xwrpxQqrbgpNoybmAHac7Eo3MZ9kdJgk0RczR82klfYWKmnHWI0I0sDIUyZup6R9Nnc
         lT6Pt6Lfj/Oy10jtTK3QkK2WRn5qYsxAAtg41+si8OAT7vqNppPTXQ3YkOkI18r+ZS4X
         o+obzmT3wj3Na27+erT70QKBsd6/MVkMnxb08yQsml1vYBNCeWTR0UtarYtd+d9tDEOt
         ejxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=EQDLDjAV;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id s3si145161pjk.3.2020.09.30.08.35.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:35:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZSWG043433;
	Wed, 30 Sep 2020 10:35:28 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZSSU029667;
	Wed, 30 Sep 2020 10:35:28 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:35:28 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:35:28 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZP033254;
	Wed, 30 Sep 2020 10:35:22 -0500
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
Subject: [PATCH v7 00/18] Implement NTB Controller using multiple PCI EP
Date: Wed, 30 Sep 2020 21:05:01 +0530
Message-ID: <20200930153519.7282-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=EQDLDjAV;       spf=pass
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

This series is about implementing SW defined Non-Transparent Bridge (NTB)
using multiple endpoint (EP) instances. This series has been tested using
2 endpoint instances in J7 connected to J7 board on one end and DRA7 board
on the other end. However there is nothing platform specific for the NTB
functionality.

This was presented in Linux Plumbers Conference. Link to presentation
and video can be found @ [1]

RFC patch series can be found @ [2]
v1 patch series can be found @ [3]
v2 patch series can be found @ [4]
v3 patch series can be found @ [5]
v4 patch series can be found @ [6]
v5 patch series can be found @ [7]
v6 patch series can be found @ [8]

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

Kishon Vijay Abraham I (18):
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
 drivers/ntb/hw/epf/ntb_hw_epf.c               |  755 ++++++
 drivers/ntb/test/ntb_tool.c                   |    1 +
 .../pci/controller/cadence/pcie-cadence-ep.c  |   60 +-
 drivers/pci/endpoint/functions/Kconfig        |   12 +
 drivers/pci/endpoint/functions/Makefile       |    1 +
 drivers/pci/endpoint/functions/pci-epf-ntb.c  | 2114 +++++++++++++++++
 drivers/pci/endpoint/functions/pci-epf-test.c |   13 +-
 drivers/pci/endpoint/pci-ep-cfs.c             |  176 +-
 drivers/pci/endpoint/pci-epc-core.c           |  130 +-
 drivers/pci/endpoint/pci-epf-core.c           |  105 +-
 include/linux/pci-epc.h                       |   39 +-
 include/linux/pci-epf.h                       |   28 +-
 include/linux/pci_ids.h                       |    1 +
 23 files changed, 3934 insertions(+), 73 deletions(-)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-1-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB4UF2CAAMGQE6ANXWMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 228DF308916
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:43:31 +0100 (CET)
Received: by mail-qk1-x73f.google.com with SMTP id e5sf6910046qkn.2
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:43:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924210; cv=pass;
        d=google.com; s=arc-20160816;
        b=FlqgdHrElfeLOfRoflVDR5ppvl5l1+a53QSp85d2qqJDljFZ+oQa+EQChwHY0lJk2o
         7MPDYNYpQJoi43nAxmLRuYNL7uTpe0OTxH4caSPoAR+e/2FOFLyLziGGdSDFZPZV/81p
         Sk+gMt+jkPFCmSICsrKiw1TbHnmiMV2xbXxbWFaNw0ibcPOzt5pQRloz9BM2fNhP+6hy
         NaOhCtuQ5sc+1tP5EyWTMHTt0jVNtmjXYsJ78rPZq0GOEf+vFKIyp6R7BlpR0y5x2tbL
         SaJvTIdeYC9+UPJhN+r+u/NTexe8cVxdJozwjkESTg+8ec/na1Mfm7hziiQ7Jk23ez6s
         V2bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=WWfXDbr+GjpdvzbT0Hr6LCukOLusX/mHkuEchNW9I1s=;
        b=E0xof/sORmuH8kteHdNi/ndSj9gcDLCHukynLytxY6LNH4NzYk9V+GFGWgaQjW3AS1
         gHNsCJpkjp66naGdiMnWryv6EOuOLE9Fejzr4YlkKvw5NPutZyeWHGUz1ZBpzWA+TSph
         yQVJvg49kiQ5PCejcf0tYk7r1A3K8o93CJHvKbuH2Mw9oXbLkUUZJelwhNO/4OGl8qvL
         kvJIURb1qiSMFY3h/vawEP6HROw6cEmbD3Dbc9JOJ5OylG5BafHeCXppZe7MG2h0VEV1
         N6I4D1JdLFgMoj0W89kGj3BQhQ58QbjUbhKUJQGROut1Ft3Uu8cFaye9Pq0J8kz55/HL
         BpUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Uas3UBeA;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=WWfXDbr+GjpdvzbT0Hr6LCukOLusX/mHkuEchNW9I1s=;
        b=bH4rQ1JFHkzskmV0m+apwf3BJNhqcy6EjHaZCfxOcfji7SkYI/GtlXcG/YmzkUBGpc
         G4POUseypBUEwek53pynHrXod8P5ev7FxJQ46mRBYFzpXqdqLDbRxFYwJN6JsyRGmi8f
         FYtyf8WEuK7IPlC7uTBW2WaXtzX9Oze8deDw6Cleu8E1mlRc3L+352mtcCn0ULHdsuM6
         j4Z+oOmTZb7xII7ck+l5i2R/2mVCrBD9NV3CWQyCpZpyftgqIPyvfovoCvlPeJxIV95m
         HReNqk/lLk7iFtddMF+YTprLKrksC9tnFxafXPVMuRILvGtWvqtKb2n/+Us0u7xyMp5F
         Dp4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WWfXDbr+GjpdvzbT0Hr6LCukOLusX/mHkuEchNW9I1s=;
        b=qzF+ZA2ejMZYMNP7OOgGbP66OyT/cEo2zRhjg78KFygp1CGsK82456rzwAeU4ZX2AQ
         3U2FNUziCwWldXamRzQfqViJbbymvHU7BcA3OT/a4cwmieCtTKA9twEJFaTygpg+d6ZO
         CQeKjdBnvr6V7u3IrvHhc4k6tGFl0h0/Az2bQJvakQrLb9iduRLjX+CMsnjq4rg7cuRj
         q+HIGZZxRp5FHiVDTTJud4Y2egAiqLpAwRr4gheANGQi7i8htK3Zat1jcfoG6gu+S3AW
         KN67ttWwm4SOoUJJNWV+soWmK966NUkQx20WKASHfO7RR18RKm8/rCwZiCfVwksguHvi
         gLFw==
X-Gm-Message-State: AOAM530WOJPxJaQwM+mMsribn7ML+pw/7ubw9xF3gHQgAcRT1ClEM1gn
	8AhCSwcZi+Ie+osYxA0UpT4=
X-Google-Smtp-Source: ABdhPJztFIgQ2XU3JRL5Qeq0PT6zbeG0D5MJqfOPTJfVe6k/PhBarxpeUr17KaE+JgaynFI+N6jcTg==
X-Received: by 2002:a05:620a:881:: with SMTP id b1mr3921646qka.149.1611924210161;
        Fri, 29 Jan 2021 04:43:30 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:2f42:: with SMTP id v63ls681786qkh.5.gmail; Fri, 29 Jan
 2021 04:43:29 -0800 (PST)
X-Received: by 2002:a37:745:: with SMTP id 66mr3900358qkh.120.1611924209726;
        Fri, 29 Jan 2021 04:43:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924209; cv=none;
        d=google.com; s=arc-20160816;
        b=iRCciAJ4V2owNehEACvl9EBOdJ9b2Jno9ic11jKOMvASRYKlzW/63WHpWvwDoBjpPM
         xh37TkYedFLk5ZfbAsdFMMcV1zHyfabmjg699k74ZssEiauu66soDqVZGzpTJE/9/Sam
         S7mN9X/LHxk4TxtBE+Q7GUHY6xcmZ9W0A54VxqDsjibeZ+hRwhzEdLi5ry/vdhQcZ024
         Xtch4Kza74zzaEnvEDikgTkKOLwAE3AGATG69CddEN7PB5t7sXxu/Wor+WOYIcCsLyJ6
         ITOZoKZ4K89MaQMq+/3iPSYFMDmes0uX2VmMkEDTWEF8MqH1EBPn5rjgtukdPHxj3H8d
         bDuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=PalUdEWssvbSSeeq3p11qdNECEJ8YHAX+C3HEGppj8A=;
        b=olEs56JS9xGVopvvpFdsFyG1VoBPiWwYfZzFb3o9jreZySqihnvVyTimVGQUxpvPEL
         /XbgYhA1BPEF+/jUOEHVNKKm2rhEvnvc/hM37lbgrjuy9eqzWNmj8wX5LRZItI1+tToz
         0BfojWvHJbuKtRfT9JGByAbQ1Y3HgIfjoAPZSOC702J2UGV2G5LAzdwDVIOhpQLZq8zL
         PBdjTm4lJSb7Y902Avfq31p7l6PN4hQKTYpGBoR1cLJ2cTDBNfyfHvCa755gS7pZtU85
         UGgbS8r4AMIV2/1Kp8dkyXir/+jv9d5anb3wm+owdsOhaAc1Y7MMw4pOqyqp+XgVjyDS
         ANSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Uas3UBeA;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id u4si686190qtd.3.2021.01.29.04.43.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:43:29 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TChKGa024100;
	Fri, 29 Jan 2021 06:43:20 -0600
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TChKx2011844
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:43:20 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:43:20 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:43:20 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDVx075758;
	Fri, 29 Jan 2021 06:43:14 -0600
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
Subject: [PATCH v10 00/17] Implement NTB Controller using multiple PCI EP
Date: Fri, 29 Jan 2021 18:12:56 +0530
Message-ID: <20210129124313.28549-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Uas3UBeA;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-1-kishon%40ti.com.

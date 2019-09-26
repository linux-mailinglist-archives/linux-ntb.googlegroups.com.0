Return-Path: <linux-ntb+bncBCOOP4VF5IDRBYGCWLWAKGQE46GFBEI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 42379BF151
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:30:42 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id q84sf895291vkb.12
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:30:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497441; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ud9MjSbV6BlAy/1ZlMwGTTppfiyrVCJlqrHcTmArUw5y1w+9rzjOuEyjEEOcwiQV+i
         boca0u1Gf6O5JevVbIZ93OcZ9zRR/83sdltF70jmAY5DZfSCFZuVByBI+FPUy56zm62B
         PB7Gr8EQhKSVHR2Ren8lbrTv7nwDUx8ngJkasTV0xaTU6KRHxsUrfKGFXyLb9jt8MAKH
         /myGWniTO/WsDLlncnSoJBC1lvFMJsiIAbxembOgol2bYXUeqATFhJq+LgRVuf9EWSgz
         0BuE86bRcwMq6Fv3t86QWFUUKRvORbCjNI+ZFHVzav3/BYfFVLFAKePqoqTC85gQnWEr
         97tw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=Hb1pO9aTbzMskTlf8xHUnBMgvtiH9eo6rtjdXWFJFRE=;
        b=nbhSL+FfbDg6pDAxFmwzXkd2srMRYb4+ViS42MWa8UVbwPr1N/LjEhnNum8Dj4HeuJ
         5GXomJNjhHKwB3kbPqr7KmyErFJGZKQeSHY+j1PN0VjDilgQDol7Vbavy11VXWp5yM61
         xKoehemRffoGo6/Slw86FUnFXB09r4A/Bg7B0wOq8fhRcktLe85ukXKtPXvXZ8myLi8c
         38dobuZ4w+AyGsxSdqvSxwCGfzlpou2BifEdCzqbfA1Hk6Tf5dHP45fZbZyaa9eULaRm
         afHpX4gUV4f3+g1ALebfqgWNauBgrX5O3ITpdZA2Sr+OKWTPwy5H3+JbmjYEiGXkaZ3b
         deXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uUSatvgq;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Hb1pO9aTbzMskTlf8xHUnBMgvtiH9eo6rtjdXWFJFRE=;
        b=jSzS8Q2ngha9/NP0oeUX3YKMDDvUuxgI4kqf9aPxHu0MM8+79O4w7TBB8EhhrA4Xi6
         VWcujIHxg3ukMfDfOpaKeMKvkjex5hF5TLI/5K0r1UFM6hVTTQLVO/wMpGfqqJdxmfDu
         gL5JDwbv6RyTjEgp7rMFtYEindV40A93E7Psk6HMK7qF58H4epQXd3GRhp79wPZmzvS/
         n+aeW0dd3VzPGFLhqDp8dlWAbBsNPnCpx2jpKGvZcJj55rZ47f9YsfX3H+7Vj/jzXeyS
         h5c3pBgj0pfumsrwOEQjlFzQSbShpDh2l74YuKMbI9WJvu5Y1ZHamKAYP678lHDi3r+H
         k8+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hb1pO9aTbzMskTlf8xHUnBMgvtiH9eo6rtjdXWFJFRE=;
        b=JoogE5mnoTdBypDyupM9lUYIDbE+CdfqQNZUmoxQhRIGpC9Vbu9g/yy0x8ATn/NW3M
         MKEeMFMlXNhclDu0vdSv+mVKooANqd1P3b+JMi4/8chpdfb1dEVxaKniW3C9k9mZTOsM
         z2AjXow/XO73JbOFWKqYyZB9JIpOxwTqjkGu7Qe2MNI3pZDM239S2/99UoITwqvKeVKE
         KXs0Ek6MyLcBGicUapKS51qNbwdieQ/J65fWxwP1HWyBiu358KV3XL9UpYNFfsnYjBO1
         B1vjDLhd34dwY0/EU76QJPosgfdr6dhzhlid3EiZjpkKlst8/D6oNNdYYTxc4S2dMfpg
         zvHw==
X-Gm-Message-State: APjAAAXdWPrrkVxQdEljJbPau1V9h8B0vka0D4eytxiGDClPaNvbOpH8
	GOTIwARxNVhqUXtGMlDlyk0=
X-Google-Smtp-Source: APXvYqxQIuJfVsenjdBAYLNeWBAl5V07so09qsCqsnBT2AuYck7RFoBokTLQe114Ldg3aS/HjI+n7w==
X-Received: by 2002:a67:c584:: with SMTP id h4mr1430841vsk.128.1569497440887;
        Thu, 26 Sep 2019 04:30:40 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:c883:: with SMTP id v3ls229839vsk.2.gmail; Thu, 26 Sep
 2019 04:30:40 -0700 (PDT)
X-Received: by 2002:a67:5f07:: with SMTP id t7mr1408154vsb.234.1569497440604;
        Thu, 26 Sep 2019 04:30:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497440; cv=none;
        d=google.com; s=arc-20160816;
        b=n77ITsIJRdqB26ZeD5XWyBNdcUeVCW2pfatJCIKyRERcsDhotYgU+agRQoZVl97yMf
         mzZCRQGZaIRFH4BC2pSs8/tHnnXieaHSTn/b8Uw1mBIqvRXR01vLVRlF9wfcqW0ngcUN
         smCPrTjY4WiJZXqT591opxhpZsNQE/va56E3MEZxkYIURgssF1xBRRkrYmDa/UvLKuPw
         sZzYlXB1wDtmvFibP0Wd5YyN8Pk2CPW9guTxtit8KXuC94LX0gh9Iyx3GM0KBd08vTLJ
         QPdd642/rVXapbY2CktzfWPoCUq7W67xNO3ix5foM/+jffJRuFLlWqW8aiKQg8ZDTy5t
         kgCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=AODQipcO23pd9f37IOWlgE5poXTiPRDoNcx+qXkr20M=;
        b=q3+l8URNLrOV6EVFaTb//KMO3gYUQYRCSFqAadfYs+xknCIBu4pHlo8IHT7LIvPWRi
         ZkLBFS4l38e6XhyM1szxP2y5xEQm9Fax/GbEtmDQDQoxAlUtVa6hpPDg7E8OOEcL8j2h
         vjTAzeyqIdZBNne9kZ9tk67uDXt5/GgXUda+cVHOqshhQOPqyGsjoVkuVgFdHubMh7D8
         kSPRxfTCOobtzcwSj0kdsHvUhleFX4Xn4Zi15rNabFPufncNKjNNTPSDgqGL6ueNCqVI
         giftkIdjcMTRJkDn4ONRTFB3Oj5woOCnnnycg7sJkTSN3lXG7QkMlK2Izp1wnEktJ8fj
         US5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uUSatvgq;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id 136si126994vkx.4.2019.09.26.04.30.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:30:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUYVf042269;
	Thu, 26 Sep 2019 06:30:34 -0500
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBUYPd090803
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:30:34 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:30:34 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:30:26 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTjr069017;
	Thu, 26 Sep 2019 06:30:30 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Rob
 Herring <robh+dt@kernel.org>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>
CC: Mark Rutland <mark.rutland@arm.com>, <kishon@ti.com>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-ntb@googlegroups.com>
Subject: [RFC PATCH 00/21] Implement NTB Controller using multiple PCI
Date: Thu, 26 Sep 2019 16:59:12 +0530
Message-ID: <20190926112933.8922-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=uUSatvgq;       spf=pass
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

This series is sent as RFC since this series is dependent on
[1] (cannot be merged before that series) and to get early review
comments.

I'll also split this series into smaller chunk when I post the
next revision.

This series is about implementing SW defined NTB using
multiple endpoint instances. This series has been tested using
2 endpoint instances in J7 connected to two DRA7 boards.

This was presented in Linux Plumbers Conference. The presentation
can be found @ [2]

This series:
  *) Add support to define endpoint function using device tree
  *) Add a specification for implementing NTB controller using
     multiple endpoint instances.
  *) Add a NTB endpoint function driver and a NTB host side PCI
     driver that follows the specification.
  *) Add support in PCIe endpoint core to support secondary
     interface.
  *) Add a device tree overlay file to configure J7 as NTB

The test setup is something like below
   +-------------+                                   +-------------+
   |             |                                   |             |
   |    DRA72    |                                   |    DRA76    |
   |             |                                   |             |
   +------^------+                                   +------^------+
          |                                                 |
          |                                                 |
+---------|-------------------------------------------------|---------+
|  +------v------+                                   +------v------+  |
|  |             |                                   |             |  |
|  |     EP      |                                   |     EP      |  |
|  | CONTROLLER1 |                                   | CONTROLLER2 |  |
|  |             <----------------------------------->             |  |
|  |             |                                   |             |  |
|  |             |                                   |             |  |
|  |             |                 J7                |             |  |
|  |             |  (Configured using NTB Function)  |             |  |
|  +-------------+                                   +-------------+  |
+---------------------------------------------------------------------+

Here DRA72 and DRA76 could be replaced with *any* PCI host.

EP side (J7):
=============

In the kernel:
        cd /sys/kernel/config/pci_ep/
        echo 1 > controllers/d800000.pcie-ep/start
        echo 1 > controllers/d000000.pcie-ep/start

RC side (DRA7):
===============
        echo 0000:01:00.0 > /sys/bus/pci/devices/0000\:01\:00.0/driver/unbind
        echo 0000:01:00.0 > /sys/bus/pci/drivers/ntb_hw_epf/bind
        modprobe ntb_transport
        modprobe ntb_netdev

On each of the hosts Ethernet Interface will be created.

Provide an IP address to each of the hosts:
HOST1 (dra72):
ifconfig eth2 192.168.1.2 up

HOST2 (dra76):
ifconfig eth2 192.168.1.1 up

Once this is done standard network utilities like ping or iperf can be
used.

root@dra7xx-evm:~# iperf -c 192.168.1.2
------------------------------------------------------------
Client connecting to 192.168.1.2, TCP port 5001
TCP window size: 2.50 MByte (default)
------------------------------------------------------------
[  3] local 192.168.1.1 port 60814 connected with 192.168.1.2 port 5001
[ ID] Interval       Transfer     Bandwidth
[  3]  0.0-10.0 sec   705 MBytes   591 Mbits/sec

[1] -> http://lore.kernel.org/r/20190604131516.13596-1-kishon@ti.com
[2] -> https://www.linuxplumbersconf.org/event/4/contributions/395/attachments/284/481/Implementing_NTB_Controller_Using_PCIe_Endpoint_-_final.pdf

Kishon Vijay Abraham I (21):
  dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF Bus
  dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF Device
  dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF NTB Device
  Documentation: PCI: Add specification for the *PCI NTB* function
    device
  PCI: endpoint: Add API to get reference to EPC from device-tree
  PCI: endpoint: Add API to create EPF device from device tree
  PCI: endpoint: Add "pci-epf-bus" driver
  PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit
    BAR
  PCI: endpoint: Add helper API to get the 'next' unreserved BAR
  PCI: endpoint: Make pci_epf_driver ops optional
  PCI: endpoint: Add helper API to populate header with values from DT
  PCI: endpoint: Add support to associate secondary EPC with EPF
  PCI: endpoint: Add pci_epc_ops to map MSI irq
  PCI: cadence: Implement ->msi_map_irq() ops
  PCI: endpoint: Remove unused pci_epf_match_device()
  PCI: endpoint: Fix missing mutex_unlock in error case
  PCI: endpoint: *_free_bar() to return error codes on failure
  PCI: endpoint: Add EP function driver to provide NTB functionality
  PCI: Add TI J721E device to pci ids
  NTB: Add support for EPF PCI-Express Non-Transparent Bridge
  NTB: tool: Enable the NTB/PCIe link on the local or remote side of
    bridge

 Documentation/PCI/endpoint/pci-test-ntb.txt   |  315 +++++
 .../bindings/pci/endpoint/pci-epf-bus.txt     |   27 +
 .../bindings/pci/endpoint/pci-epf-ntb.txt     |   31 +
 .../bindings/pci/endpoint/pci-epf.txt         |   28 +
 drivers/ntb/hw/Kconfig                        |    1 +
 drivers/ntb/hw/Makefile                       |    1 +
 drivers/ntb/hw/epf/Kconfig                    |    5 +
 drivers/ntb/hw/epf/Makefile                   |    1 +
 drivers/ntb/hw/epf/ntb_hw_epf.c               |  648 ++++++++++
 drivers/ntb/test/ntb_tool.c                   |    1 +
 drivers/pci/controller/pcie-cadence-ep.c      |   59 +
 drivers/pci/endpoint/Makefile                 |    3 +-
 drivers/pci/endpoint/functions/Kconfig        |   12 +
 drivers/pci/endpoint/functions/Makefile       |    1 +
 drivers/pci/endpoint/functions/pci-epf-ntb.c  | 1143 +++++++++++++++++
 drivers/pci/endpoint/functions/pci-epf-test.c |   12 +-
 drivers/pci/endpoint/pci-ep-cfs.c             |    6 +-
 drivers/pci/endpoint/pci-epc-core.c           |  221 +++-
 drivers/pci/endpoint/pci-epf-bus.c            |   54 +
 drivers/pci/endpoint/pci-epf-core.c           |  133 +-
 include/linux/pci-epc.h                       |   42 +-
 include/linux/pci-epf.h                       |   35 +-
 include/linux/pci_ids.h                       |    1 +
 23 files changed, 2715 insertions(+), 65 deletions(-)
 create mode 100644 Documentation/PCI/endpoint/pci-test-ntb.txt
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.txt
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.txt
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf.txt
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-1-kishon%40ti.com.

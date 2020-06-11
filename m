Return-Path: <linux-ntb+bncBCOOP4VF5IDRBJOYRD3QKGQEYYIEIAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D1C1F688C
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:05:42 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id n2sf3956929ilq.4
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:05:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880741; cv=pass;
        d=google.com; s=arc-20160816;
        b=s8ddC8vycOZSeQm+/+xZTC71BEPJreUsKksLN0gbxEBuLhXb/UCJXp23F0X47nuBnC
         0s49Wk5Zgkv8HW/wd4dBOAi3mI+INDHEl1bFem3YfDikojyHpvm5Om63KzvypDhnrIls
         PtbmQQYhG8NZ74Vhnm3I9RUpsjV0R/OwsiDXLQbTaoPuMOjNe1+wHfX4sInpgXSNx32q
         e0bmn3eIOArXHDpHyxw4Jh0B2yLhnssSE4ZctORdErybHabMPJfXUNKIASIerTzT7XeJ
         VWO6a8VnW5E5LNcZIVDMnEzX73f/z/QrNZ+qHMmhFSQdiTdHZ7na3WFfvQjtl38vAc5Y
         zb/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=c9pWJAomDKzO3ssecsJ3uuW1p16JVWKOF82tJpYbpbo=;
        b=rxjnh6Rp2Iw/i0B7z7q8B5sFl20KKWeQS8zlWr+qplyq6MA8/Z94x//smvp9gDnb3M
         CpaydnDfgwLX03XgvqslIGoJZI+a9rJPsTWG5f973GHumj8kGYEHqGjy//jorjAIsLUE
         HoD8fNT8XA6u6TBKrJu1ryVa4j3mBR9LhNpBEpebrVoC+NyWuINqMsE2tMvIQYDcTTzz
         awCKwpXpxdb3yOTx8pkpvgbPj0/Do1ajc+nnk/hV4hjctL6NJkUumUcJiayUZTZM8hjr
         0ltyBUkO4x1dgdH3bYkE4LGA9QXCtbagaNLhcmn3Zj7Fin0tmm6TyX+o6FKjCqK/0cEw
         CWag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=kTm4GKAR;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=c9pWJAomDKzO3ssecsJ3uuW1p16JVWKOF82tJpYbpbo=;
        b=IWsXdcTC3I+0CL+8pxj8PQyo0mlDsOY7mBycCO3728g0+QCYyrhiktEXKL53eZkcHx
         tZ4EA448gghogd/Xtru9jXeU4ivhDtTyzenMuCb0hFSyAuRzIckpvjr+TpaEl1U0cWB/
         VCLarj68yZkt3PKH16qaDoI67+xR73DvI8yfTLvp96b0Le+pHNHFyoN32GI5RhH/FAhD
         bCXIzXbSgCR6xaA7FyA/7dpRuGsi4nFB+gmrJrFxUJ1nTehARC2SP5t69FN91UqrUt4b
         ZNou1SRENRIngiw7Bb2lHZTJwdIJlZlL+XVZaM+wc6fWjhoDPcLyVqyogq8fUsQYnnDG
         z92A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c9pWJAomDKzO3ssecsJ3uuW1p16JVWKOF82tJpYbpbo=;
        b=h2mkcnV4B/mukzMm5nAgTa9KDUuEt2oY61zAHwQkaWBfnqVw8YlknB9qGo3Ra9gMmZ
         /8cL2qx97B25LBaUi6pVF11qJEQBFhHOUmcr/u+dpGI68kNFf2NZI7gQKzyanXFbm02k
         qy9mX+1OMJJ9NuBAlq79UqOQPOAwm2dFU214l/Co2+bFeAyjuUJVoxRfn5G6zPqIHtUQ
         bTkc1sgwh5CBpTtIxynXLxgWEo5mBlCX0vxkxbwpsoqI94EhZTRjYE7TrLRPtTlOU3X3
         5NFStIwi7k4wrS4XkQ1u3lhD35snoxSR6sHIB10e0vG9IsmqSrMrJ/Q4XOYx/RDj0Iwd
         XUqw==
X-Gm-Message-State: AOAM532qJCRicSHcGbD5ALYDPg8pr/tDUsD7FaJMBQdva7goXt5ziB6w
	Ac3OsCF9FI3irQeKUBzbDJo=
X-Google-Smtp-Source: ABdhPJzJCzRABINv1iQqOJvmTJaRUVYTPtxKcsj08BX/cc0LtYb3bNBV0vkk3ccb4mzmbOlSxv/O7A==
X-Received: by 2002:a5e:dd0a:: with SMTP id t10mr8608107iop.9.1591880741170;
        Thu, 11 Jun 2020 06:05:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:c80c:: with SMTP id p12ls301620jao.7.gmail; Thu, 11 Jun
 2020 06:05:40 -0700 (PDT)
X-Received: by 2002:a02:3501:: with SMTP id k1mr3108619jaa.14.1591880740847;
        Thu, 11 Jun 2020 06:05:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880740; cv=none;
        d=google.com; s=arc-20160816;
        b=Tm3x7u5Qp/IC1zYDA35Q34bVBpCOPmjNdQhKX2IJMt0dMvam+T2RC2gsCAagZCZ/ez
         KCnHpoY0KMiv5jmnegtrIBodVh7WDsipP7q9JSwIbzqGepntkE6lb5G5p0oskTAVlpsR
         FdvqhWCGlH2oEFKKKe+BhUYwk09yyodK4yONOEIwDl0ANpfrGZm2uPkUpEojdbTreBgl
         qy51+ZKduwDG9sQe/FXr6UadIW1GyXeKWdCW9UL+ApzpXRTsDPPjrsrEtJw+ThJoU+nM
         gJgE95IizoliCh+t/4rHt0PRLBp0Mi/c3WQUA1Zz76SUlPo1/J201c3upmJjxu9ReR8w
         c/wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=eZaXefos8k87hXiBiwwHXrlf1ORnBoagl4rNRyZ30dY=;
        b=zRXaxvw9+GPSUioO+7FwoPUXyjb9C5LP+L+yoyb3VFaRW8sF4CP9IPS7Rq3H7sPC1J
         gI3gIQREGmG3BLzYROiFNoGTQ6zgl+PJYtL44fD0trtoT3lMoitHRlMzPYs0MDRN8+Zi
         FRYNojD72Dsw1YPyZX/3DsIyFmVXIZ8WfWRdaeQoACf0WUrG3ge9+CbUQJoWbMNgjyrr
         YDMaj4z4+Utwb1d1GMMJWR5aPao+uzhXP+T69KeqCgrx2NL3nKqSZ1UJAWmEjal7Aj1K
         y7so7dcIJjfKwUrPHZBmxe8iUyQSyv3JVaTzBOUMzfF88MTMufKy5WYFpY04mSzV95E+
         82cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=kTm4GKAR;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id y22si176685ioc.0.2020.06.11.06.05.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:05:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5UiW107435;
	Thu, 11 Jun 2020 08:05:30 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05BD5UiP121161
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 08:05:30 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:05:30 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:05:30 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZ1082585;
	Thu, 11 Jun 2020 08:05:26 -0500
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
Subject: [PATCH v2 00/14] Implement NTB Controller using multiple PCI EP
Date: Thu, 11 Jun 2020 18:35:11 +0530
Message-ID: <20200611130525.22746-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=kTm4GKAR;       spf=pass
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
v1 patch series can be found @ [3]

This series has been validated after applying [4]

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
[4] -> http://lore.kernel.org/r/20200522033631.32574-1-kishon@ti.com

Kishon Vijay Abraham I (14):
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
  PCI: cadence: Implement ->msi_map_irq() ops
  PCI: endpoint: Add EP function driver to provide NTB functionality
  PCI: Add TI J721E device to pci ids
  NTB: Add support for EPF PCI-Express Non-Transparent Bridge
  NTB: tool: Enable the NTB/PCIe link on the local or remote side of
    bridge
  Documentation: PCI: Add userguide for PCI endpoint NTB function

 Documentation/PCI/endpoint/index.rst          |    2 +
 .../PCI/endpoint/pci-endpoint-cfs.rst         |   10 +
 .../PCI/endpoint/pci-ntb-function.rst         |  344 +++
 Documentation/PCI/endpoint/pci-ntb-howto.rst  |  141 ++
 drivers/misc/pci_endpoint_test.c              |    1 -
 drivers/ntb/hw/Kconfig                        |    1 +
 drivers/ntb/hw/Makefile                       |    1 +
 drivers/ntb/hw/epf/Kconfig                    |    6 +
 drivers/ntb/hw/epf/Makefile                   |    1 +
 drivers/ntb/hw/epf/ntb_hw_epf.c               |  750 ++++++
 drivers/ntb/test/ntb_tool.c                   |    1 +
 .../pci/controller/cadence/pcie-cadence-ep.c  |   50 +
 drivers/pci/endpoint/functions/Kconfig        |   12 +
 drivers/pci/endpoint/functions/Makefile       |    1 +
 drivers/pci/endpoint/functions/pci-epf-ntb.c  | 2151 +++++++++++++++++
 drivers/pci/endpoint/functions/pci-epf-test.c |   13 +-
 drivers/pci/endpoint/pci-ep-cfs.c             |  154 +-
 drivers/pci/endpoint/pci-epc-core.c           |  131 +-
 drivers/pci/endpoint/pci-epf-core.c           |   73 +-
 include/linux/pci-epc.h                       |   38 +-
 include/linux/pci-epf.h                       |   23 +-
 include/linux/pci_ids.h                       |    1 +
 22 files changed, 3838 insertions(+), 67 deletions(-)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-1-kishon%40ti.com.

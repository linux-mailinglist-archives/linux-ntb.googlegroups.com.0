Return-Path: <linux-ntb+bncBCOOP4VF5IDRB3XDY75AKGQEPQCHBUI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5305425D2B1
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:51:11 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id a19sf1995554oic.7
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:51:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205870; cv=pass;
        d=google.com; s=arc-20160816;
        b=oYlMErH3gApqTwK5e4hH95a2yxCk3ihf+0K8brohpubtx/tiLxpT/pjPUiDTKT4f5O
         XvpR6Anpx1AnvVt/0cbfe3zOLRDq6Pjb2ZVPBQXO6qFucJ9pmUnmLALMcJvUUSNDizQ+
         6szQihVNG5C1qk2xTRZ+uNlLmhVkiNQ5kf0GLm+c7LXZPyU3vpj/t8R7sJHYVhFxqPZa
         PId1rx/pYucE3rfzJM5/065xoVEtUOE0bIf6KgShhGL6Slre/YgrbsIStMxflvy6t/rn
         RSCqn/fHM2SbAUyBviHvR4rzpsayik9uSw70AgLT+KejcvVcqRDL+iVFL0bohNOL7nJT
         yiZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=AWCedhyR8REOUkAT5g0jSLqwW6pPPMoxcEs2r1HhpaY=;
        b=hJfDPh31LymDesAnE9isqiBDNzw/hbesjeJtAnBLLl/N0ORP/PWW570v+/a0WPF48e
         Qd6g7o0zxR1tEdsNXCceXCAg7qfV3ymEkO3GmlIyG4F7f6iiJUeOI8Mxa3ZbpmjPBxDJ
         lYZKEw51F8bpDQV20UKTka2mFiQzEXHltjvtc+WKlhupTFLBG2uFbAeqWXmLN4p4Hi23
         TPnjEsoZux4g/3qmdTN7W9VuYywdH1dC3qhE7wvZbKfYw5oa6iaB8L0AGQPOuTDgeNo9
         AaCaCAfKRZ7CUy3yiiGvRJKMKTHzNHkO8cx6M+GLNBZO/NgVu3+sZmfqLj868MEmT7Np
         PQ1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Yx159aFg;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=AWCedhyR8REOUkAT5g0jSLqwW6pPPMoxcEs2r1HhpaY=;
        b=aW03vO7BpNFlYvxTBX1qUla3YIKkVjGiXplwWr9KLfRFo2WCpQzR+V3pXjYrOwFuEd
         8o4ATUl6ymHgZMNQ2eisS7Fi9oXkpAAJaoBCAOWd0JWxpWN6WyN6cr6dLtqtwgPE0/cr
         f5G+tl5bdos8Vcla6gTer4rsANNvzpZ+UWKP6VfO3EYD06s8fL0fqPz5ecmvzPySljzA
         ZNuhmf15WM0FT2nxlkmYgPzC+fdkTH5m+ebHZNu179lD9JYhEChp4X/1mclJdijWJu9p
         4DrYh0BgMQ7SagIC66D6D330kWYakvMsu8wL2XzEixJd7IKCW6PcNTnreHHKqwTyBeHH
         I9Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AWCedhyR8REOUkAT5g0jSLqwW6pPPMoxcEs2r1HhpaY=;
        b=Jw1aDkc2/PPKeRRfEkhZuOc3HgAPKclbzCHRTyHu1CzHRqEst0Ykw/ebwGKQ0UqAA2
         0Bf6NNTj6qIW2xKvlCcBrzqCTkTCzJCpesPKWhc6zxJCNCC8Km/N3VNNrHet0oNhTV9e
         BV86mNTZdqz3+EHCPjH0guXjiJchh7mcYfUILPaa7OtkAiWFamIbaIKIDS0MFg5ztI+U
         4PtO3z4T7d5yUl8Pc1VdPRH6YDFiwlVAsAfaxj1QzRjH7xwnVLuky94qVybC6FtNLC4k
         CTct9CCieb0KX9MIj5LUKQ6P1hx5qZM9RV/2AP0HHkBqbGj6wFg8EP6vh1clfocOaVuC
         2Clw==
X-Gm-Message-State: AOAM533ihi9xfBjoQ+ZCsJ9eq+t5dVC5LKl+y36BmxZlR3yNXtynnlxk
	XcnM/OwJI2qFG7MDPP6hYOI=
X-Google-Smtp-Source: ABdhPJyY8Pl4KoL9nhF81pnZfqk8uAjuuxcK4YKBqg3Vb6qof7fiQU9C/05Ag0j7Dch6spHY2SbmtQ==
X-Received: by 2002:aca:bd45:: with SMTP id n66mr4614213oif.87.1599205870285;
        Fri, 04 Sep 2020 00:51:10 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:b541:: with SMTP id e62ls1865452oif.2.gmail; Fri, 04 Sep
 2020 00:51:10 -0700 (PDT)
X-Received: by 2002:aca:5bc4:: with SMTP id p187mr4742924oib.58.1599205869968;
        Fri, 04 Sep 2020 00:51:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205869; cv=none;
        d=google.com; s=arc-20160816;
        b=iOIs3W3poi5r5nV16VMPbgTIvGhXCi9IM52JnjpfMx4wiTiPj0Qzo6oSoN+5W+zAwq
         TvJkJn0VFnBMvrbAqqgSOI/P5bCuqrSbNXcksN8uHgZv8YtFsVKkM3g9aHEqEGGlFmDj
         0ZeI0i5AYbb8spSjVqD/ScRXCJd9INNeLOHbpBJUdzaIIF6rC8OAnhlfB5b+mfZdnPNk
         Wg0PoJmcd+9KIm/WtF/DFYdoocRcAuzZdSYZVNCUa7FnGV+13pqEBhkO1SyZiIwxv/id
         T6z4B/odXOufZQzqLZCxRQHZB8LI06eTQhPXDRTC+BnvePWeoqKZbvKwAyvqn1bge9hm
         jT1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=F2p+C6aimH28RZnW2ji4fOdcQUPc/ny5FQouhck+Pbo=;
        b=dC5i6I7Dj3HqX+DtdD5zg3wOdacv7/nwCAk3mmBn5mYMSUi/wm/7Z8myIeZQnCkcY4
         uKKkBCpqYLKajfM+5qvbKLROQQbnsmoqhf9ie1IlylQpH95400vFzPQs8zgwq++MTss/
         eWv6GEMsDmskeEt7u8ys2bO2TLwBVmFjPBvMqJRdLQyjbK/DsDxLujWLfK2iuHfM1EMI
         G148Ixy9amG/lvjXN7T656ddpXv1PhrtgKZ1uVlA0V4Lf6UvW4itIaPikkXjz51UllcH
         JWGojZ1BoqP4L8/gQppxBBV4xsezSZHp3IzhIab/OS3bjdlS1PmnF1LVW6s6GF+1Q7FP
         F9tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Yx159aFg;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id m19si434496otn.1.2020.09.04.00.51.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:51:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847p036065682;
	Fri, 4 Sep 2020 02:51:00 -0500
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847p04F024768
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:51:00 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:51:00 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:50:59 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osN1058796;
	Fri, 4 Sep 2020 02:50:55 -0500
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
Subject: [PATCH v3 00/17] Implement NTB Controller using multiple PCI EP
Date: Fri, 4 Sep 2020 13:20:35 +0530
Message-ID: <20200904075052.8911-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Yx159aFg;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-1-kishon%40ti.com.

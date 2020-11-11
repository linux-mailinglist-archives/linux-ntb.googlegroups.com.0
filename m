Return-Path: <linux-ntb+bncBCOOP4VF5IDRB3UJWD6QKGQEC54X2TQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3e.google.com (mail-vs1-xe3e.google.com [IPv6:2607:f8b0:4864:20::e3e])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E202AF4D2
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:36:15 +0100 (CET)
Received: by mail-vs1-xe3e.google.com with SMTP id f23sf739117vsh.7
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:36:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605108975; cv=pass;
        d=google.com; s=arc-20160816;
        b=EXJ71gEovihJrCnV3nABIaYy5LN2Deqsc4K5gWO21xT9fNvNxa0KM64GI2WhqnColV
         rWzN1IaDMyt7UNNp568GpYfwj1zH3uXH6hiRUELWfQuOlptNe/gw9LUAEE5JR6QMKbKV
         48y1OcaRMxHJIXDnVuJhmeYnpCqRnh75UCwvrSbCb9B4QtZEmWWJCiAHUvkaVCDufKvd
         /HQaGl5KQHhFYHWZ7M7l20lxBRhNiTU9mNvR2N5QnB3/f1Ag+1+rkdXxgaaaXH084uRo
         1wJ3WrBJfAiceldtWn4Y6h6u+iEBQ5SbGkkl0YcXpucXnfHostsVYpUvAGky7zvLWSQo
         aVBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=IK95vJp4P1Ignol/qLKKwoaQ/74+vJSA4EhynZbwx5k=;
        b=ptLjjJ6zbwUvfETShoZcC8iD55QfvoJeP5uamPwlnr/Pf8cqKyFDvzLGan5JO5n3ch
         zAxk17fKuwY78VALUyt/gtf7zqwpOSUbOxz/hA5oFQ8nQcD9Ai8N/HGqVoheaKIQwR8A
         aH4674O5D83ls71KQEgBysua6HiGDJajtpEYz6FASdRc+1laBAhRG2WaMCTmBIbnuFqS
         qo2z4wox7FtYbyWRBH12Bft0X7DgX0KXR1Ypc9HWsnkY6PcMSm+IbZZDbWCJUinbMSw4
         G8+P7X8FHjQ/VLZYd1iSyrGBS8NGWp0ChhuS/qg3YuhWPJ4drB7h/FdrRrU7sIdEk7mI
         wbjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=yMM7vNUF;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IK95vJp4P1Ignol/qLKKwoaQ/74+vJSA4EhynZbwx5k=;
        b=Xx3t5+HLRafzRdjLECVoTRSOf1FL/pCnTZMOKvM+KlagaoIAJth7K1Cbf8SOg/vqVo
         1bBKq4CIZDwWVUbOhqFpHdyNgow1vvheTM8zPPcWWzOOwbJFQIfNcNM3klsEOAW8jGIU
         l6APw+iXXPCEGce8QVICPiRD584Ctelsfpnfz50KCoLNTqtxAAP5BCte/QY1vhLYEot6
         m98Pwnazstubb+bRBywNMkT8smc2ndSWLFwl9d81Nfo5n4bsnTJi0ryo8NQFCViXamJJ
         fzap8iSgtu0TUh8/iAeHDc66nE0EyiomXI18+Fgdl+GMexaHzgjg8+L1wXKkpXhIuGRF
         34aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IK95vJp4P1Ignol/qLKKwoaQ/74+vJSA4EhynZbwx5k=;
        b=b39wvIl6Tdjg1FVY62f3pKHoRVPVQ0ECt6nIUV3r+sAKalLJunrVFS0FZtXhrdSXS8
         puXYk6T6l/Zw8q7zjvJvgMrdiAYsdl8xwzsH1ml/a9czBQwyhhnrMvAF7qZ8L+uimjy+
         KFjNqV0rVBzgW1JLXX0MhbjGbpfg3jQqkMS4eVbej6FSx3bkawQqGUFX9T+PLKmMNLT8
         VCjjIW5v2TU7aNMt//fJ2RUu7PoyUdP3zRgPTGXTOVrS6C1lVYxUq2/thrPLoxQ3FDmf
         lubthSir6kaY2lfb5uNY2712djRgz8L/VMQE2XcJG7bPFr7sKC0gfDx7xy3qU5l7NawG
         PxvA==
X-Gm-Message-State: AOAM533vK56VsDxpF9L5Sy+CGJHtFU+k2C4V6Wx35N1H8ZMLvODiqSv/
	AQsq2xhyBK7krUwb91dozIw=
X-Google-Smtp-Source: ABdhPJxN6nen/z0APGIBzlHBSB2V81GEIXh/8K0uxgMj6nc5XNQYEYqGmrOSlHb6YCvPCUfsFL8pUg==
X-Received: by 2002:a67:fc18:: with SMTP id o24mr16416582vsq.42.1605108974983;
        Wed, 11 Nov 2020 07:36:14 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6102:2046:: with SMTP id q6ls36230vsr.3.gmail; Wed, 11
 Nov 2020 07:36:14 -0800 (PST)
X-Received: by 2002:a67:f749:: with SMTP id w9mr16082556vso.35.1605108974523;
        Wed, 11 Nov 2020 07:36:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605108974; cv=none;
        d=google.com; s=arc-20160816;
        b=AIzc3Evk/zO52wOxgmQ4Du7JjSje4apPKu4R6pi/uw3QdV7D1fBN7Sg++V+FnR19Xw
         m7Tn39JErmVV7pJxh+vnsElKH0ih9VrZdbpTQtlZNZR/nIQ7nD9upfR8nYiqS1mQwpKa
         TqHF7hDJh/qYiXJNmCfbKeLmTaX6YkzkMvAOFPz6JutdQFtoMIDLvwTkc5+oNhyRZf8e
         XJupvTf4ulHFXQeYrctK9E+n7cB5ABynmC3hna60sg9olxdY33Cd/+K/D/MA5JTxspxU
         BBLvVhDMsD1NcULdpVPVydthn7DJzK/lX3L9LtNqqpZWSNe5XSXYZDFZHmJo1LYVTcss
         BvgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=0G9kzKptjxkuSYZJyZUkzGzTrwhBRMPOSEvrB9RGpnE=;
        b=wwbuuXmDkmB8LPjcQU6IXv9l+quzLz8Hoa4/5VK9kIqPKIAlZgaBwhXvH8VBypkuxR
         0RIZRu9vi7CZzXZdZHLK4rOzaIK0c/dMsqVkvD6V1R9Pk2O65qas1VVDeZ0gfolKML5K
         jh9L42zbS8rQYukPYICnB6ke2ZK4FhXzH1F6W/Bw8plFlcwoEoM/PPjaqnVwAaclcMwi
         dT98kpx5lRuBPPX/jNmxguqWBa8lEPr2FQDB/mmIEEzP5kNuoQcqAI0amrJtQR/zjHDY
         l50SQpFny+mihjwmMrID3yNfjOsaYLo5ICnUVBskwdA+qWi0u93RRYN5nOvRtwrIBnWn
         q1DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=yMM7vNUF;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id s4si188700vsm.1.2020.11.11.07.36.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:36:14 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa6NH097118;
	Wed, 11 Nov 2020 09:36:06 -0600
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFa6gB019082
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:36:06 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:36:05 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:36:06 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa03p042109;
	Wed, 11 Nov 2020 09:36:01 -0600
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
Subject: [PATCH v8 00/18] Implement NTB Controller using multiple PCI EP
Date: Wed, 11 Nov 2020 21:05:41 +0530
Message-ID: <20201111153559.19050-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=yMM7vNUF;       spf=pass
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

RFC patch series can be found @ [2]
v1 patch series can be found @ [3]
v2 patch series can be found @ [4]
v3 patch series can be found @ [5]
v4 patch series can be found @ [6]
v5 patch series can be found @ [7]
v6 patch series can be found @ [8]
v7 patch series can be found @ [10]

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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-1-kishon%40ti.com.

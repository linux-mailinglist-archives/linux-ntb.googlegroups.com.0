Return-Path: <linux-ntb+bncBCOOP4VF5IDRBW7IZT7QKGQE7ULTSVA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC412E987D
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:29:33 +0100 (CET)
Received: by mail-pl1-x639.google.com with SMTP id a11sf13684254pld.6
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:29:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774172; cv=pass;
        d=google.com; s=arc-20160816;
        b=alJ1YnvUgf/M9RsGriJg5xVIdsGanZ9CqQbq6BoUiDoc6kMVSVag6/apyNP6Ew8QsA
         sKWG/p/fSdF4kqXlc3XDYXdVC+Ocm4bYmiEd5xwsltW1Ot5eqGBhMUuptkQKauy4i48b
         oDu1EvdiNNeTomURN3JSqNrlpYfSbJ3X2jQlXUbEIAAFvzYk3Bckg2/i+ZQwzebCRcP/
         l331SjrxsLUgE79vFGPgXQ16IatNRS+cPk5bHgljHv5pEJ5Ueo2kpRq7+z8m6YC+F1dH
         kdznlOkEUtFQbbkqoi2D69XysrOGxXmkK3VEeCZUQyOEZRYfR2lU9ti1LuLQOf/kkAU2
         LZCQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=qrYKVnQjZ5rFz8Q0EP0jutPRF9oQFfMid3Kyo9IV5fY=;
        b=FyPtQaH4y0IghXDbf+xD7hbJRTomPV+GAY5qU1NBhvYdz5oHCGsGUJtVCAgmjXO3yy
         mTT8zfXRM4JxbZnsBxLsnU3GG9QSrrAdHnAkygZsSnlMkwaKTZHZlVnhoAwGVUM8aRIo
         IluTlZqNvnvUDgUg6Vk7eS5W6wPVVe5Qf2pZI/PW7G3wzfmJLdrARneDWRFull76tyK3
         HX4XPAiNkNdn4nXbI5AIrdOGcrx1wF2p2GpwATcht+1cDN0MvyJOaxOmgYNAEvvrn8nj
         hpSQlDdKqXoog+2U5iLziud21smJH1PPVft3Ag8uKEYH1Yq0T6PS/LERaL4Wc6nVfhDO
         H1fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=dMJ3LAmW;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=qrYKVnQjZ5rFz8Q0EP0jutPRF9oQFfMid3Kyo9IV5fY=;
        b=OQpzaSxNmPwSph+m0awL6ljmOYmyT0kZzPOJA5D/Ikm0eMk9RME7IXAKJsU+yh9MDu
         WpwEYkRENYg8exNjxxVh4JN2WjJP5YkzZDyFn7akRlW8wLqiNchq2IyhlsTo5yH6jKZg
         KpR9nysLbEw1XXI7CgL0GCibPar05Om+ZyJINOJRTdLC51ZNZGiqowwn9SVH5lojdLGq
         nJh7NmiJmzkKG2CUBQG7+EWvxJc/PjBVHbHrhfVWw1Hv7u8qP9C+gulTNYIQ5WAEw2um
         1eBkxVQgYvWH7rLCegz/q/G/WACTOoZCQbPgOtkuF3irRaKw2s7t1cGVqNHMgEHQJWid
         zWig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qrYKVnQjZ5rFz8Q0EP0jutPRF9oQFfMid3Kyo9IV5fY=;
        b=spMJOlaL5cREauaLljv7Ny1PPwEiRxtk+RccnYizSUIg6Hr+brEE4VMcEJVl82TUeF
         M4bhpfqapCEH2lFHqPRCh3PWC+SgskTYXh2yT9eVIE7g+nR7oQfgBG5iMc6es8wjMsnA
         0blZ2Ywf/BHn9XHanOv09FE7T5RWVNm9W65UxJTuuis3ff6YDP1QLKA/8qWcP2m5sPBn
         I0uDj9mNbS4PzeE5tntAV2Q1Qo77bfWhjGYSTgJ7KDimBHvkLtz12IHOHT/cYU4obyGB
         0BRuwpd1leLsqeUYlO62JycBw94PS2of6v+hL+5nCkUlQNScZlD1Ahm4UshMGgLda+EZ
         8t8Q==
X-Gm-Message-State: AOAM532kLpi+bHkcHtI0dEjyuPlwZHImxscMBJuvR01BLa12nmWkJmY0
	SZmhMs7/frGnh4TP2NKLqmY=
X-Google-Smtp-Source: ABdhPJyECiK/o3ryYPNPzCu107AtPhp/l/dkAH4ydqirHu/P2JTSv9cHx6aAYmgSn7NkiaVzXV2/Kw==
X-Received: by 2002:a17:902:ee83:b029:da:3483:3957 with SMTP id a3-20020a170902ee83b02900da34833957mr48707800pld.38.1609774171913;
        Mon, 04 Jan 2021 07:29:31 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:1e5a:: with SMTP id p26ls3036204pgm.10.gmail; Mon, 04
 Jan 2021 07:29:31 -0800 (PST)
X-Received: by 2002:aa7:8d86:0:b029:19e:cb57:2849 with SMTP id i6-20020aa78d860000b029019ecb572849mr66476275pfr.54.1609774171313;
        Mon, 04 Jan 2021 07:29:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774171; cv=none;
        d=google.com; s=arc-20160816;
        b=VuvWOGUCFw2H6N18xqEfze2sza7Hn55+ptaS/1CU3r0lGORs0O5UH4DDz4UDSO3Hk1
         YZ9FZftf3lPDZuv/BbkZkSqaTUWBQqqUc9G10DLU7MqwbZkVzm4njJlqTZexLj6TSTSU
         yFM1xP7uu/KKaXiTLHZrVbni75PIxOmMPheQYWMJBHzBWdbYsN2EaGWf/1jS50MkEpMr
         KZZ1NOoCvjQ4tMi6hbi8xH70KIcO/1yq+aFEM0Yp5KX72Bg3IwQuUel1521mxwGch3oJ
         QKwFf7TEzBCqy7KCidTE7323Se8WxTIdKXGMKl+LXsWahTtLiz7yMugqGFGCuJaNTgjE
         +Jgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:subject:cc:to:from:dkim-signature;
        bh=GxfYDo4jCBSOXc1xcXo+8+SAEX8DQMPS/Eh7lOcxZuM=;
        b=U5uavieLzr0jd/wzH5OgE/FSRYrsAK1HmzlQyjzZ1TK1kYHDPeYNOY6dF0ikp6u8/E
         IALmCMszyyWe5XhZjlgHWtG4mg74qyUMmV7G7UB/7BhMV7iDyn60OGyQ+UyJBMOOlCmE
         Vn9RL9Pu8yyCreLZtaozP+u61ySOHD13soCrEfsmRu6b1yPvF3Jf3fcqdhgX/kOcgPnv
         eA12sDqwvSF01Cx+f1K/KzhKf1oFQBhHuh/46tUGvHbHQVeIPPHbiom0jamIlWaKucfG
         YJLnx+/qz7VvA3HVDbqsYfOacG0PNN2CIFV6F2XE9bzku4LSO+f0IHNiUQZ5iCZhLqic
         W2/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=dMJ3LAmW;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id d22si4314188pgb.1.2021.01.04.07.29.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:29:31 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FTM2N028982;
	Mon, 4 Jan 2021 09:29:22 -0600
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FTML4078272
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:29:22 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:29:21 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:29:21 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZ6093710;
	Mon, 4 Jan 2021 09:29:16 -0600
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
Subject: [PATCH v9 00/17] Implement NTB Controller using multiple PCI EP
Date: Mon, 4 Jan 2021 20:58:52 +0530
Message-ID: <20210104152909.22038-1-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=dMJ3LAmW;       spf=pass
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
 .../PCI/endpoint/pci-ntb-function.rst         |  351 +++
 Documentation/PCI/endpoint/pci-ntb-howto.rst  |  160 ++
 drivers/misc/pci_endpoint_test.c              |    1 -
 drivers/ntb/hw/Kconfig                        |    1 +
 drivers/ntb/hw/Makefile                       |    1 +
 drivers/ntb/hw/epf/Kconfig                    |    6 +
 drivers/ntb/hw/epf/Makefile                   |    1 +
 drivers/ntb/hw/epf/ntb_hw_epf.c               |  754 ++++++
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
 22 files changed, 3932 insertions(+), 73 deletions(-)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-1-kishon%40ti.com.

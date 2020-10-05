Return-Path: <linux-ntb+bncBCOOP4VF5IDRBQPL5L5QKGQE6J6VG3Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD57283037
	for <lists+linux-ntb@lfdr.de>; Mon,  5 Oct 2020 07:57:22 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id x12sf1079924otq.11
        for <lists+linux-ntb@lfdr.de>; Sun, 04 Oct 2020 22:57:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601877441; cv=pass;
        d=google.com; s=arc-20160816;
        b=y/PVxACY5nwcgTfAOiNadKKifq20jtvyASAdU56WzqbSIlhEHMHKruKEiqwB1co+iJ
         T5051K0tSTJyg/o4WMB6dAEFCTYimXsFlgbJWaY27ppc4yrFriWF3Nc5BTqkBKjYFnmK
         dliH2ByFI11aEA2ULKpJFFF+VOVJ/EGUrBTGhcn+/c2g+CFHF6iaUh+5Vg70MEBiZCiF
         q8HeFa+7GhdxRPT8mXY6bXKSq6BZ6fwP5rsBqTld8FfecEm84uQLrQgVTAfFQ8LEskj9
         yQIwQjeQVjLZH82J+jQX0832Fy/2c1dPeFnHPBgWZ+nI3zdQRaIagXWd3d06LwFOa2fT
         JArQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=IFdPlLCD1T8y+GxeTzZJ79deYo7wJlnXlXGvffLegz8=;
        b=NzTGwE5ViooxkkxrsTAwCUqQfq8ABmq7Vrt8t+Ae1X5P4gsATsACDK6QWLwGGEV3BP
         2ZNbR6UnUfREP25Wtoq53mh1P3EzdjVxh95J3Vc4o/0Au1Uagc2P05oL5heZkcU+D/yn
         Qx3o73IqI230x/brJ0NX5GDRFpZxZ6oNNGUf31kUGmaJLWyNmWuSE6texzvM3PNgaMcA
         DLrA+Ct0qshShWxifMOM98bZuwR/jNh5cBh8T+6Fr/QikbMZ0quyTaYrionEwPkEjGAQ
         6d+rONnuZ0zJxh/Z9YFgIqkfmADNDyaUyNPeaTi8Oa3UYINbgSO48L92GErmrhhRc2rm
         eVLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qOaSwHlP;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=IFdPlLCD1T8y+GxeTzZJ79deYo7wJlnXlXGvffLegz8=;
        b=rr6R4zpWN5Mek8Ko1adUYWMJRLac5NGjAx5adPftZf4misSNF9oGoBdb3zg/L9upRG
         7xdAxcate9043d27u9Rr39Kv/J6QA5N9D2eBiD9R/B1/E6p9bWc7ivlehhfbouv4xPvf
         1WI/c/nLuwuZgDYEsHdjSttCzVe/5mkPceeWRKGfL/ewzw+ZsuHMG9Lpt174oZroEYVC
         aHZm47r7lIJbD5+ZkJgIvn1v8Gv1FbHHoZf+R9i5DdSVJ1JSoDlYpgn1OPVnS3bnZjVH
         6V52kSEyJ4wCddPKdjjVh+UKrqhkSn+wkptiDzgKzM7JhiR8/UQUiNPSS4UhxWhdi1/N
         2DeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IFdPlLCD1T8y+GxeTzZJ79deYo7wJlnXlXGvffLegz8=;
        b=MDDMMhzKiNdVaQW79fZxhjugLSJ25VSFxdm/CtmOtedjXESncmWES2MWMPenuHvyTo
         muugMhI2d7W2cJjXPToLdrI66fztnk9C/GkvYIhcqd+cNCykX98it9XT73hTI53nTMoh
         dGjr7A496nnYbK+Eb+WwnSTBBk3txiqiSskfziKIdcCHvxJKwSbxkH+PAiVPMZD6ieZs
         etIK/VXlnf7kkRDiqRBFjcrxi9D5YP3lNCsxLzffsM7GpaseIyRfoVh7pxW/ONKcgvUw
         E1waJxg707+r+X1jXUxtJArbtd45nyP9PlDbJHTvMzoJ3LCsDUyvSKozGHaAXlzy+SQa
         43Mg==
X-Gm-Message-State: AOAM532EKRjytjMIiGjRDLSdMb5zNBuUByrRz62+yG9AgAEBux1Ke1uD
	VdyMFaitYrbOATCLuy4OfCI=
X-Google-Smtp-Source: ABdhPJye2l08WJmM8b8RcsdSXzvchkv/FjR8M7hIrTK4a8G+yq/YsHrQtUYdIgpqC48odz7CKQaO7g==
X-Received: by 2002:a4a:a648:: with SMTP id j8mr11003481oom.44.1601877441164;
        Sun, 04 Oct 2020 22:57:21 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:5c0b:: with SMTP id o11ls1998869otk.2.gmail; Sun, 04 Oct
 2020 22:57:20 -0700 (PDT)
X-Received: by 2002:a9d:6f16:: with SMTP id n22mr10920970otq.144.1601877440784;
        Sun, 04 Oct 2020 22:57:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601877440; cv=none;
        d=google.com; s=arc-20160816;
        b=OoJCor4okZYF7sYeupTX4yG1/YvAbjv6k388GsDugglTWVm7k9EnUVb58ObiEvH1qW
         /tIk+E7K3Zi1Eww/Uh2No9yhxUv/3iknEBm43TILDvfkvFYf6apm/feUhM40Jg2jkRoK
         nfl9nQ5nUpgCUAqekfHiKQya/nvaEH69yF8tSMQfx5chFC38Io0U4MGqjkZLj1ooQj35
         zS15XgaWBDT9g95W2NxGN1V5MsJWxe1PS7yDQQUs+CuI6JnBUQeXBgt8RwXWQ5dXLNzg
         FzSgjWgb3iCQ0KvVBisI8payQ+3J2GqLY6tb5uelCViAUp5BFyD3j7hK5fS+2D6dLhki
         6QlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=t9OMGlp7rkoiR6oDnlL4Rs+l3hwb3dsjR2HKGdfIFCc=;
        b=kNA6UtNgEUmXBushqffmQK6Db8LjYFk5b5OvoytwNAAwDuHMM9+irtoa/L37agIouq
         3FFzUQ3IOqUfbkhfgIX5PKQo9OsAE8WrxlK/yZMmuxeDChn/E4w66XBoeDTaFqzSnOUb
         eRzty92nAVDiIWzZ61jYndPlu/DZ1LvozwnLrKYr5NkP4lg+nDcUg1QXec9OE3kboA3A
         wGSuDuZZpsXmEKLiq/GFmVoxlw9HPkGht0JTWOhgkCEc7heXbTSjGuaUDtZlrVnWti4W
         Em1FqGjT15olGqWV/rb5d9mO40DovCHnEXmlCrNd7lubsuvGFUk/hFkw6TyRChIhbG8i
         wKaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=qOaSwHlP;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id l15si1174538otb.0.2020.10.04.22.57.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2020 22:57:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0955vCtN006791;
	Mon, 5 Oct 2020 00:57:12 -0500
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0955vB9I052649
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 5 Oct 2020 00:57:11 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 5 Oct
 2020 00:57:11 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 5 Oct 2020 00:57:11 -0500
Received: from [10.250.232.108] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0955v5Be041773;
	Mon, 5 Oct 2020 00:57:06 -0500
Subject: Re: [PATCH v7 00/18] Implement NTB Controller using multiple PCI EP
To: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen
 Hubbe <allenbh@gmail.com>
CC: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Tom Joseph <tjoseph@cadence.com>,
        Rob Herring <robh@kernel.org>,
        Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>
References: <20200930153519.7282-1-kishon@ti.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <fe2db298-2116-7f52-80bd-a3d01a9a1521@ti.com>
Date: Mon, 5 Oct 2020 11:27:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=qOaSwHlP;       spf=pass
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

Hi Jon Mason, Allen Hubbe, Dave Jiang,

On 30/09/20 9:05 pm, Kishon Vijay Abraham I wrote:
> This series is about implementing SW defined Non-Transparent Bridge (NTB)
> using multiple endpoint (EP) instances. This series has been tested using
> 2 endpoint instances in J7 connected to J7 board on one end and DRA7 board
> on the other end. However there is nothing platform specific for the NTB
> functionality.

This series has two patches that adds to drivers/ntb/ directory.
[PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-Transparent
Bridge and [PATCH v7 16/18] NTB: tool: Enable the NTB/PCIe link on the
local or remote side of bridge.

If you can review and Ack the above patches, Lorenzo can queue it along
with the rest of the series.

Thanks for your help in advance.

Best Regards,
Kishon

> 
> This was presented in Linux Plumbers Conference. Link to presentation
> and video can be found @ [1]
> 
> RFC patch series can be found @ [2]
> v1 patch series can be found @ [3]
> v2 patch series can be found @ [4]
> v3 patch series can be found @ [5]
> v4 patch series can be found @ [6]
> v5 patch series can be found @ [7]
> v6 patch series can be found @ [8]
> 
> Changes from v6:
> 1) Fixed issues when multiple NTB devices are creating using multiple
>    functions
> 2) Fixed issue with writing scratchpad register
> 3) Created a video demo @ [9]
> 
> Changes from v5:
> 1) Fixed a formatting issue in Kconfig pointed out by Randy
> 2) Checked for Error or Null in pci_epc_add_epf()
> 
> Changes from v4:
> 1) Fixed error condition checks in pci_epc_add_epf()
> 
> Changes from v3:
> 1) Fixed Documentation edits suggested by Randy Dunlap <rdunlap@infradead.org>
> 
> Changes from v2:
> 1) Add support for the user to create sub-directory of 'EPF Device'
>    directory (for endpoint function specific configuration using
>    configfs).
> 2) Add documentation for NTB specific attributes in configfs
> 3) Check for PCI_CLASS_MEMORY_RAM (PCIe class) before binding ntb_hw_epf
>    driver
> 4) Other documentation fixes
> 
> Changes from v1:
> 1) As per Rob's comment, removed support for creating NTB function
>    device from DT
> 2) Add support to create NTB EPF device using configfs (added support in
>    configfs to associate primary and secondary EPC with EPF.
> 
> Changes from RFC:
> 1) Converted the DT binding patches to YAML schema and merged the
>    DT binding patches together
> 2) NTB documentation is converted to .rst
> 3) One HOST can now interrupt the other HOST using MSI-X interrupts
> 4) Added support for teardown of memory window and doorbell
>    configuration
> 5) Add support to provide support 64-bit memory window size from
>    DT
> 
> [1] -> https://linuxplumbersconf.org/event/4/contributions/395/
> [2] -> http://lore.kernel.org/r/20190926112933.8922-1-kishon@ti.com
> [3] -> http://lore.kernel.org/r/20200514145927.17555-1-kishon@ti.com
> [4] -> http://lore.kernel.org/r/20200611130525.22746-1-kishon@ti.com
> [5] -> http://lore.kernel.org/r/20200904075052.8911-1-kishon@ti.com
> [6] -> http://lore.kernel.org/r/20200915042110.3015-1-kishon@ti.com
> [7] -> http://lore.kernel.org/r/20200918064227.1463-1-kishon@ti.com
> [8] -> http://lore.kernel.org/r/20200924092519.17082-1-kishon@ti.com
> [9] -> https://youtu.be/dLKKxrg5-rY
> 
> Kishon Vijay Abraham I (18):
>   Documentation: PCI: Add specification for the *PCI NTB* function
>     device
>   PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit
>     BAR
>   PCI: endpoint: Add helper API to get the 'next' unreserved BAR
>   PCI: endpoint: Make *_free_bar() to return error codes on failure
>   PCI: endpoint: Remove unused pci_epf_match_device()
>   PCI: endpoint: Add support to associate secondary EPC with EPF
>   PCI: endpoint: Add support in configfs to associate two EPCs with EPF
>   PCI: endpoint: Add pci_epc_ops to map MSI irq
>   PCI: endpoint: Add pci_epf_ops for epf drivers to expose function
>     specific attrs
>   PCI: endpoint: Allow user to create sub-directory of 'EPF Device'
>     directory
>   PCI: cadence: Implement ->msi_map_irq() ops
>   PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
>   PCI: endpoint: Add EP function driver to provide NTB functionality
>   PCI: Add TI J721E device to pci ids
>   NTB: Add support for EPF PCI-Express Non-Transparent Bridge
>   NTB: tool: Enable the NTB/PCIe link on the local or remote side of
>     bridge
>   Documentation: PCI: Add configfs binding documentation for pci-ntb
>     endpoint function
>   Documentation: PCI: Add userguide for PCI endpoint NTB function
> 
>  .../PCI/endpoint/function/binding/pci-ntb.rst |   38 +
>  Documentation/PCI/endpoint/index.rst          |    3 +
>  .../PCI/endpoint/pci-endpoint-cfs.rst         |   10 +
>  .../PCI/endpoint/pci-ntb-function.rst         |  351 +++
>  Documentation/PCI/endpoint/pci-ntb-howto.rst  |  160 ++
>  drivers/misc/pci_endpoint_test.c              |    1 -
>  drivers/ntb/hw/Kconfig                        |    1 +
>  drivers/ntb/hw/Makefile                       |    1 +
>  drivers/ntb/hw/epf/Kconfig                    |    6 +
>  drivers/ntb/hw/epf/Makefile                   |    1 +
>  drivers/ntb/hw/epf/ntb_hw_epf.c               |  755 ++++++
>  drivers/ntb/test/ntb_tool.c                   |    1 +
>  .../pci/controller/cadence/pcie-cadence-ep.c  |   60 +-
>  drivers/pci/endpoint/functions/Kconfig        |   12 +
>  drivers/pci/endpoint/functions/Makefile       |    1 +
>  drivers/pci/endpoint/functions/pci-epf-ntb.c  | 2114 +++++++++++++++++
>  drivers/pci/endpoint/functions/pci-epf-test.c |   13 +-
>  drivers/pci/endpoint/pci-ep-cfs.c             |  176 +-
>  drivers/pci/endpoint/pci-epc-core.c           |  130 +-
>  drivers/pci/endpoint/pci-epf-core.c           |  105 +-
>  include/linux/pci-epc.h                       |   39 +-
>  include/linux/pci-epf.h                       |   28 +-
>  include/linux/pci_ids.h                       |    1 +
>  23 files changed, 3934 insertions(+), 73 deletions(-)
>  create mode 100644 Documentation/PCI/endpoint/function/binding/pci-ntb.rst
>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst
>  create mode 100644 drivers/ntb/hw/epf/Kconfig
>  create mode 100644 drivers/ntb/hw/epf/Makefile
>  create mode 100644 drivers/ntb/hw/epf/ntb_hw_epf.c
>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-ntb.c
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/fe2db298-2116-7f52-80bd-a3d01a9a1521%40ti.com.

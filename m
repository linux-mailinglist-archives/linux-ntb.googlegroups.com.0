Return-Path: <linux-ntb+bncBCOOP4VF5IDRB5PQZT7QKGQEPIWGQCY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4242E991B
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:47:02 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id j37sf16423416pgb.9
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:47:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609775221; cv=pass;
        d=google.com; s=arc-20160816;
        b=H5zrlkoAg7l256Bt29gxsQUQ6Celkirg+NcqGlntVmgvYlP0um7q+JXJVeD9S6ZhMY
         rLCyAmao9J85l05BZ9AytBJnBEWQR0YCThE6mLEdiCOHkUImJCuoRzcjDHVsrjSsgrUr
         NPysphITzECCJn8YIXSE3ODwnRDD3sj+gychinFrYyOV57MhFHQh2cFtraAf8Vve1j2y
         gM7vdQshXb/lMER75QlvmQVH5a/0PvbsHy1oScmAyZb4RGtfyP3kUe8YjsKkM7UoHuc5
         SgIhB+TTz/zo9q4UsrinSF1nQxzmjaZZQFwlJ2wR5V4fxT5GdRv9JcYT8CUDcPEAssFH
         20Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=rFnfR9PDGRYSTBKTb9MezgAxVned3aQ1PtmFcOlLEl8=;
        b=AW0IK7/wvOnJtnGam6kqFUFeXUx3EdN+s56HfgPjQMiNRFxAuarNH5pP7E5mharjBg
         7jyxV9wQhBz123YX2BrE7VYNTWikpPyPsQbehzlHHeLnQtF61w3BTjpU8NkTgVaScRu3
         CkRJ7fqntN43vL5RuL3x4lRhoCg1peIXPRcfFnyEhCmo9Z7kqOBXGz8G3i6feYEoGgSM
         WofEU3m4adxefSpxVNcE4hs1MgksbJ8yzgUlsvcvOi4Q4VIuRlJBZnGvdmZYcElMSo/S
         wkHyg/J/4UhI9joeJzjd9rlTPAjl0y4fWM0FKRa5qPZ3YyJMREKp8V0COSCaY3HQlMia
         HkIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=daQ1093M;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=rFnfR9PDGRYSTBKTb9MezgAxVned3aQ1PtmFcOlLEl8=;
        b=FZOUIdbkyc8LdPNYycMqyl0J7p9+zQuMPY/mOdr42tDD7o9EE/3Wk0FH4QJouex2s2
         SWbmuUf7Lxrs/9nH3odxEe0q/BURUKJHHHbxAxh8RbPRTJA9dEfGFKZHInxAyLcL0KOF
         dwUaOBnYqseEKiOEN0lIuk2U578QxRNVxsctDzrkA2f8yyZgifHW1keL43Bmey6e6wte
         96vzQ6PtNiJp2Bp2V2yHM5r2Vr1Aryo1zIM3ygeoYRGShUyfQUgJXqXxa3lflBQHNwP8
         gLEPDl+FNlkWJcoa43dMKxnFRRY/3559ZldUuHx9Gh5LU/BeL0MDNVBWXPUdS74CXkIM
         piiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rFnfR9PDGRYSTBKTb9MezgAxVned3aQ1PtmFcOlLEl8=;
        b=q4QPfR3a6vvLPSjEaj8BbFaRijFxH3SCNQQdaibKqh08269vx0PxyYkplSqm49r9N+
         3TFuPyuCB8sS3/0k1yc8zwI4Ue97VcOfR82UbgkqKKGFOk4HMEkmGuvz/frR373Ngp3E
         6eTRESl+Zr234PdNQl2xbIpzkHRWCkzQiJV4gW8UViSZ6AVs2VYjtqqjbgtwNv4hmN47
         rMDNC+LDThFgP++aVlTslCtUQPCXBv7bRNEnRor6jVjm+O8PXo/3UfOuYQlxGM0v1lU8
         bMSH2XlOVsz+ZDHOBwl/ycPQ7s/3me/3+U//dnhQdzY3n17DNPGDi9GJpfPO0TKeC/Y5
         exTg==
X-Gm-Message-State: AOAM530N3tBvAL6gOdH0sfQB5ObrFcjMSy49a1wakxPVXsbtVTRNkCWi
	ysYIcaCnl6P727R2lG9BeRs=
X-Google-Smtp-Source: ABdhPJwhFfQA4UUWlbVp7yA+kuS1Px2fQtZQ0TZLzb8QUivoK/wb6ZyDqWzPkomJgCM9CaOUmGs7dQ==
X-Received: by 2002:a62:6047:0:b029:1ac:6091:cf50 with SMTP id u68-20020a6260470000b02901ac6091cf50mr61185973pfb.40.1609775221298;
        Mon, 04 Jan 2021 07:47:01 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:8489:: with SMTP id c9ls20091335plo.4.gmail; Mon, 04
 Jan 2021 07:46:59 -0800 (PST)
X-Received: by 2002:a17:90b:4b87:: with SMTP id lr7mr30251205pjb.40.1609775219824;
        Mon, 04 Jan 2021 07:46:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609775219; cv=none;
        d=google.com; s=arc-20160816;
        b=VdKRgaULXBHGzIALxAxYp2t9x65VoLI89PpVP5VSvS9LOkJ9cy529kloXSu0ni5Ulg
         hMiS4jkkYjP1IbmItFUwXjv0ZbIOcW9RI/LFsx4ogfWz01kUhcBPmsMp/3tGqRmPnl1n
         N5BM2K54lfmp9jc+xyTS4SesJwawhc7RVURKJE1SHrSEFoUrflLO0HM7pcwBtwyI8drE
         bx1ugFwrXtz92kijvU/n+ad2KTjxd9G2bdmWB7V75045IMCeGMlOge3vcdQBoVKx4Gfk
         6GmO8GwvsvIMKlPLePH6aSSz1knYBPnjFgSLj7+rDTA4+YnAdV9vyzcujVgtSF5JJ9ry
         OycA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2/pXcfipLfvJLWY6liZwmMmGpMMQy+kGLaB1/6IFaMM=;
        b=cVohzTzxgUsP2XR831z2n88miLQhsMkm7OdyD0UHJsFaQDRnzeLiYZ65dLxG8yiGGT
         ZgYYuYTGuofPttW64kOWQIyKM+PVam4VTp6juYlioCiKhjsqqi+B2zG/H6ZYAKKJ5ksk
         xZHanCQAxQg1aKxnB1MLZ6sj6kfslu4zkp32vqc4ByHaGGVDKddPNMXsP2nEgUqmQQQG
         KUs80sZuB9+Sz9sPXo+XZoLBL8or/ff1g8rHmEICMyRZRNACqrU65yAzhmUGjKgmvwcv
         Ea7GkJ6aksj6GBnJRnil2fy9LZiRvKlsygKkZnUpdiR2qlK75AgDnOTO9Nz1pQDlhX6u
         M6AQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=daQ1093M;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id ne6si1971038pjb.1.2021.01.04.07.46.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:46:59 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104Fkllr036455;
	Mon, 4 Jan 2021 09:46:47 -0600
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FklcE034814
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:46:47 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:46:47 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:46:47 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104Fkbir128343;
	Mon, 4 Jan 2021 09:46:38 -0600
Subject: Re: [PATCH v9 00/17] Implement NTB Controller using multiple PCI EP
To: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
        Marek Vasut <marek.vasut+renesas@gmail.com>,
        Yoshihiro Shimoda
	<yoshihiro.shimoda.uh@renesas.com>,
        Jingoo Han <jingoohan1@gmail.com>,
        Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
        Kunihiko Hayashi
	<hayashi.kunihiko@socionext.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Vidya Sagar <vidyas@nvidia.com>,
        Jesper Nilsson <jesper.nilsson@axis.com>,
        Minghuan Lian
	<minghuan.Lian@nxp.com>,
        Mingkai Hu <mingkai.hu@nxp.com>, Roy Zang
	<roy.zang@nxp.com>
CC: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
	<allenbh@gmail.com>,
        Tom Joseph <tjoseph@cadence.com>, Rob Herring
	<robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>
References: <20210104152909.22038-1-kishon@ti.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <7a86ef75-e688-0db6-5bea-3c50fbffd3cb@ti.com>
Date: Mon, 4 Jan 2021 21:16:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=daQ1093M;       spf=pass
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

+MAINTAINERS for platforms supporting PCIe EP mode

Hi All,

I've looped you in since the platform you maintain supports PCIe EP
mode. This series builds NTB functionality on top of PCIe endpoint
framework. For NTB functionality it needs atleast two endpoint
instances. I'm trying to see if someone can help me test this series in
any of the platforms you support.

Even if your platform cannot enable NTB, if you can just apply this
patch series and test pci_epf_test that would be very much helpful.

Thanks in advance for your help.

Best Regards,
Kishon

On 04/01/21 8:58 pm, Kishon Vijay Abraham I wrote:
> This series is about implementing SW defined Non-Transparent Bridge (NTB)
> using multiple endpoint (EP) instances. This series has been tested using
> 2 endpoint instances in J7 connected to J7 board on one end and DRA7 board
> on the other end. However there is nothing platform specific for the NTB
> functionality.
> 
> This was presented in Linux Plumbers Conference. Link to presentation
> and video can be found @ [1]
> Created a video demo @ [9]
> 
> RFC patch series can be found @ [2]
> v1 patch series can be found @ [3]
> v2 patch series can be found @ [4]
> v3 patch series can be found @ [5]
> v4 patch series can be found @ [6]
> v5 patch series can be found @ [7]
> v6 patch series can be found @ [8]
> v7 patch series can be found @ [10]
> v8 patch series can be found @ [11]
> 
> Changes from v8:
> 1) Do not use devm_request_irq/devm_free_irq as pci_free_irq_vectors()
> has to be used after free_irq
> 2) Drop "NTB: tool: Enable the NTB/PCIe link on the local or remote side
> of bridge" as there is a debugfs entry to enable the link
>  
> Changes from v7:
> 1) Used values stored in ctrl_reg_bar, peer_spad_reg_bar and db_reg_bar
>    instead of hardcoded values in pci_iomap of ntb_hw_epf.c driver
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
> [10] -> http://lore.kernel.org/r/20200930153519.7282-1-kishon@ti.com 
> [11] -> http://lore.kernel.org/r/20201111153559.19050-1-kishon@ti.com
> 
> Kishon Vijay Abraham I (17):
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
>  drivers/ntb/hw/epf/ntb_hw_epf.c               |  754 ++++++
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
>  22 files changed, 3932 insertions(+), 73 deletions(-)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/7a86ef75-e688-0db6-5bea-3c50fbffd3cb%40ti.com.

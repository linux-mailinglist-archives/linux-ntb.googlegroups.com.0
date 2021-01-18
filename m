Return-Path: <linux-ntb+bncBCOOP4VF5IDRBMVSSSAAMGQEAAZYDHQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C8B2F9910
	for <lists+linux-ntb@lfdr.de>; Mon, 18 Jan 2021 06:14:27 +0100 (CET)
Received: by mail-oo1-xc39.google.com with SMTP id z20sf12485570ooe.13
        for <lists+linux-ntb@lfdr.de>; Sun, 17 Jan 2021 21:14:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610946866; cv=pass;
        d=google.com; s=arc-20160816;
        b=hHlgvyuFH/uZHlsZhY25ZMsjPNWs/qmqzj3crSdMOYKZCqNU5PaPBPhjT/Ud0Q0lNv
         NUHlhxPgNKEWyOByhyckw2vagWU1VFEV7kY7RheVlEG53xWW3DhCVDGdOeZFHG/K2jp0
         uD+U9fsKM60tjxIbTyrEp4EvAc5Np7wwsip2hzh80QhfpqTdXT18g202H0QiouGKwAHv
         ehrPG6on19w7LdJp8pQUNI0+SsfaGOTAkzrme1Uqm1OH/MJlu5ea2f58EN8FCdb73Xb3
         iTqyJ6vuFaXlYxwLt+8UWD1lJkFKgHTtfLcpRq6egOJjB/+4mmtGijOareh3AI/13vkk
         Ml8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:references:cc
         :to:from:subject:dkim-signature;
        bh=4gNZ9llrWXgBqiLtYYR0bTbFSsdOf9RAkKtLx3J+3dM=;
        b=BrlNpFTi7cna5Kfjd+IkHAHNnbIaUZOWJYuk0jhj9zwm1kGf1Su9hhn9/3eJdv1nZw
         hwlxZ4LrAyqGDv2ezXTW48NMHga8eKcfD0SgYJM7O5i5Gau2MzG6Q9AerdKHSNSRpFvW
         ZnMrAUTXPV73bnh3hRuAG1nBC8bO3luE0EWoSXo7CnXpKmcT+IEGw+oyOoDdjHaN/QOt
         KA6w3ZC2LR3rbBhOkWmGJau5bYTHjy0x2FRNYwINeW+fa9lcnGkoH5Wr6XZ5Ok2MGkMQ
         uufWgUmiQZ+40zFzcgw3iZgpHPZrOZ69gZM6B73V4me7d0Sk1ryAnUVNx/u+zZHBR7Vm
         EWCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=fDgNQRn9;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4gNZ9llrWXgBqiLtYYR0bTbFSsdOf9RAkKtLx3J+3dM=;
        b=EBOP3R/NdoPqY/BiE4fQjbNE5Tvzh5sDGYEuCBEuvhxnXvPRkh6gGzCI20ojcLEWdL
         QQ8R00P8/0OhoiYyBv8BTzcQLSZ70ulYc+lG0FT1IZii+WQmrS5NiAgPhxolLI9hzWyC
         Re1OUem1QOlhxHD0UfJqe6pfy8X53c9ySGLCldaxFBxyt5lL1Pxjbv3uV66qKz6aUjk9
         uEUAvQdkCSxUMWO/gATqNbOG9nEcEV/Vr6W5nH9gR7oA30kcAndapi9vsjvV7ZOBhcgc
         u42JLTVA+183bQEjeC4CoW7WYUjc/cblSSki8cEzQ/sRhJ/tRWTcJb3jDWNyVIav6OvE
         NiRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4gNZ9llrWXgBqiLtYYR0bTbFSsdOf9RAkKtLx3J+3dM=;
        b=sGqdUYK1Z0fh5STxKgH8gMbm6Q6Dxer+AuWaFFgMrMmzy9fhOgzsDVjShEAPcJOxvc
         SD/v8gMl9BigE/hA+oOKNr+4L1fmcd+5r01YoMGpw0ViLiLqYPedCXH9OclJ/tkEpkse
         6u8p4wC9LQOa24aBpzf2Ib7lHMZCQhhnfpsdpM+g2/Y1g+KzB+EmSz15tuZ37tdPXJwI
         gd0WzKbV3Swwep2a9/o5BzbKYVxnvNFG+WaGRNrBBRWIQpQ7L0e/U40Y1UhcP+0IpyoJ
         KTDxUMTbWd1HRloHqH691UxErwh1ZkuNah4xlYl/02QZYBGX/nUdr1Uj8JNzLWjKU1Ak
         oDDQ==
X-Gm-Message-State: AOAM531jnQzNt2Q7X8RfwnFRlfRI7aG3WHykFntJf30kFLz2VvXAo7Le
	zi9fcd38VmJ9Rkqad3qIOGE=
X-Google-Smtp-Source: ABdhPJyqnMz8lTXDXCjOUXineYctkGD5jXdtMhjwI4hId8NCYJtoWeTqSI3S00yQLwpNS3XoAnZKTw==
X-Received: by 2002:a4a:751a:: with SMTP id j26mr16015483ooc.68.1610946866212;
        Sun, 17 Jan 2021 21:14:26 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:7a8e:: with SMTP id l14ls4243240otn.1.gmail; Sun, 17 Jan
 2021 21:14:25 -0800 (PST)
X-Received: by 2002:a9d:12e3:: with SMTP id g90mr4406098otg.92.1610946865847;
        Sun, 17 Jan 2021 21:14:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610946865; cv=none;
        d=google.com; s=arc-20160816;
        b=eRZPBkNa7ibJEwfDWh2AMCZx9WRwtjfkv0fc53K3u+lIn8qrPOmYR7OYTP/qbTtz9r
         B+kPaQ0c1mbXQMcpC75l3vVVApZvW7j0i0BHIT0FEsD5Uq43nWgB3IYcC89jeHA2hlm8
         mLKlBtEg0g8Q+7hIJDX2J5Hx3MbO8F1K38oD8l4f+YZyUExm18ytTxcF5RTdnMiTJP/e
         0nEAc+r2LfMJiioe2dKXoSf0FxFqOp4oO2E0FIS9ZZGHM0CyeePW620rV3+bkk8MLopW
         o2yUvaP1t63dVY5sbkGQcJNgpPWVj0ToJI82Z6U5EJT9funHI9DwFf3O/jiLiItL7b3v
         JgaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=+gi/Jq+nd9RIZp6n2ZgYICg1zNyAVeNliSL+KoAva6w=;
        b=EAp6a2NRsC04nBeXIoGlM0W2yESYq37qdqcODeMEaADchm3UTbd4nFUFSwsW8dQh85
         flodbMxK9v1rJUkgpbfTgzlQ46iMus4O7/K7Te7Ak7bvXV3tH7tuIUKlNk4iQl2yaR4S
         aZE/4DIsdpZcDEjE/r9tQb5iyHrlKlAC8Ll4/3eWPVR6vLRGRvVwz867Mll9wjKNJgaK
         yZBsVGwZyvbnCA1UumsCCtRnG7vmUZUpNLBu5tJgqPT9qe/fBCOPpPJ1UJW0sPqvQoe1
         xYb1wH7u/hlciDEgFWkVJE5+rbYhuwyAvg7I0CmVL2GgeHHc1dgFOAnW8Dkc+Sim7muA
         TshA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=fDgNQRn9;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id r27si1447738oth.2.2021.01.17.21.14.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Jan 2021 21:14:25 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10I5EDZg092400;
	Sun, 17 Jan 2021 23:14:13 -0600
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10I5EDiN036805
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 17 Jan 2021 23:14:13 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sun, 17
 Jan 2021 23:14:12 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sun, 17 Jan 2021 23:14:12 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10I5E2UW048025;
	Sun, 17 Jan 2021 23:14:03 -0600
Subject: Re: [PATCH v9 00/17] Implement NTB Controller using multiple PCI EP
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
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
 <7a86ef75-e688-0db6-5bea-3c50fbffd3cb@ti.com>
Message-ID: <089b55c8-473c-69ac-4d12-4389d0b832cd@ti.com>
Date: Mon, 18 Jan 2021 10:44:01 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <7a86ef75-e688-0db6-5bea-3c50fbffd3cb@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=fDgNQRn9;       spf=pass
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

Hi,

On 04/01/21 9:16 pm, Kishon Vijay Abraham I wrote:
> +MAINTAINERS for platforms supporting PCIe EP mode
> 
> Hi All,
> 
> I've looped you in since the platform you maintain supports PCIe EP
> mode. This series builds NTB functionality on top of PCIe endpoint
> framework. For NTB functionality it needs atleast two endpoint
> instances. I'm trying to see if someone can help me test this series in
> any of the platforms you support.
> 
> Even if your platform cannot enable NTB, if you can just apply this
> patch series and test pci_epf_test that would be very much helpful.
> 
> Thanks in advance for your help.

Gentle ping for providing your "Reviewed-by" and "Tested-by".

Thank You,
Kishon

> 
> Best Regards,
> Kishon
> 
> On 04/01/21 8:58 pm, Kishon Vijay Abraham I wrote:
>> This series is about implementing SW defined Non-Transparent Bridge (NTB)
>> using multiple endpoint (EP) instances. This series has been tested using
>> 2 endpoint instances in J7 connected to J7 board on one end and DRA7 board
>> on the other end. However there is nothing platform specific for the NTB
>> functionality.
>>
>> This was presented in Linux Plumbers Conference. Link to presentation
>> and video can be found @ [1]
>> Created a video demo @ [9]
>>
>> RFC patch series can be found @ [2]
>> v1 patch series can be found @ [3]
>> v2 patch series can be found @ [4]
>> v3 patch series can be found @ [5]
>> v4 patch series can be found @ [6]
>> v5 patch series can be found @ [7]
>> v6 patch series can be found @ [8]
>> v7 patch series can be found @ [10]
>> v8 patch series can be found @ [11]
>>
>> Changes from v8:
>> 1) Do not use devm_request_irq/devm_free_irq as pci_free_irq_vectors()
>> has to be used after free_irq
>> 2) Drop "NTB: tool: Enable the NTB/PCIe link on the local or remote side
>> of bridge" as there is a debugfs entry to enable the link
>>  
>> Changes from v7:
>> 1) Used values stored in ctrl_reg_bar, peer_spad_reg_bar and db_reg_bar
>>    instead of hardcoded values in pci_iomap of ntb_hw_epf.c driver
>>
>> Changes from v6:
>> 1) Fixed issues when multiple NTB devices are creating using multiple
>>    functions
>> 2) Fixed issue with writing scratchpad register
>> 3) Created a video demo @ [9]
>>
>> Changes from v5:
>> 1) Fixed a formatting issue in Kconfig pointed out by Randy
>> 2) Checked for Error or Null in pci_epc_add_epf()
>>
>> Changes from v4:
>> 1) Fixed error condition checks in pci_epc_add_epf()
>>
>> Changes from v3:
>> 1) Fixed Documentation edits suggested by Randy Dunlap <rdunlap@infradead.org>
>>
>> Changes from v2:
>> 1) Add support for the user to create sub-directory of 'EPF Device'
>>    directory (for endpoint function specific configuration using
>>    configfs).
>> 2) Add documentation for NTB specific attributes in configfs
>> 3) Check for PCI_CLASS_MEMORY_RAM (PCIe class) before binding ntb_hw_epf
>>    driver
>> 4) Other documentation fixes
>>
>> Changes from v1:
>> 1) As per Rob's comment, removed support for creating NTB function
>>    device from DT
>> 2) Add support to create NTB EPF device using configfs (added support in
>>    configfs to associate primary and secondary EPC with EPF.
>>
>> Changes from RFC:
>> 1) Converted the DT binding patches to YAML schema and merged the
>>    DT binding patches together
>> 2) NTB documentation is converted to .rst
>> 3) One HOST can now interrupt the other HOST using MSI-X interrupts
>> 4) Added support for teardown of memory window and doorbell
>>    configuration
>> 5) Add support to provide support 64-bit memory window size from
>>    DT
>>
>> [1] -> https://linuxplumbersconf.org/event/4/contributions/395/
>> [2] -> http://lore.kernel.org/r/20190926112933.8922-1-kishon@ti.com
>> [3] -> http://lore.kernel.org/r/20200514145927.17555-1-kishon@ti.com
>> [4] -> http://lore.kernel.org/r/20200611130525.22746-1-kishon@ti.com
>> [5] -> http://lore.kernel.org/r/20200904075052.8911-1-kishon@ti.com
>> [6] -> http://lore.kernel.org/r/20200915042110.3015-1-kishon@ti.com
>> [7] -> http://lore.kernel.org/r/20200918064227.1463-1-kishon@ti.com
>> [8] -> http://lore.kernel.org/r/20200924092519.17082-1-kishon@ti.com
>> [9] -> https://youtu.be/dLKKxrg5-rY
>> [10] -> http://lore.kernel.org/r/20200930153519.7282-1-kishon@ti.com 
>> [11] -> http://lore.kernel.org/r/20201111153559.19050-1-kishon@ti.com
>>
>> Kishon Vijay Abraham I (17):
>>   Documentation: PCI: Add specification for the *PCI NTB* function
>>     device
>>   PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit
>>     BAR
>>   PCI: endpoint: Add helper API to get the 'next' unreserved BAR
>>   PCI: endpoint: Make *_free_bar() to return error codes on failure
>>   PCI: endpoint: Remove unused pci_epf_match_device()
>>   PCI: endpoint: Add support to associate secondary EPC with EPF
>>   PCI: endpoint: Add support in configfs to associate two EPCs with EPF
>>   PCI: endpoint: Add pci_epc_ops to map MSI irq
>>   PCI: endpoint: Add pci_epf_ops for epf drivers to expose function
>>     specific attrs
>>   PCI: endpoint: Allow user to create sub-directory of 'EPF Device'
>>     directory
>>   PCI: cadence: Implement ->msi_map_irq() ops
>>   PCI: cadence: Configure LM_EP_FUNC_CFG based on epc->function_num_map
>>   PCI: endpoint: Add EP function driver to provide NTB functionality
>>   PCI: Add TI J721E device to pci ids
>>   NTB: Add support for EPF PCI-Express Non-Transparent Bridge
>>   Documentation: PCI: Add configfs binding documentation for pci-ntb
>>     endpoint function
>>   Documentation: PCI: Add userguide for PCI endpoint NTB function
>>
>>  .../PCI/endpoint/function/binding/pci-ntb.rst |   38 +
>>  Documentation/PCI/endpoint/index.rst          |    3 +
>>  .../PCI/endpoint/pci-endpoint-cfs.rst         |   10 +
>>  .../PCI/endpoint/pci-ntb-function.rst         |  351 +++
>>  Documentation/PCI/endpoint/pci-ntb-howto.rst  |  160 ++
>>  drivers/misc/pci_endpoint_test.c              |    1 -
>>  drivers/ntb/hw/Kconfig                        |    1 +
>>  drivers/ntb/hw/Makefile                       |    1 +
>>  drivers/ntb/hw/epf/Kconfig                    |    6 +
>>  drivers/ntb/hw/epf/Makefile                   |    1 +
>>  drivers/ntb/hw/epf/ntb_hw_epf.c               |  754 ++++++
>>  .../pci/controller/cadence/pcie-cadence-ep.c  |   60 +-
>>  drivers/pci/endpoint/functions/Kconfig        |   12 +
>>  drivers/pci/endpoint/functions/Makefile       |    1 +
>>  drivers/pci/endpoint/functions/pci-epf-ntb.c  | 2114 +++++++++++++++++
>>  drivers/pci/endpoint/functions/pci-epf-test.c |   13 +-
>>  drivers/pci/endpoint/pci-ep-cfs.c             |  176 +-
>>  drivers/pci/endpoint/pci-epc-core.c           |  130 +-
>>  drivers/pci/endpoint/pci-epf-core.c           |  105 +-
>>  include/linux/pci-epc.h                       |   39 +-
>>  include/linux/pci-epf.h                       |   28 +-
>>  include/linux/pci_ids.h                       |    1 +
>>  22 files changed, 3932 insertions(+), 73 deletions(-)
>>  create mode 100644 Documentation/PCI/endpoint/function/binding/pci-ntb.rst
>>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
>>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst
>>  create mode 100644 drivers/ntb/hw/epf/Kconfig
>>  create mode 100644 drivers/ntb/hw/epf/Makefile
>>  create mode 100644 drivers/ntb/hw/epf/ntb_hw_epf.c
>>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-ntb.c
>>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/089b55c8-473c-69ac-4d12-4389d0b832cd%40ti.com.

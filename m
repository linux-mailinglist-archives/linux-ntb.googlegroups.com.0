Return-Path: <linux-ntb+bncBCOOP4VF5IDRBT5ZXL6AKGQEHHDZWGY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AD6293693
	for <lists+linux-ntb@lfdr.de>; Tue, 20 Oct 2020 10:16:16 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id b22sf773317oib.8
        for <lists+linux-ntb@lfdr.de>; Tue, 20 Oct 2020 01:16:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603181775; cv=pass;
        d=google.com; s=arc-20160816;
        b=zKcjlCGu5K9FfL9Yp42bEkVGzXbsnRo6/x2UgPwWbC5l4YuJxuonVw4os7L/TMlvYj
         /MoDW4CLoHuc5V6DUa3fEv1kbTRBgUJJXH/kWi84oczTbsZLwEPFndhkMnnaPtPhUDHs
         jNx2CYpsNZZBwPnoLhUn6fW4Ma5LnGl4ahSihEPgzP4mL1FiDyFBdGoYLPYVlGKjjPsj
         yD62j+iZ12jflhFBAPOUtZpdGxfK+AtzKHsvtiVca4m5cnhlywEBDHJVLK68M1uBHaj0
         YO1rpb5p00+Mh+xTn9Z6bEBbqDRZTrypasEcHc0DAH8fTey90mSFmPUi0XcxVvcH/3bS
         DeVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:references:cc
         :to:from:subject:dkim-signature;
        bh=2alQYuy9Bqe+Do9rfspQzf5oDXB62WmOWGkwvw+tg8M=;
        b=qmDpYhc293iSu33pmfIdeJ2oM8AKyd+vImmlLNeQVAd/kcVTomPtNNh+eYTwPnRstZ
         aMfE5BiGoSJn4hifokYeRFZRSvKpdX67Di8ZYcajZui+dLuvTiheCuAsC7YspPoaiWj2
         zFTaVx7i8qx9PrDADugJixm7Um92MgK8hfr5NiMqhF7+U0GMkGFg7b+O/2bICUMdJGl+
         BGabfx2mahKfWh3lXbqEjPANCuOFk3f1QSPJPa5lcaGs5H7ugQtDlZ25UbK7p/goof0A
         Q8eMv4UzHDwCqKKS/byClS/IDG1tBEzvZuL9TlOUDfMBUXcqnJGYxkjbH9LyMj9uPrkF
         /M4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=EKshNLkO;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2alQYuy9Bqe+Do9rfspQzf5oDXB62WmOWGkwvw+tg8M=;
        b=iUHLzUtL+6JhXaOoih/WuqAUp+3JPN+u4Sm5bTY+Uhx2j01HUlrb9eQrFXoqYcTR2g
         LWD7sfmswVlfB/S6i7vrVr1vDnyn+DzP2VVT1zIhXxMzsV3U9uGoyHsr/bT2W+sb7cW8
         4NBqnyek1gsYpCqFsl/B3fcjo5CstRqdFMDgckWyh/x91RQKsJWca8ujmqVxYWowgjNg
         lRii6iBFK3j85piEjPdmq7ye3ZpW0waNLWfDHOpkJf8kOW5O+6H1kiOHtyPLFGJgmcEm
         KBLUfE3QQxjfpmzPkYlebWm2Ntcaku06yjTNcl9QeqaNTALNkTWQu9nKz4hQodX6Uvo7
         dEHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:from:to:cc:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2alQYuy9Bqe+Do9rfspQzf5oDXB62WmOWGkwvw+tg8M=;
        b=oHdPROGFSoUuC/LJeUgkJA2SPK0SUVSRnEePlMmo2BqVQ02NrSLl7PQ1N9HR31aiLI
         A3ExRf2lcvVhvxaAbIKKiQ13P3XRWW+jS1OxjsThetXv89My2mzhAIFSjFIAV2+23W0F
         7rOrD059SzsdMXnoRUWp0jiMmWgW86UNbbNOMK4Wzk++a/CD/TsClaTgjgV4pumed5+v
         jbdi58XcKnavzYg0vdkNY/FtUxQKayqCEvz0KOjwnjC2ZCQeJziVrHQ7wCo+OghDJg+M
         zwz+8hQQ/9yZVra7jfIVXzGZBekq9CC97uRqKcsZjxw1SYBpLEoWLhJJb2b1gSOh9bQN
         0XWg==
X-Gm-Message-State: AOAM533KT9BdJ9UmywDEJb6gr6XtLLU3EIy5ptup/5k3gMktKVBU5cgk
	1uPCM9b1d7UJjOQq4F9Yvs0=
X-Google-Smtp-Source: ABdhPJz4Rboh8z7Vja4c1BsV/gRT4bovmcmo9WGbnzliuXIEbJoP3fZmn8Tn9/aiYF2WVXc1qta3rA==
X-Received: by 2002:a9d:12f3:: with SMTP id g106mr891959otg.149.1603181775463;
        Tue, 20 Oct 2020 01:16:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:78a:: with SMTP id w10ls248402ots.8.gmail; Tue, 20
 Oct 2020 01:16:15 -0700 (PDT)
X-Received: by 2002:a9d:3f65:: with SMTP id m92mr1038762otc.130.1603181775096;
        Tue, 20 Oct 2020 01:16:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603181775; cv=none;
        d=google.com; s=arc-20160816;
        b=qPxDtFd4qQTR33ECBo88PkpjGf33wq3aMLKBt6tG8rXfXSTUsFGjA1kISNTYv7UjEs
         4oCrHtLh7qIjAyMdTnLmPp/V54BGAyuMxAmRepsdONxvs5hF0RhvPuCpJuoMgjb3SbgM
         xbx+4JURpWRBF7pdsETf8kSEPQd7v/Pi8s2zPwDYpGxqhZM0uIdZ0FSoUcUMB7DHv9g6
         HFlopHmZoE+qqIm3NvoZb9v9wJkv6AQnmxkIMF7jqxW+1t68L6Qn12hCk6JrebGbYKZr
         iGQShb0+zwdBLrZl2h3HnU/iKYXJ4ST5dHti9qISWElkEXG5BTFFbF0/Hi5JPqtHRE5z
         AMxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=5/s9j3Ob5eJZaHs5Srca0Co8+TevhNJfJIAUERIj7tk=;
        b=UTnCBevqmkExHkrsQJdNbDYXUTwxe4/tJm10paFUCC6lEm5edpBAx/u56iphwyyUns
         Bc/bQYt282iOlFLBA8nhXUPqf989CGOOoDO4TpNE4JqGL65XcRVuKeNMqM1LTd2OtxG4
         TGjRCmgoKbHpHJlCC1gsCx+rcto0jANllFyQvnLk6sycKQiVgbLCJclpZBDZNRDn5wQg
         8umMel38PJpOD3LjOKyNjqO+kKHrNQAIZnsmZIgDufcpfLD1CX25/d6ppivXpyazAl2J
         jauGqZqh5tdrxxWXT57jX3/RN/n/FrsFcPhs6Ob4yMcLbIs0r/pTvWFACu3CSJynN3wv
         Ed5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=EKshNLkO;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d20si95513oti.1.2020.10.20.01.16.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Oct 2020 01:16:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 09K8G6Ng053466;
	Tue, 20 Oct 2020 03:16:06 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 09K8G6v7096187
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 20 Oct 2020 03:16:06 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 20
 Oct 2020 03:16:06 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 20 Oct 2020 03:16:06 -0500
Received: from [10.250.234.189] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 09K8FqWG111796;
	Tue, 20 Oct 2020 03:15:54 -0500
Subject: Re: [PATCH v7 00/18] Implement NTB Controller using multiple PCI EP
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen
 Hubbe <allenbh@gmail.com>, Rob Herring <robh@kernel.org>
CC: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Tom Joseph <tjoseph@cadence.com>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>
References: <20200930153519.7282-1-kishon@ti.com>
 <fe2db298-2116-7f52-80bd-a3d01a9a1521@ti.com>
Message-ID: <72ebe7db-86cd-6827-03ff-bde32c10dc7e@ti.com>
Date: Tue, 20 Oct 2020 13:45:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <fe2db298-2116-7f52-80bd-a3d01a9a1521@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=EKshNLkO;       spf=pass
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

On 05/10/20 11:27 am, Kishon Vijay Abraham I wrote:
> Hi Jon Mason, Allen Hubbe, Dave Jiang,
> 
> On 30/09/20 9:05 pm, Kishon Vijay Abraham I wrote:
>> This series is about implementing SW defined Non-Transparent Bridge (NTB)
>> using multiple endpoint (EP) instances. This series has been tested using
>> 2 endpoint instances in J7 connected to J7 board on one end and DRA7 board
>> on the other end. However there is nothing platform specific for the NTB
>> functionality.
> 
> This series has two patches that adds to drivers/ntb/ directory.
> [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-Transparent
> Bridge and [PATCH v7 16/18] NTB: tool: Enable the NTB/PCIe link on the
> local or remote side of bridge.
> 
> If you can review and Ack the above patches, Lorenzo can queue it along
> with the rest of the series.
> 
> Thanks for your help in advance.

Gentle ping on this series.

Thanks
Kishon
> 
> Best Regards,
> Kishon
> 
>>
>> This was presented in Linux Plumbers Conference. Link to presentation
>> and video can be found @ [1]
>>
>> RFC patch series can be found @ [2]
>> v1 patch series can be found @ [3]
>> v2 patch series can be found @ [4]
>> v3 patch series can be found @ [5]
>> v4 patch series can be found @ [6]
>> v5 patch series can be found @ [7]
>> v6 patch series can be found @ [8]
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
>>
>> Kishon Vijay Abraham I (18):
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
>>   NTB: tool: Enable the NTB/PCIe link on the local or remote side of
>>     bridge
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
>>  drivers/ntb/hw/epf/ntb_hw_epf.c               |  755 ++++++
>>  drivers/ntb/test/ntb_tool.c                   |    1 +
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
>>  23 files changed, 3934 insertions(+), 73 deletions(-)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/72ebe7db-86cd-6827-03ff-bde32c10dc7e%40ti.com.

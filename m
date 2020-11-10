Return-Path: <linux-ntb+bncBCOOP4VF5IDRBUWDVL6QKGQEF55VP3Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BFBD2AD895
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Nov 2020 15:21:08 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id i11sf6704696otr.8
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Nov 2020 06:21:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605018067; cv=pass;
        d=google.com; s=arc-20160816;
        b=QLiYE/LczocXP9HbAU6uIQnxmKZyFq/+7kSTOuNZICH7GJD+JPbcM5a/mN6VQNZZz2
         WqBH86ZDpmkN7ZoL00O83428/Yb5cNJi5zJkacs48VS7bcxhjE8k/8l1lxno/OqRvngj
         Zp0tEP1nOcwqzwrJ3689TX1Cu3gKHNQsB/CDpZHeP3C5BUgrzCec1YehhiilAD8WaC+Y
         WnJQC619HvPPCjNo0q0bX7X3V4Bhq6t8BNJbH0f5OpQ0QKLWGTeP/FAY8k9eGJnRVY3Z
         67E9aq1d1fnDpF+BCgWYWVFbUAcA27JjigIBIdDc7966CYNlcRv1BIdFgcxvQB2PkVSQ
         lWmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=ULbarIV19fsjuV4tLmWj1d6Km6qB8CZ3r7LqnR7AweQ=;
        b=q4QtbuPJdpllpDYNjrgu9gB04T+srVduO0z8TTsIvvjjWDV9FZwVvzOELjdxaeznmV
         L+ARiM8UnPlX7NILkxdShmY90OkSPMUd9EBhtAF7TO9wI9ES3P08g4PDQ3LDmWa0VKPv
         6ZMP7LCABadIFvo5XH7T+O8nJXhK4ZDLgcnCdtLh1R1ujhkZVMgJ9jF4+iJ/PJWE7Vj4
         LBweVZ1awBIXR/dP8abpHmuffg5Rn3GBOyUC6QkKyhrV5IxwgudAFJGGGEpwcEPevlzg
         rFWffi9KIzDYhlnpyfmjBZNQI1WUq+vo8xgDPiwgP3xm+DIxqBAxRp3nkGnSErK4OStp
         kmhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=U4Z3YKl4;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ULbarIV19fsjuV4tLmWj1d6Km6qB8CZ3r7LqnR7AweQ=;
        b=dIYUCNlwMozJwBkL2wCVp5gfuJ69FjLRT7TtdWuPeN5RM+5n+DMmMhNPyUNbqjyKqj
         Xejx4NR/b3RrT+lvo65x4f/8rE2EzJKi51VCK88cPHrfqcmHZ8oUTkdpM8IEuTFoNLg6
         SYPulWmGmxnLv/UWZuzhaYsOVuyYNOV+tvYwsn4KLTE382EDACjMpLY5ah0fHg5dLZst
         Dg9T0KwNbNWx8qiGq5fmFI7oHrY7zHD4zREyv8PbKaP1HQFVm9ktW6a6QMZNTRttvC0a
         2nH6GWqpWiR/HLDCYvJ45tMtMRHfeBkNXLTQlurCJd96QOdr7B3lAyPsCYVtHn+hEfoJ
         wgfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ULbarIV19fsjuV4tLmWj1d6Km6qB8CZ3r7LqnR7AweQ=;
        b=PjMPz2gTFT5YsiuxW2QKTFWG7cJn494AyJIblXEgeQN1b84N9XzjmhqQQX3NvSDaNe
         B8pPWoxq9WD2pTVBGevyBdPugtgftApEltpRzZqCFPbtCxsqWuB0WhuNWeiFm2yPNsvI
         AYDxxfV/379wLZgntHX3lxMhDyb78J1GXs3aYGrJ4G4nsrfLVP75a/bq0vEAwYcYHQ4+
         Quu8N3HmTY8Itlh/YZskM61JXqNpEPTcjGf/Oku99dZcwNTssAOr6cp990J7jr4rDySh
         1DAwpU3yc15r8rZdMCHg4Onc7qVE7Vau5rngIA3YNVBsbNzi4LoEH7DUAmJulDWJTnhg
         WOyw==
X-Gm-Message-State: AOAM531y5sz50pIdrjFVR3e9yBZgpeAfBg5J4ldUcCLlZm+u6J2RtUdj
	XTiEVc2VItQVw5Gz/nCAccg=
X-Google-Smtp-Source: ABdhPJxv2zZwYhWaGKCRGAKbEsdCpKj8Y41rETaGBO3q0JfiHUsfo29cwtpQ+OTKl86/3KgpvK9o5g==
X-Received: by 2002:a4a:9486:: with SMTP id k6mr13795931ooi.85.1605018066777;
        Tue, 10 Nov 2020 06:21:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:1118:: with SMTP id 24ls1687644oir.10.gmail; Tue, 10 Nov
 2020 06:21:06 -0800 (PST)
X-Received: by 2002:aca:53d4:: with SMTP id h203mr3018670oib.72.1605018066320;
        Tue, 10 Nov 2020 06:21:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605018066; cv=none;
        d=google.com; s=arc-20160816;
        b=UrMPKGIBSoDNYy8gWRNzsoq4t+xRnaZuSjtNsleD7VUEMAPRJict2QPIGBsDWmT92c
         KdX7T/Mmj9Xc8SqG8B2ldjCP8d6ySithQieY3Adndkteluq85vYfYtbDQOaPEjsbGzWz
         yjDrCyHE+NsGDiz31Vx9mBwFIe1uUua+8zT3nGbMUc/hqhws/1ZUNPlt1PTrH38uBuVP
         1kVjAVDf85btiZU1mwemFJZq044yO0+ASQiG9fH/tIKuakF9Sivvke4HbSYnR10+ukYS
         v+WnM24xmXrzCLW3OwTYUGYXRmjYiLeB09PweOahNBJhZM142y5xaMVEuN+gX45QLZkJ
         6A1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=pQqJVekxwxzY6/yo6GdpANrmY7YmUyIXk2qF+yF/eNs=;
        b=cadUGsTjaxL4+4nJ8OV37I0brBm+KZGgGsLXZpc2JIlKootZRcscto3TfUCwyuFoQN
         qT84phELpZ+XyiR+kNxWTLFU1RXt1n9kRQo7zbiWRm2+oWME+m+RyK4DSp1TSc8ayn2n
         JUk2tYa8xTGSoOuf12xn7J078Dz3TFRb0cKlGTlk7RRNKgnspjXojgK32I0YTzQNb2TU
         bW6I4l477oT9v6dr5UeyQZLHITIoL7hdFP+bcztAVjQhG/7NvvaXik06KAG9LT6rdt60
         zzqk2NXQe4W/vDNCLVLY0Wz3CD6iJ9nt7DY4j858h3m3xQlma3XFYx0Dx+JS6CGQPttw
         z/fA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=U4Z3YKl4;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id f16si1249991otc.0.2020.11.10.06.21.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 06:21:06 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AAEKodJ078900;
	Tue, 10 Nov 2020 08:20:50 -0600
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AAEKobb059779
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 10 Nov 2020 08:20:50 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 10
 Nov 2020 08:20:50 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 10 Nov 2020 08:20:49 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AAEKiTC113678;
	Tue, 10 Nov 2020 08:20:46 -0600
Subject: Re: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
To: Sherry Sun <sherry.sun@nxp.com>
CC: "bhelgaas@google.com" <bhelgaas@google.com>,
        Jonathan Corbet
	<corbet@lwn.net>,
        "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
        "arnd@arndb.de" <arnd@arndb.de>, "jdmason@kudzu.us" <jdmason@kudzu.us>,
        "dave.jiang@intel.com" <dave.jiang@intel.com>,
        "allenbh@gmail.com"
	<allenbh@gmail.com>,
        "tjoseph@cadence.com" <tjoseph@cadence.com>,
        Rob Herring
	<robh@kernel.org>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
References: <20200930153519.7282-16-kishon@ti.com>
 <VI1PR04MB496061EAB6F249F1C394F01092EA0@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <d6d27475-3464-6772-2122-cc194b8ae022@ti.com>
 <VI1PR04MB49602D24F65E11FF1F14294F92E90@VI1PR04MB4960.eurprd04.prod.outlook.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <30c8f7a1-baa5-1eb4-d2c2-9a13be896f0f@ti.com>
Date: Tue, 10 Nov 2020 19:50:43 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB49602D24F65E11FF1F14294F92E90@VI1PR04MB4960.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=U4Z3YKl4;       spf=pass
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

Hi Sherry,

On 10/11/20 7:55 am, Sherry Sun wrote:
> Hi Kishon,
> 
>> Subject: Re: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-
>> Transparent Bridge
>>
>> Hi Sherry,
>>
>> On 09/11/20 3:07 pm, Sherry Sun wrote:
>>> Hi Kishon,
>>>
>>>> Subject: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-
>>>> Transparent Bridge
>>>>
>>>> From: Kishon Vijay Abraham I <kishon@ti.com>
>>>>
>>>> Add support for EPF PCI-Express Non-Transparent Bridge (NTB) device.
>>>> This driver is platform independent and could be used by any platform
>>>> which have multiple PCIe endpoint instances configured using the pci-epf-
>> ntb driver.
>>>> The driver connnects to the standard NTB sub-system interface. The
>>>> EPF NTB device has configurable number of memory windows (Max 4),
>>>> configurable number of doorbell (Max 32), and configurable number of
>>>> scratch-pad registers.
>>>>
>>>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>>>> ---
>>>>  drivers/ntb/hw/Kconfig          |   1 +
>>>>  drivers/ntb/hw/Makefile         |   1 +
>>>>  drivers/ntb/hw/epf/Kconfig      |   6 +
>>>>  drivers/ntb/hw/epf/Makefile     |   1 +
>>>>  drivers/ntb/hw/epf/ntb_hw_epf.c | 755
>>>> ++++++++++++++++++++++++++++++++
>>>>  5 files changed, 764 insertions(+)
>>>>  create mode 100644 drivers/ntb/hw/epf/Kconfig  create mode 100644
>>>> drivers/ntb/hw/epf/Makefile  create mode 100644
>>>> drivers/ntb/hw/epf/ntb_hw_epf.c
>>>>
>>>> diff --git a/drivers/ntb/hw/Kconfig b/drivers/ntb/hw/Kconfig index
>>>> e77c587060ff..c325be526b80 100644
>>>> --- a/drivers/ntb/hw/Kconfig
>>>> +++ b/drivers/ntb/hw/Kconfig
>>>> @@ -2,4 +2,5 @@
>>>>  source "drivers/ntb/hw/amd/Kconfig"
>>>>  source "drivers/ntb/hw/idt/Kconfig"
>>>>  source "drivers/ntb/hw/intel/Kconfig"
>>>> +source "drivers/ntb/hw/epf/Kconfig"
>>>>  source "drivers/ntb/hw/mscc/Kconfig"
>>>> diff --git a/drivers/ntb/hw/Makefile b/drivers/ntb/hw/Makefile index
>>>> 4714d6238845..223ca592b5f9 100644
>>>> --- a/drivers/ntb/hw/Makefile
>>>> +++ b/drivers/ntb/hw/Makefile
>>>> @@ -2,4 +2,5 @@
>>>>  obj-$(CONFIG_NTB_AMD)	+= amd/
>>>>  obj-$(CONFIG_NTB_IDT)	+= idt/
>>>>  obj-$(CONFIG_NTB_INTEL)	+= intel/
>>>> +obj-$(CONFIG_NTB_EPF)	+= epf/
>>>>  obj-$(CONFIG_NTB_SWITCHTEC) += mscc/ diff --git
>>>> a/drivers/ntb/hw/epf/Kconfig b/drivers/ntb/hw/epf/Kconfig new file
>>>> mode 100644 index 000000000000..6197d1aab344
>>>> --- /dev/null
>>>> +++ b/drivers/ntb/hw/epf/Kconfig
>>>> @@ -0,0 +1,6 @@
>>>> +config NTB_EPF
>>>> +	tristate "Generic EPF Non-Transparent Bridge support"
>>>> +	depends on m
>>>> +	help
>>>> +	  This driver supports EPF NTB on configurable endpoint.
>>>> +	  If unsure, say N.
>>>> diff --git a/drivers/ntb/hw/epf/Makefile
>>>> b/drivers/ntb/hw/epf/Makefile new file mode 100644 index
>>>> 000000000000..2f560a422bc6
>>>> --- /dev/null
>>>> +++ b/drivers/ntb/hw/epf/Makefile
>>>> @@ -0,0 +1 @@
>>>> +obj-$(CONFIG_NTB_EPF) += ntb_hw_epf.o
>>>> diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c
>>>> b/drivers/ntb/hw/epf/ntb_hw_epf.c new file mode 100644 index
>>>> 000000000000..0a144987851a
>>>> --- /dev/null
>>>> +++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
>>>> @@ -0,0 +1,755 @@
>>> ......
>>>> +static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
>>>> +			    struct pci_dev *pdev)
>>>> +{
>>>> +	struct device *dev = ndev->dev;
>>>> +	int ret;
>>>> +
>>>> +	pci_set_drvdata(pdev, ndev);
>>>> +
>>>> +	ret = pci_enable_device(pdev);
>>>> +	if (ret) {
>>>> +		dev_err(dev, "Cannot enable PCI device\n");
>>>> +		goto err_pci_enable;
>>>> +	}
>>>> +
>>>> +	ret = pci_request_regions(pdev, "ntb");
>>>> +	if (ret) {
>>>> +		dev_err(dev, "Cannot obtain PCI resources\n");
>>>> +		goto err_pci_regions;
>>>> +	}
>>>> +
>>>> +	pci_set_master(pdev);
>>>> +
>>>> +	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
>>>> +	if (ret) {
>>>> +		ret = dma_set_mask_and_coherent(dev,
>>>> DMA_BIT_MASK(32));
>>>> +		if (ret) {
>>>> +			dev_err(dev, "Cannot set DMA mask\n");
>>>> +			goto err_dma_mask;
>>>> +		}
>>>> +		dev_warn(&pdev->dev, "Cannot DMA highmem\n");
>>>> +	}
>>>> +
>>>> +	ndev->ctrl_reg = pci_iomap(pdev, 0, 0);
>>>
>>> The second parameter of pci_iomap should be ndev->ctrl_reg_bar instead
>> of the hardcode value 0, right?
>>>
>>>> +	if (!ndev->ctrl_reg) {
>>>> +		ret = -EIO;
>>>> +		goto err_dma_mask;
>>>> +	}
>>>> +
>>>> +	ndev->peer_spad_reg = pci_iomap(pdev, 1, 0);
>>>
>>> pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
>>>
>>>> +	if (!ndev->peer_spad_reg) {
>>>> +		ret = -EIO;
>>>> +		goto err_dma_mask;
>>>> +	}
>>>> +
>>>> +	ndev->db_reg = pci_iomap(pdev, 2, 0);
>>>
>>> pci_iomap(pdev, ndev->db_reg_bar, 0);
>>
>> Good catch. Will fix it and send. Thank you for reviewing.
> 
> You're welcome.
> By the way, since I've studied VOP(virtio over pcie) before, and only recently learned
> about NTB related code. I have some questions about NTB.
> 
> For NTB, in order to make two(or more) different systems to communicate with each other, 
> seems at least three boards are required(two host boards and one board with multiple EP
> instances as bridge), right?

right, this series is about creating NTB bridge by configuring multiple
EP instances in an SoC, however there are also dedicated HW NTB switches
(internally they might as well use multiple EP instances).

> But for VOP, only two boards are needed(one board as host and one board as card) to realize the
> communication between the two systems, so my question is what are the advantages of using NTB? 

NTB is a bridge that facilitates communication between two different
systems. So it by itself will not be source or sink of any data unlike a
normal EP to RP system (or the VOP) which will be source or sink of data.
> Because I think the architecture of NTB seems more complicated. Many thanks!

yeah, I think it enables a different use case all together. Consider you
have two x86 HOST PCs (having RP) and they have to be communicate using
PCIe. NTB can be used in such cases for the two x86 PCs to communicate
with each other over PCIe, which wouldn't be possible without NTB.

Regards,
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/30c8f7a1-baa5-1eb4-d2c2-9a13be896f0f%40ti.com.

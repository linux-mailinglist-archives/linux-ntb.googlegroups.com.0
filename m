Return-Path: <linux-ntb+bncBCOOP4VF5IDRBFFBUX6QKGQEBYU6RDI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe39.google.com (mail-vs1-xe39.google.com [IPv6:2607:f8b0:4864:20::e39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BFE52ABE89
	for <lists+linux-ntb@lfdr.de>; Mon,  9 Nov 2020 15:22:13 +0100 (CET)
Received: by mail-vs1-xe39.google.com with SMTP id s130sf3614415vsc.13
        for <lists+linux-ntb@lfdr.de>; Mon, 09 Nov 2020 06:22:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604931732; cv=pass;
        d=google.com; s=arc-20160816;
        b=WJcQ7IlSGA0sJP9Qfwd3JCMkh1kEO5dJxjCVViP/vThr0h1uPxx9UNCzKJ/qQnWIgN
         4g4awtdf2gjmq+d983hQ3yHqQKkVObDbx8pLJO7BInJepNvcMD+IMZjS0IKMvyxW+oxQ
         H5uoKWHcGbwX0+vDxvz361NlL3nIX1J6AeT4D7fi4cVoLWu/DcYGYEoap150E3482i9f
         h0yb4s0VkWord5danlrsuRJT1nartJAv9AFJvoiWGcgKzTAoCLbXM2XrbgrNY7uXvurW
         E+q091KWSBIOJN9WtpVb85YRa8c+GSYUudKqzRSs/raKAy8kl5ED01FrTDQEdkrjyWCq
         fV8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=3NqeaKEMZs+I0j0cEYJCCOUjcd5zR6Rek4XlWHg90Fk=;
        b=ZGbM6fL8uSgsHWWShTDHx4Cz0an95HwtkanKpNk43QmaegiNg7VcquXAHQetq7J/uJ
         Nxe+hyfnuPYaPMupCYxQpKwSFrzUOphlqDc1a7yBhSKJCg0CgPtp0bnWpm0lca0j1pb3
         SpayFrJlYaKeorqsPK3FJr+iqrp8R+dBqlsoThydciOb0ukwKRwelHd9UEyoyx8qHHc5
         n2txTL95fV5vHZT79al2LboMpS8mhaLvF4BiNc8d/CuehkYkqvRIeKk6EmubPZ/FizZn
         EvvJ60rCbl22oXgSPR8WK6iSxcUQqokAHftou0bse46OXEGwepxt63zdQCdGLGmj0f2J
         /w1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=B7slKvVq;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=3NqeaKEMZs+I0j0cEYJCCOUjcd5zR6Rek4XlWHg90Fk=;
        b=gfpodjcu8AUlXBqqmHWjPJp503XHC6vddRtVOooEVKrMZ6oWxrzh6xLAZtVrGYSxs7
         0tKS7qxc6uv3zS5RGnDJntxM/DqEMQZu/l/8QZhXrbsTfeow24ghARclu10cHVjErDfs
         671z1bYdTY6ItRwDyYSdV/D/sTGxxUXczwTGcu12ld7QRjLI2tWmXVsOGQ/ZN3BcS2SX
         WIkTXmw95GpH6vvLDFjEPtHa8QHlmdD8xljNXnQSkpc1AwRzzF6oRVu/FdnEuoWfjRs8
         b/Mnc6CZennvtZcNA06uCvoKjw61Ok6Mk00U9JYZoPZf/qIVv/f3oYeSN0vHM1Cm2vV/
         JlNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3NqeaKEMZs+I0j0cEYJCCOUjcd5zR6Rek4XlWHg90Fk=;
        b=PKn16rhJp2rAycDgnKnV3nI24rvh0FfoGyS8fbd2NS669Bk2PPoeg7ZHbyVEOMrIA9
         tION0RagRFmS7r9gG/w0Q3LF3qWw+XJJ1ERcH6xq4YlSK1yk9+qmNcAvuSU+VnSDZJOP
         VOm7h1bqDV65puV+N5sOXMBobUgRrKQl1YKpLblHwTYLe08rz8Jal+wEpMFtGwWvVeAv
         0b1W21hDfg0PQYHH+sbX/GI8zR33a+y90FP9nVS9UJK9k4OorIhVYCy2cHbxd/JGPJX6
         nHso7p70scrrnk5V/LnsGaXHJfBlyEzEHvUGRK6wyKCX/89JXHo7CkgnXDrXksqrf3Bj
         DBsw==
X-Gm-Message-State: AOAM531kNAtwlDPnJWB3+1JzHQli7/f7vWuRYu3vZoyhjib9N5niLHf9
	2FfAsLCXbIgyyDggVKoXlmo=
X-Google-Smtp-Source: ABdhPJyPV3RlAKQJT2Oy+qMck5usK7o84CylIxivIihgPfNkCUXkty2EkTGo8TQklxKAn8o7ZDsyBA==
X-Received: by 2002:a05:6102:a17:: with SMTP id t23mr747077vsa.25.1604931732445;
        Mon, 09 Nov 2020 06:22:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:f583:: with SMTP id i3ls977248vso.4.gmail; Mon, 09 Nov
 2020 06:22:12 -0800 (PST)
X-Received: by 2002:a67:8047:: with SMTP id b68mr8057618vsd.26.1604931731841;
        Mon, 09 Nov 2020 06:22:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604931731; cv=none;
        d=google.com; s=arc-20160816;
        b=RvTBAqOWqazJijFcvEc5HU+Iwj3QA1lbRmQuitsr3LE7jl+dHWHeq64cHHj6lF7vpX
         UCEX1w0PQoap0+/aFmjDrEdE5051RYNDRPRL2FrC9UdIeFmKRKYQwck4N3R+yEOrVLjj
         TamPtjsEjcq2giIvucvA6wc5/8AYZNZxSAG3fvdSVkCUfEgdtLIsMytjS6peRvitIA3N
         vWqAkzeRHQN4VivigU7Q4W/oE33DaZn0XFKU+eosSNr4vanJhK1Yi87q0e0P+e1tJkAw
         NrxHVRC5tByFV+n3CRmP1AhZjkxMT4ufLqiMuPUst+wiV/pvNTRBKG2FJYzZo4Vnwcpw
         m7TA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=BeJowArEAuNdzFs1nPVZrTg6rdA5Y2jTtFWItMvuN7g=;
        b=GWa2T+sHU0U9dnylC3USY8xJpEX1Tm9JBbsLjm468ocAKr3sAa1j6JZIJJ0+NTMBmG
         6XDQGQlkZxWxo/qaI0NuLtX/iTPzmSIqXsYJhwW9LcSBq4jigH6EgXjnk0BRxeb+LyhM
         /WRyxTcrwtIwU0kWhhYQRlzXZJ5lrOe/pM6Ms9z1zCd6LSKlqaMWG06NBKsgoeDxEIfZ
         kBOlvLGpnKgmBLWMsqgRfUsytQZulYnDENIQjlH239FTIldpW1LdQ6sjHklXDwfz9kor
         79BE73IJeDzdvj5D/nymTdQtatCwO9B9TjmMNuPrlFhGhMn6+6Yl5F3+iTkCGW2SZXCJ
         +Ocw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=B7slKvVq;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id c124si155252vkb.4.2020.11.09.06.22.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 06:22:11 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0A9EM155042079;
	Mon, 9 Nov 2020 08:22:01 -0600
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0A9EM1lV032432
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 9 Nov 2020 08:22:01 -0600
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 9 Nov
 2020 08:22:00 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 9 Nov 2020 08:22:00 -0600
Received: from [10.250.213.167] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0A9ELoY6109464;
	Mon, 9 Nov 2020 08:21:53 -0600
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
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <d6d27475-3464-6772-2122-cc194b8ae022@ti.com>
Date: Mon, 9 Nov 2020 19:51:44 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB496061EAB6F249F1C394F01092EA0@VI1PR04MB4960.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=B7slKvVq;       spf=pass
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

Hi Sherry,

On 09/11/20 3:07 pm, Sherry Sun wrote:
> Hi Kishon,
> 
>> Subject: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-
>> Transparent Bridge
>>
>> From: Kishon Vijay Abraham I <kishon@ti.com>
>>
>> Add support for EPF PCI-Express Non-Transparent Bridge (NTB) device.
>> This driver is platform independent and could be used by any platform which
>> have multiple PCIe endpoint instances configured using the pci-epf-ntb driver.
>> The driver connnects to the standard NTB sub-system interface. The EPF NTB
>> device has configurable number of memory windows (Max 4), configurable
>> number of doorbell (Max 32), and configurable number of scratch-pad
>> registers.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  drivers/ntb/hw/Kconfig          |   1 +
>>  drivers/ntb/hw/Makefile         |   1 +
>>  drivers/ntb/hw/epf/Kconfig      |   6 +
>>  drivers/ntb/hw/epf/Makefile     |   1 +
>>  drivers/ntb/hw/epf/ntb_hw_epf.c | 755
>> ++++++++++++++++++++++++++++++++
>>  5 files changed, 764 insertions(+)
>>  create mode 100644 drivers/ntb/hw/epf/Kconfig  create mode 100644
>> drivers/ntb/hw/epf/Makefile  create mode 100644
>> drivers/ntb/hw/epf/ntb_hw_epf.c
>>
>> diff --git a/drivers/ntb/hw/Kconfig b/drivers/ntb/hw/Kconfig index
>> e77c587060ff..c325be526b80 100644
>> --- a/drivers/ntb/hw/Kconfig
>> +++ b/drivers/ntb/hw/Kconfig
>> @@ -2,4 +2,5 @@
>>  source "drivers/ntb/hw/amd/Kconfig"
>>  source "drivers/ntb/hw/idt/Kconfig"
>>  source "drivers/ntb/hw/intel/Kconfig"
>> +source "drivers/ntb/hw/epf/Kconfig"
>>  source "drivers/ntb/hw/mscc/Kconfig"
>> diff --git a/drivers/ntb/hw/Makefile b/drivers/ntb/hw/Makefile index
>> 4714d6238845..223ca592b5f9 100644
>> --- a/drivers/ntb/hw/Makefile
>> +++ b/drivers/ntb/hw/Makefile
>> @@ -2,4 +2,5 @@
>>  obj-$(CONFIG_NTB_AMD)	+= amd/
>>  obj-$(CONFIG_NTB_IDT)	+= idt/
>>  obj-$(CONFIG_NTB_INTEL)	+= intel/
>> +obj-$(CONFIG_NTB_EPF)	+= epf/
>>  obj-$(CONFIG_NTB_SWITCHTEC) += mscc/
>> diff --git a/drivers/ntb/hw/epf/Kconfig b/drivers/ntb/hw/epf/Kconfig new
>> file mode 100644 index 000000000000..6197d1aab344
>> --- /dev/null
>> +++ b/drivers/ntb/hw/epf/Kconfig
>> @@ -0,0 +1,6 @@
>> +config NTB_EPF
>> +	tristate "Generic EPF Non-Transparent Bridge support"
>> +	depends on m
>> +	help
>> +	  This driver supports EPF NTB on configurable endpoint.
>> +	  If unsure, say N.
>> diff --git a/drivers/ntb/hw/epf/Makefile b/drivers/ntb/hw/epf/Makefile new
>> file mode 100644 index 000000000000..2f560a422bc6
>> --- /dev/null
>> +++ b/drivers/ntb/hw/epf/Makefile
>> @@ -0,0 +1 @@
>> +obj-$(CONFIG_NTB_EPF) += ntb_hw_epf.o
>> diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c
>> b/drivers/ntb/hw/epf/ntb_hw_epf.c new file mode 100644 index
>> 000000000000..0a144987851a
>> --- /dev/null
>> +++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
>> @@ -0,0 +1,755 @@
> ......
>> +static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
>> +			    struct pci_dev *pdev)
>> +{
>> +	struct device *dev = ndev->dev;
>> +	int ret;
>> +
>> +	pci_set_drvdata(pdev, ndev);
>> +
>> +	ret = pci_enable_device(pdev);
>> +	if (ret) {
>> +		dev_err(dev, "Cannot enable PCI device\n");
>> +		goto err_pci_enable;
>> +	}
>> +
>> +	ret = pci_request_regions(pdev, "ntb");
>> +	if (ret) {
>> +		dev_err(dev, "Cannot obtain PCI resources\n");
>> +		goto err_pci_regions;
>> +	}
>> +
>> +	pci_set_master(pdev);
>> +
>> +	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
>> +	if (ret) {
>> +		ret = dma_set_mask_and_coherent(dev,
>> DMA_BIT_MASK(32));
>> +		if (ret) {
>> +			dev_err(dev, "Cannot set DMA mask\n");
>> +			goto err_dma_mask;
>> +		}
>> +		dev_warn(&pdev->dev, "Cannot DMA highmem\n");
>> +	}
>> +
>> +	ndev->ctrl_reg = pci_iomap(pdev, 0, 0);
> 
> The second parameter of pci_iomap should be ndev->ctrl_reg_bar instead of the hardcode value 0, right?
> 
>> +	if (!ndev->ctrl_reg) {
>> +		ret = -EIO;
>> +		goto err_dma_mask;
>> +	}
>> +
>> +	ndev->peer_spad_reg = pci_iomap(pdev, 1, 0);
> 
> pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
> 
>> +	if (!ndev->peer_spad_reg) {
>> +		ret = -EIO;
>> +		goto err_dma_mask;
>> +	}
>> +
>> +	ndev->db_reg = pci_iomap(pdev, 2, 0);
> 
> pci_iomap(pdev, ndev->db_reg_bar, 0);

Good catch. Will fix it and send. Thank you for reviewing.

Regards,
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/d6d27475-3464-6772-2122-cc194b8ae022%40ti.com.

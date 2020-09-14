Return-Path: <linux-ntb+bncBCOOP4VF5IDRBQM4735AKGQE5NZAFCI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id DF293269022
	for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 17:37:38 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id r22sf12355044qtc.9
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 08:37:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600097858; cv=pass;
        d=google.com; s=arc-20160816;
        b=aEoQ4yHBnFxSrd/cWpzolcCWlFsT3vFwwNDtefttUiB49kx61E3nOcGc5O8U3vVb7n
         uBsapHBJ0oIQs+SFA2skZ+mtTTHxn5Z+++8BP0LS2pO+8yGA7I66tuNejX6c17JfbVpk
         7v0m7MgApHIB0OSEvaeWoTXAq9pJsGLjvzpZcJPXGVY2RpVHrse3BrcXAjdTP0vo8QBG
         eyVWz7mP975nr2cxHpB9VopHgz/GRz7vycQwvaHO3P2FV+Mn2bxtwBeAiDc9vG7NnIfB
         6TjCWLt7VoET57qPxHp9oZvqJtPTTMDCD3blHUZOMzy1kyEM+bcUi5pGBpQiFDuWnTEW
         ZBTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=khUpQJIxI/QujxtZKXouxUlyyn6YYV1TJ6+vQuzDNV8=;
        b=JfGoyRjzxVxroG2tQmkF17lx65/ZlGVWfjebSHt1DMSpPrsz584myx03r1RBxP9zxY
         LFciL+Q164o0iAiPY/IZvyn06FKxFLBvRPP2+FSfTdIBGqEoy0DLWEp+xWSRfbhczlCq
         YScJDvnHHFfrsCB7H8DciZyb1bgsDTveL/1jaXOOfe5QhHyyufVMTaMCEO0dgfPJ+7ey
         HdcDzjt5gb34CAGxb120rzFMQqRahKHNCxLvMGzJkR6cX7UoQEREYGqEehJh8F52FXx3
         NtLWnAyFlKlwIx3XgAQR06BqT2yLyELpeF7iWtA/CTHah1sRgm4UJ5dPKR76kVuhKpmi
         qd/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ptoiWDcM;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=khUpQJIxI/QujxtZKXouxUlyyn6YYV1TJ6+vQuzDNV8=;
        b=ewZgxtfs2TjoE3H0an1bUrW1QO6C6zeDqAdL8kZ9gOiADekktd7voMni42O3YqSLaV
         yz3IS1IDoG5DpTsKO+bygxtEi2Q268j2BarQV/QVMGFy3+mQ5+RJn2oZtJdwDx2HaYv6
         YsQeGDYE0Su3m/8R8yxr7Tj1aVUUc1ISRC2Wf0npCwsc8Sww2iTP9w/OO7AJPKnmG7BO
         pKjlN4dtFI82WNiWExEVX+GNxRdaqnYvM9FvV4l8DZEEq6v7yeK4LRtAvAPEjkqvY28t
         t803UTepT5ozJ2r8+e/4mVU+BnVLEo8RX8xEFVS9u4c/x12kEvESVMh7WdBgHlSExmRp
         z9Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=khUpQJIxI/QujxtZKXouxUlyyn6YYV1TJ6+vQuzDNV8=;
        b=Q81dJrGzhkTG7AcHe4TDv5QuojWkSoN//CCnuDiGvAus5w8kyJjPm2WgvZE4ft9pQG
         sh1VVuDOtkxE+e1du9oLjnTgKvM88txAvPNTwjQzIBmlHibIF72P3Mw9Bn1DVlxTd7Av
         LieLvUsPf2CyMxTnGH5M/xNTbZdWcmWgsyVh1dPGoER1yIRKDDKbONd6a7hCNZaoMHs8
         x4Sd4oqKXjqhSbyojHldxAo0BNd0u4qTOcslkqqFk/FqQYDtyeD8PcCBWpYyhiO/YySS
         90HsW0SY4ECs81SQ/CYHtjLTPRCjPq5XqW1a+ODF1gVVtzRWQ7FykbeyEphusbqQHRLS
         ct9w==
X-Gm-Message-State: AOAM5329gqQQ8zI0P7hoB/xm4Qui4x3PMQ5+MTPcUww/sVio5XyRKrVh
	aErDJ17ulMGu30yTNKwGqBs=
X-Google-Smtp-Source: ABdhPJzXdm+nnNU4pjihFAXLebKR5MZykJu3nLNiqTjDPhDNmsD87+wp7L+lKETdRZm5LsBGXQw7Vg==
X-Received: by 2002:aed:2fc5:: with SMTP id m63mr1313613qtd.313.1600097857788;
        Mon, 14 Sep 2020 08:37:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ae9:f303:: with SMTP id p3ls4999422qkg.10.gmail; Mon, 14 Sep
 2020 08:37:37 -0700 (PDT)
X-Received: by 2002:a05:620a:145:: with SMTP id e5mr13049634qkn.479.1600097857218;
        Mon, 14 Sep 2020 08:37:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600097857; cv=none;
        d=google.com; s=arc-20160816;
        b=hWYU54YSSmDZ04w776MK6qm+6DeO9SioYb52OicnwR4053wSKjTFOM8INUcKyoTF0G
         Q7X9hjAXixxtyMb2qbULSbajAkY2PCLME+8onjVRSc+xEHI9gTYkJvggS4X8mkSfYrwY
         xz8x/dny4rByqxa0tSNl9pMXGEH8nWuiJKmbjAKHfk9Hoybf5eL+mHlbjJnNPHuKp+go
         aHHE42qlVXilmh3DuroivQQ8WFTcYqZKC8bHqa5SiCnr3H6Ld91BhMtVaPsp7PCDaIVT
         7MdiXuOt8vC/Nc70LKQDnyuvV5cObiiKSwApLd1uoRz5pUiNhqWAb80Y8LUxcoUpvK4d
         lq4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=IscYVn9/1Ngh3jqm3W1TxrrkC1/VilWwlvxLwV2qJkA=;
        b=aRhgNDzwbSV/4+W6z2GXknXiyxtXP/079woL1dWjpjSJi0ph3tf2gqLIkkSlOy6XY9
         6vzzUf6iPz6l8STvglbZOLAmoOWOyxg1a8woS1gae+fbYkZHwJAAYf6fFuLminLesuKR
         xKXbUnKupRI9gU6WYWSRpZlRA3HJgw+GEGfOSY0Xv/OdhgsOjbKcitS/ABvCeW8aqEHX
         hpHWMGqN6osedFnI6xrxVREj1iW5yh8+vMd9e7KMqReSLjKOSQ4b1/HZ+nty+lhJ86pu
         HcszUgtftxRZEHs2faP9ZHGZbZ+hUIBQTC4rZ5MSp/Xcb+wEMfUVKMe8+JoF57zMNBoe
         5Iqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ptoiWDcM;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id q5si559445qkc.2.2020.09.14.08.37.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 08:37:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08EFbStm060262;
	Mon, 14 Sep 2020 10:37:28 -0500
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08EFbSXi080492;
	Mon, 14 Sep 2020 10:37:28 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 10:36:14 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 10:36:14 -0500
Received: from [10.250.232.147] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08EFa8FJ102628;
	Mon, 14 Sep 2020 10:36:09 -0500
Subject: Re: [PATCH v3 17/17] Documentation: PCI: Add userguide for PCI
 endpoint NTB function
To: Randy Dunlap <rdunlap@infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>, Rob Herring
	<robh@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Tom Joseph <tjoseph@cadence.com>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>
References: <20200904075052.8911-1-kishon@ti.com>
 <20200904075052.8911-18-kishon@ti.com>
 <f16f5a90-13c1-bfc6-ad83-1c6becbf1629@infradead.org>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <c06d2a12-6533-361e-a0c8-9faa62abd8f0@ti.com>
Date: Mon, 14 Sep 2020 21:06:07 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <f16f5a90-13c1-bfc6-ad83-1c6becbf1629@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ptoiWDcM;       spf=pass
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

Hi Randy,

On 06/09/20 3:38 am, Randy Dunlap wrote:
> On 9/4/20 12:50 AM, Kishon Vijay Abraham I wrote:
>> Add documentation to help users use pci-epf-ntb function driver and
>> existing host side NTB infrastructure for NTB functionality.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  Documentation/PCI/endpoint/index.rst         |   1 +
>>  Documentation/PCI/endpoint/pci-ntb-howto.rst | 160 +++++++++++++++++++
>>  2 files changed, 161 insertions(+)
>>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst
> 
> Hi,
> There are a few edits below:

Thanks for reviewing. I'll fix and post a new revision.

Thanks
Kishon

> 
> 
>> diff --git a/Documentation/PCI/endpoint/pci-ntb-howto.rst b/Documentation/PCI/endpoint/pci-ntb-howto.rst
>> new file mode 100644
>> index 000000000000..2fbb0a051c3b
>> --- /dev/null
>> +++ b/Documentation/PCI/endpoint/pci-ntb-howto.rst
>> @@ -0,0 +1,160 @@
>> +.. SPDX-License-Identifier: GPL-2.0
>> +
>> +======================
>> +PCI NTB EPF User Guide
>> +======================
>> +
>> +:Author: Kishon Vijay Abraham I <kishon@ti.com>
>> +
>> +This document is a guide to help users use pci-epf-ntb function driver
>> +and ntb_hw_epf host driver for NTB functionality. The list of steps to
>> +be followed in the host side and EP side is given below. For the hardware
>> +configuration and internals of NTB using configurable endpoints see
>> +Documentation/PCI/endpoint/pci-ntb-function.rst
>> +
>> +Endpoint Device
>> +===============
>> +
>> +Endpoint Controller Devices
>> +---------------------------
>> +
>> +For implementing NTB functionality atleast two endpoint controller devices
> 
>                                       at least
> 
>> +are required.
>> +To find the list of endpoint controller devices in the system::
>> +
>> +        # ls /sys/class/pci_epc/
>> +          2900000.pcie-ep  2910000.pcie-ep
>> +
>> +If PCI_ENDPOINT_CONFIGFS is enabled::
>> +
>> +	# ls /sys/kernel/config/pci_ep/controllers
>> +	  2900000.pcie-ep  2910000.pcie-ep
>> +
>> +
>> +Endpoint Function Drivers
>> +-------------------------
>> +
>> +To find the list of endpoint function drivers in the system::
>> +
>> +	# ls /sys/bus/pci-epf/drivers
>> +	  pci_epf_ntb   pci_epf_ntb
>> +
>> +If PCI_ENDPOINT_CONFIGFS is enabled::
>> +
>> +	# ls /sys/kernel/config/pci_ep/functions
>> +	  pci_epf_ntb   pci_epf_ntb
>> +
>> +
>> +Creating pci-epf-ntb Device
>> +----------------------------
>> +
>> +PCI endpoint function device can be created using the configfs. To create
>> +pci-epf-ntb device, the following commands can be used::
>> +
>> +	# mount -t configfs none /sys/kernel/config
>> +	# cd /sys/kernel/config/pci_ep/
>> +	# mkdir functions/pci_epf_ntb/func1
>> +
>> +The "mkdir func1" above creates the pci-epf-ntb function device that will
>> +be probed by pci_epf_ntb driver.
>> +
>> +The PCI endpoint framework populates the directory with the following
>> +configurable fields::
>> +
>> +	# ls functions/pci_epf_ntb/func1
>> +          baseclass_code    deviceid          msi_interrupts    pci-epf-ntb.0
>> +          progif_code       secondary         subsys_id         vendorid
>> +          cache_line_size   interrupt_pin     msix_interrupts   primary
>> +          revid             subclass_code     subsys_vendor_id
>> +
>> +The PCI endpoint function driver populates these entries with default values
>> +when the device is bound to the driver. The pci-epf-ntb driver populates
>> +vendorid with 0xffff and interrupt_pin with 0x0001::
>> +
>> +	# cat functions/pci_epf_ntb/func1/vendorid
>> +	  0xffff
>> +	# cat functions/pci_epf_ntb/func1/interrupt_pin
>> +	  0x0001
>> +
>> +
>> +Configuring pci-epf-ntb Device
>> +-------------------------------
>> +
>> +The user can configure the pci-epf-ntb device using configfs entry. In order
> 
>                                                  using its configfs entry.
> 
>> +to change the vendorid and the deviceid, the following
>> +commands can be used::
>> +
>> +	# echo 0x104c > functions/pci_epf_ntb/func1/vendorid
>> +	# echo 0xb00d > functions/pci_epf_ntb/func1/deviceid
>> +
>> +In-order to configure NTB specific attributes, a new sub-directory to func1
> 
>    In order
> 
>> +should be created::
>> +
>> +	# mkdir functions/pci_epf_ntb/func1/pci_epf_ntb.0/
>> +
>> +The NTB function driver will populate this directory with various attributes
>> +that can be configured by the user::
>> +
>> +	# ls functions/pci_epf_ntb/func1/pci_epf_ntb.0/
>> +          db_count    mw1         mw2         mw3         mw4         num_mws
>> +          spad_count
>> +
>> +A sample configuration for NTB function is given below::
>> +
>> +	# echo 4 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/db_count
>> +	# echo 128 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/spad_count
>> +	# echo 2 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/num_mws
>> +	# echo 0x100000 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/mw1
>> +	# echo 0x100000 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/mw2
>> +
>> +Binding pci-epf-ntb Device to EP Controller
>> +--------------------------------------------
>> +
>> +NTB function device should be attached to two PCIe endpoint controllers
>> +connected to the two hosts. Use the 'primary' and 'secondary' entries
>> +inside NTB function device to attach one PCIe endpoint controller to
>> +primary interface and the other PCIe endpoint controller to the secondary
>> +interface. ::
>> +
>> +        # ln -s controllers/2900000.pcie-ep/ functions/pci-epf-ntb/func1/primary
>> +        # ln -s controllers/2910000.pcie-ep/ functions/pci-epf-ntb/func1/secondary
>> +
>> +Once the above step is completed, both the PCI endpoint controllers is ready to
> 
>                                                                        are ready
> 
>> +establish a link with the host.
>> +
>> +
>> +Start the Link
>> +--------------
>> +
>> +In order for the endpoint device to establish a link with the host, the _start_
>> +field should be populated with '1'. For NTB, both the PCIe endpoint controllers
>> +should establish link with the host::
>> +
>> +        #echo 1 > controllers/2900000.pcie-ep/start
>> +        #echo 1 > controllers/2910000.pcie-ep/start
>> +
>> +
>> +RootComplex Device
>> +==================
>> +
>> +lspci Output
>> +------------
>> +
>> +Note that the devices listed here correspond to the value populated in 1.4
> 
> Can you use a section name (or reference) here instead of "1.4"?  I can't see 1.4
> when reading with an editor.
> 
>> +above::
>> +
>> +        # lspci
>> +        0000:00:00.0 PCI bridge: Texas Instruments Device b00d
>> +        0000:01:00.0 RAM memory: Texas Instruments Device b00d
>> +
>> +
>> +Using ntb_hw_epf Device
>> +-----------------------
>> +
>> +The host side software follows the standard NTB software architecture in Linux.
>> +All the existing client side NTB utilities like NTB Transport Client and NTB
>> +Netdev, NTB Ping Pong Test Client and NTB Tool Test Clientcan be used with NTB
> 
>                                                        Client can be
> 
>> +function device.
>> +
>> +For more information on NTB see
>> +Documentation/driver-api/ntb.rst
> 
> 
> thanks.
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/c06d2a12-6533-361e-a0c8-9faa62abd8f0%40ti.com.

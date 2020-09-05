Return-Path: <linux-ntb+bncBDV2D5O34IDRBWMY2D5AKGQEM5WJEUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 05A0725EB46
	for <lists+linux-ntb@lfdr.de>; Sun,  6 Sep 2020 00:08:26 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id t12sf2943129ljh.19
        for <lists+linux-ntb@lfdr.de>; Sat, 05 Sep 2020 15:08:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599343705; cv=pass;
        d=google.com; s=arc-20160816;
        b=YphfYyBGQLUHAznGoTMonIJ1mwxTtV+57SLX+FjY91RUz99k6yMHMqh/Q7VrSj+zYZ
         oBfpRLJwAJCMzPJw1jj7Z/6cUnUII4F7x4iO1YWUUBUX/m6AWL9gAztPbrJPIFE3sRyF
         e9JAeo9tGrTX3Zxfm1gOZvKlpaxTul4kc4/WRbKfNPeRU92vpV0+Nszop00zlnscW/Jy
         QrtiD3j+m8y7Rl9Xw2Fxnn8SdaJV/DfFyG67bSwg7uWc86+7UWSuSGmxSg99soma1k0Y
         l3R74hDm06ZuWyFuBkDkwbspo0PpwO/7awyfBEI2RZRKjRigx/HW4WhwmNkyLvHcv1mO
         AikA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Za+Ez9vKBfb9k8MXRbf7PWKOLZYnKayrwV9+2FjqWjg=;
        b=AWpDO1MC3N+7x+011adCeVwv44319UGtC73SUOz53bvTzSfjqyWsosIrBMmbM265zP
         Z0Yh4W2w+v2mf4valvxSUuVSSXnkPp3qS5HtMkCBDeZErosQkN+cw/1sKoGua4IAJfz6
         5tumKNS03lHLP1gCIEaL2d1qRRVTbGw21/zhZoZcsSmKalZ06UUqaSyM11iS/+xsOGaO
         2EQdfGqdruT9jzJpPYPeNtnty7ryOt2yCrIt0gspxBpv/GZS2sFbpCdVAM93diz7a41S
         Ut1pcOafZTlLAd2zJZP1SHOAPNCgzHyimFC4UVxwGiUftc8Nzr+f7olo1C32msY2Okbl
         Nxyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hv7xmvBC;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Za+Ez9vKBfb9k8MXRbf7PWKOLZYnKayrwV9+2FjqWjg=;
        b=lLz9obglAnCaeVYmgs1qLuy8jlzr8gWVvhZFo0EzzJqgGbpqI91+W1Sjzfckb/GXEk
         vIUhargrgecm3ZEDs1Bq4/qETQxB7knkkirft0oR5Oq22ZEvAgx2FKkgstK17OCQN/gE
         1Wr2iYT8sDajScl5vV6c6Buo3+XSGbrERQ3lb4atxh1bAI0nq7dg9y9p+NOyHFXq6K74
         FK9sRLjTOldmRxkGo+tIsyyJGc2NhNW5wxPwPKkyIjhxXk8wpw9QjVCCZ+uAs3o1kgWh
         3dgQvR23KsdTtV+28cNgoIAqGM7vA/Lw0RNWPCCkghT1tLtWPPS1f+y4Ta51wbgODAWm
         Y2wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Za+Ez9vKBfb9k8MXRbf7PWKOLZYnKayrwV9+2FjqWjg=;
        b=nSQWtBEcak3BN68WuqTeoKO1AqUVQAy0Rnat1b+MJcpuHm4E4jw9qUIt9pf9ujawpl
         EOL7gATKwJMLeHYM38gTRoj9JMrbFxQAvLxbC0adL3IVBvzyTg0Kt6VXp2jGWchnGIYO
         +vvaML1tMf17dWxNLuhzS6uImNgHpBUuP54WYttZgMopcO3uRJ8QwoUbobx2gowxKcAK
         cMsqQIiypwobNdkFuxmNRQvkpgWWVOK2KmF+m+RtT1v1AV9bMoVsvM0PbpbaJMsJe9+o
         yOASwn12EsgwUHT79yhdATnBhwcs4SpKsYh2s9kfufDUEBLLZhqOy72D7n5KCf7M6s1F
         Ynhg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533c08vlBs49vppVD5MyGeWeIU8hYkCfKqcdCVapN4h+hWTbEcyQ
	/zST/Kaxl6JIbWChmVUwoc0=
X-Google-Smtp-Source: ABdhPJy6G6/HYMmIoB51fVo74pM8l1dyHr+rergjbhBSjhV3ZtIj/ZvLeoz5i1LO1frMnmdwAqRMDQ==
X-Received: by 2002:a2e:9992:: with SMTP id w18mr7192513lji.301.1599343705535;
        Sat, 05 Sep 2020 15:08:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:b1c5:: with SMTP id e5ls2532734lja.0.gmail; Sat, 05 Sep
 2020 15:08:24 -0700 (PDT)
X-Received: by 2002:a2e:93c9:: with SMTP id p9mr7083456ljh.311.1599343704717;
        Sat, 05 Sep 2020 15:08:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599343704; cv=none;
        d=google.com; s=arc-20160816;
        b=vrDSSPkUTv5ujBK/3ytkW4IJGCXX3YZfg9SROCCpYqX059ztubYOP/jUisK9X1Nqe1
         cMbNkfFiWdfpASUA7pLZIdixKXZNmLrUNq/sqhB1I4Hjq2UBHcDjm1NUBTMDaylpFmxh
         SAxTUQqt28yNP/UV4hUdPeM11N46JGPYeaaCQ/i9RQzcrO/xAV2aOMGv5PoaBR5smC5n
         ayYnzOFdllJyaoxcSzphQ9rSd4T7tF+uG9GpJcK+gGy2QiRCY5kjqllhqNZqh7lr/Xfa
         9bfoYmqF8QU0rEHpPJVp4UCwBWjYUCFa7v3I+4IDaR13zXPj9Edcj4nj1uup0Y3QBRkB
         PuJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gaAlMrKWUPQqhJQ7Zgj/9HIIFFg/+6XEEbU/k8yPdE8=;
        b=ASuahhAfs3L27UU0b0UWQzNTHJeesJjJPBcNfIrLTcXdlVoCjgXrnqHAO2TiP9Rza/
         qpqkWc2E+kYsLtZvn+fHtFagY9jjh+MWDrEetTOGKVAxF6COkKsIUwzOisn1lfcGH/HC
         P8uTd1V6qbxg43DEe2bq5FroKgIIR9vDCuv8qi5jzBx6BiXocqG1nSxtLERj5HE8yJeC
         ImQ6mBwEz8JV7LlCxy6shP9kWkO4HXrUIjede1neV9DKhAn2Yc2PBRGf7nApPbYBd+uA
         Oku+fNUKmw1xKM4uJDClH4SLLhIHJyeRXlRj/GP9GuNxHwdgFgPsxJdzsU7/Jh42ENYD
         l8dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=hv7xmvBC;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id r16si204545ljg.1.2020.09.05.15.08.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2020 15:08:23 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from [2601:1c0:6280:3f0::19c2]
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kEgM6-00087y-VD; Sat, 05 Sep 2020 22:08:20 +0000
Subject: Re: [PATCH v3 17/17] Documentation: PCI: Add userguide for PCI
 endpoint NTB function
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Rob Herring <robh@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Tom Joseph <tjoseph@cadence.com>, linux-pci@vger.kernel.org,
 linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-ntb@googlegroups.com
References: <20200904075052.8911-1-kishon@ti.com>
 <20200904075052.8911-18-kishon@ti.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <f16f5a90-13c1-bfc6-ad83-1c6becbf1629@infradead.org>
Date: Sat, 5 Sep 2020 15:08:12 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200904075052.8911-18-kishon@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=hv7xmvBC;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 9/4/20 12:50 AM, Kishon Vijay Abraham I wrote:
> Add documentation to help users use pci-epf-ntb function driver and
> existing host side NTB infrastructure for NTB functionality.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  Documentation/PCI/endpoint/index.rst         |   1 +
>  Documentation/PCI/endpoint/pci-ntb-howto.rst | 160 +++++++++++++++++++
>  2 files changed, 161 insertions(+)
>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst

Hi,
There are a few edits below:


> diff --git a/Documentation/PCI/endpoint/pci-ntb-howto.rst b/Documentation/PCI/endpoint/pci-ntb-howto.rst
> new file mode 100644
> index 000000000000..2fbb0a051c3b
> --- /dev/null
> +++ b/Documentation/PCI/endpoint/pci-ntb-howto.rst
> @@ -0,0 +1,160 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +======================
> +PCI NTB EPF User Guide
> +======================
> +
> +:Author: Kishon Vijay Abraham I <kishon@ti.com>
> +
> +This document is a guide to help users use pci-epf-ntb function driver
> +and ntb_hw_epf host driver for NTB functionality. The list of steps to
> +be followed in the host side and EP side is given below. For the hardware
> +configuration and internals of NTB using configurable endpoints see
> +Documentation/PCI/endpoint/pci-ntb-function.rst
> +
> +Endpoint Device
> +===============
> +
> +Endpoint Controller Devices
> +---------------------------
> +
> +For implementing NTB functionality atleast two endpoint controller devices

                                      at least

> +are required.
> +To find the list of endpoint controller devices in the system::
> +
> +        # ls /sys/class/pci_epc/
> +          2900000.pcie-ep  2910000.pcie-ep
> +
> +If PCI_ENDPOINT_CONFIGFS is enabled::
> +
> +	# ls /sys/kernel/config/pci_ep/controllers
> +	  2900000.pcie-ep  2910000.pcie-ep
> +
> +
> +Endpoint Function Drivers
> +-------------------------
> +
> +To find the list of endpoint function drivers in the system::
> +
> +	# ls /sys/bus/pci-epf/drivers
> +	  pci_epf_ntb   pci_epf_ntb
> +
> +If PCI_ENDPOINT_CONFIGFS is enabled::
> +
> +	# ls /sys/kernel/config/pci_ep/functions
> +	  pci_epf_ntb   pci_epf_ntb
> +
> +
> +Creating pci-epf-ntb Device
> +----------------------------
> +
> +PCI endpoint function device can be created using the configfs. To create
> +pci-epf-ntb device, the following commands can be used::
> +
> +	# mount -t configfs none /sys/kernel/config
> +	# cd /sys/kernel/config/pci_ep/
> +	# mkdir functions/pci_epf_ntb/func1
> +
> +The "mkdir func1" above creates the pci-epf-ntb function device that will
> +be probed by pci_epf_ntb driver.
> +
> +The PCI endpoint framework populates the directory with the following
> +configurable fields::
> +
> +	# ls functions/pci_epf_ntb/func1
> +          baseclass_code    deviceid          msi_interrupts    pci-epf-ntb.0
> +          progif_code       secondary         subsys_id         vendorid
> +          cache_line_size   interrupt_pin     msix_interrupts   primary
> +          revid             subclass_code     subsys_vendor_id
> +
> +The PCI endpoint function driver populates these entries with default values
> +when the device is bound to the driver. The pci-epf-ntb driver populates
> +vendorid with 0xffff and interrupt_pin with 0x0001::
> +
> +	# cat functions/pci_epf_ntb/func1/vendorid
> +	  0xffff
> +	# cat functions/pci_epf_ntb/func1/interrupt_pin
> +	  0x0001
> +
> +
> +Configuring pci-epf-ntb Device
> +-------------------------------
> +
> +The user can configure the pci-epf-ntb device using configfs entry. In order

                                                 using its configfs entry.

> +to change the vendorid and the deviceid, the following
> +commands can be used::
> +
> +	# echo 0x104c > functions/pci_epf_ntb/func1/vendorid
> +	# echo 0xb00d > functions/pci_epf_ntb/func1/deviceid
> +
> +In-order to configure NTB specific attributes, a new sub-directory to func1

   In order

> +should be created::
> +
> +	# mkdir functions/pci_epf_ntb/func1/pci_epf_ntb.0/
> +
> +The NTB function driver will populate this directory with various attributes
> +that can be configured by the user::
> +
> +	# ls functions/pci_epf_ntb/func1/pci_epf_ntb.0/
> +          db_count    mw1         mw2         mw3         mw4         num_mws
> +          spad_count
> +
> +A sample configuration for NTB function is given below::
> +
> +	# echo 4 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/db_count
> +	# echo 128 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/spad_count
> +	# echo 2 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/num_mws
> +	# echo 0x100000 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/mw1
> +	# echo 0x100000 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/mw2
> +
> +Binding pci-epf-ntb Device to EP Controller
> +--------------------------------------------
> +
> +NTB function device should be attached to two PCIe endpoint controllers
> +connected to the two hosts. Use the 'primary' and 'secondary' entries
> +inside NTB function device to attach one PCIe endpoint controller to
> +primary interface and the other PCIe endpoint controller to the secondary
> +interface. ::
> +
> +        # ln -s controllers/2900000.pcie-ep/ functions/pci-epf-ntb/func1/primary
> +        # ln -s controllers/2910000.pcie-ep/ functions/pci-epf-ntb/func1/secondary
> +
> +Once the above step is completed, both the PCI endpoint controllers is ready to

                                                                       are ready

> +establish a link with the host.
> +
> +
> +Start the Link
> +--------------
> +
> +In order for the endpoint device to establish a link with the host, the _start_
> +field should be populated with '1'. For NTB, both the PCIe endpoint controllers
> +should establish link with the host::
> +
> +        #echo 1 > controllers/2900000.pcie-ep/start
> +        #echo 1 > controllers/2910000.pcie-ep/start
> +
> +
> +RootComplex Device
> +==================
> +
> +lspci Output
> +------------
> +
> +Note that the devices listed here correspond to the value populated in 1.4

Can you use a section name (or reference) here instead of "1.4"?  I can't see 1.4
when reading with an editor.

> +above::
> +
> +        # lspci
> +        0000:00:00.0 PCI bridge: Texas Instruments Device b00d
> +        0000:01:00.0 RAM memory: Texas Instruments Device b00d
> +
> +
> +Using ntb_hw_epf Device
> +-----------------------
> +
> +The host side software follows the standard NTB software architecture in Linux.
> +All the existing client side NTB utilities like NTB Transport Client and NTB
> +Netdev, NTB Ping Pong Test Client and NTB Tool Test Clientcan be used with NTB

                                                       Client can be

> +function device.
> +
> +For more information on NTB see
> +Documentation/driver-api/ntb.rst


thanks.
-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/f16f5a90-13c1-bfc6-ad83-1c6becbf1629%40infradead.org.

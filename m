Return-Path: <linux-ntb+bncBCOOP4VF5IDRBKPDUD5QKGQEEGJS3KQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id B2189271A37
	for <lists+linux-ntb@lfdr.de>; Mon, 21 Sep 2020 06:52:58 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id 80sf9187626iou.4
        for <lists+linux-ntb@lfdr.de>; Sun, 20 Sep 2020 21:52:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600663977; cv=pass;
        d=google.com; s=arc-20160816;
        b=lV874+qVinA4BsftUMJys6DmpGU3njWot9fx2nsgjlwq8Tc2FoHbdUHaSYPqM0NZbW
         NolVspMdhLAnomY2izkwVa5BcTDueUdxej/nyWtnckA27T9izStkz7OqyItrBRtR0h7D
         12OS+HrYPJ6uMa4FCQO7inZamlICLhZx9OxUxbUOD7t1uP6FMcEhO3Jqxilrv4q4SzgU
         4B2r6YEC5/0HDUNEOpYbUUt454WTPYVBsvC9GY96L/reK+kDpAYS/yUXXaExX+QHvSXI
         +IwXegeoosHK/SyfhaMeYBvR2zhJzeI45IDzGOXmdjFRmaKDTIzsKhv8RzOpfrSRS1La
         N+Xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=ME75lQ0gQbXngYaFJO1NFLsiQ41oy9OvqHeUQcrgvas=;
        b=v94JoNqRjhaLDLC12J2LxHlfu4uR+q7Ih+d3uaIQSWwZXT+gP7CAJtx4m2Wja+dlIy
         s77zd48Ql7fvayzhZC4oBGaL63Ml2Bs3gR8YCLLNvPQVRtDs5Il/+xcWzH5NetWlhFHe
         2esMaWf32tuQlARPS/UbDgGx+BmBR8ttiGDsNU2Z7oXFrak+y8edmkYb6sJSptyUzsxI
         PxdWj47+oKDPj0Uum3gc9zv+7c0hD1XRbVXVCt4vOuvSd+GWirVWJRJrffgcf7/KwXdu
         MybaMUh9lFK0JpeI0rBt6NCXiCqyXq9OHtz09b/UgRBqL+Ah8AjHBcj5R/39UyOsS7Q3
         HrZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=K4gIhkwo;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ME75lQ0gQbXngYaFJO1NFLsiQ41oy9OvqHeUQcrgvas=;
        b=c5MEXgN0t/6/0zfXYjYZ/mmdgLrz1EMnMh/P2reLksMzFp++JWno4XapKubwzPb6s3
         aVFzJr8NQt6WRek6vrwoJJmH1Y5JwRI19M+ZUh9JYXjhQ+kgOSap4VDxkhAN5SGyDx4f
         CRRtz1iB88QS7U1XS+RK1AjT+Sz70UD9BHxxEOx5ZWL/NXf8YFZ1l8X7F/WtaUEuFGd/
         7DQLGEboPiB6W5ogjQdBhX4KLrRRisGJKJI8aUhG4riaqGPN/SGT9/CSIc1OAUijeywC
         UkWwB5X7HpeJT45xbiHSj+rhj1lzMspzuJprrt4sg/ZiLA7u1EZgq7LH20qP6Bs1rLYn
         e7IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ME75lQ0gQbXngYaFJO1NFLsiQ41oy9OvqHeUQcrgvas=;
        b=Cm+PJmUPw086WVh5w2zDyPq/8parDsj+FXt0jQs12x9mFwnMsMjSfrxdfa4Rak1x5a
         FctQdAkK0E8ThpzEUk++7Y2fAS0h4GuHrxwFRAFzDu6tGfr9EzL5+i4nPB6pWofL9Nwy
         Ny5Tn8LIeJXfO2dIjwwKeTM9jXHuInXg08aglYzeCbLWeAtmYG5j5fvOsmCOltkQtFA5
         oxhZ21SzAiJwMkKij2rPf3vL3Igf+Oc6VWmdeEZnEa4okC/BjIYkMS4/fc+87PuHSX94
         qgM5SIEQ0ZoolNFZZgC10uD2oFNkeIzCn4kP8GrqlkjmuMm6SoJ1Q9axXUjPk9NPqCIM
         2cQA==
X-Gm-Message-State: AOAM531dgsGG+3o3JH1E4iSp7rP3WwRZTHV/yie8aBmkjUsdltTuGu9a
	H3QYlp1ufrPe6q8Zq/KAu1M=
X-Google-Smtp-Source: ABdhPJzTAZiaax21BrqhGpnwignJwQ77UJCFdRBjUSNMTtyDfp/y1VJMEgYuX+lkuyhMhGyQJMKUHg==
X-Received: by 2002:a6b:194:: with SMTP id 142mr35528286iob.18.1600663977370;
        Sun, 20 Sep 2020 21:52:57 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:6f56:: with SMTP id b22ls1355147jae.9.gmail; Sun, 20 Sep
 2020 21:52:57 -0700 (PDT)
X-Received: by 2002:a02:62c9:: with SMTP id d192mr39028842jac.59.1600663976973;
        Sun, 20 Sep 2020 21:52:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600663976; cv=none;
        d=google.com; s=arc-20160816;
        b=UbuF6gHVztVMqBgGM1w5FiE8IdVzexWcgrqd7ulL3SnJrxzeWT4w2M8+zHgcZsarMh
         x16FWUv/kHPPPmfoSPmNGnJ6TbHkzVlkEOzDj1DjEUk2c/wmssUTct22b8CoCx8lfrjt
         X0g46dZ0PI4LMk+eCUA/2S/YmJb2FOC97e2HK5xC9VG3HpFqfHyAZrssHPLA+gZyOLvk
         hxpViRVTrYx8cnXQfJaM+BEPru9MU6shWMXVnLPszQTPBrSnTYoexMbQLfRspWTsXTUb
         xR2UEBrb5hqRi9x2O0/FiA1oFi+3sAl3F9LiT95pQEAW0nc6UIySdOuL1je4dnTDXF3o
         oigA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=9uy99y5TKZJggG1dvxT3XStGw93Gtk7IkvWznY+qP3s=;
        b=jlrUWzIEDK7LzSFWHSwnpLvb70IMyvssOdbXIixNUoYWD9UCxFwPAD2l/OPed7FDzj
         6jJHrogY2Kj1X5PQmb8z6zBeN0YgIaVdS3hqoX3AABRG6amMWlZZ790jn8mt+xbjSRK/
         t1UIUmq+MqFBsZcM42HzIv5DfDiNBfKw1yyDPKkCjQtwZkp4/dWxYcnE9CNZwO9NA1JQ
         D5I4QVemM8BkWTzdDCA2pt5G+7umNwIij1/0lXoeVLM7tuc75GMESwNONJdmay0YE1kn
         dwNgQqxWg+tVf8sF9MWBngeodc4ZHWED/t+HPRyLmbdZDYu/BlFy5dzwzZrDqT9hBOnt
         m2pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=K4gIhkwo;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id k18si620606ion.4.2020.09.20.21.52.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Sep 2020 21:52:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08L4qm3F104834;
	Sun, 20 Sep 2020 23:52:48 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08L4qmKx060489;
	Sun, 20 Sep 2020 23:52:48 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sun, 20
 Sep 2020 23:52:48 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sun, 20 Sep 2020 23:52:48 -0500
Received: from [10.250.232.147] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08L4qgFL030746;
	Sun, 20 Sep 2020 23:52:43 -0500
Subject: Re: [PATCH v5 14/17] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
To: Randy Dunlap <rdunlap@infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Jonathan Corbet <corbet@lwn.net>,
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
References: <20200918064227.1463-1-kishon@ti.com>
 <20200918064227.1463-15-kishon@ti.com>
 <93b651aa-23e5-9249-6b22-fef65806b007@infradead.org>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <c8b7fa2b-5586-3929-1e00-8473106935f9@ti.com>
Date: Mon, 21 Sep 2020 10:22:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <93b651aa-23e5-9249-6b22-fef65806b007@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=K4gIhkwo;       spf=pass
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

Hi Randy,

On 18/09/20 9:45 pm, Randy Dunlap wrote:
> On 9/17/20 11:42 PM, Kishon Vijay Abraham I wrote:
>> diff --git a/drivers/ntb/hw/epf/Kconfig b/drivers/ntb/hw/epf/Kconfig
>> new file mode 100644
>> index 000000000000..6197d1aab344
>> --- /dev/null
>> +++ b/drivers/ntb/hw/epf/Kconfig
>> @@ -0,0 +1,6 @@
>> +config NTB_EPF
>> +	tristate "Generic EPF Non-Transparent Bridge support"
>> +	depends on m
>> +	help
>> +	  This driver supports EPF NTB on configurable endpoint.
>> +	  If unsure, say N.
> 
> Hi,
> Why is this driver restricted to 'm' (loadable module)?
> I.e., it cannot be builtin.

I'm trying to keep all the host side PCI drivers corresponding to the
devices configured using endpoint function drivers as modules and also
not populate MODULE_DEVICE_TABLE() to prevent auto-loading.

The different endpoint function drivers (right now only pci-epf-test.c
and pci-epf-ntb.c) can use the same device ID and vendorID for
configuring the endpoint devices. So on the host side, it's possible an
un-intended PCI driver can be bound to the device. So in-order to give
users the flexibility of deciding the driver to be bound, I'm trying to
keep it as modules. (Some driver like NTB also uses class code
PCI_CLASS_MEMORY_RAM for binding a driver in addition to deviceID and
vendorID but it need not be the case for all the drivers.)

Thanks
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/c8b7fa2b-5586-3929-1e00-8473106935f9%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBQFRWT6QKGQE4M3HTAA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 478172B039C
	for <lists+linux-ntb@lfdr.de>; Thu, 12 Nov 2020 12:13:06 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id 9sf3686337pfn.5
        for <lists+linux-ntb@lfdr.de>; Thu, 12 Nov 2020 03:13:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605179585; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ew6d/BE5AoeypC4j43GZi3YZUYnbWMoRnTHQ6tqaZmqa1Xnj740Y0KU7TBgG8HJAmR
         rBP4M+dUeuY0AI0hBvTMB6V6KAOI1mz+uhIHlkdsk9iyoImCDEKfVzBuJmJBhuyjQq78
         oZE7rw6b2+zJ3lv68QHbE+IcPCiIyHCV/SzH5IMgKpDo0NCsZKoJ7kiHVCHOdDWeVMe6
         +g4h5zNAMAw7Slfq3IbbuHs0PGm9xqV32cWT0xOc6krRpRDs4rs8/7wLmxVANhTEdnTr
         7Rnah7pjMag/eNyFz+hqeYTAZwiRSatUESVXwuc8iv30nxFF7PEgnfmgxjHs0rHeOSjf
         qqzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=7o7cp5MuhDTRUWHsdA1XDH9/WFHTaqXTfpcxs7BaDa4=;
        b=GFnEeXGX+RxgTbL5deBWteAlftJh4edkI7jKcgO7vsT9nitjNAEVzJ79lZhZjZDr7J
         XMJ+XzoBh5DQmslgNB+4sQbdttrQtgsdkh3e3Vm7OdvcOZmh/qZ5agnZp7MP7OWjACzf
         iAs8jFonIiAE4aD0lHVFWBBtTk71efuF2Cv97LmhlN03/GRy/0iAlYgmJvHA7cdBVqrz
         q/CbdA4CaVbjTMguaXdblOXrMi4g3mF6IysxvulO2+CMuNTUbTLsmp7N8m7sAJs7xWTy
         AGXse2TACpXiBzjGzzbaLyEPIazaPpYAgYPWziavJMB12Jwj8gs6EAFvbX+hpKeJG5r1
         2rCQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=H6pXY2Sn;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=7o7cp5MuhDTRUWHsdA1XDH9/WFHTaqXTfpcxs7BaDa4=;
        b=CAQxPl+J+Br8we2ACzWAtHFL1lh0Yv7bOKhainG9kO3Tdth622ykYXntBSiXraty7G
         m4cahHIFTcwn+laTkhVodPoeEF6h8iCltBWuqRROOt5C8JrFfIVglt/7XK9RuBsybUUo
         Hh9xU8uPtqFNfyGDGQYX1ULGOhrlVfQTaa1k5ah2VpwUxK5XG0/SKkPL/Fk/d7EiCK3i
         jwTKdlBe5zk55Ayx04hbFKvf9hn2iMlUXvrKmGrnp4zDbJo7NcKfBUFFg/cv3/tBSsM3
         mmOKt9XVhAZTwschGV61mooVzWT/29fMBWanHXO0yOEDcy9vo0Lqgj83vkrJMDZd5xyS
         HpAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7o7cp5MuhDTRUWHsdA1XDH9/WFHTaqXTfpcxs7BaDa4=;
        b=iajpvt69590TTdMLsA+WMXxcWkmyQ42O6ESI5Hbi+Fl5I4I0n3IOd1iDP20Wvn64Nt
         r+9PqHq1ZqQf3kOdDlPSOvaQypjrsuPkLItAOfO6UKQfMwD5buAU5gfiuAs1R+Zlpp7g
         mKawWZ61MC9YLzxpM35rb1nHxUuHfBbl356tp7R3WIw2ONDC06JOKJi2zBJMtOBMJS6/
         in/bEwJBytPSDZCGJDYNIzZRjhp2CjzlDwVepr9THn8AzoJoN4AbYbJtS8HqiciE0k1+
         fQbl0AptugRrNiOTs4l8+Ra7g/prSnRwsDQfF6AGqAPpEHFCb22a7pt837bk2VlYV0Q8
         mAqQ==
X-Gm-Message-State: AOAM530jQAR0CNORw9sEOnYNeNyGDV3yOF7iyvenHqPviu7OmvdMfq+7
	SCZN+5oyBP0AZUqx85wa3ao=
X-Google-Smtp-Source: ABdhPJxCqYHwt3CoQ9jmpEjBm1E6GgCPPHeBgXMWdwBla+T+jiYqBBXe9VfCY06TChQzIYjzY/lM2Q==
X-Received: by 2002:a62:1887:0:b029:18c:234a:4640 with SMTP id 129-20020a6218870000b029018c234a4640mr17412559pfy.1.1605179584991;
        Thu, 12 Nov 2020 03:13:04 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:bd82:: with SMTP id z2ls1525596pjr.3.canary-gmail;
 Thu, 12 Nov 2020 03:13:04 -0800 (PST)
X-Received: by 2002:a17:90a:8992:: with SMTP id v18mr9545653pjn.192.1605179584510;
        Thu, 12 Nov 2020 03:13:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605179584; cv=none;
        d=google.com; s=arc-20160816;
        b=gsjFj6bTydlnDTzcY7u1v/XtFW/b8wQa2+OTZ+CQhMXZ2U7b8QCRHNVQLbLuQmy5eV
         PUDHPbuZkfqCHktnqDm7FmS0Uffu/gKAm6Bc/kWRxkN0YUv/x73SUWtVZnKfK8D149MG
         K45xEsIq1jsbixsarWVbbqO9/7ICetlrWUEgqoch1k9MLckiZ32pZKFxb3CrpNcMzTQK
         VHp3OE1ErMtxJQ9/bvIPXKXseVXtYFKIJ3kaHRKfvnaqmGMtBPPctx0EqwpYunk/H8Ej
         goXUgbU7WKSnsZHpuYqRtJpCaGQ6BFFySpIO255wDh8+q+mLupHfC4jFw8p22wnNbWHG
         mmFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=EFLylIoHv+6MexgkkHOndI5G3qy16unmmsW+jt8yB/w=;
        b=VtkA3vahfMePyRzQmjmjPwwIezP7GfWf+CzwKhrkbhtbMSV+0V0HULZmIaXE0BoBJl
         eNW5fGmlsPtSZOVkZ+U4fTm/dABAuIt8a56dmUCb8S9JFaAYQs1PQUJhwxbTgjN92itu
         wTmowZwhREPgovS3QQ4XwnCYBQmdQMuCcAOD3u2XmKATqgvq+rNHvJEI2OKeCD03gao6
         58xxGI0ECOmyDlWs+G5SMq10hzHylOtxpQQf65T0o0L780wJdBP8CuiN7GNENmPxHh2W
         fmMpg3d/nZyy/NLur93OnBZ9Eksp7ZNMFJcLR/3OFi0o3jAx4dJM/wZD+6l175wtQh42
         +tDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=H6pXY2Sn;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id 38si299553pgq.3.2020.11.12.03.13.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 03:13:04 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ACBCtoK009036;
	Thu, 12 Nov 2020 05:12:55 -0600
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ACBCtZF108612
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 12 Nov 2020 05:12:55 -0600
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 12
 Nov 2020 05:12:55 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 12 Nov 2020 05:12:55 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ACBCnIs005765;
	Thu, 12 Nov 2020 05:12:50 -0600
Subject: Re: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
To: Sherry Sun <sherry.sun@nxp.com>, Arnd Bergmann <arnd@kernel.org>
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
 <30c8f7a1-baa5-1eb4-d2c2-9a13be896f0f@ti.com>
 <CAK8P3a38vBXbAWE09H+TSoZUTkFdYDcQmXX97foT4qXQc8t5ZQ@mail.gmail.com>
 <5a9115c8-322e-ffd4-6274-ae98c375b21d@ti.com>
 <VI1PR04MB496067EB79873EEC9329B9B992E80@VI1PR04MB4960.eurprd04.prod.outlook.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <c3e7cfaa-fda9-46f8-ec9a-b26818bef7b6@ti.com>
Date: Thu, 12 Nov 2020 16:42:43 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB496067EB79873EEC9329B9B992E80@VI1PR04MB4960.eurprd04.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=H6pXY2Sn;       spf=pass
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

On 11/11/20 8:19 am, Sherry Sun wrote:
> Hi Kishon,
> 
>> Subject: Re: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-
>> Transparent Bridge
>>
>> Hi Sherry, Arnd,
>>
>> On 10/11/20 8:29 pm, Arnd Bergmann wrote:
>>> On Tue, Nov 10, 2020 at 3:20 PM Kishon Vijay Abraham I <kishon@ti.com>
>> wrote:
>>>> On 10/11/20 7:55 am, Sherry Sun wrote:
>>>
>>>>> But for VOP, only two boards are needed(one board as host and one
>>>>> board as card) to realize the communication between the two systems,
>> so my question is what are the advantages of using NTB?
>>>>
>>>> NTB is a bridge that facilitates communication between two different
>>>> systems. So it by itself will not be source or sink of any data
>>>> unlike a normal EP to RP system (or the VOP) which will be source or sink
>> of data.
>>>>
>>>>> Because I think the architecture of NTB seems more complicated. Many
>> thanks!
>>>>
>>>> yeah, I think it enables a different use case all together. Consider
>>>> you have two x86 HOST PCs (having RP) and they have to be communicate
>>>> using PCIe. NTB can be used in such cases for the two x86 PCs to
>>>> communicate with each other over PCIe, which wouldn't be possible
>> without NTB.
>>>
>>> I think for VOP, we should have an abstraction that can work on either
>>> NTB or directly on the endpoint framework but provide an interface
>>> that then lets you create logical devices the same way.
>>>
>>> Doing VOP based on NTB plus the new NTB_EPF driver would also work and
>>> just move the abstraction somewhere else, but I guess it would
>>> complicate setting it up for those users that only care about the
>>> simpler endpoint case.
>>
>> I'm not sure if you've got a chance to look at [1], where I added support for
>> RP<->EP system both running Linux, with EP configured using Linux EP
>> framework (as well as HOST ports connected to NTB switch, patches 20 and
>> 21, that uses the Linux NTB framework) to communicate using virtio over
>> PCIe.
>>
> 
> I saw your patches at [1], here you take a rpmsg as an example to communicate between
> two SoCs using PCIe RC<->EP and HOST1-NTB-HOST2 for different usercases.
> The VOP code works under the PCIe RC<->EP framework, which means that we can also
> make VOP works under the Linux NTB framework, just like the rpmsg way you did here, right?

Does VOP really work with EP framework? At-least whatever is in upstream
doesn't seem to indicate so.

The NTB framework lets one host with RP port to communicate with another
host with RP port.

The EP Framework lets one device with EP port to communicate with a host
with RP port.

Rest of the trick should be how you tie them together.

PCIe framework creates "pci_device" for each of the devices it
enumerates. NTB framework works on this pci_device to communicate with
the remote host using PCIe bridge. The remote host will use NTB
framework as well.

So depends on what interfaces VOP device provides you can use either NTB
framework or EP framework. If it's going to connect two different
devices in turn creating pci_device on each of the systems, then you can
use NTB framework.

Regards
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/c3e7cfaa-fda9-46f8-ec9a-b26818bef7b6%40ti.com.

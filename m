Return-Path: <linux-ntb+bncBCOOP4VF5IDRBAHKVL6QKGQETLALE3I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 110D22ADAAA
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Nov 2020 16:42:58 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id t77sf2354549vkt.18
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Nov 2020 07:42:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605022977; cv=pass;
        d=google.com; s=arc-20160816;
        b=RtuJ0m200QPjeMAJD5STnTzCvEgrFGWo2RVr8T7w/fkDCNhK2RkGlShXbdDXV1fVuW
         lQWiihobiKR73mBGkl4T0p9xN7yfCYzP7cvoQYAAgW3shpSsP4Yc2h9VGr6z710occOT
         NkcX+Y7Atu2BKy12ROipMYNSLhwilXucCUmqRGNRKBsc5uoV0fY/OQddjf55HcIZ4GSz
         hsOQjnLB96UjdZkRLoYHMrOs5p3f+pIEyDyozY0KPfg3Ve2JEnG8aRF1PD45Gk2AATBZ
         dGY/hpQMolFExOZ+4/7W/3s2mbEqAcWH/s0o3AIl3EOTkgH5rCWHVa73CeyC+Pnn/ahj
         ZYsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=i2nNDS3RoD4uo5QiCrhn473Fr3zRipAXnoLC2IYemv8=;
        b=KH4kSO4KBDrjU6PunajatbDkD/hyfunmQmZoN3W8XNT3Nw7coziUdFJhFJxjg5Qhpy
         62IzuNjHMyKUn1SynuVFCZS/xZickVPQCAD8I0kgl6GISCUWN5Ly/fhuE1TNZ2Lyn5Po
         j1ns76LAuZRYvZRZMOKw5mFPe6ZlNznbm7BfW9X55zxF81axzv0RpZ7HXDrBM+7KvJ+4
         Zk1nsB8vbGV+UMUaJUdQWeB6OXT36cdSpqXWHyw2yAes/86Ov8DZnQi6KAXrRNwG6ji9
         KmRQFQNxvCqJVykepUIEG4SaWw/nLzc9rMo7hWKbJChIlOs3FngsQL4Ln/SkTCbkQ8xq
         dEJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=eEazoQaT;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=i2nNDS3RoD4uo5QiCrhn473Fr3zRipAXnoLC2IYemv8=;
        b=IWl0lZvD4VTsQGZsTCSTuuvex3FqdXDunxvhm78Fpvzs9XLkYS3xMkkP0636a9K5ES
         kWlvCZC8ZNn4eufNWDSCKVX5Ucb1rD5o6lJ0EHIul3dR8AivQYUGV2xdcL8PQYgJDXXy
         ABq/2DgZiEeuX+SOJiA/G3+xAdYVnvO8diAG3BBB9c3AXeH9bEQUtnoTmZ1n4rHwQ/XH
         4hOqPqND1pGZ/9kZ4E2qYX+1xDfkd/5BJmO7Qyk6yJKVhJojT1gTFEmXrgtTbFiKl+1g
         xPlxfYmV1jQequnBQ/BT+aK4jWdYVEiB70OGRN/saUooiJuqKNA2ujSkN/Of7/gb+0D3
         rJLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=i2nNDS3RoD4uo5QiCrhn473Fr3zRipAXnoLC2IYemv8=;
        b=cwBbEDORC1HVg49w8slYcjZPEhLQD0vJdPF9LFqUeNVvPoBNg15mLpseN5DtlYij34
         YoqEvi4FFAnJ8m0hcBF9ekNheuLl49+4y53Hq8qf1W9buLIUhMBKcIG+1vCG+XC8PbhH
         pHtvySUb5mCtmBnVmMLok+ZPAVOGkdUxIM0tPWwNmjLGpYVK9Kdfhqsm3tLVZnSQnvZd
         4/tWb1eye95ZeUSakuo3EVTszl/Yi9+tNh43AUwRsikBY4n0F8i3ay9pDU5tkzbfHEVt
         dOBlkeJJr/IucC4pBbF68AsuzZ56v9r1CLFvDG3tGxX7T8QMB1vkUM4YGitryCb/rkJZ
         UOKg==
X-Gm-Message-State: AOAM533pM/NkDS3hyvjQ5IAr0xcHqVcCQn+xnVkMIcn900qBErXCizPc
	Swjbe8U7d1z2Vxf4mzrdWPk=
X-Google-Smtp-Source: ABdhPJz6joUG4mxS94UjEYAnOYT8Alc2B+iq9P26msM0c+cubavi8eFLX7WXgdxs3dqUglF+v6SO+w==
X-Received: by 2002:a1f:9303:: with SMTP id v3mr10901130vkd.3.1605022976966;
        Tue, 10 Nov 2020 07:42:56 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:ed19:: with SMTP id l25ls1495877vsp.2.gmail; Tue, 10 Nov
 2020 07:42:56 -0800 (PST)
X-Received: by 2002:a67:b347:: with SMTP id b7mr12427144vsm.15.1605022976351;
        Tue, 10 Nov 2020 07:42:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605022976; cv=none;
        d=google.com; s=arc-20160816;
        b=w5bsIVwThHC+bc/UNlXVcQsKoggfgUHt7R/U9xyOum2tgR2QNrrxncidNOFmx4AJji
         cpuu79xq5xOP367TyXu5zwGhe+wefs8iO5YCz28LmFKtG7DLm3uhy/3Htp2WhcKa3LBv
         JT/fK3s/+3MPtFx/On+u2J9/qLSNGuLGNaG4sfWeh9NnRRDoYYVxWSRZqna+AWJh7+yC
         hIj4s9as9gAZkqLblYhirHDnRs0t3SbgJcJk5lQBvdpCgss2ZmuZfgCWRYj4vgiHpdkc
         /2ZNmLytEwU1+L3tWS9H5ZP2nBMjzqf+6vtdiBsXld36+go98aW8jZhwfQgVsDEfNG1e
         FVfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kZ6NUVS0wH3f6crDKEWytDIJj/TB2GdUpTaec0L/68E=;
        b=m41Ec7fUocXftqZqiIkY1Y+5TmtbcR83+fLFcKPWtsNRdTgsPoYsKpflaSMGxg/NyR
         myhlWjG1zm7bWeqyZvAmFgEzX7NILPgm1HHqzEb7DJNTvWeGsWtME8NGrMz4NTFpnkiE
         dEbb7ftM5RkgpcMYEZfaJN8wHHJbsMXlykLVW6K3EzmRNUurdjHWt5vSxfd+Td0Bdaq+
         t2vw59V0PlXhjrw4v8wk92SLI6tMJ+Pm5eLqAoVOQWr9Cw4mxHGYrtxDa6aKfi+0t2pT
         /U+lK8ElzHwmfUhR5E8o3fKtZYlTvDPwWDjeeKRhyf53jAgpv71kSzlP0usaQ34MgKDM
         ZLvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=eEazoQaT;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id y17si594166vko.2.2020.11.10.07.42.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 07:42:56 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AAFgj1k082798;
	Tue, 10 Nov 2020 09:42:45 -0600
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AAFgjfg031823
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 10 Nov 2020 09:42:45 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 10
 Nov 2020 09:42:45 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 10 Nov 2020 09:42:44 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AAFgd1M009286;
	Tue, 10 Nov 2020 09:42:40 -0600
Subject: Re: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
To: Arnd Bergmann <arnd@kernel.org>
CC: Sherry Sun <sherry.sun@nxp.com>,
        "bhelgaas@google.com"
	<bhelgaas@google.com>,
        Jonathan Corbet <corbet@lwn.net>,
        "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
        "arnd@arndb.de"
	<arnd@arndb.de>,
        "jdmason@kudzu.us" <jdmason@kudzu.us>,
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
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <5a9115c8-322e-ffd4-6274-ae98c375b21d@ti.com>
Date: Tue, 10 Nov 2020 21:12:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a38vBXbAWE09H+TSoZUTkFdYDcQmXX97foT4qXQc8t5ZQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=eEazoQaT;       spf=pass
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

Hi Sherry, Arnd,

On 10/11/20 8:29 pm, Arnd Bergmann wrote:
> On Tue, Nov 10, 2020 at 3:20 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>> On 10/11/20 7:55 am, Sherry Sun wrote:
> 
>>> But for VOP, only two boards are needed(one board as host and one board as card) to realize the
>>> communication between the two systems, so my question is what are the advantages of using NTB?
>>
>> NTB is a bridge that facilitates communication between two different
>> systems. So it by itself will not be source or sink of any data unlike a
>> normal EP to RP system (or the VOP) which will be source or sink of data.
>>
>>> Because I think the architecture of NTB seems more complicated. Many thanks!
>>
>> yeah, I think it enables a different use case all together. Consider you
>> have two x86 HOST PCs (having RP) and they have to be communicate using
>> PCIe. NTB can be used in such cases for the two x86 PCs to communicate
>> with each other over PCIe, which wouldn't be possible without NTB.
> 
> I think for VOP, we should have an abstraction that can work on either NTB
> or directly on the endpoint framework but provide an interface that then
> lets you create logical devices the same way.
> 
> Doing VOP based on NTB plus the new NTB_EPF driver would also
> work and just move the abstraction somewhere else, but I guess it
> would complicate setting it up for those users that only care about the
> simpler endpoint case.

I'm not sure if you've got a chance to look at [1], where I added
support for RP<->EP system both running Linux, with EP configured using
Linux EP framework (as well as HOST ports connected to NTB switch,
patches 20 and 21, that uses the Linux NTB framework) to communicate
using virtio over PCIe.

The cover-letter [1] shows a picture of the two use cases supported in
that series.

[1] -> http://lore.kernel.org/r/20200702082143.25259-1-kishon@ti.com

Thank You,
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/5a9115c8-322e-ffd4-6274-ae98c375b21d%40ti.com.

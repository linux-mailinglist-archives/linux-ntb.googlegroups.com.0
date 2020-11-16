Return-Path: <linux-ntb+bncBCOOP4VF5IDRBWMXZD6QKGQE7ANUPFI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id A088C2B3C5C
	for <lists+linux-ntb@lfdr.de>; Mon, 16 Nov 2020 06:19:22 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id t12sf10811840pga.5
        for <lists+linux-ntb@lfdr.de>; Sun, 15 Nov 2020 21:19:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605503961; cv=pass;
        d=google.com; s=arc-20160816;
        b=jCJMHzpnHG3bxkttqsLkezLwxXj51j/nZLjdeZjbEsvnYAatSdIdSKbJPbhwF/IjWm
         y/M0QDSrqrY+8she2/iQhyQbArgCSZ1RyOjkiKGcbrdXs3Lnk21vkaDW6faN4vLoKooB
         guyjke/cb6zGiLPVoqDRUP7W/H3SE3Z7Ay+wfg5nsoSFEU3Km93NEhlMOSIEtsA9eaPX
         xanKifvmFIK1VIaro4QSSCyao4JpDCjZNN5F8gJU1RVIeGuDgmWLRXoFNaxTINJvT21u
         r8rf+OFUkwsOaogbYBFlpmHj9Tj5xmi0/x2Kcb3Btmdrvqk3lUHrw9XjDxHnmoBJnM+k
         QlRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=KhizBKq8CtFe22day7eTbzFiUHaet2PZ6j+mt2mqBxk=;
        b=jNjNDKpMpbONctW/RBuspftHsY4kJLPb61TEp5stvbZiCc8pLF5gPFkeXDo3YTMjJl
         H5ygHCJTstvK76DJCr17jq8WQJrsFj6XiGJa91wqxco7XCz2Rzf7n6ErLEg2g09zA+g3
         1vj39QWwpRAnrrhc9Dhxtr8S+CwOgDvEKltGm1wjeJoi6gQyODGUJ/tEyQ076OJECWEX
         M4zZc6gPzJAotydgG2FwfFgmMikiLhgaDTab17dcigq8sW4m+MiN6zes18CyVRrgZaLH
         RphdUTcEfR3ghP+Oz1zRuPureoDMPH9cxWnyqTdn/tA6RK5i6OjnEdGZ4ZCk5rG0vx1u
         egzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=GYfchMo9;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KhizBKq8CtFe22day7eTbzFiUHaet2PZ6j+mt2mqBxk=;
        b=mtngJ3eW1LlA95QmmqO4ZR+t2HixLegxljRQX4naFfSjJp1UrTEOlvv6E+Onc2fWTY
         Rb06dpWor2YtAiM7iPiYFj6up/YJ5w3VlOpc/sPNDIND09vC5FhV9eW7VIs7m7AizBol
         eKnFhetj/6tGIdzK45nW/Wo5ZzELLISGUueAIIsw4PMfQHmvRJ+MTUhSr+FXotoDNTtt
         bZl2fig6KRFQa46JENIy2BWlqzILJeRyW5jAA3B6H2vKO38wG86cCfXOYDFwMpRnzanj
         keFSXDNEX3ZEBE/NtILyRMJeaM75+UQ9oHcBuaskHNf+PA3Xf7qb03z98hnVtALD4uWs
         pHrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KhizBKq8CtFe22day7eTbzFiUHaet2PZ6j+mt2mqBxk=;
        b=gjDA9BUQQIUF8DSy9JPovyJS3t0DDY7td3d7R6a8QUK867Tdxm+6d03dM9SQUUuqP4
         xygLSzjSVk4pyu5MpAKyvolDch+peWcWB0FpapJGBlbVt4TuIW+K1/Xp6s5AQuRkoMn+
         MoKmirVDbZe/7nW3G8g51uS8Bh+O107B9VTC0iCdSKfKsk09ohqKNoV/IfhyGAItZAgf
         OzqxmhJ6Tu/hFSm8WJKy47o8JdQyYaPKVSSAdh5dNCUGs4/QfLk+Znp3G5VVk/4rJSSZ
         zTexVzHy1Gre7VjtKRWqMWP068YrQey/cRJM0aPX5yjGRMZfSB7qkpczGlM3+1gBIEcx
         Un8A==
X-Gm-Message-State: AOAM533KlMIga1s4VU/9tt8Vtgp6rSKted/ONJrLFK8zmBpqagUuMLy4
	O8d24LWae7rscwa8De19MUM=
X-Google-Smtp-Source: ABdhPJzc5YH4uhMvHKIMgEbVqoaIkHqaV1b5RIHNW2PPt4vOI6YIPQxZIvm2s80rYCV5w9EJZ699jQ==
X-Received: by 2002:a17:90a:bc83:: with SMTP id x3mr14069663pjr.90.1605503961251;
        Sun, 15 Nov 2020 21:19:21 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:9205:: with SMTP id o5ls4617572pfd.7.gmail; Sun, 15 Nov
 2020 21:19:20 -0800 (PST)
X-Received: by 2002:a63:d213:: with SMTP id a19mr154804pgg.406.1605503960718;
        Sun, 15 Nov 2020 21:19:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605503960; cv=none;
        d=google.com; s=arc-20160816;
        b=VNeOP0uVOqIo1XyeKe/LKRasHyPEwKUTaYwy9LoqRx5hhUyNjb1j2ilmi2RYsb1QKB
         Xto8e31E0QSuB3HVuBqoiv/A+mKj/OspiZ0DVuPbozNM6aPsUU1T6ojGs4waI9tdthP6
         nz3+mIOV4RCCt1j7Nu3Vo5UYU+1KvYcRil9Ug1x+9utTxxfXXBTuXQUvNAaaFXuY/xxH
         vgh5Z6aAxxc5ocXFko/NQanojCGaJDN/ef1qlao0gTOTFSxE9yNry+OXR39YmjZYaXi8
         etAfqQPVKh14eOxAeuajB2XPpGWVp76AOi/iPWOsGXn6dGbyYL5QI8BBXmPYb3fUI+ig
         wP8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=3oB89CbTYHpl2o9ZDiCY/Ic+iLDClTkUpWMbGhciyBQ=;
        b=h1CB9KtkZqQeCnbi/VqEGM7nO3xeRY2tAZB5SQcHsLOyiLN8IqOJ9sG3aqOjzPgksy
         bASSL2Q7gGk7wV33dynMC7cjXhTNvbBa67mBiTDkIxh/fzcrlit8c9CzjiUGBMIMwIeS
         g5l5m2pd1skJDMLAoT6Kd1RbgBMGzSTGuu2Hw7NRaBZQuHs912vBfpHDcl826QoON3Jw
         q4gvTWJQhEMgPZ0+aus/rYn3YxN57UxuUexoWJhKIRtsMgrD2DDPk/wXOQ5KBgbNIs8c
         F/lVDI7wFstUAbd2hBhA2gMjLJzIlESCaoxnmskrTYCyC+gkVgGH+/+agW8xbMMSIKHa
         MhOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=GYfchMo9;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id i5si1752333pjz.1.2020.11.15.21.19.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Nov 2020 21:19:20 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0AG5JCok040603;
	Sun, 15 Nov 2020 23:19:12 -0600
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0AG5JB5Y049190
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 15 Nov 2020 23:19:12 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sun, 15
 Nov 2020 23:19:11 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sun, 15 Nov 2020 23:19:11 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0AG5J6v5020556;
	Sun, 15 Nov 2020 23:19:07 -0600
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
 <5a9115c8-322e-ffd4-6274-ae98c375b21d@ti.com>
 <CAK8P3a33XSvenqBhuQpGmtLbYydyzY2OQh73150TJtpzW24DTw@mail.gmail.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <c720de5b-bf76-162f-24cb-07f6fe670bd2@ti.com>
Date: Mon, 16 Nov 2020 10:49:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a33XSvenqBhuQpGmtLbYydyzY2OQh73150TJtpzW24DTw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=GYfchMo9;       spf=pass
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

Hi Arnd,

On 12/11/20 6:54 pm, Arnd Bergmann wrote:
> On Tue, Nov 10, 2020 at 4:42 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>> On 10/11/20 8:29 pm, Arnd Bergmann wrote:
>>> On Tue, Nov 10, 2020 at 3:20 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>>> On 10/11/20 7:55 am, Sherry Sun wrote:
>>>
>>>>> But for VOP, only two boards are needed(one board as host and one board as card) to realize the
>>>>> communication between the two systems, so my question is what are the advantages of using NTB?
>>>>
>>>> NTB is a bridge that facilitates communication between two different
>>>> systems. So it by itself will not be source or sink of any data unlike a
>>>> normal EP to RP system (or the VOP) which will be source or sink of data.
>>>>
>>>>> Because I think the architecture of NTB seems more complicated. Many thanks!
>>>>
>>>> yeah, I think it enables a different use case all together. Consider you
>>>> have two x86 HOST PCs (having RP) and they have to be communicate using
>>>> PCIe. NTB can be used in such cases for the two x86 PCs to communicate
>>>> with each other over PCIe, which wouldn't be possible without NTB.
>>>
>>> I think for VOP, we should have an abstraction that can work on either NTB
>>> or directly on the endpoint framework but provide an interface that then
>>> lets you create logical devices the same way.
>>>
>>> Doing VOP based on NTB plus the new NTB_EPF driver would also
>>> work and just move the abstraction somewhere else, but I guess it
>>> would complicate setting it up for those users that only care about the
>>> simpler endpoint case.
>>
>> I'm not sure if you've got a chance to look at [1], where I added
>> support for RP<->EP system both running Linux, with EP configured using
>> Linux EP framework (as well as HOST ports connected to NTB switch,
>> patches 20 and 21, that uses the Linux NTB framework) to communicate
>> using virtio over PCIe.
>>
>> The cover-letter [1] shows a picture of the two use cases supported in
>> that series.
>>
>> [1] -> http://lore.kernel.org/r/20200702082143.25259-1-kishon@ti.com
> 
> No, I missed, that, thanks for pointing me to it!
> 
> This looks very  promising indeed, I need to read up on the whole
> discussion there. I also see your slides at [1]  that help do explain some
> of it. I have one fundamental question that I can't figure out from
> the description, maybe you can help me here:
> 
> How is the configuration managed, taking the EP case as an
> example? Your UseCase1 example sounds like the system that owns
> the EP hardware is the one that turns the EP into a vhost device,
> and creates a vhost-rpmsg device on top, while the RC side would
> probe the pci-vhost and then detect a virtio-rpmsg device to talk to.

That's correct. Slide no 9 in [1] should give the layering details.

> Can it also do the opposite, so you end up with e.g. a virtio-net
> device on the EP side and vhost-net on the RC?

Unfortunately no. Again referring slide 9 in [1], we only have
vhost-pci-epf on the EP side which only creates a "vhost_dev" to deal
with vhost side of things. For doing the opposite, we'd need to create
virtio-pci-epf for EP side that interacts with core virtio (and also the
corresponding vhost back end on PCI host).

Thanks
Kishon

> 
>      Arnd
> 
> [1] https://linuxplumbersconf.org/event/7/contributions/849/attachments/642/1175/Virtio_for_PCIe_RC_EP_NTB.pdf
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/c720de5b-bf76-162f-24cb-07f6fe670bd2%40ti.com.

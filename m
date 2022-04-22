Return-Path: <linux-ntb+bncBCOOP4VF5IDRBFENROJQMGQEIV2WVUA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yw1-x1138.google.com (mail-yw1-x1138.google.com [IPv6:2607:f8b0:4864:20::1138])
	by mail.lfdr.de (Postfix) with ESMTPS id EC55450BB6D
	for <lists+linux-ntb@lfdr.de>; Fri, 22 Apr 2022 17:15:33 +0200 (CEST)
Received: by mail-yw1-x1138.google.com with SMTP id 00721157ae682-2f4e17a5809sf32105847b3.2
        for <lists+linux-ntb@lfdr.de>; Fri, 22 Apr 2022 08:15:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1650640533; cv=pass;
        d=google.com; s=arc-20160816;
        b=vCfbb0owc3fECU+8ZLL1umoD0x/+jfig3Mq0nG2Ah8CG3xsrXAN/6tCXJ3O0x8mHD7
         KJs7bmNI7neqVnODsIjCemOpAqrhlwMykaazw7S6fSl4WsAqGLl89WiH/MnDl+tGzPRJ
         XvdbM8k5gsrxVxBTxY7exFwpzovv+YHgymQ8/7W3JD/34PfNNzpNgOE4O3I9UJ54SFGR
         KpOr0ULasFIC26V5MM0vy6z9OEgltETU6oNC+AAlLMJUQYWvsFdBncmN5Z5KEkpyWXxN
         Xyqs5bpfwjwGW6MZOWT1RQrh1DHh6Ud6ehx9fFm3I9SEqXurjWrdWConAfheD/Dtvq52
         wzbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=BszyjSlOkIUE09XsFS+tVg2m7jsNndGpvk2daPzuOwU=;
        b=lfFtYpReRDljBJBnlueCbyPvI8Ch+ld1VH8WBJxDch33aNRG3O2BEwASzdcEIwjb01
         z5P2d8MB1BXxjWLQqJJRjF4IlefdxHLI5BE0N6Y7EzxA62oz71EdAzMLq9rfBM5ts0pn
         U/WGb/1jeHtDE8YP21Cf8cCAZmvOFbCY37qpA3+FCMgpfnT3ruFB4VJ3pdOTVfXYYzDw
         pwEMz8aE88FdgXT1V2pDrz0f57IOS3cLywgrggMhaRBrJIN5xDb/xKtsiK1FD6jF4i8O
         YynMo6ArU6s31cDrKjJ6iZHeWGLMo9yiq0X/qgQu9YVib+kOeXGg+BcyOkfvttOoAzs6
         VMaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=P+ez63yJ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BszyjSlOkIUE09XsFS+tVg2m7jsNndGpvk2daPzuOwU=;
        b=L0vtahZD/vOhSVXLg4aC1eBFpuhlwDi9aUbVNiJsXQgCk6fxuUHo7WVgo+P795Tjv/
         I814EAo6QI95NqU1f+UBkH6lWJwhofZCMDNm6tTCapDyFWRjZIuqQtv6yZ5wdrqn2++q
         ZgVJ/y/NBSZA0wCBkPi86qYxe7mV4awJ26nFKi/lW0k0inp0MndUnYy/Z4IwLwxZDSD6
         xokJ6euh0zEdSLIRx5+35XcW4v4o7im/YZDjq551nuJZuXcngO99D4DErH0V9oT1pwhm
         7TAQD0wT3yb39077eSGamRD33pinWQoZQYQst+Wqiv/qCHq9TgGuBA43K904FzEM+9xu
         arGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BszyjSlOkIUE09XsFS+tVg2m7jsNndGpvk2daPzuOwU=;
        b=OcugUMTSM2dw+6dNy4qV6Ou74G5hePlgQu8LY4Es+13o32M2rbyhpUionFvyL8t7PL
         epCLeqNHvzlDmQl5ME8tozrQXQ+QJbav9VYbb5Ecxpd9ERYwLJPKUv7r4fuplAhWllcT
         mShNLzSfJ0pL7pmeGNO2dZBQOo0hrHLlL3NZZWFrM3OZHzgn5kJ2tGhL7s59qBciVtt1
         cEslP+WQHeXjq7dSakgNgtWKoe7NEiCVirY+0HCepP0NDXBlcHyB9xfilOs3AZONG4yF
         Um92X6uIiUb/ZRc9BitvGJeZY8Tb+/VBAVWuTtZ/eQu/A1ji0Dw2qJosv2MFfccOIr/j
         CLww==
X-Gm-Message-State: AOAM530sdGWpaey2XG7/u8yEsvDr2Qk67Z9rRm/lGZW/h7UtvPS/WbCy
	qjGXfe2a2UzH0wDewxd9ksI=
X-Google-Smtp-Source: ABdhPJyjSFue7bDL9OyWioLnmlakzEELpK5pZ2yy49Nep5eailbzTxpAsH7E9d4TxxDLLpkCGekUSQ==
X-Received: by 2002:a81:6dc7:0:b0:2f1:c5bf:8f64 with SMTP id i190-20020a816dc7000000b002f1c5bf8f64mr5354536ywc.120.1650640532753;
        Fri, 22 Apr 2022 08:15:32 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a81:e06:0:b0:2f6:27c5:2fe3 with SMTP id 6-20020a810e06000000b002f627c52fe3ls1206398ywo.3.gmail;
 Fri, 22 Apr 2022 08:15:32 -0700 (PDT)
X-Received: by 2002:a0d:ca90:0:b0:2f4:d906:291c with SMTP id m138-20020a0dca90000000b002f4d906291cmr5356146ywd.246.1650640532116;
        Fri, 22 Apr 2022 08:15:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1650640532; cv=none;
        d=google.com; s=arc-20160816;
        b=uFvrPyy/4fNi2fPPfV7m4zN/tcpdXATXmjoeqNxvSi/ctlrU4FyiWXdHLDZtHtbR18
         srSrmTZEuDYkzVQXvKxAS9WphWmUB/Wcrk5F442DClOarJlaaMcihY9KqU6VmXRLWQfz
         CqQ/P+lAhqikaOq9MzuA/g55af1kTNBZkCWRhwuqCtCFPC6Z7jJl4Dm007jSD4lhPyOe
         gg+o7s5kySG44y5pxOOJXoe2G3z9PmmerkR49ju/jBDsADT+VwASeCpWGhOCu5oF5zNT
         pON+4OuoV1LrQNyA0km5gdreMCcTpUVGJtXJxPzmKr5SdgKJRM1LGs6vhr3P7qiBbKSl
         +dgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=vqjfVLIyTTSMKeHeuYKKyba+5URBr8k2MKFvy+5Pj+Q=;
        b=jOvXF0aWQ89xirShDORQIwTNkTV0Bt9JPnQXvI7oUl/U+9VEzYTCHhZiFWOYEaF1zp
         ng9ubLXwHguIr7t0/VDPKmTW1znCsSppodiMpSm6rd614bM6JMbLyOsvWBXf/9Iz+NuF
         91Q2/5fCMjnCjB36/+VTzP60hZtODp1ux5WzS3moiaq0cRGCgDaRoDMvXGROtLSNsxvh
         wwmdhMB3z9Z8PU81MiJVnsWTjPpNR8hsqqhbuqahTCibPEM2hFxy11okI/e5hTWW3UsQ
         ZWakIC3TOk+Lc+fnRtElVvDFdqeu4bvHB/25b8d4WychWDr7w/LO/2wLEzjhD+b9KLzd
         Nelw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=P+ez63yJ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id b133-20020a81348b000000b002f4e5561feesi472601ywa.2.2022.04.22.08.15.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Apr 2022 08:15:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 23MFFLBj001557;
	Fri, 22 Apr 2022 10:15:21 -0500
Received: from DFLE113.ent.ti.com (dfle113.ent.ti.com [10.64.6.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 23MFFLT3087116
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 22 Apr 2022 10:15:21 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Fri, 22
 Apr 2022 10:15:21 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Fri, 22 Apr 2022 10:15:21 -0500
Received: from [10.250.233.93] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 23MFFG5a007959;
	Fri, 22 Apr 2022 10:15:17 -0500
Subject: Re: [PATCH V2 0/4] NTB function for PCIe RC to EP connection
To: Zhi Li <lznuaa@gmail.com>
CC: Frank Li <Frank.Li@nxp.com>, Bjorn Helgaas <helgaas@kernel.org>,
        <lorenzo.pieralisi@arm.com>, <kw@linux.com>,
        Jingoo Han
	<jingoohan1@gmail.com>, <gustavo.pimentel@synopsys.com>,
        <hongxing.zhu@nxp.com>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        <linux-ntb@googlegroups.com>, <linux-pci@vger.kernel.org>
References: <20220222162355.32369-1-Frank.Li@nxp.com>
 <fa2ab3cf-1508-bbeb-47af-8b2d47904b20@ti.com>
 <CAHrpEqT2zwWiiiTUDAu9JNPXmzP1zELF7YDERWjdOohGMFRBnA@mail.gmail.com>
 <CAHrpEqSceNNQNAzCwbfiJc2Zk9fYCo5KqKmLZqHAG-7teSqF0Q@mail.gmail.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <0407f63c-b422-bcfa-999a-5ef31a2afedf@ti.com>
Date: Fri, 22 Apr 2022 20:45:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAHrpEqSceNNQNAzCwbfiJc2Zk9fYCo5KqKmLZqHAG-7teSqF0Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=P+ez63yJ;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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

Hi Frank,

On 21/04/22 1:52 am, Zhi Li wrote:
> On Tue, Apr 5, 2022 at 10:35 AM Zhi Li <lznuaa@gmail.com> wrote:
>>
>> On Tue, Apr 5, 2022 at 5:34 AM Kishon Vijay Abraham I <kishon@ti.com> wr=
ote:
>>>
>>> Hi Frank Li,
>>>
>>> On 22/02/22 9:53 pm, Frank Li wrote:
>>>> This implement NTB function for PCIe EP to RC connections.
>>>> The existed ntb epf need two PCI EPs and two PCI Host.
>>>
>>> As I had earlier mentioned in [1], IMHO ideal solution would be build o=
n virtio
>>> layer instead of trying to build on NTB layer (which is specific to RC<=
->RC
>>> communication).
>>>
>>> Are there any specific reasons for not taking that path?
>>
>> 1. EP side work as vHOST mode.  vHost suppose access all memory of virtu=
al io.
>> But there are only map windows on the EP side to access RC side
>> memory. You have to move
>> map windows for each access.  It is quite low efficiency.

I'm not sure I quite get this. EP HW has limited outbound memory to access =
RC
memory irrespective of how we implement it. This is not a SW framework
limitation AFAICS.
>>
>> 2. So far as I know, virtio is still not DMA yet.  CPU access PCI
>> can't generate longer PCI TLP,
>> So the speed is quite slow.  NTB already has DMA support.  If you use
>> system level DMA,
>> no change is needed at NTB level.  If we want to use a PCI controller
>> embedded DMA,  some small
>> changes need if based on my other Designware PCI eDMA patches, which
>> are under review.

Adding dmaengine API to do memcopy should be simple to add in vhost/virtio
interface.
>>
>> 3. All the major data transfer of NTB is using write.  Because TLP
>> write needn't wait for complete,  write
>> performance is better than reading.  On our platform,  write
>> performance is about 10% better than  read.
>>
>> Frank
>=20
> Any Comments or rejection? @Kishon Vijay Abraham I

I'd strongly recommend going with virtio/vhost based approach and standardi=
zing
it IMO.

Thanks,
Kishon

>=20
> best regards
> Frank Li
>=20
>>
>>>
>>> Thanks,
>>> Kishon
>>>
>>> [1] -> https://lore.kernel.org/r/459745d1-9fe7-e792-3532-33ee9552bc4d@t=
i.com
>>>>
>>>> This just need EP to RC connections.
>>>>
>>>>     =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90         =E2=94=
=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
>>>>     =E2=94=82            =E2=94=82         =E2=94=82                  =
                   =E2=94=82
>>>>     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=
=82                      =E2=94=8C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=A4
>>>>     =E2=94=82 NTB        =E2=94=82         =E2=94=82                  =
    =E2=94=82 NTB          =E2=94=82
>>>>     =E2=94=82 NetDev     =E2=94=82         =E2=94=82                  =
    =E2=94=82 NetDev       =E2=94=82
>>>>     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=
=82                      =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=A4
>>>>     =E2=94=82 NTB        =E2=94=82         =E2=94=82                  =
    =E2=94=82 NTB          =E2=94=82
>>>>     =E2=94=82 Transfer   =E2=94=82         =E2=94=82                  =
    =E2=94=82 Transfer     =E2=94=82
>>>>     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=
=82                      =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=A4
>>>>     =E2=94=82            =E2=94=82         =E2=94=82                  =
    =E2=94=82              =E2=94=82
>>>>     =E2=94=82  PCI NTB   =E2=94=82         =E2=94=82                  =
    =E2=94=82              =E2=94=82
>>>>     =E2=94=82    EPF     =E2=94=82         =E2=94=82                  =
    =E2=94=82              =E2=94=82
>>>>     =E2=94=82   Driver   =E2=94=82         =E2=94=82                  =
    =E2=94=82 PCI Virtual  =E2=94=82
>>>>     =E2=94=82            =E2=94=82         =E2=94=9C=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90      =E2=94=82 NTB Driv=
er   =E2=94=82
>>>>     =E2=94=82            =E2=94=82         =E2=94=82 PCI EP NTB    =E2=
=94=82=E2=97=84=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=96=BA=E2=94=82      =
        =E2=94=82
>>>>     =E2=94=82            =E2=94=82         =E2=94=82  FN Driver    =E2=
=94=82      =E2=94=82              =E2=94=82
>>>>     =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4         =E2=94=
=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4   =
   =E2=94=9C=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=A4
>>>>     =E2=94=82            =E2=94=82         =E2=94=82               =E2=
=94=82      =E2=94=82              =E2=94=82
>>>>     =E2=94=82  PCI BUS   =E2=94=82 =E2=97=84=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=96=BA =E2=94=82  PCI EP BUS   =E2=94=82      =E2=
=94=82  Virtual PCI =E2=94=82
>>>>     =E2=94=82            =E2=94=82  PCI    =E2=94=82               =E2=
=94=82      =E2=94=82     BUS      =E2=94=82
>>>>     =E2=94=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98         =E2=94=
=94=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=B4=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=98
>>>>         PCI RC                        PCI EP
>>>>
>>>>
>>>>
>>>> Frank Li (4):
>>>>   PCI: designware-ep: Allow pci_epc_set_bar() update inbound map addre=
ss
>>>>   NTB: epf: Allow more flexibility in the memory BAR map method
>>>>   PCI: endpoint: Support NTB transfer between RC and EP
>>>>   Documentation: PCI: Add specification for the PCI vNTB function devi=
ce
>>>>
>>>>  Documentation/PCI/endpoint/index.rst          |    2 +
>>>>  .../PCI/endpoint/pci-vntb-function.rst        |  126 ++
>>>>  Documentation/PCI/endpoint/pci-vntb-howto.rst |  167 ++
>>>>  drivers/ntb/hw/epf/ntb_hw_epf.c               |   48 +-
>>>>  .../pci/controller/dwc/pcie-designware-ep.c   |   10 +-
>>>>  drivers/pci/endpoint/functions/Kconfig        |   11 +
>>>>  drivers/pci/endpoint/functions/Makefile       |    1 +
>>>>  drivers/pci/endpoint/functions/pci-epf-vntb.c | 1424 ++++++++++++++++=
+
>>>>  8 files changed, 1775 insertions(+), 14 deletions(-)
>>>>  create mode 100644 Documentation/PCI/endpoint/pci-vntb-function.rst
>>>>  create mode 100644 Documentation/PCI/endpoint/pci-vntb-howto.rst
>>>>  create mode 100644 drivers/pci/endpoint/functions/pci-epf-vntb.c
>>>>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/0407f63c-b422-bcfa-999a-5ef31a2afedf%40ti.com.

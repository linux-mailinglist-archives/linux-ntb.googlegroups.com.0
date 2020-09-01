Return-Path: <linux-ntb+bncBCOOP4VF5IDRBI5WW75AKGQEQ5XIOTA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id EEF8425875C
	for <lists+linux-ntb@lfdr.de>; Tue,  1 Sep 2020 07:24:52 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id z22sf127247pjr.8
        for <lists+linux-ntb@lfdr.de>; Mon, 31 Aug 2020 22:24:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598937891; cv=pass;
        d=google.com; s=arc-20160816;
        b=vztUHXUgvkCoXO4oSvCVzV6VIckKJj3YP1Co9gSGqGaoQZ5pyZO3P+xjYEVpaxH5Xf
         gtkMxnZJmKJAgMD5koFTJrSa/LrvUZr3KTPkYH17B7M6jFzgf48Qsoc/WYVKAQsGV5ck
         3QS0mF/WheDbijrjDtciLfQ3o1EBj72STNXtYttOuPRpnwLdbagjo1kiNsBVQMslJpQI
         P7UdtReFqhBRu0IkP7Ifi5q78u+gFlOdFKmG/WR4tSevz2mm0KccLKMUDT/+QunaVUoR
         iAsO+WXE0jtaN/e0cLyqoiGkGEwJH7a8unA/kvZxj32R+obuixKW7mDiP6sG/LQuDOaJ
         LDMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=YnVBtEjWw9GZsMVFmjZGyjp220reRcB5WlSTgTG9vB0=;
        b=lqznl3uvvGekicBmTNHlhZFEEsCtDj1uia+9hDQzL6SPaQtetypTXo0CIpg7RJ6dKX
         L/VZP7Hm8l5fYwrUoD+np3RBa2y6QA0TNB/NoHpzK50knOcp3Q90Aaj1f88IGrbgxKXn
         bBJstEZoxFJgz2n/VKfRzaniEss5nIiYo3LLlXXVd4GEo5Woj7eCW9hb5zVGe68XAHW6
         4Tn+x5JyEQ0nw45Pg5pCbGSMsIEzYuICQx72il2DMyAKOE2QhokhicbhiJmMhNz0mTJw
         ktBZ9UQZNnCETEjPHoBMwHFOH4tcsg5SVJ/Y3IZyTNdReDPGIdnISbroR/SLDRr5q1et
         UEYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uv5Qncr+;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YnVBtEjWw9GZsMVFmjZGyjp220reRcB5WlSTgTG9vB0=;
        b=FBwoCZVeT/w3/rzixI07yw+p59RekbJpe73poP69iD1We3vcsnQmfEzV+Pgaj0sWQZ
         pmLhvdDfa4+gGiElr8qcV48saDfvkgo/zIbXBaty5cOMtPWsKqe6yB+a13xCt3+JTxqH
         V9ltj5w95eKHEDxDroOaYd8847W3H9JmdH/+L/Myv4O30rklRm9WGKHMf9V7OVVksLjt
         NBjBuXyjAQciChvmaHMaWTo+tF2mjh6DZxJaAq4XN29kMXVZsCcEjQdHGzIvLXDNX+fP
         BeA8NFjVYOVBYjn3zBrqdvmBTuPb6zmk/OQ2UtWQ55vIMA5lMvyKNxd83qN/VnLsQ570
         uO7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YnVBtEjWw9GZsMVFmjZGyjp220reRcB5WlSTgTG9vB0=;
        b=IDrxXtb6Ur2KB0i28bnoIo0Mt1+qboORVEh2XMBD8tynW/LMiI88w38czlWfqXgSbx
         6lsqNHRQmM/BSj3TzxZ7skLoYSrBgehaplngP4Kc53fhmd6zmvtDweGAdORNFa1hha9j
         Pf5CjnluxqBZhsjIw3SdNQMrunxhpEhReYK9VOy6QSVUEYSvkgzdW/pAn0cbMD+UAFLE
         eQWVAchrSaGdP2m97cRAj6DExSCU1UVacZonwrg6lQdxDFNkF1dalBk5tgKAjbawd3fo
         NLaeYPIFJI51ykPU+gPBmREf0PnwuoDuWC+UMX0bHQJwCAGKoPSIi2TkIaTTRrb1akQf
         U5nQ==
X-Gm-Message-State: AOAM531rv9n89+gfD+ufaGWsB6A86do9uHEZeTNuQfC5tvZJouCkf3SA
	Xf0rFjmuJoh0R+tKz+r9I8k=
X-Google-Smtp-Source: ABdhPJy+u+XsVg8Jfvrka9VL1XH24f1+6AuPN0jXIDAv/0mTbPIhuGFZUrC4ddtzKPyig0JrQc6SLg==
X-Received: by 2002:a62:33c2:: with SMTP id z185mr279065pfz.242.1598937891557;
        Mon, 31 Aug 2020 22:24:51 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:1013:: with SMTP id gm19ls34306pjb.3.gmail; Mon, 31
 Aug 2020 22:24:51 -0700 (PDT)
X-Received: by 2002:a17:90a:634c:: with SMTP id v12mr356393pjs.57.1598937890872;
        Mon, 31 Aug 2020 22:24:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598937890; cv=none;
        d=google.com; s=arc-20160816;
        b=cZrRPAFHJHJeVZrgwT+F+RlWQ2AcNYaNcmckE6In8cCYG8aUUUv38kzNpOHgS/Oj9H
         NIlQRaYWrZkSutlI2YvxTtWo6p4sCdSt//lJ+YXUxdEPYLVGl41aUg7jhx9msrTlOF5H
         DBK7sga+noHVNPIi3o2y0r7oSB1iJFSlcB8OCZHz8cA8sPXQIt5yfzpkd0+rLdWt48di
         d+p1Q1VO/ouAWfC7miOCTrBpBwf5m+sGh9Wt2GIlsqmGKvCfKvmMiime4hxmANoby0g0
         hs8aJl2jhEt7cT+pj8TNB+KUC9F4KVASSoMpXiJtZP3MGGrZ8fRRf0++ZBFqNa8cPITI
         qDaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Qv67/wjb1spufErkrYAmFyjBFXBgorqv33GTd2PnIZQ=;
        b=xWJl0ORVgQxYBS58gmcOG7U5n7GcirNSsVqTyogzqiuFfTbLYGhO3S9+Pt8g6dxEvg
         ZBYfyhjeOXzzu41DvTKCP5mXmoZTHr14s8PCaBq+62Fv3ldm7Cl1ixx2fto45ELQKTOT
         hQ6PPclN7JAyXOxd4ziOM3JZyjBaLVRZ4AUO7qZVNfBXH35QbA0HMaGUHZ8z4rCEzM1r
         Rx7VAtPYFU7R/ZyUhh1jwfNEfjNm7UQfEeQIFrkx47ziWDwVoe+OSkZkysI0K+hrkF/c
         u2CIgbTx2kf2QhMJWaj3eCcDq6mMzhlJdlKiyksBOFk0ZydFgO1u0htqPNdAbIyPGiaI
         zmcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uv5Qncr+;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id n4si12542pgt.3.2020.08.31.22.24.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 Aug 2020 22:24:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0815OjiA015677;
	Tue, 1 Sep 2020 00:24:45 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0815OjvV051050;
	Tue, 1 Sep 2020 00:24:45 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 1 Sep
 2020 00:24:45 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 1 Sep 2020 00:24:45 -0500
Received: from [10.250.232.147] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0815Oba3074942;
	Tue, 1 Sep 2020 00:24:38 -0500
Subject: Re: [RFC PATCH 00/22] Enhance VHOST to enable SoC-to-SoC
 communication
To: Cornelia Huck <cohuck@redhat.com>, Jason Wang <jasowang@redhat.com>
CC: "Michael S. Tsirkin" <mst@redhat.com>, Ohad Ben-Cohen <ohad@wizery.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>,
        Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Paolo Bonzini <pbonzini@redhat.com>,
        Stefan Hajnoczi <stefanha@redhat.com>,
        Stefano Garzarella <sgarzare@redhat.com>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-remoteproc@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, <linux-pci@vger.kernel.org>,
        <kvm@vger.kernel.org>, <virtualization@lists.linux-foundation.org>,
        <netdev@vger.kernel.org>
References: <20200702082143.25259-1-kishon@ti.com>
 <20200702055026-mutt-send-email-mst@kernel.org>
 <603970f5-3289-cd53-82a9-aa62b292c552@redhat.com>
 <14c6cad7-9361-7fa4-e1c6-715ccc7e5f6b@ti.com>
 <59fd6a0b-8566-44b7-3dae-bb52b468219b@redhat.com>
 <ce9eb6a5-cd3a-a390-5684-525827b30f64@ti.com>
 <da2b671c-b05d-a57f-7bdf-8b1043a41240@redhat.com>
 <fee8a0fb-f862-03bd-5ede-8f105b6af529@ti.com>
 <b2178e1d-2f5c-e8a3-72fb-70f2f8d6aa45@redhat.com>
 <45a8a97c-2061-13ee-5da8-9877a4a3b8aa@ti.com>
 <c8739d7f-e12e-f6a2-7018-9eeaf6feb054@redhat.com>
 <20200828123409.4cd2a812.cohuck@redhat.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <ac8f7e4f-9f46-919a-f5c2-89b07794f0ab@ti.com>
Date: Tue, 1 Sep 2020 10:54:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20200828123409.4cd2a812.cohuck@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=uv5Qncr+;       spf=pass
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

Hi,

On 28/08/20 4:04 pm, Cornelia Huck wrote:
> On Thu, 9 Jul 2020 14:26:53 +0800
> Jason Wang <jasowang@redhat.com> wrote:
>=20
> [Let me note right at the beginning that I first noted this while
> listening to Kishon's talk at LPC on Wednesday. I might be very
> confused about the background here, so let me apologize beforehand for
> any confusion I might spread.]
>=20
>> On 2020/7/8 =E4=B8=8B=E5=8D=889:13, Kishon Vijay Abraham I wrote:
>>> Hi Jason,
>>>
>>> On 7/8/2020 4:52 PM, Jason Wang wrote:
>>>> On 2020/7/7 =E4=B8=8B=E5=8D=8810:45, Kishon Vijay Abraham I wrote:
>>>>> Hi Jason,
>>>>>
>>>>> On 7/7/2020 3:17 PM, Jason Wang wrote:
>>>>>> On 2020/7/6 =E4=B8=8B=E5=8D=885:32, Kishon Vijay Abraham I wrote:
>>>>>>> Hi Jason,
>>>>>>>
>>>>>>> On 7/3/2020 12:46 PM, Jason Wang wrote:
>>>>>>>> On 2020/7/2 =E4=B8=8B=E5=8D=889:35, Kishon Vijay Abraham I wrote:
>>>>>>>>> Hi Jason,
>>>>>>>>>
>>>>>>>>> On 7/2/2020 3:40 PM, Jason Wang wrote:
>>>>>>>>>> On 2020/7/2 =E4=B8=8B=E5=8D=885:51, Michael S. Tsirkin wrote:
>>>>>>>>>>> On Thu, Jul 02, 2020 at 01:51:21PM +0530, Kishon Vijay Abraham =
I wrote:
>>>>>>>>>>>> This series enhances Linux Vhost support to enable SoC-to-SoC
>>>>>>>>>>>> communication over MMIO. This series enables rpmsg communicati=
on between
>>>>>>>>>>>> two SoCs using both PCIe RC<->EP and HOST1-NTB-HOST2
>>>>>>>>>>>>
>>>>>>>>>>>> 1) Modify vhost to use standard Linux driver model
>>>>>>>>>>>> 2) Add support in vring to access virtqueue over MMIO
>>>>>>>>>>>> 3) Add vhost client driver for rpmsg
>>>>>>>>>>>> 4) Add PCIe RC driver (uses virtio) and PCIe EP driver (uses v=
host) for
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rpmsg communication bet=
ween two SoCs connected to each other
>>>>>>>>>>>> 5) Add NTB Virtio driver and NTB Vhost driver for rpmsg commun=
ication
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 between two SoCs connec=
ted via NTB
>>>>>>>>>>>> 6) Add configfs to configure the components
>>>>>>>>>>>>
>>>>>>>>>>>> UseCase1 :
>>>>>>>>>>>>
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0 VHOST RPMSG=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 VIRTIO RPMSG
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 +
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>> +-----v------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +------v-------+
>>>>>>>>>>>> |=C2=A0=C2=A0 Linux=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 |=C2=A0=C2=A0=C2=A0=C2=A0 Linux=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>> |=C2=A0 Endpoint=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | Root Complex=
 |
>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 <----------------->=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0 SOC1=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 SOC2=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>> +------------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +--------------+
>>>>>>>>>>>>
>>>>>>>>>>>> UseCase 2:
>>>>>>>>>>>>
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 VHOST RPMSG=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 VI=
RTIO RPMSG
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 +
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +------v------+=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +------v------+
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0 HOS=
T1=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0=C2=A0=C2=A0 HOST2=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +------^------+=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +------^------+
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 |
>>>>>>>>>>>> +-------------------------------------------------------------=
--------+
>>>>>>>>>>>> |=C2=A0 +------v------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 +------v------+=C2=A0 |
>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 |
>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0 EP=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=
=A0=C2=A0=C2=A0 EP=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 |
>>>>>>>>>>>> |=C2=A0 | CONTROLLER1 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | CONTROLLER2 |=C2=A0 |
>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 <----------------------------------->=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 |
>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 |
>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 |=C2=A0 |
>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 SoC With Multiple EP Instances=C2=A0=C2=A0 |=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
=C2=A0 |
>>>>>>>>>>>> |=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 (Configured using NTB Function)=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 =
|
>>>>>>>>>>>> |=C2=A0 +-------------+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 +-------------+=C2=A0 |
>>>>>>>>>>>> +-------------------------------------------------------------=
--------+
>=20
> First of all, to clarify the terminology:
> Is "vhost rpmsg" acting as what the virtio standard calls the 'device',
> and "virtio rpmsg" as the 'driver'? Or is the "vhost" part mostly just

Right, vhost_rpmsg is 'device' and virtio_rpmsg is 'driver'.
> virtqueues + the exiting vhost interfaces?

It's implemented to provide the full 'device' functionality.
>=20
>>>>>>>>>>>>
>>>>>>>>>>>> Software Layering:
>>>>>>>>>>>>
>>>>>>>>>>>> The high-level SW layering should look something like below. T=
his series
>>>>>>>>>>>> adds support only for RPMSG VHOST, however something similar s=
hould be
>>>>>>>>>>>> done for net and scsi. With that any vhost device (PCI, NTB, P=
latform
>>>>>>>>>>>> device, user) can use any of the vhost client driver.
>>>>>>>>>>>>
>>>>>>>>>>>>
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +----------------=
+=C2=A0 +-----------+=C2=A0 +------------+=C2=A0 +----------+
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 RPMSG VHO=
ST=C2=A0=C2=A0 |=C2=A0 | NET VHOST |=C2=A0 | SCSI VHOST |=C2=A0 |=C2=A0=C2=
=A0=C2=A0 X=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 +-------^--------=
+=C2=A0 +-----^-----+=C2=A0 +-----^------+=C2=A0 +----^-----+
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>> +-----------v-----------------v--------------v--------------v-=
---------+
>>>>>>>>>>>> |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 VHOST CORE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 |
>>>>>>>>>>>> +--------^---------------^--------------------^---------------=
---^-----+
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>>   =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>> +--------v-------+=C2=A0 +----v------+=C2=A0 +----------v-----=
-----+=C2=A0 +----v-----+
>>>>>>>>>>>> |=C2=A0 PCI EPF VHOST |=C2=A0 | NTB VHOST |=C2=A0 |PLATFORM DE=
VICE VHOST|=C2=A0 |=C2=A0=C2=A0=C2=A0 X=C2=A0=C2=A0=C2=A0=C2=A0 |
>>>>>>>>>>>> +----------------+=C2=A0 +-----------+=C2=A0 +----------------=
-----+=C2=A0 +----------+
>=20
> So, the upper half is basically various functionality types, e.g. a net
> device. What is the lower half, a hardware interface? Would it be
> equivalent to e.g. a normal PCI device?

Right, the upper half should provide the functionality.
The bottom layer could be a HW interface (like PCIe device or NTB=20
device) or it could be a SW interface (for accessing virtio ring in=20
userspace) that could be used by Hypervisor.

The top half should be transparent to what type of device is actually=20
using it.

>=20
>>>>>>>>>>>>
>>>>>>>>>>>> This was initially proposed here [1]
>>>>>>>>>>>>
>>>>>>>>>>>> [1] ->
>>>>>>>>>>>> https://lore.kernel.org/r/2cf00ec4-1ed6-f66e-6897-006d1a5b6390=
@ti.com
>>>>>>>>>>> I find this very interesting. A huge patchset so will take a bi=
t
>>>>>>>>>>> to review, but I certainly plan to do that. Thanks!
>>>>>>>>>> Yes, it would be better if there's a git branch for us to have a=
 look.
>>>>>>>>> I've pushed the branch
>>>>>>>>> https://github.com/kishon/linux-wip.git vhost_rpmsg_pci_ntb_rfc
>>>>>>>> Thanks
>>>>>>>>
>>>>>>>>  =20
>>>>>>>>>> Btw, I'm not sure I get the big picture, but I vaguely feel some=
 of the
>>>>>>>>>> work is
>>>>>>>>>> duplicated with vDPA (e.g the epf transport or vhost bus).
>>>>>>>>> This is about connecting two different HW systems both running Li=
nux and
>>>>>>>>> doesn't necessarily involve virtualization.
>>>>>>>> Right, this is something similar to VOP
>>>>>>>> (Documentation/misc-devices/mic/mic_overview.rst). The different i=
s the
>>>>>>>> hardware I guess and VOP use userspace application to implement th=
e device.
>>>>>>> I'd also like to point out, this series tries to have communication=
 between
>>>>>>> two
>>>>>>> SoCs in vendor agnostic way. Since this series solves for 2 usecase=
s (PCIe
>>>>>>> RC<->EP and NTB), for the NTB case it directly plugs into NTB frame=
work and
>>>>>>> any
>>>>>>> of the HW in NTB below should be able to use a virtio-vhost communi=
cation
>>>>>>>
>>>>>>> #ls drivers/ntb/hw/
>>>>>>> amd=C2=A0 epf=C2=A0 idt=C2=A0 intel=C2=A0 mscc
>>>>>>>
>>>>>>> And similarly for the PCIe RC<->EP communication, this adds a gener=
ic endpoint
>>>>>>> function driver and hence any SoC that supports configurable PCIe e=
ndpoint can
>>>>>>> use virtio-vhost communication
>>>>>>>
>>>>>>> # ls drivers/pci/controller/dwc/*ep*
>>>>>>> drivers/pci/controller/dwc/pcie-designware-ep.c
>>>>>>> drivers/pci/controller/dwc/pcie-uniphier-ep.c
>>>>>>> drivers/pci/controller/dwc/pci-layerscape-ep.c
>>>>>> Thanks for those backgrounds.
>>>>>>
>>>>>>  =20
>>>>>>>>>   =C2=A0=C2=A0=C2=A0 So there is no guest or host as in
>>>>>>>>> virtualization but two entirely different systems connected via P=
CIe cable,
>>>>>>>>> one
>>>>>>>>> acting as guest and one as host. So one system will provide virti=
o
>>>>>>>>> functionality reserving memory for virtqueues and the other provi=
des vhost
>>>>>>>>> functionality providing a way to access the virtqueues in virtio =
memory.
>>>>>>>>> One is
>>>>>>>>> source and the other is sink and there is no intermediate entity.=
 (vhost was
>>>>>>>>> probably intermediate entity in virtualization?)
>>>>>>>> (Not a native English speaker) but "vhost" could introduce some co=
nfusion for
>>>>>>>> me since it was use for implementing virtio backend for userspace =
drivers. I
>>>>>>>> guess "vringh" could be better.
>>>>>>> Initially I had named this vringh but later decided to choose vhost=
 instead of
>>>>>>> vringh. vhost is still a virtio backend (not necessarily userspace)=
 though it
>>>>>>> now resides in an entirely different system. Whatever virtio is for=
 a frontend
>>>>>>> system, vhost can be that for a backend system. vring can be for ac=
cessing
>>>>>>> virtqueue and can be used either in frontend or backend.
>=20
> I guess that clears up at least some of my questions from above...
>=20
>>>>>> Ok.
>>>>>>
>>>>>>  =20
>>>>>>>>>> Have you considered to implement these through vDPA?
>>>>>>>>> IIUC vDPA only provides an interface to userspace and an in-kerne=
l rpmsg
>>>>>>>>> driver
>>>>>>>>> or vhost net driver is not provided.
>>>>>>>>>
>>>>>>>>> The HW connection looks something like https://pasteboard.co/JfMV=
VHC.jpg
>>>>>>>>> (usecase2 above),
>>>>>>>> I see.
>>>>>>>>
>>>>>>>>  =20
>>>>>>>>>   =C2=A0=C2=A0=C2=A0 all the boards run Linux. The middle board p=
rovides NTB
>>>>>>>>> functionality and board on either side provides virtio/vhost
>>>>>>>>> functionality and
>>>>>>>>> transfer data using rpmsg.
>=20
> This setup looks really interesting (sometimes, it's really hard to
> imagine this in the abstract.)
>  =20
>>>>>>>> So I wonder whether it's worthwhile for a new bus. Can we use
>>>>>>>> the existed virtio-bus/drivers? It might work as, except for
>>>>>>>> the epf transport, we can introduce a epf "vhost" transport
>>>>>>>> driver.
>>>>>>> IMHO we'll need two buses one for frontend and other for
>>>>>>> backend because the two components can then co-operate/interact
>>>>>>> with each other to provide a functionality. Though both will
>>>>>>> seemingly provide similar callbacks, they are both provide
>>>>>>> symmetrical or complimentary funcitonality and need not be same
>>>>>>> or identical.
>>>>>>>
>>>>>>> Having the same bus can also create sequencing issues.
>>>>>>>
>>>>>>> If you look at virtio_dev_probe() of virtio_bus
>>>>>>>
>>>>>>> device_features =3D dev->config->get_features(dev);
>>>>>>>
>>>>>>> Now if we use same bus for both front-end and back-end, both
>>>>>>> will try to get_features when there has been no set_features.
>>>>>>> Ideally vhost device should be initialized first with the set
>>>>>>> of features it supports. Vhost and virtio should use "status"
>>>>>>> and "features" complimentarily and not identically.
>>>>>> Yes, but there's no need for doing status/features passthrough
>>>>>> in epf vhost drivers.b
>>>>>>
>>>>>>  =20
>>>>>>> virtio device (or frontend) cannot be initialized before vhost
>>>>>>> device (or backend) gets initialized with data such as
>>>>>>> features. Similarly vhost (backend)
>>>>>>> cannot access virqueues or buffers before virtio (frontend) sets
>>>>>>> VIRTIO_CONFIG_S_DRIVER_OK whereas that requirement is not there
>>>>>>> for virtio as the physical memory for virtqueues are created by
>>>>>>> virtio (frontend).
>>>>>> epf vhost drivers need to implement two devices: vhost(vringh)
>>>>>> device and virtio device (which is a mediated device). The
>>>>>> vhost(vringh) device is doing feature negotiation with the
>>>>>> virtio device via RC/EP or NTB. The virtio device is doing
>>>>>> feature negotiation with local virtio drivers. If there're
>>>>>> feature mismatch, epf vhost drivers and do mediation between
>>>>>> them.
>>>>> Here epf vhost should be initialized with a set of features for
>>>>> it to negotiate either as vhost device or virtio device no? Where
>>>>> should the initial feature set for epf vhost come from?
>>>>
>>>> I think it can work as:
>>>>
>>>> 1) Having an initial features (hard coded in the code) set X in
>>>> epf vhost 2) Using this X for both virtio device and vhost(vringh)
>>>> device 3) local virtio driver will negotiate with virtio device
>>>> with feature set Y 4) remote virtio driver will negotiate with
>>>> vringh device with feature set Z 5) mediate between feature Y and
>>>> feature Z since both Y and Z are a subset of X
>>>>
>>>>  =20
>>> okay. I'm also thinking if we could have configfs for configuring
>>> this. Anyways we could find different approaches of configuring
>>> this.
>>
>>
>> Yes, and I think some management API is needed even in the design of
>> your "Software Layering". In that figure, rpmsg vhost need some
>> pre-set or hard-coded features.
>=20
> When I saw the plumbers talk, my first idea was "this needs to be a new
> transport". You have some hard-coded or pre-configured features, and
> then features are negotiated via a transport-specific means in the
> usual way. There's basically an extra/extended layer for this (and
> status, and whatever).

I think for PCIe root complex to PCIe endpoint communication it's still=20
"Virtio Over PCI Bus", though existing layout cannot be used in this=20
context (find virtio capability will fail for modern interface and=20
loading queue status immediately after writing queue number is not=20
possible for root complex to endpoint communication; setup_vq() in=20
virtio_pci_legacy.c).

"Virtio Over NTB" should anyways be a new transport.
>=20
> Does that make any sense?

yeah, in the approach I used the initial features are hard-coded in=20
vhost-rpmsg (inherent to the rpmsg) but when we have to use adapter=20
layer (vhost only for accessing virtio ring and use virtio drivers on=20
both front end and backend), based on the functionality (e.g, rpmsg),=20
the vhost should be configured with features (to be presented to the=20
virtio) and that's why additional layer or APIs will be required.
>=20
>>
>>
>>>>>>>> It will have virtqueues but only used for the communication
>>>>>>>> between itself and
>>>>>>>> uppter virtio driver. And it will have vringh queues which
>>>>>>>> will be probe by virtio epf transport drivers. And it needs to
>>>>>>>> do datacopy between virtqueue and
>>>>>>>> vringh queues.
>>>>>>>>
>>>>>>>> It works like:
>>>>>>>>
>>>>>>>> virtio drivers <- virtqueue/virtio-bus -> epf vhost drivers <-
>>>>>>>> vringh queue/epf>
>>>>>>>>
>>>>>>>> The advantages is that there's no need for writing new buses
>>>>>>>> and drivers.
>>>>>>> I think this will work however there is an addtional copy
>>>>>>> between vringh queue and virtqueue,
>>>>>> I think not? E.g in use case 1), if we stick to virtio bus, we
>>>>>> will have:
>>>>>>
>>>>>> virtio-rpmsg (EP) <- virtio ring(1) -> epf vhost driver (EP) <-
>>>>>> virtio ring(2) -> virtio pci (RC) <-> virtio rpmsg (RC)
>>>>> IIUC epf vhost driver (EP) will access virtio ring(2) using
>>>>> vringh?
>>>>
>>>> Yes.
>>>>
>>>>  =20
>>>>> And virtio
>>>>> ring(2) is created by virtio pci (RC).
>>>>
>>>> Yes.
>>>>
>>>>  =20
>>>>>> What epf vhost driver did is to read from virtio ring(1) about
>>>>>> the buffer len and addr and them DMA to Linux(RC)?
>>>>> okay, I made some optimization here where vhost-rpmsg using a
>>>>> helper writes a buffer from rpmsg's upper layer directly to
>>>>> remote Linux (RC) as against here were it has to be first written
>>>>> to virtio ring (1).
>>>>>
>>>>> Thinking how this would look for NTB
>>>>> virtio-rpmsg (HOST1) <- virtio ring(1) -> NTB(HOST1) <->
>>>>> NTB(HOST2)=C2=A0 <- virtio ring(2) -> virtio-rpmsg (HOST2)
>>>>>
>>>>> Here the NTB(HOST1) will access the virtio ring(2) using vringh?
>>>>
>>>> Yes, I think so it needs to use vring to access virtio ring (1) as
>>>> well.
>>> NTB(HOST1) and virtio ring(1) will be in the same system. So it
>>> doesn't have to use vring. virtio ring(1) is by the virtio device
>>> the NTB(HOST1) creates.
>>
>>
>> Right.
>>
>>
>>>>  =20
>>>>> Do you also think this will work seamlessly with virtio_net.c,
>>>>> virtio_blk.c?
>>>>
>>>> Yes.
>>> okay, I haven't looked at this but the backend of virtio_blk should
>>> access an actual storage device no?
>>
>>
>> Good point, for non-peer device like storage. There's probably no
>> need for it to be registered on the virtio bus and it might be better
>> to behave as you proposed.
>=20
> I might be missing something; but if you expose something as a block
> device, it should have something it can access with block reads/writes,
> shouldn't it? Of course, that can be a variety of things.
>=20
>>
>> Just to make sure I understand the design, how is VHOST SCSI expected
>> to work in your proposal, does it have a device for file as a backend?
>>
>>
>>>>  =20
>>>>> I'd like to get clarity on two things in the approach you
>>>>> suggested, one is features (since epf vhost should ideally be
>>>>> transparent to any virtio driver)
>>>>
>>>> We can have have an array of pre-defined features indexed by
>>>> virtio device id in the code.
>>>>
>>>>  =20
>>>>> and the other is how certain inputs to virtio device such as
>>>>> number of buffers be determined.
>>>>
>>>> We can start from hard coded the value like 256, or introduce some
>>>> API for user to change the value.
>>>>
>>>>  =20
>>>>> Thanks again for your suggestions!
>>>>
>>>> You're welcome.
>>>>
>>>> Note that I just want to check whether or not we can reuse the
>>>> virtio bus/driver. It's something similar to what you proposed in
>>>> Software Layering but we just replace "vhost core" with "virtio
>>>> bus" and move the vhost core below epf/ntb/platform transport.
>>> Got it. My initial design was based on my understanding of your
>>> comments [1].
>>
>>
>> Yes, but that's just for a networking device. If we want something
>> more generic, it may require more thought (bus etc).
>=20
> I believe that we indeed need something bus-like to be able to support
> a variety of devices.

I think we could still have adapter layers for different types of=20
devices ([1]) and use existing virtio bus for both front end and back=20
end. Using bus-like will however simplify adding support for new types=20
of devices and adding adapters for devices will be slightly more complex.

[1] -> Page 13 in=20
https://linuxplumbersconf.org/event/7/contributions/849/attachments/642/117=
5/Virtio_for_PCIe_RC_EP_NTB.pdf
>=20
>>
>>
>>>
>>> I'll try to create something based on your proposed design here.
>>
>>
>> Sure, but for coding, we'd better wait for other's opinion here.
>=20
> Please tell me if my thoughts above make any sense... I have just
> started looking at that, so I might be completely off.

I think your understanding is correct! Thanks for your inputs.

Thanks
Kishon

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/ac8f7e4f-9f46-919a-f5c2-89b07794f0ab%40ti.com.

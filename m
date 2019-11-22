Return-Path: <linux-ntb+bncBAABBPPU3TXAKGQEXAB5XTA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id E7693105E44
	for <lists+linux-ntb@lfdr.de>; Fri, 22 Nov 2019 02:30:39 +0100 (CET)
Received: by mail-qv1-xf3b.google.com with SMTP id w5sf3619606qvp.13
        for <lists+linux-ntb@lfdr.de>; Thu, 21 Nov 2019 17:30:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574386237; cv=pass;
        d=google.com; s=arc-20160816;
        b=SRsG+xgKa9EkhNwhFTr+x8f4EQrRPAZ4Pc/lOel6WyjmoB8e0MM1aCBbepAApdFP20
         cPo8Qo2zmSca40WIb5X3Ob6u4ijOKPuMr/HhAFIMy4feZsi4nwrH6YGVdvCltGT00V/E
         LpqYoMXYHcZk4YF+XY23QMjunzYALFQ2Xgt+X+GPjKYQw2AhkcrStvJCzlvJAQ9ZiW90
         05V8p+aFthzqIncobkj+wlezD/8HaStfeRZu4kY9Fuw8JdUm3Y8gGvyYtU3YvZc55WBm
         emttJKCUVNHlG5Ed7LTxMAKxE+K7wkVf9RojdkS1qt1abaMmn7J/wn4DnmUrxmOMvihc
         9zRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=Y9t4waIFTubK8V6m4V13RvX8PntjHLXRrcZqLrlklBw=;
        b=UKT9XL5dc+qfGOMHL+Lqfv4DSSFjO4zvpZaQBHXwNWYTxrU7v2cCer0Uh2CiKdmgKj
         rqSlWHZENe2WgIKe4f2Ybu3eaA8aNHt1IzdoXrsHjB1ufXGHPi425Dc9QMFSYJFFwCjd
         +kp9rhYs5XH7Hgw+cHeC14ZqXE7jdYD+hHv4LSq+wLtBQ7ADhON4fT8dgtiESKS2CUI9
         0MplIG8r2Q2GAjdzyzJxmGX341nwf+Zge9beO8tUYiWW7PB3OWMogi5Si1o5C8XgxPs7
         S5eeJOPHkXJZV2QK+iZRexTTo7pUr9nH8qOFRXSPeaco/ilZ7wQTYk3xSTyftFhjqbut
         0qEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y9t4waIFTubK8V6m4V13RvX8PntjHLXRrcZqLrlklBw=;
        b=VsGcLl8p65YPn6FaD2q5HLFDe6+dgNmRjOVy3xXuR6q7Tc/rt+H7+qmB2YWECzqt4p
         9bIsNcBB1eF2T9BTjHmelQ1Iv33wHSgz8nGjE3Mrl00ocAJW4u39xjUDs82ai1PrI0fV
         YvxMkaJ+Vm+nsal6TThqNbaMkO1DpoOGEmrnnRpQ+m+SWaw0yeyDlF/x11n60Yd3UgXb
         znLel/FU7u/ufaxkYJ0N3pejQd71DHUZfruxFVc7M0kEDlpmytAXWM1Yqteq9LA4JEiI
         BL6tWnd6P3Sf6JeBzdGU00bEtugvaOzHuQE0grycC8t7GrwLyCCyDGsJjRVJHN2Upp4J
         zeIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y9t4waIFTubK8V6m4V13RvX8PntjHLXRrcZqLrlklBw=;
        b=bs9v40lsdE11IB5mpGQYd3f4LvPjctimI2dALhUjQix6ryvATi6c5/1KtDYzez5iUz
         3fdR3jbT7Oqt70PTd9JLzdwJJiclJwItlYYlp9R7LZaHWxVFc3DT/fyRiRgE9dqi+Nx6
         EeAgI8bqwqeO+hyuJwWY3PhZ6niZsKbewdNRAAP9JUHuHYW3l5AWB87LzLGnyPXyrskG
         p7X7Mx0h8qL3lR+on2R57RraLg3FwL2igi52pAsnXCIomnfO6XMBPHBsSJ2J2zJvVNlM
         pWjme3QVS4SeRezPo45Rxx/32RvaoKFsu37a6AEu1bV+IX5Z6kbHon1B7dY8ZQS67kpw
         V6og==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVG6oolAbGOcW3T3AHXm1lMmP2XfXxGA7iRXfcDm6rP2UpEDYAN
	hx7C4K/c4buPayfbHq2qfgg=
X-Google-Smtp-Source: APXvYqxv4szNi25FwohD41Kcf0x6EOsm52uURGbuVGe01y9QE7cwhgt7oRYOPSqgcZYSJctqU0o6fw==
X-Received: by 2002:a37:4a83:: with SMTP id x125mr2772624qka.229.1574386237424;
        Thu, 21 Nov 2019 17:30:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:18c9:: with SMTP id o9ls2490847qtk.3.gmail; Thu, 21 Nov
 2019 17:30:37 -0800 (PST)
X-Received: by 2002:ac8:3f33:: with SMTP id c48mr1530770qtk.108.1574386237059;
        Thu, 21 Nov 2019 17:30:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574386237; cv=none;
        d=google.com; s=arc-20160816;
        b=m5xcCyJJ6bqgfHw03KQSjLnIr5zz00h21WOZlM6imchlWon4EeUaDQAvRYuRrwhPzG
         1mbwjSWHxV8jJwCMKttyMqMXlbjLVL1PL0owHAzCJDkkcCSa959HQtqBvUlECUDMli93
         9HMzcxd2NNFI80qA1U2NmJ4uTZbRGbgCY0HOL/U6TgeZcXwNYIfG7jq8/tigB5oQvy6Y
         cNgrQ6YWlxaaePsyn0MGinOpP3c+qdSJgf7IZmuhoMDBQkQUeFnksWUCQ+guQHgArSps
         IucwP/v2WXUbYlyWMvlGadIJfagak3VQTIbNB58JHs7P6TxX5kTckK666FfAuwxlijH6
         WbOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject;
        bh=y09antcD56zGoG6uTOLUFR+TElo6nzopzHoginYtkfY=;
        b=eRsT+GWmaWyMS2GF6eMLBxKkY5Wv2noh1OrXeOjkZvcHz2LZTkho1Z+lbZ1GJqQiul
         LldnD8p9yXVsfyjB4zhcEvsgitakMjEsEMF9lU4ydP60OUTbInCYBm3szs0eOZz03qEO
         sNzFMJF9nHIGDVKUUEqSnm6Y88TlS7YAGUesl+7hyk8adN2keeUUIboO2nHSupQGNpGK
         59SP2Lpm1uXR9j6vvMkmDDi6HWuvzgovoyFNUX0FvHcgJAoMnGddxm7e3olsQfD3NTeY
         wRkdaVnY4LWbeUDKEkbYR1ohwGp397Au8khM/mHyq1YgWol4EcWJISVVkNAy4d2o2A3M
         gg7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam1.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id q1si44418qti.2.2019.11.21.17.30.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Nov 2019 17:30:36 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-DB.hygon.cn ([172.23.18.60])
	by spam1.hygon.cn with ESMTP id xAM1U6up016862;
	Fri, 22 Nov 2019 09:30:06 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-DB.hygon.cn with ESMTP id xAM1TwWk074705;
	Fri, 22 Nov 2019 09:29:58 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from [172.20.21.12] (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Fri, 22 Nov
 2019 09:30:03 +0800
Subject: Re: Fwd: [PATCH] NTB: Fix an error in get link status
From: Jiasen Lin <linjiasen@hygon.cn>
To: Sanjay R Mehta <sanmehta@amd.com>
CC: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        linux-kernel
	<linux-kernel@vger.kernel.org>,
        linux-ntb <linux-ntb@googlegroups.com>, <linjiasen007@gmail.com>
References: <1573119336-107732-1-git-send-email-linjiasen@hygon.cn>
 <CAPoiz9wAJz=Hqb6Os=9AHHv_NGpZ8uCaAuOC=aUTkASKdfs9WQ@mail.gmail.com>
 <933f74c7-7249-618c-13dc-9e4e47ad75d7@hygon.cn>
 <11b355a8-0fe0-f256-c510-ddf106017703@hygon.cn>
 <CAADLhr7bpb-F0eF1UFXy7AcN=z061mno_QsqGE8z-mvWKvUyCQ@mail.gmail.com>
 <04b4d1ed-ea47-819e-a7e4-b729fa463506@amd.com>
 <5c3155b5-6eed-d955-b18b-59b0cb1c513b@hygon.cn>
Message-ID: <740bb924-b258-8dda-6469-bc1bee90291f@hygon.cn>
Date: Fri, 22 Nov 2019 09:27:56 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <5c3155b5-6eed-d955-b18b-59b0cb1c513b@hygon.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex02.Hygon.cn (172.23.18.12) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam1.hygon.cn xAM1U6up016862
X-DNSRBL: 
X-Original-Sender: linjiasen@hygon.cn
X-Original-Authentication-Results: gmr-mx.google.com;       spf=permerror
 (google.com: permanent error in processing during lookup of
 linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
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



On 2019/11/21 21:30, Jiasen Lin wrote:
>=20
>=20
> On 2019/11/20 22:13, Sanjay R Mehta wrote:
>> From: *Jiasen Lin* <linjiasen@hygon.cn <mailto:linjiasen@hygon.cn>>
>>> Date: Wed, Nov 20, 2019 at 3:25 PM
>>> Subject: Re: [PATCH] NTB: Fix an error in get link status
>>> To: Jon Mason <jdmason@kudzu.us <mailto:jdmason@kudzu.us>>
>>> Cc: S-k, Shyam-sundar <Shyam-sundar.S-k@amd.com=20
>>> <mailto:Shyam-sundar.S-k@amd.com>>, Dave Jiang <dave.jiang@intel.com=20
>>> <mailto:dave.jiang@intel.com>>, Allen Hubbe <allenbh@gmail.com
>>> <mailto:allenbh@gmail.com>>, linux-kernel=20
>>> <linux-kernel@vger.kernel.org <mailto:linux-kernel@vger.kernel.org>>,=
=20
>>> linux-ntb <linux-ntb@googlegroups.com=20
>>> <mailto:linux-ntb@googlegroups.com>>,
>>> <linjiasen007@gmail.com <mailto:linjiasen007@gmail.com>>, Jiasen Lin=20
>>> <linjiasen@hygon.cn <mailto:linjiasen@hygon.cn>>
>>>
>>>
>>>
>>>
>>> On 2019/11/18 18:17, Jiasen Lin wrote:
>>>>
>>>>
>>>> On 2019/11/18 7:00, Jon Mason wrote:
>>>>> On Thu, Nov 7, 2019 at 4:37 AM Jiasen Lin <linjiasen@hygon.cn=20
>>>>> <mailto:linjiasen@hygon.cn>> wrote:
>>>>>>
>>>>>> The offset of PCIe Capability Header for AMD and HYGON NTB is 0x64,
>>>>>> but the macro which named "AMD_LINK_STATUS_OFFSET" is defined as=20
>>>>>> 0x68.
>>>>>> It is offset of Device Capabilities Reg rather than Link Control Reg=
.
>>>>>>
>>>>>> This code trigger an error in get link statsus:
>>>>>>
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat /sys/kern=
el/debug/ntb_hw_amd/0000:43:00.1/info
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x8fa1
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Up
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI-E Gen 0
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x0
>>>>>>
>>>>>> This patch use pcie_capability_read_dword to get link status.
>>>>>> After fix this issue, we can get link status accurately:
>>>>>>
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat /sys/kern=
el/debug/ntb_hw_amd/0000:43:00.1/info
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x11030042
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Up
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI-E Gen 3
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x16
>>>>>
>>>>> No response from AMD maintainers, but it looks like you are correct.
>>>>>
>>>>> This needs a "Fixes:" line here.=C2=A0 I took the liberty of adding o=
ne to
>>>>> this patch.
>>>>>
>>>>
>>>> Thank you for your suggestions. Yes, this patch fix the commit id:
>>>> a1b3695 ("NTB: Add support for AMD PCI-Express Non-Transparent=20
>>>> Bridge").
>>>>
>>>>>> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn=20
>>>>>> <mailto:linjiasen@hygon.cn>>
>>>>>> ---
>>>>>> =C2=A0=C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.c | 5 +++--
>>>>>> =C2=A0=C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.h | 1 -
>>>>>> =C2=A0=C2=A0 2 files changed, 3 insertions(+), 3 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>>> b/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>>> index 156c2a1..ae91105 100644
>>>>>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>>> @@ -855,8 +855,8 @@ static int amd_poll_link(struct amd_ntb_dev=20
>>>>>> *ndev)
>>>>>>
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->cntl_st=
a =3D reg;
>>>>>>
>>>>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pci_read_config_dword(n=
dev->ntb.pdev,
>>>>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 AMD_LINK_STATUS_O=
FFSET, &stat);
>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pcie_capability_read_dw=
ord(ndev->ntb.pdev,
>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI_EXP_LNKCTL, &=
stat);
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (rc)
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->lnk_sta=
 =3D stat;
>>>>>> @@ -1139,6 +1139,7 @@ static const struct ntb_dev_data dev_data[] =
=3D {
>>>>>> =C2=A0=C2=A0 static const struct pci_device_id amd_ntb_pci_tbl[] =3D=
 {
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE=
(AMD, 0x145b), (kernel_ulong_t)&dev_data[0] },
>>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE=
(AMD, 0x148b), (kernel_ulong_t)&dev_data[1] },
>>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE(HYGON, 0x145b), =
(kernel_ulong_t)&dev_data[0] },
>>>>>
>>>>> This should be a separate patch.=C2=A0 I took the liberty of splittin=
g it
>>>>> off into a unique patch and attributing it to you.=C2=A0 I've pushed =
them
>>>>> to the ntb-next branch on
>>>>> https://github.com/jonmason/ntb
>>>>>
>>>> Thank you for your comment. We appreciate the time and effort you have
>>>> spent to split it off, I will test it ASAP.
>>>>
>>>>> Please verify everything looks acceptable to you (given the changes I
>>>>> did above that are attributed to you).=C2=A0 Also, testing of the lat=
est
>>>>> code is always appreciated.
>>>>>
>>>>> Thanks,
>>>>> Jon
>>>>>
>>>
>>> I have tested these patches that are pushed to ntb-next branch, they
>>> work well on HYGON platforms.
>>>
>>> Thanks,
>>> Jiasen Lin
>>
>> Hi Jiasen Lin,
>>
>> Apologies for my delayed response. I was on vacation.
>>
>> Your patch is a correct fix, but that would work only for primary system=
.
>>
>> The design of AMD NTB implementation is such that NTB primary acts as=20
>> an endpoint device and NTB secondary is a PCIe Root Port (RP).=20
>> Considering that,
>> the link status and control register needs to be accessed differently=20
>> based on the NTB topology.
>>
>> So in the case of NTB secondary, we read the link status and control=20
>> register of the PCIe RP capabilities structure and in the case of NTB=20
>> primary, we read the
>> link status and control register from NTB device capabilities structure.
>>
>> The code below is the proper fix for AMD platform. I will be sending=20
>> incremental change above your patch.
>>
>> would appreciate if you could test my patch and let me know whether=20
>> that works for you.
>>
>=20
> Dhyana CPU dones not support data transfer while both sides of PCIe link=
=20
> are configured as NTB, in other word, Dhyana only support NTB that is=20
> connected to RP rather than NT to NT.
>=20
> As illustrated in the following topology, NTB consists of two PCIe=20
> endpoints, a Primary NTB, and a Secondary NTB. Primary CPU can find=20
> Priamry NTB, while Secondary NTB, Secondary internal SW.ds and Secondary=
=20
> internal SW.ds are enumerated by secondary CPU.
>=20
> In this topology, to remove any ambiguity, your suggestion is more=20
> accurate method to get link status of NTB.
>=20
> In primary PCI domain:
> Primary RP--Primary NTB----------------------------------------
> 40:04.1-------41:00.1(Pri NTB)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | In=
=20
> secondary PCI domain:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |
> Secondary RP--Secondary SW.us--Secondary SW.ds--Secondary NTB--
> 40:03.1---------41:00.0---------42:00.0---------43:00.1(Sec NTB)
>=20

Hi Sanjay R Mehta

In more complex topology, read the Link Status and Control register of=20
RP is also wrong. Suppose that a PCIe switch bridge to the Secondary RP,=20
and Secondary internal SW.ds is a child device for switch's downstream=20
port as illustrated in the following topology.

In secondary PCI domain:
Secondary RP--Switch UP--Switch DP--Secondary internal SW.us--Secondary=20
internal SW.ds--Secondary NTB

pci_rp =3D pci_find_pcie_root_port(ndev->ntb.pdev) will return the=20
Secondary RP, and pcie_capability_read_dword(pci_rp,=20
PCI_EXP_LNKCTL,&stat) will get the link status between Secondary RP and=20
Switch UP. Maybe, read the Link Status and control register of Secondary=20
internal SW.us is appropriate.

struct pci_dev *pci_up =3D NULL;
struct pci_dev *pci_dp =3D NULL;

if (ndev->ntb.topo =3D=3D NTB_TOPO_SEC) {
     /* Locate the pointer to Secondary up for this device */
     pci_dp =3D pci_upstream_bridge(ndev->ntb.pdev);
     /* Read the PCIe Link Control and Status register */
     if (pci_dp) {
	pci_up =3D pci_upstream_bridge(pci_dp);
	if (pci_up) {
		rc =3D pcie_capability_read_dword(pci_up, PCI_EXP_LNKCTL,
                         &stat);
         	if (rc)
            		return 0;
		}=09
	}
}

Thanks,
Jiansen Lin

> I have modified the code according to your suggestion and tested it
> on Dhyana platform, it works well, expect to receice your patch.
>=20
> Before modify the code, read the Link Status and control register of the=
=20
> secondary NTB device to get link status.
>=20
> cat /sys/kernel/debug/ntb_hw_amd/0000\:43\:00.1/info
> NTB Device Information:
> Connection Topology -=C2=A0=C2=A0 NTB_TOPO_SEC
> LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 0x11030042
> Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Up
> Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 PCI-E Gen 3
> Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 x16
>=20
> After modify the code, read the Link Status and control register of the=
=20
> secondary RP to get link status.
>=20
> cat /sys/kernel/debug/ntb_hw_amd/0000\:43\:00.1/info
> NTB Device Information:
> Connection Topology -=C2=A0=C2=A0 NTB_TOPO_SEC
> LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 0x70830042
> Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 Up
> Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 PCI-E Gen 3
> Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 x8
>=20
> Thanks,
> Jiasen Lin
>=20
>> ---
>> =C2=A0=C2=A0drivers/ntb/hw/amd/ntb_hw_amd.c | 27 +++++++++++++++++++++++=
----
>> =C2=A0=C2=A0drivers/ntb/hw/amd/ntb_hw_amd.h |=C2=A0 1 -
>> =C2=A0=C2=A02 files changed, 23 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c=20
>> b/drivers/ntb/hw/amd/ntb_hw_amd.c
>> index 14ad69c..91e1966 100644
>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
>> @@ -842,6 +842,8 @@ static inline void ndev_init_struct(struct=20
>> amd_ntb_dev *ndev,
>> =C2=A0=C2=A0static int amd_poll_link(struct amd_ntb_dev *ndev)
>> =C2=A0=C2=A0{
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 void __iomem *mmio =3D ndev->peer_mmio;
>> +=C2=A0=C2=A0=C2=A0 struct pci_dev *pci_rp =3D NULL;
>> +=C2=A0=C2=A0=C2=A0 struct pci_dev *pdev =3D NULL;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 reg, stat;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int rc;
>> @@ -855,10 +857,27 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->cntl_sta =3D reg;
>> -=C2=A0=C2=A0=C2=A0 rc =3D pci_read_config_dword(ndev->ntb.pdev,
>> -=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0 AMD_LINK_STATUS_OFFSET, &stat);
>> -=C2=A0=C2=A0=C2=A0 if (rc)
>> -=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return 0;
>> +=C2=A0=C2=A0=C2=A0 if (ndev->ntb.topo =3D=3D NTB_TOPO_SEC) {
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /* Locate the pointer to PCIe Roo=
t Port for this device */
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 pci_rp =3D pci_find_pcie_root_por=
t(ndev->ntb.pdev);
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /* Read the PCIe Link Control and=
 Status register */
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (pci_rp) {
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 rc =3D pcie_ca=
pability_read_dword(pci_rp, PCI_EXP_LNKCTL,
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &stat);
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (rc)
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=
=C2=A0 return 0;
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }
>> +=C2=A0=C2=A0=C2=A0 } else if (ndev->ntb.topo =3D=3D NTB_TOPO_PRI) {
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /*
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* For NTB primary, we simpl=
y read the Link Status and control
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* register of the NTB devic=
e itself.
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0*/
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 pdev =3D ndev->ntb.pdev;
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 rc =3D pcie_capability_read_dword=
(pdev, PCI_EXP_LNKCTL, &stat);
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (rc)
>> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return 0;
>> +=C2=A0=C2=A0=C2=A0 }
>> +
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->lnk_sta =3D stat;
>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 1;
>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h=20
>> b/drivers/ntb/hw/amd/ntb_hw_amd.h
>> index 139a307..39e5d18 100644
>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.h
>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
>> @@ -53,7 +53,6 @@
>> =C2=A0=C2=A0#include <linux/pci.h>
>> =C2=A0=C2=A0#define AMD_LINK_HB_TIMEOUT=C2=A0=C2=A0=C2=A0 msecs_to_jiffi=
es(1000)
>> -#define AMD_LINK_STATUS_OFFSET=C2=A0=C2=A0=C2=A0 0x68
>> =C2=A0=C2=A0#define NTB_LIN_STA_ACTIVE_BIT=C2=A0=C2=A0=C2=A0 0x00000002
>> =C2=A0=C2=A0#define NTB_LNK_STA_SPEED_MASK=C2=A0=C2=A0=C2=A0 0x000F0000
>> =C2=A0=C2=A0#define NTB_LNK_STA_WIDTH_MASK=C2=A0=C2=A0=C2=A0 0x03F00000
>>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/740bb924-b258-8dda-6469-bc1bee90291f%40hygon.cn.

Return-Path: <linux-ntb+bncBAABBK5E3LXAKGQEZSWZMPQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF1D105324
	for <lists+linux-ntb@lfdr.de>; Thu, 21 Nov 2019 14:33:33 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id v23sf2250222qth.20
        for <lists+linux-ntb@lfdr.de>; Thu, 21 Nov 2019 05:33:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574343212; cv=pass;
        d=google.com; s=arc-20160816;
        b=KJQhRMJ7ARUpo59sfRbr5QnoY3ULofu1ikWD2lrpS2vXwXH9K2lGP6EfQMwYCLZIG1
         TsIzeWJzEs2r3yav+EYU3JdK6PXqTZEA6xZ02joeDPShDq+saqBykcgZUMA06mffJffW
         Cv65sRvRkecmOYGQ9jmGUar8okuNcpOJimYT+G+S/8MvnGCMsJZwpEHvDlBOuUbM6n36
         Oc6yVPget8cKEg1hI61DxSraDIX880odXpkDIkUR9o4Tjkx051VhcwR8JlbxXF+ybhdu
         Go2mUc0kofvQcxpMwzDMV87ZK34KItM4MjRRb3j9DI3F+ux03+fUtYu1iGQXS0TobfE7
         av4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=aSTZX34kZup22cvuaTor1AVk6xEXshHh5HYYftqkN2k=;
        b=OikSpOndk9eelWBOtWDDBlcpHg+9iFuYrOD2ID6TR1ovC+CEE65EldeSacv+LiRqSa
         0wFB1j0QSe8ulSXmvySpePHHq0x/f9gUDUEc9EkUsxk0aTROIazwBXXRY6YgdsyEGUqg
         FQNBd16IPCdx04f8KrgELa3j0KpNbDhdkIU4jQUqQRbTuarMZeJuRE3T4gFReWFiIzhZ
         PirqZJOpC270ut+WjlP0N6kyku0JSTLZ/ehvn8ikzUdL8Zg2sEcjlKEsym67xxOVOwwu
         Sf54HKVJMWK5NjMPy0XtCSOefQaOnm/3DxzarIAkgZ/gz2lmzhcpTHOyFENw8gYLww1m
         Ryog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aSTZX34kZup22cvuaTor1AVk6xEXshHh5HYYftqkN2k=;
        b=djHP6dzeesrH5oGaBCOlD2Xd4gvA6UAYSb+oacMX96f9a2hR7FdSlw4Gdp0HoinA00
         1lMIh2vnEbmAcUUAvwp3puDSALOTgwu/ad0sj2oILenq+25euZlvrGBKDQdvjFHPdGfv
         2N+L41iBWQ7pD2DwfZhVPTQKsS/TWECtwg2xbKoG0GMYYC1SlE89bX64uK9JLwjFAKD1
         /HDaFiNld62LtSN4+XAMcpxo4UrTsM6KORqWfstv4x8PRmP0zTb225h1GlHrDqNi0Ul0
         GORCjv/S/7F8gbdhJFQ0KzJ74GdLxMuPkCJbyVtHhHdqW8Buv9XrbbHozWvK4ikyJmAa
         JB5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aSTZX34kZup22cvuaTor1AVk6xEXshHh5HYYftqkN2k=;
        b=AGRjH8iHa49wIQuEai7yaqoWHZM7LX0lJsf9wzm0sZPjbogu4Y7GFA8ckYdZDETEJj
         /4xQ6WIfw0pLF2BHVMY0giT6h+wulxhzO0BkIBCCaGQJ+Cl51gB1l1AIOzkkqvkfBHH+
         NkcMTIrZ/8XZpECuA2Ix2elB14hR3J6c6TFfWp7SwqPT9R2vHddw+NyCA2Dp2DBaYGPn
         /owOdNuyL1YU+jCEcpZqzKHfGXM2CPPRWTv8jdRmX8aVL34l8tT1Pkdsw6Sr4m9bPske
         Xtyb9TMoJX3wp9nXZRCd9bShoD3bk1qAkPJESu076nw3/24Z9zzSF3ClVvxD7bs/RpGZ
         AM/Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV7o5pODxxAtsk9QHUKa4n4Pu9eVCQIvgqJFf+x/L9CreAqRTDz
	2vK2jeRqPXD/xrXwtA5bkBo=
X-Google-Smtp-Source: APXvYqyfavSJaMP7R0T9p1jIytWtrPfYheI1RkGPkGxkZUjw/SnRY8nshLeApBJ3cqkbGDOxderpmw==
X-Received: by 2002:ac8:74c3:: with SMTP id j3mr8396209qtr.113.1574343212131;
        Thu, 21 Nov 2019 05:33:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ad4:4a08:: with SMTP id m8ls1012891qvz.5.gmail; Thu, 21 Nov
 2019 05:33:31 -0800 (PST)
X-Received: by 2002:ad4:4894:: with SMTP id bv20mr8020171qvb.132.1574343211491;
        Thu, 21 Nov 2019 05:33:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574343211; cv=none;
        d=google.com; s=arc-20160816;
        b=OgjITwd4FAszfE94Nrhu6+PXwp0QoVx6DLKGJETl22ryt2KFimc2IL7it2PlVlEw4J
         ik0KNtPHGm4BWnFGTxm8z06HPj5RuD0ZUDCvkFfzbKeON0RnvNpeTQHQgOMSelt1n4EZ
         DYxSWITUgW+OQxn4vmquJcxdIsy850DxGiPCW5PbpORn6IbdHcoylCIyb/jtIaq+XORd
         lJP+MhFWJcBhBoBXyPIVLz49kH3rHkxiYxiR3TXNh5QKyBRurskKee9F6VKyE+TyJLWE
         heN11+T3cYeut9snIZv+uS0pJuNT5b9mxPYAFUXam+nQqtS55IRKS58nMz19EtZFQ2tt
         kkRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=I4duG8QfIqknSK8lSNDxwv7X93Odv0nIWqlBTwxj3Xw=;
        b=uzsbrNzn+cqwjekV58QrDOAh6KCZNpR27lsUguaLay4IHdUc5TKbpcUKj1J/s94dw+
         U0NzKJ1ZHk2n1y57v+90AHJ0p+9m1uzGPHkRh9jgxZk2wCvEAbsvaLxhev4EpCUwgWTM
         29y4gI6lNOOc7Z2fzmXvW6QFyIIbsPyy7GB5ksIcxId792aJcJ/OBvoIOFQmSGhXlsjD
         jCjTH3OYF22yAf+6MoiBM8lJqaCY+mXflKNXZCdsiKJDAtoxKEGrMzFbeZVJJvoZL2OG
         d9NB7l99hND1wQ+2I6YytXt4+qnITvFRqWx6WErCeWlyjVhf8q+d+9qxQnPU4KcLdB0J
         RgHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam1.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id x6si144590qkl.7.2019.11.21.05.33.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Nov 2019 05:33:29 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-FE.hygon.cn ([172.23.18.61])
	by spam1.hygon.cn with ESMTP id xALDWutZ014213;
	Thu, 21 Nov 2019 21:32:56 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-FE.hygon.cn with ESMTP id xALDWkiW088366;
	Thu, 21 Nov 2019 21:32:46 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from [172.20.21.12] (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Thu, 21 Nov
 2019 21:32:55 +0800
Subject: Re: Fwd: [PATCH] NTB: Fix an error in get link status
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
From: Jiasen Lin <linjiasen@hygon.cn>
Message-ID: <5c3155b5-6eed-d955-b18b-59b0cb1c513b@hygon.cn>
Date: Thu, 21 Nov 2019 21:30:36 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <04b4d1ed-ea47-819e-a7e4-b729fa463506@amd.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex01.Hygon.cn (172.23.18.10) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam1.hygon.cn xALDWutZ014213
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



On 2019/11/20 22:13, Sanjay R Mehta wrote:
> From: *Jiasen Lin* <linjiasen@hygon.cn <mailto:linjiasen@hygon.cn>>
>> Date: Wed, Nov 20, 2019 at 3:25 PM
>> Subject: Re: [PATCH] NTB: Fix an error in get link status
>> To: Jon Mason <jdmason@kudzu.us <mailto:jdmason@kudzu.us>>
>> Cc: S-k, Shyam-sundar <Shyam-sundar.S-k@amd.com <mailto:Shyam-sundar.S-k=
@amd.com>>, Dave Jiang <dave.jiang@intel.com <mailto:dave.jiang@intel.com>>=
, Allen Hubbe <allenbh@gmail.com
>> <mailto:allenbh@gmail.com>>, linux-kernel <linux-kernel@vger.kernel.org =
<mailto:linux-kernel@vger.kernel.org>>, linux-ntb <linux-ntb@googlegroups.c=
om <mailto:linux-ntb@googlegroups.com>>,
>> <linjiasen007@gmail.com <mailto:linjiasen007@gmail.com>>, Jiasen Lin <li=
njiasen@hygon.cn <mailto:linjiasen@hygon.cn>>
>>
>>
>>
>>
>> On 2019/11/18 18:17, Jiasen Lin wrote:
>>>
>>>
>>> On 2019/11/18 7:00, Jon Mason wrote:
>>>> On Thu, Nov 7, 2019 at 4:37 AM Jiasen Lin <linjiasen@hygon.cn <mailto:=
linjiasen@hygon.cn>> wrote:
>>>>>
>>>>> The offset of PCIe Capability Header for AMD and HYGON NTB is 0x64,
>>>>> but the macro which named "AMD_LINK_STATUS_OFFSET" is defined as 0x68=
.
>>>>> It is offset of Device Capabilities Reg rather than Link Control Reg.
>>>>>
>>>>> This code trigger an error in get link statsus:
>>>>>
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat /sys/kernel/deb=
ug/ntb_hw_amd/0000:43:00.1/info
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x8fa1
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Up
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI-E Gen 0
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x0
>>>>>
>>>>> This patch use pcie_capability_read_dword to get link status.
>>>>> After fix this issue, we can get link status accurately:
>>>>>
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat /sys/kernel/deb=
ug/ntb_hw_amd/0000:43:00.1/info
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x11030042
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Up
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI-E Gen 3
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x16
>>>>
>>>> No response from AMD maintainers, but it looks like you are correct.
>>>>
>>>> This needs a "Fixes:" line here.=C2=A0 I took the liberty of adding on=
e to
>>>> this patch.
>>>>
>>>
>>> Thank you for your suggestions. Yes, this patch fix the commit id:
>>> a1b3695 ("NTB: Add support for AMD PCI-Express Non-Transparent Bridge")=
.
>>>
>>>>> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn <mailto:linjiasen@hygon=
.cn>>
>>>>> ---
>>>>>  =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.c | 5 +++--
>>>>>  =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.h | 1 -
>>>>>  =C2=A0 2 files changed, 3 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>> b/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>> index 156c2a1..ae91105 100644
>>>>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>> @@ -855,8 +855,8 @@ static int amd_poll_link(struct amd_ntb_dev *ndev=
)
>>>>>
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->cntl_sta =3D =
reg;
>>>>>
>>>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pci_read_config_dword(nd=
ev->ntb.pdev,
>>>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 AMD_LINK_STATUS_O=
FFSET, &stat);
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pcie_capability_read_dwo=
rd(ndev->ntb.pdev,
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI_EXP_LNKCTL, &=
stat);
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (rc)
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->lnk_sta =3D s=
tat;
>>>>> @@ -1139,6 +1139,7 @@ static const struct ntb_dev_data dev_data[] =3D=
 {
>>>>>  =C2=A0 static const struct pci_device_id amd_ntb_pci_tbl[] =3D {
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE(AMD, =
0x145b), (kernel_ulong_t)&dev_data[0] },
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE(AMD, =
0x148b), (kernel_ulong_t)&dev_data[1] },
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE(HYGON, 0x145b), (=
kernel_ulong_t)&dev_data[0] },
>>>>
>>>> This should be a separate patch.=C2=A0 I took the liberty of splitting=
 it
>>>> off into a unique patch and attributing it to you.=C2=A0 I've pushed t=
hem
>>>> to the ntb-next branch on
>>>> https://github.com/jonmason/ntb
>>>>
>>> Thank you for your comment. We appreciate the time and effort you have
>>> spent to split it off, I will test it ASAP.
>>>
>>>> Please verify everything looks acceptable to you (given the changes I
>>>> did above that are attributed to you).=C2=A0 Also, testing of the late=
st
>>>> code is always appreciated.
>>>>
>>>> Thanks,
>>>> Jon
>>>>
>>
>> I have tested these patches that are pushed to ntb-next branch, they
>> work well on HYGON platforms.
>>
>> Thanks,
>> Jiasen Lin
>=20
> Hi Jiasen Lin,
>=20
> Apologies for my delayed response. I was on vacation.
>=20
> Your patch is a correct fix, but that would work only for primary system.
>=20
> The design of AMD NTB implementation is such that NTB primary acts as an =
endpoint device and NTB secondary is a PCIe Root Port (RP). Considering tha=
t,
> the link status and control register needs to be accessed differently bas=
ed on the NTB topology.
>=20
> So in the case of NTB secondary, we read the link status and control regi=
ster of the PCIe RP capabilities structure and in the case of NTB primary, =
we read the
> link status and control register from NTB device capabilities structure.
>=20
> The code below is the proper fix for AMD platform. I will be sending incr=
emental change above your patch.
>=20
> would appreciate if you could test my patch and let me know whether that =
works for you.
>=20

Dhyana CPU dones not support data transfer while both sides of PCIe link=20
are configured as NTB, in other word, Dhyana only support NTB that is=20
connected to RP rather than NT to NT.

As illustrated in the following topology, NTB consists of two PCIe=20
endpoints, a Primary NTB, and a Secondary NTB. Primary CPU can find=20
Priamry NTB, while Secondary NTB, Secondary internal SW.ds and Secondary=20
internal SW.ds are enumerated by secondary CPU.

In this topology, to remove any ambiguity, your suggestion is more=20
accurate method to get link status of NTB.

In primary PCI domain:
Primary RP--Primary NTB----------------------------------------
40:04.1-------41:00.1(Pri NTB)                                |=20

                                                               |=20
In secondary PCI domain:                                      |
Secondary RP--Secondary SW.us--Secondary SW.ds--Secondary NTB--
40:03.1---------41:00.0---------42:00.0---------43:00.1(Sec NTB)

I have modified the code according to your suggestion and tested it
on Dhyana platform, it works well, expect to receice your patch.

Before modify the code, read the Link Status and control register of the=20
secondary NTB device to get link status.

cat /sys/kernel/debug/ntb_hw_amd/0000\:43\:00.1/info
NTB Device Information:
Connection Topology -   NTB_TOPO_SEC
LNK STA -               0x11030042
Link Status -           Up
Link Speed -            PCI-E Gen 3
Link Width -            x16

After modify the code, read the Link Status and control register of the=20
secondary RP to get link status.

cat /sys/kernel/debug/ntb_hw_amd/0000\:43\:00.1/info
NTB Device Information:
Connection Topology -   NTB_TOPO_SEC
LNK STA -               0x70830042
Link Status -           Up
Link Speed -            PCI-E Gen 3
Link Width -            x8

Thanks,
Jiasen Lin

> ---
>  =C2=A0drivers/ntb/hw/amd/ntb_hw_amd.c | 27 +++++++++++++++++++++++----
>  =C2=A0drivers/ntb/hw/amd/ntb_hw_amd.h |=C2=A0 1 -
>  =C2=A02 files changed, 23 insertions(+), 5 deletions(-)
>=20
> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c b/drivers/ntb/hw/amd/ntb_hw_=
amd.c
> index 14ad69c..91e1966 100644
> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
> @@ -842,6 +842,8 @@ static inline void ndev_init_struct(struct amd_ntb_de=
v *ndev,
>  =C2=A0static int amd_poll_link(struct amd_ntb_dev *ndev)
>  =C2=A0{
>  =C2=A0=C2=A0=C2=A0=C2=A0 void __iomem *mmio =3D ndev->peer_mmio;
> +=C2=A0=C2=A0=C2=A0 struct pci_dev *pci_rp =3D NULL;
> +=C2=A0=C2=A0=C2=A0 struct pci_dev *pdev =3D NULL;
>  =C2=A0=C2=A0=C2=A0=C2=A0 u32 reg, stat;
>  =C2=A0=C2=A0=C2=A0=C2=A0 int rc;
>  =20
> @@ -855,10 +857,27 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
>  =20
>  =C2=A0=C2=A0=C2=A0=C2=A0 ndev->cntl_sta =3D reg;
>  =20
> -=C2=A0=C2=A0=C2=A0 rc =3D pci_read_config_dword(ndev->ntb.pdev,
> -=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0 AMD_LINK_STATUS_OFFSET, &stat);
> -=C2=A0=C2=A0=C2=A0 if (rc)
> -=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return 0;
> +=C2=A0=C2=A0=C2=A0 if (ndev->ntb.topo =3D=3D NTB_TOPO_SEC) {
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /* Locate the pointer to PCIe Root=
 Port for this device */
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 pci_rp =3D pci_find_pcie_root_port=
(ndev->ntb.pdev);
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /* Read the PCIe Link Control and =
Status register */
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (pci_rp) {
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 rc =3D pcie_cap=
ability_read_dword(pci_rp, PCI_EXP_LNKCTL,
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 &stat);
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (rc)
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=
=A0 return 0;
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 }
> +=C2=A0=C2=A0=C2=A0 } else if (ndev->ntb.topo =3D=3D NTB_TOPO_PRI) {
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 /*
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* For NTB primary, we simply=
 read the Link Status and control
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0* register of the NTB device=
 itself.
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0*/
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 pdev =3D ndev->ntb.pdev;
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 rc =3D pcie_capability_read_dword(=
pdev, PCI_EXP_LNKCTL, &stat);
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 if (rc)
> +=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 return 0;
> +=C2=A0=C2=A0=C2=A0 }
> +
>  =C2=A0=C2=A0=C2=A0=C2=A0 ndev->lnk_sta =3D stat;
>  =20
>  =C2=A0=C2=A0=C2=A0=C2=A0 return 1;
> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h b/drivers/ntb/hw/amd/ntb_hw_=
amd.h
> index 139a307..39e5d18 100644
> --- a/drivers/ntb/hw/amd/ntb_hw_amd.h
> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
> @@ -53,7 +53,6 @@
>  =C2=A0#include <linux/pci.h>
>  =20
>  =C2=A0#define AMD_LINK_HB_TIMEOUT=C2=A0=C2=A0=C2=A0 msecs_to_jiffies(100=
0)
> -#define AMD_LINK_STATUS_OFFSET=C2=A0=C2=A0=C2=A0 0x68
>  =C2=A0#define NTB_LIN_STA_ACTIVE_BIT=C2=A0=C2=A0=C2=A0 0x00000002
>  =C2=A0#define NTB_LNK_STA_SPEED_MASK=C2=A0=C2=A0=C2=A0 0x000F0000
>  =C2=A0#define NTB_LNK_STA_WIDTH_MASK=C2=A0=C2=A0=C2=A0 0x03F00000
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/5c3155b5-6eed-d955-b18b-59b0cb1c513b%40hygon.cn.

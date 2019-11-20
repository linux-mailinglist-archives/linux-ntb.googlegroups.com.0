Return-Path: <linux-ntb+bncBAABBA432TXAKGQEPIJNPUI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 38952103706
	for <lists+linux-ntb@lfdr.de>; Wed, 20 Nov 2019 10:55:17 +0100 (CET)
Received: by mail-il1-x138.google.com with SMTP id l63sf21972000ili.17
        for <lists+linux-ntb@lfdr.de>; Wed, 20 Nov 2019 01:55:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574243716; cv=pass;
        d=google.com; s=arc-20160816;
        b=xW+Ul+11YP82ok6twOc/U/588lNNB+78JO932+WDUUcjZvq50+xMRWwctqnB6KdIQs
         quaoxC6VGuFCCKhhFgQOkxVYyQc+HFqZlLvMBojzWl1IMVsjCQkP5vwtub3a384s+0WC
         skCpH/IPpU63gi+6X/t2v5Ba2yQ63UMRgu4XcA9Kqnpce+Fv3+pPlfddc6I42xCFJvmg
         lkE4rHBU/GvnqvVi5MD5kIENtnBXbaBZykwCUT6PCDA37LtEtWJZJE5Ly/PxbzWjSK/Z
         DkCLcAt9K+1B+Tq3uTQVY4AXKdt5hgbSUBY9TzDvl1+ZRwhnS6XhcK0BeK+W0N54xG6O
         ozeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=h26D1GwNbwfnA6K9vqTnJ18q3+4oudNbAl1dxwkZ/I4=;
        b=EFlNf7i05a5gGgcXwpI9jCRXNzRZAGkzKYu5YKzdpcSEHl5eCOmoKQ3+hcR1lJ4Ik0
         eH5h++5qAWk5UAnQfdyoOb4CydR85PNAVLh+wl9rj1lTs3B8RHBQE+oyNhqYyrGbu1fP
         TTv/Po8U7ehssYkycZs/Jf0c+u4wjiF+36mK9ZwPU+ZfrJd19eubbwpLR33r0n/kUQLk
         90+njEZ9jR2Q4BDIMj/MdbdRN89bdtOOQexF+u7jQSFdCwk7Zzet6Bitoqgsli1yJKFi
         i1HTH+GqtJEP7+px0bVpTkXZ42BkQenYzlVyV/+Sa1MsnHxkontQZ9bFO0w9iJZ1NxmU
         2dUg==
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
        bh=h26D1GwNbwfnA6K9vqTnJ18q3+4oudNbAl1dxwkZ/I4=;
        b=sTlfUIH7p6mYNxrNQNFum5KkUb7Qe5lQxlmHF5GjSmz7qdl7nt398/q0gc0ftF3ovY
         tRT6fstXh+8T9wZylAzuuomnzr2qBZ1hztmxN71C1+y8tRB67PB7i1n53bi7Zdb2onV7
         Mt0aSH/zR6y4EY7QSnpWT8UbRRSRfL25a5gksVP/XGQI8MoOycrWDF12dHU5N6+gTfv+
         xrcP39uUhFn3FBLnTczubq9/Ttrr0rIkcHenodfqm5qpDKXZsdoZhSHZRewegVRRXWpF
         /9beYxtEQZfP1ZL/S5dHn1/RDSs2PGl/2CXpMWPtanc3uhBMWyTvVp21KjSHrSk+pWhf
         Jv/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h26D1GwNbwfnA6K9vqTnJ18q3+4oudNbAl1dxwkZ/I4=;
        b=F4xSzrK5BSPbLdIkhw7+yTsEbuhAGApaihGOkDaD4m+Qp8jU5Oypwi+gvGHmgAeBBv
         WZc+jVVw1KPTLtfm3+MyuGoD8OvRVIZL5YC3Gz3kJg1gm+UgPKwANoshDVYRnQUzGYw8
         SoqBBFOR3XTUj5pdXqH0hVfiMHoZ0cNTMe4mBbMCWeeMdu2QcUAlpOLtXTsjmtY7Ley+
         OmZubhUUhf40Uyw7ZKHgJxDmUuJuSYTdjEnaDqh81FnBUtpK1uQNHZ3U3/qF6tzSe1gd
         kjfotOkKEjxeRbmKkEaiOGbXw0LZoWG+tq/2Ce5a75CJM1ZOrBloE5oca4khQ3Yc6bys
         Bmlw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVZSiNce5DSmFhcLp4mQ2p+gGsKw+BcxRn1RWCQmPNvzlKmXy8N
	CA+bNI3ZFByfpwjovnxH3Rc=
X-Google-Smtp-Source: APXvYqxkWifFtOP+gAsJch6RFgKuQKA1TO+sjy9NYF0x/9Izi//2jCGrbeZCZwwP2sCIJsNCrqhGgg==
X-Received: by 2002:a02:ac0a:: with SMTP id a10mr2369582jao.53.1574243715931;
        Wed, 20 Nov 2019 01:55:15 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:cc91:: with SMTP id x17ls289282ilo.14.gmail; Wed, 20 Nov
 2019 01:55:15 -0800 (PST)
X-Received: by 2002:a92:48cf:: with SMTP id j76mr2400075ilg.189.1574243715613;
        Wed, 20 Nov 2019 01:55:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574243715; cv=none;
        d=google.com; s=arc-20160816;
        b=g5+x9QT0MQ4DX7L6y05/xiEkHZQIHvRVBcsMoBdHfeEOw9qdtYzahywWGrWru27Gqh
         u2aVKgEh4ouOWK/5xXos10bDzs1hAWpjk5+eJqN5SmUicjxILKaYQTIbI2N7LdQqI9OQ
         vVdDTtYY167EgKAVotWgvT8TqGLSROBt8imGHNSREs/1iIerZDSb49Cej4FVrJCHsqP3
         NhCsx5EEmp3G5QawuG7k0Y3EfkTEuz5bYQG2kwPVzDqLpaFTh0t+KPUSmygVDkbih9d8
         10B2VnmVdBPBqaqE7MzXyYVq8XMrClEnALr/0pNSVcweYRpRZJil51R7ucQrjC1veMdi
         T6fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject;
        bh=TcZz0r91KbJuNZBnVUXqYjSUcg8pf+k7kZ27cA+bdYg=;
        b=QHG4wA3xhlIHE8j0Ta6Im1I0R9dNrdFe4+3yrT9JyYlzZ+aeFG/RrvEcHJ4nae2lOf
         MAVd1dS4Dbi6ugOS6WJCdBa/d1QpUzKljKLuvD19KAFyCITX36CbS3AH0wZvowGr887a
         HjVwRMT9cu5X/7k/cXb812Cq7VoZXjQ/3qUj7iHJ2K7rDXmE4ZOt/o1kXC5roYGgWYPo
         bNimH7yiWE6vyb+ZPb6XPChXrpV3bHLrkW2YzImsjLSI9FkobjPxwPGyj6Rrj9hHApsM
         kOFCNxTE1M1eBabYDod7vqAk+DWHIazRh9vaaaNYe6iL4DjQ7NRC1GZTmaVtch07Iqih
         4w+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam2.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id 75si1057976ilw.3.2019.11.20.01.55.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Nov 2019 01:55:14 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-DB.hygon.cn ([172.23.18.60])
	by spam2.hygon.cn with ESMTP id xAK9t4Ww044238;
	Wed, 20 Nov 2019 17:55:04 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-DB.hygon.cn with ESMTP id xAK9swEk053992;
	Wed, 20 Nov 2019 17:54:58 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from [172.20.21.12] (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Wed, 20 Nov
 2019 17:55:00 +0800
Subject: Re: [PATCH] NTB: Fix an error in get link status
From: Jiasen Lin <linjiasen@hygon.cn>
To: Jon Mason <jdmason@kudzu.us>
CC: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        linux-kernel
	<linux-kernel@vger.kernel.org>,
        linux-ntb <linux-ntb@googlegroups.com>, <linjiasen007@gmail.com>,
        Jiasen Lin <linjiasen@hygon.cn>
References: <1573119336-107732-1-git-send-email-linjiasen@hygon.cn>
 <CAPoiz9wAJz=Hqb6Os=9AHHv_NGpZ8uCaAuOC=aUTkASKdfs9WQ@mail.gmail.com>
 <933f74c7-7249-618c-13dc-9e4e47ad75d7@hygon.cn>
Message-ID: <11b355a8-0fe0-f256-c510-ddf106017703@hygon.cn>
Date: Wed, 20 Nov 2019 17:52:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <933f74c7-7249-618c-13dc-9e4e47ad75d7@hygon.cn>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex02.Hygon.cn (172.23.18.12) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam2.hygon.cn xAK9t4Ww044238
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



On 2019/11/18 18:17, Jiasen Lin wrote:
>=20
>=20
> On 2019/11/18 7:00, Jon Mason wrote:
>> On Thu, Nov 7, 2019 at 4:37 AM Jiasen Lin <linjiasen@hygon.cn> wrote:
>>>
>>> The offset of PCIe Capability Header for AMD and HYGON NTB is 0x64,
>>> but the macro which named "AMD_LINK_STATUS_OFFSET" is defined as 0x68.
>>> It is offset of Device Capabilities Reg rather than Link Control Reg.
>>>
>>> This code trigger an error in get link statsus:
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat /sys/kernel/debug/=
ntb_hw_amd/0000:43:00.1/info
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x8fa1
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Up
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI-E Gen 0
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x0
>>>
>>> This patch use pcie_capability_read_dword to get link status.
>>> After fix this issue, we can get link status accurately:
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cat /sys/kernel/debug/=
ntb_hw_amd/0000:43:00.1/info
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0x11030042
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Up
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI-E Gen 3
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 x16
>>
>> No response from AMD maintainers, but it looks like you are correct.
>>
>> This needs a "Fixes:" line here.=C2=A0 I took the liberty of adding one =
to
>> this patch.
>>
>=20
> Thank you for your suggestions. Yes, this patch fix the commit id:=20
> a1b3695 ("NTB: Add support for AMD PCI-Express Non-Transparent Bridge").
>=20
>>> Signed-off-by: Jiasen Lin <linjiasen@hygon.cn>
>>> ---
>>> =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.c | 5 +++--
>>> =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.h | 1 -
>>> =C2=A0 2 files changed, 3 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c=20
>>> b/drivers/ntb/hw/amd/ntb_hw_amd.c
>>> index 156c2a1..ae91105 100644
>>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
>>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
>>> @@ -855,8 +855,8 @@ static int amd_poll_link(struct amd_ntb_dev *ndev)
>>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->cntl_sta =3D reg=
;
>>>
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pci_read_config_dword(ndev=
->ntb.pdev,
>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 AMD_LINK_STATUS_OFFS=
ET, &stat);
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pcie_capability_read_dword=
(ndev->ntb.pdev,
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 PCI_EXP_LNKCTL, &sta=
t);
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (rc)
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->lnk_sta =3D stat=
;
>>> @@ -1139,6 +1139,7 @@ static const struct ntb_dev_data dev_data[] =3D {
>>> =C2=A0 static const struct pci_device_id amd_ntb_pci_tbl[] =3D {
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE(AMD, 0x1=
45b), (kernel_ulong_t)&dev_data[0] },
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE(AMD, 0x1=
48b), (kernel_ulong_t)&dev_data[1] },
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { PCI_VDEVICE(HYGON, 0x145b), (ke=
rnel_ulong_t)&dev_data[0] },
>>
>> This should be a separate patch.=C2=A0 I took the liberty of splitting i=
t
>> off into a unique patch and attributing it to you.=C2=A0 I've pushed the=
m
>> to the ntb-next branch on
>> https://github.com/jonmason/ntb
>>
> Thank you for your comment. We appreciate the time and effort you have=20
> spent to split it off, I will test it ASAP.
>=20
>> Please verify everything looks acceptable to you (given the changes I
>> did above that are attributed to you).=C2=A0 Also, testing of the latest
>> code is always appreciated.
>>
>> Thanks,
>> Jon
>>

I have tested these patches that are pushed to ntb-next branch, they=20
work well on HYGON platforms.

Thanks,
Jiasen Lin

>>
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 { 0, }
>>> =C2=A0 };
>>> =C2=A0 MODULE_DEVICE_TABLE(pci, amd_ntb_pci_tbl);
>>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h=20
>>> b/drivers/ntb/hw/amd/ntb_hw_amd.h
>>> index 139a307..39e5d18 100644
>>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.h
>>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
>>> @@ -53,7 +53,6 @@
>>> =C2=A0 #include <linux/pci.h>
>>>
>>> =C2=A0 #define AMD_LINK_HB_TIMEOUT=C2=A0=C2=A0=C2=A0 msecs_to_jiffies(1=
000)
>>> -#define AMD_LINK_STATUS_OFFSET 0x68
>>> =C2=A0 #define NTB_LIN_STA_ACTIVE_BIT 0x00000002
>>> =C2=A0 #define NTB_LNK_STA_SPEED_MASK 0x000F0000
>>> =C2=A0 #define NTB_LNK_STA_WIDTH_MASK 0x03F00000
>>> --=20
>>> 2.7.4
>>>
>>> --=20
>>> You received this message because you are subscribed to the Google=20
>>> Groups "linux-ntb" group.
>>> To unsubscribe from this group and stop receiving emails from it,=20
>>> send an email to linux-ntb+unsubscribe@googlegroups.com.
>>> To view this discussion on the web visit=20
>>> https://groups.google.com/d/msgid/linux-ntb/1573119336-107732-1-git-sen=
d-email-linjiasen%40hygon.cn.=20
>>>
>=20
> Thanks,
>=20
> Jiasen Lin

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/11b355a8-0fe0-f256-c510-ddf106017703%40hygon.cn.

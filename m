Return-Path: <linux-ntb+bncBAABBGU6S7XQKGQE6KQLTPY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3a.google.com (mail-qv1-xf3a.google.com [IPv6:2607:f8b0:4864:20::f3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3754110F547
	for <lists+linux-ntb@lfdr.de>; Tue,  3 Dec 2019 03:57:32 +0100 (CET)
Received: by mail-qv1-xf3a.google.com with SMTP id w13sf1244162qvb.4
        for <lists+linux-ntb@lfdr.de>; Mon, 02 Dec 2019 18:57:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575341851; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pd91UiKWtTBhkS6dsn5xk7RflYYtZfq6jR5vTj8BdtMs8PgudjgDeGhj7mxIlnyHf9
         9ELct6P+iDcQPcwbKnyK4BXS1odVWueIjQW1grYH9qRPQLlGA1FEMpIDsp0CjDJjxVv3
         j/w5Or4HGCidAluadIZCRvazO+s22jp+GPOtxOVDSR0ScOiEkA80BU+H8TVIF5xe598L
         p/crHZ8dAW85peQv4Kczjjt39SIYIlyZI0otDPB3wlusLRUJ11rA/UOn1o52GsCCbaZu
         L0v+Wop198m3Ihfzrtl/veJTHbMiCe0ntjaWuppS8GcMNvTg+dxucWEdON2symRUTbeB
         7kQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=DaGSQgt8H22T3yxRk5fB+e55FvJUdVBTXPz26CpXgKU=;
        b=dEzXRPHksSbi2ryv/9eFbDP959HKuUvVajXobC5k5V//5XeHxETP3eG0WMAu5hKXta
         pViQ5xDdaRBKcQRMykFMrFLRBMn9ssMZewHZCeUwvBGYcxuek1R9BralgUsIUhqhXRcb
         4JvR1r7PBf4ZQ0o7eDNvjswduRP4xqm7X+ukXgHA0nonkBF+Pw0gBqFWZY5KFzbW9w+a
         rxPq1l0dPbxdwzmesxMF8/xc+829WikUp8iAVbfHY9G58JtLQYXulus6nLwRNAY5KW7U
         wEQVuigvnn2e0iGnV4/TjUvRYPC/hOAOudMEHvLpTVeRK9EYOeTJ5bW9QYsNm8+u+uaw
         Jq4w==
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
        bh=DaGSQgt8H22T3yxRk5fB+e55FvJUdVBTXPz26CpXgKU=;
        b=dTY5aFNZImHI51DzcyoEfL1ZS7pVxdv/GGvwe4iOId6cUMxiV6KSnb7fL/HXJNks7P
         U5uy4Ir/GJQfZK68uytgvjQZjlNfaF6USivKvmnJr34H7ps2DPJLpRSqec+j/zlXwMPZ
         ZUv+Jr96WKXi7z9QOFw5BNa5rTvVJAyfazJQEXW9I1ZWqqGlOgA2am9rT3eduuEp2r+P
         YK1lx2+JpIa5FH8iY0g2zfLJB0g+/53hJAzIhir3kaOci3QkiQCeqHnp1kRAU2SMhrck
         TsHbtk9cikyYqjUw5ocWFlRRg/O8pUg31qsMH0aSkBqINagwlJCKQCR854Koc213fAyx
         AZmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DaGSQgt8H22T3yxRk5fB+e55FvJUdVBTXPz26CpXgKU=;
        b=XmYgcrNOZqvXdewgUm5xgF80vTSM6qsWYLHI+zKAzmef60Rf+OTqOsKRFK/C96H+P9
         yzOREMv1JxAT1Db2eIs2u22BH6/xo8rVy+cGKGIcAF5/PPM/PaGWXju1lWQpHDRaS9Hz
         io+0+cixI9kpqjLAkJ7bZG3rl2hMfLrtAPgOBT/cJnQW7DRC9aG7G2A6h0B5rmntsTG3
         YcSOkpA7e/gPQervtpz/+4Gw/YCDV0xIRTU+2D4N5LerTAVi9W+Q6nom9BYEPuk030xd
         DjR93ziymKTDEQNUgx+Jz6Y9k804PoQmu7MW6sFw5H54i3QmYEOfZawDA7rqr1B91knh
         p3QA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWayMVvGzrFHwxO7t3K1YQV9GrutRDVx4AqFMooQYOT9ekF49QP
	SUw7gwSTaI6RGdXQJE9C2aU=
X-Google-Smtp-Source: APXvYqwImNgPZtGkWZ/OUykkpXiLk96gWmsyzvf226sBouePSY2Pqgatx/Achde0gYGMLZeax7X1kQ==
X-Received: by 2002:ac8:6ce:: with SMTP id j14mr3124094qth.231.1575341850950;
        Mon, 02 Dec 2019 18:57:30 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:68d3:: with SMTP id d202ls654321qkc.14.gmail; Mon, 02
 Dec 2019 18:57:30 -0800 (PST)
X-Received: by 2002:a37:b403:: with SMTP id d3mr2873196qkf.415.1575341850623;
        Mon, 02 Dec 2019 18:57:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575341850; cv=none;
        d=google.com; s=arc-20160816;
        b=yGXR4qYeDLdge6U2Pw6K3x4irBRF4siqX3JBA/a00ZoDetw5gSDjWz9A94hWGr4Cy0
         1DvUlGl6TLx//3G863iyozW59jnsgEK9tu6iUkpZgP/0v4psQqpinFRlb1bdZtTGQNJl
         bbeDUvEVT1jep+GmZdgWxgZqe2WDuhp7Om58BXajG45JNduuzi6FBlpC/MvJ+1A1/PDH
         Y1CmQD4M2CnF3v5XwDEw6AjYYXmcElyEAFR917CVMmqViNyXLMAkk+b/QhuA/9VJKSj4
         Eeya5EA6IG4Mi2E8nMDRbeXU/upqrbqi2l8pMDClNHx2nnRek8W2WO5+8cs49F6octoQ
         hxgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Y1zip896nv/IjX5uOpVmUOQw/78IZ8122XRb0M6npeA=;
        b=czRjo+tL5Hw8ldCLLlHl08Foer6JXtirllZMXrKoRTTBfaexiItxsIy2mtK3Hr8O4d
         GJC2wYS84ExIpaRl5Nq0kKl1dYZmnJg/arvziOpReJw1bltQVRNR1P9ofMu6xJjT88UT
         ErAmAUXm79E7JkqCeEQdQRGhynIZQsS5ZUpTISbJrr5B7bHaL5q+1aUEZSBncRDpwHVN
         zx1WMIfFS7FttCTmOpxQrRmcFs0M3JOdgCO1BN6H1BBUqAoj1Gv9IaRMhmgjPU0UrjoD
         R1ooBFaRp9DZFQO78AY7g07kdSpipkI8LzUV+jWvyM5C46ZVBU07tQejMzZktoLEeL3y
         9Tww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) smtp.mailfrom=linjiasen@hygon.cn;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=hygon.cn
Received: from spam2.hygon.cn ([110.188.70.11])
        by gmr-mx.google.com with ESMTPS id n22si73390qkg.2.2019.12.02.18.57.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Dec 2019 18:57:29 -0800 (PST)
Received-SPF: permerror (google.com: permanent error in processing during lookup of linjiasen@hygon.cn: sfp.safenext.cn not found) client-ip=110.188.70.11;
Received: from MK-DB.hygon.cn ([172.23.18.60])
	by spam2.hygon.cn with ESMTP id xB32v5sP060797;
	Tue, 3 Dec 2019 10:57:05 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from cncheex01.Hygon.cn ([172.23.18.10])
	by MK-DB.hygon.cn with ESMTP id xB32urhs026602;
	Tue, 3 Dec 2019 10:56:53 +0800 (GMT-8)
	(envelope-from linjiasen@hygon.cn)
Received: from [172.20.21.12] (172.23.18.44) by cncheex01.Hygon.cn
 (172.23.18.10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1466.3; Tue, 3 Dec 2019
 10:56:54 +0800
Subject: Re: Fwd: [PATCH] NTB: Fix an error in get link status
To: "Nath, Arindam" <Arindam.Nath@amd.com>,
        "Mehta, Sanju"
	<Sanju.Mehta@amd.com>
CC: "S-k, Shyam-sundar <Shyam-sundar.S-k@amd.com> Dave Jiang"
	<dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>,
        linux-kernel
	<linux-kernel@vger.kernel.org>,
        linux-ntb <linux-ntb@googlegroups.com>,
        "linjiasen007@gmail.com" <linjiasen007@gmail.com>
References: <1573119336-107732-1-git-send-email-linjiasen@hygon.cn>
 <CAPoiz9wAJz=Hqb6Os=9AHHv_NGpZ8uCaAuOC=aUTkASKdfs9WQ@mail.gmail.com>
 <933f74c7-7249-618c-13dc-9e4e47ad75d7@hygon.cn>
 <11b355a8-0fe0-f256-c510-ddf106017703@hygon.cn>
 <CAADLhr7bpb-F0eF1UFXy7AcN=z061mno_QsqGE8z-mvWKvUyCQ@mail.gmail.com>
 <04b4d1ed-ea47-819e-a7e4-b729fa463506@amd.com>
 <5c3155b5-6eed-d955-b18b-59b0cb1c513b@hygon.cn>
 <740bb924-b258-8dda-6469-bc1bee90291f@hygon.cn>
 <c5adca66-024f-8d37-3187-ffba73102ac4@amd.com>
 <MN2PR12MB323225CC169836056288CAA39C450@MN2PR12MB3232.namprd12.prod.outlook.com>
From: Jiasen Lin <linjiasen@hygon.cn>
Message-ID: <379b9b9f-5b8b-482d-4257-d156780a6fe1@hygon.cn>
Date: Tue, 3 Dec 2019 10:54:32 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <MN2PR12MB323225CC169836056288CAA39C450@MN2PR12MB3232.namprd12.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [172.23.18.44]
X-ClientProxiedBy: cncheex01.Hygon.cn (172.23.18.10) To cncheex01.Hygon.cn
 (172.23.18.10)
X-MAIL: spam2.hygon.cn xB32v5sP060797
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



On 2019/11/26 22:35, Nath, Arindam wrote:
>> -----Original Message-----
>> From: Mehta, Sanju <Sanju.Mehta@amd.com>
>> Sent: Tuesday, November 26, 2019 18:40
>> To: Jiasen Lin <linjiasen@hygon.cn>
>> Cc: S-k, Shyam-sundar <Shyam-sundar.S-k@amd.com> Dave Jiang
>> <dave.jiang@intel.com>; Nath, Arindam <Arindam.Nath@amd.com>; Allen
>> Hubbe <allenbh@gmail.com>; linux-kernel <linux-kernel@vger.kernel.org>;
>> linux-ntb <linux-ntb@googlegroups.com>; linjiasen007@gmail.com
>> Subject: Re: Fwd: [PATCH] NTB: Fix an error in get link status
>>
>>
>>> Hi Sanjay R Mehta
>>>
>>> In more complex topology, read the Link Status and Control register of
>>> RP is also wrong. Suppose that a PCIe switch bridge to the Secondary RP=
,
>>> and Secondary internal SW.ds is a child device for switch's downstream
>>> port as illustrated in the following topology.
>>>
>>> In secondary PCI domain:
>>> Secondary RP--Switch UP--Switch DP--Secondary internal SW.us--
>> Secondary
>>> internal SW.ds--Secondary NTB
>>>
>>> pci_rp =3D pci_find_pcie_root_port(ndev->ntb.pdev) will return the
>>> Secondary RP, and pcie_capability_read_dword(pci_rp,
>>> PCI_EXP_LNKCTL,&stat) will get the link status between Secondary RP and
>>> Switch UP. Maybe, read the Link Status and control register of Secondar=
y
>>> internal SW.us is appropriate.
>>>
>> Hi Jiansen Lin,
>>
>> I modified the code as per your suggestion and is working fine.
>> Adding Arindam for comments who was the co-author of the patch I was
>> about to send for upstream review.
>=20
> Hi Jiansen Lin,
>=20
> I am okay with the changes proposed by you. But one thing we need to keep
> in mind is that, the configuration SWUS+SWDS+EP as visible from the NTB
> secondary, might change in future AMD implementations where these interna=
l
> switches are not present anymore. So we might have to re-visit the patch
> again later.
>=20
> Thanks,
> Arindam
>=20

Hi Adridam
We can define a depth value that from secondary NTB EP to the real link=20
training device for the various devices, if internal switch is not
presnt in future. In amd_poll_link we traverse up the parent chain utill=20
the depth is reached.
Now, for device 145b, the depth is defined to 2, because only one
internal switch is implemented for secondary NTB. For device 148b, maybe
also one internal switch, I guess.

static const struct ntb_dev_data dev_data[] =3D {
	{ /* for device 145b */
		.mw_count =3D 3,
		.mw_idx =3D 1,
		.depth =3D 2,
	},
	{ /* for device 148b */
		.mw_count =3D 2,
		.mw_idx =3D 2,
		.depth =3D 2,/*maybe is 2, according to implementation of the 148b */
	},
};

static const struct pci_device_id amd_ntb_pci_tbl[] =3D {
	{ PCI_VDEVICE(AMD, 0x145b), (kernel_ulong_t)&dev_data[0] },
	{ PCI_VDEVICE(AMD, 0x148b), (kernel_ulong_t)&dev_data[1] },
	{ PCI_VDEVICE(HYGON, 0x145b), (kernel_ulong_t)&dev_data[0] },
	{ 0, }
};

Thanks,
Jiasen Lin
>>
>> Thanks,
>> Sanjay Mehta
>>> struct pci_dev *pci_up =3D NULL;
>>> struct pci_dev *pci_dp =3D NULL;
>>>
>>> if (ndev->ntb.topo =3D=3D NTB_TOPO_SEC) {
>>>  =C2=A0=C2=A0=C2=A0 /* Locate the pointer to Secondary up for this devi=
ce */
>>>  =C2=A0=C2=A0=C2=A0 pci_dp =3D pci_upstream_bridge(ndev->ntb.pdev);
>>>  =C2=A0=C2=A0=C2=A0 /* Read the PCIe Link Control and Status register *=
/
>>>  =C2=A0=C2=A0=C2=A0 if (pci_dp) {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pci_up =3D pci_upstream_bridge(pc=
i_dp);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (pci_up) {
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 rc =3D pcie_capability_read_dword(pci_up, PCI_EXP_LNKCTL,
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 &stat=
);
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 if (rc)
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 }
>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>>> }
>>>
>>> Thanks,
>>> Jiansen Lin
>>>
>>>> I have modified the code according to your suggestion and tested it
>>>> on Dhyana platform, it works well, expect to receice your patch.
>>>>
>>>> Before modify the code, read the Link Status and control register of t=
he
>>>> secondary NTB device to get link status.
>>>>
>>>> cat /sys/kernel/debug/ntb_hw_amd/0000\:43\:00.1/info
>>>> NTB Device Information:
>>>> Connection Topology -=C2=A0=C2=A0 NTB_TOPO_SEC
>>>> LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0x11030042
>>>> Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Up
>>>> Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 PCI-E Gen 3
>>>> Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 x16
>>>>
>>>> After modify the code, read the Link Status and control register of th=
e
>>>> secondary RP to get link status.
>>>>
>>>> cat /sys/kernel/debug/ntb_hw_amd/0000\:43\:00.1/info
>>>> NTB Device Information:
>>>> Connection Topology -=C2=A0=C2=A0 NTB_TOPO_SEC
>>>> LNK STA -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 0x70830042
>>>> Link Status -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 Up
>>>> Link Speed -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 PCI-E Gen 3
>>>> Link Width -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 x8
>>>>
>>>> Thanks,
>>>> Jiasen Lin
>>>>
>>>>> ---
>>>>>  =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.c | 27
>> +++++++++++++++++++++++----
>>>>>  =C2=A0 drivers/ntb/hw/amd/ntb_hw_amd.h |=C2=A0 1 -
>>>>>  =C2=A0 2 files changed, 23 insertions(+), 5 deletions(-)
>>>>>
>>>>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>> b/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>> index 14ad69c..91e1966 100644
>>>>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.c
>>>>> @@ -842,6 +842,8 @@ static inline void ndev_init_struct(struct
>>>>> amd_ntb_dev *ndev,
>>>>>  =C2=A0 static int amd_poll_link(struct amd_ntb_dev *ndev)
>>>>>  =C2=A0 {
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 void __iomem *mmio =3D ndev->peer_mmi=
o;
>>>>> +=C2=A0=C2=A0=C2=A0 struct pci_dev *pci_rp =3D NULL;
>>>>> +=C2=A0=C2=A0=C2=A0 struct pci_dev *pdev =3D NULL;
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 u32 reg, stat;
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 int rc;
>>>>> @@ -855,10 +857,27 @@ static int amd_poll_link(struct amd_ntb_dev
>> *ndev)
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->cntl_sta =3D reg;
>>>>> -=C2=A0=C2=A0=C2=A0 rc =3D pci_read_config_dword(ndev->ntb.pdev,
>>>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 AMD_LINK_STATUS_OFFSET, &stat);
>>>>> -=C2=A0=C2=A0=C2=A0 if (rc)
>>>>> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>>>>> +=C2=A0=C2=A0=C2=A0 if (ndev->ntb.topo =3D=3D NTB_TOPO_SEC) {
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Locate the pointer to =
PCIe Root Port for this device */
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pci_rp =3D pci_find_pcie_=
root_port(ndev->ntb.pdev);
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /* Read the PCIe Link Con=
trol and Status register */
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (pci_rp) {
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 r=
c =3D pcie_capability_read_dword(pci_rp, PCI_EXP_LNKCTL,
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 &stat);
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 i=
f (rc)
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 return 0;
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 }
>>>>> +=C2=A0=C2=A0=C2=A0 } else if (ndev->ntb.topo =3D=3D NTB_TOPO_PRI) {
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 /*
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * For NTB primary, =
we simply read the Link Status and control
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * register of the N=
TB device itself.
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pdev =3D ndev->ntb.pdev;
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 rc =3D pcie_capability_re=
ad_dword(pdev, PCI_EXP_LNKCTL, &stat);
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (rc)
>>>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 r=
eturn 0;
>>>>> +=C2=A0=C2=A0=C2=A0 }
>>>>> +
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ndev->lnk_sta =3D stat;
>>>>>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 1;
>>>>> diff --git a/drivers/ntb/hw/amd/ntb_hw_amd.h
>>>>> b/drivers/ntb/hw/amd/ntb_hw_amd.h
>>>>> index 139a307..39e5d18 100644
>>>>> --- a/drivers/ntb/hw/amd/ntb_hw_amd.h
>>>>> +++ b/drivers/ntb/hw/amd/ntb_hw_amd.h
>>>>> @@ -53,7 +53,6 @@
>>>>>  =C2=A0 #include <linux/pci.h>
>>>>>  =C2=A0 #define AMD_LINK_HB_TIMEOUT=C2=A0=C2=A0=C2=A0 msecs_to_jiffie=
s(1000)
>>>>> -#define AMD_LINK_STATUS_OFFSET=C2=A0=C2=A0=C2=A0 0x68
>>>>>  =C2=A0 #define NTB_LIN_STA_ACTIVE_BIT=C2=A0=C2=A0=C2=A0 0x00000002
>>>>>  =C2=A0 #define NTB_LNK_STA_SPEED_MASK=C2=A0=C2=A0=C2=A0 0x000F0000
>>>>>  =C2=A0 #define NTB_LNK_STA_WIDTH_MASK=C2=A0=C2=A0=C2=A0 0x03F00000
>>>>>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/379b9b9f-5b8b-482d-4257-d156780a6fe1%40hygon.cn.

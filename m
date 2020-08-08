Return-Path: <linux-ntb+bncBAABBPUAXP4QKGQEA7PVTBY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0614E23F802
	for <lists+linux-ntb@lfdr.de>; Sat,  8 Aug 2020 17:09:52 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id 4sf3969858pjf.5
        for <lists+linux-ntb@lfdr.de>; Sat, 08 Aug 2020 08:09:51 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1596899390; cv=pass;
        d=google.com; s=arc-20160816;
        b=UlvrXW3HptXHkNrikfcsFooMrSgNKEE/QLmLI+jTR2aVVAMs/Jv5XFck/I9sWQszwf
         3a3QmBL7+7w1nnNSv/58ENBFluV52qMYD+UbegyM/nDApO5OtmpvNp32O0MS0PJoYCtm
         LYhkVxKzo92q1/av2ZE7uYQh4ft3GZzt27eZvvbOJIT4IhYU66GgAzOFivYQiYV/49/+
         1dJrtLez074DL2Vr78XfAK8GlkwckKx1air+Egja/5HRS+n/1PzXhsGLTk4D/SUtFcD7
         fxn4v8urAB6PWrTuZnCAAPlDlZ+Pj8K6e8DYEcr0ODvc9GEk1tSvAIkGWu5s2483FBd0
         U+oQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :from:sender:dkim-signature;
        bh=ACJdSTWThMTE5Y2fROt3S0eDibx886JWAcgRs42Y28A=;
        b=HuUEIWi2G0cd7UjZWiCdzRvUioIzQfoHz8uPihkaJqFaHlhSkz8Fve3i17b9AboTjv
         LCYW8b3co1Lj0LJIgViSD6mcyWiToMGKZK5pIKgrVhDsKrx2tNfrdwxjUmsZoBEjoE2m
         mjB/lipJxT+OCIXnfHzuxvummA///Fh6avNUmhpevJsMBHnLXbkq49TEqPOx+b23p3ag
         +Z5kSwixYSb8y9DVHMeMUGHQVkgy61jqthPAf2e4K+/b6m7bjmfQrpCgp/UD9F0R2/jG
         Nr8XM+325iVepzdx8ZBSrlDrHQe1h9NlEV+nFDZkHpvMsLjQQr2dIv8sQdrP0UE44Weq
         OpFQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b=hq1pRTCi;
       arc=pass (i=1);
       spf=pass (google.com: domain of patrickmmgomez54@hotmail.com designates 40.92.47.21 as permitted sender) smtp.mailfrom=patrickmmgomez54@hotmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ACJdSTWThMTE5Y2fROt3S0eDibx886JWAcgRs42Y28A=;
        b=ReGye56kO2J0yH8GXh+w6oGMnLuxx3o6uFxBWCb71ddPAuBtYgKkWfAlZl/wvtgm29
         UOpHXblKrwwPbQ387A6kOyTKVGtCPH/jaIiiLPXZAHL+5hAadSD/xTNH9kARz37zutVd
         AXbC3Vj+JPgUgRg4LX5jRw7jQ1wZofNuqLC0C1/nbTtQcNHcdoSvkZOjtC1XHj7skdxm
         ziJoS0pFyZhO+kdAU18p7eXMoXdw3Q975/wCdGBOQ2Ml5xxm6qIvlzx0basCxg5RQTLf
         RfVo6z4MR/JtORknJfshDx0e+L2uY5fOy8DHl2SPYnX69PMLzTL1z8enGlpLBoEUyrHK
         8zag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:thread-topic:thread-index
         :date:message-id:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ACJdSTWThMTE5Y2fROt3S0eDibx886JWAcgRs42Y28A=;
        b=gED5nbT+hgPSRVVSJiZhdyM27f9Xa5nmQ+VCnMJbiiRzCWsn9VeUDUgbAKsAK284xI
         xLaDe0+mVew6IEJDRq7KBndW76aTrJDMAy8BO3ivvKAJihl4QU99Az1bsS7lznFe+NBV
         GrZEN2isD1Jgj8VPk5ghtPXc5kawwMQ5NcsbRO2F23mKlYzmRFE6/weftw+bzrHNjymI
         7ONB6hINqU/I3TN1IDeRWaykFy2NSyHDIfYPIdTzpnhWQfB69axRWkfCi+yv9fTYXXLl
         xWfc62xUj/5nAoDyn6S9nKLPS88zSRUEetQYiDpgMEWCvJRSIV5XvdZR8cgOyP0m1L/c
         7JFw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530SIC0W/X8bYhyOIXrm/zra164zniPfRgmgSu8e/Tskw6HOCQbM
	5wYvver6KYqFEL2i5fMT5JE=
X-Google-Smtp-Source: ABdhPJztQ+8VATRwIpw779JGeepW5XHr2Ycl9vGyzKotNBebWU4txP9+tevGFGA+EdWXIeA0NMNAeg==
X-Received: by 2002:a17:902:ac84:: with SMTP id h4mr17197993plr.334.1596899390386;
        Sat, 08 Aug 2020 08:09:50 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:9b93:: with SMTP id y19ls5193440plp.6.gmail; Sat, 08
 Aug 2020 08:09:50 -0700 (PDT)
X-Received: by 2002:a17:902:bf0a:: with SMTP id bi10mr8689743plb.80.1596899390093;
        Sat, 08 Aug 2020 08:09:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596899390; cv=pass;
        d=google.com; s=arc-20160816;
        b=chiB7cpduwW0g6qFCDBj96gn347cu26ohSN81Pdd4Nmxm+LxIQtTYkGxCzMF2eHiF5
         Z5uyZbSCblMLIxfgWg3ZxSSpplOPHOUvrRYuL1peYcEQMs7/+KF9IiT0IhULG0994nVQ
         DigHevfDVt+uwdBDxhykLhHDvErfSnJTWJXBA+JXlqoFiykJXFOAx9bGGSHbktBqqcS2
         Myrs0ztRCWBP9+DinwtRXzOHSb/Lbf+2mtxzEvKl+h65cLWRNRGTtHhmHkG7/zMWBo93
         innKgx0LHWBygzw+Zi1hs6figKXcG31kYu00VUy4m4P/jqXvd4BU2TvIzop0uiRiimG7
         0lFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:from:dkim-signature;
        bh=F5Fj5CgnKDZWfL1/+Wi9YgwkMu6xikpAY5CTU29bSfE=;
        b=sDAk0rk8k8nNZgPFF4E3Ib9uARU6KkuHou57FV4NyQN5Pya7mrp9QgZ44inoSRQx8z
         hP+B+hlaKTROsaw3PUgBHmOiI0YINdcap4I9A91pog5a1DAp1AKkqxRIeckWXrrNPS1p
         pRzNqFA/vJM5O38AYgnozHLDxaWKkyAeL0kJLmnOoO1HqRQM+fYBOfQ9gc3w4WJgJdL6
         1KAptl65z7s3yxi3Mo9TeeSnGhcE4bkpv6lAgiuyaqBodmKLegYz+wuGIfAaydoF91Ky
         Fhs6sSjJS5F9lhMh23CJyc6YJrtwNnJWqEpshdsO/6btGUpYpYkpfDFe0LPMC6OCK0KV
         XnXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b=hq1pRTCi;
       arc=pass (i=1);
       spf=pass (google.com: domain of patrickmmgomez54@hotmail.com designates 40.92.47.21 as permitted sender) smtp.mailfrom=patrickmmgomez54@hotmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hotmail.com
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam08olkn2021.outbound.protection.outlook.com. [40.92.47.21])
        by gmr-mx.google.com with ESMTPS id m15si301817pgc.5.2020.08.08.08.09.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 08 Aug 2020 08:09:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of patrickmmgomez54@hotmail.com designates 40.92.47.21 as permitted sender) client-ip=40.92.47.21;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Lw+3I2eDDB1HhcXuwotzWA8ubpXv4ue2+HjyxKXC74F34LBq3p2cd2dSY3cn+VShUuxOJ7vyLO3sn0WTFKOk08HLpcQbm6OVG5Y3kU/2dle6nij4rMudaZcCn5gcruF6I5o7O0c8ioqARKuUJhZI3Dura6PNFGl4Ns8gNWXnDUTtrt/P9b83C9dVSNiRFHzq/2sbGvh/DQ+yANdfK0VX8tVfyMpcbjGKRGENp2cE4hEDXxa2QKLGkO/4JMNqRAkactAG8gukjKBplTKRlH2rSLr+anoPI9HoGIaRB2at9RibPD+9YRfu8FlXL4KMeRhC/m8giW4evc+gUkQipkvChA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=F5Fj5CgnKDZWfL1/+Wi9YgwkMu6xikpAY5CTU29bSfE=;
 b=DbBPrj+yHKxZjsimv+l+52pIFWXl2PDte93bvj0VE8+Qe9GRijjGNIfeog+U6QrZSLoMwrPBA6Dlx0bL1UZ1Le/24OwmVWwFKvJjo8U4khZoDAZYh4AwdK17P6ng9P+8EpdvTbKhf+BW0EgYLwPnKCjdclJ22zFikgLXr2hWiI16/11ZUqL/x+mUVcOKSX3bePlyHKLDKgJTxjYE0Pep0LGiI+TTL5vO7Jd+oUDztSt7H8aHMlfFWmu2I8R4MzfK8lBQ9uZKTAKYWgyiw0f4EgzziqzZYoE5sB81SXzEW51lO2r/kKoVRURJxnagGzwtX/FqhlpN/rk4fPso9oncZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from SN1NAM04FT007.eop-NAM04.prod.protection.outlook.com
 (10.152.88.56) by SN1NAM04HT025.eop-NAM04.prod.protection.outlook.com
 (10.152.89.224) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3239.20; Sat, 8 Aug
 2020 15:09:47 +0000
Received: from BN7PR07MB4179.namprd07.prod.outlook.com
 (2a01:111:e400:7e4c::4c) by SN1NAM04FT007.mail.protection.outlook.com
 (2a01:111:e400:7e4c::140) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3261.16 via Frontend
 Transport; Sat, 8 Aug 2020 15:09:47 +0000
Received: from BN7PR07MB4179.namprd07.prod.outlook.com
 ([fe80::d942:75ae:2b40:9445]) by BN7PR07MB4179.namprd07.prod.outlook.com
 ([fe80::d942:75ae:2b40:9445%2]) with mapi id 15.20.3261.022; Sat, 8 Aug 2020
 15:09:47 +0000
From: Patrick M Gomez <patrickmmgomez54@hotmail.com>
Subject: RE?
Thread-Topic: RE?
Thread-Index: AQHWbZX0MwCavs+Co0aWJl8HoYVM7Q==
Date: Sat, 8 Aug 2020 15:09:47 +0000
Message-ID: <BN7PR07MB41797601F329AC5B998C8629C2460@BN7PR07MB4179.namprd07.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:B5E2B9CA00AA44A4762A2AB7E1BA007921E80CF01EB904BECDB84FBDCFD686CA;UpperCasedChecksum:CA70C78B1E4F3754347890170EAFEC43B98299C227E5F778F8A17D4358B1F6DC;SizeAsReceived:9848;Count:40
x-tmn: [mSq2NTLhFxccLP2otbt2H5CIVt4ouz+F]
x-ms-publictraffictype: Email
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: e00a0679-9a1e-4e3a-06d4-08d83bad16e9
x-ms-traffictypediagnostic: SN1NAM04HT025:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5ya2qpxZ1siAkau+SRmceEdpXjUf+QskBHN5YLbKaKVh6R8rlQNXg6A2GvZ3VfjfjDlaOdTYq8TFUaXNarPXJhowTsO9v9dsQI/43WmT2nCgdQB4oh87SPYrOmz+NqEHAPQrtXkfyckNrunsvlG2tmII/SnzDFFfGO8P2F6DtGP7bZFbyeT+bUX+6YCwJ0v++BkGUoZ3w7uxASa9hNTh1Q==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:0;SRV:;IPV:NLI;SFV:NSPM;H:BN7PR07MB4179.namprd07.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:;DIR:OUT;SFP:1901;
x-ms-exchange-antispam-messagedata: /w9FdEIbDJJxkUnYTVaRtgj2u4TpikhooLuWt/edUsmjP/laBNmE8Li9ZeyI0hnYbEh0v8zrZLTRUvt0ouKhXOhTUWz9KjmPuJ/rA1ptgJlVMg9TObn7DcLVW2MzRdMDwFI/F5TaHupqry2UO7ldpg==
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_BN7PR07MB41797601F329AC5B998C8629C2460BN7PR07MB4179namp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: SN1NAM04FT007.eop-NAM04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e00a0679-9a1e-4e3a-06d4-08d83bad16e9
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2020 15:09:47.1877
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM04HT025
X-Original-Sender: patrickmmgomez54@hotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hotmail.com header.s=selector1 header.b=hq1pRTCi;       arc=pass
 (i=1);       spf=pass (google.com: domain of patrickmmgomez54@hotmail.com
 designates 40.92.47.21 as permitted sender) smtp.mailfrom=patrickmmgomez54@hotmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hotmail.com
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

--_000_BN7PR07MB41797601F329AC5B998C8629C2460BN7PR07MB4179namp_
Content-Type: text/plain; charset="UTF-8"

Is this a Business or Private Email?

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN7PR07MB41797601F329AC5B998C8629C2460%40BN7PR07MB4179.namprd07.prod.outlook.com.

--_000_BN7PR07MB41797601F329AC5B998C8629C2460BN7PR07MB4179namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Arial, Helvetica, sans-serif; font-size=
: 12pt; color: rgb(0, 0, 0);">
Is this a Business or Private Email?<br>
</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;linux-ntb&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:linux-ntb+unsubscribe@googlegroups.com">linux-ntb=
+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/linux-ntb/BN7PR07MB41797601F329AC5B998C8629C2460%40BN7PR07MB4179=
.namprd07.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/linux-ntb/BN7PR07MB41797601F329AC5B998C8629C2460%=
40BN7PR07MB4179.namprd07.prod.outlook.com</a>.<br />

--_000_BN7PR07MB41797601F329AC5B998C8629C2460BN7PR07MB4179namp_--

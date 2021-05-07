Return-Path: <linux-ntb+bncBCZMJF7E4IHRB7GO22CAMGQEGYA3HVA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EACD376B47
	for <lists+linux-ntb@lfdr.de>; Fri,  7 May 2021 22:47:57 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id a9-20020a19fc090000b02901c2e1fd355esf1932460lfi.17
        for <lists+linux-ntb@lfdr.de>; Fri, 07 May 2021 13:47:57 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1620420476; cv=pass;
        d=google.com; s=arc-20160816;
        b=yn7bm2Ggiovyx369q1LiGDXULkJGmM37W4Y3nVwErfPaIEuTgDtdRUB/Dzj8kS5XPa
         WkK365bqekKBeo/lEYzoJt4WRTMGZLTR7ucCb4l+lTkGS0A49mYsoaTFQnJk3MKcXgTT
         wiH+RIopYvLjD5oduTUFy9aGrmEzqeKWkzBEBqH83YLQRg8huRl8qmz2M8be+hf4ysDZ
         9rMw5MHSl3M5EZC+masLrcg422aiKCY3OII1Ei9EJ+yI2M1ibRG0DBKsif3eaTG8slwE
         RCWup3valm8mTV8OXY1HKs2CGqprKQljhq+HmOcN1pOFbRByB7Ns6hV6tWRBE646giD0
         hRCw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :from:sender:dkim-signature;
        bh=ZN5ZwjQj8p4X9/gbRjEgZ47f2OpzvK5uJ7vjAg+Kbk8=;
        b=wjTl8sepXaWiGKX+Jh62Adkol/KTHx3q/Xy8icgYjX/uw0PX94TCbAFtVMqVhGei43
         MPZyz9aX87YMuB4Sky7DFQuM8RsAXAlDLMZNN95Ob5/oczkSNuIyo/Y4Ce9yWTrwmE57
         aF2011tHU/2xV6PjKtLVtUbT34Wl3uR9WK/W/CsQCpd0KVFoF3GHJ8blbhEptUb7OsLS
         +bWB3dL/Cfe4fmAPaK+Z9QQqdfFMLeItu9ALEWf0kXYgbr46poce7SMRA3QanVYWAb5B
         V3kBwECPDySmy5vpdVBX3GOZezSbqpR+O50aCWYT1zzlGxdzTywa+b81vb2WSj7qrjGx
         GZlA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b="Co3/RjSL";
       arc=pass (i=1);
       spf=pass (google.com: domain of ddddssad@outlook.com designates 40.92.16.45 as permitted sender) smtp.mailfrom=ddddssad@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZN5ZwjQj8p4X9/gbRjEgZ47f2OpzvK5uJ7vjAg+Kbk8=;
        b=pdB2ZntT62tAqkyHk4zdoZzPJQq5HhXlgt+baS4A5HAhoj70wIK88eykZYWFObg3mA
         1D2Vu1w3XeUGdLSLXfG5srN3iGbcBISoR3kvgAF3RIRCFfgOs3bMett5FjuNlz7o2/bN
         g32Kwnf4fhLJ9Ps6CaGlLS7/yaio3hMht87xUCt6CQxq+B5Hm4hnalOrw8e0hvxJd8Uk
         7PVNoGabksNKo6BL4/s0ZONbfBZagJ3A/NLjEcXENvzMJ6F8IP1YnDxnv5LKGdQ/lVp2
         o60kEaQSAxvCb+FwPt6WsArz1gRHxlLM0ZP2Nq5Ctg+e9zXzqqsku14nmEXjBSMkgmaM
         VGlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:thread-topic:thread-index
         :date:message-id:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZN5ZwjQj8p4X9/gbRjEgZ47f2OpzvK5uJ7vjAg+Kbk8=;
        b=PKkRWQAZrpPdiazY/9Gh70hr+/CrR8kIQn6tjunzCkxrx2i4H/rGww3nt1rgTo1Ur+
         OdngUoTONXH2l5xhq45kz/xfJ9S8AKUKm1sh90JiTpmTFxO6K9eR0VvJEjOn/fn9FwI/
         mxvl6ic7N7cjYn1LohnCAwXMkzwTPXonQeh3WmuNW2fGLP817MLsI7o7fmU1Qslk0NXo
         ZtCBkHi76mtaF7TZOs7CATreSRTbAMIX6nNBqWsKpffey6RAQgAr9tPISR0uW2t/0ije
         6V/QPTHM+L/H8CjSCp+zcWWvC/ltx01QYN6jFRj0ZiDyCmikPW/r3+FOt8jgHheXs0zf
         Eflw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533sYGCnsZtgHzpV4qSsCBC58+187xUAo5Wg1LoJhO7gd3mk6abe
	0DNHgSsHQQ5M0BVZyXafPWY=
X-Google-Smtp-Source: ABdhPJyW3LJn+UiCgXc8gIPLzvwBH8JGG+3p0VvuJa1wetR773RutFvyElu3+hz60UTOXDwJnTtx6g==
X-Received: by 2002:a2e:b52e:: with SMTP id z14mr9332741ljm.158.1620420476700;
        Fri, 07 May 2021 13:47:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:bc14:: with SMTP id b20ls1592756ljf.10.gmail; Fri, 07
 May 2021 13:47:55 -0700 (PDT)
X-Received: by 2002:a2e:9284:: with SMTP id d4mr9195159ljh.143.1620420475702;
        Fri, 07 May 2021 13:47:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620420475; cv=pass;
        d=google.com; s=arc-20160816;
        b=QaSpYTCSyLk7R+dFjPEBQrA9lKYKX5TDJ0Wpx3fRV3AkSxOnR6o5Vc8coSlVFukG6t
         CZM42SR45GOKZbZUw2ioejumPcWN0VyohY2y5A1mjtyUr5D+yLQwzEi1aFK5nHLaeHxQ
         rp6Sr/XECbVbwcj71xHYRjO3+PpKQ+iVQnDqSvW1cjXbSAUbmYasnCwa5BUgDjdAPK9A
         XMBT7jxTfSUoOpfHr+3NUTAkZXm21xY9TwcW640a86N/NCc4+c9gx+XaP0XuFgHxCced
         dVaJm3nZht4FrkZERqM+VT3fc7LLOjhXJB2MBNyz6/7IN8JlZy45nu1HFPmOZ/7oNVj2
         6TlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:from:dkim-signature;
        bh=8FH/cNJqT8tStW+cZsYuOwLWJ4qv3ZpW4YgzLLHUA/U=;
        b=DbeaWvZ+T8komI1yUxE1PA0JmemzoTkVKfu+BEPn89ZmxbilfnSeGmfsDY2jhClpwl
         cvBKk57/Oh6QDy+MMfsfR9MpnEBFwZOL96stNDmwGc/07Q4+TXZA7673j3TuwrLCgwwP
         wEPJcfIsJqpU0X6aMf0PdDL3T+KgtitLhbnl+Eyk2x4hykSkk5LFlPTNIAmhpMJFHnLE
         klmLgXNMrPUr+7X0xIrVdimBiliQbEdt1f0NfnNekKxsTEwTF3bap5Qvrt1HT35DBis3
         C01eFvIzjDSxxgDNKP25KbfW/M63qdvx4haW9nyYKk3TCcwD6+llEf9Whv70BIXijXxD
         sN9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b="Co3/RjSL";
       arc=pass (i=1);
       spf=pass (google.com: domain of ddddssad@outlook.com designates 40.92.16.45 as permitted sender) smtp.mailfrom=ddddssad@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
Received: from EUR06-AM7-obe.outbound.protection.outlook.com (mail-am7eur06olkn2045.outbound.protection.outlook.com. [40.92.16.45])
        by gmr-mx.google.com with ESMTPS id q6si262718lfc.13.2021.05.07.13.47.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 May 2021 13:47:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of ddddssad@outlook.com designates 40.92.16.45 as permitted sender) client-ip=40.92.16.45;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LpVWGQmf6I1uIGRsj6i4Q8DDLrQ41qmvSVnGwxzD3Br2IZAldn0OXJOaI7gSllx8dPjU0hO/GkgrrAF8e6H6P1skwmX2QT6XU2HWoL18mjBGpg37QW9fsoVEF8KEjSChtJUY8IecmeyMLsq4gKCgMifKS2FHIB39BpI6nqXYWCq7GDolwb/GYl2pJcAGOD+IuDJVkkiHcTp7MMGAiaW7+QByvj0wmsbSGfMl4c5Xv9zcEnGXGQaRD6hau7x0dGxdIo7eOQajncojqH+5ibZ8K8DApjTB0jf6TPR4agfjSVW288Hos/Drhe2WPWCzIZCIZQaFIxfDLw/guxeRh2y6XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8FH/cNJqT8tStW+cZsYuOwLWJ4qv3ZpW4YgzLLHUA/U=;
 b=ghbWvMH0N97nHgc496YQSjO/t+YRm7DnqrjBMfR9kvFreUBnj6aRLbc8e663eZNNAsLFxb/gU6SvV5xn+guYkadb4SBliaY46ACFB1F0QI7chKb1Inr79aypp+8BR5vJpQ2B9giUqhG/VCswXg+JHhy/5/YhdulOeR6kuQepuoCdEw9Z5M6hNFHquBRhhc+KZwGYNmpjukQhyWftEWibAY4pQ+ouu6rpXCRs8EjMnjGi/ugzXy8h4ZxTNBjcFBQF/42gaDSwvKwkbu4cGdQq1zpWTexXDaVupufSFjxkpdPhPY0vOVceBl76+1hvC/ssJMLmGvWeAqK++S0EtZny4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DB8EUR06FT059.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc35::51) by
 DB8EUR06HT166.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc35::151)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25; Fri, 7 May
 2021 20:47:45 +0000
Received: from AM0PR02MB3601.eurprd02.prod.outlook.com
 (2a01:111:e400:fc35::4a) by DB8EUR06FT059.mail.protection.outlook.com
 (2a01:111:e400:fc35::333) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4108.25 via Frontend
 Transport; Fri, 7 May 2021 20:47:45 +0000
Received: from AM0PR02MB3601.eurprd02.prod.outlook.com
 ([fe80::b481:2bcb:ee90:21bc]) by AM0PR02MB3601.eurprd02.prod.outlook.com
 ([fe80::b481:2bcb:ee90:21bc%3]) with mapi id 15.20.4087.044; Fri, 7 May 2021
 20:47:44 +0000
From: aaa aaa <ddddssad@outlook.com>
Subject: THANKS!
Thread-Topic: THANKS!
Thread-Index: AQHXQ4IX0yvGmyPl4UC4KR2L200BHg==
Date: Fri, 7 May 2021 20:47:44 +0000
Message-ID: <AM0PR02MB3601D3CF3EBD397CF7C3F56FD9579@AM0PR02MB3601.eurprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:8C68F4B3F2A68A4FC5336DFC70D509F048F68D19A44A42BD7D64CA5EFCC9F6B8;UpperCasedChecksum:6FA7CD35812C65DB73291E8D74391B8D5F75681D3F308F3BC87D82DA427E2BCA;SizeAsReceived:33930;Count:40
x-tmn: [f/cTLu3pUcL33jUNX76LRv/qLsFg/8gD]
x-ms-publictraffictype: Email
x-incomingheadercount: 40
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 184f76bd-87f0-4695-79ac-08d911995da6
x-ms-exchange-slblob-mailprops: BBDuhOFk7KB6PrmFdLHISg5JKjPtlWYE/IKJqmEJq8e1+usCN2vYqhG7EUVqxj8D12rJgsixrikZpTBW6QVQ151ExuTOJs2tDeUhX6Py/367DWx6k/9zceS+Uj01H9AGV90APRFoTVOk7hTi40zA2cqsUy7UQA9a+OINkvBWX2plQRJVOCeJjTbS3b5rvTCcLMKBvXNT+cv0KxiyBrnVYKK80YegniFm1sfZvYi5rDjCgUOV2snWL0wSoBgsyuzoVa0fXGJ3rnczxrBaKHqBLQ51f74M42316jfFnHNh5nTiAOWBLgP1kvKUQPjHRqtxC0w4MbgPYQdTPJXeS/tvxLZpKYY62UF+tyaGeNu0kl915yNq7n8m9nrXs7iK4ZCYfUT/2MRuWsMtt9oz4poXKbA/8k6X0+WY6Ed3J75fdkN7Kk1BD4hJHIwsANd0f4OmsyOCwdRQFEeqfd0DXbj/RckyzZsUIMi3b5N7+kW06aFjxqFIT/ChZ4r52V/BD7wZegcET5EvXyB05hKJMLdN1LszzYKk2pWecCH/1ibHgDxdSj5wA3e5RKAioS1XRYLClAIv5X2zJkl4Rqofngmd50HX6leu0oC07erMDb0n+dkYp3bZcUZ2MyekUWAK5Qd+uUjA3NH/yOqcMRTkbMBik82KRA7GdqBSRFpL+XeZY64=
x-ms-traffictypediagnostic: DB8EUR06HT166:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IAWGgLGzYriSZKK/Nu9j3CZ6cdhHY4U64OZaUAkXoSc+NlQkbyZS3etJdAhbcSAaxtEai9Aa3DXz8ZN5u78BwlykFOTZEX8gQjp1//mDoVh1uVBIEXL5xAI3HQVDgW+29mN03m+wfeL2TnKVmhOVZrj2xhbmvN52seQ9fRBu8O5BRWJsbT/sC8HgARunESpS3HPO5ImXUKF2FHgd8574jSFzAk0Ecj+qWkF5k7KqlVwqZkmQtB1Lq69r59jBCtv5F90uojhC9fmrt7mnhU2DHJu7qTYUAIzDgnF3CETsAQEk9JwHiXeECJHE05nbVbXApJcs4su4j5FiX2x3uDqwfPlDcbBxygrMPPbGeeDBqfn48GZK7EtogkbQMUxPUciTbXUkPaLF4X1DxMewmtYVwQ==
x-ms-exchange-antispam-messagedata: QpmZ51RHTGWUFOu2tj/XeapPWcqOm9D19tWJqRx8FR5GuMDukY+wnD5ZXgivF7rPr7DQGUHsdxsX2LVvFMJnKv3VHuF++C8YwiwmLSlHzmOpg8hnyOHoenX2Xwn1NhzhPoGZsGggiR7MJvyPH59KDQ==
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_AM0PR02MB3601D3CF3EBD397CF7C3F56FD9579AM0PR02MB3601eurp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DB8EUR06FT059.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 184f76bd-87f0-4695-79ac-08d911995da6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2021 20:47:44.5787
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8EUR06HT166
X-Original-Sender: ddddssad@outlook.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@outlook.com header.s=selector1 header.b="Co3/RjSL";       arc=pass
 (i=1);       spf=pass (google.com: domain of ddddssad@outlook.com designates
 40.92.16.45 as permitted sender) smtp.mailfrom=ddddssad@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
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

--_000_AM0PR02MB3601D3CF3EBD397CF7C3F56FD9579AM0PR02MB3601eurp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Email:Ahpeiyassin@gmail.com



Dearest Friend,



I am Mrs. Ah-Pei Yassin. A dual France and Saudi Arabic National, I decided=
 to donate part of what I have to you for investment towards the good work =
of charity organization, and also to help the motherless and the less privi=
leged ones and to carry out a charitable works in
your Country and around the World on my Behalf.

I am diagnosing of throat Cancer, hospitalize for good 2 years and some mon=
ths now and quite obvious that I have few days to live, and I am a Widow no=
 child; I decided to will/donate the sum of $7.8 million to you for the goo=
d work of God, and also to help the motherless and less privilege and also =
forth assistance of the widows. At the moment I cannot take any telephone c=
alls right now due to the fact that my relatives (that have squandered the =
funds for this purpose before) are round me and my health status also. I ha=
ve adjusted my will and my
Bank  is  aware.

I have willed those properties to you by quoting my Personal File Routing a=
nd Account Information. And I have also notified the bank that I am willing=
 that properties to you for a good, effective and prudent work. It is right=
 to say that I have been directed to do this
by God. I will be going in for a surgery soon and I want to make sure
that I make this donation before undergoing this surgery.

I will need your support to make this dream come through, could  you let  m=
e know your interest to enable me give you further information. And I hereb=
y advice to contact me by this email address : Ahpeiyassi@gmail.com

Thanks
Ah-Pei Yassin

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/AM0PR02MB3601D3CF3EBD397CF7C3F56FD9579%40AM0PR02MB3601.eurprd02.p=
rod.outlook.com.

--_000_AM0PR02MB3601D3CF3EBD397CF7C3F56FD9579AM0PR02MB3601eurp_
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
<p class=3D"yiv7053971718MsoNormal" style=3D"margin:0in 0in 10pt;font-size:=
11pt;margin-bottom:.0001pt">
<span style=3D"font-size:16.0pt;font-family:New">Email:</span><span style=
=3D"font-size:18.0pt;font-family:New">Ahpeiyassin@gmail.com</span><span sty=
le=3D"font-size:16.0pt;font-family:New"> &nbsp;</span></p>
<p class=3D"yiv7053971718MsoNormal" style=3D"margin:0in 0in 10pt;font-size:=
11pt;margin-bottom:.0001pt">
<span style=3D"font-size:16.0pt;font-family:New">&nbsp;</span></p>
<p class=3D"yiv7053971718MsoNormal" style=3D"margin:0in 0in 10pt;font-size:=
11pt;margin-bottom:.0001pt">
<span style=3D"font-size:16.0pt;font-family:New">Dearest Friend, &nbsp;</sp=
an></p>
<p class=3D"yiv7053971718MsoNormal" style=3D"margin:0in 0in 10pt;font-size:=
11pt;margin-bottom:.0001pt">
<span style=3D"font-size:16.0pt;font-family:New">&nbsp;</span></p>
<p class=3D"yiv7053971718MsoNormal" style=3D"margin:0in 0in 10pt;font-size:=
11pt;margin-bottom:.0001pt">
<span style=3D"font-size:16.0pt;font-family:New">I am </span><span style=3D=
"font-size:18.0pt;font-family:New">Mrs. Ah-Pei Yassin</span><span style=3D"=
font-size:16.0pt;font-family:New">. A dual France and Saudi Arabic National=
, I decided to donate part of what I have
 to you for investment towards the good work of charity organization, and a=
lso to help the motherless and the less privileged ones and to carry out a =
charitable works in<br>
your Country and around the World on my Behalf.<br>
<br>
I am diagnosing of throat Cancer, hospitalize for good 2 years and some mon=
ths now and quite obvious that I have few days to live, and I am a Widow no=
 child; I decided to will/donate the sum of
</span><span style=3D"font-size:18.0pt;font-family:New">$7.8 million</span>=
<span style=3D"font-size:16.0pt;font-family:New"> to you for the good work =
of God, and also to help the motherless and less privilege and also forth a=
ssistance of the widows. At the moment
 I cannot take any telephone calls right now due to the fact that my relati=
ves (that have squandered the funds for this purpose before) are&nbsp;round=
 me and my health status also. I have adjusted my will and my<br>
Bank <span>&nbsp;</span>is <span>&nbsp;</span>aware.<br>
<br>
I have willed those properties to you by quoting my Personal File Routing a=
nd Account Information. And I have also notified the bank that I am willing=
 that properties to you for a good, effective and prudent work. It is right=
 to say that I have been directed
 to do this<br>
by God. I will be going in for a surgery soon and I want to make sure<br>
that I make this donation before undergoing this surgery.<br>
<br>
I will need your support to make this dream come through, could <span>&nbsp=
;</span>you let
<span>&nbsp;</span>me know your interest to enable me give you further info=
rmation. And I hereby advice to contact me by this email address :
</span><span style=3D"font-size:18.0pt;font-family:New">Ahpeiyassi@gmail.co=
m<br>
</span><span style=3D"font-size:16.0pt;font-family:New"><br>
Thanks<br>
Ah-Pei Yassin &nbsp;</span></p>
<br>
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
om/d/msgid/linux-ntb/AM0PR02MB3601D3CF3EBD397CF7C3F56FD9579%40AM0PR02MB3601=
.eurprd02.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/linux-ntb/AM0PR02MB3601D3CF3EBD397CF7C3F56FD9579%=
40AM0PR02MB3601.eurprd02.prod.outlook.com</a>.<br />

--_000_AM0PR02MB3601D3CF3EBD397CF7C3F56FD9579AM0PR02MB3601eurp_--

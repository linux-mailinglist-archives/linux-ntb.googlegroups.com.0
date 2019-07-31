Return-Path: <linux-ntb+bncBAABBZGQQ7VAKGQEUMCEHYI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id E84437CC91
	for <lists+linux-ntb@lfdr.de>; Wed, 31 Jul 2019 21:13:40 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id x2sf34051783wru.22
        for <lists+linux-ntb@lfdr.de>; Wed, 31 Jul 2019 12:13:40 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1564600420; cv=pass;
        d=google.com; s=arc-20160816;
        b=i4KS3+HIemYP6nZAcRyfB3D1dS9ePQZeu2GUtaLTBdd4UiacGV5Y/UJFU71g8XN1XB
         FhJRZpXkFqoKJmnv5Wu9gd5F1MS72Fz/zSzWheajIbb0T/WmsCyLaUguwgu4iAZnz/5Q
         JKq9Bh29WrWqIfijTzUBnfNV6V92DYykynziGDRe8ocfyY756Qt2shJIcdA1ZD2ceVZg
         oJ1A8P4OqIW8nwtY2rKknyvZnW9p3Fz1+shIDcmnwZPv8vzUxWJsrbSFGRhE1UeIVdy6
         PTUr4iotR9AL6xEXKDvH+wRa1SsbRjxL0yXCHV5KDI2UcasYJk37BNevHCIzaZjkPqHc
         W0ag==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :from:sender:dkim-signature;
        bh=P+la6wnifSOeBzPzJSleD3f7AAaqR/DTHzqJdgYEnoc=;
        b=WtHWcKXsfbEOSqmDk8QDy5F8wDvPEWAYLRFbVPpJnXjrAenCtrBZ7+OgiFVhXOpNft
         sjkYuZXG59TJAnQztpGopgNTzllOz8v7JU3NCvTF4u5uy4VwNBeL8uZSXIsWUqi6oyM0
         2kffT+JVsfJ7G960Pa13Gx1BtWzLNlAlpv/E41MfLYAbEK/f3P2qdDJcbik3CaSdunPD
         /utWuZwh7dgzmVmJLk+KrQR7QeXE8t8VGTNKgO3zTUsEpp+pAdKH7E+K7WaYhy0oAsb3
         WjptFk4XFvpHzL6S5cjZCPKigGlmgBZKKt1BhmjqZi0oF4z1uUVABdK0KMHEmXKxg+Wo
         SupQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b=fOA2cP3m;
       arc=pass (i=1);
       spf=pass (google.com: domain of patmikando@hotmail.com designates 40.92.6.72 as permitted sender) smtp.mailfrom=patmikando@hotmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hotmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P+la6wnifSOeBzPzJSleD3f7AAaqR/DTHzqJdgYEnoc=;
        b=RVSuYrKp1j1Sj3vy+oq/7YCJO9yAav5nQGzZHFHUADqjB8ja02eXsg9QQ5lObGSZa3
         3QRGYwChn7sJcCMrWI4RL1g/hykm6L5lgBtJk+FDfUv+Bz5DFpEdK9e+PSnAW7e5PPiH
         gqrEvHXLL5+AkaM10QyTn9N4pk0FUGWqxJvW8eQuKNVbTnp+Yk+ejH7K+01/osrxO6m1
         Nw/56miK6N/2EuQyROhBktasPQvayO+YU72dtvYqQbZ2/I4Q4hbaVwNjggUfmYgSbwQl
         xkEEZDsI039Z0u7UlGNBbtPqUyBTQ9Kbe/gmDHa9hDLNe/0W8xl2z7Y1stgPuKStDnk3
         DATw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:subject:thread-topic:thread-index
         :date:message-id:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P+la6wnifSOeBzPzJSleD3f7AAaqR/DTHzqJdgYEnoc=;
        b=AF1sDIb25NemZOOIbF7Su5oNMpbXaGIHfcCDztVOUOnBOLfDut9w0tTal1ZPpfdilp
         k3KHUf3oLffQxLOHfo6H73CvCO5nIqz5kFrtdSjgOiHQdaSRY45UoE7qfCibaeUEY+bc
         W08GLyy13Jj3fgYMnqvDMWw9PcOzi4SjI10isZigC5hqJEky9SZbcjPcbiWc4Bhlb8BR
         rB8Ryh79xWcnKWVqDAnV0X+D+gByD1iiRd9EbYaCBV2s49gPNKN7LfPzaVqvWTkHA0a5
         oMRtaJviDoJzDkq5ax+GbVgitVaCV8v+2TYPH0Juc6Y56zJMczfbYVzSrhEkJ2/7HImo
         NV8A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUAuD7X6FnEdy4C3KlDLzuhfpjvgDyB6wcpzg7zTIk0fYAhsY/C
	fa6gMnbK3hf2n1x6jzBBXCk=
X-Google-Smtp-Source: APXvYqxaxIpJTmkkSb1NpyClLNf6O6JFMI0y/PpBmkxglggFGGmKVgHToc53TBqecpv9mXhZeENrEQ==
X-Received: by 2002:adf:ff84:: with SMTP id j4mr31538695wrr.71.1564600420654;
        Wed, 31 Jul 2019 12:13:40 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:a745:: with SMTP id e5ls20800426wrd.5.gmail; Wed, 31 Jul
 2019 12:13:40 -0700 (PDT)
X-Received: by 2002:adf:c803:: with SMTP id d3mr62904881wrh.130.1564600420353;
        Wed, 31 Jul 2019 12:13:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564600420; cv=pass;
        d=google.com; s=arc-20160816;
        b=hAJZgTX3M2omGVqSTqgHJgpIim7h0Pg7Z0koFny+B6nLbHrqxoGbspDnLNao8+9Bt7
         VSw7ICb4xWFXp3QAN5izT0qNZvsk8PCDRhKbyRJeUzVU6qGMOdsuHZQDMSF0vHLb1DDr
         XxOvgrg3bi5GW2vkdzUl0UNDtFji8YKnBw+1bIFES/INqES57nRoZg53G7MfSk3QmriQ
         pW1mO5SdzdteOs6zfzRD726+tMf0Yd6txSYvR2W1aMg+KGpLVbSnOW4Zink8iYuU8WA8
         LfTBsW23xRhsPzCqlW3KXqDD3pe5sAeO64EcPbj6i+TmG0pAmmtTj3JHWqaWmn3W+wM2
         7fbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:from:dkim-signature;
        bh=UG83ygoa2Rgd5ifLuLFttLquhIwi9U9c6fXHVAmZk0I=;
        b=AqMVQQOQ6gTtMVk3O4eUNZ9JhVhdih2l+74NsRLtjyq0krfFshzprCTdZCN1QI8Jzm
         Ij4QqJxtvMzItptDRIoF4kcwQ/y3Le3RUr2VFPSyVym9eyM1wvnmFfAm87CLfY85U4XH
         nY9Fx6hQDm3gAx78O8GsIUUn8mZVRDvhbLwhc2Dz9vnu1p4DJSnPxKtmkH3nZc1Y6tWM
         A6uvMaQIo+bI/oT3OtWQOcXjlc1RemFrvGvZCvJC7JZR/zKks05shRNcMIX7ekQgs7yH
         Je77xXI9s7H0HCF46rpIPf72iBtIHD0v0/FM4aMP2v/ejbf054fft7FNwEL66AJKXknX
         q5/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hotmail.com header.s=selector1 header.b=fOA2cP3m;
       arc=pass (i=1);
       spf=pass (google.com: domain of patmikando@hotmail.com designates 40.92.6.72 as permitted sender) smtp.mailfrom=patmikando@hotmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hotmail.com
Received: from NAM03-BY2-obe.outbound.protection.outlook.com (mail-oln040092006072.outbound.protection.outlook.com. [40.92.6.72])
        by gmr-mx.google.com with ESMTPS id q14si3796189wmc.1.2019.07.31.12.13.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Jul 2019 12:13:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of patmikando@hotmail.com designates 40.92.6.72 as permitted sender) client-ip=40.92.6.72;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PSNhzCkACgWLPEEEoB/dbYfsQaK6A83AGshq+G67XolRXEBEz5qjtfnNcJNmjNe2fZmy8a2k94i0UAmReKR9IaK7sSDZBqD1VBj7Y57xlELlIGbN8g4jOpMR2vt/MojZLpxfCvorYp+vqEYu6L8Y93BvxXKY2aKZpgxQh/zb8fT0OpP1qKHHc04eHd9xjM0eZ+x1+kDTEhagluDz83crO1vKm4FQHskeNX+p3v3WMBVUhT3Lk4hx2sy24p2TSX/rOWOON7VKtGBmgDLaBf/CXYA5vzHF+X0WQ7/MdaP2UmwuGmK9z3j3QX52Z9qgfrOW2LqAbk9jvTrzNLvj+S+Nyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UG83ygoa2Rgd5ifLuLFttLquhIwi9U9c6fXHVAmZk0I=;
 b=GBwVyVkygh4eVgPFo4AWBts4fnXqDi6JlhOReuUAMhR7pbXBBxm8OTXMlbkAnhlte3cPxW3QkSpSLo3tIQnZmMaxdgHJuK5sA2OZja314tPoGDj159/Pyp7Q0/anxJ2rVD5zdSII79xWw6229viOJLQ0n4+cwlGEMkgtCk7A64mIKXFej5WTpiJlhMNk1XluiDpUSDumz/8Dka4wUI3OYejg6qfCsQ65AbKHIFz9aZjrYYvbeHjnAQyWDzHuezLcmHZkLb81WiL+E08qYtNKdTbjiBeQkpaMY/K7hAKbsTKUmiNBGeIHTqhVBusp23cBdhRGGHAT3EMXPdMIUjjYBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com
 1;spf=none;dmarc=none;dkim=none;arc=none
Received: from BY2NAM03FT060.eop-NAM03.prod.protection.outlook.com
 (10.152.84.60) by BY2NAM03HT028.eop-NAM03.prod.protection.outlook.com
 (10.152.85.138) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14; Wed, 31 Jul
 2019 19:13:38 +0000
Received: from SN6PR05MB3935.namprd05.prod.outlook.com (10.152.84.60) by
 BY2NAM03FT060.mail.protection.outlook.com (10.152.85.85) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2136.14 via Frontend Transport; Wed, 31 Jul 2019 19:13:38 +0000
Received: from SN6PR05MB3935.namprd05.prod.outlook.com
 ([fe80::51a9:5537:62d7:a809]) by SN6PR05MB3935.namprd05.prod.outlook.com
 ([fe80::51a9:5537:62d7:a809%7]) with mapi id 15.20.2136.010; Wed, 31 Jul 2019
 19:13:38 +0000
From: Patricia Mikando <patmikando@hotmail.com>
Subject: =?iso-8859-1?Q?W=FCnsche_dir_das_Beste?=
Thread-Topic: =?iso-8859-1?Q?W=FCnsche_dir_das_Beste?=
Thread-Index: AQHVR9O0rB1pu7v5hEGtqPcf/g6pEA==
Date: Wed, 31 Jul 2019 19:13:38 +0000
Message-ID: <SN6PR05MB393512294C1AC9C1F020D0BDC1DF0@SN6PR05MB3935.namprd05.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:21D0AAA9353D35D160A0FE4BE25956371C8B03280D30C652D151B6F48B93671C;UpperCasedChecksum:7AFD618C834E15C491C6EF9FD2A7B42329C4A17AA029CFB7F5A7E854083D9C5C;SizeAsReceived:6991;Count:39
x-tmn: [tLnwxl0tDtD94/G4yqVni09s6rYcoBpI]
x-ms-publictraffictype: Email
x-incomingheadercount: 39
x-eopattributedmessage: 0
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(5050001)(7020095)(20181119110)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031322404)(2017031323274)(2017031324274)(1601125500)(1603101475)(1701031045);SRVR:BY2NAM03HT028;
x-ms-traffictypediagnostic: BY2NAM03HT028:
x-microsoft-antispam-message-info: 8qaU7Eyv2GFJTTlWX5M+ulGPqpHGuGTDEKs74YCN/QMvFZ7cfkkDDNJ4TGUuQZOtr8x4idkF2mqNlR4RzaTzoXpjCF7w9Fue8yTUB32U677uKC5Jh8CeW9D+SCJPVq3Hb7WSLa/qVvFM2p/+DC3uTKChew2tO6sYohbt3czIjpoGho5DpD/i4lsPApufuYuF
Content-Type: multipart/alternative;
	boundary="_000_SN6PR05MB393512294C1AC9C1F020D0BDC1DF0SN6PR05MB3935namp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d33be4f-eb94-4860-658f-08d715eb3125
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2019 19:13:38.0607
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY2NAM03HT028
X-Original-Sender: patmikando@hotmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hotmail.com header.s=selector1 header.b=fOA2cP3m;       arc=pass
 (i=1);       spf=pass (google.com: domain of patmikando@hotmail.com
 designates 40.92.6.72 as permitted sender) smtp.mailfrom=patmikando@hotmail.com;
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

--_000_SN6PR05MB393512294C1AC9C1F020D0BDC1DF0SN6PR05MB3935namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Ich hoffe diese E-Mail findet dich.
Ich m=C3=B6chte wissen, ob Sie die letzte Nachricht erhalten haben, die ich=
 Ihnen gesendet habe?
Ich m=C3=B6chte wirklich von dir h=C3=B6ren.
W=C3=BCnsche dir das Beste.
Patricia Mikando.....
Ich freue mich auf ihre Antwort.

I hope this email finds you.
I want to know if you received the last message I sent you?
I really want to hear from you.
wish you all the best.
Patricia Mikando
I look forward to your response.


--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/SN6PR05MB393512294C1AC9C1F020D0BDC1DF0%40SN6PR05MB3935.namprd05.p=
rod.outlook.com.

--_000_SN6PR05MB393512294C1AC9C1F020D0BDC1DF0SN6PR05MB3935namp_
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
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);">
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px"><span style=3D"margin: 0px">Ich hoffe diese E-M=
ail findet dich.<br>
</span></span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px">
<div style=3D"margin: 0px">Ich m=C3=B6chte wissen, ob Sie die letzte Nachri=
cht erhalten haben, die ich Ihnen gesendet habe?<br>
</div>
<div style=3D"margin: 0px">Ich m=C3=B6chte wirklich von dir h=C3=B6ren.<br>
</div>
<div style=3D"margin: 0px">W=C3=BCnsche dir das Beste.<br>
</div>
<div style=3D"margin: 0px">Patricia Mikando.....<br>
</div>
<span style=3D"margin: 0px">Ich freue mich auf ihre Antwort.</span><br>
</span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px"><br>
</span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px">I hope this email finds you.<br>
</span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; background-color: rgb(255, 255, 255)">
<span style=3D"margin: 0px"></span></div>
<div style=3D"margin: 0px; font-size: 12pt; font-family: Calibri, Helvetica=
, sans-serif; background-color: rgb(255, 255, 255)">
<div style=3D"margin: 0px">I want to know if you received the last message =
I sent you?<br>
</div>
<div style=3D"margin: 0px">I really want to hear from you.<br>
</div>
<div style=3D"margin: 0px">wish you all the best.<br>
</div>
<div style=3D"margin: 0px">Patricia Mikando<br>
</div>
<span style=3D"margin: 0px">I look forward to your response.</span></div>
<br style=3D"font-family: Calibri, Helvetica, sans-serif; background-color:=
 rgb(255, 255, 255)">
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
om/d/msgid/linux-ntb/SN6PR05MB393512294C1AC9C1F020D0BDC1DF0%40SN6PR05MB3935=
.namprd05.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/linux-ntb/SN6PR05MB393512294C1AC9C1F020D0BDC1DF0%=
40SN6PR05MB3935.namprd05.prod.outlook.com</a>.<br />

--_000_SN6PR05MB393512294C1AC9C1F020D0BDC1DF0SN6PR05MB3935namp_--

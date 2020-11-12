Return-Path: <linux-ntb+bncBAABBJGYWT6QKGQENVH73LY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id A51DF2B0500
	for <lists+linux-ntb@lfdr.de>; Thu, 12 Nov 2020 13:35:48 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id c8sf1867595wrh.16
        for <lists+linux-ntb@lfdr.de>; Thu, 12 Nov 2020 04:35:48 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605184548; cv=pass;
        d=google.com; s=arc-20160816;
        b=tVqgIUkzlSDuCG0jLjIvd15kJQwUYwme0jhoeaOx4D7XgtsrHmTS1dD4yxAe0+/HQ1
         buq+Dt1EmCIvF/0lBy/3kzAHqw9aeTeGO41rCiGy3udZtTPDkgHalhymf4gvnIAX7h6c
         IbstCYzLSoP07kVPoQ8mlsxqPg7pgu6zAeP6TojAhaQh1edbyVDNhucT080F+kiNbw/o
         ApKGgMG08HAVd0WLh3U9Vv4zI4pxro3AMQB7tdBfetird/++/XaT5fY0v1wYTr/W1aqi
         aQwcwHhg4WTQ46Nus4A9QnAA33XscY1PIuD/FDYFdI+vbMc1sWFvpgqBcBQm+8eceBzz
         bwMA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=ZQhw5zMb1+6H85uIJzfUsKRiaBIQEl4Ifr10sdjiJCk=;
        b=Y0C8Z/5JPoEZXWNjwL3yP8U5bdbC3jZk1Rrcx1wfXRRr9rjYJMLunnkIOc92Ac+WH9
         0X+73gJoBEgoxzmCgFdQEE/yFKWzN9RhJKPiOEoa/XBkzcrU4CHD7QCgmvmFRkICMs9h
         QXpvWwjVWzgDNC/l4P4JFlYC1nawoe+Syf4TKs4PDSfx/Z48pJNwCJeBPiAkWNwxTcPk
         jUwESBCt1a5Z7QamKe+yho5x+pJeHq8YyM/C+ScDUvPDqAo19GWeURrZ5Wc6fpIE0NAa
         5hIfvI2Jmgjm15zeyJSyR17ebJx7A+XccLdc8iS9lEOeGIIsRcu68oqfuFu+9K/Kt/Nk
         1ZCA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=OKJsHhPx;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of sherry.sun@nxp.com designates 40.107.13.89 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZQhw5zMb1+6H85uIJzfUsKRiaBIQEl4Ifr10sdjiJCk=;
        b=aHuQo4tnrNQuphUBWkfGbrjlolUT99QB0Sek/snRdEHC2giBb+6B/ZkZH7eqU9ppVt
         DiHI1BMu1QZFgseFoCvmhm221xLr2JdHka3/3TXWrmb9EuxRqUFp7yZLknQnqgi5iDV6
         dXxypStBdSZMhZwMAXeRG3nEBjX9zStlSHks7y8auDSw/DYr5Y3GfdZjA0QQ6ioUUjRV
         88uK814OLQQ6lIOvtbhpGLnsMFc0ghNJVFfe7N4I3CJqWEyNN06GfVDCOaLQcdt3JmPa
         w9W+i02BWYx3QmXvGkRnoEE9YEB3BfIwnMCm06GUsSajdDk8EXrGaV83XzXUmzxQgvHd
         XXLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZQhw5zMb1+6H85uIJzfUsKRiaBIQEl4Ifr10sdjiJCk=;
        b=QGibBDBuCLXa+wuT1fm1CEsyfBdNui8wX3giwUpmLs8yRkuJG4px2UC4LQ59oX0JHa
         Ke+B7RnvgHCf8o1SWfPEt7KGa4jcyMDkyRAXKqCurqxbe0zcboIKI/cTAi0wAULU9EXJ
         6JXTesqNzL6+0dbefSo7n/MfqEw9m2MqlxBiQkOm2qixC2ASZREUybBU/dJffyWkvGuT
         s8e8TPaPCaT73+INtXKC9q8ObNhktQ2kRsr0LQqbL5wIsobBL+GMwuLjQRW1Xad5w1IY
         B+dqZ7lgpXFI2b3g3s4+FH3Xwrbi/ep1GOGxX1BZ0Sm6xob7ckwSVgZLx9qVvsGyqX5o
         zI3Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532vzc0UcBi9jnw38m+rPFJIZD2sgfNH/Yfdj7c0+b5rg22yNeMA
	CGFNuCZCq2Zc4yXZrNv7/+Y=
X-Google-Smtp-Source: ABdhPJxja8OXJD7HwqpYl25A2XGNS8mIs7jxpVm1YxiegsPPtKrYqFrXwHUXLG1dCgw+qZGAxokjNA==
X-Received: by 2002:adf:fb06:: with SMTP id c6mr37284517wrr.117.1605184548356;
        Thu, 12 Nov 2020 04:35:48 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f70d:: with SMTP id r13ls708307wrp.1.gmail; Thu, 12 Nov
 2020 04:35:47 -0800 (PST)
X-Received: by 2002:adf:eb4c:: with SMTP id u12mr37148731wrn.73.1605184547632;
        Thu, 12 Nov 2020 04:35:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605184547; cv=pass;
        d=google.com; s=arc-20160816;
        b=zww6RakUoexBLQ3H2RO15cSmybtoYqNuzT4srH8S7ShC5Z8pEzMZF1Ooyo08tjgRMO
         8r7Iu9ZLHYM84s6m1tE9qyrJDoxN5eZsYKriM47yv6spve7AFx9Ykn7Rig9dJqkcaxu1
         Hnvmip86MYGBHHKGnsnnYyOAdZxFYnorXE901KcgE0kWmXbBPhdSQCi6pFOLNQshfVQw
         GhPyiaqfFIvz5Qf0Il18iOcTQFlpHytvuH/OUCIm6ThrftUe5QF23XkVnSikGsT71RPH
         W5SGxecpxGYMvM69mv8V2AIDh5bMsVO9aNtRrVd2N/J7cUqAqR8njjunoqQAArkLc5d1
         IQTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=ytfhsuLrLHj6h8CL1CLLxT5+seQ3AxEd1gYkUX6WPfc=;
        b=rh3JDIkTNMAqVVwwshKL+s7bFSJHtt7w+NIvVj0Ic4b2Q2SwTRyXEOAGdTigckizrK
         Rj6PciiurtBky44P9og7zt8kiUX09iHaGcal4oElwtvKfbSkla0EypFtp8gLjPZaV5ZA
         J+mWvduGm4uCmsJFN/gZkAuXl+jF7KwSGtL6hAPnWvhC0EO91vPhmkwcTD+oQf0eWoT9
         7LXZ52vp8YhZ1ym6QMwcP4wOlQo1CE7jz5ZYKGNrl80lFjUHn8jYskZPSnSzWljcHt1D
         m3+F3ZPtnnlGiKBrfbupu37mgUg9koF4yrp9qx7bdS8GMF+wRElh6I66xeKhyjFdK+74
         +pEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=OKJsHhPx;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of sherry.sun@nxp.com designates 40.107.13.89 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR01-HE1-obe.outbound.protection.outlook.com (mail-eopbgr130089.outbound.protection.outlook.com. [40.107.13.89])
        by gmr-mx.google.com with ESMTPS id p16si128804wmc.1.2020.11.12.04.35.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Nov 2020 04:35:47 -0800 (PST)
Received-SPF: pass (google.com: domain of sherry.sun@nxp.com designates 40.107.13.89 as permitted sender) client-ip=40.107.13.89;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ka3tl271G2RjvG94x6C/NddUTPsrT4RNGP5dXCcK5KY1wb+F4xkbE7X6vxFHiu5zMq39N2HHVmJGYIY6zqGOJqc4KuY/oQqF0Fqlkzta46vzh0acCqfgrS9s1Fd2oXKqmm2cRQ5vWEAB8T+F5I05xhQQs3yrOnmoz2iyqrTRshynqtl95fiyl5GxqvKRsncQCIURUO12xdnTpme8rwhVGsBwrCVJS5pCdHoEnYAHNJIVlkOyJInbitPWl5AfLLnrkx7f2eyOTnidOcrMeMYod3TTkm6U8XPWBsldyUB3sRf9eoanjfZVOK+RWW8w9F+AqwCs19rroC+X8sl+DJZrDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ytfhsuLrLHj6h8CL1CLLxT5+seQ3AxEd1gYkUX6WPfc=;
 b=iiZRChYbd9kOHbXCoIz/LxxSzjBH8bkyBjdxOE1Mnsqc+PgMYT6z1e3GtyAr4E3N+8Kdb1EVDp+IrPkYpa9NsAQljHQ+3AZuKKor4xOR2Xxl7n35n+BRojyZK2ZXlhgjThWf9GfrarOTB8xDhNDWiw7roScZQu5gXUQdIyz5CcRUcssuHJSVxwDoulYL1kRHDiZ2Rmj/l96hUr+tGNOlwoIQMczDg/XBy6YX+ehfqfDz50mZ4ZruLE7E2GOPnSshuhLDKr6G118ry0/y26gos/6kci1NkJkPLfX5ut8kwx3STpzS3d0wmLEMXUlMrJX0wFLKu4KNnGrA8583E4nSVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB4960.eurprd04.prod.outlook.com (2603:10a6:803:57::21)
 by VI1PR04MB7165.eurprd04.prod.outlook.com (2603:10a6:800:125::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21; Thu, 12 Nov
 2020 12:35:41 +0000
Received: from VI1PR04MB4960.eurprd04.prod.outlook.com
 ([fe80::b178:a37b:1f9e:3a6]) by VI1PR04MB4960.eurprd04.prod.outlook.com
 ([fe80::b178:a37b:1f9e:3a6%3]) with mapi id 15.20.3541.025; Thu, 12 Nov 2020
 12:35:41 +0000
From: Sherry Sun <sherry.sun@nxp.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Arnd Bergmann <arnd@kernel.org>
CC: "bhelgaas@google.com" <bhelgaas@google.com>, Jonathan Corbet
	<corbet@lwn.net>, "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>,
	"arnd@arndb.de" <arnd@arndb.de>, "jdmason@kudzu.us" <jdmason@kudzu.us>,
	"dave.jiang@intel.com" <dave.jiang@intel.com>, "allenbh@gmail.com"
	<allenbh@gmail.com>, "tjoseph@cadence.com" <tjoseph@cadence.com>, Rob Herring
	<robh@kernel.org>, "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
Subject: RE: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
Thread-Topic: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
Thread-Index: AQHWtnmf1Fe2qKyugUaToCGM3cma6am/hnbQgABT4wCAAMJmMIAAz6aAgAAKvACAAAwhgIAAtS8ggAIkF4CAAAx8wA==
Date: Thu, 12 Nov 2020 12:35:40 +0000
Message-ID: <VI1PR04MB496066B27A378F1DA7223C9C92E70@VI1PR04MB4960.eurprd04.prod.outlook.com>
References: <20200930153519.7282-16-kishon@ti.com>
 <VI1PR04MB496061EAB6F249F1C394F01092EA0@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <d6d27475-3464-6772-2122-cc194b8ae022@ti.com>
 <VI1PR04MB49602D24F65E11FF1F14294F92E90@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <30c8f7a1-baa5-1eb4-d2c2-9a13be896f0f@ti.com>
 <CAK8P3a38vBXbAWE09H+TSoZUTkFdYDcQmXX97foT4qXQc8t5ZQ@mail.gmail.com>
 <5a9115c8-322e-ffd4-6274-ae98c375b21d@ti.com>
 <VI1PR04MB496067EB79873EEC9329B9B992E80@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <c3e7cfaa-fda9-46f8-ec9a-b26818bef7b6@ti.com>
In-Reply-To: <c3e7cfaa-fda9-46f8-ec9a-b26818bef7b6@ti.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [180.106.106.63]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cc3f287f-6f49-4445-1f74-08d88707776b
x-ms-traffictypediagnostic: VI1PR04MB7165:
x-microsoft-antispam-prvs: <VI1PR04MB71655CDD5F5E079482F719F692E70@VI1PR04MB7165.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J4ikJ1T8HOqlVR896mUm1DKcK4lIN/kiMKt52MRNmcbkBKGtwgmnj1n9/pI7gD4oySxr0IMGOG3asXIja6FfLhrBJ0QBBNiRkXLNNLIEUQsYNy3t1wsHRTdGOALEejyIBa+UW86mRdTSKntQ1j5eztw7SP9mMfRW0nBq65oreqfaq8Qayo8kGmFbN9kt0A0XTBtRiJiQ0TyV1AC8wSV3WidIKl4jZK9v9SLkyHrCKiDm+e61T4dFrDx36sVQaj6GlAUzZZyC0WBCFcx959C6hXXG+Uxfr3q0nhHYAy/0kk1XCLB9gFA2s+LKPQrzfMEXDBDuBrfhNpdXr1gTFMINiQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB4960.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(346002)(376002)(396003)(136003)(39860400002)(366004)(6506007)(7416002)(76116006)(316002)(71200400001)(86362001)(66946007)(8936002)(33656002)(66476007)(66446008)(478600001)(52536014)(5660300002)(44832011)(53546011)(64756008)(9686003)(2906002)(7696005)(83380400001)(26005)(54906003)(66556008)(8676002)(55016002)(186003)(110136005)(4326008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: PWGHzrxJGGZ+tw+gWzWREh5haOpiNkFVqQxoBaNUlTtBuTA1WAxsnB37r+6JSEySKeB2iyZPUsUFnPsv5Z0VgSuzDqRo996PalSN/Wv6hDvYp3lwLGONeM1ro9+GSC6rjifIgtusWNWUptyKFalPRcstd73pnBFg5DQ71M56sVzzguSiimix/C7jEDU3OInhTeX8EEAPtDuWFiBwOLzIxHUeP8DX7ManHYLXOMQz34dV+c25/oTHqvFZxzugawfOp8mC9L9x1gDP+RMpK1DMPQQig9yZ1I3HxWN7DX2p0OYutA/nOjFlbMfm5kvIkn5jzmL+Apy05FrkAIkGS6hRW7WBSbk0iH/D4Gp7aVSfqfdPsvX0206PD/QFgLXishVZGzLyWCjcrUVy8J6RKRU5J8C7g9eDcKYT175deRKV4xAATW7kXZ1hGU3zCEFWI9VqRjb0td79yzZ6budgkpVnyxOM76YkkHuTOHzKdj0VW2heFVAgG5NrrEWWTjHTURGrnZmYu9UcCALYujCaB2fhrfrMxbuF4AF1A40sy48V9QNR3nI6c5STRGAv4YdniEXqXvhj6AXKMnL5iLhiVgvSZMCzzM++I++JaW5dMtRuvwYjNN3fTr5VzHzmKzowIalF6qt9FiLYFiJJizex2alOZBS89rtRJ3f+W5D1i+WZzY8cZWRQSt8yRBSc43o13/W6bdGFJz+O1m+J327uhYMPEVXZplADjh5y1UpxJ+l1sqy9WMHBDKOsKIsSGtcgW0yZwENAIUEooUaN0tPZR72KBvg10pj4rZYJLQpzGQmu3cS5TsLWfUH+yO4FgXMUJaOKkq/BCY4eVxVlR29c4myVFjPbSg8FEkzKnmZdB+d1ynYDNrKGEs1QTFu2L4TJ15fvz3EGp/Iu/JCkYFvXPZa3+Q==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB4960.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc3f287f-6f49-4445-1f74-08d88707776b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2020 12:35:40.4688
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VI6wedwBu05zRHOtx0BBUXn+TpoWNJx+iWZKHDKJAU1OwQ8fMDlCaWoiccK1oquRTtFoD6vPBD7JDD0AF50CSw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7165
X-Original-Sender: sherry.sun@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=OKJsHhPx;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of sherry.sun@nxp.com
 designates 40.107.13.89 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
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

Hi Kishon,

> Subject: Re: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-
> Transparent Bridge
> 
> Hi Sherry,
> 
> On 11/11/20 8:19 am, Sherry Sun wrote:
> > Hi Kishon,
> >
> >> Subject: Re: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express
> >> Non- Transparent Bridge
> >>
> >> Hi Sherry, Arnd,
> >>
> >> On 10/11/20 8:29 pm, Arnd Bergmann wrote:
> >>> On Tue, Nov 10, 2020 at 3:20 PM Kishon Vijay Abraham I
> >>> <kishon@ti.com>
> >> wrote:
> >>>> On 10/11/20 7:55 am, Sherry Sun wrote:
> >>>
> >>>>> But for VOP, only two boards are needed(one board as host and one
> >>>>> board as card) to realize the communication between the two
> >>>>> systems,
> >> so my question is what are the advantages of using NTB?
> >>>>
> >>>> NTB is a bridge that facilitates communication between two
> >>>> different systems. So it by itself will not be source or sink of
> >>>> any data unlike a normal EP to RP system (or the VOP) which will be
> >>>> source or sink
> >> of data.
> >>>>
> >>>>> Because I think the architecture of NTB seems more complicated.
> >>>>> Many
> >> thanks!
> >>>>
> >>>> yeah, I think it enables a different use case all together.
> >>>> Consider you have two x86 HOST PCs (having RP) and they have to be
> >>>> communicate using PCIe. NTB can be used in such cases for the two
> >>>> x86 PCs to communicate with each other over PCIe, which wouldn't be
> >>>> possible
> >> without NTB.
> >>>
> >>> I think for VOP, we should have an abstraction that can work on
> >>> either NTB or directly on the endpoint framework but provide an
> >>> interface that then lets you create logical devices the same way.
> >>>
> >>> Doing VOP based on NTB plus the new NTB_EPF driver would also work
> >>> and just move the abstraction somewhere else, but I guess it would
> >>> complicate setting it up for those users that only care about the
> >>> simpler endpoint case.
> >>
> >> I'm not sure if you've got a chance to look at [1], where I added
> >> support for RP<->EP system both running Linux, with EP configured
> >> using Linux EP framework (as well as HOST ports connected to NTB
> >> switch, patches 20 and 21, that uses the Linux NTB framework) to
> >> communicate using virtio over PCIe.
> >>
> >
> > I saw your patches at [1], here you take a rpmsg as an example to
> > communicate between two SoCs using PCIe RC<->EP and HOST1-NTB-
> HOST2 for different usercases.
> > The VOP code works under the PCIe RC<->EP framework, which means that
> > we can also make VOP works under the Linux NTB framework, just like the
> rpmsg way you did here, right?
> 
> Does VOP really work with EP framework? At-least whatever is in upstream
> doesn't seem to indicate so.
> 

We did write a pci_epf driver to support VOP, looks like pci-epf-test.c, and it works well.
So certainly VOP can work with EP framework.
But it's a pity that the VOP related codes has been deleted before we send the pci_epf_vop driver patches to upstream.

> The NTB framework lets one host with RP port to communicate with another
> host with RP port.
> 
> The EP Framework lets one device with EP port to communicate with a host
> with RP port.
> 
> Rest of the trick should be how you tie them together.
> 
> PCIe framework creates "pci_device" for each of the devices it enumerates.
> NTB framework works on this pci_device to communicate with the remote
> host using PCIe bridge. The remote host will use NTB framework as well.
> 
> So depends on what interfaces VOP device provides you can use either NTB
> framework or EP framework. If it's going to connect two different devices in
> turn creating pci_device on each of the systems, then you can use NTB
> framework.
> 

Thanks for your detailed explanation! It is clear.
I think maybe VOP is suitable for the basic PCIe framework instead of NTB.

Best regards
Sherry

> Regards
> Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/VI1PR04MB496066B27A378F1DA7223C9C92E70%40VI1PR04MB4960.eurprd04.prod.outlook.com.

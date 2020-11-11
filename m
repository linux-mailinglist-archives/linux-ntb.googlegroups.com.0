Return-Path: <linux-ntb+bncBAABBUVCVX6QKGQE5KRARWQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9422AE68D
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 03:49:54 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id h12sf189147ljc.13
        for <lists+linux-ntb@lfdr.de>; Tue, 10 Nov 2020 18:49:54 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1605062994; cv=pass;
        d=google.com; s=arc-20160816;
        b=orvLkSjcsduhld9RWC8WIKjHDumWB9qV17XX+qDHtdYOMvvFO5mMGieg6huebp/72j
         U3+kVECPbQ/yFe7yBEBzGQ19SlEK00o4nr4lHxvRQxwl6oy10x5YPGPfMStDx49XOTVv
         OPSU23AJ13hJMcyidcyn20phGGyk6AThrJnC0D8D32BuqX4naeqHKU8xNp1URPd+/jEL
         2ExZyiQbEZLwhXcqSvAEAA7MgVcSxP1wYo9u/p7nuIvj+9+3E5GbXZuvCG3+VLNuQUg8
         2r0EwvM+m7DDPE4POALo293VfsGGGHnx9wCe20pucc80mm7nW3MMVP3LCROQkPX6SkrX
         FnWQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=BNHyItqHd/+yKzEdYyRljmguGEJ819FlrFpj/7uxqF4=;
        b=C6aeVtz1nZYZcZ/U3/xmbCbvR5bFrzcHIMZdYhotsodgKctmJ8sewbyX1WonR0x/3j
         nR2NR7kYx5ACP1aHVHa+kWZBczqIYG/AqaaqZyIx0X1LfPsGxsfzgdouEKNTLZTK0jOz
         BfdU/rWHjCIfvZHOQCv+6WbYc+5+Z6OCLvyQQvAouDjmF5TkW8oCdu+LIL2Jqz8ntAVt
         /rjf/JSFj83/ijldK8YsMyxLR6WGFiBdC9ZO+ddlH797p67ClTwzgp0gKa+IjhEH2Ud5
         H1loy7X++9geA9jBjzP/SPs33p5ptLGdl4f+gk65GoylNjFNa2AliQ9HHy2a9hN1pKig
         NESA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=S06+m5a7;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of sherry.sun@nxp.com designates 40.107.6.49 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BNHyItqHd/+yKzEdYyRljmguGEJ819FlrFpj/7uxqF4=;
        b=C5viUXJzXCVf/4PhpLPBlC8FDcvGGdWWdrndH+LPwakzg1bzh7GTpoAaEu0AYALYrL
         9P5dtkEJkx4btP57uXmBOXNAdwsL07nNvH+KEJ5NOqOQTI1aPL7zdv/QFnsskryLb6pL
         Z1EW8U1dMzgA7y5FBYH4NNOTv8U9G9vrhBB6NlD80jVBrAIOecfkPZNRR4JTnx8hWVtG
         jemcgbWX/553sR9StJw80IHUe5n28jFqgusYaOY2BqDWM4hfY+w/FkxWYFBiFTqrWUic
         SlPidn4bOnBbj4OujQ3rNLiJJrPTy30npDXNkAc0GbAlP8YY7hH7roQ+83xwwAn2qIz8
         3Ddg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BNHyItqHd/+yKzEdYyRljmguGEJ819FlrFpj/7uxqF4=;
        b=YlwcCziqRf/lx+rdxwIBSzbVmpXrfIUivPaHSV4OPBQma9cFqX4boFui4poIkNOECg
         pwihg9Fz8Tni0xoxQPbtqQYmNhf56FptlZga4mDFGDEfhuZfLoYqCmUIKuisv9HITmLn
         k+REbwfs21VeIWji+k14WTHbdPmR+Mzxazsi3pBqwSednoN8brN0PyTcQUn6ujwbyAuT
         eV0vw4GIbwSE/egio7AqLeus/D9qsfDEk4ZJXw65uYWFMyrHnJcqF+7Bn8lqFtfdVesc
         GKsV4eUT6A6vMmGKHlWZIxgreVp+Z/UWz8twIdvMqwQAYbs+cbbJL/VSV0VNtsxz6DBs
         REIw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5303eQxHHz3avO+tU2hwUYHG/X6tWu8rsqQ5CqBqN3lE+F7f4xTS
	kD8yT+m2U/QJuO079AZOSBY=
X-Google-Smtp-Source: ABdhPJwCAzZUYERk9ynufByY/XUwUAAcpSm1PqbxbYkBMH+iriil6Qgo1ehjOG1rNbeV8yiU2aXJ5g==
X-Received: by 2002:a19:cb93:: with SMTP id b141mr8144020lfg.519.1605062994406;
        Tue, 10 Nov 2020 18:49:54 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:6b0b:: with SMTP id d11ls1655768lfa.1.gmail; Tue, 10 Nov
 2020 18:49:53 -0800 (PST)
X-Received: by 2002:ac2:46e1:: with SMTP id q1mr5850414lfo.212.1605062993444;
        Tue, 10 Nov 2020 18:49:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605062993; cv=pass;
        d=google.com; s=arc-20160816;
        b=omUPPpIj5DgjQrpUFBofyJ05Nz78XoBexpqwNfnJJGyyYfpM/3o4DKEe/soK21xGs6
         KtHzfXBUZhYCQaifT9dLBhL49WM5vD7zH/xPA3EZ4Wh25oTBpqsVX67dXsASudZwMd/c
         FD0DCgfgZb/KdA64AuDuDU/RqwsDQ9EP1tkTrN/koX51jz15QgPcl7oyxQLVm+P9PkaE
         /Fa8qcVwobyLig12t5bwufVuD701oSV40wKT07nr3jNFFeglZi8DoSdMp2S3Ilw8R600
         xzXMa/c7Fg0guTpHD27DxSljq+p1TtmgVvhfU6GM4oCafKiFOSKSzeH4c+zEAXSAM1SD
         gHww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=fEHs2q6ZI3w1ofByLcfEQkK5WovRYanb5/P9CzU3CTM=;
        b=eiUAr4THPujYBRZ4bdoRsKdWGSg5Ml2PyAbO6VquO1aTjifXTomQRTK9fE+so8incs
         weW5PBqnW+3kNStZ6hGlRx+67O4sZ7/9JKYh9tIk64F6mGPYkR2nbu4cOzmQglOTkeX6
         DZI9noikYzZ/itP43qXwskW8QRq6oEXQPN4TPpHBZXYx9H0fYphpaOBgXCxPVNZUBkOx
         /iEG9sRR1r49QaF1E0vtSmDBQv2cmwAF1wM7P7kmorD7ITgLORkVXFTeTYCV5T/Wax3D
         UQy8KtRTRIviZOCpj62zDppCsYOgFRrw1SsZwxownii+COeMgT2YpJph3NNozSAIeg+P
         o4Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=S06+m5a7;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of sherry.sun@nxp.com designates 40.107.6.49 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60049.outbound.protection.outlook.com. [40.107.6.49])
        by gmr-mx.google.com with ESMTPS id a1si24533lff.2.2020.11.10.18.49.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Nov 2020 18:49:53 -0800 (PST)
Received-SPF: pass (google.com: domain of sherry.sun@nxp.com designates 40.107.6.49 as permitted sender) client-ip=40.107.6.49;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P4G7YvV2FmQWzj49vRXVfiBCgxVzc77lHip5jraTQwuzYIJO1xr3Q/5bD23w7giIdEifNca9dPYgX6dmBxEvfIiriktiWYZQb+7bdsk+11voyTioETTq/SEzd8k2+g6esN4PCxZaGOqsu8DPzhysBRvLJfCezR6yIT2DVEy5p6X2c4yZl9gKa85j3MPUbh0IXspdTV0MROTF7/H0+s1nclH0H92jDs/A1mBFyxyME2KWqR61IDGkKETcCr1z73cMn/S4zQ/jpPhpBA7TpdDhbl/xz0D5L8AT53dEXXGyhPS9GiS6Gn37SnouxL9Zle58s/AvuA/zdV2dS/RW2p0d/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fEHs2q6ZI3w1ofByLcfEQkK5WovRYanb5/P9CzU3CTM=;
 b=MivCuOwUqQR4eJoDF68ywdxQ/rmCWbYB02kWkquOOGKZ8A2zsrlkvVLlx7qjAGN8jbEbjMYDtK6uie0wVpcNk6X53hlBWVTziXoQReqVkrHYjTEyuBZVbTZm6CnTFzfytBzhSTlLulfXAVXl4olYOOjpHn1w1mJqX8zyyDU9Djx2ghYKP8oJwZNONJsR85pORSVeamrn3E+7jeajyi2WYK9sEzejkJBvU4uliwEgFjE5Lv+/mLihjx/gWTxnQRtNpx/M0R4mhQEpu13E8aumQI2/A+MEyyXvLodY8R8jWiZ5MOzKFJoltg8NlE7+mck3xpqoikHrglC1Pr6wSWMCUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB4960.eurprd04.prod.outlook.com (2603:10a6:803:57::21)
 by VE1PR04MB7453.eurprd04.prod.outlook.com (2603:10a6:800:1b0::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.23; Wed, 11 Nov
 2020 02:49:51 +0000
Received: from VI1PR04MB4960.eurprd04.prod.outlook.com
 ([fe80::b178:a37b:1f9e:3a6]) by VI1PR04MB4960.eurprd04.prod.outlook.com
 ([fe80::b178:a37b:1f9e:3a6%3]) with mapi id 15.20.3541.025; Wed, 11 Nov 2020
 02:49:51 +0000
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
Thread-Index: AQHWtnmf1Fe2qKyugUaToCGM3cma6am/hnbQgABT4wCAAMJmMIAAz6aAgAAKvACAAAwhgIAAtS8g
Date: Wed, 11 Nov 2020 02:49:51 +0000
Message-ID: <VI1PR04MB496067EB79873EEC9329B9B992E80@VI1PR04MB4960.eurprd04.prod.outlook.com>
References: <20200930153519.7282-16-kishon@ti.com>
 <VI1PR04MB496061EAB6F249F1C394F01092EA0@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <d6d27475-3464-6772-2122-cc194b8ae022@ti.com>
 <VI1PR04MB49602D24F65E11FF1F14294F92E90@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <30c8f7a1-baa5-1eb4-d2c2-9a13be896f0f@ti.com>
 <CAK8P3a38vBXbAWE09H+TSoZUTkFdYDcQmXX97foT4qXQc8t5ZQ@mail.gmail.com>
 <5a9115c8-322e-ffd4-6274-ae98c375b21d@ti.com>
In-Reply-To: <5a9115c8-322e-ffd4-6274-ae98c375b21d@ti.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 991f25b0-c315-4d9c-6849-08d885ec762a
x-ms-traffictypediagnostic: VE1PR04MB7453:
x-microsoft-antispam-prvs: <VE1PR04MB7453651A14CC9E51BA1F57EF92E80@VE1PR04MB7453.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YaGFLD+d+1xK35YKUmTFNKiHwXnULKfw9MxSCsXTbN9kPym2cUUgQNfXEmgLoyKkLR1BXmCXq8mMkdvEbjdVtg+vvn9mia3EFys79JtThm7+quTOP+4PmbMpvrFH0t6J6xBZepvnjlvYLRjjblDoqlyg2heMsAGwYF++QaNSTxDHOPiVZwuO02HvelQEa88iL7DRp/Ovl9H2SDZvCtSmLvfcNFHrunGUkmctzJ+VXnU1dyr0W1aV53E/34gz+Rayql0gWo5exvZ//X1IB0mEhkcUmxSvlOcAfFW1PoWr+k8C2xVNWVXJBYNeIcNSDb2dPVoL311QMr1jMOsSkW+mI7BacN7IbdT5GBD2VWsAnm5UkEpHh2giFLj77u3uBJ+S0GLTwAlohtunmmcULs8xqQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB4960.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(366004)(39860400002)(376002)(136003)(66946007)(316002)(76116006)(66556008)(66446008)(110136005)(71200400001)(54906003)(83380400001)(52536014)(33656002)(9686003)(53546011)(7696005)(45080400002)(6506007)(66476007)(5660300002)(55016002)(478600001)(26005)(44832011)(186003)(7416002)(966005)(4326008)(8676002)(86362001)(8936002)(2906002)(64756008);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: yNl0QGWc959BzH4IUTZL6QkAhY/0T9alVCvR+6mE+ETzehPza2lgMBzTfUrhrqAjtXL4kdwe7Pi4AWlnfrYgnk6XaTpbdn/5I7+tG1Ktik0QfcsCIX5SQwZOuNAIsw5lUONVuh0jqaz0vOe2xddZCq7vrFa1Mg38teISKVvUcSk5S9IvXrrpGDoixdHYuoDKczYRiEOw8by76v4NPiYWsHjhhhjlphhlIGVgFzxqUzwQN4gALWl3aaxZzrKSyQwYLQDfpcnhVY1SWvLA2HMTo8swODL1q+PJvKblrBzh9hwU60ok/qBOsJttPcUKWgr78r1slW16UYJ+Yk1B3rFxv6G2dHhPZ3Nx3TI8+QhoXULFROS0eZAr0NT66xyjD7Beo3G2NxH9UD1s6vDw6Qyqj/2LP1YWT6rTb11R6NqFG7QkFFhN25VtJPk5IeRVl+Pufu3VwC4Mtzaw98FdG9LGW+S54haHAcOh+zkF2e2AnF8Zv9oDfHLSUwz/Zx08aYkT3RwFEO89kGMP31072PU0v1Zor41ZcICrj31vVn8BN55ltDd2iqXGJkYaqJjHvIctpOsOXWEiUaF5eYHebdLawWGO7wIy/Yf44fVtsnZUfafi6DfRSVXs3sSZYAyyPw6R03EBVcDytYpy6zWUKNqwx8c6+PzOKJaVUmYFtVtOxhILPbyAkQKu6kydWuHdT24VG6hubIkKyBdDGezNATNZKBjkvDM2sHhZO60eFyvDTn/+QXdlQr7qaZu8i2Ok5buuNKVLxEiWYinFh9I2+dEisKhndq8Ov2ibMTezCZ3rD/+EwgQ8WTmIc4K+VvNPxfIXXCoHKKlbitiOS4ozFqbY9Uv+lxhgZxXMrGd+K5rD4EROLOBadPB5XZe9orz0M0Xf2Y5Bixny+F2cXHqJKAMqow==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB4960.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 991f25b0-c315-4d9c-6849-08d885ec762a
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2020 02:49:51.2832
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QT+xczaMI5k5vafZQYY3stf+mNSmIWHNSMkIMnmtP43/f8yNklmBdec0nJQl9Xfo5uycgsVLfUM31JUOy3QTtg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB7453
X-Original-Sender: sherry.sun@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=S06+m5a7;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of sherry.sun@nxp.com
 designates 40.107.6.49 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
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
> Hi Sherry, Arnd,
> 
> On 10/11/20 8:29 pm, Arnd Bergmann wrote:
> > On Tue, Nov 10, 2020 at 3:20 PM Kishon Vijay Abraham I <kishon@ti.com>
> wrote:
> >> On 10/11/20 7:55 am, Sherry Sun wrote:
> >
> >>> But for VOP, only two boards are needed(one board as host and one
> >>> board as card) to realize the communication between the two systems,
> so my question is what are the advantages of using NTB?
> >>
> >> NTB is a bridge that facilitates communication between two different
> >> systems. So it by itself will not be source or sink of any data
> >> unlike a normal EP to RP system (or the VOP) which will be source or sink
> of data.
> >>
> >>> Because I think the architecture of NTB seems more complicated. Many
> thanks!
> >>
> >> yeah, I think it enables a different use case all together. Consider
> >> you have two x86 HOST PCs (having RP) and they have to be communicate
> >> using PCIe. NTB can be used in such cases for the two x86 PCs to
> >> communicate with each other over PCIe, which wouldn't be possible
> without NTB.
> >
> > I think for VOP, we should have an abstraction that can work on either
> > NTB or directly on the endpoint framework but provide an interface
> > that then lets you create logical devices the same way.
> >
> > Doing VOP based on NTB plus the new NTB_EPF driver would also work and
> > just move the abstraction somewhere else, but I guess it would
> > complicate setting it up for those users that only care about the
> > simpler endpoint case.
> 
> I'm not sure if you've got a chance to look at [1], where I added support for
> RP<->EP system both running Linux, with EP configured using Linux EP
> framework (as well as HOST ports connected to NTB switch, patches 20 and
> 21, that uses the Linux NTB framework) to communicate using virtio over
> PCIe.
> 

I saw your patches at [1], here you take a rpmsg as an example to communicate between
two SoCs using PCIe RC<->EP and HOST1-NTB-HOST2 for different usercases.
The VOP code works under the PCIe RC<->EP framework, which means that we can also
make VOP works under the Linux NTB framework, just like the rpmsg way you did here, right?

Best regards
Sherry

> The cover-letter [1] shows a picture of the two use cases supported in that
> series.
> 
> [1] ->
> https://eur01.safelinks.protection.outlook.com/?url=http%3A%2F%2Flore.ke
> rnel.org%2Fr%2F20200702082143.25259-1-
> kishon%40ti.com&amp;data=04%7C01%7Csherry.sun%40nxp.com%7C5d8b7
> 3a4b72947bea65d08d8858f5091%7C686ea1d3bc2b4c6fa92cd99c5c301635%7
> C0%7C0%7C637406197865119992%7CUnknown%7CTWFpbGZsb3d8eyJWIjoi
> MC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3D%7C100
> 0&amp;sdata=iRrBvQ9xjoOUYU%2FDidMLZZpW6XuU4ITVXFDA%2B%2F4rJFU
> %3D&amp;reserved=0
> 
> Thank You,
> Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/VI1PR04MB496067EB79873EEC9329B9B992E80%40VI1PR04MB4960.eurprd04.prod.outlook.com.

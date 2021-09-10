Return-Path: <linux-ntb+bncBAABBF6K5SEQMGQEKRJZS5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 78D5D406915
	for <lists+linux-ntb@lfdr.de>; Fri, 10 Sep 2021 11:27:52 +0200 (CEST)
Received: by mail-ot1-x338.google.com with SMTP id k21-20020a0568301bf500b0051b1dadc0a4sf628800otb.15
        for <lists+linux-ntb@lfdr.de>; Fri, 10 Sep 2021 02:27:52 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1631266071; cv=pass;
        d=google.com; s=arc-20160816;
        b=a2E1osP3BNCz8yALd8dlHr9V2GIu+wrK2bOYzWkeJ3Oq/Ieu6pwK/3/bspe1f/1Iv9
         AiC4miNEOtJVsNWcOSM323NfABEbptZEDSY0MlLHxR4LwbjqJXGBsgZSICOOdeIumw6i
         SBN5JLcxdWQU7ixXvzkeEgG4Sw1rRu4m0BHI7DhmhQf0RW8ruQ+tZ3N6CGO0IWdbgGVP
         B49/g42dJKAYSqtobUeleOTr+o8pa45dHFe1uV/KcTz7jZmf35ju8njxwa3ZPN2H3mP4
         U2aurCxIiSsdMHZvi9Osufhpe1y7yMnSj0z4zw0wg6uFscKWb55Wz72RTfE4GOaYLUdZ
         //sQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:message-id:date:thread-index:thread-topic:subject
         :to:from:sender:dkim-signature;
        bh=4+qfnj14MWmT+lUxaN++jagw17TubFEkD60VhAb5USg=;
        b=tDlC9v7pfhY0scUhcRjdu389TuBuB1fHCSV5GiNnXIs7O1P8uDBKdSC4rrzAJPphMt
         NkEZH5T/zA7K6UdKfmJR3yoGDtPBItQrfgAAvefAQGDkAaWlBE1v7AoR/K515OlQ01S+
         icdO+oYopCUvWDv6gfmokwRqWBtKHZysxMd0R80YmeJJhYiGhqPARWjyauAS8m6CBmF4
         Dz2/poxH72KCTVbqLpV1f9bmx9Q1nn9V+63UbcLmzLijGRBEXxeopCv5ceupt6OHTe/B
         MhNdaqnaemdwuSHAtHjjdb7qy7RcBhYo98KabLe7yd08x1SF3e18e1UmTEhvBWxbWya6
         D2FA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=usauthenticinfo.com dkim=pass dkdomain=usauthenticinfo.com dmarc=pass fromdomain=usauthenticinfo.com);
       spf=pass (google.com: domain of peter@usauthenticinfo.com designates 2a01:111:f400:fea5::608 as permitted sender) smtp.mailfrom=peter@usauthenticinfo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:subject:thread-topic:thread-index:date:message-id
         :accept-language:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4+qfnj14MWmT+lUxaN++jagw17TubFEkD60VhAb5USg=;
        b=OJ+mB9yYi+aqZ5LyMuPzNiAfzFoA8FR8nxsX/rOxqqhTEjCkv1NFZp6XLkzeCT0KYm
         fnn8ZilcbZWL7ZhmOs/vh7K8b3g6onZz3TECDDd0WeUY8XmX2me1dlAXJq0MhnrHTHXq
         AJ0euyaWAZUMZD+L6BGiniCPGO01SfQ0tse6bft6NgX3tF/869oXBrZa1AnhkFtPKSqW
         A1aCjEUkNydbHPsWre5k/k0A59Ny0gk1R2Rs+v22rmPfxiH1yNWoOWhyUgBHBXanP2X8
         bnAjUYHTS8t4HgLFPUxf67FsoyF2S7BY9Lijg0adLDidUd7CXPYaJtRw0/t2IfelV27y
         pYTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:subject:thread-topic:thread-index
         :date:message-id:accept-language:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4+qfnj14MWmT+lUxaN++jagw17TubFEkD60VhAb5USg=;
        b=dLwhr5CihOI3WDDVjj2cNHksdgjj9GvVrov2O+Y+Cm52ajw8hTYhYrTetIHnpzu5ps
         /+gctmGdKYJtnkGPnxtmPtZR0jgARm3TMfdl/USInOfLWAqwiNPAxtlt4koImQzyF0VT
         54LPrEPU34mlcytDEsS1CYyHj5zDb3dAqWoOY5IWhfqvx9j3n6KFqS12jZjeIImCvyR4
         5BhraAs8pnbBSs795+DmU+UrIh6XEeIBDUQh8uZ6aShtNFoJCpeDCr5lWxQGNvaFKXlA
         +7/TaP+m+tgGwEqfYlTtvyYPdxKhFBSaS6PSFDov4X+FoW3Qt4kzCOfCVwESwSldM/CL
         OG6g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5322teBxA7cw0aPa3Hs9UxMZDrAcoXWIAhNtCiIBgTCY4ZWVCV03
	KzkLOIMm0k50X/r12AmVlKg=
X-Google-Smtp-Source: ABdhPJzktO09GxJUGk1YlWtaOyH2LqQsDn3zX/Mwyllq2qUpIxs6iJdiCwUgXVNBQvwjLz1ilPcTwg==
X-Received: by 2002:aca:3bc2:: with SMTP id i185mr3191259oia.67.1631266071459;
        Fri, 10 Sep 2021 02:27:51 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:6a8e:: with SMTP id l14ls1377487otq.10.gmail; Fri, 10
 Sep 2021 02:27:51 -0700 (PDT)
X-Received: by 2002:a9d:5a6:: with SMTP id 35mr3757712otd.256.1631266071015;
        Fri, 10 Sep 2021 02:27:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631266071; cv=pass;
        d=google.com; s=arc-20160816;
        b=vDOwgfYQDNaq5s++nC7+CRrUDFxlRVvSFzyzID98JITvW42bQRAnKBySSeKj/nHfqj
         V+ERwl4pLXcHqC6m0G8e6cRe4Fk4ELZNhdPFWJDvD2w5tm2HQGJpNBw+1h7vYsuqhWLg
         I5mxGgn8Jj5x+mRzF6WiZ9ak3TzEnWlYU/xJWyFDIL+xh/81MyzRjQcShXkLjtjBKAjd
         9REs5p7UCzjUWpoeI1HPT+PblXul5IJLhKzRYqKRmiISI2jFPH3D6m40Nu7Qs4URPn6h
         TWxicjVApLvwThCYteasYoV2s8Uf/kXd1wSQDzqKqJlQsX6kQnIJ9AjmWZQGIwU4q3B3
         JsSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:message-id:date
         :disposition-notification-to:thread-index:thread-topic:subject:to
         :from;
        bh=m/Dclm7U/jpR0q4RqJN51G+VFjrmjz8DoAFlnVW3+90=;
        b=WCYqdPiuZDmMyGjUGouaWLXjS6VDWYiFXgCbu12s9U6Gyq5GrAoYIZM2wm+IfXXXES
         8UFlRYeVLRNACaaZd1mpKCphHzOJxy8MbmMpjyaMEHuplagBs/UI6o5z5u5BBjDGIyye
         AKkl7COFdFnl4Z0u4n37AGTwmN38ANlKxNWoOThH5Rkc0wxlyEyMmcu9eIsTHSUOOqrg
         fMBIJHEQt2H6pnHvYUHIIMgJj+U8o3zoNrNaCwsgvraMxKpUcrnD521GGcA3aW4Ekv1B
         uFoTltu8beMbSyPNE52hQG2kR6GY3cgm8+Zu3OL4IH7Qz73hFFkiyf0p3lB3/OCki38C
         ABvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=usauthenticinfo.com dkim=pass dkdomain=usauthenticinfo.com dmarc=pass fromdomain=usauthenticinfo.com);
       spf=pass (google.com: domain of peter@usauthenticinfo.com designates 2a01:111:f400:fea5::608 as permitted sender) smtp.mailfrom=peter@usauthenticinfo.com
Received: from IND01-BO1-obe.outbound.protection.outlook.com (mail-bo1ind01on0608.outbound.protection.outlook.com. [2a01:111:f400:fea5::608])
        by gmr-mx.google.com with ESMTPS id q18si428752otm.3.2021.09.10.02.27.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Sep 2021 02:27:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter@usauthenticinfo.com designates 2a01:111:f400:fea5::608 as permitted sender) client-ip=2a01:111:f400:fea5::608;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eSyBPeVvBzoMVLiZS5uKJ5JzW6nb+SuoVLmdNj/M6pE5EKVgxlsWP6XuBZduDTSSzZgNvgKeO/mHX4pmqxs7mb2nTws9KcgtnE0EES1fDbG2TVkktut//LBoLMrGtqImVVCA6LEdWP26RdLru5zsppqxFPbmXigh2Vlb/lsIEk4+QiChGkDdvP4mI3k/mTauBT8CZ5afAjFWJZc7yDi90ePTijbmvAJBXRqFtCjrX6HNg6MEpn8g52lpxVJzOSDTbnmpHzrKg18D8jNwN2qbVAsfA/HuUSrjL2VmEGMZLUsTngJWQb/Ii893JxqTH5wBHoIBKgook9cKMFwXtDmiiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=m/Dclm7U/jpR0q4RqJN51G+VFjrmjz8DoAFlnVW3+90=;
 b=TEALpSCuNRiBziXZGS8wmXNiWg6fCAe8N/iaR3YXFreDJ/2HL8c+ez3mBoo5QFtpgSXnv3Wmhq5ffEggvYq7rmY1MlCFHFonQGRJGffiXA4AJBLT/3n2L8c53zoxZjDMwzh4yYeegIpwg74RyOcRZtu29s3cSDPY1FJwIPpZa26rgUGlLsZ3YEHum0banYJ2LjpE5f/Iw0RcAYMTIHXp5i+ZhpMzelV+noFJV1x2UvBU4fE93vqYzF/aa+4up7wrgBXDRIIm1HhX7G+USxYJNHG13VVQDudPK4UpTini/mC4qxEo0I+2X3Mjkcqq07LqkjY+34W7Sk8c2Xh2bjHnLw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=usauthenticinfo.com; dmarc=pass action=none
 header.from=usauthenticinfo.com; dkim=pass header.d=usauthenticinfo.com;
 arc=none
Received: from MAXPR01MB4343.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a01:1::5) by
 MAXPR01MB2784.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:4e::12) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14; Fri, 10 Sep 2021 09:27:47 +0000
Received: from MAXPR01MB4343.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::fd74:ff6:37bb:7d52]) by MAXPR01MB4343.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::fd74:ff6:37bb:7d52%7]) with mapi id 15.20.4500.017; Fri, 10 Sep 2021
 09:27:47 +0000
From: Peter Kirvin <peter@usauthenticinfo.com>
To: "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
Subject: Googlegroups-Contacts Details of SC List
Thread-Topic: Googlegroups-Contacts Details of SC List
Thread-Index: AdemJgSedCTBm4UtSSeWjH/61VhpMw==
Date: Fri, 10 Sep 2021 09:27:45 +0000
Message-ID: <MAXPR01MB4343D91B6D8BFB01600BD1E1B6D69@MAXPR01MB4343.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ccdd7faf-32d1-4098-90c4-08d9743d40c2
x-ms-traffictypediagnostic: MAXPR01MB2784:
x-microsoft-antispam-prvs: <MAXPR01MB2784D68342ADFCDE4BD0FF6FB6D69@MAXPR01MB2784.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /4htH3OzSAszKeE/GAJUfctB8bx60hlThTT6TM07eM/HT/u7Hm7yGtw6P0kJo9urd79tIVH5CfCXl+117dMD2UMLi7oCo6aXvoHVmKukBM8LCtFydUK8KQZEYxe0td8awF5onFHxlItUFp3QSaZasROI+BYWU7WseF68HoeJWFu8hHShqj6GVbjRSFJZZ+sD4zvFny6+vWnHxz3cXhgSY2xoxkxbWbVyL+UW76QVjyeIir3ANr+GIoFBPZRdQdCfHLzl411YHKqW6aTi7SeyQJj174yl3AyHX0cxE8CIR/AlKqxInMk5fAfmm9oQ8KY12n5x58c5kbHbwpSodQWp4t9eCjJqJa8o4LM9dyHSZMD1DAlsGmZx7vCmpOmqnwLt3pNhlx25XArQXpar41SEqOlz4kLQzrJVpLLy0hjobJmBiKXykCppJUUpYOdD3IT8Djdq3fE2tPPU4WdtNITvSBw6iBN3tGPqYIR/RxoHfUOb4xM5qY3PuIxIGxHh2vNOZ9EJIxGJfbFAhs2TPQf8Vmj9t2lXWDLd7/q5qyOqabJUeK3xw9sAvtMItOlRIYpYTz/NICz2QcaSUz25NJO7Kz++z+PlPbNHS7tL+SSfGKNPmT3VzOxRCP4wyGzrXF/V
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MAXPR01MB4343.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(39850400004)(366004)(346002)(376002)(34096005)(136003)(396003)(64756008)(9686003)(66446008)(71200400001)(52536014)(38100700002)(8676002)(186003)(83380400001)(86362001)(122000001)(478600001)(66946007)(66476007)(66556008)(2906002)(7696005)(26005)(6916009)(8936002)(33656002)(316002)(6506007)(55236004)(9326002)(55016002)(88996005)(5660300002)(4744005);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?06qKnB/qWjhgGieqWCKfm0yl7/3FjR7/0aYbAFeyGFaJYxmk0gMtctXN6kh9?=
 =?us-ascii?Q?Bi9AIk67nMUNc98OiK+H1nkGfR2Xt478tBma9QcNDUQGp7+c2PqEduW+bHs6?=
 =?us-ascii?Q?2CptdCZ3nFEACFwHieBzWzE/PV1rSD444SqiivhtOVlIs6FA9qbJ7aq3dOoW?=
 =?us-ascii?Q?9FeTWdRn/336iH4AleJCS5EwLbqHOzdLYSSCL2JMlWL21Uki/k9DkAp3RC/F?=
 =?us-ascii?Q?6EpqFI7JiQQD2pdyD56o9BOv75VMeRE9E7mUSlAxJp5ohR23bdbGqNuY2Ye6?=
 =?us-ascii?Q?bF3yeg7G86Abe6X9inGkE4ghZPOpPIP/8bPG59UKQPS86MEMq+pvuzeiTj6e?=
 =?us-ascii?Q?C3A5LRxJG9A6QC83TPLMqqICIcvSCgIgw0uQPMDKKLa982tJ59MEFRR09eJU?=
 =?us-ascii?Q?66cwpDwM/RnWf28q2LFhLordPNiWWyDHV0fr42LIyvb5gJbT+qEiVq8MpAEO?=
 =?us-ascii?Q?OkZWeVHLR05RXEFyAYLFiRl2jUeLv0pWYpURlNkaZ8/mKEOhrMuCmxVBLQjP?=
 =?us-ascii?Q?yiwH2pS0vqL/rYKvfjKMMDzL2nG0ZA6tIqcT3G1XpDXtiLXxzHpIz2gB/Lm3?=
 =?us-ascii?Q?0icl4HQ4cIJx22NrgSDzyk5kdJ83f7GF0XdOHzCqIVAJgI2mOypnCDX/v0z7?=
 =?us-ascii?Q?64kg9HrroWjPOK3t3QJtk5LlDQPpgWUfvGamEPwRWT1k1EwF7WiGJnJ8LdRZ?=
 =?us-ascii?Q?rFwiSCbnkcmK3VQpXdHEgvWUxpwJrHqyHJTmlvfFh0Ks/QwU7afRa/moo8ou?=
 =?us-ascii?Q?WfzyYLrrMJjxc4ML2uOk1UkQ1kHU5taMre1aHDjNCG12UtMUKZ0nlmJ9oaUX?=
 =?us-ascii?Q?kvz01f4hu56SM4nBzM1iXgEVsjbW6RsSLDfHid/Ds2Jtchc2gwGUHWiKvxAb?=
 =?us-ascii?Q?zUFr+sxJh1XlBiwVPj6wi6VRR2FLGS0cKZLzAhas7zdKjUqAA9jJQNPa8bKY?=
 =?us-ascii?Q?g/bhnUVx7jZGOYfndbWIY/DWp8WmhRPCFoK0MgRsHykE7XPCR2BA88TByw05?=
 =?us-ascii?Q?HiypIdxz8vlHJW2w1wqsOAfPBxR6/4OE35KN5zAqlNkUZRX0FtRzGzDcHMqQ?=
 =?us-ascii?Q?d2RxMj2bH943SVZGZCiH9YiZEonsfaTSdfk9slmH6l1pRR1eWD8v40V638PT?=
 =?us-ascii?Q?CHemu7XxKp5aYALMRuvmmBWGClpy1YLd0bki+CkiuPZL1xLdXO/3Sewi3/hM?=
 =?us-ascii?Q?Or8brgtwtBsD5KIYX3NbL/maMUGBxzAT486Bt1PZ9m+4kmoUn2F7n1Nh6UCG?=
 =?us-ascii?Q?36t8XLjfKKZW5XlRdqTo0PQU0l/iImHAlKoIYSPQnkdB6KTCGyA+qUvNgvPI?=
 =?us-ascii?Q?li8=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB4343D91B6D8BFB01600BD1E1B6D69MAXPR01MB4343INDP_"
MIME-Version: 1.0
X-OriginatorOrg: usauthenticinfo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MAXPR01MB4343.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: ccdd7faf-32d1-4098-90c4-08d9743d40c2
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Sep 2021 09:27:45.4349
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04ff3d0d-ee37-414e-8341-ac93062f75cf
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T8U7fj+3ctBQmhxT9JWNg3u/dhk3Xyc0poECuGnD8gYZHFN26InVaV+4if7zom0CowZzX/NgAQEONqNbbfs7uDr4iF0hZmR97WfyxXxmMZY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB2784
X-Original-Sender: peter@usauthenticinfo.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=usauthenticinfo.com dkim=pass dkdomain=usauthenticinfo.com
 dmarc=pass fromdomain=usauthenticinfo.com);       spf=pass (google.com:
 domain of peter@usauthenticinfo.com designates 2a01:111:f400:fea5::608 as
 permitted sender) smtp.mailfrom=peter@usauthenticinfo.com
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

--_000_MAXPR01MB4343D91B6D8BFB01600BD1E1B6D69MAXPR01MB4343INDP_
Content-Type: text/plain; charset="UTF-8"



Hi,

Hope you are doing great and staying safe!

Would you be interested in procuring the Attendees list of Supercomputing - SC 2021?

Attendees Includes:- Scientists, Engineers, Researchers, Educators, Programmers, System administrators and Developers.

Fields of Information: Company Name, Contact Name, Title, Phone Number, Website Address, Mailing Address, Industry, SIC Code, No of Employee, Revenue Size, Opt-In Email Address etc.

Please let me know your thoughts and I shall get back to you with the free sample for your review and cost.

Best Regards,
Peter Kirvin
Marketing Specialist
If you do not wish to receive future emails from us, please reply as 'No requirements'

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/MAXPR01MB4343D91B6D8BFB01600BD1E1B6D69%40MAXPR01MB4343.INDPRD01.PROD.OUTLOOK.COM.

--_000_MAXPR01MB4343D91B6D8BFB01600BD1E1B6D69MAXPR01MB4343INDP_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hi,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Hope you are doing great and staying safe!<o:p></o:p=
></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Would you be interested in procuring the <b><span st=
yle=3D"color:#00B0F0">Attendees list of Supercomputing - SC 2021?</span></b=
><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>Attendees Includes:-</b> Scientists, Engineers, R=
esearchers, Educators, Programmers, System administrators and Developers.<o=
:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Fields of Information: Company Name, Contact Name, T=
itle, Phone Number, Website Address, Mailing Address, Industry, SIC Code, N=
o of Employee, Revenue Size, Opt-In Email Address etc.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Please let me know your thoughts and I shall get bac=
k to you with the free
<b>sample for your review and cost. </b><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Best Regards,<o:p></o:p></p>
<p class=3D"MsoNormal">Peter Kirvin<o:p></o:p></p>
<p class=3D"MsoNormal">Marketing Specialist<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:8.0pt">If you do not wish t=
o receive future emails from us, please reply as 'No requirements'<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
om/d/msgid/linux-ntb/MAXPR01MB4343D91B6D8BFB01600BD1E1B6D69%40MAXPR01MB4343=
.INDPRD01.PROD.OUTLOOK.COM?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/linux-ntb/MAXPR01MB4343D91B6D8BFB01600BD1E1B6D69%=
40MAXPR01MB4343.INDPRD01.PROD.OUTLOOK.COM</a>.<br />

--_000_MAXPR01MB4343D91B6D8BFB01600BD1E1B6D69MAXPR01MB4343INDP_--

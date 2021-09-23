Return-Path: <linux-ntb+bncBAABBYXFWOFAMGQEWAZSDNY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFFD416785
	for <lists+linux-ntb@lfdr.de>; Thu, 23 Sep 2021 23:34:27 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id x5-20020a92b005000000b00257796f4efbsf6264593ilh.7
        for <lists+linux-ntb@lfdr.de>; Thu, 23 Sep 2021 14:34:27 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1632432866; cv=pass;
        d=google.com; s=arc-20160816;
        b=thpfJY8tQLYFQAK/M6C+L82hH3qkiakrXz6+krKoSyEZK/SQXAU/XDZV2mLu9wXsTd
         8EV29GPtGhpgjcJ/GxAwLW85/arshJRHgkXgNQv1xNxbHsY1iMat0OdCqNQbrqPE+S6i
         1sIE2jf2p/oAYJr4pT7jc4EOqxmxeEj+vs/tlC/R7ZQHxyXUbYDPJd6iHNmtYm6/wT3V
         EssMxDc6znwVjSTzmSfzY8CkGS9qXcoPwAJCu5Wdkd2m/l84q66krle4xBNmsT8yfSBz
         VfpEPqFhgflsPCE5y9Fs8zRnPEhgBbi/S4SPZOwWf8Gyibk/DBgaDA44eUcV0BzKA5QR
         o6IA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:to:from:sender:dkim-signature;
        bh=GESM5kFkgYpgNML23ZdenCGMC7DGdmDUlnBYLybG36I=;
        b=BqSyQx5dyW1951+YJsylXRLhHamJ9qd6LzwBPOVhlykeTMQ9BhE7GGw7viIwi8rzD7
         YSmmrglxb6HAnwe6mgJZqpVhLg//ZZYQIUFhkqtq+maf4WbfW3We5xyuENB2MPeWidYQ
         zPRedMJMc8kbGxPxM14F+r1rls8KaZnBOl1S7mmW3pOqx8iOvhLznmWKHcSlUhJdrTeG
         q/f42sxImMvJzghzY96XCmHCj6iZUKEpkgGG9sGhFCyHgmh6Kg0DvymUeR6i5TPmlowX
         rQQu2XWBcuLNbKND2YQYsme9aY0O6wbJnbSgx3X2CIW9fAh4iLfRJ3c2EF9LEpmsNfvx
         2lqw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=usauthenticinfo.com dkim=pass dkdomain=usauthenticinfo.com dmarc=pass fromdomain=usauthenticinfo.com);
       spf=pass (google.com: domain of peter@usauthenticinfo.com designates 40.107.139.72 as permitted sender) smtp.mailfrom=peter@usauthenticinfo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GESM5kFkgYpgNML23ZdenCGMC7DGdmDUlnBYLybG36I=;
        b=gqjEqPJnSBQjamKkdoWhaYvE2/AboGtGkhSPZ7iqRpIQLE6wwpP40pDLxBLTuwJWbN
         mDvZKJcpoiJ4uocKfpw4Qm6h4K0C0WniHWE4bJu1hAvgF7r0H8iVlymi+3whYVwQIhTI
         h5SwbzhCNYUP8zhAtBqL+uFasCpsHvyBnOxmWzePlR55doi/NT8AxeekEiiViMD3ZgHw
         2mFJQuBWbSScQEXpAyyhnnmzfT6kdMKlVrbqtK09TIBStixjmfvQtyqW+PY8IHgOiZVQ
         NRvLyGdUorRdgJ/lLLD35N5Cadd3ZbIjhnAYGwxt+A01i3gPiPCtBSn++Q6BxCa8mT9L
         Xj4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:subject:thread-topic:thread-index
         :date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GESM5kFkgYpgNML23ZdenCGMC7DGdmDUlnBYLybG36I=;
        b=fzRW+FjJLOXaaKB582SIeJC9ARXnu4r8Hmvgt9g4MrfiNJ/1gXfMEU8HnmMSuDroPR
         4k/Al0N8QLPyIedE0Azbh3zA7FxJIzpnFfO2q92TrODOPN2yC+OWCQ3NVxIeDfCiQ+6a
         6YiAf+d4dHr/3W4ckmFWacmWfidrCobJnaKHe6txyl+7sQ3GkRogWrbSNcr0TCqT2Rmp
         q8v+JFHIT+ZSyX8yA/jcUhn95efp0l2fj5lPtXTndQG4OVoaqtpZMH0JepeKoEWD+Az5
         9ZnPkBdt1tITt2vSDBC1qBdTBzo5NXpuNci2VkZhqVTI4RFATRg75MvpzeKsmhfImXdT
         AzvQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530/payY2YhRqyozyL6avyhD4dxMguin7BQ3aSidWraVOdFOjAU7
	wMz42oi9D4h5v9U5ABzSGUo=
X-Google-Smtp-Source: ABdhPJx3UkxpKXEdps2uV2KgC7r3LWWv7B2JX5ZTeK9V8TLcNgseS6ry0MLel1AmvFx2fAO3G6k11g==
X-Received: by 2002:a5e:d711:: with SMTP id v17mr5898981iom.93.1632432866150;
        Thu, 23 Sep 2021 14:34:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:1a28:: with SMTP id g8ls1961223ile.8.gmail; Thu, 23
 Sep 2021 14:34:25 -0700 (PDT)
X-Received: by 2002:a05:6e02:154e:: with SMTP id j14mr5712839ilu.303.1632432865815;
        Thu, 23 Sep 2021 14:34:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1632432865; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vu5tHkpkAGYlYkF7Nz3GMFUDKj4WpHgh40140e+3X7QOqzwcnMJl58uOkwlfRAUU8P
         neQ6Fxoyic62yYyXaWggWGBJlGEnmyzKbe5GQpdK1Axz0RQhHu6xSYUVpR6gap5VXTpA
         NCXFfv6gp4I95moFda1NJMGPn5zfOHBwKeLIxjPUKyZCEwd9Vt8y5bwkGnSWgoxg5Sv6
         jkrnI0dM4m0yMm4Wd95zalKgK0RkT8WWygnlEVEDHJ4+J9Clp5r00zyJsjeAxv+e5wor
         54aCfjuSG/ETTo222i80gy7tvdDsA+V2A02i4KLX8WilFDQG9Ai1+D66lgvAN+9j8+oj
         38cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:disposition-notification-to:thread-index
         :thread-topic:subject:to:from;
        bh=3KImd8j/0TqDbaDBxSOOcxpb1TXe9xpL8ShXCIQxnaU=;
        b=Y2DHftoAmUEGnps8sElavxPY0LikbYJi82tBzCBPWR3leuZHVKP97CNw7VigwAlKcO
         zI0bv1XocKVgTTJpPfYx5lvASYX0MH79/rZsU1stSkjMQ/IXk81OIDl3bU+8wiVDUWA0
         RSmb8mC8tgTMApcASuzZJHCtjtTOiGfD2/s5lrLbWqujV+qn9hBy/Xn2LLLyxl3I84EK
         iWjpB3dKsNIVOlRXXE8Vci6xOD3ZkqJbbGEZ1Wf7PiMmhtU3wDfMwENMrjwPvqCk0f3F
         c3FXKV4haC+Bf/5u7fUdDHF9LIy3Gp4ZpQ1wqG5vDkV/wJ0SvOop3H+UZA0SXmd6I1Rf
         JZSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       arc=pass (i=1 spf=pass spfdomain=usauthenticinfo.com dkim=pass dkdomain=usauthenticinfo.com dmarc=pass fromdomain=usauthenticinfo.com);
       spf=pass (google.com: domain of peter@usauthenticinfo.com designates 40.107.139.72 as permitted sender) smtp.mailfrom=peter@usauthenticinfo.com
Received: from IND01-BO1-obe.outbound.protection.outlook.com (mail-eopbgr1390072.outbound.protection.outlook.com. [40.107.139.72])
        by gmr-mx.google.com with ESMTPS id m128si289551iof.0.2021.09.23.14.34.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Sep 2021 14:34:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of peter@usauthenticinfo.com designates 40.107.139.72 as permitted sender) client-ip=40.107.139.72;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IykneAHbEjPolCvo/30/sM8xoOB0H/neN9rTSgrhZngFYymTkOvHGYbJcoofBS7kyYXeTMJOF62p25rq1fQl3BjZ68/f8Zi3gk48Fv5r7sUEMYRFJcn6xR27f2dn3p3F0R37NZZoRe/ytnoEGYzQDxchOTNP2de4psbxErfTX6KlO/Om6BIfYIZhIM+4FjJrTiPvG55QbdjMIJZB5tZ40sgw0CmbD4kGgPWSfzijFqA0XunuL0+EjLWutl6Pkchy4IjluuN3bg6cV8tadLTirA565lst2c6AmLwjVXHTv4rvS4vr5Zf6jB2IBjf+TU83C5xR1zEhEatkzWf5YCDTFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=3KImd8j/0TqDbaDBxSOOcxpb1TXe9xpL8ShXCIQxnaU=;
 b=B/E4G8RKopG0A0IyMik67quoNYYK8ih9/Wh6u7zee64nO2LMM8jYf0EbPO6422n58M35Jv1O0mXFdK2t8FrwDhpr/qw9LFmcqKSo507rCrgNH/oiKJvcCKN9+h0ejPAlkwOFlQptJeSTeo51UqxmgxsZgGkSZLUfGD0kkBWTHZBmQm3EwgNDHkas62Jtchl//t/ClvOYLEaKdCkoVgcB1HXmPMcKMr+4Bs2MaatKH0meew++nvVdTxoLJbAXKe10qffsetUXzCV3ALLHx+aLRvWu7+eMDA3KQKpYTVGnF1abnX2E60EgEuBuW2oNWwAsj2/Hb4Q6OtwAcGXHRwI5VA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=usauthenticinfo.com; dmarc=pass action=none
 header.from=usauthenticinfo.com; dkim=pass header.d=usauthenticinfo.com;
 arc=none
Received: from PNZPR01MB4352.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01:4::8) by
 PN2PR01MB4489.INDPRD01.PROD.OUTLOOK.COM (2603:1096:c01::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4544.15; Thu, 23 Sep 2021 21:34:21 +0000
Received: from PNZPR01MB4352.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::e410:d8e1:b975:60e4]) by PNZPR01MB4352.INDPRD01.PROD.OUTLOOK.COM
 ([fe80::e410:d8e1:b975:60e4%8]) with mapi id 15.20.4544.015; Thu, 23 Sep 2021
 21:34:21 +0000
From: Peter Kirvin <peter@usauthenticinfo.com>
To: "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
Subject: RE: Googlegroups-Contacts Details of SC List
Thread-Topic: Googlegroups-Contacts Details of SC List
Thread-Index: AdemJgSedCTBm4UtSSeWjH/61VhpMwKnKt1Q
Date: Thu, 23 Sep 2021 21:34:19 +0000
Message-ID: <PNZPR01MB4352A6F0E96BF998EDD46C83B6A39@PNZPR01MB4352.INDPRD01.PROD.OUTLOOK.COM>
References: <MAXPR01MB4343D91B6D8BFB01600BD1E1B6D69@MAXPR01MB4343.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <MAXPR01MB4343D91B6D8BFB01600BD1E1B6D69@MAXPR01MB4343.INDPRD01.PROD.OUTLOOK.COM>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3837b2e2-991a-48bc-28f8-08d97ed9e7e6
x-ms-traffictypediagnostic: PN2PR01MB4489:
x-microsoft-antispam-prvs: <PN2PR01MB4489E00F2818C36E22BF9621B6A39@PN2PR01MB4489.INDPRD01.PROD.OUTLOOK.COM>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /dZWbLMfX6TYd8za2B4f4BRFU6kl33ks0xL5xM80LykhRd8Hu7mOQZ5oHC7PJu/yBF8H6xIm3/Ukya4XREcJ6O5TXPulmeDvmfbVIc5JLe6cymXclRysdl2x9ksTtBXbsWjTXotsPLP64558kkkfl+OORUHSMVeBli0Hh4CyEqZ1h0BCfsMLXaGjA7W3Zn8sItvAQ0tockggiJeja29QPhMEpnVDUYriDrVqnvJwKcXPAbIJJxP3gzRh/tJytYpuTgrV2U92/Kt6oTY9TpvU7nWiSUz3enTarLHoasb50cFW7mJ9ucoBiWKwM2ZLCVu+kAePz0TgmfFUCjuWHcPzIlVFS97YqGBWIsfwmE+bNSF6qopVxMGt8sH5XPScQFSUTGqFdDCmUo4Vo0sVycIBri9kd6JxrDHCPmSMQsxfwVzGpjo0YuKcZt4p8oWc1GCR6xMkBiKcMUN5OKyd4t0C5/r1NahEdnhbmRhNDA1P/XIY7VAJAAaBCMdxCGVQ6c9xGyQnDRY/BDoq+05suhZFg1GWsknk5UWOf81QwNF6e/h54nuZ2PVXttHr43GRWDa/ZlubiuMKCIumcj+Lve7htZHEYN5h7C+Hsd1ZIJS21ejXNU+JnPOmbJZey66K83JwvTL1XrN9JgfjErLOtXR310wDXfmys1BUA8fOYWATWYmGX+AEj2J/iUJ8Odn5KaDe
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:PNZPR01MB4352.INDPRD01.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(136003)(366004)(376002)(34096005)(396003)(346002)(39850400004)(9326002)(38100700002)(55016002)(8936002)(9686003)(316002)(26005)(508600001)(6916009)(2906002)(52536014)(66946007)(5660300002)(33656002)(86362001)(66556008)(64756008)(66476007)(66446008)(8676002)(122000001)(88996005)(7696005)(55236004)(53546011)(186003)(6506007)(71200400001)(83380400001)(554374003);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?wlVMNwiHpTMqPkfE/7mx5/yEiXy9fuhThP/aN/BZxzYg2Z15gtfe+2MlWdLs?=
 =?us-ascii?Q?Qpz7b6GoDNG5ZyY5IH9h+J0TrI/kl0uKSvS+XgbIRUnG821vaImeAHRIOdFl?=
 =?us-ascii?Q?NUdgNxBkKibiVap/MVS3kpEBW7hzZhrXvKzJetDExpDROEIos04hpcmFSwwT?=
 =?us-ascii?Q?rQTACh5mPW/iIHOCVHG4eSGEShWvRegidfSHzpbehVShwX8m9V9WUtIJWG/5?=
 =?us-ascii?Q?cFINVthNgQGbWlkrAAAtZ62vRk4nbb2HK+mKgbURhWzIxng6brntf9FRE8Hs?=
 =?us-ascii?Q?RayvDERvlhOkCO8Zja8pjV+L6j0f/2uT0aXcH+eDLvjTaXYlIvedRyXKBZuf?=
 =?us-ascii?Q?zEIMZbhsjXM3rn3oDG3UWb5RoUFZA1nmmJM1uxOEwgk158sg5IkaTpMrQOo+?=
 =?us-ascii?Q?2RZhK0C+kZ4XiuKpWx8y+BO3A4BPsd5f3LKhE/IQeYpDXqEhTOeduSMK0qTy?=
 =?us-ascii?Q?wGz7leTGwb4fJ2m5ta9aaRVg3iZe5//L6ZS6kxzXz8Q8hpaDO+MfkRMQiK6R?=
 =?us-ascii?Q?09ifpl2P/kfGYKe11GSgk2AmdmBMrfUikF0lsqLG63m4psB+E91KSKVERbED?=
 =?us-ascii?Q?aYT/tXrbKeFhI4dFgozTtgh4Z3Hi2UKzytvGGCx9pBcLv78CrVcPXWuiO/H1?=
 =?us-ascii?Q?gJiG/CQFH5Tzpo9UX7ZJhrliavQJEOGgD40nreB64yKnxg93Xthq4xUuWR80?=
 =?us-ascii?Q?ui8TekkqHQxBziwAm6rZb4puC0hNYL/+vUGgNQJbXBTJs4FnSMX9wlSPw4+B?=
 =?us-ascii?Q?IoLv9yF02f2dfxVtlGjPmTy/wjwTXzxJITeB7Xanvub+wOAMkDaOvHL0A0Po?=
 =?us-ascii?Q?5en1w18frE3S3D19k0+trL+YEOKQz7N5eBoSBP//WoW3PDzJUfwC73IAkZq9?=
 =?us-ascii?Q?n5yl/wkbG3pFRF5FRnSgMOnvP8SwhsxahsVGljxkimIl0vlmzygI7h32bzQo?=
 =?us-ascii?Q?y+2KdrgPbLGfqaUDg7XKWCqszbYj1e211BtB+9MU//rtz4L3m/B4BY7c36S9?=
 =?us-ascii?Q?46St00sMz1SsZOOo13KAoXt8DoWZZAewgfI0o2m/Mp9NsEpLXNPjLhSboFum?=
 =?us-ascii?Q?sVDVy/EBeGaH7q2gmvR9lL7o/P1AluZ7zSBTBWjoXFlESWHxEasC/rKG8e3U?=
 =?us-ascii?Q?gbejVqr1CUIkogJSgna34tK7Or4qmlKpJpZXw9RgkYvz/wlX6ln8S0QJH7Um?=
 =?us-ascii?Q?PnAHMDatl0BWmfNGN9oNGjxGoMyqX0ta/GVrcwzjBPmsTzA4bU8LawVJYObu?=
 =?us-ascii?Q?74L3haIMvWzzyTu5Ju4PDd4zL5hDcIsQ0efDkSq5dQyRinjNlI3vpte32fWT?=
 =?us-ascii?Q?8Vc=3D?=
x-ms-exchange-transport-forked: True
Content-Type: multipart/alternative;
	boundary="_000_PNZPR01MB4352A6F0E96BF998EDD46C83B6A39PNZPR01MB4352INDP_"
MIME-Version: 1.0
X-OriginatorOrg: usauthenticinfo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PNZPR01MB4352.INDPRD01.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-Network-Message-Id: 3837b2e2-991a-48bc-28f8-08d97ed9e7e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2021 21:34:19.4959
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 04ff3d0d-ee37-414e-8341-ac93062f75cf
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vYx2pAGeaXo0Dzxub0QL6ajEn1gjYRUrGQ72A8jLJkhtCmAzd8IvFoPL1z+00F5u8lb1LJgI4o7rJxiggkzbB9BS4XATg8+SACCxTPc/tkk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN2PR01MB4489
X-Original-Sender: peter@usauthenticinfo.com
X-Original-Authentication-Results: gmr-mx.google.com;       arc=pass (i=1
 spf=pass spfdomain=usauthenticinfo.com dkim=pass dkdomain=usauthenticinfo.com
 dmarc=pass fromdomain=usauthenticinfo.com);       spf=pass (google.com:
 domain of peter@usauthenticinfo.com designates 40.107.139.72 as permitted
 sender) smtp.mailfrom=peter@usauthenticinfo.com
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

--_000_PNZPR01MB4352A6F0E96BF998EDD46C83B6A39PNZPR01MB4352INDP_
Content-Type: text/plain; charset="UTF-8"



Hi,

I am just doing a follow up with my previous email to check whether you are interested in our Contacts List.
Shall I get back to you with counts and pricing.
Thank you and I look forward to hearing from you.
Thanks and Regards,
Peter Kirvin

From: Peter Kirvin
Sent: Friday, September 10, 2021 3:28 AM
To: linux-ntb@googlegroups.com
Subject: Googlegroups-Contacts Details of SC List



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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/PNZPR01MB4352A6F0E96BF998EDD46C83B6A39%40PNZPR01MB4352.INDPRD01.PROD.OUTLOOK.COM.

--_000_PNZPR01MB4352A6F0E96BF998EDD46C83B6A39PNZPR01MB4352INDP_
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
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Hi,&nbsp;&nbsp;&nbsp; =
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">&nbsp;<o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">I am just doing a foll=
ow up with my previous email to check whether you are interested in our Con=
tacts List.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Shall I get back to yo=
u with counts and pricing.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thank you and I look f=
orward to hearing from you.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Thanks and Regards,<o:=
p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D">Peter Kirvin<o:p></o:p=
></span></p>
</div>
<p class=3D"MsoNormal"><span style=3D"color:#1F497D"><o:p>&nbsp;</o:p></spa=
n></p>
<div>
<div style=3D"border:none;border-top:solid #E1E1E1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b>From:</b> Peter Kirvin <br>
<b>Sent:</b> Friday, September 10, 2021 3:28 AM<br>
<b>To:</b> linux-ntb@googlegroups.com<br>
<b>Subject:</b> Googlegroups-Contacts Details of SC List<o:p></o:p></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
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
om/d/msgid/linux-ntb/PNZPR01MB4352A6F0E96BF998EDD46C83B6A39%40PNZPR01MB4352=
.INDPRD01.PROD.OUTLOOK.COM?utm_medium=3Demail&utm_source=3Dfooter">https://=
groups.google.com/d/msgid/linux-ntb/PNZPR01MB4352A6F0E96BF998EDD46C83B6A39%=
40PNZPR01MB4352.INDPRD01.PROD.OUTLOOK.COM</a>.<br />

--_000_PNZPR01MB4352A6F0E96BF998EDD46C83B6A39PNZPR01MB4352INDP_--

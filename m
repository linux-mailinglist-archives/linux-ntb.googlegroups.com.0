Return-Path: <linux-ntb+bncBAABBJXUU76QKGQEBLMHWCI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 578BB2ACB02
	for <lists+linux-ntb@lfdr.de>; Tue, 10 Nov 2020 03:25:43 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id u1sf5089906wri.6
        for <lists+linux-ntb@lfdr.de>; Mon, 09 Nov 2020 18:25:43 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1604975143; cv=pass;
        d=google.com; s=arc-20160816;
        b=rhQSDQ7Ezop5LXT2jLhz57mG2ep2awaqdFOuDxrs7kBlKfvCahzICw4k1TQYhgCQdx
         w6ftNrj3cgehaijgL8DzMe2Kcwc/jIUVt0eKLf8ASjIxihHqLfB/fLnRs0jRWT2Cn19h
         WHa6tcLZAX+dD7K1RggIM2RJQJMhw4ng7X4o0VoXqh3hktvsGx5vEEAgjSvbUzuaXSlg
         o9/K4aFpzs1JYQ8VPGG1KDeJMV6q3E43xLbBQFv9s2R/KZIurjbnzteeLAcmPcrGxorc
         VMHQ5xr8DUf/3N83SYePbbbEJsuAtmX5Sd83CIik6INbe2zZgL9Q6zcNimrWg0fOIr8Y
         9u2w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=g+SrE26LHZIxOgQHDcFuAX2kis46K5Zb37+kq5xQL2E=;
        b=xMri/M7wmNHlSnrKvzmmzdDjYCBWeKr4z5lOFeSDE+owpj/D7ZslJoc+8CyGeY1Ctk
         Y3jSP/+Zl6F9JYMQ2OidgikAPtXqEXBZEivbvHbbz6GDBezRIoVvSIR0HMLApqG4yCFC
         ptoJmLvUmQm5X1BBprGLEeiUj4MhkrbgJZAmwGYEyNdTenr2TTGOLrez4ZbHNaikCPu9
         BGjSiovxE2RImDZTLUKZqjMxxAn05lRu6gO0miZUCtYDTkSYVz3LWFZy/oAa+zkeRWnG
         AuHcrvZKgXPt1rvFIZYqcdy8SjEIWwP5GSIaGH1eK55cHdmLm2IyPY/Za7wMAhAOZUjn
         P/SQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=GvYf7CCR;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of sherry.sun@nxp.com designates 40.107.22.83 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g+SrE26LHZIxOgQHDcFuAX2kis46K5Zb37+kq5xQL2E=;
        b=EiWWzpU73K/a8CAqUkA6OWMIA1XpoczpTM3sv1AdVILham9S/tAcejfV+6C9ZB1oP9
         Yc5BW4ebTlFLrmRd/ne4faJps9fwq7qzi9/3sSklLGjVCq/G+0rZIHttdpQXZAqwz1be
         gSZLdFwDhVGrDNRPWADTtfHD4ueA4FK+B/RCXDMXnQrgi9NG8mWq/uvk2lsG4fcHMimS
         Qg1MAlGA7ZaeNkIiobezsiN8a1HElsYz8M/fI3sTUK0mZWvn+/UQ+22iymCqx2cjQyHX
         bc3Qs3bvFgISxv8YhHJ6B4nHrOnKwdZDCpYbp3AIGYAlH7Visrpmhl9rkCkVrRUMpEEj
         8LUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g+SrE26LHZIxOgQHDcFuAX2kis46K5Zb37+kq5xQL2E=;
        b=DWdHLH0B13bizoKfUQM6qTVCugkqf+IO1LNLkzSPhZaRtsC28B5em1w3EP8CsiL58z
         VCKlWQTwxtDujkQ9TgGhW48ORdZFUXKSFV7H8YVATeW2Q151ULA/P/7QrOKAbuglc9HC
         rQ+grfnzqCXeFNG/AYmQC9nLa1k4aTz3nYK+6nPWD3mjM9cFQFOGfO/qMlLI+AmUjJuB
         rFxg3If1tVJyBaDBKjRsJOzU4EXE1kjBI0qWTkruFzlue5xQer6nbotuh+R2U7ylwwhI
         2c25tMipauxmflJi7ACz4hQTxD0GA6iLBum+RXWYpUAakrW/g53ReTA09PTS1lDl4p6X
         H5YA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530FhKWMPfKFrlH9PfyrLKPgsBCc4Rj55RQOqVwVfxPOGY8Xih0U
	s8KwkkaHmEVyMVZzxxpnWr8=
X-Google-Smtp-Source: ABdhPJxDJhYblNMRRn0kXgAH/SRqdXamNZlzjbmtniiE0BZsTAAp0Upn1cte2XRV6tdfoVTRj6hD8Q==
X-Received: by 2002:a1c:c302:: with SMTP id t2mr2171919wmf.189.1604975143024;
        Mon, 09 Nov 2020 18:25:43 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:a544:: with SMTP id j4ls867255wrb.3.gmail; Mon, 09 Nov
 2020 18:25:42 -0800 (PST)
X-Received: by 2002:adf:e484:: with SMTP id i4mr8423252wrm.398.1604975142233;
        Mon, 09 Nov 2020 18:25:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604975142; cv=pass;
        d=google.com; s=arc-20160816;
        b=oDFtQhi/QziU0HEhuDH7ANehBc2subB65Qc6O7Zev2AFZwk4vAVjDq+UgfTfFpL0AH
         qB04bWjPIE0fW4LqK2tWwyOM3mQF3ymFeftqqF7QAfonZFepOaiUHRCw4sDUb6tMkqEr
         dfkHfEsqjVrl7AMGzshaEDBzgrYSLIl3LFP8AQSvCrqGSPMAhHhxDYJcoqyOlJ1CYD9+
         H6YPztnIrR3Jol6eZ0a1wVaBW0ELdZcarI9IM5Dv+XwNhdUmtg2WUmL1tsqN6K4S0XeF
         jQyogoSG4G/ZLY90dewwijHz9sslQs7z9o/wkDqfS6RTfkJX3Ngk9uxZjXJGkc9K0nSq
         S1Lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=hsIssWBEJmaiOz1ix3+KF0t6QS3MD/DulladpG3nM8g=;
        b=Ra+SLRTRS3ZkNZfDAQPIJCcwfw+MnN8NMmdp+ddZA3ROIMjdIe52g70c7zJ1iMZ5UC
         2XufnI0xWOnKfs6b5G0Hl156F2fcDOzQQdaWf51TeVa+eL0ukYb1AXHPbihGnQnxAC4X
         PZ9mcK/YdLQbGNH1Pge1XIoeFK1u4NSPxLaztZwXu9JimKFK3C+t4UUBY0mrseyITGKv
         igeHFRVFx1YhvjGfOrpKGuT7qVgkmUD9JIYiU0VMMq7PB44QB4NI9LuWZcC6dX/HQAek
         7QIWtz/h/qMLBPixQUPgJzdbUF/JNGYghcFqNqneuU36eaJCVK7Dvzv3zCbeKPvVKIsE
         GDUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=GvYf7CCR;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of sherry.sun@nxp.com designates 40.107.22.83 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR05-AM6-obe.outbound.protection.outlook.com (mail-am6eur05on2083.outbound.protection.outlook.com. [40.107.22.83])
        by gmr-mx.google.com with ESMTPS id t9si37444wmt.4.2020.11.09.18.25.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 18:25:42 -0800 (PST)
Received-SPF: pass (google.com: domain of sherry.sun@nxp.com designates 40.107.22.83 as permitted sender) client-ip=40.107.22.83;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lBfmxHNdti+6cssI0c75CZEA+kBF4+2R81hrj54XtSdFbapj81wnTzRk6aPZYiBZHhynGWLXNgu+/9amsdumvjcLSrDNN4OpV37/M/3jOUTS/RF2yfwKkNe0CIlM+IN4DNnf40VMdMVKRRCj4WDjSq7QtwEYrr0vxKSmf/Fll487RF5zG2ba6K8sJ9i9EtET+NnDGDNQyYpe3ns6YpM1O/PgTG9QyHCjKQQlgFWOchdNESysud38quJW7ZXY8s+IJbccUpUvJ3qspXweaUCCEK5MMsfXAMOgPtaa+XNg/X3Y6WZAZcbWSJWQxsCwIuswwTxyO9eprjCD6zWTCPWo1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hsIssWBEJmaiOz1ix3+KF0t6QS3MD/DulladpG3nM8g=;
 b=jZKUwV4iet6UFPmSrTRwlhw8fifHPu7G57aHdlsNXepbIFLYGqsn1sm1TzacqGU2OX8wXZQk3sM+ma2znkbYCSjYQAwPKe/ll0fZeGrGAh0s1irFRPYf9f6J36X1IHCV2quQxwrB5NyqUIL53olEmB/HBr0y8vgYi2Jk5kB3z79WQUDMuh1bzZ6mwyNwyPVzAwPs5iduw7m8H1VqVFHZm7bjYt5B3mFRGf1EjAIqbNRefrfmZoDIjam6TaqFKfPwlCiSfGZONaqUYVwh+6pTfDmZgnV9RGhLxeM58/wRbbDeDlhOCcA2j6Q3UFvo1atrxvxvx85mv3ea/zY/z/2Udg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB4960.eurprd04.prod.outlook.com (2603:10a6:803:57::21)
 by VI1PR04MB7071.eurprd04.prod.outlook.com (2603:10a6:800:128::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21; Tue, 10 Nov
 2020 02:25:41 +0000
Received: from VI1PR04MB4960.eurprd04.prod.outlook.com
 ([fe80::b178:a37b:1f9e:3a6]) by VI1PR04MB4960.eurprd04.prod.outlook.com
 ([fe80::b178:a37b:1f9e:3a6%3]) with mapi id 15.20.3541.024; Tue, 10 Nov 2020
 02:25:41 +0000
From: Sherry Sun <sherry.sun@nxp.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
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
Thread-Index: AQHWtnmf1Fe2qKyugUaToCGM3cma6am/hnbQgABT4wCAAMJmMA==
Date: Tue, 10 Nov 2020 02:25:41 +0000
Message-ID: <VI1PR04MB49602D24F65E11FF1F14294F92E90@VI1PR04MB4960.eurprd04.prod.outlook.com>
References: <20200930153519.7282-16-kishon@ti.com>
 <VI1PR04MB496061EAB6F249F1C394F01092EA0@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <d6d27475-3464-6772-2122-cc194b8ae022@ti.com>
In-Reply-To: <d6d27475-3464-6772-2122-cc194b8ae022@ti.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 93779005-415e-4c82-877a-08d8851feb64
x-ms-traffictypediagnostic: VI1PR04MB7071:
x-microsoft-antispam-prvs: <VI1PR04MB7071B435662015109840F28492E90@VI1PR04MB7071.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BVX0tShhzXI9JOf+W1Z4YK9TAgL5QhqHwLr2Fpf+O/bOompyKU5RBsBX98ln8o8dzZ0e10HYW3cTfn7RE9j1KDjNOwQsBtfqajHvfClH/sNh4zrKL5vuvVt8I+DzEE6nVYfm1Ngg0W3QG96P6CbhZTpOp2iXJUb9xmyZLtHC3ztSA5jhqKlvWdcORkuE52Khfu86zAiHgRbXkKq/d0wHY++Yq2TPuZqLFDPRFzBwchNyxw9JwfdzA4J0K+FSJz+FW+6KWvII+vz3BMot97/xi71Jib8MQ2hMuJsa7UuWP5LGr8b6hPYsldilsoujjawv
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB4960.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(366004)(136003)(376002)(39860400002)(55016002)(9686003)(76116006)(66946007)(7696005)(7416002)(6506007)(83380400001)(26005)(53546011)(186003)(64756008)(66556008)(2906002)(52536014)(66446008)(5660300002)(66476007)(8936002)(54906003)(478600001)(316002)(8676002)(44832011)(33656002)(4326008)(6916009)(86362001)(71200400001);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: yaSdp3VcLf6wntND6mEHs7En8imWVjhRY8q6hmZo3VgAgwXq+ekJ3DmFJ5FvTVDnCtaFfBrqCgicYQ0ZEJfJO83RXMWfz0huo1RQB1RagnUID9ZLR9j72WRQkpiHwWitCwsVScMBrIvOGfOhHQif0Peb1kNb3zqNHm/Op4unoO80pG/+Gz9sCSYxL01UnJ2MyrKg1Q3ujxFkay9czZgvTKuIgw4wzlbfBSu/74GLC57YS28MjhQGC+T/G9ru2pa1+L6noz8twBW5ZlbrdF+mNVu0fYLGf4kkrXcjGlpN1kaw94rzkAo5D5qcvj0U3u0GNqV1YZeDDAhiVtPXwBgk4YY5mSMIIon15uRvI0yT56MIwPVh046JQOWda5McIf3SWdjFR74R9tKdJ2F6Cx0Gu266cqlmaTMo5X13y1TFHtaAjKCSArr6vQFQZNOqd+4X4gXYxXt7UXGr52pmskNyv5LVj7d1xVp/xtd3E3xpfA7dTLnmpN1cX5m4J0vdCYZDXD21OVawD1lVaiI6BODwdaP0qsG+WEBxTswzf2OUqAEioxnLRMefaob/UgDk2o7C/lmz3hZ+OzPkvaPFJjFMyKRhSeA3K6Xhswp4QCKpi8E9q6KZn07oZjV49G4SP6rOylBcRlJUih3SAzf9lSVSXxmY/SPa/tsXEblHe6ChPiX4f/Ll+DhZ8eJ31rE3Z51TFfYn6hRqbShePmv3nn3EqbCfzBoDh8wPYS5ZiZeuZkho38eSbpc5OFhvJIaOhcIENpRYmo+pV7+tCcd3cm4AFS2paPuQ0embydfyzP6NLG8oF0XlN55bMrqaeDBqVoe+XoQHufWWo8XaCYf1iJGgYNudGSOTVbaTuQwJYlePYNu8DeJ6J9pd06E+BjXcKs6EikDel5uNhu+XwH7fIo+hqA==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB4960.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 93779005-415e-4c82-877a-08d8851feb64
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Nov 2020 02:25:41.1960
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /V6C5XCfnwre99pwRJtrRT/SedbuPKlBxgXAvgncN1W4loRFenBIfuVygbn7Vxh2m5y6sD63vjXSeMvviBjc6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB7071
X-Original-Sender: sherry.sun@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=GvYf7CCR;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of sherry.sun@nxp.com
 designates 40.107.22.83 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
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
> On 09/11/20 3:07 pm, Sherry Sun wrote:
> > Hi Kishon,
> >
> >> Subject: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-
> >> Transparent Bridge
> >>
> >> From: Kishon Vijay Abraham I <kishon@ti.com>
> >>
> >> Add support for EPF PCI-Express Non-Transparent Bridge (NTB) device.
> >> This driver is platform independent and could be used by any platform
> >> which have multiple PCIe endpoint instances configured using the pci-epf-
> ntb driver.
> >> The driver connnects to the standard NTB sub-system interface. The
> >> EPF NTB device has configurable number of memory windows (Max 4),
> >> configurable number of doorbell (Max 32), and configurable number of
> >> scratch-pad registers.
> >>
> >> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> >> ---
> >>  drivers/ntb/hw/Kconfig          |   1 +
> >>  drivers/ntb/hw/Makefile         |   1 +
> >>  drivers/ntb/hw/epf/Kconfig      |   6 +
> >>  drivers/ntb/hw/epf/Makefile     |   1 +
> >>  drivers/ntb/hw/epf/ntb_hw_epf.c | 755
> >> ++++++++++++++++++++++++++++++++
> >>  5 files changed, 764 insertions(+)
> >>  create mode 100644 drivers/ntb/hw/epf/Kconfig  create mode 100644
> >> drivers/ntb/hw/epf/Makefile  create mode 100644
> >> drivers/ntb/hw/epf/ntb_hw_epf.c
> >>
> >> diff --git a/drivers/ntb/hw/Kconfig b/drivers/ntb/hw/Kconfig index
> >> e77c587060ff..c325be526b80 100644
> >> --- a/drivers/ntb/hw/Kconfig
> >> +++ b/drivers/ntb/hw/Kconfig
> >> @@ -2,4 +2,5 @@
> >>  source "drivers/ntb/hw/amd/Kconfig"
> >>  source "drivers/ntb/hw/idt/Kconfig"
> >>  source "drivers/ntb/hw/intel/Kconfig"
> >> +source "drivers/ntb/hw/epf/Kconfig"
> >>  source "drivers/ntb/hw/mscc/Kconfig"
> >> diff --git a/drivers/ntb/hw/Makefile b/drivers/ntb/hw/Makefile index
> >> 4714d6238845..223ca592b5f9 100644
> >> --- a/drivers/ntb/hw/Makefile
> >> +++ b/drivers/ntb/hw/Makefile
> >> @@ -2,4 +2,5 @@
> >>  obj-$(CONFIG_NTB_AMD)	+= amd/
> >>  obj-$(CONFIG_NTB_IDT)	+= idt/
> >>  obj-$(CONFIG_NTB_INTEL)	+= intel/
> >> +obj-$(CONFIG_NTB_EPF)	+= epf/
> >>  obj-$(CONFIG_NTB_SWITCHTEC) += mscc/ diff --git
> >> a/drivers/ntb/hw/epf/Kconfig b/drivers/ntb/hw/epf/Kconfig new file
> >> mode 100644 index 000000000000..6197d1aab344
> >> --- /dev/null
> >> +++ b/drivers/ntb/hw/epf/Kconfig
> >> @@ -0,0 +1,6 @@
> >> +config NTB_EPF
> >> +	tristate "Generic EPF Non-Transparent Bridge support"
> >> +	depends on m
> >> +	help
> >> +	  This driver supports EPF NTB on configurable endpoint.
> >> +	  If unsure, say N.
> >> diff --git a/drivers/ntb/hw/epf/Makefile
> >> b/drivers/ntb/hw/epf/Makefile new file mode 100644 index
> >> 000000000000..2f560a422bc6
> >> --- /dev/null
> >> +++ b/drivers/ntb/hw/epf/Makefile
> >> @@ -0,0 +1 @@
> >> +obj-$(CONFIG_NTB_EPF) += ntb_hw_epf.o
> >> diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c
> >> b/drivers/ntb/hw/epf/ntb_hw_epf.c new file mode 100644 index
> >> 000000000000..0a144987851a
> >> --- /dev/null
> >> +++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
> >> @@ -0,0 +1,755 @@
> > ......
> >> +static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
> >> +			    struct pci_dev *pdev)
> >> +{
> >> +	struct device *dev = ndev->dev;
> >> +	int ret;
> >> +
> >> +	pci_set_drvdata(pdev, ndev);
> >> +
> >> +	ret = pci_enable_device(pdev);
> >> +	if (ret) {
> >> +		dev_err(dev, "Cannot enable PCI device\n");
> >> +		goto err_pci_enable;
> >> +	}
> >> +
> >> +	ret = pci_request_regions(pdev, "ntb");
> >> +	if (ret) {
> >> +		dev_err(dev, "Cannot obtain PCI resources\n");
> >> +		goto err_pci_regions;
> >> +	}
> >> +
> >> +	pci_set_master(pdev);
> >> +
> >> +	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> >> +	if (ret) {
> >> +		ret = dma_set_mask_and_coherent(dev,
> >> DMA_BIT_MASK(32));
> >> +		if (ret) {
> >> +			dev_err(dev, "Cannot set DMA mask\n");
> >> +			goto err_dma_mask;
> >> +		}
> >> +		dev_warn(&pdev->dev, "Cannot DMA highmem\n");
> >> +	}
> >> +
> >> +	ndev->ctrl_reg = pci_iomap(pdev, 0, 0);
> >
> > The second parameter of pci_iomap should be ndev->ctrl_reg_bar instead
> of the hardcode value 0, right?
> >
> >> +	if (!ndev->ctrl_reg) {
> >> +		ret = -EIO;
> >> +		goto err_dma_mask;
> >> +	}
> >> +
> >> +	ndev->peer_spad_reg = pci_iomap(pdev, 1, 0);
> >
> > pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);
> >
> >> +	if (!ndev->peer_spad_reg) {
> >> +		ret = -EIO;
> >> +		goto err_dma_mask;
> >> +	}
> >> +
> >> +	ndev->db_reg = pci_iomap(pdev, 2, 0);
> >
> > pci_iomap(pdev, ndev->db_reg_bar, 0);
> 
> Good catch. Will fix it and send. Thank you for reviewing.

You're welcome.
By the way, since I've studied VOP(virtio over pcie) before, and only recently learned
about NTB related code. I have some questions about NTB.

For NTB, in order to make two(or more) different systems to communicate with each other, 
seems at least three boards are required(two host boards and one board with multiple EP
instances as bridge), right?
But for VOP, only two boards are needed(one board as host and one board as card) to realize the
communication between the two systems, so my question is what are the advantages of using NTB? 
Because I think the architecture of NTB seems more complicated. Many thanks!

Best regards
Sherry

> 
> Regards,
> Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/VI1PR04MB49602D24F65E11FF1F14294F92E90%40VI1PR04MB4960.eurprd04.prod.outlook.com.

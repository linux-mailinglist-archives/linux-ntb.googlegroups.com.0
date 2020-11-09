Return-Path: <linux-ntb+bncBAABBPU3UT6QKGQEMVZ3Q7A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C32E2AB3B0
	for <lists+linux-ntb@lfdr.de>; Mon,  9 Nov 2020 10:37:03 +0100 (CET)
Received: by mail-wm1-x33b.google.com with SMTP id a134sf257676wmd.8
        for <lists+linux-ntb@lfdr.de>; Mon, 09 Nov 2020 01:37:03 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1604914623; cv=pass;
        d=google.com; s=arc-20160816;
        b=gknWgeTcHmUlziqcBvve5gAlFtj7Zzp4tc0vw1QS/0VBd+ILkuBef12/0jvVzAlISB
         VQAVQ9RZbIoRIFu38nOA9Vh4FmXl56n4vHq1s73hjIp8T4IPcfAY433hA2mJwlw6F0Nh
         +YaVdY8U1pEETO/VBCOJAsqVxKahOX9xnF9P3DreHr7FvBtyAyzo8P3MRlr0zJ9d7B/j
         jaMR2Xuug0/uLMZULsvIEbf6/b+L9MCFdxCZkwVjvK+lQMFSaeRWyHYdoBqrbicvBsur
         XmfmT7YDm7Mk6tex0Ts8c4I5UxRJ2gR0k12el49L+2BGYEj/jUpRPiux1FxTuTqizrC4
         Wzdw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=Is4Wv3sCNOenAzW9Axpe2hO3RvPpvTgc7OM32mxRaAk=;
        b=PKGQNHx3NkgV8yNKlj80ss5y+1Gf0/uV7NS1kTBnPu+4y5+ZbIdZGBOd5WaWQS3NMa
         poJ46F1W98MuT+6lJCST7lgZgpjlsKTjzrXIOJf+I1f4NlfwRpVe33LgRTmiPpCf3TmA
         GteVCOkaEuZJwksEPpqStRRZmewmJt/jJTDOCzllB5uaJ83IH+APaVnjk4w3EO2WkD+r
         N0/SrauZ4AOq9rdxqHuu9uAUniWvp9iBBVEXCehOfbWrVUSYZwUACXmmjw1fWwMMAo1u
         fiKsUILbQky/ATZ0aYVnckuNAP6jQdObgR+TKySj6R4v1k8RjvkIK+jHlDzFQqHQYAMQ
         I9ug==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=J5YthuSv;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of sherry.sun@nxp.com designates 40.107.6.76 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Is4Wv3sCNOenAzW9Axpe2hO3RvPpvTgc7OM32mxRaAk=;
        b=lMX9rJKMWzi2gvHaG0dELEXFPsBOcnRLHd05amjXXubuWs2kcRBjBTvDl0XaGpoacS
         FCFrSlRbWtSzZXpkI5swGqimS08x1G/SD7EX5Ms96ZS5qJhb2zCq+aO+b4qcPvuCGU7A
         u1kDXPkpUM1Yuw+H2GahqUFcIHBw5yj1j4unUHkLOlzT675O9+mE3z4VJ/WUVfm/b7el
         Z6F/0BEhGmtBkIH1hRsv5Q3AV4PR0Morm+Dfnf13uzM/6uCBD1DAqraNqOsPdZexQx1s
         Tx+/7USvpbGSYmzW0I1KbYxEDJqouvsGAEFof8JXGx3E7vP5TebpwKUYMQEICAQqcSM+
         KcHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Is4Wv3sCNOenAzW9Axpe2hO3RvPpvTgc7OM32mxRaAk=;
        b=PTi8bLlJt9w1BD1c2SsYuPEPnSx1reNr5l39k/OzrO3QCylxZhfWjXBbEpD0SbSNFH
         3qrr9a4l37NmS7Gcjj72ogIMYCwhLbP2XT5rnJTRTQsmO5mcgJBSU7nYhaMWiedo/YVt
         ccqOvoiIzljvB10bM2tZkU6tfTIf8pqsNLLwrjLjQuouhFvS5+NX6sBynMauM3kSQrrh
         Nkzd5Ay73GuIqQQ5ZFdLqrFDF3YXGjSYK1DJpUEtzLtV4r1K0ZL45uAZ4tw0JY4vmcnq
         XhZosBPsn3cqYq6/ugrPyYaQANm93yVKieS5DAJv86xeM2EIYeE+rilzZjHctK1ubMiJ
         GjNA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530aP3QX+GsmDz6Jk3el5CQmnapREWpEpF9rkhN22ogwGkRpWp/W
	9Fm75EQ67MXo+BTPMZuc+0o=
X-Google-Smtp-Source: ABdhPJzH4tb83MR6gEapHRYyTrh5uKIzSmZQGMJaJ/2F79y8wNf/EvbNamXK7DmOlADA4dtMREUiEQ==
X-Received: by 2002:adf:b7c8:: with SMTP id t8mr17611928wre.143.1604914623094;
        Mon, 09 Nov 2020 01:37:03 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:c689:: with SMTP id j9ls6693191wrg.0.gmail; Mon, 09 Nov
 2020 01:37:02 -0800 (PST)
X-Received: by 2002:a5d:66d1:: with SMTP id k17mr17061786wrw.409.1604914622425;
        Mon, 09 Nov 2020 01:37:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604914622; cv=pass;
        d=google.com; s=arc-20160816;
        b=1IUntGJj6qwPoqu7RaLxOYZmZdqE8cr48naqtB4L+Ez/O45CznFEQZEpUnV+ljdXCh
         xdEoUs//S0qzS+vviLVsUm/e7DQ74BrQlNY8gybIUlXFiz7on/5osNJyJ6iQ3ppazwTg
         P2WXzw1ZxQQbA1Ecl6Tvkpqo3DR2oIeNPmPZTttf1D4n01p5oRaLMBzMDLPIUGaj8nV0
         qXkqtk30guKaJAxJJqhrCcHg/MOVAA5OhSkk1xqaS+87ui/Elbgyfjg3HdcYVV13YCvq
         zyJ0tUExlStF7zAgPJTpv30bBbyxj/GCj2Y/fRSehH+URViFR+m+Rxicsjt/rM74VEjW
         rStQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=qxrWAyiMHZgQQQkYet2icFnuA7R2U9+OW2VwdeWzCGE=;
        b=hgrPKKWmaKnZ1TBSWQor5V9+w54eFSYkYK2iRaiukMNcw/hV6QfIG4lAEHYawTPyFd
         zruw7XPUbp6+t+P0XBTX8Lu3xaHbh6VCyXMrUC9Um1cO/5J9Pe4rNyPaPUyxgn/mf7T8
         0Ew2kDtPla/52LsTQQQ1EPrriqKaw9UgA4oZHuxbXPymoGrTisXjr0ookd2YO/Oco/9k
         sfY0ti6F2jM288F7Ng0PzbC6a+gNY0WjDXa+ezhV1r7AGqrEA4KO78GpKzk+MtChMjzK
         4yiwTuzxciSN2siTqP2hN8esQ8tEIgrS0p0tF2v8XBnfIZbqqykYM24buKsaT/e2YZ2Q
         h7Lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nxp.com header.s=selector2 header.b=J5YthuSv;
       arc=pass (i=1 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass fromdomain=nxp.com);
       spf=pass (google.com: domain of sherry.sun@nxp.com designates 40.107.6.76 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=nxp.com
Received: from EUR04-DB3-obe.outbound.protection.outlook.com (mail-eopbgr60076.outbound.protection.outlook.com. [40.107.6.76])
        by gmr-mx.google.com with ESMTPS id o4si245606wrx.4.2020.11.09.01.37.02
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 01:37:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sherry.sun@nxp.com designates 40.107.6.76 as permitted sender) client-ip=40.107.6.76;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NuvsebJ/PYWzfM3QF6l3Ci345AbbYQmo++l2z9vorbFV3YzdpfEU7eqrcgCpjurMcUq6Fr5SNv659HOFHFGITW4ewsNwP7rzsRFnwnH1g0Ig2HJPgvnTqso5iiosBjaKI+NC0B8/CQZTd0Q60F+FLanwX/DbIqlIiRSo/uoqhaU6fv1ctgdnnEfbDgh4JNzyhPdoMiqxNi5gLTegu/vwKAxYxCIfx+6lcELpid5H7zHEgI4ZEKiyDauT6qqsMReNARLNCRs+1LYvlwyEbpmbdxVi1ejgJGHRv7voURfeHl6lHvdTRWCQMRaNjgtAIil1ZlJn2yZT/aIxv4mX0JGdFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qxrWAyiMHZgQQQkYet2icFnuA7R2U9+OW2VwdeWzCGE=;
 b=Kpu0gQD9xnITcFFLXXazBy1OM6KcZ++B4AdYpYZmjTdYFFdVVqsv2uI3RZgc1zpGicDA05O52t5lsfnKtmunjt6HCL2OO0k8Wamkw3rDgIgE9IFfhQ8ewpdy0SE2an/ntbrQm7pwoXbdWzA4JVfdgrcJqQHWECUR2w7E0z5IOsjP9fFsukkCYWkaSlzxU7/w77JHIwX70CUk2TnNdKegkhiK9FaoH5+Q/pWb3zGKNUukH10zx5u1MC67NZUpvbR5tJR4Grq1yc0qCIOuPY/GPGrPC6v7ANyIxh90Ou4t4AwWSQ5W3Tl5SEbXPr2cFIl29TsqveAWqhtkGTXIJ5BB9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from VI1PR04MB4960.eurprd04.prod.outlook.com (2603:10a6:803:57::21)
 by VE1PR04MB6654.eurprd04.prod.outlook.com (2603:10a6:803:129::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.21; Mon, 9 Nov
 2020 09:37:00 +0000
Received: from VI1PR04MB4960.eurprd04.prod.outlook.com
 ([fe80::b178:a37b:1f9e:3a6]) by VI1PR04MB4960.eurprd04.prod.outlook.com
 ([fe80::b178:a37b:1f9e:3a6%3]) with mapi id 15.20.3541.024; Mon, 9 Nov 2020
 09:37:00 +0000
From: Sherry Sun <sherry.sun@nxp.com>
To: "kishon@ti.com" <kishon@ti.com>
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
Thread-Index: AQHWtnmf1Fe2qKyugUaToCGM3cma6am/hnbQ
Date: Mon, 9 Nov 2020 09:37:00 +0000
Message-ID: <VI1PR04MB496061EAB6F249F1C394F01092EA0@VI1PR04MB4960.eurprd04.prod.outlook.com>
References: <20200930153519.7282-16-kishon@ti.com>
In-Reply-To: <20200930153519.7282-16-kishon@ti.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: a611e049-655b-40a5-ff71-08d884930202
x-ms-traffictypediagnostic: VE1PR04MB6654:
x-microsoft-antispam-prvs: <VE1PR04MB6654EAC39463FF35BF7DF69B92EA0@VE1PR04MB6654.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yl7SNtCqUdnWcBUQzAH1lQmASPK32t70Ezaq992rgK3mrpH6SnXKgdgN4J75S7FfF+v8jsNSmhOPES35zFRRR67nQc9EE2amlKsNcFiN/7jHB17gPl3RTLU678OdRGXeHZf7fziAw0mXyzs/bYucaf9MSXCXL+mAKyMC+IHq1pX2nwuhB/VKPtqPsMgNUv1ufm943U8WNT7mKBYLTUhQmJCYisQCTZHk98HTJhlluwzo1bulNONEKJS520Mu185jPZdUnz29Fr2rOxWAkhf7F30E4imlJ4lWSb43CKu26WzXnc1/LPqDrXJ2dvaOMhMn
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR04MB4960.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(346002)(39860400002)(376002)(136003)(396003)(9686003)(6916009)(55016002)(4326008)(52536014)(8676002)(7416002)(6506007)(2906002)(8936002)(83380400001)(44832011)(71200400001)(54906003)(7696005)(186003)(316002)(478600001)(66946007)(76116006)(66446008)(26005)(33656002)(66476007)(66556008)(64756008)(86362001)(5660300002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: tBLiEWDmeHRzglIhcKYosGyOnT9mtfTY3bRM67oZzCI3o8P/gp8IaomDxC4tEMqkpNU9oPEpqtkzC1JM1Eu/Fx+JHH3XrFgGVJQhdCls9LAQHKjQT6GH3ogMna+ZfONdVdVWXThz6qjZd4RoAkkzMOkr+mzit5pTjYORIScoFt+pYuvZPryNE/66QbvrdJrshQD5+iMbshP+JeN5jE7cesPlRe67z3Gf+SL64n0MMBoAhOz84l+G8gQzBVh/VyAQewynYcLe+pRQ3bnYlkAvP2cyAdRaqh9LUJzDbhL4QeqpkVHSZPprnDDKGd2Bxs0+rTtWCKExZddPev8CBwb0aN+C4Mj15lvGhEO6WjK3POlS6dKDquIxONSZ96BED4W94zYROdyCz+YNGKAcrkq7cCvDg8+2sr/hKJzItLGsTg9BcwZHefIOeCKpBNt4QsKVmL/SrHlB/8kSO4J/DW/PJ2y2wGGxrUkG6lKS+fKzixt4D8/DRJTY/YGAtVJs6kVQGhu8IRAKSOMkowED3yTjD54gqUvZTL+jcrCbINsRx5W/JXZT9E4V4JRHfRo+i513q0Kulyobhx5Zkwg1f5lvXwd3jEgX/itcMi0sSHb+XIz74DfD1/itJOWLiQvNV9A1JoMTAYgkOKtQkwGTRibzZw==
x-ms-exchange-transport-forked: True
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: VI1PR04MB4960.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a611e049-655b-40a5-ff71-08d884930202
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2020 09:37:00.0375
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tvq0lK5hcrQa+WYQBN8RvXLk5kaJ9bq7kOFk66Q2qsfsfzCntWo6HygdjeCzvwLYgLR5qBZr9e+Chu4uyGB7vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6654
X-Original-Sender: sherry.sun@nxp.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nxp.com header.s=selector2 header.b=J5YthuSv;       arc=pass (i=1
 spf=pass spfdomain=nxp.com dkim=pass dkdomain=nxp.com dmarc=pass
 fromdomain=nxp.com);       spf=pass (google.com: domain of sherry.sun@nxp.com
 designates 40.107.6.76 as permitted sender) smtp.mailfrom=sherry.sun@nxp.com;
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

> Subject: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express Non-
> Transparent Bridge
> 
> From: Kishon Vijay Abraham I <kishon@ti.com>
> 
> Add support for EPF PCI-Express Non-Transparent Bridge (NTB) device.
> This driver is platform independent and could be used by any platform which
> have multiple PCIe endpoint instances configured using the pci-epf-ntb driver.
> The driver connnects to the standard NTB sub-system interface. The EPF NTB
> device has configurable number of memory windows (Max 4), configurable
> number of doorbell (Max 32), and configurable number of scratch-pad
> registers.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  drivers/ntb/hw/Kconfig          |   1 +
>  drivers/ntb/hw/Makefile         |   1 +
>  drivers/ntb/hw/epf/Kconfig      |   6 +
>  drivers/ntb/hw/epf/Makefile     |   1 +
>  drivers/ntb/hw/epf/ntb_hw_epf.c | 755
> ++++++++++++++++++++++++++++++++
>  5 files changed, 764 insertions(+)
>  create mode 100644 drivers/ntb/hw/epf/Kconfig  create mode 100644
> drivers/ntb/hw/epf/Makefile  create mode 100644
> drivers/ntb/hw/epf/ntb_hw_epf.c
> 
> diff --git a/drivers/ntb/hw/Kconfig b/drivers/ntb/hw/Kconfig index
> e77c587060ff..c325be526b80 100644
> --- a/drivers/ntb/hw/Kconfig
> +++ b/drivers/ntb/hw/Kconfig
> @@ -2,4 +2,5 @@
>  source "drivers/ntb/hw/amd/Kconfig"
>  source "drivers/ntb/hw/idt/Kconfig"
>  source "drivers/ntb/hw/intel/Kconfig"
> +source "drivers/ntb/hw/epf/Kconfig"
>  source "drivers/ntb/hw/mscc/Kconfig"
> diff --git a/drivers/ntb/hw/Makefile b/drivers/ntb/hw/Makefile index
> 4714d6238845..223ca592b5f9 100644
> --- a/drivers/ntb/hw/Makefile
> +++ b/drivers/ntb/hw/Makefile
> @@ -2,4 +2,5 @@
>  obj-$(CONFIG_NTB_AMD)	+= amd/
>  obj-$(CONFIG_NTB_IDT)	+= idt/
>  obj-$(CONFIG_NTB_INTEL)	+= intel/
> +obj-$(CONFIG_NTB_EPF)	+= epf/
>  obj-$(CONFIG_NTB_SWITCHTEC) += mscc/
> diff --git a/drivers/ntb/hw/epf/Kconfig b/drivers/ntb/hw/epf/Kconfig new
> file mode 100644 index 000000000000..6197d1aab344
> --- /dev/null
> +++ b/drivers/ntb/hw/epf/Kconfig
> @@ -0,0 +1,6 @@
> +config NTB_EPF
> +	tristate "Generic EPF Non-Transparent Bridge support"
> +	depends on m
> +	help
> +	  This driver supports EPF NTB on configurable endpoint.
> +	  If unsure, say N.
> diff --git a/drivers/ntb/hw/epf/Makefile b/drivers/ntb/hw/epf/Makefile new
> file mode 100644 index 000000000000..2f560a422bc6
> --- /dev/null
> +++ b/drivers/ntb/hw/epf/Makefile
> @@ -0,0 +1 @@
> +obj-$(CONFIG_NTB_EPF) += ntb_hw_epf.o
> diff --git a/drivers/ntb/hw/epf/ntb_hw_epf.c
> b/drivers/ntb/hw/epf/ntb_hw_epf.c new file mode 100644 index
> 000000000000..0a144987851a
> --- /dev/null
> +++ b/drivers/ntb/hw/epf/ntb_hw_epf.c
> @@ -0,0 +1,755 @@
......
> +static int ntb_epf_init_pci(struct ntb_epf_dev *ndev,
> +			    struct pci_dev *pdev)
> +{
> +	struct device *dev = ndev->dev;
> +	int ret;
> +
> +	pci_set_drvdata(pdev, ndev);
> +
> +	ret = pci_enable_device(pdev);
> +	if (ret) {
> +		dev_err(dev, "Cannot enable PCI device\n");
> +		goto err_pci_enable;
> +	}
> +
> +	ret = pci_request_regions(pdev, "ntb");
> +	if (ret) {
> +		dev_err(dev, "Cannot obtain PCI resources\n");
> +		goto err_pci_regions;
> +	}
> +
> +	pci_set_master(pdev);
> +
> +	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
> +	if (ret) {
> +		ret = dma_set_mask_and_coherent(dev,
> DMA_BIT_MASK(32));
> +		if (ret) {
> +			dev_err(dev, "Cannot set DMA mask\n");
> +			goto err_dma_mask;
> +		}
> +		dev_warn(&pdev->dev, "Cannot DMA highmem\n");
> +	}
> +
> +	ndev->ctrl_reg = pci_iomap(pdev, 0, 0);

The second parameter of pci_iomap should be ndev->ctrl_reg_bar instead of the hardcode value 0, right?

> +	if (!ndev->ctrl_reg) {
> +		ret = -EIO;
> +		goto err_dma_mask;
> +	}
> +
> +	ndev->peer_spad_reg = pci_iomap(pdev, 1, 0);

pci_iomap(pdev, ndev->peer_spad_reg_bar, 0);

> +	if (!ndev->peer_spad_reg) {
> +		ret = -EIO;
> +		goto err_dma_mask;
> +	}
> +
> +	ndev->db_reg = pci_iomap(pdev, 2, 0);

pci_iomap(pdev, ndev->db_reg_bar, 0);

Best Regards
Sherry

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/VI1PR04MB496061EAB6F249F1C394F01092EA0%40VI1PR04MB4960.eurprd04.prod.outlook.com.

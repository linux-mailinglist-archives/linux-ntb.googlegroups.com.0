Return-Path: <linux-ntb+bncBAABBCPY2KHAMGQEDGBZ54A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id DBECE4849DA
	for <lists+linux-ntb@lfdr.de>; Tue,  4 Jan 2022 22:28:43 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id m27-20020a62a21b000000b004bac77dbb41sf19126250pff.6
        for <lists+linux-ntb@lfdr.de>; Tue, 04 Jan 2022 13:28:43 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1641331722; cv=pass;
        d=google.com; s=arc-20160816;
        b=EsaqKNyFE6Ce5mv3iC3KViSi2ZX2lvQuGcFpSk8TCDMBAdA9yU2tXZ3AioGfJpm9yK
         BPM1Xnw14IB0ZocuAx2Rf31rKjXE3T8QemfddJJNHNLBU0EmMestaHqG+SMiCJ/JkHt1
         lo1xhmyuCemgm7vcyxlM2WZY8FOi93Ey/dMjm7s8o7AKYg8+7JvMWIEerHmXzXh9L5Jh
         UP8dhHe4lZ/O0jf3N43JPA3ukF1PfL6caQFHgZgLdEXv8mC7m3hG3ZXS53YboAm+J6hH
         mZoLMtpeCSQ0CEE2MJYI9osfwSe4tDMD2YVaN5HCcQvZqIkPf4/z6g+p/JcqMNc/svF8
         +J7Q==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:content-id
         :user-agent:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :ironport-sdr:dkim-signature;
        bh=WOHcM3p6MUP5gb7KhF0jGHsq2gBvLY8+jyvOihC/5do=;
        b=JnPGO1ZYxbt0Yyjum9z4sg9RG5TvgDKSx5GSXhM+Q0x/qktnLsFEWzR+gxFbyzKDBh
         SMBz5tZnuSSpucVzH3tH6CP46mZovOvc+j5pRKbmtyT357CpkhNUo6u6EBffVzfWH/tD
         pk0toTcQb6F4SCxz8BK0bF+sI4yrS2Iu5mlT/pLMOSzY+oW5SALkZtlSQJlVNDmNPX9H
         CooSbH7xl3/l/ZrD5830b4PFSNVe4nwmhxCOoYcpNkHwqxT7DVeJVxvROh4585j8z7Op
         PL0JDwAs4lfq+Sg+HRPK3uoJLEgLfYIs7rDI8AidNjmbmI3aCm75WbYLmmzhW2mKwKxP
         TzXQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=hZQ9OxxT;
       dkim=pass header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com header.b="OujJD/wq";
       arc=pass (i=1 spf=pass spfdomain=microchip.com dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.153.233 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=ironport-sdr:from:to:cc:subject:thread-topic:thread-index:date
         :message-id:references:in-reply-to:accept-language:content-language
         :user-agent:content-id:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=WOHcM3p6MUP5gb7KhF0jGHsq2gBvLY8+jyvOihC/5do=;
        b=n6j4vQONU8lBuZ/OQ8X9+Ra0Qn/3A26jAF9fodYXM0i0ouo5EKtEUUOLBMGXxQLzIf
         ZNfFBCy1acdgw5tlqquNvMYbu/yu4v3LHVG5DmGwWZYlujkp+CbB8PASKaWLrjc8Trr5
         et8lgv+QXnzh/nhqw9R10/hrxV//DcrhLO8i7Oos+jLaxtRBzqEGSfZVzpC10xX4CQcG
         6DoNIFLLjOmuhz+3Im8/0WmBeYgmiC+PA/UtB7vJiL4QP1Mq6I6Mv5vXOnTzbBjyeX/b
         XFVMs3mVD/bAOgDmK5dbdd9UBnh8lhTl1OcDccQb9mCgmjvU1iBgjH6PS+tCcbKnbwtq
         pD7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:user-agent:content-id:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WOHcM3p6MUP5gb7KhF0jGHsq2gBvLY8+jyvOihC/5do=;
        b=m4zbSlsWdi5krztVD/Rcy01QLpARPlENf951/yWJEJX5gcwJAkeSiEps5jCmR4S1HP
         B82GxH3RwiQT6sY5/Jsb2Xxr7DspUJ5NqUTcPiywj1Kwa9aSo0GaIHHVv0Q5OO4reteH
         QM5V4nMnStVAW01gRP8pgToiJtSNDquCk+8IbJbtyL/ub0jpS3UE39ZPuWHXWhrbZcGv
         1ZxonDJcKoqxUGD1uWQpg2oUBX+5Qu70HKLqYpGQ2euXJBL75ADfVZHsxhpR0clUyeS2
         vNyTrdURikwNQ6us/nDmghihACUe+kGzhoTcS1Y4GCj9IRsMCAQYzsPkjsQ3+1lrgizC
         Ca8w==
X-Gm-Message-State: AOAM530boR+szTe4pUxt5ghcrxKslWBl2MQaekQ0m5nkybBq8vXAdAxW
	iz7+lSCUL7YIf6y7QdbWzHA=
X-Google-Smtp-Source: ABdhPJz0ifOPx6n1Ca7TLQfKWoS3Pl1mEOr6X+ckjpWBuITjJeO5Z3+f4DdS0efTlVjwgtnuRnHw0A==
X-Received: by 2002:a17:902:9a4c:b0:149:7da0:b7ac with SMTP id x12-20020a1709029a4c00b001497da0b7acmr40672019plv.28.1641331722228;
        Tue, 04 Jan 2022 13:28:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:a518:: with SMTP id s24ls16627862plq.3.gmail; Tue,
 04 Jan 2022 13:28:41 -0800 (PST)
X-Received: by 2002:a17:902:d64f:b0:149:4d01:fb42 with SMTP id y15-20020a170902d64f00b001494d01fb42mr51081073plh.13.1641331721546;
        Tue, 04 Jan 2022 13:28:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1641331721; cv=pass;
        d=google.com; s=arc-20160816;
        b=gTSOU5YZ51j+n5VnU9yibXEKdiiWlKybVZ3Qv/hOd9MFS5dg6qQxUTtqLPtCieHdpg
         +gn0n7JLDdVrdWVEcWoZaIL9yI8+IgGR1aU2vskWiphATqOc0MOBwQano9bfRWBSU4ZQ
         MFD/4wqJxdTGIidTSwoYP/Ib2Hko1MscKa17B9WDz4pXR2hjoao3F+PjXJZ1VYb1/vNX
         hSJDBZhWv5yS23I0AasBMhqC3mzHKwHImSOQsgS5u19fmxkXjNWDIF/JORPW5X/FTz7S
         zrH0nheZHN8yX1ZtMflLbSRNmC03+2mvtQx3sS9GIeROwIBpnyCte34vSgB6Al7DdGuN
         +cBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:user-agent
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature
         :ironport-sdr:dkim-signature;
        bh=ALopYdnZUA8h6oObGxBTqGfpaaMRVVkIqSDMnXdOQx4=;
        b=dXtdeXD37EftwDIjtye+8yVY6DZle5Y0W+NuPpX/u/lGB0YVlgN6tgMHsCHicRhKR/
         9D7kjCuX9MpL6iWTrxD1Aas7GE1Yklk9u/pPwxyrx70wC3Nc436M0DVtD/D8IQjN/pFD
         WZWZl1NpwEG1LTc6n8JU/WAMGXULmW7kS3Gn9NZEwvvAkp1ISwCnE6Wxh0BebhCVXYPn
         5+TmhzjAWiMC3mmj7mPStPEmDnSzRX2spzKhOIbC7GFRVNH/UwX9R4BsVOg2XCM17nrc
         G1qBoFKivU+RPbZ1cqYlrglX1K95tUBuhtoVo0JzKbg8F1oT5oibWgW1PwfcabzyG+N7
         /3aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=hZQ9OxxT;
       dkim=pass header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com header.b="OujJD/wq";
       arc=pass (i=1 spf=pass spfdomain=microchip.com dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.153.233 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.153.233])
        by gmr-mx.google.com with ESMTPS id q2si2136206pfu.5.2022.01.04.13.28.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jan 2022 13:28:41 -0800 (PST)
Received-SPF: pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.153.233 as permitted sender) client-ip=68.232.153.233;
IronPort-SDR: jYYPbQldhE8+lCOgzWqs1RLCxmNh1E3vY/aLo5R6qnimmwuXadEAFb+cIkxprG1e9vQC0NRfz6
 k9XgI1t9BpQCvRwkXWI0OuWBcNGK2nFsnRll8IQISNNfE0FBhGc6a83HoFKiSmtOZe4zMuOMET
 6JJT2yWNpYfSRUVdXJn1R14K03Iz6ev/ZXyHFk4ijSpZIsPedK7ReF8VkMBvBqZOXyfdQONod8
 O+o31ofrW93xv4OcTIOW/DtExz7mFbpk3jtZcxrVhxb5ktgqabhe6WJXXlq/xQrmBPJE89XIuJ
 D0mtAK7Sn7DVP48nCJCHiwWD
X-IronPort-AV: E=Sophos;i="5.88,262,1635231600"; 
   d="scan'208";a="157521558"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 04 Jan 2022 14:28:40 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Tue, 4 Jan 2022 14:28:40 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17 via Frontend Transport; Tue, 4 Jan 2022 14:28:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jWNpdhnY3GSjEBtFPu2Vz0gNyrs4B4NqUtUv423JYWRx/oVOm6wwJAvwaprSf57kCs6OAXE4RBl0sITB42IL5yDBRWosIM+cMmHUxzRKMNRd2rmy4ShXjwsC8Ex9Luw/omqq2Xeq1bUZ3ZLNG9W8C31hKNruCFgOoe8Z9eqamU2qV5l9AZP7hK9XwCCkJ5vFfxZzW2Ol+7hDEqveEC3X38QdeabmJav9UgKq2yi6dDZgqV/Q1agt079kjwt9frPruJdvGQuBmN6A3VJZaPcJ1qDug4Tj3bhF+OV4TKPqk9Oq+STy8aNVW1NfJB6G4Mr0MW8umlkZiYEL4OZDNwut/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ALopYdnZUA8h6oObGxBTqGfpaaMRVVkIqSDMnXdOQx4=;
 b=MU2DlwJaiBzmboqaYRI5Mq2sN//o/GywCfNGXErN4WN0WUctew13YGBQa/FE81dt/Ta/N+aamzPDIEtryRHY2F7ywZ2R1zcbA42oLJj9k1d78l4ITlbrlPsIsL7n4hYVJNi2b5yEddZKIqfKIkgpXITdWWqsp/5I9ft0+ypGR4b1D4Tm34sGGfexTcKbxQbPaTrb4URtWzuplHyxsIOr6YYgQInBfCVdxWsGGVkkHD7lVIFBiewwYKIbrBCT4sufaqlSkP6DtKJr6eGhnPdx8XcOAfEhKWzQhRb01gFgzhb64wgnXpeZ7oKMNsrKZeoxVXdPmKzomhLU7nlmlgKMyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com (2603:10b6:a03:3ab::13)
 by SJ0PR11MB5599.namprd11.prod.outlook.com (2603:10b6:a03:3af::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4844.14; Tue, 4 Jan
 2022 21:28:30 +0000
Received: from SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::28a8:253b:8957:814e]) by SJ0PR11MB5629.namprd11.prod.outlook.com
 ([fe80::28a8:253b:8957:814e%3]) with mapi id 15.20.4844.016; Tue, 4 Jan 2022
 21:28:30 +0000
From: "Kelvin.Cao via linux-ntb" <linux-ntb@googlegroups.com>
To: <linux-ntb@googlegroups.com>, <kurt.schwemmer@microsemi.com>,
	<dave.jiang@intel.com>, <allenbh@gmail.com>, <linux-kernel@vger.kernel.org>,
	<logang@deltatee.com>, <linux-pci@vger.kernel.org>, <jdmason@kudzu.us>
CC: <kelvincao@outlook.com>, <jmpallotta@gmail.com>
Subject: Re: [PATCH 0/6] Switchtec NTB Fixes and Improvements
Thread-Topic: [PATCH 0/6] Switchtec NTB Fixes and Improvements
Thread-Index: AQHX+GUbrTDHYG5Daki3qpAU+gGIWaxTJuwAgABL2IA=
Date: Tue, 4 Jan 2022 21:28:30 +0000
Message-ID: <41ea955218bb9fa42e59e106b7ee4e2c9c69cb3d.camel@microchip.com>
References: <20211224012334.89173-1-kelvin.cao@microchip.com>
	 <91ece4bb-5ab3-4ec9-acb0-0b054d4ec435@deltatee.com>
In-Reply-To: <91ece4bb-5ab3-4ec9-acb0-0b054d4ec435@deltatee.com>
Accept-Language: en-US, zh-CN
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 98604e28-abc8-4ff2-04a9-08d9cfc9273f
x-ms-traffictypediagnostic: SJ0PR11MB5599:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB55990937889E1C859A90F3498D4A9@SJ0PR11MB5599.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4afWrZO44WoG6l3L6Cwo93Anq+CRjQYyL//pvx/lp7Z0CcxLUh6uhW1ApPzknPcUJ/IoMXgu81krpR3Ksjc6b2KrgMLYFzYG3cU/7PREgmp1LMAq0DmLAVPLDdIENyNDay81vwbVmwBfG6EQYq665qvjsD1oKsUYSDLZ1DMIDdK0zv25ZlYHUlHuN7/fn/MQsmDlR7zKiMPTCilGZwM6PSIeB+NJ45aFFw2s6EyghDaji5ELucbdERCrCKKU6fv0hAoPcj1wBRGCUB7BLtkl3PVSBJMa53LTwT4VGhxDAgI9DMn7x45+zIcDZk22QtelJ01zIVctFxfPPABeH/h1+PF4dSsQtDtSQmaFp69gUfiq0lSvuj7I9k9IUS3g5aAsoqwZ9Txu73oXc8g8D/8Uq5yS4CkkNnoKHMF0xyvE6gFOiyXHCWMe230jt6KXDALtPfPQ8VX1cB0A9hudkhCBBtWmKiBwQIF9CS5GNy4tCiR9ku+7stLs+4wM3/kOQUtEqhRDKIqGNEPON7Q70AofKkCwOXeKf+gRS3Xj/78ILZN0s6i+irVtzWzgbDFJN4FKSZmJz3HVgcgAY13IcCWf4u2h/w4sGEI175Ptpcrk1G1JNLGnpOoi7HPI3lkmAVwAfQ6z5WhO5TUk94oUAaJNO/A1sDnH0hodbeobOntr4R3vC7tgLtKoYOzq6u13JObVtdUo9Ui1Vfkx5COkGuQojw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:SJ0PR11MB5629.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(2906002)(316002)(4326008)(66476007)(76116006)(7416002)(53546011)(64756008)(66946007)(91956017)(66446008)(6506007)(54906003)(71200400001)(110136005)(5660300002)(508600001)(86362001)(6512007)(8936002)(36756003)(66556008)(83380400001)(2616005)(26005)(4001150100001)(122000001)(6486002)(186003)(38070700005)(38100700002)(8676002);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHVYNzFuWnNhVHJjWEdaaVRGWHY5MjRULzQrOGtXU296bENNd2VXQ09BRXFU?=
 =?utf-8?B?a2RvMHpIcm9RQ3dzV1kreTh2QVNYL2N4UWEwMFdOdUNRYU9OTnluai9tK2ps?=
 =?utf-8?B?MFRBbDRWV1VCQkdGdGhzeS9FejUvRk02cTdxay90d0lZUUZXODdpSVkzSHhG?=
 =?utf-8?B?dWEzQzExTUpheVYxVGhMcnhGOHZabnFIU09Kbkc1Ym5CZkxOWExQTEJXemhJ?=
 =?utf-8?B?eEhqNDBTYXN2RDB0Ykxxb0wzazZjWFpZM24zbmQ1aEFkWXdYZk9mMnFNdjlX?=
 =?utf-8?B?YUtCSGRkM0p2TWFRbDNvaFJ6bENaL0ZqUmRYZE1nbm8xRDAxTmxaR2xtV1E3?=
 =?utf-8?B?TUE5b3U2dDhuUEJSN0hsaFRaSnh0Uk1UQUVROElPdkQwMU4zd1djWExIR2N6?=
 =?utf-8?B?eVF4YjRNcFdUdHpkR000dVdtKzM1VUNxQTFIelZ3bTZIc1c0YmxRNGt3VnV5?=
 =?utf-8?B?VVQ2ajJBa2FrMUxVY2VSeWxTUEwvT2l6b3UwV3VLcFZIRHZ1VzRqRHgyYWFY?=
 =?utf-8?B?TC9zdS9OZ0wvclJjKzhGS21LL1c1dU5jRlZXdXFuS1JUL0E5cFFNeTNxRjhq?=
 =?utf-8?B?MnlTeUkySmhnczlLdkR4ZVR0OGN0VkNLUEZ1bHlROXBuK0RPSjV2QS9PbEVI?=
 =?utf-8?B?TlI0ZlZiL2VMeGFYaXVvbC91MzNNKzhYbXRteVhPUGx2UEFibWQ1RXRCM01B?=
 =?utf-8?B?NElUcGNDMnlmUHhQRDQ1L3FUU2grSFhBaTNOQ1NkV2VnbUhsQmYvTm9talJu?=
 =?utf-8?B?dzg4QWNFUnR4Tlg3ai80a09jUXVHdTdUUG5TTXUyMG5zazc0WUJUQUV5MG10?=
 =?utf-8?B?OXlDM3JxUFBsTTZiSnRhcStkR2UrMUNlM1lEcnRLQThRT1FkTlZGWG5KRHp5?=
 =?utf-8?B?T3ZkV3hmckZyM0h6eXZpczBxQW0zcE53TGs2SVpIaS9lM3EzcjE2YS8zSzVz?=
 =?utf-8?B?MDF4aUYzcTA1b05vUkE1VDVZWmpyL0paZCszclR4S1lNZUU0QSs5Y0VvWUhq?=
 =?utf-8?B?emxrYVQ1VGM3MUVJVEZSbmNQanA2eWg0aGVRbDZrSzdUNnBSN3cya1FzRkpv?=
 =?utf-8?B?OVo5V1JQRUMyUExxRFVST0N4Yi9GdHdLbENkcWVNeTd1VFZ0Umo0dE4xTVZD?=
 =?utf-8?B?T0dMRUtXdkdLbmVIMllSSEpmU2NJNXNIOWhaYTlnb1ZUWXBPcTVzSStXbEhi?=
 =?utf-8?B?M0hQa0Q3MnUvMmFMa2J6eUJsVFZuU3NKVnhEa3NUUTlxQVdvM1VXbXkrVTgr?=
 =?utf-8?B?VXFsM3c1NngvWW5KdGZRM2dqT1daeGR1bDdNL2twWW5KRFVoYkViMTljMW0r?=
 =?utf-8?B?Y1E1Wk1TdXFYUWk0NmJwNTBwY3lMTzRpU3NpU1drYzRHSzZDL3paS3daSHVJ?=
 =?utf-8?B?WUZKSWZzaXl5TUkwWkl6T0lMVTdRSnJheFFyOG1sR3hwRFlYdzlZVDZyL0Qw?=
 =?utf-8?B?bytmSmtXYkZPQ1I0UU1rUHY2RmZFL25UaFVOWUlFMWlEK056dHpJVG95L0hq?=
 =?utf-8?B?Z1gySWQyWFR4U1J3NjZHV2dndnREZDNvMFVvS0VKT05BKzV4MjBnWmlPaEpI?=
 =?utf-8?B?Zm12VVEvZ0ZpT3VaalZPZzR6MDE1ZWMwMVh0Z2ozdEdTNzkyT2J4dHRTV2tk?=
 =?utf-8?B?VzJ0elNMUWlBK0NPUXo0SDRPNXRyZW5WVEdsWmk2NXlLSVhNMFFpRTVacVdh?=
 =?utf-8?B?WnRJcjI4ZWltZDhaZmdUb2pnbS9FV0l1Um5HR3NaNVR4dTIxV2RyYmI0ZVN4?=
 =?utf-8?B?ZERTbDg5dExBMmZhbWsvM2dwMG00VUtmRE1zM3JCbVF0V0phdk5GWEEzMCtU?=
 =?utf-8?B?bGpPZkFwYzJ4UDVqOXc2VGVoSGUrTElkbzluZ0lYeXdLQWVTWTJXdFpLVU9H?=
 =?utf-8?B?ZHBtY3hGdHZoU1NuamV5Z0RERTRudUtCczc0SG5CR0xadU5Vb295ZXRXS3l6?=
 =?utf-8?B?QzZ2QnpkMTB4ZWs5NnpvM2pmbTVDK1Y3cjZXU25YNFJXaUpmMXFhK3UxRWlS?=
 =?utf-8?B?N2xYdVBmbGNYVDhuVEVLWlVLNDhpTXpUaGtkY1Y0aHBFaVcrYWtMZUN3YWZE?=
 =?utf-8?B?Q0JYZC9NZ29ER21WakUrRUtSb2dpSDV6S0tVWUcwZ21kZmZDRnVOUU5FWFFu?=
 =?utf-8?B?eEZMOFlDaEdkSWF3QmZERWtZczZERk9vazhrNXBWWXVjbEE3Nk9SVXBQenpr?=
 =?utf-8?B?aENpZmJIYjRrSlJQdzgvdURNN2hwQXNPYU0wWWVpV0krcG9iSjJVSE9Dakt4?=
 =?utf-8?Q?DYvZ8te0+4foxiLOfQDRwhy45u9Bl3vhTWdPvF//3k=3D?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <4DBE65673B8B79429C11FB6484DD176A@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB5629.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 98604e28-abc8-4ff2-04a9-08d9cfc9273f
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2022 21:28:30.2361
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FmOFbHw0ihXQQGY6qY1tRZKDaCNjUkj0hATKrRJEN/fODh/WPDGgcOHTUrpDJK8o2C+IzY7lVqyDNllkbOq8iDUte3Hxp64apoHI9noPUj8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5599
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=hZQ9OxxT;       dkim=pass
 header.i=@microchiptechnology.onmicrosoft.com header.s=selector2-microchiptechnology-onmicrosoft-com
 header.b="OujJD/wq";       arc=pass (i=1 spf=pass spfdomain=microchip.com
 dkim=pass dkdomain=microchip.com dmarc=pass fromdomain=microchip.com);
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates
 68.232.153.233 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: <Kelvin.Cao@microchip.com>
Reply-To: <Kelvin.Cao@microchip.com>
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

On Tue, 2022-01-04 at 09:55 -0700, Logan Gunthorpe wrote:
> EXTERNAL EMAIL: Do not click links or open attachments unless you
> know the content is safe
> 
> On 2021-12-23 6:23 p.m., Kelvin Cao wrote:
> > Hi,
> > 
> > Please find a bunch of patches for the Switchtec NTB driver.
> > 
> > Patche 1, 2 and 6 fix three minor bugs. Patch 3 works around a
> > minor
> > firmware issue. Patch 4 updates the method of getting management
> > VEP
> > instance ID based on a new firmware change. Patch 5 removes code
> > that
> > disables ID protection to avoid conflict with static Switchtec
> > config
> > settings.
> > 
> > This patchset is based on 5.16.0-rc5.
> > 
> > Thanks,
> > Kelvin
> > 
> > Jeremy Pallotta (2):
> >   ntb_hw_switchtec: Fix pff ioread to read into mmio_part_cfg_all
> >   ntb_hw_switchtec: AND with the part_map for a valid tpart_vec
> > 
> > Kelvin Cao (3):
> >   ntb_hw_switchtec: Update the way of getting VEP instance ID
> >   ntb_hw_switchtec: Remove code for disabling ID protection
> >   ntb_hw_switchtec: Fix a minor issue in config_req_id_table()
> > 
> > Wesley Sheng (1):
> >   ntb_hw_switchtec: Fix bug with more than 32 partitions
> 
> I've reviewed all these patches and they look good to me.
> 
> Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
> 
Thanks Logan!

Kelvin

> Thanks,
> 
> Logan

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/41ea955218bb9fa42e59e106b7ee4e2c9c69cb3d.camel%40microchip.com.

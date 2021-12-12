Return-Path: <linux-ntb+bncBCN77QHK3UIBBBML3KGQMGQE27HIT2I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E1B1471EC5
	for <lists+linux-ntb@lfdr.de>; Mon, 13 Dec 2021 00:28:06 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id a18-20020a0568301dd200b0056328479effsf5253123otj.3
        for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 15:28:06 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639351685; cv=pass;
        d=google.com; s=arc-20160816;
        b=ip3Jnowq573Y3FT7CqLqrKHFIi/Y25gsfFbSql5kEWODpSZbDgoWJX3uo3XtXeLHib
         DIZJR9q7pCiNxjmtDJj0EniH1d83zkXbCb2YBZXG7ZAlLalVQ39OlAPshdCXowdqTc67
         z7fXSnEYfcmBFLOoMMpZ4pgVf/t4ygP4P6aQx+O0Xz26bJiO6N19hDYe07vZYzCfB5wp
         tT65IwxYWewNlV6BZifQxwG/yoLDXIoJSMVqrs2NC5qVVgcRjg0HNI9Dam98/qJhpRYA
         gIThnA8B4HBEwmNWDXkxKPOFs4+c/57QjaDFmIU5zIt/p1vmGAthdK+xFzaNluduhewf
         OrTw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-transfer-encoding:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nrnV0YBqk+sIErUKqoFmdZvqPWDpmhY5qFz/E+DROP4=;
        b=zbbMspgvCMTRuIOTiYxdqtGGzHp095/27HNrbTZAYQnQ0fsii0MPt4gbbYwcF1zmr+
         Ji50qrLvbN4hxwiYwUB4tU8ylNFIq0ceF0qxqLEk/sEeudyaN6PYH4g26TaiPSRGVC6P
         pqIcpRBRRhRoGViTcOHZ/DsXmybIAxtUUNbHZPaxIXQklRtfNjq0+6nlOh6yozJ1qjc6
         to4jMoD1hPEXaUVFHKLg2cXTTSlZ5b0LSV62b3oQKSJNfW7b3WY7YLTRcivkruBaMao/
         HtL1ZF0qMnlOyYpAWz2AQzyFCBZDrU5I9An2YC9KNk7oYKJ0baWmU4DB+U7+SVmdNGYA
         87vg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=AZ8PQoEK;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.92.65 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :content-transfer-encoding:in-reply-to:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nrnV0YBqk+sIErUKqoFmdZvqPWDpmhY5qFz/E+DROP4=;
        b=HvCtXBGt+YgW8HK+Ykh7jEkXvg5H4ZGj7UacVq8vmiv39HIZ1rZ37Y1EZcz9LGrMqd
         HYFbppAYFD+pFGtLeN2D/ZcOOyio0FaTSpXzfSI0xiOrPd658hEN/80CVoBB84qXyyA/
         L8AdT0viX/wzUhRyFucHNFMSK+Z5hjnAjfoaPLodq4BUDaideB/6ncfceJVHI4dOs4hY
         wkkBG59rBUqlL+IAinaiCUR9orEL9NM090FtYRsVkeOWjOJ2ApDU6slHZSJxmuXo9eIY
         1Lwk16y5fy3P2bMUOAIHNA49LU3iX2NfAsKNAl1eWPJldEotz0ZMliIJXsHSfaz4xINS
         UUTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:content-transfer-encoding:in-reply-to
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nrnV0YBqk+sIErUKqoFmdZvqPWDpmhY5qFz/E+DROP4=;
        b=K0N7O/a2jcuziTppPflsUhza0grS5iLNjcLTSMW3Cp5kq6pJ7gFCqm+nivcDRyO6BZ
         kkeUzPXR7m+ynT891fsP7xxAW3m7YEA+JDaQyumJxX6DOI+N3wud4XKatk+2hmX2dITp
         93EeVp2yqfRirxGDB0XSoVellDnDP05ua67oOrXSYQSoPj09HNcG67dCmLyCjANPKAu2
         mSDf+9un7jK+JJVWk1NvvJJ4qXPExSVLEMx4CA/oFNMRZ5ASRE/eoiBafCT5EJFnAaTz
         435rvV/co1dMcX61pl2v3IyHkH8Nlx8875teRyzQ4i6wsbp4eqwEg25kTc9/r+npE405
         K6GA==
X-Gm-Message-State: AOAM5336bXxMvxx81z2aWwz2g7dOi/5xvjx73wE3Qgb2VwD0mj4oBnM6
	2zu7emH1MtYGqAT68VmPs0s=
X-Google-Smtp-Source: ABdhPJyljZPj6ZsxccKn3GgHgw7ad2StXhe+Z91bODEX1Mar+yJyot5TVFcqPIszk/0hbEH/X+gZNg==
X-Received: by 2002:a4a:da1a:: with SMTP id e26mr17402691oou.79.1639351685217;
        Sun, 12 Dec 2021 15:28:05 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:2466:: with SMTP id x38ls3975597otr.10.gmail; Sun,
 12 Dec 2021 15:28:04 -0800 (PST)
X-Received: by 2002:a9d:6e2:: with SMTP id 89mr22362510otx.324.1639351684773;
        Sun, 12 Dec 2021 15:28:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639351684; cv=pass;
        d=google.com; s=arc-20160816;
        b=M6NIP7w4CdUFaDA2NkAkiCrPsP8lF5K+zpNisOkyC/HN4tXqag3ISzvwQUzMxH23Cn
         7LT0G0zuF7WVmECjJYBJAnMOieygzYyQ/TqJcyFc3IK2VkqOcu+ukD2sRKhCbvRyHo4T
         tVX479uVWMBDxdQUiP4pMJNQtRdmQcLainQdNFPGq/99BQ6WVt0tDR31WYNPgB+05YK8
         s7MhrCfQF0ce4yRb69fc9UNil06DVMNQOeFX6cbfL2fEqVBKXnzThZJlPdu9ZjvR3UzL
         5KsFFJPnbzusXtnFCQGHTZZxp0NEVlnNeka/FlM0mmSl6KVAPpmIV87yvPciE1R3p+g4
         oZ2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-transfer-encoding
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=zeJJo1tbQoO6wky1sCAjsOVnxXWiJ+2cWKF9ndw66Ec=;
        b=XMZLuS9EkaKLYUAiQWxWemM+C1g0ALETMk70zA7kwB2IE4lonGYAYL/Xt5N6L/IQp4
         gB3jeZDKk6DesCxK7u3+u7EFmd5OjMnZ7lPa592VJhsbLWtI2wgabo1gXtv0kc2Psvqn
         u8PjGU0zwXq6baYeToNUqV23oVe/Mx3PsCIGDTMo5aoMqGIJtdVrHGvb+IeXhFbpStvt
         R/wfCWKbmTS7Cg11JmjmQyCHNt5jAQJLLvLRLP4NJAUtNttpfxXqvZdfgV2tx+MDtTdJ
         qjmRk73exHgQ+Imb/fBAfdHLVKRCmvLv3rBpkrqeCASAd6p/YT949TR36D1mChBeSsMB
         D4SA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=AZ8PQoEK;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.92.65 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2065.outbound.protection.outlook.com. [40.107.92.65])
        by gmr-mx.google.com with ESMTPS id bj28si470534oib.2.2021.12.12.15.28.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Dec 2021 15:28:04 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.92.65 as permitted sender) client-ip=40.107.92.65;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c8TkPhBPTzRjTgno7mafcpSY3HGcch+XSmGbUCxrN+Fb6ijkvsWs8UkustpQbNna+QcTASjwGhq1q2JGz5jG4D9idSrEx2dcj18JAtgaQ+yIyJCvm0ZcTBP2xCBWcQB3tl6KrMiIIjbQfv9LX9dDbZ7GxcSKZa+AIoYFL/hOI0i4w95LAX9fD3tMQtGtykKTZF1uyB+YgwAOzOoG7YlRuqlpVoC5NCpubK4EhyrBHpR92UAGqqFfVyM5N+J63gNYYdr5NFJRncYngobV/pm2PT6lpIEMXOMVQIfUyTZma6N2aplpsxuuf9SkOYcfEWAPL4RXPo7UtaDUD5zW/NrXXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zeJJo1tbQoO6wky1sCAjsOVnxXWiJ+2cWKF9ndw66Ec=;
 b=kEnmHNCrrOqPKdfcwsjaXav4fhZn3cbquG34flwNDuEaOO3relWd2YhynUx3eDX8oqinqBDyQb7Ur79cF6E6Ai9bs5/U9KsBEvfeVuUHCHS3gVuG+PL1ZEiCcu2LEqB+QTzTFcJDmpfkIwubC+BsgGuGZoB/18/Jq/aU9kp9l2kHKnHlgFWNb9Aotg/yLY1lgYhmI/N8MhVwU9TbMxqihwltnML4L79XK7Fonc5pgvjklXzppJaEDk10vO4rbXV7Q2RZMhs4d/K8ls2LWcwzZJV6un2xWvtcaiKBIbmflVDQHpVYTk4t+f3uKQgeso6PRLZphVRaxUkZ9k5g/SKYng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL0PR12MB5538.namprd12.prod.outlook.com (2603:10b6:208:1c9::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.17; Sun, 12 Dec
 2021 23:28:01 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%7]) with mapi id 15.20.4778.017; Sun, 12 Dec 2021
 23:28:01 +0000
Date: Sun, 12 Dec 2021 19:27:58 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: Mika =?utf-8?B?UGVudHRpbMOk?= <mika.penttila@nextfour.com>
Cc: "Tian, Kevin" <kevin.tian@intel.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	"Jiang, Dave" <dave.jiang@intel.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	"Dey, Megha" <megha.dey@intel.com>,
	"Raj, Ashok" <ashok.raj@intel.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
	Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	"x86@kernel.org" <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
	"iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <20211212232758.GL6385@nvidia.com>
References: <87k0go8432.ffs@tglx>
 <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx>
 <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx>
 <20211209205835.GZ6385@nvidia.com>
 <BN9PR11MB5276599F467AD5EAC935A79E8C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <3f6d4bd7-8b60-1976-73a4-f5ef7f3dbf27@nextfour.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <3f6d4bd7-8b60-1976-73a4-f5ef7f3dbf27@nextfour.com>
X-ClientProxiedBy: BY3PR03CA0005.namprd03.prod.outlook.com
 (2603:10b6:a03:39a::10) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 16894ac3-9985-4889-e13a-08d9bdc709d8
X-MS-TrafficTypeDiagnostic: BL0PR12MB5538:EE_
X-Microsoft-Antispam-PRVS: <BL0PR12MB55385843E582801961193810C2739@BL0PR12MB5538.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HNEOyrH5uPc6d0FYYVNRo36RDEOojF8VA9sT4SKq5SEDWuQcEmhj71LQqGt9qm5U9uU8/TzsktxQvpDq45729d5Dds/K7UaOOZZ1SQ8/SA+ilFL/71nNJCWuKGRZ2OFGOtcw4EmvR+98NzVJu+g2RFTn8IdyESvJUw28mHVlwaLLSjlv6d2Q2VymWe7tGoJjXZy1I5bP3NcXu7uGa/9rOGYM2+fnIn4/el3QDuB2+jNU11JHKpCBB9MmiLrzbNF8CJvshkbFvRLw1o+JbZYXTZf6ZaCpobyQ2D7tnJHAJ90w4y9lzInpfpBemUzors5M01DLehcKOyPr2KXeScHzOoF2R4SAhXz2mjrWQkoW3IeQRHoBBEQhzx4yse1cyG5sI7gjaHLMTNrkPZIPq3FsdelLXxdihmd+Ig0bHPDtC6qjtQ7deAU0Ef7liFibpxNuvU1EvbkN8F7zDpuyA6eXC8N6rKHvmiBDi3mHbF8RhOd3nDytNk4EGL7wjU4amrj+yl6IAf9TTpbcGtS/bAq24mixg+t8/iUc/Dmg8HNuuNq6nHW3nuDc0GJfAlSD9uf1Rft7/PQPMdWgkHh4yTBtJIcHzPR4u5fWb+rHn9vDen6UadztNogOy8QYAdMgNqRA4jJDgflrLqG7RLNJltAfzQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(6916009)(36756003)(316002)(4326008)(7416002)(5660300002)(54906003)(66946007)(8936002)(6666004)(66556008)(8676002)(1076003)(2906002)(66476007)(508600001)(33656002)(26005)(6486002)(38100700002)(83380400001)(186003)(6506007)(86362001)(2616005)(6512007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UUdoZzhEU054L2xYZ0VJSm82WjNhaXNjZTRINlhZUHVtTmhqYlFWSVUzNWps?=
 =?utf-8?B?bVczL3Q3V0Q1d2tzeG92WWpRWVBld3p1M210UkN6ejV2aFhlWXViL3krN2o3?=
 =?utf-8?B?RFFYOWlHZlY2Nk1kYllWbDRYWjdJZnhPSENxd1E5RXJXYzdWWFFPMkw3aWU1?=
 =?utf-8?B?bDhxSnZwWmE0YS9nSHd6R2ppaFU0b3JISk53M3ZoSEtkYkFJenhJY3IzQ1dr?=
 =?utf-8?B?VDJkNVQ5QmJjaWFWRng5QXBlQXdQc25xV1M5c3R6RkR2UmY0bFJINEtHVW1K?=
 =?utf-8?B?anBoaUQzWEVETGZXblYrR2t0aWk4VUpxMU54ajhWelNZcFNkWDJHdWwwUTlE?=
 =?utf-8?B?QVV5bWFzQzhsVkJIV2FFS3hBTVFkSWVOdC9WZ2NBRE1CREFham9CTmxZQ2li?=
 =?utf-8?B?aTdtZGJnMXU2WmVPLytzenZ6b1liYlJTbWpwcm1mZjhib1U2YzR5YUVtVC9U?=
 =?utf-8?B?clVybkV2WWpiaWRPUHYwRXpmd2M0YkZLUitYazVXT2xKZ1ZkdUdOdU9vQy9K?=
 =?utf-8?B?eU9mOTQwKzlkL01yYXFMWlVCalVzVXN2NVU1WWpkdG0wTGpZNDBGbjZzVTU4?=
 =?utf-8?B?Q0dRSnpNZFc3bVRUZW9Ndm9TeG84MHVKOWdqL1dma1hOT0txejRqbUhGVUtl?=
 =?utf-8?B?c2pValR3T1Z3bStSbGFjbW93aGxzcHE4aFdpZjBEaEdlTVV2R29jSmY0MEVK?=
 =?utf-8?B?emlpekJCTkpsQWpXb1BwaFlpM2hQeE5yZGN2NUh1OHFoLyt2djl5eGcrdUdq?=
 =?utf-8?B?cm1SN2RQNExadWxSRGlIbkhyNDZIZVhvdzhLUWMwYU52TUlkdUdKNXNkVGRz?=
 =?utf-8?B?Yis1ZTV2SUIweUNiK1BWVVlFbDhmZ21RZy9Wc010eE9sV1VTMnlBcUovMzBt?=
 =?utf-8?B?bEowVXowcFVoSmhsZFYrQ2ErNWplNWEybGJjRTVIbGVkcHZ2cFREQUw4RUw5?=
 =?utf-8?B?emVDcWpwZjRHaFkxOTV2d2t5U21BUm9PM0p2UU8vMzNtdUlTUGtGeVJFaTBU?=
 =?utf-8?B?OVQ3UVc3emN2aXBjbUNldHl2ejIzQkZUejBHTk9rMG5ReTk2WjV4UFZvL09s?=
 =?utf-8?B?WjVrSGsyUWQvenBNOUwxQXhuU3YySS8zalRRNGNJbGZxdEY5R3BILzl1NllB?=
 =?utf-8?B?MVhnSytDVXJJWUVUM1BJUXhUQzZDa2pOZkxxSSswR2tpYzVtRTY5QkRsbUVX?=
 =?utf-8?B?WHBERkx2Zk5HU3pMc2JzWUpVakptQzFrUVpPYmpQTHJKUm1uQlNsQjlqdnNj?=
 =?utf-8?B?Vk03eWNEeWJmbjFhc1FjVkZ1MlE0ZjFIQ09UcGlzTk50L1IxVnBzSDlUejFM?=
 =?utf-8?B?WVFjZDQwTUFGWGlucm9TYndpNURnVGVxcHg1UHhPSUJMbWxhSUJZQW9jM1dU?=
 =?utf-8?B?cmxCdm85NmQrSTBHc1pPS3l0VklWYXdlbldnbCtKOFl3bnlXMlE2NEFGamlR?=
 =?utf-8?B?ZWIyM0hJYlhpdXdia3R3alRoTWpUN3E4aHVDSCtvNE1VMVM0KzZjQmE0bEVu?=
 =?utf-8?B?Y3MzcVZmaWJWR2E0a0Y3OGtIQmJRUFc2RFh6RmNxVTB6bm83M3QwMUtsc2NO?=
 =?utf-8?B?YkFoZ01DTWhYZWorV0FiQ3VpZ3VkRXRlSHhmNE9FNndzUEllREhReFVKM3dS?=
 =?utf-8?B?S3Q2T2ZYVWlOa3ZLQ3NZekVmbXc2RkNyV2ZIQVVBRFBBdGluUDB1cGNQUTEr?=
 =?utf-8?B?WDZsMExFV3ZocHlYWDBMeExINkJhVlVjSEN5QzNReHNFNzVsMWpPNFBTNEQ0?=
 =?utf-8?B?ZzduN1plbzFtTm1Ncm5JbnZNUkpwb01jYTNoL2cvUUN6ZlBmYWVoZTBWS1gz?=
 =?utf-8?B?ZElXelNvZjRGUEQvNUpkNytDQnpyS2duQzA4MmJUZXdFUU1mclgvbDk0VEV3?=
 =?utf-8?B?TlhGZHUwTTFIU0Q0ekhXeEN3RVlmeHRFVWpsYkVMQTZORFZDVDIwandJU2ZX?=
 =?utf-8?B?SlEwQmtCajExWGxscHh0WWlwOTR5eHloMC9lWFUrNDJrTkh1MGh2S0RlcXVw?=
 =?utf-8?B?RWdHN2lnS05XbVNZcWFjOEN2VUpZR1pIMkJOZnhrVUhieWhZYlhHNFlpRDFR?=
 =?utf-8?B?THRtSlFCcUZORnZTZVNRQVo5a3d5WS9SZ2s4VFUvWUlCY2o2MkF2K3NTSEVj?=
 =?utf-8?Q?/cDQ=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16894ac3-9985-4889-e13a-08d9bdc709d8
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2021 23:28:01.4423
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ax/OJ08AZALj2IHd774FgQp1WEUTVa4YFbpoHYNNoRLiHeKPzk0Rijm+++xZYSNr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB5538
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=AZ8PQoEK;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.92.65 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
X-Original-From: Jason Gunthorpe <jgg@nvidia.com>
Reply-To: Jason Gunthorpe <jgg@nvidia.com>
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

On Sun, Dec 12, 2021 at 08:44:46AM +0200, Mika Penttil=C3=A4 wrote:

> > /*
> >   * The MSIX mappable capability informs that MSIX data of a BAR can be=
 mmapped
> >   * which allows direct access to non-MSIX registers which happened to =
be within
> >   * the same system page.
> >   *
> >   * Even though the userspace gets direct access to the MSIX data, the =
existing
> >   * VFIO_DEVICE_SET_IRQS interface must still be used for MSIX configur=
ation.
> >   */
> > #define VFIO_REGION_INFO_CAP_MSIX_MAPPABLE      3
> >=20
> > IIRC this was introduced for PPC when a device has MSI-X in the same BA=
R as
> > other MMIO registers. Trapping MSI-X leads to performance downgrade on
> > accesses to adjacent registers. MSI-X can be mapped by userspace becaus=
e
> > PPC already uses a hypercall mechanism for interrupt. Though unclear ab=
out
> > the detail it sounds a similar usage as proposed here.
> >=20
> > Thanks
> > Kevin
>
> I see=C2=A0 VFIO_REGION_INFO_CAP_MSIX_MAPPABLE is always set so if msix t=
able is
> in its own bar, qemu never traps/emulates the access.=20

It is some backwards compat, the kernel always sets it to indicate a
new kernel, that doesn't mean qemu doesn't trap.

As the comment says, ""VFIO_DEVICE_SET_IRQS interface must still be
used for MSIX configuration"" so there is no way qemu can meet that
without either trapping the MSI page or using a special hypercall
(ppc)

Jason

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20211212232758.GL6385%40nvidia.com.

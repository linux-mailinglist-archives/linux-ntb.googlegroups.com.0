Return-Path: <linux-ntb+bncBCN77QHK3UIBBUFKYWGQMGQET5X2VJY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B12046DFF6
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 02:01:06 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id k127-20020a1fa185000000b002fef61a92f3sf2144731vke.2
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Dec 2021 17:01:05 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639011665; cv=pass;
        d=google.com; s=arc-20160816;
        b=wqY0bKcM332fgCjedDJdjujUWGmk8ijL7MDLsBfToeraFKh6sWrDLOlYbD7QZs21bx
         lrVsL6IakbqR7NFsiwayyKCosLQFcQ33dXs1sLzFkh1xV9V3Jw17y0r8k7DK4Hjhy+N/
         UX9msID+9vqNFX8mvsGKDYfhlVgmmGv9jIYtFHqT0+wbgM+DXY7LMgC/3jtKoHUu2yDn
         zXuIiDu4BWpUnvS8kmCZhAqUPrMDZ4FvOKq33UJLJ1uA7Thhbo1Gcl9mJKnQuxKqk/mm
         EblnFZcRzE30FrlghCosQE5UbYXYwxkit20nz6ds1UJw5MH1mZ+37efKf0NaZd9fLjyu
         +6Tw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=KwBqej0VeoZoCbBxPHZUiN2/4q+F3QsZpzqdpP3T1n8=;
        b=z+ioSfzBQ8E2qEDci7RSoPqJPHUHWMV50ZodTYTJt82Y1SJZDw2odbNey7FUrHhzLm
         D4lYQZ0vrrOAqGDGPYnoNlOSroK1RwXbJI2etf3qn5oM9ubqbBaSPemlQwtJFN73nAb0
         +JAby4DEjx2FnUVeq7R7ktlknGiNXacQUX/FJwjdBtheSif+TipULtqaQdwVAVJEm+a9
         L35500gZgJt7Y2bTsDOPW/ygMIx63mRg1jtd2gAp5Qj1Kd+eEg8CoDMMYvzQwCvbOpql
         Rh2YH2MYU+jYQcaW+3Y3VO+ISbgOdlLQ3e29LLJ1BJmuPAP4AzBDS/58tsPSsiRV8/Vl
         CJog==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=szYOgFrX;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.220.70 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=KwBqej0VeoZoCbBxPHZUiN2/4q+F3QsZpzqdpP3T1n8=;
        b=oofR2UYAIAsarQo2ipytIRbKSoJpLJ5KRg/34coJlvmyCPvdZ37Z/if3pazEfAV3ZC
         atPxE6i43FqF62dhnnRhiNrE4KrH0OdJf3ecyjeF5rFRBVpu7w3uBVD1uyJySjUvPCvH
         Wba8zsrGCWvKaqMtuIhzzVJBO8seg8L+S3unhFAsZoTc8nG7dczJveI0kv6aRzZPUGFl
         f2g/I35SqG32mZm7+eCRRjN7P3FtmvSYe8U9M6vqNOD12IV1e+eA39W1l+dF98JR6e5y
         1s+w36Epha0LiCLsmV403D8adow5+k8jGbU60w8VSSeRzDuYn5H8jZ/2djRwVbXy2MDv
         +IEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KwBqej0VeoZoCbBxPHZUiN2/4q+F3QsZpzqdpP3T1n8=;
        b=gUS7nAk63hKhlF0cPnTNAcYOim8r4cHh9Z7N/KwIMlo8SM4Sk0WpGUIg5Ay+WvzWFq
         Xn2Ztq9K7p3/tHiPkaUEIMksms2txFWFd+2sAmv/ggnnE5oi0sh9apLfyMEMDJCqCgHV
         7jRJdHLbSIgtx+/o6bKqH6zmJ56G+Ban8MiUF5X1JPMVxPT3Bew/JEwZ2o0q1zMMaABP
         UW/yvmd7fHyTpL+fbHNoAIDEqDNVKqLRqn+TEq5iZ0569zVMGlCt6P/uwwd31hqtq319
         ig0NfaeFlThXS+siKxTK9n9N+p7qtAQ2Ug42P0k8/MRgjEhwkwik56qWLKUd2iARNSgz
         3ptg==
X-Gm-Message-State: AOAM530mxig+11x6LIw0Uc8lEhuMTGqHIXkxGU3mL35U24NcZ1tnVpu3
	77mwIUtyLvn03WeC+OfcbDc=
X-Google-Smtp-Source: ABdhPJzcd29mDh2D+eATWe3fyuklwQBU/nTsn7vdqyXl3ab7JiqYHf6bJ3/QyRp+cC+ghXzrB4TKLQ==
X-Received: by 2002:a05:6122:221c:: with SMTP id bb28mr3549255vkb.27.1639011665033;
        Wed, 08 Dec 2021 17:01:05 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:f15a:: with SMTP id t26ls1529918vsm.7.gmail; Wed, 08 Dec
 2021 17:01:04 -0800 (PST)
X-Received: by 2002:a67:cb0a:: with SMTP id b10mr3032503vsl.0.1639011664587;
        Wed, 08 Dec 2021 17:01:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639011664; cv=pass;
        d=google.com; s=arc-20160816;
        b=apeeA2CBSvzq51iYeCpw1JhigfKkD60mDYuwzIWp5qUjM/YupfwbSOJ1+Yqyr6sgEk
         QLzflu3oKiX1VnfDafu3Fp/3KdGlMIKoS+4oScMXxcQUST1SEDX8uxBH3E0yZCOocTwW
         B9Nvdk+9ilqlFuh1YRHEJ9f0Btc8Z4H4rJ3zVF2rzlyevADM7lY85sR6AmrB6neFG00O
         wMY5K2Zd20XCic/V0RhqCWSUu8Gx12VFNTytnpk39UThtS5RB1dEzXtmI+BmWWR+qV68
         GrQVDf/iodsInvrBEGRwD+VjRU3aBx203EuRVAxWnEkenfK1ejSrIw9scNwgJMFjGCGK
         /dZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=KgiVroL99Eb0nfuME/RPoIYITyO9tKbqxVG0UmaTgnI=;
        b=bdSBuInpa8Xrydd99xpzjwhCzvDJjU0/6wdDq3QaYEm5smJaIfGrAEybc3fGBPWM6O
         BPH/jff+xJxJqbCrmEKdcjFdIui4yyt9HQTrAxaLcGSdDpSA9vkxqY+Xgc0iOSLTXBbd
         c8nOWSMZd+BzUkV/DtNEbQbCDAEMawCEvGRkKR0aY3pSgsvLit3BNhkZk+AC1OCOwPew
         vFHDUPlexE1zft12rs0X93xFarzvEUoZ1lbQd45AUy+Vr6/E4TlFrNOkWOKSTslJaEBg
         g5HCnGknq1cosjBKVFeh5b+5taAmivmO5btjZmiJQ6JJe6vcjFjF25tBhCKsN/9T7qtA
         laQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=szYOgFrX;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.220.70 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2070.outbound.protection.outlook.com. [40.107.220.70])
        by gmr-mx.google.com with ESMTPS id 15si250622vkc.1.2021.12.08.17.01.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Dec 2021 17:01:04 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.220.70 as permitted sender) client-ip=40.107.220.70;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UvCbd4kDGQut/yGBRZzq4CNcchMR16AtWmODGIpoYhfE6o/cW2HJbyFb1D2avmx0bjTptDPDifkPaz6P+q6vTs2J/3QWzGb4mj81zWrrqUqtO5taBlJQttyMjWsqwPSlrHDvbZBv8823QLHJtL+tzpaCW5OQYEaU5NqaNpSYW8CLzgQIxztaGWImlT9kGn9Uz+GAbKdwGhAEuJ+n+FJ9sSIbIvQ+6Onziq3Q26YZR0Q4xcK22Pyk7eKAiDnUmal8Gg5gUPaw7Kq0ZkdEvCNngCO+61BVGccDSnkctwoE47W5Rm8X20uvcr/HbY+y4Xaap5Yl0Ce0+MTvM0Thp6YzZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KgiVroL99Eb0nfuME/RPoIYITyO9tKbqxVG0UmaTgnI=;
 b=BbxTC4JvtR97/ON/xGxCiUjq9gy2if+iHF35WKBXhw5FDoB/2ZdnLObc9YVwrJJlt+ojH8jzzdiBc8S+7IT4jvX+BBwd+xagRbTGKWe51G652ZmkaCIw1Xzrb/KTmt3uz3XOBzvJS6zaWxfFxvShgxE9jHTwEhfN4jMn6XJ1h+GtmmBc05TFIGN75lgEN+lrvps9cZtFJVSCSB3vaalnIPORtCKC4FHJfJhT+DIIObK10ZrvPLNwFZVeWRpPiuC7fHjOKKgc4amsH4Yl8jeHGSmZPYY3heET1aEHBdTIFJReNDDdBMmoMxx3HmUlxK3KAqZHcpZFy47R/2fE2lConQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5336.namprd12.prod.outlook.com (2603:10b6:208:314::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.12; Thu, 9 Dec
 2021 01:01:02 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%7]) with mapi id 15.20.4778.013; Thu, 9 Dec 2021
 01:01:02 +0000
Date: Wed, 8 Dec 2021 21:01:00 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>,
	Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
	Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
	Cedric Le Goater <clg@kaod.org>, xen-devel@lists.xenproject.org,
	Juergen Gross <jgross@suse.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Niklas Schnelle <schnelle@linux.ibm.com>,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Logan Gunthorpe <logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com
Subject: Re: [patch V2 00/31] genirq/msi, PCI/MSI: Spring cleaning - Part 3
Message-ID: <20211209010100.GM6385@nvidia.com>
References: <20211206210600.123171746@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211206210600.123171746@linutronix.de>
X-ClientProxiedBy: MN2PR19CA0045.namprd19.prod.outlook.com
 (2603:10b6:208:19b::22) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cb2b6e79-f74f-49f0-cb95-08d9baaf5e8c
X-MS-TrafficTypeDiagnostic: BL1PR12MB5336:EE_
X-Microsoft-Antispam-PRVS: <BL1PR12MB53365CBDAECB06902C026D8AC2709@BL1PR12MB5336.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: e17lyaqu5o5/7p3ntAAj6KuFyP+SAvPCdw1kW0GAKs8hmKhu4dY592nfacJ7yrTk5BrFP9pF0V36OizX+xtF1NtVgZOptQAEZsjh7B3TbkBqx8DXtJAXI79pIy11DZWL4JJKHy6KUVSWDpOwBV7352R6PzvhPA9OB5NjaYgnaGu/tupK+npuXVIT6K2jVfhJhXnTAIATAWyebbCMuo+VryfQWhF3827r0aKkkehAOhWY/CIu8lCy6aei6+I/yxaljhi9hksEMGHkz6Rgb6JmkvSuw3DZzUZk1CRGzn2MMjnTCMmkcUENCwfWD2hZbLAVEOtI3d1AHOgGIlPbuWMrPD4ezMF3BR2ELZHsZ8KRf+2O9t41PkwtWCCC91LW+3lYR+RA6qjmCW2WuDjLCfMDO7R2wC2J61iyF3/enJ8eorhnjmbeV1Esu9QaBSPxm8THCNhOFoH9xnLfIXidpe9q0Z91egFxvQ8yImflH36CZ7mUxisrozqbegiINuD9WIapAVErHy9ghW+oSIzXRxH0/mWDA58eQCFTmwsVcelfB4olk2DujWCDP7IpPX76NAZTR7uSVbXnV/FkBUBg969Et8r6kRcWGne978RAJyQMAEpUZniqIVIh54uQ1Ac97J80Z+W5V8oqbXLVOHU3n2JuVw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2616005)(66476007)(6916009)(2906002)(66946007)(4326008)(186003)(508600001)(6512007)(7416002)(66556008)(6506007)(1076003)(86362001)(38100700002)(33656002)(8936002)(8676002)(26005)(5660300002)(36756003)(4744005)(6486002)(54906003)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?shMDjip6zDxHHhUR5OdRsGXgMFMHRWYs4sZfujZtVozMtzrjzTFPQjyrSIx8?=
 =?us-ascii?Q?omtSDQRdsTFLJ6Mgu2ug1Uz0h6SknWbu8DNfs8kKIHXd0lJH4IxD243tGA9C?=
 =?us-ascii?Q?4on2t4MQ+kL6XRVtdcr08oiJUYIUQp4tipOM3sCo7em07I06sow/1Ox8WixA?=
 =?us-ascii?Q?q6E2Td3wCbKPqw6FxUolKryjva/E85s18fnh7nYGoTl18eiOXm1YHxkSxXuG?=
 =?us-ascii?Q?GmaZ/ebgLDTtj3Aa3K8tIgWZ0NeQ8LSU1tAAWWuEG0C1hkrmd5Oc1vJ5OHxq?=
 =?us-ascii?Q?B12MbFmL/1kWrmhCE4WlxmszHKXkzJ4fpFhu8Cg2bCOLJQfLSvXWDlfyLVr8?=
 =?us-ascii?Q?bqki540ZTeFATnfq2wgPhSS8NHpBD14yJcImYfnOx5KiM0Li4yEVlV5Fv9IE?=
 =?us-ascii?Q?As4OvwVrxaPjfWzA3kIzAwd7SMT31z2TOhHsM+n+C4LacPRtwGHLW1PJf1NZ?=
 =?us-ascii?Q?mzDwBC1cc4ehs7pho0BiYBrqUycXMGcIsscYZPpUOU+nVGC7bQqh74mNKewR?=
 =?us-ascii?Q?vsxC0X5GcSCIhw4fFPuN5fU2RCOgAqsBJoQLgrviRZACjB+K3U72iy3wOdhs?=
 =?us-ascii?Q?N8C+kjU2bAymJlE5XWF+Um5FRcaZ6POCVo6hfecnryXLdFS9FlAspGNrziO5?=
 =?us-ascii?Q?kt0krhbNfUhavl3qbMuIzdM3H0rhf+6yuF8az15oKg3kQvCQzkNxkO5b+yaz?=
 =?us-ascii?Q?kolMo/5mZ0EJNPxq71ZA2pKn6D3gGSpxUZ3uQw3PROJj1x3nWLDimri0/966?=
 =?us-ascii?Q?UbDck4JTjuaNHqtpmKlL19UlhCn7a2R7BqRSmHuKn7/nRFIyOhLGqNrVVCkE?=
 =?us-ascii?Q?6/YXoVAz38p8o8d8/SeKvVjX58TwFmMFuHHAoZNuLQTcHm3Z7d1rFz22qP1I?=
 =?us-ascii?Q?RY+GJNiBjHLJlmtyU71FcLKEiyHHdo0DAt6KzNc538/Re22ZhEeC56Kd8bge?=
 =?us-ascii?Q?BVppaL7E5wSXf2UqHSgVN37oGpN1GUksBAlK8cbdU1alXDSYCq3aUzQ7RG1u?=
 =?us-ascii?Q?Pu7LkZUf2N6ajM5ud6T9c6aKXNEBs4qgBzL5VCgXGlciXa9EYhBbdpeGc/sQ?=
 =?us-ascii?Q?HypMDnmDr35vZcCGnkro56TJLUn2dIq/jEehKJUVHx1oXIGUp8UBpiYMrAmF?=
 =?us-ascii?Q?GT49cRyNB7ivkpviR6IPL+u1ZBvmM09Ts2k2aaomvFgje3mH2TQ5Y64dePxW?=
 =?us-ascii?Q?KFNKx43aywyGFxSGVNSxdAdOn5F+dmbnJa4hM5YxmbJkgTKtHkN2j7+3Dcwg?=
 =?us-ascii?Q?9c3hMi/76nXZbEal5CP8nmGseHAUX0hwpXM632u3E8ObsTuciqkPASfd6uaD?=
 =?us-ascii?Q?/fZTct4PYQXVfX+4gpLfIs8ltipj5tsDxHVyiZLzDWRFIjj1Mqb9SDmLSKkY?=
 =?us-ascii?Q?XWi3HLR7+UjHEfUGkPGVWnDgy/0HZHWoeVksytpNzmXSLOP7jZFj3BA3DZip?=
 =?us-ascii?Q?Kdo9gh7v8rODP8cZfy34t54uZVQAMto9DAj2dqwvBzs3xqo6/ue3k0c7z5nG?=
 =?us-ascii?Q?uT1bUnZyYkoo+joTvN7JabYbZEzdb96Gvjsf5z9r0kBYlnXHsBbw6iOSHT0d?=
 =?us-ascii?Q?zU0DcX2WcswaFrAmk/Y=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb2b6e79-f74f-49f0-cb95-08d9baaf5e8c
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2021 01:01:02.0307
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ac5j/fEW5mAA9d0JCPW6WGG1MEYtFnJRc1YLJlObCO0269ZPl958o0fLCYYWvNi+
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5336
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=szYOgFrX;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.220.70 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Mon, Dec 06, 2021 at 11:51:02PM +0100, Thomas Gleixner wrote:
> This is the third part of [PCI]MSI refactoring which aims to provide the
> ability of expanding MSI-X vectors after enabling MSI-X.

I read through this and didn't have any substantive remarks

Reviewed-by: Jason Gunthorpe <jgg@nvidia.com>

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211209010100.GM6385%40nvidia.com.

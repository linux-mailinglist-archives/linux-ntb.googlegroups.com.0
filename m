Return-Path: <linux-ntb+bncBCN77QHK3UIBB7VXUOGQMGQEMROHEWQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 755A84665A7
	for <lists+linux-ntb@lfdr.de>; Thu,  2 Dec 2021 15:45:19 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id m9-20020a0568301e6900b0055c8135f148sf15206301otr.10
        for <lists+linux-ntb@lfdr.de>; Thu, 02 Dec 2021 06:45:19 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1638456318; cv=pass;
        d=google.com; s=arc-20160816;
        b=qG5lSkjQL05pw45qFG3JMdm/GnqiKerYX3CSlfQaWGBG5Jej2LSFcAFhm0B7/sFYau
         I8DzcwB765Ikkg5lZhc3/PWHbSR2++K8Z0+/rPzNXOoszXIJWcQGcawzwWpbZU05nQff
         L+v8ZA81ZBl5DFTI2zApmKwQ8Zz3sYlH42Izc0p9o+H2YGXXNCXGSx9uA4ldOy5NJ7s8
         9acLKIQJ2xWVAtFc+MPj4QMlFGFfRTi+DAH6UyaIBz2eifnFKxJeIhtBzgXhBewmGg8e
         d6sVSfbYR6uE0e56z7r0OQAeJ9paP5OJ9dnermzhgzZa03OFQoW3DzHDKauxDd81CmUx
         0bSw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=4Ch4SFBqCWzoAi+CitAVYuEXMW8mKjOrKpRfjtXKPgQ=;
        b=mOCBS4h2v30CpdO8iKlG8AHfJRH74VionJYs6O/UIADePEN+4n1uz6OZRCiYv5auHt
         DN4PD1+MT9eehgrW0qGN+89bFY7P2h9Xsd1eE/6SFnGluKfgzggk3bIpIFJE0TB3ZOTY
         bIVSsgnvxExQ/a2z/k0njLF//8+OwDTX6Qfw0iF/P7r5a4PQlJHso/X29KEZFs6iwqth
         3t86y3IOVYWcTwEB2kqjdfntUu4EEtzzYf69EN1wgr9Hbyg3GXupwP1c/UsdX3wKJdR8
         vbvYsuczYNRoKzOVjrrU1+ELx/fxSXYwvlCvRNlZIO7JKfXFG7m7i8Ijw4YmRM3tHyjF
         GEcg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=Unl10r+t;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.220.89 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=4Ch4SFBqCWzoAi+CitAVYuEXMW8mKjOrKpRfjtXKPgQ=;
        b=CW7KblBSXfBFNlgqOaYv8GIi0kMSXJTksFgCwRJUc45evZ2kTQ+LvnV02eH15tb8OY
         PAQGTdb7EM/SJB+HahGeGBkpngZy0X4UcplOe1gIJEHZA4993GeroBnOpUFNkevGcUGx
         p/9I29aCrZiLDpDIfPkjBgGamz6BtJOYil30e1R5JLcMrS88hzLy5PSATHXp4ZVFLPQl
         U8smz8LGLNU7vEuWO83Y3TajHn4qwUK/f9F+Eg2z6HD/jWnN9rzO1/9MvMctfJAW28Gf
         qAUydzYIiABz3XJyCVjXcyLx5N1oSbvhHN8/8aybFA83Wjrsw+XD9rqWO5YtO7yi7UWm
         V1Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4Ch4SFBqCWzoAi+CitAVYuEXMW8mKjOrKpRfjtXKPgQ=;
        b=ujeWSB8rgqNcaj0E8SNRctmzy+Vx7hNoBrjsMtG/48B0k4Hx7NWzuIyms7U6dZSWEW
         YzRBhGsLuWqigtm9ettjLCTE53MJhc+KH1m+tkdL4rAdTcUdXdiykXtohT+mLzxXFV8H
         bTMr6T/ej+dSKZpzDe3g5DZlrVtJ2CinN1PB9owFrppk+7SD9CD28nmhnUvlYGONrW47
         zJ7m/baJQC23n4XV6Of1+nBD2ACWNNQmhOg3EOMX23VmfepuLIyKd0Mntbk7wbdJC4+f
         poJLHre4mwuCRgu9EGz+jbNH9I73R7FBe56hMyPo0dZI3LQrcrDiLszYBF1jAsU0ncLM
         jomw==
X-Gm-Message-State: AOAM533uVkC4Gf4kGlesFw1kRKYHjGrhv9huz50sR08x/nWJ7icaKH+d
	qp98iL2uGj0aQGANXJIuJkM=
X-Google-Smtp-Source: ABdhPJzoB+SUGfOd7Op00BvUCnwauQhZx84bSMSnyPevpX+RIETRBB33dzWAcU0GStFcrjl1S6LwlQ==
X-Received: by 2002:a4a:5a43:: with SMTP id v64mr8964161ooa.26.1638456318051;
        Thu, 02 Dec 2021 06:45:18 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:41d5:: with SMTP id o204ls2383821oia.9.gmail; Thu, 02
 Dec 2021 06:45:17 -0800 (PST)
X-Received: by 2002:a05:6808:14ce:: with SMTP id f14mr4626077oiw.162.1638456317662;
        Thu, 02 Dec 2021 06:45:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638456317; cv=pass;
        d=google.com; s=arc-20160816;
        b=WTFF5e5QAHS5LoSYhDi1tR+GjJp1bYFPtq5LVMWltj7ydT+VGGacOlU4uZj+KxWz05
         C4APrZx2wMdRUmlEiR+7h+388BxjoLST/OhE5xvVGgWTjUFuO2GupIprfaesdGU8cnY/
         smeJW/I0NyxszG680wLk4BcYsGCEdJMVoa91yRm8K/to1tisba6n0iMpWKYOzTlHcahS
         s7Xn34+LN3luwBEfZz/r5Wr8oarVRw0MFm00kjr2q8/EUFoJ9S8kgioRYctO/lQzlBZj
         Pip9DIn823CwJzDkxfQseV9PsGzN183LN0rNk+9spDtkC7I/4AS7HwqLX3ZOvxMFNHvU
         vwNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=X/I0zanScvzDSeYVjIuIpJcqFAlFMYihOVtWJ/0S5HA=;
        b=sV/dNwCz6ZNOGMrNxs9f4lGvS15+9ita9iK5rGIVA30a5x9zHCo1XEvcGqk+rqrQ1x
         h+nvJKWh10av72ceo3TvbSOWSCIJhp333yk6DDp7QRhCviBHF+HBy6SbsMRHz+onSr5C
         Ws6dxkpKY8mZGqSM145WsJ0UcSmDPslrpOtLRakFfwQIxzLqVZBXmr0+Mex++7+IlExa
         jysrADjTGVv99QSbthpa9M5E0aBSdg3/ym3g1fVj8afLCfnlDYMT9/KR3XGP3GZl1ffn
         jtt2DCTI/lJ0vcma4CPX7fLHuB9uovTFSYZriD5vGIu+ggNJCgiXjaajjxw35Jyc0L28
         +X9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=Unl10r+t;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.220.89 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2089.outbound.protection.outlook.com. [40.107.220.89])
        by gmr-mx.google.com with ESMTPS id be25si456698oib.3.2021.12.02.06.45.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Dec 2021 06:45:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.220.89 as permitted sender) client-ip=40.107.220.89;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NhxsAbWVhn3EQybBSWSQ+IPO2NR7Lk2nh61H2CLOmrl+t0PJI19oIPGANjQLqBjpz+QYe50Z0WvHspA8JIYkWk6PJPLuesEQ/om7oMBV5OSb9hweQqG7Q73xJPaxlM7pAoO7lGeIICr1YV9Psx+5U6QNOgmnFgS7avwCtX2ONYfa20BoQIAk9e6Gj2oJ3hY6k+LjdFcTfn5NgJxo8ztDCtWMLtHGNZ7M6RUrCfZCLxPq06WL52hmM1bdroENI40oEG0TLosLUkYjecX6DJC8B8KUpE3h2fdd6ny1RWJgG7pf4Z3lQzKIUqjeHEgT8yjT6ennaxAqW76w5qHYGaQ6iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X/I0zanScvzDSeYVjIuIpJcqFAlFMYihOVtWJ/0S5HA=;
 b=D3l/7EaNY46DYH2ltOuiFnWuuaRexy4wTVDmNBWtt2j90Ik5ewNanXyMbK1sVGuE4JS4DHxcpcbqszCxbZjcliJ+/aThG3ca/553sF8EdcYhmP+k+hFYqb0zoxV7xl55mzBHsLw319jPhoSd+UppiZ9qTOHpjQGv8VxLRUzCTZd2h40Rx2HiYfxcrRLGtlY9f0YA6tLP6alXUIzM3Yulf4XxT7aBBNv5PGz8EVgcjqXT9Xf/jsQ9YCVrMGgdQCpbFHXIYzd6gju4Tn+7yYhoNL5k81+qEv4KHaL6CN13uR2CJHJgV1rcr+iMSfZmm2AwxlipqY1vLbzS2b6urkNslg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5288.namprd12.prod.outlook.com (2603:10b6:208:314::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Thu, 2 Dec
 2021 14:45:15 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%5]) with mapi id 15.20.4755.016; Thu, 2 Dec 2021
 14:45:15 +0000
Date: Thu, 2 Dec 2021 10:45:14 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	Logan Gunthorpe <logang@deltatee.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
	Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org,
	Joerg Roedel <jroedel@suse.de>, iommu@lists.linux-foundation.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <20211202144514.GQ4670@nvidia.com>
References: <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com>
 <87mtlkaauo.ffs@tglx>
 <20211201130023.GH4670@nvidia.com>
 <87y2548byw.ffs@tglx>
 <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx>
 <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com>
 <YajW6veanK4GZUkv@kroah.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YajW6veanK4GZUkv@kroah.com>
X-ClientProxiedBy: MN2PR07CA0004.namprd07.prod.outlook.com
 (2603:10b6:208:1a0::14) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by MN2PR07CA0004.namprd07.prod.outlook.com (2603:10b6:208:1a0::14) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23 via Frontend Transport; Thu, 2 Dec 2021 14:45:15 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1msnKk-006tVB-In; Thu, 02 Dec 2021 10:45:14 -0400
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: cd0a7af6-db9d-424c-ff6c-08d9b5a25a4a
X-MS-TrafficTypeDiagnostic: BL1PR12MB5288:
X-Microsoft-Antispam-PRVS: <BL1PR12MB52884E5826063775221460FBC2699@BL1PR12MB5288.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: YUKBGsKQ3l3n03IijQjMpOxcqKtPuH/w1C88WjIJe0O1HhuamGsh//N41iWjVYiBG/my+MluaTGFirxjsKr4unCDTiOjONsC6W7i69T1etF5WjqBG3sEEzWzLcswRFMDYNEwFqgdTvybwSF7g6mx1m3+7E0pA/GJxiC5SaBt5aODB4yc+5fTKhBVRHk8+Ui9P4qTEh0+vKkiiW++Cd9Zk4/k2OQRPS8/2io66LANc5qa6/lmjqQKIoFt9woRI6t5NYYjE0wzPcaKWvzJZLHCsaI6k/HoF7fONf5Ilc8tETj65AbTsuZjVHDXy/PiWrhxLzbHS2p25oeF7xTvf6Fh/gXcO80Wm02g3SEy77TYiFG0k/N5jweTVzsH4EE5m+5k9tvYfDqzGEsZ07xBNOK0iQascRTaiPtARmU8x6oOaMtetua+knEBi6t5BpzGNDXWeEoZSI59D6PFSFIt9NnnLxBTAQpcevOo01c7xuWBvZFPo2r3ZPj7dfP3jQZC6AU05j0HK7pr8ywt7wSp9rcFjWO9HvHpytZIkFe6dLwSlO+njPp1b1fCfwtxSFnXlu+BKcLbCkgW8RRU1Y8KFXABZNIc+Ydrlc0gtszQw1cBXw4LM96ntn9GAdlDp+oTS5bxjeApypjkXLs0KuTtMtYiEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(9786002)(9746002)(426003)(2616005)(8936002)(8676002)(5660300002)(83380400001)(2906002)(66476007)(36756003)(33656002)(508600001)(86362001)(66556008)(38100700002)(4326008)(186003)(26005)(66946007)(7416002)(1076003)(316002)(6916009)(54906003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DXnrJ1GJqiu0t8/khzdJQDoSDdzCtvRrFwbqY8rzmO7h/oAole7zRZfb7FpZ?=
 =?us-ascii?Q?g7nKpgNzWeoqTjJjOtfgC0uf7vpk+hBbfVhPvzOnkbDCV+6OOH/x5KyCsQdY?=
 =?us-ascii?Q?2qb495f6QwxtiAKqSn560iwBERfqkNE0wctYflvA01DmxABLUShuPrI43BBN?=
 =?us-ascii?Q?IeyABwvs455MJO59iI2idlbt7irS80HuqzMUQM1y8oGq83c3C4fX7GSKhYV6?=
 =?us-ascii?Q?5aRUw/3nqlp6wl74WWZ2Apy/kKJ5qMe0MORoAbgjt02C3K170VABUfT8w5hi?=
 =?us-ascii?Q?BikoIhj63Ew1/a+s04KwTtWomBeHwMUaIWLsPQVjijq1oNF3sJZcdTj3EG5n?=
 =?us-ascii?Q?tNbgyP/XdQzV9LVwmRR3OK/8p1HfxkIMI0dSbfKvxRBcl2Sv5j9hvbDZ5KMj?=
 =?us-ascii?Q?TsXCgnA1vjeWLZG+SB1RGvnsByJV9sumCqMCx2F3xsOKoqiOCVm/Bvqod5tj?=
 =?us-ascii?Q?uAbCyLf+T4Cvc5ZWhCno1G2a49Q42YwmwWng8BOBduM9Xnd+bbZYzL6Ntydw?=
 =?us-ascii?Q?qY0FIh/l44gWaQuL+aSWqqUzhQr5QU8tOKqKEqd33mqopP6hPd6KHCPuaJm4?=
 =?us-ascii?Q?vIfOi4pHZSmBGCs49vc02oB9bdM+XuiUnuh3S8CLJGkmQelHvcxFjwxiZPuh?=
 =?us-ascii?Q?ahDPqPOXbUv/IuZ2th++NhGXfzloW+pvoAetIjPFgCPxIw53AsbwI0cVhxZd?=
 =?us-ascii?Q?pkgKgKqUrG8UdUxbydOFfuNl57iSz43F8AfMOgs4XIU/HMs0F+MDvUCPGYaa?=
 =?us-ascii?Q?mghjzw01jhn3HbJB0FwMLR5IWApuSloqyh2b7qWXQ4oVDpJT4ajkxOKlBOA4?=
 =?us-ascii?Q?iNCC3sLafJb23c3F3656NZ7Egb8XOjMeEdq0GNEWxodSQmjU/NVFCEAJv8py?=
 =?us-ascii?Q?P2cWeLskqLpSAwiK55rDkfqfUsuVXq4GHnxSVkRkChC9mMNwWj3gfZ7iTGwP?=
 =?us-ascii?Q?nkvT8TEkqpuVRO9t5I1bGh1hqgtvjCVWDukr+3zaRJM1LyTfRnyoSx/WliPY?=
 =?us-ascii?Q?Gf5OlkbqLGJoSCGveIHjOh7PmG21ZWwBiSFXTniW66EObS58BzldL/A74zVJ?=
 =?us-ascii?Q?/+oHtDOhGQhG4gl9wRrbId5+uH2WYqF/3l7htWJNNEa1gEiMzjrgJESc9e2o?=
 =?us-ascii?Q?A0AQPAQRJTU8MVkurW34gg0hjVnav5+QBnHLuqnJsRubRfw3uLQOx+YxFpa0?=
 =?us-ascii?Q?VwEjK1qrflNyPZiA4+C0pQRqa+BH+OLr9oa9OsDjU6Rrpy2YW1HfVo4ICN6Y?=
 =?us-ascii?Q?Cm0KS+9FQsQZpPIRrilQGx8WapW7Vt81OLT9L7cPhg9lowg4tftO4wmS5DU0?=
 =?us-ascii?Q?Crq/dFvdiSafou8AwP3eoYkMijLTOG6zawmSsXOjcaZ/5UIaeMCzIRQ6Mqnv?=
 =?us-ascii?Q?kfBO/JtmhgiIre8rkrlFdfLmeVETFHEyQ5acJOQv28sgqOZrO+rggNQNj3bA?=
 =?us-ascii?Q?Xs8hmM9BMnoLvhPzbI28cWHpazNsXq3asTRKdJ9KTv19DWR7PUXMjYMYj7Ga?=
 =?us-ascii?Q?ALQuEcKuD+ql1/NsRtBaG4Wgk99xDVc9ZliG4+n57mkOlxDZRIN6PgrHmJzK?=
 =?us-ascii?Q?LaShTJCSyJ3CtZT8Wek=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd0a7af6-db9d-424c-ff6c-08d9b5a25a4a
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2021 14:45:15.5860
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hfPU1iuT4TXLtSDHxF28C9Z+zdeCqb0rqRpoRGObfoVoNsSvXIcgCWahbUwSO/3l
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5288
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=Unl10r+t;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.220.89 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Thu, Dec 02, 2021 at 03:23:38PM +0100, Greg Kroah-Hartman wrote:
> On Thu, Dec 02, 2021 at 09:55:02AM -0400, Jason Gunthorpe wrote:
> > Further, there is no reason why IMS should be reserved exclusively for
> > VFIO! Why shouldn't the cdev be able to use IMS vectors too? It is
> > just a feature of the PCI device like MSI. If the queue has a PASID it
> > can use IDXD's IMS.
> 
> No, sorry, but a cdev is not for anything resembling any real resource
> at all.

My point is that when the user asks the driver to allocate a queue
through a cdev ioctl it should be able to get the queue attached to an
IMS, today it can only get a queue attached to a MSI.

> It is ONLY for the /dev/NODE interface that controls the character
> device api to userspace.  The struct device involved in it is ONLY for
> that, nothing else.  Any attempt to add things to it will be gleefully
> rejected.

I agree with you!
 
> > If we really need a 2nd struct device to turn on IMS then, I'd suggest
> > picking the cdev, as it keeps IMS and its allocator inside the IDXD
> > PCIe driver and not in the VFIO world.
> 
> No!  Again, a cdev is to control the lifespan/lifecycle of the /dev/NODE
> only.  Anything other than that is not ok to do at all.

Said the same thing in a prior email - which is why I think the only
logical choice here is to make IMS work on the pci_device

FWIW I feel the same way about the VFIO mdev - its *ONLY* purpose is
to control the lifecycle and we are close to stripping away all the
other abuses using it for other things.

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211202144514.GQ4670%40nvidia.com.

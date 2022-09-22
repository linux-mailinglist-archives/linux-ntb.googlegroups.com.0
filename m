Return-Path: <linux-ntb+bncBCN77QHK3UIBBBFDWGMQMGQEPV4EPKA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 51AAD5E620B
	for <lists+linux-ntb@lfdr.de>; Thu, 22 Sep 2022 14:13:58 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id w12-20020a4a274c000000b00476362afd07sf2025080oow.10
        for <lists+linux-ntb@lfdr.de>; Thu, 22 Sep 2022 05:13:58 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1663848836; cv=pass;
        d=google.com; s=arc-20160816;
        b=F9iwcPkbx9hnAxkHr/ZKRKjZmNf+kkcroYznPy1URlB5SBIWh0TtsuxYNv9mpT9CGe
         raLv9iIY1so4Decq7mnUyxhvG/nxmqS6bM5Ga8Sm19MCdulrQg2N03NZv6im7XYZCkEB
         tvKenjYUqOcedhH28czDTZO7CQKIz0ChD0qgMp94I08cwljHh8iCyf/9xh4BwVqXkZ/e
         D92CEoFwGlxcOGGl4xOpYS5CyUUsvVqUJI8gpq5Em6AB4P9H/scwBZR9hqtrnba4z74o
         MneBzXb1FfnBl5e0uNnX3CSNGM0PnH5POjLFjl1OgcjPm0XTjv6FnZVvpYmTvdt20jRi
         yKFQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=WS+YRtMRaQloBb4oD1/R6XE6IQiqpv0dK/a9mAMnI/Q=;
        b=AsC6MgpJTbvihyNxhqyclzVggdqkhndKslQ7r8Vpr2SbpWew3ng6l48Mh5PyMEtfTS
         dyBhg8+6EFu3zQT44+vlmPz/dzkZExy6SLjwhHu+IHgGB9veslaB1pkb8LqBhh9XQP0H
         zQb3IHRoY1WYBi+759YW0ipy1TVHKwDjGfcjtDLFGplJTYWCa1BuKtaDCXaTMUEwBcJs
         0JTRcLmSzYsvktWVUKjHl0eQ8V/3hQAsx81z0C4KWou3PRkwtyXecGDX6Af7NXITZn5c
         ZCm0hokKGnoZ1bucQ4qtb6kq+ydYGFL4vmc+6/7INpNUkZGg+tBdFYLnHGH/67rgGk/5
         qIxg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=LIB9efER;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.236.40 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:content-disposition:references:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date;
        bh=WS+YRtMRaQloBb4oD1/R6XE6IQiqpv0dK/a9mAMnI/Q=;
        b=pj41WbUvF4QmBMfWQnQ8aSI3ABV5WSf88kEQ/GYB5sIpGmuuLTb3LHjd4rJsgAMof6
         QuNITayv8Yxpd/ncQXUVElt1X+J5Fjg6fiHDC2aZ4VbpftL1ueRtmP1j5B+CkPwQANuX
         NJEQ5SZGzJUA3w/ZmG17BIXG7mII+pIFHSZMbLQmZ/Qi/Ln06G1I8Of6EmWZjVVXIcTR
         aEIGKX+3kJTM302Dae4fUaV0dWbcuFVUUdhfpuqZ81FjyNRtLQhgpAaiJA5K/zDe3NxF
         cwVn/ksMMRXQp8kajwfq4Fp2g6Lx29X42SCt6Wjk2kk5KtCHNRU390UL2wOeSgk3cJ/h
         fUuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:content-disposition:references:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=WS+YRtMRaQloBb4oD1/R6XE6IQiqpv0dK/a9mAMnI/Q=;
        b=eUEHAJmtS3hX1S2LgbVuXcX58lMkj31UchgCw2S1nJUjL5CZK/YK3PLDk5iv22W1gu
         p2K1OETbziSgQAeirXcEzomgGKuj/v4ivI+hW/d8dzmH1jXjit84jqvo8jfpLQzU84uB
         4fYHQ//FgMEXBmieICasH3fTOHhdC3V1gwW1uVMwQNhs5YbP+fOc7MnDqrXr5fiTVUM0
         3o8Sy1XenOV3pl7YoBXPg0j2C3HZL46fuxfmVoMvjPLgv6aeIXznEuMhz3slDFhW+Wva
         21KOnNgIW2FiH1VNXTOgQXGLe+FEWn1WwTW9lWAY1S63/PLjh3a7GwB5UAL/1ey56rwf
         MxMQ==
X-Gm-Message-State: ACrzQf0b0/5s0AmIfKGA6h5m0wEvQGRZYEnbPlVN5zU4iMyv2jET/RuQ
	LnnfcKwfGqKWfn7eOSpVCMs=
X-Google-Smtp-Source: AMsMyM5qn2XNNskyMKspbwOI4C3lqPUOXUQgMqh145J8Ag1fK4p+3XCIR8U7nhNQtOVP1ye6DY8SjQ==
X-Received: by 2002:a05:6870:1694:b0:127:8d30:5afc with SMTP id j20-20020a056870169400b001278d305afcmr1825697oae.26.1663848836640;
        Thu, 22 Sep 2022 05:13:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6870:d306:b0:12c:52bf:5541 with SMTP id
 f6-20020a056870d30600b0012c52bf5541ls6910856oag.11.-pod-prod-gmail; Thu, 22
 Sep 2022 05:13:56 -0700 (PDT)
X-Received: by 2002:a05:6870:a553:b0:11e:5231:4eec with SMTP id p19-20020a056870a55300b0011e52314eecmr1705438oal.143.1663848836214;
        Thu, 22 Sep 2022 05:13:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663848836; cv=pass;
        d=google.com; s=arc-20160816;
        b=dRSU6IzFqMMwN1dj2XI/2Uk8Jai09lbm6bYb0uPZhShUF4zMG3v+3mL56L2SjstP20
         lTuAcgoq51kQD0r7YdmkiEvuQ7uLJ8mGyZbDEC0O+HVFX7Tm3tSS8l7OofibOL4U0eg0
         icv5fszaFFOEhDUB15jfhfBre+jco4w6YUmbNABFe2DopviHSLYkatn+t034qta9PgUh
         4f+wLzgD3IrAxmutilKaSxAsBi14gvfhb5OFebkMsJd22QLPAg2uq8vD/YFiK9NaT6Ol
         /7TztnVsaOc7/Yvih/i05BpJqaDa/J5mDt+pe7/Xx0K8V0GO8bTD7zf7Wktot5AVqtvx
         faBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PaJEpL1/Zj9LAtviUDDcpjg9E9bqj5gJITCV/xzQn0U=;
        b=oESPOxo6uHirSzXuukTm92q2OWKTf/4chG2aN6Foqf2hQ5YGzKxbdjWJzGQuiGC7/F
         gFBzxQC+EZDkRdoYZVAVFlXmOO9QPMkTPeTH3zB4EOZlQ3+KtAyN5mLTBbLeQVZabH49
         h9EY5Zfs5mN0vnrpq78TFOZm+WZlYKwnBMg6JAAO+LunV9WKwFMfKXWr2bFFicdMUrts
         EFSMoDlNVkIIZiA7YSmQbFZT4b6J5aWu04Zk6UGyk5p36I2ME7hhLgATWeoxYt52cRYF
         JfoWOSozF7KDLBnXg4IXUKpVASWoPx8/8b7hQJ/BHhcUZbSvZJNcmgiYOfA5k3Gh+50I
         gXzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=LIB9efER;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.236.40 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2040.outbound.protection.outlook.com. [40.107.236.40])
        by gmr-mx.google.com with ESMTPS id r22-20020a056870581600b00108c292109esi729771oap.2.2022.09.22.05.13.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2022 05:13:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.236.40 as permitted sender) client-ip=40.107.236.40;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ATA7vSn2LL1UdSQ+dtFUpDgHPuyMyHuN+R47iAFDZ36T1NzBBohGlimsRkrL4oaLoDQPK8zenJUU4UE28hku51NX1/dORDWCiH9gWuzmGFPwSqOWUk0Rfw5pNLrha4vI+XUhgLLGbTAmLS0RrEsEPFl3vKAc1paGtSeYLP1T9kmygNv0B7Q/3O2Bj+pyvRLMuJAKOVxBZXpn6c2jgR9+cofHvK/mlKxr6zQJmWdPozvoFMOfYxvdF7pFVS/H8mlk6eCFY27wLS9tyQKtnr398EqItoHy5CxEoEBqYHm55cDExzDVgVDZN9eO1Gu7qfxhl0VikqjGlBtBnIeXBrZrYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PaJEpL1/Zj9LAtviUDDcpjg9E9bqj5gJITCV/xzQn0U=;
 b=Mk5kE0zO9xJFMn+q1O04ofOeh++bN4VXQL+O+ZbYmJ7s8mUgy45Jx3O54d+EjubtHTAg/rvztqDaPcP4cB4NkaoRK8AJMTr6cYjVRcUd2O7BQWg3WhPzuyhG36UVpI7BMqjt94+p6mgzhk6Yjb7jsCPvbBEOCisNjXZAKimZ/ycRH5XbBOLdioRBQRPwehZTIsXBLY0d6Htfh0bARoNyFOWYfL3PuZfGcg4uVjKM8PexHjv+34Iqc23FRAc6aDymbV3hKqI94YKpZ/rKqYBbq7oVzaSpyy8M946sM472+Flws77IrlTAr8eJZkyf3oyCiJgTAuOMUfIH1OfRxzp2Pw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MN2PR12MB4192.namprd12.prod.outlook.com (2603:10b6:208:1d5::15)
 by DM6PR12MB4880.namprd12.prod.outlook.com (2603:10b6:5:1bc::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.19; Thu, 22 Sep
 2022 12:13:53 +0000
Received: from MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5]) by MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5%7]) with mapi id 15.20.5654.019; Thu, 22 Sep 2022
 12:13:53 +0000
Date: Thu, 22 Sep 2022 09:13:51 -0300
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	"Chatre, Reinette" <reinette.chatre@intel.com>,
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
	"x86@kernel.org" <x86@kernel.org>, "Rodel, Jorg" <jroedel@suse.de>,
	"iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <YyxRf0UEEyT79oE5@nvidia.com>
References: <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <875yrvwavf.ffs@tglx>
 <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
 <87fsqxv8zf.ffs@tglx>
 <BN9PR11MB5276961D838169BF237928E18C499@BN9PR11MB5276.namprd11.prod.outlook.com>
 <YynJqID/E5dFCakg@nvidia.com>
 <BN9PR11MB5276CAB439EE27557FC17B1A8C4F9@BN9PR11MB5276.namprd11.prod.outlook.com>
 <YysIEUbxjS328TAX@nvidia.com>
 <BN9PR11MB52768936DF8C7F19D5997A0C8C4E9@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <BN9PR11MB52768936DF8C7F19D5997A0C8C4E9@BN9PR11MB5276.namprd11.prod.outlook.com>
X-ClientProxiedBy: BL1PR13CA0096.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::11) To MN2PR12MB4192.namprd12.prod.outlook.com
 (2603:10b6:208:1d5::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB4192:EE_|DM6PR12MB4880:EE_
X-MS-Office365-Filtering-Correlation-Id: 99581549-f978-4684-a9ae-08da9c93ea3e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9ckJwHEcC72BEJDftp89fd9dhEKzUx6tIyXQwqOT2WLIY8OdD7hn+0+j2Si8HiLNeoJIhYKW79n6O/9WvDFGa0AslKCHQvG+00WABvJW+pvtCeGi/kA4hmx6kK/IncAeRmlubutARSSD+/JceW8b3JR/EXvL7vlI810DokPjoBoKovzuP+7AVLlysKlBAdcRiDtc5MJGCocOcdN0XWxl/tgbnNbPuCfCtGVnJ+mtiyGgEUHZla93R3LEtkah6Y/eIiMLyPlVp7VF/Giee/VOUNr4AfifW7EpBcI0UN+GYEugpQadIA3Ao4z/nnJqrRST1FQqoNw1YhExbulpDic3B3BdAJefrcynfVmZs/UYKXOl1tfpv0qQDoSgh04B2mR138sKKslc6OBcCBBcGqe5WwTGEZmlsnmr3uRPhovKLvN8d9HWXTiA15QXpkHr/t/a88uBNEjVTc29pSO71TSaz23TytBge7tymIyLiKFit8Q/QoqdWF7pQger4/xNc9ny9y18ON9QXxRTtNaxDxruIX7MDt/hkykdabjjeeLA/IYlYZNEFxETCVsavB9ORTwUwgN1eVnEIESbHHWiLnaEG3BP7l0yc0jjcZd5Uykg/WG9pxbR5tLUOLmPeiPuT9t9kYxIl2v7vfyqNhH9H/Kvi413XLMIvyyDco8Onr6WqGWcuN6BqYlIN+jHG98TRHmo
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB4192.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(346002)(39860400002)(366004)(376002)(396003)(136003)(451199015)(6486002)(478600001)(66899012)(41300700001)(6916009)(6506007)(6512007)(26005)(316002)(186003)(8676002)(2616005)(54906003)(38100700002)(7416002)(5660300002)(4744005)(66476007)(2906002)(86362001)(36756003)(66946007)(66556008)(4326008)(8936002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zXOVp5l3SCESHfBvnikb3afj51zvvZ8iqfkP/SYcZNDT1mqUgta9NwMWikXb?=
 =?us-ascii?Q?y6uC0ZSOt+ODTCQz5q/tIVHOo5rDkYkTMtE5M5xTK3zq9Hu/5f92ZiaGhQei?=
 =?us-ascii?Q?XduNGHVuwH23cNQ9UqWCioCOnhBJbvyt+feHUIPGV0b8ae5AhAW8draw2BDQ?=
 =?us-ascii?Q?GXWbt6amZTt9SVLMRc6MDWGJvmUwXszDp1rdK2+GQx4V6oa+rp/Hj5euhfmP?=
 =?us-ascii?Q?/SjlQ5+8Y3Fw4xwlSoSk3kaPn+BUxr9GaP5hStEQGHMsEAyvV6Zrg36QyIvk?=
 =?us-ascii?Q?K2UZzdZdHIy3Au1btrlEe4RlU9YCB2SwQjuRRwuOJYkf3ey3Eox20hukmq7P?=
 =?us-ascii?Q?0S+jHaoppivkMC8PiSlx4g0BbIdVWAcD2SI91oiuZgJedCrZvINjoDdCccY5?=
 =?us-ascii?Q?QGG2IgQtK9GNq2tUnt0MoYFBEJZnGHCBxkHljICuVDaAe0W3KE6qlDUpcUTj?=
 =?us-ascii?Q?OlrqYyotmDbk3ELAkJWZbS8gCvDS0X35D1846aepyltOn5Sb+StGjAkzdD/k?=
 =?us-ascii?Q?cmi3y89XdM7tGJQw2K95LYcj99cKqrmTc36xE74p7zJCj0mUkGapfSnPpzBa?=
 =?us-ascii?Q?ZY1zMKEZSO0HQK88p19FF67N0Dhdmb9kdj/V+sx9jI+4s7b3kYXQa5DV+LrS?=
 =?us-ascii?Q?eCcJzlSyos6kZUjZJRLd1RtO9F6UZqg+mnn0B/4EVd18/DBQdR7mPxHIdU5y?=
 =?us-ascii?Q?/VJ8e3Bhk4Ic+ZLwdArYLEARwrFFRJ2EVkwDQzRp8lDNgMnb7ZsT0Wri6s3Q?=
 =?us-ascii?Q?6kjHSeI4o7SCxeR0ebBdOBtyaSLGHSuVx40JchFwBEbJ4450w7bnTDLvEEZS?=
 =?us-ascii?Q?ewqMiNLKINCHb2bTLq2p+JKUleC4n0c1IxLzAwLGbE49Wn6w9ZVaWlPFK1Ub?=
 =?us-ascii?Q?3XiM8AtK9JjdK5QlYPpd6qoHskQuOxeDNpdsLsPJIYtlRFOOPrjHfBdRUZan?=
 =?us-ascii?Q?w9TRyV6RposT3Hs1fJ7V1v9HUDbaHU7yf0RW7U8hNXh1pQy6EdcVA4vxdaiU?=
 =?us-ascii?Q?GwQbyopHOHjm5hRNb/JKbWUXFIgycU5E1fR60gw8gIuzJD/JP9EFaZcN1FTD?=
 =?us-ascii?Q?hSS66v7wBMtHI6G5da69sDRz32uFmL9etIgTD2vwzoTWRzd0TQcj0gQDKAW9?=
 =?us-ascii?Q?rNwTvdtOufUIee/s5H+0vUpIrm6BFI+hYnio2eb368kSi/OrjlFGzTJsxymT?=
 =?us-ascii?Q?2XT8iTVDZsiH6MHnLoEyPrdASrjAwQhcymMLQ5X8Agpvcq1K5nzd6F6Js4fC?=
 =?us-ascii?Q?0sgikE9AZvsoxw0bHSb5djBW0ytN6LUdA2sZXDiiIDNqQ1inKVmU94Fy4Bcx?=
 =?us-ascii?Q?n66X1XS/z7JDzRL39dg4y1Sh9NWYFYR2n4qMmamUv0LUI/UaBxcTgI/9VTM0?=
 =?us-ascii?Q?j7wNQYVt6/2qmapGVd/nWsr0aBEsHDdJaMVbFm3pfQa1vgSH+raBE7N0GL+D?=
 =?us-ascii?Q?tascqZram9MsyEGi+J3U57eq/jQ+6Y0AS5iA7rWVN+szmwHM5Aze7mL5RCmN?=
 =?us-ascii?Q?8d94rtg0IfXcxigOcYBgzjIsZ4KZ/mF6rr6f64jirrfuExvUIkxw0mWYs/HH?=
 =?us-ascii?Q?KMLEK3Z3NyAYZoPLN9jKlVUINvg79fiZQt1Tcn0S?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99581549-f978-4684-a9ae-08da9c93ea3e
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Sep 2022 12:13:53.4196
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ug3NWnV/NabCpBHNVASbcUr7KwpjBT9MJmpQROqHDzXALBP7TWi1KBCGpE04bvqG
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB4880
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=LIB9efER;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.236.40 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
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

On Thu, Sep 22, 2022 at 05:11:00AM +0000, Tian, Kevin wrote:

> > Thinking of the interrupt routing as a host resource is the problem -
> > it is a device resource and just like PASID the ideal design would
> > have each RID have its own stable numberspace scoped within it. The
> > entire RID and all its stable numberspace would be copied over.
> > 
> 
> Unfortunately it is not the case at least on Intel VT-d. The interrupt
> remapping table is per VT-d instead of per RID.

Doesn't that just turn it into a SW problem how it manages it?

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YyxRf0UEEyT79oE5%40nvidia.com.

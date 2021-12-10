Return-Path: <linux-ntb+bncBCN77QHK3UIBBDUVZWGQMGQELATMAWI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F8B4700CE
	for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 13:39:44 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id g2-20020ac87d02000000b002b277218d03sf13772142qtb.16
        for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 04:39:44 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639139983; cv=pass;
        d=google.com; s=arc-20160816;
        b=V/oolhVDDPf+qcdrschovwROvWlftUD0N1iNjTM3kdk9Zp9m+ZhLkjtnG5kZpgmRmT
         VlwTi4Isc8oZmMM/M+MGi0U9kS8JyXSEWxWT4LLjAHXlR5dIWhR/NKu4HjN57eFmUFdf
         9iQDrBXpv5Hg9acpXvXmJKAV/sCfp2kuI3rVfjadBSHm9T10fhRKQe5X+ieojr39bLpF
         q+lrJtovMh22gd7jDQ//JhSonisOMD3TWALulw08Q0GzIYWGIAj5NImpa4WyNKQlCotU
         UAOVOy1TbqsKVikccTR/2CGO+hoLF1DFfvTZT6TKOCZlK1HvK6Y1yncXdHSlK/HmJ76z
         M2Fg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=CyT4VILYZ9C7YA38t6i/qIx1Yk9p0AhHeCbgzOBsezQ=;
        b=Y8662HLyir8yE4ySyaBnmisrMHI4kRBYmhDo/3RX9z5ikqI0TmFk5lLK3tD7s7wwwd
         79bZAIFllF013XtkATaWs+RtIqpEZ0K516ZJKVhucUoGt8sjV6Qga2ZJvNz8Ios49KR6
         wdomIeC/gGiuyzJPp1SK6Q7MPtCRDtGEld0TpMgX7Vs24dOim+BJ7eQ/LCddFMOyD+kS
         E8g52EyLRcoL5jTouqtkxiNowyCZ78KejFMUfO0/bbXwZXM0fk2THq6BFhNza2QeFraC
         gYseC5pJRWXb3D9rv0Y/1Mjw7HH1WnK/FTB/+kY/+Y2PgfVLoZyM4ejDao9amqvmhgfK
         vi8Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="BBW/0dak";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.223.54 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CyT4VILYZ9C7YA38t6i/qIx1Yk9p0AhHeCbgzOBsezQ=;
        b=Z1bylTkWyynpwVyu/hY+o5P870z23Fj9LolQWu8T9UW+VuOXT8V/Y08fe2svlFU8pO
         6RHl0VaA2ViaT13hza7sU9eXrUKcavHer3xJ6QP7itkTRb44q6QxnvL9MXOL7VBQuRLf
         Df254xZqwikRSXZbG095XwCL5q3qimMoHKIkCn2p5lA4WLDCTv6JrI0L2aO9UN6uQWBn
         zR6AAXoSFzEPqQg3NYAzIlMP3d++KFoRtYzlKfVQb+byOeKQCUY9xyo4yXWAW7Hva1QA
         XhE9wIFNjbVTB1v155FmOnpJVu/3/Wq8svuK4QgyIswJS7FAJSITVrLh9rfIUQetXt3i
         0DVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CyT4VILYZ9C7YA38t6i/qIx1Yk9p0AhHeCbgzOBsezQ=;
        b=YKAdNTM5UYCfNIfvkKI7s2aSU5CUnwXMFBKva/UoVBwEpmlYQ6i4PU2nYdTCyjWEwj
         Az8MkKU6xiInddze+A28yW+VLXIyF0eljYMuNGBRfsiOh1gO/VvZiZN4R6r6N0w5ZMlQ
         fL3PVWV8zfyfZcEQxRl7+V4QdpOQ0PHAg1XGN2z5s8pAufLnJDF16SpTboR9FWdQ9Cju
         GxeJFVpuGgdM8M+6LO503hhoPK09x7RT6zokoe1UgoizyOJFWbDmeGBg7xJqki41RZeH
         AfS4rY2Yl8C+oMUeSvKNNygFFO6Aa3V258UYU9U6Yo9BN4O+yfxJWsigbXR1Yfg0DpLW
         POAw==
X-Gm-Message-State: AOAM530rT6CnuzV5S6fGeFX7atIiDt5TUmnA2dwaiuzEdzscD5vla7BD
	QzjQp+hHMkEb1J2P4DO1tDE=
X-Google-Smtp-Source: ABdhPJyJBxLxgIiYx4ZRoC6ymgUftFZoJ2Xu9XPFjbcTMEzf+OV9Uxfn2wXc/TjulINwSTi8qaHRdg==
X-Received: by 2002:a37:61d8:: with SMTP id v207mr20396667qkb.743.1639139983018;
        Fri, 10 Dec 2021 04:39:43 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:28c8:: with SMTP id l8ls5805894qkp.1.gmail; Fri, 10
 Dec 2021 04:39:42 -0800 (PST)
X-Received: by 2002:a05:620a:2545:: with SMTP id s5mr20655818qko.48.1639139982603;
        Fri, 10 Dec 2021 04:39:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639139982; cv=pass;
        d=google.com; s=arc-20160816;
        b=jEE8VziZqFqt7PoWHXxAZwlLqnpCJpQ3C3NuN6/Ex4Di8EYtJ9ZmLH9IeKHkYM019C
         csLVThv0neeezIySj2JvULe44p3r+nZ3olRV0Sd2r17/d6gZ/d1RmRvlwSlXtyfkPUHe
         uGYW6RT9HSWFlKeSwDk9lAJ5QiiJWWXF7ua+DzoGGApZK09ySWeYA4SD/rO0kd+BbPNq
         IfvRIBe1BJYLmBKLvCD1zfGMESmI8x1+lPBNLG26Whsw2bsbC8i7GiVbwi05O9asn3V3
         12kVHyaTT20pbbAtgK+f+tj11xgauuwXAC7LHo0pmJex50gP+177R+ZYDYi9OpctspKS
         KLgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=A0fMPmab2uvG9MU19FoSeQxZlEvv5TWqraNaKqSb4L0=;
        b=pxZ8M1o44GbSzzuvvEs/Mtv0jULufVyDRdHAqpbMVzX246NnIcW3EFFjYvUuEP0MJh
         /T4yGcAWagIDZJ5fZDlWsfqi8dE+DZSoysHbJg1pNtqchi9gsUU3FFtJFooALaKKO6ym
         Dyq+XbQHXZd3nAnzS/ksRbwjphWK/idQIXXczCEfNpMqZ02OaMg6DtRdAYg1gA69wXFi
         6Nq53mO9xGYf45O5ZKMvL6dj8uLZIJeNxni5GH4jCLQvcVkYwv7ZkE40xonWve0eoPZM
         SAlecEmrUlNeYQN7StKkiCWIP8R25eT82W4r4HG9Vo00aDz4WP4SbZlDVT6U97kG4vxZ
         pj7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b="BBW/0dak";
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.223.54 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (mail-dm6nam11on2054.outbound.protection.outlook.com. [40.107.223.54])
        by gmr-mx.google.com with ESMTPS id f38si614972qtb.3.2021.12.10.04.39.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Dec 2021 04:39:42 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.223.54 as permitted sender) client-ip=40.107.223.54;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EL1bdkTy9wg0ugHWYciT0/8Xi7mX7GFJAZmaagvEsu2BbvJwBqmuwRgRDhvQ4QmATUC9rV3FbQEcJ8czJoE9v0mBsyaO5C2VFCVnpMF/blwQBRb2MReJcQ8Ip/NQf9gA5xD9Y38SVK4tFrXu6U7FUFvCNUgEbDo19O8OJXz37OQonObOhUYhIFABEg7IOXI0b9r3L5fRZV3xRdQUks+TzuFoo98zxLTBjiNipUqgsBY9wgwB7ilKIuDY1Uk3tG6BJqOh7jMaVTrJq3NrZEPMUw216AQgxgEX6u5R/rTb+k9yYOiTdX6eGpJ+J4UVhhvsodjI7TWtxEDHl/svu7wy/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A0fMPmab2uvG9MU19FoSeQxZlEvv5TWqraNaKqSb4L0=;
 b=PPKCDvd4v/avBQJZAtGlueusswebvDL4psopcOstfACTKg14KBVB2hEorbIoA1WdKYT04GIZNmWk/0RlTy2v3eLOHwAw4rQsrGA/IWViaLEMOJa2BFCQ9qJ5rkWMFFW8HlhRZy+HwRw6Kt2rZY+whnvheb28L4s0+Q2xHplacpjI+u8wR/VvtoIv55wUmv9L3M+GvX0uxPvAedazcK0hyadnbPBy/3Lng0E5Wmt7zzBNE/fUdUVKrsZ6bpyvDb2x12epIGvu0g99jWqmAsIeYsekluXT00BaHRUD2mM1dH5L7dZr8uicGqQiev2cFgIpMXRaQlBWo7pfZECTdrCiKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5175.namprd12.prod.outlook.com (2603:10b6:208:318::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Fri, 10 Dec
 2021 12:39:40 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%7]) with mapi id 15.20.4778.015; Fri, 10 Dec 2021
 12:39:40 +0000
Date: Fri, 10 Dec 2021 08:39:38 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
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
Message-ID: <20211210123938.GF6385@nvidia.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx>
 <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx>
 <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx>
 <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
X-ClientProxiedBy: YT3PR01CA0134.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b01:83::29) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 4806e7e9-7a76-4bb1-b693-08d9bbda226e
X-MS-TrafficTypeDiagnostic: BL1PR12MB5175:EE_
X-Microsoft-Antispam-PRVS: <BL1PR12MB5175B993160D961E298DFF7BC2719@BL1PR12MB5175.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7OUv25Hec6nhNmWfa4k67A61Ykz6P8Cuzfmzf/zZ+KSaPflfAP4Z/g/8NGa5RYbbX6uZ1znpFGRwqxtGyE2FPsROnNN7WkNBSNJlS4NhNqvNmtXiDVWdcbnf+luelRKtmyE2c9F8CYQhZ84zIahzDHMCZ3LqTIJcrMCQisyHtVXyzldMyqj+vYG5L+HAt5DFbiBKb3sOrDPcZfc69+6X3OWlK9Gg8XOTmVXzh9r/49f7Cp1rnEdNVEO7WAvE9WBpyv2ruV7QKapfJB2dA5dsx6wo4suCZzCOO+9LtEyFKxXR6OAKPT9sYSy5wwlw0dSoWR1Ix5ZkMsBdS1z/ZclR7royJJXo386s99LPO+smkG6u2KKVK6hwQhEMMCOavL2aiuNliM+A3GHj9/pkRES+k4F3HTaGE+6QI4srqoGDxdcpcEl0vpbTbtjUlo2832ylg1hubn9negzUYuzXNA4DXz0gMThXryTPFFUmsVoNOlop8T3TDmWWAw1tu9TDfVbulzDiXtJnTs2b3PhhloXI9BOdiaXnBGO9T2v4CC3/l2idUR29zuoob2e7g4hpYS+uI8ZnzQqhe7TJcd4ZKJu8DvB6jUhPgeSTgQe94fAQksWWqofSU6f02RWCeJkQT3sInTVsfpFjnbSM/873otwB1A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(8936002)(86362001)(6512007)(26005)(8676002)(83380400001)(508600001)(54906003)(186003)(66476007)(66556008)(66946007)(2906002)(6506007)(36756003)(5660300002)(1076003)(38100700002)(6916009)(33656002)(6486002)(4326008)(316002)(7416002)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?i/ysojPts8ffnSarDicHAUTx9pHOgqOQAo1YAtjI2NxKqqnKB3lST9DEpZVN?=
 =?us-ascii?Q?g39pVdKXoHr8d4UkJ1OIlNBDNg7lAnT3Bjxhibfy63ecz0b3RonUHswQNH6E?=
 =?us-ascii?Q?ztpRcYmyDw4DcHVgij0qRQOTODDycNl3UuwBhR1mwDSEtAIMvIxd04MxwuG4?=
 =?us-ascii?Q?GxcWMEvAgqjgl0uNe1jzJwThPtoHlj6KXy/ejFQlhjhl7QBsZa258CZuKf2+?=
 =?us-ascii?Q?fkl4OAeBabS0347aDh+vrPe0mabIwjo9sSJ+dcuQe1b5Tx0rgD6TT9FemX62?=
 =?us-ascii?Q?ITOti4DUiL1AIZvzRPRKFylU2ZggZT746RSM3eRd8xBc1fYv/oZDGBsZEBLs?=
 =?us-ascii?Q?j7n4GxbdE7iDVG0Dhd3RNYUxPqzuGh2vSf35/iQsUXxzO3vIluu6BYgPSCTk?=
 =?us-ascii?Q?+8lktQr5+9by0ZMuA2vWkn0cYHYHfJOpEC+w0hH78Xqhrw37gnsexKocX8Oi?=
 =?us-ascii?Q?Bd7Vtske7Vij72qkp1a6beErFfbG+pQal5e0Cbl8lUcA90Otbr/8OCGtoLOu?=
 =?us-ascii?Q?z1iewx/QqA0UIx8HO06hfHRyAwG+5fmq7QYBYFHgmwLX6ZvfbEZLEhqPqHXT?=
 =?us-ascii?Q?CLi00pkuAkC8e/1nEHP5vcyPtw+gpInINM488oZn7hGVPkc8A80sKtxyJ5av?=
 =?us-ascii?Q?2xpUzwOM2GX5p9sdOgpKZXFt8xYLahu27rBmTExlFTL8L6a2pZ6la5qcV1Hb?=
 =?us-ascii?Q?zIUWoZ7T2u7CcwWgmi3BJprvQKtSWOaoZoDjfiz/rKDIa5MTRbOPMzLF3yAA?=
 =?us-ascii?Q?8otKkl7NTup7NFYNZYYHwsBoqyeEC4CfElXuuX8IKarOLnq+++I4IP7u12Sk?=
 =?us-ascii?Q?deMC6fsu0WORdmw4xLvM2+hzuTPj/773WMty5XGjgsRWXwaojZN1xIMePmjQ?=
 =?us-ascii?Q?7/8Pt2RlO6z1aL+5IsEkq7MGjd7GLBzpKnpwTfnLSrWzk3aImbSWmhqK+ifI?=
 =?us-ascii?Q?E1eyxxV1E/7PvK3npvPeHstxp+ovOY1AJX2VIgYMjEtkBodRcZzZIsZmf7ae?=
 =?us-ascii?Q?oRDM2AkLDP4FeFyvTUiLUyfChk5RG/Lcl8TGZLcU9rEvaJUgGdpYljKbwNiw?=
 =?us-ascii?Q?C5l6856bQJE1iwmN+83HNeRMAeiL3ppo2tGY/CRHvp3dLggg0Up4mAwouurW?=
 =?us-ascii?Q?0wY4opdaTIhbzsrT8zbWxYhUJAYpZha6scPdflvNt74OsKLP++6U67aAMgLN?=
 =?us-ascii?Q?60g4cicxSQMgPRO9RJdy49eiv0JaZxUxZgrtbnRW1oL0oZRWb793TbWHfR9l?=
 =?us-ascii?Q?QaievWhpl8VNyqTpPK8qInUcXgAIS6RikjrNK9EDPI/wbSu8Jz+f75V9iJ6W?=
 =?us-ascii?Q?ifEVebUYe8LA5AZ5+6+K5233DWCVxAuV/HZpMX7LPeBzN6H3b6dDDKgjn2qn?=
 =?us-ascii?Q?vHKr4ucV9inBGCICglARhHYBmSM+al+b9kResfviCsLfZGxoQpR7+fC4BetR?=
 =?us-ascii?Q?UvjRnJJV28bKT+s6Xlst1+MiGB/g2iHRG1D9zo7Fq1sePnjZBrnkblBecgAR?=
 =?us-ascii?Q?OR3OuDd1uwS3sBJ7iP9L0SVTVZo/9fDCgSv67A6dVjWUkfTeYSvCeSxIf1oL?=
 =?us-ascii?Q?CR1NAOKNiyUOM0sJoOk=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4806e7e9-7a76-4bb1-b693-08d9bbda226e
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2021 12:39:40.6613
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /wyGge3EVTdLxsFgI+Q34aekTqjybgqd85HfSzjZfZhDGUei1uShjWrJWysgFRwt
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5175
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b="BBW/0dak";       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.223.54 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Fri, Dec 10, 2021 at 07:29:01AM +0000, Tian, Kevin wrote:
> >   5) It's not possible for the kernel to reliably detect whether it is
> >      running on bare metal or not. Yes we talked about heuristics, but
> >      that's something I really want to avoid.
> 
> How would the hypercall mechanism avoid such heuristics?

It is clever, we don't have an vIOMMU that supplies vIR today, so by
definition all guests are excluded and only bare metal works.

> > The charm is that his works for everything from INTx to IMS because all
> > of them go through the same procedure, except that INTx (IO/APIC) does
> > not support the reservation mode dance.

Do we even have vIOAPIC?

> > Thoughts?

It seems reasonable - do you have any idea how this all would work on
ARM too? IMS on baremetal ARM is surely interesting. I assume they
have a similar issue with trapping the MSI

> Then Qemu needs to find out the GSI number for the vIRTE handle. 
> Again Qemu doesn't have such information since it doesn't know 
> which MSI[-X] entry points to this handle due to no trap.

No this is already going wrong. qemu *cannot* know the MSI information
because there is no MSI information for IMS.

All qemu should get is the origin device information and data about
how the guest wants the interrupt setup.

Forget about guests and all of this complexity, design how to make
VFIO work with IMS in pure userspace like DPDK.

We must have a VFIO ioctl to acquire a addr/data pair and link it to
an event fd.

I'm not sure exactly how this should be done, it is 90% of what IMS
is, except the VFIO irq_chip cannot touch any real HW and certainly
cannot do mask/unmask..

Maybe that is OK now that it requires IR?

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211210123938.GF6385%40nvidia.com.

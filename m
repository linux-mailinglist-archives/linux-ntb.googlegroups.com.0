Return-Path: <linux-ntb+bncBCN77QHK3UIBBHNBT2GQMGQEP6KSM3A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C44465102
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 16:11:26 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id a4-20020a170902ecc400b00142562309c7sf10318635plh.6
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 07:11:26 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1638371485; cv=pass;
        d=google.com; s=arc-20160816;
        b=OqXrxyYxR/dJA8ZZiSRjMDhFfOc+WZeO7ZfYHhGQRJ2Z5gRAJ2gknjkMbHah0Lch4P
         ufhRqf9zyo+jup2t4HQTkNph8WhtCpt6F6VHyBdwpKCcg/T5DE0pZ+FVfzPptR2ZNQDq
         HodUWJOrDku44w41DlNgYZHMCNKLDHLdxeXuTDwdGqfY+D4nPAODAx+nPy+i+tBsWLOj
         7aZ3arPIYoUYJre10b27UxsuGnZOpBSQGyD0XxYzCkYLIyMj3bEVaeCOreA5yQuUwuuO
         Ec2T1+UjTEVnoxdt7Dy0YXggAe3wDVemHEApQfTpTMR6Hb4m4no6MYvd6lyo7fQ821A0
         1MKA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=49LoU5S+LaMY/HtBoS/xtIVR3z0Owu1m1LOI4D/1ZK0=;
        b=bGDD1vKyI4/I3IckR190EHclnzcolROnvloC4JoWwsOqmMLiaXahl7UCIRAHD2rX5Y
         4644igdtLMMqlUgLnQdn/R570o7Qk0IWocKvDgiC+jQrCltK3GyAgse7K96QJVOw5srh
         Or/u8jNtpEfDgIIP5OLwCHA8kS15b2JTYVWH1EXczFm8EuNhJhRqBsyjaN/y/Sp7qp9e
         rg5j0DtRYitwwB8lVfrPTFMEHMUjxOIX9+nBkHnRqLZaESqUOYf6+qYCR35aSGhXu4Cd
         9GmcrFBWA1VBoLebYzWQaGP8Veu5mHz1WV9FuM624XiIswzH3Vs0w2KlSgANt3BVsHjK
         9/Lg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=YLmZ2dji;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.92.88 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=49LoU5S+LaMY/HtBoS/xtIVR3z0Owu1m1LOI4D/1ZK0=;
        b=k1JB7QHppkYz4SOOdtD9IiQQzxmAe/PRp4VtU0GtgQ/ZHDwA06xU5of74xslafLYTX
         MVGfAAdE4/8RHE6OPYOVe1c4fn+n36LU8AhoFxFaABw6mvT2zkk9QULJAJV+nYSsLNLp
         q/Ef/y0/I1I3j7LpNDcMsh6bJAiW3YD8zoEK4C4JmIrpUI7d9LclZFDjXnkcHxr8G7/w
         rRLWkKoINooWlsSPvoQcnoT6RgVh16GmPzMhGT2nb/w0u3NI4HhlX+JefnO0wivWuaAy
         7oaPEUH9m1F1IH02/Itzf8LM4AAsOaZXR5E+qi+TIdwioH9VYXhVFCTixXRYa2N1wrLv
         cIHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=49LoU5S+LaMY/HtBoS/xtIVR3z0Owu1m1LOI4D/1ZK0=;
        b=ZbHacsassZhnp/qF0CPLf5JD+g2Tp1RIC7lGcxUIcOYEZRRdHLXX7ZX2mkPdg7u2Lo
         MM9wAPQoJQ6XNGkveotXAnnl1yK1O7XCmfe4rDAZ3qr+f2PHZgJddDYooCBLFixpF8ma
         h4bSFYebqNZfv+SwScvoUp+3Jk++nilx0dzhypEAk7PhfmOudkpHOUCF/S8tl2P7aG6i
         S00MYfCiyCZaqQ1I+uJ3kFlP266/UJCNg3n6g9/hzeBkZ13yX64d5yL3Q9E8n1PkYT4T
         DawVTOW1KC3I6G9nFAD4hFQOH02OIF7A8FqMYYk125J46LgDWbSDMuKFDwLFlJ+QtN5B
         MASA==
X-Gm-Message-State: AOAM530rw4yh7+hlX/SjzYedvEdV36ih8qx3Ub4Ti6HTNwgOxxExRwhE
	zIRmYshcTz8QEzSxetpY7Nc=
X-Google-Smtp-Source: ABdhPJyKe7oRR697Jwuez7zfaZEfhH1PJ5cIR+uKhf/KuPyr+m0wAwniJlRuaB96Xehz8PRrzji6Dg==
X-Received: by 2002:a17:90b:1d0e:: with SMTP id on14mr8247464pjb.3.1638371485227;
        Wed, 01 Dec 2021 07:11:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:181e:: with SMTP id y30ls1131144pfa.8.gmail; Wed,
 01 Dec 2021 07:11:24 -0800 (PST)
X-Received: by 2002:a63:874a:: with SMTP id i71mr5171216pge.93.1638371484700;
        Wed, 01 Dec 2021 07:11:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638371484; cv=pass;
        d=google.com; s=arc-20160816;
        b=UZFnsQnJU2L2La5DDTBOuyufghqJ/mYaFEkaLQLpWEBeLNxB0XCO6SIn5NM3OkW8dg
         i/82i4k7abUOE6ZvBFTzgKC3c2XPz91WFWdkVMEXQhWnxECvrNBJF1o5GZRgp+4ROjJD
         vDSRPIJsAcTENBAfjlQfqXea//XYjoZznV6uDsZuCqQcwRUygf4L/wHawfOTkKarR8FK
         GFaOO9855JybUzM/tvdx581+lcatUyOGZwMLnIpDQe1NR36wQK4xXlwLUyVSwPjzwqSN
         KUBHGwSlYqzWtc+JshjcKKkZWbMXqm1uIxyRrmY+Ln7g/CwtOdCnio8dgV78lUfbxb6x
         NoFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=i+QoK+XQDme9IGlXzjemsT/bYRCpuI5SuMMBYbhJWN8=;
        b=0V7ol+/9p+wUUvHo4bGsK4lL7KkFIYvRL+Mkh8aHrXPdXA9FNL0sxJgpgbsgonoeMY
         iPFmwQL7NBFwqfzsJ2fmjq8zFuGczwQAx17zY38NomBQMkByCeYnWVoA+wJHkncIWcV5
         92jfCCd7/7CmfaB0+/aAlNXZnIOAm+XJOR3KyIVLfwYV4o5pMuRgEpsQuBjTZMB2wr5L
         1CFwQkjT8xLrPHis6NCr0hmYYunRvnbOnXCJegraO2Ge7TZELoZYGbtclfSfCr+5NkAP
         yyZjdohj6X1nbaomwMhaMhfbcsOEMyLidYXRtlzuXX8NtQRoUwGflU8lOe/G65HoVHoN
         bBQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=YLmZ2dji;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.92.88 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2088.outbound.protection.outlook.com. [40.107.92.88])
        by gmr-mx.google.com with ESMTPS id lr18si1257540pjb.3.2021.12.01.07.11.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Dec 2021 07:11:24 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.92.88 as permitted sender) client-ip=40.107.92.88;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lM5hSMqKzDt8dQA+tWGTho6wQbJIH008QkI5/GMy6rE5Eb9hqAvgDUsW3Yunrfxx1Z6IYuwVnoyOCmx/fy01P85todQAsL7+XqyKRdQTSycnVftBI5QJBdtM0bjkaCIBhE1Rzx2dny0TnCPW7ArbGIYOaoEcFKwcCC3FOa4PqYk4qRvghR10el3oGAoXgnBuB61ueGivp0uOFAdw0XzvrEQV2JpBqDXkaHadLG5EhrVi03fE7v7jIWS2N8DLu6BgRWbprZTY717XcOSnVyuCyTun4du02rMc4NekaLhknaY0XNEYzV/UGSnSxgShQWl4KmcUnmwz+dgDrfpMhrT0OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i+QoK+XQDme9IGlXzjemsT/bYRCpuI5SuMMBYbhJWN8=;
 b=as5J50JSCsd40NCqYdTwxh0juuNCDDRO0XuO1+7fYTUgrwqkprN2Gs7iJvLNHSm1zfjn7/60RPv7psewQwU3Ysz641dcnnIdeVOZpaDf4Ws0LLbDgl2aTpVPe/rqG5KlNZMlpvN/vitN/pzXsHUoPP6p6XnTi9HGbVBr73IFGlVzL6syJFVafcK2ssqIoktZA2nfeCImIXf/CBJ0CD0OYfkUaJUWXzRiEGlbhCR1PnZlvuoO66cnLGIriZMRUpHMwTmin+MkNoytnd8WoYSDQq2TC0CV3UOaPlwZH95jR3+8qSvQ5+/aYI5+jVv5ATFtKfJMnU8uUKrzCbi/eFbLJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB5520.namprd12.prod.outlook.com (2603:10b6:5:208::9) by
 DM4PR12MB5280.namprd12.prod.outlook.com (2603:10b6:5:39d::7) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4755.14; Wed, 1 Dec 2021 15:11:23 +0000
Received: from DM6PR12MB5520.namprd12.prod.outlook.com
 ([fe80::1569:38dd:26fb:bf87]) by DM6PR12MB5520.namprd12.prod.outlook.com
 ([fe80::1569:38dd:26fb:bf87%8]) with mapi id 15.20.4734.024; Wed, 1 Dec 2021
 15:11:22 +0000
Date: Wed, 1 Dec 2021 11:11:21 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Logan Gunthorpe <logang@deltatee.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
	Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <20211201151121.GL4670@nvidia.com>
References: <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com>
 <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
 <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
 <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com>
 <87o861banv.ffs@tglx>
 <871r2w9y3x.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <871r2w9y3x.ffs@tglx>
X-ClientProxiedBy: BL1PR13CA0307.namprd13.prod.outlook.com
 (2603:10b6:208:2c1::12) To DM6PR12MB5520.namprd12.prod.outlook.com
 (2603:10b6:5:208::9)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by BL1PR13CA0307.namprd13.prod.outlook.com (2603:10b6:208:2c1::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.10 via Frontend Transport; Wed, 1 Dec 2021 15:11:22 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1msRGT-006HKW-Cy; Wed, 01 Dec 2021 11:11:21 -0400
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b67d7299-5fec-410d-0478-08d9b4dcd606
X-MS-TrafficTypeDiagnostic: DM4PR12MB5280:
X-Microsoft-Antispam-PRVS: <DM4PR12MB528016D9F8AD547ADF613821C2689@DM4PR12MB5280.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Ev5RE+5gPUrgP+zlInDGDWjLsQXXOZmstsegV0ISd6MarOV/Z1bUtrr0/yvL1hTmQPI8O4646MZy+ZQHF5wek1Inlr/86wmTOAsLGqmOR6DIRbqDjyK0R/UlUIpmdZnpe95+LqSJO/G3tPGKFBuEYohiMsTlkL32TOpxG6IaKpIY32wXi5pC8Ww9pv1axmx8Y6O1r0Z7VAmmcS5uW99q10toXn0ixkQtm0ek4ZmCbXxdU2nDmkRVeQRQ5NxgAjqTyN3mPituP7ohYYad3qDHt1wEB/YdO6QZefkn4DL7IP5YJnXBfONKVMfPNo9neMBUOJF/LZ4NHN9Qz+AwA+QzXvJSv6wSfE1IM2epotEuTavAhjOELXLzPYXDMZYEKanY2jk/qy+gGJnBombNjwA3MlpFMl7EhPfDeVoRoNM6KbwoEhuKfD2QsDMjxU6AWMXUt2RZpAiNZQ/zCpuikxGrNFmSoaTbGRZ5cPbrehn+X+bwEM/RLMZd7PTOnu1fEIjRUadWCuBLmYbaqVGtzmX19kFgIKJbt0Beeba5R8rUwseV+ovJlV6Yw36dz0UrSIBtbb+T5dvR7LfZZA4792vrHmsMr56sLxV8VJiUnhT6FheRtLI5bIhIwcszXS7O2P0VPGV7BMYRfRhKhp3vXo05fg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB5520.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(4326008)(9746002)(33656002)(1076003)(5660300002)(6916009)(4744005)(7416002)(9786002)(36756003)(426003)(8936002)(316002)(8676002)(2616005)(2906002)(38100700002)(66556008)(54906003)(66946007)(66476007)(508600001)(186003)(26005)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?rGvBQIsKaOrHJUYPTpU6jM37VH/jkkBIlOgASu8XZwZxgMe/zgUJ59HBEFCl?=
 =?us-ascii?Q?oLDqc9G7s1MqrIWGHKu2U58iQIr+Mrh9+Pmipz7KrqCBFWIuUXIjsAtCBuwp?=
 =?us-ascii?Q?9LDosbWndlcB13kzqglSv7LJ08FKm1aa86lyuXkKHCRIeoBCwswqnzLoC5nM?=
 =?us-ascii?Q?g/rdLDC9KL15D3z73yN4E6zsJQbyrod3zPnsZxn+zodBIklAZ2ZU/JtxdB50?=
 =?us-ascii?Q?T74qgJRDMd4c0tjiVbK7jwtRoWnZn+qcItzkizwXZ148QYCBLYlZ+TxwywF3?=
 =?us-ascii?Q?iqdTWN/RO8vOIsyMWVPLShFX4fwbaEjDQWJdwZgSHNaIPitUBXAXZCZ/xJrx?=
 =?us-ascii?Q?H/iGxg+yOxh2xIAQmS7lAPeh/Y5nN2VR2tbi0G+NMlhvRsSKRNa9XgiYjT+Y?=
 =?us-ascii?Q?M//BZR4t3eXxTCA+EQOZq7WS768zCam5n7v/wG5ZN/WhMy+232LPSkEtxe9A?=
 =?us-ascii?Q?Z8hjAdSDTfZhhGGt69LNPmIzCGufV4lsAmhzuSXk8Khq2X5ZCqu60yxxhuOZ?=
 =?us-ascii?Q?u1rkK1Ol6vVjNIbSJkS7AqhWimFdVEwurPqMJ197KLLtTRO5ELsBQBYLTuUi?=
 =?us-ascii?Q?yg+6xPUl7+I1U3fGg5OtuNvyj6Jdjb8ZnvaGlife7JxUy/K/mtrV8mCNnqJv?=
 =?us-ascii?Q?hb9OKWRnRPar5qPPaH2ZZw8BWRjJQCPYvOnZjQcpZXYwTgj4tzNQuTQ/GsOS?=
 =?us-ascii?Q?SYlpy/6mzh7+CautHsBGFanye3grzlvJAr0uNGjcwxFmrYsk0fK3lSXihcky?=
 =?us-ascii?Q?GH58LQ0QrrAlB5Toq72JQBfHBGbuSL9UkjLF2904RlxYX5zzh2bMhe0z4m35?=
 =?us-ascii?Q?FH4++WKFAFw+mWYnccDQYvj0eDwNIwIP0NdhlTJYwdS1pRCCpgB8Utn+km9I?=
 =?us-ascii?Q?o3n5Msm8iHjboemGa1lLM7y+Kmwm3ayTNdSX54zNYZ/8c+/Rr6fbQq3UvnYz?=
 =?us-ascii?Q?nox9ujgzIIn4x1037NX2YFUD1KaL9lNZweh2tDaMSDzo8SDrOJhMxeSe91Qg?=
 =?us-ascii?Q?sK+6PDFhvE2b+wuUK2tyReH5xHPrAcouzK55V0MXxc7wPhe7ODNg2jfQvU1/?=
 =?us-ascii?Q?LM4ahv9gOaGGAO70yQUCPHd8OmKbAvxPZOK38kaAs9JscckkCySan7xfW/UU?=
 =?us-ascii?Q?4MicPldzzWrQYryhJh9naenZB5oPhcmYZgbvHWO5y4/0o6h1//dVOWLK5o+J?=
 =?us-ascii?Q?z69GvKmDUXeMsI9GgobtBluh9gYc2+3E4SOTy5jCAId/7zNuQohuJ0h3mYTR?=
 =?us-ascii?Q?ob0OvQ/Yk9s5D10+ZUPpOhBonC1Ik0TGZwcVR+XCXZ0iP0rFHuWpd80Z93nv?=
 =?us-ascii?Q?xJCBcPx7BS821xqBHfmgno5I1WcCIgVMyvIuBPTkShfmRONAcgYQmHLrogvB?=
 =?us-ascii?Q?ZYXb9f2UATbVZ03Ya1Gn8FLwm9tkLgiPF76UB3rKR7Qk64sA66CIpk6ocoem?=
 =?us-ascii?Q?cOyTo4w8KL/QMttM67DpclN4fasu2QXOuUvjZcgLPkABcDWLdOt+6evMq12u?=
 =?us-ascii?Q?OxEZcDotIs2rBz0KVKuh8SAZb/DTYCqwPzp9YwyKQLGugZOMcAFS5P6nwIoG?=
 =?us-ascii?Q?CrSc5BXOKjSVQMY03MA=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b67d7299-5fec-410d-0478-08d9b4dcd606
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB5520.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2021 15:11:22.7831
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P7HF3Sla2SFXdMrITnR7n4zZDiTM2UYBcqUzTnGnaCG+haZFh6nDXRTTEtHWqy7C
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR12MB5280
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=YLmZ2dji;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.92.88 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Wed, Dec 01, 2021 at 03:52:02PM +0100, Thomas Gleixner wrote:
> So we really can go and create a MSI irqdomain and stick the pointer
> into stdev->dev.irqdomain. The parent domain of this irqdomain is
> 
>      stdev->pdev.dev.irqdomain->parent

It can work (pending some solution to the iommu stuff), but IMHO it is
strange/hacky to put HW objects like irqdomain on what is a character
struct device with a set major/minor in dev->devt and associated
struct cdev.

Conceptually it makes no sense to me, cdevs are software constructs,
they should never go into HW areas..

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211201151121.GL4670%40nvidia.com.

Return-Path: <linux-ntb+bncBCN77QHK3UIBBCVEYWGQMGQE34HJ2BA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7393846DFAA
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 01:47:08 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id pg9-20020a17090b1e0900b001a689204b52sf4805299pjb.0
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Dec 2021 16:47:08 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639010827; cv=pass;
        d=google.com; s=arc-20160816;
        b=JuazcpOZpC8vkLRK1gxoU4Z0zA1hFTKLTR0oER3LEGxAbai+Ig5KOo9fpYVuLYEfyv
         5+qu4/A3TJ4zZl4jm/PGCeClKGorg7/XoFNMSF98/ofC592N5y5Nl3ufg1wrVlIr0T4N
         AJhi8FeIAuspW9bT2zhH7P+zwyMsUDSeQ4/lN+4E92wIEws1kC3rTO3bm1BFYT5zW7bV
         EjnnflFLo3I/U6qaP1iP3k4UivWGp4wo1M5gpoJi5EZpdhrDbud2vhWlYPm5jQftIZCd
         034Pbx2vvNZxphZFcYxAfXOIxPNrI5YgC2JqJxe+b6S8o47hdV+LHyhwlFJ+bkM4BOeU
         tgEA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=28EtEzeE9/ud/6GFb/Jo9rGHJEtvUoo0WjUtWSw9x7U=;
        b=XQVA5NAMC4YggCYU/NhcrAQac2LDZTOmk6XvO2aNUQa/lI/h77yW3bdA3bNAMURuJC
         sZCrXkH8+/w84qAFu9mmy3jreVO+q8CYkVjTrwd7mzs9tB2f3h+JnAnxdVG78b4g3kpx
         bOfBUuhnwbjygVpEqfRrNOJ6uQYAzKXlW8vmo96NQebqQavZNU041kIsimrooyzTgjHX
         rYSzzSY34FB+0aZrO8eJ7xMMsVmI8S62dtExdHbB0rNMfhKM9f7BjhN2/raGKTI+bhPc
         aiwD9RdAi1895HByMDNehiZ+gt1QhBIqJGTDTvnLh88/DQCYufuHTW9bsHHh6Jx50UfB
         mCNg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=F5GCW4kk;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.49 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=28EtEzeE9/ud/6GFb/Jo9rGHJEtvUoo0WjUtWSw9x7U=;
        b=RtPw9RZs1+IW83KKJq3cG681/ZTU1q9r3V0GeOgBkSZ7Vs8wK80LMnLOgrvwP6eZ5U
         qLd4xpGj6Y0cPFSnK8iifh0dRGcyudtkWLWmz7xOUzqkgt46ZZEzkTQE1avV7jJvWRWW
         jT+yQkm8WLo1u4746moZPzOTW1HYkTbSbgUMDzv4tzHO1WsC1oVUtRebmObBMl6uA6Bi
         NLOdbzVbAucVCgym5hzIX62V4cxVL583bYBBgL3EXYvlp/q7pgiQV0IaKBEfvIUz8Lyd
         acYULGqpMfh3FzF64T9dnq8HaXQeoLPHhIXSV1dUA5q0K9Q0xM6vHtKQanD2cB3+IG3A
         iHqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=28EtEzeE9/ud/6GFb/Jo9rGHJEtvUoo0WjUtWSw9x7U=;
        b=IQOm8g6EgCUpmZY+CQthKfOuuCvZj4L+GXoeoYmEC8t2GqMlLuwexHXBGtPzBytr8y
         XIkFwsh0pmdmMmZteHXhK1JNmwFGOnz4KO25AvMAZITSVSt+DMOZHFAWk3ru79lI6jk9
         +8a8NLoDEuJePf5wPnDBDPZWLjIipwJbf1rUFYrXzVWSFBzQCcybEVI4or9mfkIkrUzi
         atLeau6HIwCXz9GUdmpIa3LYetaW3HW4H3acVYXc5cGm8rwvhBzhfj7RTVSfBWzXaJ1Z
         OVmcPoTiAmtBTQ8HV5b8KsFAHEc67xCakWrxNy1XFKf2tHu1OSVbOEWKqCji3HkCPlB8
         Vi0A==
X-Gm-Message-State: AOAM530hGgFf+ias3ScPZRbpzAf1Seccxz5CkIspKOO2jHLjTdbIUgmq
	+UhOwQJCFH6dS47QufP9rbg=
X-Google-Smtp-Source: ABdhPJzExjEGJ2kd7OFP4WdFDpeJKGhHQ3Q6Ku6BoJVTT42S5faTZ2M+7pncirsT2ajz0xwkElnqeA==
X-Received: by 2002:a17:90b:350c:: with SMTP id ls12mr11319236pjb.197.1639010826843;
        Wed, 08 Dec 2021 16:47:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:903:1c2:: with SMTP id e2ls2056210plh.9.gmail; Wed, 08
 Dec 2021 16:47:06 -0800 (PST)
X-Received: by 2002:a17:902:6acb:b0:142:76c3:d35f with SMTP id i11-20020a1709026acb00b0014276c3d35fmr63683071plt.89.1639010825964;
        Wed, 08 Dec 2021 16:47:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639010825; cv=pass;
        d=google.com; s=arc-20160816;
        b=i1xPYOi7PpfNftqZXqo0erh0VDvDMrQeyOtw9BrP+MopfsAroI99kJnX+y/FiFS/nf
         HAiMzU7KOEB5fCnNEKbfDqJ+KstcD9rSXZyRsb3dN3LbIju8yFArfAh0ZPYDznPUiOa1
         pj/u7OKWkwTy7W2ITRbvu2QILfNRdGVqyGkhyTiwUE6x/qj8X5kcuzANOoC9evU2iaNF
         hrmhaJbahxLK2dLOUCdiW52w6PStEi+opPS6kA2qhg5tgPA4LyKGowLlUZ6dYD7IJKMs
         cP+1ZiePFUJfvBuMAqvpItBGJ0+KYB9I1rW82dAKwopzYat5ehz1FiF4wBe196hFMFvw
         jMZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DcTVV+Ei22uQ3QsSYsqc/2t1gTooA2VnriyB6SbTpXA=;
        b=QtD+gs9uI+WQpzqCir+Ka6FvY3ZrV0PP9uEutblXvZRXdZIbGk/r/sTCWtPsr9e/N4
         rSTk2h3OrWSZbq0aIVgGHUvOf/odiGw+ep1Ud5u0qU4x1P91EceGOikKv9KEzWqlBDnx
         Dr/k1NieuPUaYxIA4L9VK958ji1uf29JrDqnDhyK61vWy/RlrrlvMd6MRfKGbFXLoEhe
         Zf3wBh0eLFE4P0ZHe/R0Acd+8+dhJX4abBhREMMhKPvUVcRshsIzfF8MD8Q5VAwCIZjg
         w1AmhsZozAVTXGHz251Aa5PkFdYEkgCMt5h5QzO3+ZXkEo7P/u1oTw1wtqHktEa4pU0Q
         hIvw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=F5GCW4kk;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.49 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2049.outbound.protection.outlook.com. [40.107.93.49])
        by gmr-mx.google.com with ESMTPS id j18si189706pgb.5.2021.12.08.16.47.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Dec 2021 16:47:05 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.93.49 as permitted sender) client-ip=40.107.93.49;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XB8JpUYZUqhaaZfsAbnr6nxUMs7K+RhThO3vZH3TETnzKOdeOT2ciFwTHYXEQ8TyfVDWHAvQMk2hAP9Ju3tY8vrydnGi6DB02fimcHDTY2suoc0kMS8+bVevLU7FOLfAmJkUyu5KL36Tq67PQzDNv7XzxNJuwxqFvyLqWPETgzyltsIBuhEJ34FfbkYF6xFNQqv9PJEgr5fTtdFEEoc9LwUikVfReQWTVliAj1mIrDq7hPKj89umv3fj3agFNN3JNda/cHg6M35cf4cCGH9L3N02X6cK7qE6dz8hbxMhxD9YL8bkl1zkjJ8N7hfpquF3W5aPgDf2who7vgJgAyovGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DcTVV+Ei22uQ3QsSYsqc/2t1gTooA2VnriyB6SbTpXA=;
 b=YtTB56kxvnXaCDAppfLG/RddniC7Yo4XLEua/0A4E9NRMzK60v6UacvCASIU03+u0Ez6i39o/JlYiCEMVeb0GujRWm5PFnOIw88Dfsnr4Coz54pDGq4kS2fEanYoDoAs2LYE/7ksyia0P6gb4Rz6hGGBBpE3LzSNqsSHwfvzWQMvRIr9EuKp55i4fwD7SVessVXsQCzGze/Q8fe9KTiTNvGFBuX63MWPSB2LB2dCFh/T5r42wacgY7392MxL0H35M5LUumc9dmzNhgmKQX9FU8IHWwZh+bTXijQi8ec+wSwajOKOB6cdB7ltkCHaC9wRGmevHkSou0qbAy1+hTm5ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5302.namprd12.prod.outlook.com (2603:10b6:208:31d::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.19; Thu, 9 Dec
 2021 00:47:04 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%7]) with mapi id 15.20.4778.013; Thu, 9 Dec 2021
 00:47:04 +0000
Date: Wed, 8 Dec 2021 20:47:02 -0400
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
Subject: Re: [patch V2 02/31] genirq/msi: Add mutex for MSI list protection
Message-ID: <20211209004702.GL6385@nvidia.com>
References: <20211206210600.123171746@linutronix.de>
 <20211206210747.708877269@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20211206210747.708877269@linutronix.de>
X-ClientProxiedBy: MN2PR17CA0016.namprd17.prod.outlook.com
 (2603:10b6:208:15e::29) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3c14e566-daaf-406c-77a3-08d9baad6afe
X-MS-TrafficTypeDiagnostic: BL1PR12MB5302:EE_
X-Microsoft-Antispam-PRVS: <BL1PR12MB53026A671AD1BB462EA37021C2709@BL1PR12MB5302.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iZSdN6zaq0rHllMmOHawJEe2xbP54HWpMgxdC47tlUZpX7MXHAZaK4jGl33lz70+c+/Rez18WL3zBe/2RaI+1D3F9L9CICl9k5yGo66TyTdBTvQDLIL47CFFSDHwe0zytJhKh27/T/NDhxdfVNsaeXFg7QT8fWB7k/iV42t1NsK06f3T0PLQQaxKBim6yn11tSIMaQo49lfJr81I0GJ426iVwT+177bRKiCr5ZawDXQGrSSH3dBJJxGbEj8sZkHX5HluFKTXqtwN3eWXweeYMiD9V9FWWhu8ht9H3Uy6ODAOVy6uQMPPgK/IG8LzQw3TXcJNTP4AHJ1gCZTUltzyNQSvfW3+MNJcnvKYV0gaGiJCsi6MCAoCjZ8lLRIiVQME5NcS8N/Y/o9bWnOJPh4Z1pnQPjxoyL5wgeDmQ9bBmnVLbVVFCgOlvCIEl6ijQsZ2UliPMHMH3Q7GerMnYzdXkhEztnWRoBWs3I+PDRrsEv2Hr+CBv6nfNFQeH+GbIub1MxErQPmQ3k7taBsfPNy1PQD6vgyhfpeXDSbWSi9zziopkfplkQsxToQmRsGnJUu8werBG8YbLqw3T+vRd04ArDf7fOuXSl5bbgpM+CfBEg/qOedEh7lsjgRbN8lCv2O0hNaxd8TW6PVdR4lIoPaqZg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(36756003)(1076003)(33656002)(4744005)(7416002)(8936002)(4326008)(86362001)(83380400001)(8676002)(6486002)(6512007)(2906002)(66556008)(38100700002)(66946007)(66476007)(186003)(2616005)(6506007)(26005)(6916009)(316002)(54906003)(5660300002)(508600001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IhnJsqHq/qBxb2jYgaHL8ooQrKSsvmcu/5qZaYYSkI20/1gw+Vhgb4bTPq0Q?=
 =?us-ascii?Q?Gf5pePMzGeQ24KGMZBiJpCEJxz/ZIzh1OuGqzUdmXbzstFa69j3LaDxh3+t0?=
 =?us-ascii?Q?vgONaX4CD6WjGj/Fq2q2xAPeOhdWrwNDKAxtkUYGGHtzKJIGw3zhAtdDMtQC?=
 =?us-ascii?Q?eclDzq+d9u2mG1xK7lU8Pxt7sI8eU+SASWJqMBKq5Te1lFe6w4wVohWSvD2N?=
 =?us-ascii?Q?jUGY3+5C9SVj5kIOKVzae0bl5IsxexpreTxiTdnI1kRF9ryqBDn4aTPdkhjD?=
 =?us-ascii?Q?/GhZKFADlqN2s+pGVjsECEftQ6C4c8AHpgbbC5yVha+BBmLAPQ+9qMAtf4H8?=
 =?us-ascii?Q?OAO0e7dC4+3ufqhiPL4fNhOKNeyOcJ5ESolsTUGPeZwz96y7AhLY+/GQISky?=
 =?us-ascii?Q?ccTMEckAUa32KpKtvjDI/Fy7Pl4CX8jCrNhYemgPyScO6sWRBudpEXw9WqQq?=
 =?us-ascii?Q?naK1/qlJnOjdPPkelzQ7G9X1YlZwONYp17EVlHoTkThOxTuEtWWFmNdGp/9O?=
 =?us-ascii?Q?0HacfLg1Um+ONjBNXifqasbG+cH6uZabPuKy/C9b4Adc5e3TnEs8+lSWDEyO?=
 =?us-ascii?Q?XhN0E80UAN3WFCdvvCwiRugmwmSf80FtSClBkptSiKAdjnTFqC5hm0kBPocV?=
 =?us-ascii?Q?03UzVlKbg8F974AJaS7rRwjRwS/Tcrlae6dIIKJtX8+nXi1KRnkzyFuOKUCj?=
 =?us-ascii?Q?HPQt8N0SR/fW1ymFWkOkZcSzCAhjpeSZhqSSsrJDCbx4cPZZzwmHKpuPKfqE?=
 =?us-ascii?Q?Ih8+5bz1qqunPknmpHrkN1KNNHUq8U8HfRzccfwA5FameF4auKSkDj/b2BrX?=
 =?us-ascii?Q?yJ1OhuRLCq1dIZBoQQL1yAN5BvSe+HDYBQLfAOaiSqxRISIAeU9dvaaqKm49?=
 =?us-ascii?Q?90Qd/ouNmreqYUHpyL2BcyInexO3UN7Q9EpqtHOV14rVySvGv86qj7InZtcd?=
 =?us-ascii?Q?t6JmlV8rmAOibM8JWOQOHvIPara1+aniVv/CXrNAGxrG8qMpIEerM8z8raa6?=
 =?us-ascii?Q?JzjXmya4nTNnvlXCciYfR8fXmepXn559k6Dsp+OndWi7EWDNmEqcSvkLP7Ve?=
 =?us-ascii?Q?ExhRvcFxpk9p9Ns5XSmfWf8Lav8kUt14BwGwIw7F0ezZyvLjjG5GBMW2LXCt?=
 =?us-ascii?Q?oD9I6XNdy69x0q/QI/embTs3L+aRC4DiUe2U/s5K4i+euts1oSKoTSVGhMPS?=
 =?us-ascii?Q?2V1NeBNrPVFwvOdTtMaWfpx+F0zyKGUxXLYJs2XGFVqnMyXbG+BIPkatNfmf?=
 =?us-ascii?Q?2wdCgOMRjlOaW1A2tIxYJtzCzrFOnFRnb5ZBRzjNEIT1Kiofyzq20g7wiC0V?=
 =?us-ascii?Q?3iQSmW7V1ujCl31IWixOw4ZpDdjo4pdKB7DLUFLIIf7rzKA5NfdLv6FDwCZL?=
 =?us-ascii?Q?8YdKjB6Lgrxy8GCodikahFQ6QGOXiVabTJ66GvS1H+ZBLuIMTPTHwpyUNswC?=
 =?us-ascii?Q?X6eCipMewdNRSYOXEhggOWegxVpyXupYaZUXhuqidW5JaxOm4MuKS9SKwT8M?=
 =?us-ascii?Q?uxRKJ+eQu/E0AcHd20qNEN03SYShxCbLV3Uo0O4B3M8zXh/mytjtq7OwLeKb?=
 =?us-ascii?Q?ijq7hSUr0nnjSFFapEI=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c14e566-daaf-406c-77a3-08d9baad6afe
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2021 00:47:03.9305
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mw9FYEpaoBsAeiwIYYxisGGhScNaHffggJWKK9TqDuFHAggnPKGHyOBgz/wnnSy4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5302
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=F5GCW4kk;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.93.49 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Mon, Dec 06, 2021 at 11:51:05PM +0100, Thomas Gleixner wrote:
> +++ b/kernel/irq/msi.c
> @@ -127,12 +127,37 @@ int msi_setup_device_data(struct device
>  		return -ENOMEM;
>  
>  	INIT_LIST_HEAD(&md->list);
> +	mutex_init(&md->mutex);
>  	dev->msi.data = md;
>  	devres_add(dev, md);
>  	return 0;
>  }
>  
>  /**
> + * msi_lock_descs - Lock the MSI descriptor storage of a device
> + * @dev:	Device to operate on
> + */
> +void msi_lock_descs(struct device *dev)
> +{
> +	if (WARN_ON_ONCE(!dev->msi.data))
> +		return;

Is this useful? Other places that call msi_lock_descs will continue on and deref
null dev->msi anyhow - is the dump from the WARN_ON that much better
than the oops from the null deref here:

> +	mutex_lock(&dev->msi.data->mutex);

?

Honestly, still a bit unclear on what the community consensus is for
using WARN_ON.

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211209004702.GL6385%40nvidia.com.

Return-Path: <linux-ntb+bncBCN77QHK3UIBBL76TKGQMGQEZR4P4RQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DEE94643E2
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 01:17:52 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id o19-20020a05620a22d300b0046754380e8asf30856812qki.13
        for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 16:17:52 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1638317871; cv=pass;
        d=google.com; s=arc-20160816;
        b=bl0oigbUwdHWR4gXgpObY98pq/uPuLpPEr2oLmKOVF45gq//oukfCyzhGzRI/JGVLR
         Pe6PuY7nOPowkX78F4pZqyUoeGD88i3OEkJP5ih608+YCak01OwtB1fyJ5TzsGneDSpK
         G+PFE7rfcGWCCGipqigHgYFaP+kt0NgLbO3kfxA2ydpuz96LvgDCK0qhdpgoKs+6/lDy
         3v2c430YvCVs0TQOJu5psd+fdgtdcy0eVGET34Wj9CuybIQ12bqjmCxt+b60o9aRsVBe
         r08+atu2XSYwMEQhE7ohebZ8w1ngeZrz3/iVd9KxfuQRDIBRrvW8ImHMsLk3GiYosbI8
         uqww==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=/e6bPr5ZzYEhjrARqK0yEXDzM7yfh0qeLad8+eiH5Aw=;
        b=o+Yu7LjNHx7qdeixvqlr8y4kAm7+Sl70vpmEy1XM3IDpPiDTdOjIQlubKTE1ZhdfO4
         Rxj7hDBRBMP2yEmcqrVM5fP6F/UM5rpnatYejTZith9CYeLbu5ap3P6C8slxknjPYGm+
         SK+h/78Caw5UZz7lvklazfg/03ZU/NUZi5IgpcDvoCr4qHeq/SVYHziUvsVXqN1w3/Hh
         e21k0V+DX3xKWVOaaMTAbeAz0eAcKkSzhaR0KdEMfYdoaSWldV+ofDuS+8qMGlI0bmsi
         lKLV5+/czlVz9SnAVbP01BjDZyOhim+GLItkgdRtcsA2FPp0OSBrRNSgcWjOFUgM1Ji9
         52ZQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=gST3emFT;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.212.46 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=/e6bPr5ZzYEhjrARqK0yEXDzM7yfh0qeLad8+eiH5Aw=;
        b=r9GwZ0OBxRvUMxVm5NSe3d6z9v5Hoa0pzs5gjh0y0hnL9l6pFpKHvDrjA6YBgpDyN+
         d6dmiQJAzNjdzbWxmkM4tm/Tv9v44pCZzv8NEdlbORzQCTlZeZDT5QlwrSG4xRYLPe6y
         TpN5OM2tQHf+ZUc+CGDTi3q43FkrGubG1ILxfcLL+IAde8MuHo3Xu8MOzfBkvfS5W/3O
         yFHRcUUw1pCdMkWq9XSCL4PCliFHkDKq3rlpDGwtN82j8hqyLXEhzn3iIECEihaFpfHY
         cmBcxRiDTZu/xhAdqKovAvIKNuz4lHm+tgx8YMBjhQ5yC1n/vWfgHNy8K6hzgvUGOdWk
         PRSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/e6bPr5ZzYEhjrARqK0yEXDzM7yfh0qeLad8+eiH5Aw=;
        b=iyleFVxQZLt/0PsIytdJwfv5870Bx4DTHDwnRSFWY9l0akJWtLfVcqo7aXqH/b8IVI
         gb12yVsOIzjiMJmZamce1QeouwQfc4/vFc56dDk099uIS+pxl+Wose/3rlXkd84fJWd4
         eHJjO/BrjoDyDgSMmtu9Sfm3Nxw9qRY6Zt5xoqqAXG9Hzp3A0LQQSICetWFZ9sx1Trvw
         SFBKFvYWb2BiS91aQU8AKODA4hgBTqtFIz0CArOuodTX5jo9NayMCSm0FOZs4OvUTVL6
         aTVOEa4rsBRpMaYxwn6xDfCBts9RNwzMLyix3zRON8kLP7e/jd3FaKrBhgpJuriZ2bzK
         6GAw==
X-Gm-Message-State: AOAM530U2aWx6uAJaj/ZPBJU3ojMNgoZd/ilNdfdeZmuyisGwtTYncI1
	sVZtH6G9uMkn6qMs8aPpHtc=
X-Google-Smtp-Source: ABdhPJyYc/nfPFL4OwxWbyP7ww1M0+ierktbiPrD4CnuxHx3Ft4lLl5II6/cHutwpsV4z8m0ZbXsaQ==
X-Received: by 2002:ad4:5fcb:: with SMTP id jq11mr3353053qvb.30.1638317871512;
        Tue, 30 Nov 2021 16:17:51 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:4048:: with SMTP id i8ls363797qko.2.gmail; Tue, 30
 Nov 2021 16:17:51 -0800 (PST)
X-Received: by 2002:a37:491:: with SMTP id 139mr3070580qke.418.1638317871074;
        Tue, 30 Nov 2021 16:17:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638317871; cv=pass;
        d=google.com; s=arc-20160816;
        b=y9dHQIxooaah40DC0Qaj6dtEId4ODnUIT1sK8fPIMn8WJUChu0kP28NF5Oto6UV3ph
         pdFmpQUaAWBGPm9gZ4iw9jEQeJkeuTPPfRrsy/3SAyoLnBtN6THzO9dImej/D6piSyj8
         0jlzo9uCPGxv1qnCyVVMeqPEfnoIFKKPGmUX6cYD70Rj0HFlYiddlCQwIXAeAjf2Fthk
         p/uM3rsXm5XFV7/oQnGpIbfhdy2SL4Pk/RTTxRuEpV5zJBgcCAVwr4VeTqYaF2q083E4
         9Wy1ZibTResdbAUqcWcuF73MED3nNkfJLtgVlTBuxE3XJe5DNg/dDP1AW+gdJHLcm77j
         uLQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=pg+1vGZ/7yLn0B7Lsikb9H61ykghmMMQSb5jtXEoHek=;
        b=Aa1I+bpaWKtVZJkU0RU4q2VDeG8btrYrah/grI9ATJfVPYsdCNEn7gMzCoTSV1cE1Z
         RMG7A5BQV3INI8GhBuYDWT/8Pni5moFjApUbo+XUKDUa3jb3sajdzU2lXEP+wY1wKprX
         UZ/aIS1PjgKaGeGCCPMaFDGa44qhMeofwOntkFGGP121LuKD+AI+GByCIxzA54JxSo5g
         bui5mpSh42tu3w7T4Xgqk0BV4Ydy1mryZkO/JBoLnPTFgQUYYLNgQdFdXDd8QaRx6a7n
         NaM+d6TNc1CXpAKfrYJqQ3nWD+RinFD9Krtt19pRgx6tj6AIy2Wv8MzQYg+HJhoM4BKA
         643g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=gST3emFT;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.212.46 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (mail-bn1nam07on2046.outbound.protection.outlook.com. [40.107.212.46])
        by gmr-mx.google.com with ESMTPS id i6si2259234qko.3.2021.11.30.16.17.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Nov 2021 16:17:51 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.212.46 as permitted sender) client-ip=40.107.212.46;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kfm3zGKJ4No+z46N4tqHIh2OBMf9tQ/eKl0bnX17iR5trE7i5g5fZo6zb2bUStE+QWQdDwnIFzszejpEIiCMRiO85+EWAD/VU7Ii06PBLJ339nvc+C3/bHnVLzQU48ZhJHtt3wsVeTFdNOvkumF9JSFiLpZJW5u3G3P4Os0DsLnO4jR1/hSlvrpKpleu4BVK1+81wQ1IZtqeDCrgJyE7HEklhGjDoAWQNkhYDs/0PEfk9V6+dqcJ4tN9J6hiTR3uGXtetBaM8zZ6tYUdElbP1SJJTie4Grgcldu4YYDKg7XD43zF/l7XQi2+RvXJKi8MeY1spxTBMkNDX6s0IdFHZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pg+1vGZ/7yLn0B7Lsikb9H61ykghmMMQSb5jtXEoHek=;
 b=VBLhzV2pY2RAPvRc1mhKbjYI1Nq9WgD2mR5SdzDUGnTrTbpD5yZToH3oqraTKtxe5GnR+t39h/l/eK923g5fYYQ0cvJRn9LrxDUGNaXM0U7/0z0uj9ILAPtM1SjYgQQ5xBqYkIRiYyO+9TtyjtqPrf3074P13w/q+OWK5ihOd9s7d162iDEAJsvRp3my5zESHAfILSMbBoN4imAaoMvoBmFfEHr1sxgrhsfkwXPWn0f824gZGrTfPbcBAJXsFh/RHT6/995D9ujmR/LtNJxw5U6N3r9nluEvk/2vYu+BnVGp9ZyuIpNka0448iC6dwcnX2RDWlIC6h1/MsvTz/ZwqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5045.namprd12.prod.outlook.com (2603:10b6:208:310::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22; Wed, 1 Dec
 2021 00:17:50 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::5897:83b2:a704:7909]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::5897:83b2:a704:7909%8]) with mapi id 15.20.4734.024; Wed, 1 Dec 2021
 00:17:50 +0000
Date: Tue, 30 Nov 2021 20:17:48 -0400
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
Message-ID: <20211201001748.GF4670@nvidia.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com>
 <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
 <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
 <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com>
 <87o861banv.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87o861banv.ffs@tglx>
X-ClientProxiedBy: MN2PR08CA0011.namprd08.prod.outlook.com
 (2603:10b6:208:239::16) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by MN2PR08CA0011.namprd08.prod.outlook.com (2603:10b6:208:239::16) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23 via Frontend Transport; Wed, 1 Dec 2021 00:17:49 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1msDJk-00625h-SX; Tue, 30 Nov 2021 20:17:48 -0400
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f3f6dc0b-fa4e-44e2-d3de-08d9b4600247
X-MS-TrafficTypeDiagnostic: BL1PR12MB5045:
X-Microsoft-Antispam-PRVS: <BL1PR12MB5045929B376DFA5DB6A5BC3EC2689@BL1PR12MB5045.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +fi5g7FgUwVpEQDZ21c0AaLEDtYkK+iR805hrsa7XcZvZBOtNplbAkwU7AiFV95WB0E1s2htRlNfYwabedbXmipQ8zS8DTFf5he9DSWyLtc6inohp3Sq/Viyr5Azq7qSzC9E52Esb8I9FFeUT8p4jFYmPjttQF780rv1dCtjwdnioddWeHsqOKxU8X22oIL2GLaF84PEEpvCo5G9FdntDhZcAX1T1MZIRcFQ6zPaWyIF9Iz4KP3HHQwyDSzQXFMzSCiY0rH5GA88Wncu/C7VFmKlmXdvCD55Bc757RGDrNMlzVDVnDjBtPdH+G1OZXL6BV/KQrknZ4lAd21xneKGcA5NxgTiyXc7ZMpwJ79HfMO32Yyyxtkmex6erwMrJ8dNct9fjGOQ65zvN+TtjIuOC1UcpEKC36YyyTJaYnZ/yHF7yWymCELJ01gPvUI8pCZwGq69+WlF4bObWJsSZSxClQoqPM348dQ5LsF0pXGgl9C8NY7fyHI48wzZqKcwhgoDSDAebm0ObyWR7OiCexBBXuqoCy186nzu0DFEAbNBjySoQYx9zjgS/j+fV7gg1mZeuKCowaKbsaYTXPx/yszUAQRp5nzgzpvGRQsXczBdD/EJk8I2Ltg+F5EkkUw7HUEDcCJYAnfGj5m5THLAELSP/w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(36756003)(6916009)(8676002)(7416002)(8936002)(2616005)(508600001)(426003)(38100700002)(86362001)(4326008)(66476007)(66946007)(83380400001)(66556008)(1076003)(33656002)(5660300002)(9786002)(186003)(316002)(9746002)(2906002)(26005)(54906003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aBMJYoXLNHr7c4GBS4Xay0ZJw56EJmXwIcQoWytXdhe5AlwHvpwML/iWG0en?=
 =?us-ascii?Q?p1IdcZYZdO1n30VChxnnG06WnakmquFY+QZEmd3TS37Op5YztaphWRIN3z1f?=
 =?us-ascii?Q?L2GDWNIgqYGwZ/DdMxU2RKVJbpydi3ItORG73e2Q/j/FikifcCcapIsU9tC6?=
 =?us-ascii?Q?Dq6w4DSudHzl06oOeM7bCwFjsSNikW57bEFMg8hnrNT0erQWa0JN0uvAoVXv?=
 =?us-ascii?Q?GkYPlBPE0RHKlUiiq+QPooJQAB1mOiHvUC1X6aA8/5bQJkWnvCi/LeY6awaO?=
 =?us-ascii?Q?a+omHzu/qipJyWclg6RL6D6QfhrQhhEDU5KbYkPQNRtERzHiNoMDlKBEdYtZ?=
 =?us-ascii?Q?SEHUv8KEIYseltU5a3q49XX/5rFTsXXcyDYtyAkXyKTIlUUjkllbX184f9NR?=
 =?us-ascii?Q?U5seszIJP9tZj2RWHHWXEwQoLDiKe0ddNt2KXxdionrtJVvvmuAR+R0Ux6H+?=
 =?us-ascii?Q?qhSqMrImiF1CokPw3coZcKsHxxicuYQ2v18ntjrygBQ3L5UCr4QDleOY6Y01?=
 =?us-ascii?Q?1L5qIpsaX3jyRGpHqswK/cx1dUXy5T4xk1wb6JMae3x85wA9cQcmuhPlpvxI?=
 =?us-ascii?Q?BbOMImT1FKRVmoxIhN8SE0I8BFDqWj89z47XOCkXKKJkU+PGwv7h6GjucsC3?=
 =?us-ascii?Q?eQ9Za6OL4Eey7HEN68zxqDJ4Up3OC/tjfzSxAhOrmfYrDy++m0fDBUJV8PQI?=
 =?us-ascii?Q?pS76Z7FWELi08PLGygKKpanx5EsMi8OHdaJvUdkMnjpV8CQtHNT+DQJ7D7PK?=
 =?us-ascii?Q?rlWYidPJMMKaL2mDGSybE21d1CTNzpjilDAF8G1FN9odfUXKicReGVyA44ow?=
 =?us-ascii?Q?ynWKeOYAJjUOCM5KDH5Dp4f1RPhNFSqReNqavc0l5WPmOcrCg/xPFWSSTpTW?=
 =?us-ascii?Q?ngZ+MD6LG3DulUwIh7gOtpTtpeVtNUY9lpZ7WBPrkbYoFzBnuwMHxw3dN2bK?=
 =?us-ascii?Q?DgWC4yDrwtjI4VYUn+/XsmiRlPKfHbOebk016SLh1ulo7LVhwXzvcCVf1AN7?=
 =?us-ascii?Q?td2jAUnFJL+8duAvDgie33lV2bFk7uL+gp5Q3Mafhlvl5r1CDf7WCm3YB0Lu?=
 =?us-ascii?Q?zhGdHotKSylfjkFpyKBQhV0aDTBkK0ZU6b6B3elLeHzInNzTclfVOo/SfkBT?=
 =?us-ascii?Q?j/T25WgSUu8bfhN1HFJGreqH8/S8Xf5opDDH1mFfZ0YButus0h9fg8TywLOn?=
 =?us-ascii?Q?lSWAlsOchOMGa3+p3+sgK67yUGKb++ouIrdqdENtl7j6V3qR0OGJCl7TjrsN?=
 =?us-ascii?Q?R5J4elnOZsej4CFqfQyOyO8Qx+5K8WyPVKu8nxU6NA3qn/wyvTlvrdZFFHaM?=
 =?us-ascii?Q?c3m/a/8m4u6j8IPlET1W8ni5xK2XNsSLH4tqz/oahww3eCCGl1j0JfsqVwmn?=
 =?us-ascii?Q?bn+ZErwBjkJUgRqqSCs3qEvSLxGureHR62pNIyptKpDwafnq001bcvXor47A?=
 =?us-ascii?Q?g2wjIgsFusXY4/u3SkuBx0I2NeN8qUnp9CTAS3qLSyX15cSVxXi8gTqLSmzR?=
 =?us-ascii?Q?Iou9nYyjX1Y07HS2suYqFdPQjO/C62LaCb22kZGMBqyA4pQBMGvzl9q8K/FR?=
 =?us-ascii?Q?Nz62llL/crGx1clqx1Y=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3f6dc0b-fa4e-44e2-d3de-08d9b4600247
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2021 00:17:49.9719
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iDE/jBfkytVQm37L9L0hQG0mfQABBDPo/EbT0ND/QFLXRN1BcY5Xu5Sz4RyDFQZP
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5045
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=gST3emFT;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.212.46 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Tue, Nov 30, 2021 at 10:23:16PM +0100, Thomas Gleixner wrote:

> > If this doesn't become an irq_chip what other way is there to properly
> > program the addr/data pair as drivers/ntb/msi.c is doing?
> 
> That's not the question. This surely will be a separate irq chip and a
> separate irqdomain.

OK
 
> The real problem is where to store the MSI descriptors because the PCI
> device has its own real PCI/MSI-X interrupts which means it still shares
> the storage space.

Er.. I never realized that just looking at the patches :|

That is relevant to all real "IMS" users. IDXD escaped this because
it, IMHO, wrongly used the mdev with the IRQ layer. The mdev is purely
a messy artifact of VFIO, it should not be required to make the IRQ
layers work.

I don't think it makes sense that the msi_desc would point to a mdev,
the iommu layer consumes the msi_desc_to_dev(), it really should point
to the physical device that originates the message with a proper
iommu ops/data/etc.

> I'm currently tending to partition the index space in the xarray:
> 
>  0x00000000 - 0x0000ffff          PCI/MSI-X
>  0x00010000 - 0x0001ffff          NTB

It is OK, with some xarray work it can be range allocating & reserving
so that the msi_domain_alloc_irqs() flows can carve out chunks of the
number space..

Another view is the msi_domain_alloc_irqs() flows should have their
own xarrays..

> which is feasible now with the range modifications and way simpler to do
> with xarray than with the linked list.

Indeed!

Regards,
Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211201001748.GF4670%40nvidia.com.

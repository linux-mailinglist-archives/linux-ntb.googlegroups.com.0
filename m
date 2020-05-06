Return-Path: <linux-ntb+bncBAABBCXXZD2QKGQENS765WQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B5621C66BA
	for <lists+linux-ntb@lfdr.de>; Wed,  6 May 2020 06:22:35 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id k3sf118102vkb.13
        for <lists+linux-ntb@lfdr.de>; Tue, 05 May 2020 21:22:35 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588738954; cv=pass;
        d=google.com; s=arc-20160816;
        b=ryyF8tHbYJsI0zyees0Jji/W0h9NsXFLuB/dZfOnD8RBImHBRTy4R9o8CcL2kCIzKf
         xgbsLvKB2bChteB+47diKLsl4FAh9m/fTNiMflObN1o30Enm3Bqu3LnqjEjKOtNnAMUD
         NjhInK5l94zsKnZdD8MPMkAiVw7QxB9zSbtpjsmfK+FM5Ppx/JLxQAuDppTqoO1aRVs3
         yzcRFzXUKgR4oCLibtz1OVs+imrFypo5sF5juc3Vb1ofW827z0oW0Cu+hD+u2pmBE1Lk
         CNrT61d817TVS4bAGWov6IfGLXmGrj8r8Cv3NfuY0HIEnN78z/nMFKPn4mz3lyAgb9a4
         nFcw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=X6RVjAUA+l7s9Z0ArfI99G7V6ncAeJD8wU3JhpMtr7U=;
        b=CGEtsTvosFble1g5zD9E6qVo8Ll3BK+VcCDVQPa/hTHQKMwCEHBEFd48Q2xzKMoNRw
         89v7IoGhQN+du5KXBBbcmS0I3xOPuanT+oQ6sevx6zFGljT3StlrElPzEaLNKU/wltNE
         Jb+6PgJVpMVjEoCMUGkM1bpZ6jUhYzXZyVaQcXixin5geK4D6fzc1Xd54Lz8f/MH2hGk
         uUcJHVriPZS6C0gnZLbxHvCPtSRP3a9jA5rgAPH0eVOF7NiC88q0LlgBhtHsI0ccbhTz
         5qzvGiPUBuG3HCCJNDhWfda0Zc0FzJC54uNn7uJYBVVZSuHvzVsUf7K8QpohWntqSOqW
         Z8zA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=kwZw4P6m;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.77.45 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X6RVjAUA+l7s9Z0ArfI99G7V6ncAeJD8wU3JhpMtr7U=;
        b=EP1fi715WEJ4Fh09mwCGCcPzu623epV6vi/FlR7wN8rKG18bvN7mcYMCk0zyE+/CSB
         AzWRHaM8rNcuUvK/TrqSK/6rlEE8PbcQAoaL5CGkDiHQokWKyCbeZPJuUWKKPC8IodB1
         Mlit//lzhzzY0BZUaummWJlN96uhh2xVVmO8fMAVM1yj3UMv1OvUGXNW+Desuv/MU9jO
         oNXqy+eQd9iU5+vz/QI0x2reqqW7mjKIkGzSmsrUulV7D64TIm29JQeK5/ESfZQurK8J
         haxqnq9qMZLDAbSO9vRCrqZ4WbmSyFUKR8Ol1bCjn7XEDpKFF9yQ3iRDbKfK3luIlpNh
         U/dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X6RVjAUA+l7s9Z0ArfI99G7V6ncAeJD8wU3JhpMtr7U=;
        b=OZ6g9joORZXiwZVo0j2XIEJy0MLoLuQV/2TtTR7bcIvyQY219QkOigPd7JZno4ZBIT
         YK+68++HYybo1PHP6vk53NnIRGo3B9fyAJaV/lTLXM+fa4hDAB1H3X9845rldFXy+prp
         imvQArTravJ7IMv4eGI3MzKJ/wNYFANde6R0zS14i6bCraEzAxGUaulucxOvIWcElgXX
         OWV7pHJ7BMXLANqJgCCK/9nTXSORxkWtfzMO9zpFsp34FQbNqKafhmWMCnqLmzF9Ocs2
         NbnVs7KwgYvFFq8msG6fq+vdGSwnQEr+mAu+6MrX9Dq3xFKjuMmvwvIHgwCSg7Rio8zP
         TUZA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuYO/cmCoojDcRc+p7PM8Hv2qLzz07+nE4E0+tTA5SJ9od7V8+Zw
	iMT+jE79xl1hvvFsIqu9m8Q=
X-Google-Smtp-Source: APiQypKdCUWAT2tYLI7br9+AjTL1PXr1/3dzK3k2rKp1B8K9b0/Xtsig8/nyhheJYbY/Tu3F9ahiog==
X-Received: by 2002:a1f:938f:: with SMTP id v137mr5340181vkd.55.1588738954479;
        Tue, 05 May 2020 21:22:34 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:b14c:: with SMTP id z12ls119496vsl.0.gmail; Tue, 05 May
 2020 21:22:34 -0700 (PDT)
X-Received: by 2002:a67:3284:: with SMTP id y126mr6047565vsy.175.1588738954111;
        Tue, 05 May 2020 21:22:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588738954; cv=pass;
        d=google.com; s=arc-20160816;
        b=VEvTIVaar6kk6GY6GN9d8W/Um4c/ic1FMoGwrNH/zNDRiPr35Ay+eYSSVYFcJukczj
         Syo0xGIWqsgqr4IFQ3lMFLFEbSi+oS8XBHnod98rVy+mgL2LPVkSQRfoxPyxC8ApGos3
         kSn5E5XrG+HbX92dxW3+6ufsvP4O3wEHRIEbDYHT+5VYnyx71KNpBISDjAFviUINWkvi
         9cYw2EUG9ITVtM4pAAo6V/1A7ek/VUO+4BWChzv1XLx/0ecgIM/KAvOxLJ1YEUOtV6Bi
         lHzSljyWtgJdvJSCXcoZ7xLOcX3tovWNEpMa9Udog3SFURbX7kD29WWqqH1LkNDIHxNC
         nR0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=kJZgWJkf5d29f/gUBum2lAsZkS6rsVPE78yQQn23TuM=;
        b=xKYoW2ojMNrqJVVPGrO2ndbjXCudWW0KBcUkZGlH9VIiQWZDmd2kSgQv8yDabKC4ji
         3wj1axgBdP3Q2KRfWBeGixVLZCAvYFCMsyd6o4aBUuNd2YlkvZA8jVIU7WRMVNg5Dnnk
         PtZYNANqu3JynuTK5TXDTVc8uFQeytUEjOQGPdi0WDN1MlEDzuuf1oJzW/R+ApRK92xr
         k/FGp0fjLlDL6oMsh4bPYew0OuwaKKe2swaR1UEaOsg57FL4uPg/RU6MUZNHfti1PLE4
         /TXmu9SA4HUvHc9xJg8ur0Csi0SkYiJgwSyxtJvJpGSk2qYl9MchCH8F5KomH1KbPMbd
         cMjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=kwZw4P6m;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.77.45 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (mail-eopbgr770045.outbound.protection.outlook.com. [40.107.77.45])
        by gmr-mx.google.com with ESMTPS id y77si63778vky.0.2020.05.05.21.22.33
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 May 2020 21:22:34 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.77.45 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.77.45;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aG21xO1WqAn9Rm2HVvjHaC3NivRkKlvrVOcB7GREYZ9AMiIGj91LK73iYqjUsG/xgQyub01/oCAq0FHKMy7EAKgttKnugRhNo4/jKZm8vYb7Ene0iFrJ8K6UD7RZ40c8utGQ+NgbqDmWnd6M5IjtuiSb1fOix1hrSfEgx5kzbcCphdubj/niUYOF90iejAynolQB4wnrKi2chAH3MLYsAzumTSgbA8KkzN2Oa/nCk8wBDkyfBJ2k8ZeOUu2rMYqCfvYnGCcrT+HB0sEVESzC5As2aFUbH9GCrC4ZVscRETYa5CpN6PDeeKyOjW1TCY6vGix1iHLUzlysvNVRC+OnhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kJZgWJkf5d29f/gUBum2lAsZkS6rsVPE78yQQn23TuM=;
 b=TtnW3UAfTA86EpASpUD9X2D168C7BvVH9/ykQ88zElaYo1RvbYqwviKJjXbI+i6YHuWYLqMAsPZWySKNTL5rS3rUeEaqSW3g+9MDVBrCqqDXuYD8iSwKKWhERQYP0vymHm0vA2A5GaDpSIFtmFg82T4wUUO81GeA0knZ3J9r6FCSKsFdNUfVow6QCfRm9fgQd+FjETmyx3FB8ZDs2BiEqGdrizNtX2ewFiqubCfZmR3myPx31eM37PKBwGGvdgN5P5Co4Psgmpvs7LGMFPMpKuGCmn42WphrjlFYFbguNIzrCmAxO3gTo9BllB+pDhSzPPzSka7lfY4fObxrdmX9RA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM6PR12MB3420.namprd12.prod.outlook.com (2603:10b6:5:3a::27) by
 DM6PR12MB3707.namprd12.prod.outlook.com (2603:10b6:5:1c1::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.26; Wed, 6 May 2020 04:22:32 +0000
Received: from DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0]) by DM6PR12MB3420.namprd12.prod.outlook.com
 ([fe80::7545:386:8328:18a0%6]) with mapi id 15.20.2958.030; Wed, 6 May 2020
 04:22:32 +0000
From: Sanjay R Mehta <sanju.mehta@amd.com>
To: jdmason@kudzu.us,
	dave.jiang@intel.com,
	allenbh@gmail.com,
	arindam.nath@amd.com,
	logang@deltatee.com,
	Shyam-sundar.S-k@amd.com
Cc: linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Sanjay R Mehta <sanju.mehta@amd.com>
Subject: [PATCH v3 2/5] ntb_perf: pass correct struct device to dma_alloc_coherent
Date: Tue,  5 May 2020 23:21:49 -0500
Message-Id: <1588738912-24827-3-git-send-email-sanju.mehta@amd.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
References: <1588738912-24827-1-git-send-email-sanju.mehta@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:35::21) To DM6PR12MB3420.namprd12.prod.outlook.com
 (2603:10b6:5:3a::27)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from sanjuamdntb2.amd.com (165.204.156.251) by MA1PR01CA0127.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:35::21) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.26 via Frontend Transport; Wed, 6 May 2020 04:22:29 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [165.204.156.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a4be0ed2-8276-48fe-ae12-08d7f17518cf
X-MS-TrafficTypeDiagnostic: DM6PR12MB3707:|DM6PR12MB3707:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DM6PR12MB3707D46ED9C2B2D3AB6DE33CE5A40@DM6PR12MB3707.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 03950F25EC
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZA1dgcIxergJ4EC6i2MwgxSd6gdo1fccH/9Wh+OiJMwyGvhLVQYUybuwRL8LoltKsO//EVKWTqQTanEXU7e8cbjvCgfB/4D3K6J35gkRjBnMnAE+37mliZaGtE4ERDlH/s02TMB1kEJZbVfPL4dpKx4kFZGoSm46Inf3lzkJofmILut/j/RhiVOvErZV5tpDhKLKpS0fPABEddel71iRDSSeeA+cvq3D7miy/lXIzthWIVJNDC/TFg5wdNHNOu6zAdknkFNKnxmkGrol3mjhcAcM+ZKiFYnnSo4vtN8uDoudHhbazu3S2gf2O//CHhs8704VjSXcYrYdsPQif5FD8+Hxkk59ZsF+BWKwT+/+ExhJib9L+VOwYMWikiIWMcrMKC2AbaDO5UQ11yAdaEcwnsBOKViXXuqkZEG4b2FDJVbJPmHjOD37WChGcv/zDl0HBpGPrSe1de/32m88vgEhFTL/KjmH+7xGJuLhwHc0eh7a0CwvsSAZTL+LtkqevMgjzlDOk/axUwF5XqeCk7ytBg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB3420.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(39860400002)(136003)(396003)(366004)(376002)(346002)(33430700001)(5660300002)(478600001)(6666004)(4326008)(316002)(66476007)(33440700001)(86362001)(6636002)(66556008)(8676002)(8936002)(52116002)(2906002)(7696005)(36756003)(6486002)(186003)(16526019)(26005)(956004)(2616005)(66946007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: Jmq9lP04uG+Ovu7oNmi0+zf9VqCZm7ZH1i9bR3i9ugronbEFfw0W6/knU5Yshc1JP4O8m8arvqMWPVzEeaSQyFAdSxiysEqiONuFAr5ceGibiUiGBOwb+LfJCTa+Vi4BeAiDywO4s6vHVmdbjaee+FfOgNpSADT1IEFXFukegFv+eWi26z6TH2jkLysQ3YIj8VvYChsqMq16nF2ld7SDTMXVixwQJMOFtatgVxUvNcaXBuGwSkDzB8Wn0eN5XA/L2tEFYHcNZDl93WT/WplVk4A3avICwaRQ/mpLQA6xrHkAR+zoVG1vpzwSnVpKoVcceYfwFBh18jX2KZcHydrDJnxyw1S15ZmykuLtgw9soxCmUUShTIExnSTpACoTw8y2YCstNwuFYu7QfoNtDTZRCWoFLad7ZilW+LmYH02FsI59jOn+z9K5DGYUVod89XM1pR3N8oIx8cgNy684w8CeHJ9dcc/2eJqHKBvEnv/Khk46uWiembupDRICjqg/i90rSRyblqsRZi2cy7d9a+L4LimoEeSM6IurQe5iAO1zjghSM4DLwYuKN6kleR1R0hPhq5pMbblHDrQUBECOzzvAzwCMlOeQYcu/D94+ARGkRcwxdc0skUhxTDYGC0aDoUeOWdyj/DhNhe1vTEvS3F1JAp6T3mjpxu3RSFnKcSy1nj4N51WXrocJWbppgK0ZkcegDtz0gen93xOaIti5pYyeW8L2QOLoERWgxWgTOzlHZ75ui3t0Ozo4CZNjQ6drarvxMfxbH3W7Sf2owQKboIc6c2z2whxH0wGbE/fFrVBjxagXehHaw4b/1GRgxvfSJ4q5
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a4be0ed2-8276-48fe-ae12-08d7f17518cf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2020 04:22:32.7664
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aOwFbkpntkncd3k8UMi14WQcByoCpwJ0iErFuN/mIjy7FngEfryZXsmwxLmHtGVg1OehcRTunxoQ/9fIzPCjMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR12MB3707
X-Original-Sender: sanju.mehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=kwZw4P6m;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.77.45 is neither permitted nor denied by best guess
 record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
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

Currently, ntb->dev is passed to dma_alloc_coherent
and dma_free_coherent calls. The returned dma_addr_t
is the CPU physical address. This works fine as long
as IOMMU is disabled. But when IOMMU is enabled, we
need to make sure that IOVA is returned for dma_addr_t.
So the correct way to achieve this is by changing the
first parameter of dma_alloc_coherent() as ntb->pdev->dev
instead.

Fixes: 5648e56 ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
---
 drivers/ntb/test/ntb_perf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 972f6d9..1c93b9f 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -557,7 +557,7 @@ static void perf_free_inbuf(struct perf_peer *peer)
 		return;
 
 	(void)ntb_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
-	dma_free_coherent(&peer->perf->ntb->dev, peer->inbuf_size,
+	dma_free_coherent(&peer->perf->ntb->pdev->dev, peer->inbuf_size,
 			  peer->inbuf, peer->inbuf_xlat);
 	peer->inbuf = NULL;
 }
@@ -586,8 +586,9 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 
 	perf_free_inbuf(peer);
 
-	peer->inbuf = dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_size,
-					 &peer->inbuf_xlat, GFP_KERNEL);
+	peer->inbuf = dma_alloc_coherent(&perf->ntb->pdev->dev,
+					 peer->inbuf_size, &peer->inbuf_xlat,
+					 GFP_KERNEL);
 	if (!peer->inbuf) {
 		dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
 			&peer->inbuf_size);
@@ -1554,4 +1555,3 @@ static void __exit perf_exit(void)
 	destroy_workqueue(perf_wq);
 }
 module_exit(perf_exit);
-
-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1588738912-24827-3-git-send-email-sanju.mehta%40amd.com.

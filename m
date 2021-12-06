Return-Path: <linux-ntb+bncBCN77QHK3UIBBRPWXGGQMGQE6QZO3EI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF0946A90E
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 22:06:14 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id h8-20020a05622a170800b002acc8656e05sf14149940qtk.7
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 13:06:14 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1638824773; cv=pass;
        d=google.com; s=arc-20160816;
        b=W3lY65/aiGO/WNN4XZ+AeJmDyTkBtqO8atihaehMRGSjJmuHbE/SpmD/eWo8v47RMg
         i4j+CHlESVw0IIYMebchkrOYBq54MsZGn41D20pV4oKc9cbSCtV+7ONNM3Gn/ZIV9Q1r
         B/p/nFU2ZWX0YnpWj4D/vqPzKFNkrynmouOQkVM+YkanhBgt8Nff6HGLcYzaZIwAlhi1
         iCT/u8sYhp0iXTcxnrHTdy8yXnsFAIdD2HsjJ5/0C7xElQGMYf3god1F2Fe00DnqtjA3
         Zg9ivOdb21oZ8RW0bZFq+JrDPZnxTf0I9olnohVuJJB7Cu0M94lVA3emuTfB8NiLZSwV
         Y+6g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=hHkkJFnArxEGOOAtqiMA/Irae2WMDBWxf3dH7kWr+/k=;
        b=TmF9eJqcqFx4tbpUUOsxBSSLrRIYmx6xb8xFh9qJx7KjtlXbGNCjLW4TW8pEkRXONN
         OGJXL3pj1EYlqQLeLXktjdxHl8g57EB+JQc3jw4K2Tb4HbuNdouNalw9uQLdxijP1289
         2nsdjhAlUoh7uC7WiOcWL0cQOrRmeKGZ3ZCwUv4Gcrhk4zR4atYleki2wgIYt6JUg38I
         JWZr/HRa8F2z8EmFD5Gqivd0B26D6iXMlqjsWdjV2vAVMn0uwhdvodbtaZB6urtx/SYN
         rMbZv1NsyeHVCCuiWUqio4iS5fJX1eh8GLSZfIpse9ThWzziWQmDHmbBUc0mpUwe7Ck+
         90mg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=l5e5gbUN;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.51 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hHkkJFnArxEGOOAtqiMA/Irae2WMDBWxf3dH7kWr+/k=;
        b=MXO9Jf7zAPdj4OWhnyLjoMyisnnhclCYA/xNjPE83dN6e2VYIF5PrtjqCam+Bf8fBL
         pOUslU4r5lfPvwLrmKljARM4/ZZRCGe5r6+Stti/z61CGXaituOyuRzw7yb/niOAODIX
         JaxAjmMWpZKVbAEmBXsMyK3LOB95CmxeRVNqM+lRX6bx62+jUUzGurX7FrRKVOVlpxHG
         edYf5F5u+RN8Xn/b+5+EMwxSrD7pfqQR6uM3qvAsx+na4XId8p0HHkZrAJ7mZuxiaFbS
         uOr++ghjw7jblrI/ozaEXaJbsM86ywyx1YpGiN4JOPQmydm995mPt49ZhWhA2KwYSqDT
         WpHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hHkkJFnArxEGOOAtqiMA/Irae2WMDBWxf3dH7kWr+/k=;
        b=cnb5zJvtp1Pvf0vPmbzfWvObubFNQGCujQ6Iz9SPWDaEA7gXqjopA2aR6pZtIK/K07
         H0ms2y5nABo6hTL751LRb1/108uzcMM5m86k7DDh6ddHb/p8hcapnu5mtobkDwq3u0dn
         K/AGjhGS5v2rcallTT96z/fhKp9qPv402R5tTtzzJy/jMfEghrevpjFUxH6V9QrYfNXr
         xWk7LJbBdiNaYQTKRRMn1ygaFDBOgN3IQgBbnFmPlzOwDGayskLxSt3QhzEpMglJVUSc
         Mce7LcOrfloy0x3WPSvP0FTleDNYZGPsBRBWz7/X26c6zTam5aqCEk3ZE0Z/qvp0PgYN
         c0Sg==
X-Gm-Message-State: AOAM5318GdqNcfucGr0F6PmaJglE2j1K/OvaCC7Coz69mFVD7KZLDI3J
	Tgrd9p6PX68JCrbEhLmiHsE=
X-Google-Smtp-Source: ABdhPJxMOBQR1L75olKL44dcEUL1N2pkUTVfOe2kX2VL916HFMpsDFF7d6groX8jlF7M8EIY87KV5A==
X-Received: by 2002:ac8:5c16:: with SMTP id i22mr42341643qti.313.1638824773378;
        Mon, 06 Dec 2021 13:06:13 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:7e88:: with SMTP id w8ls12975434qtj.3.gmail; Mon, 06 Dec
 2021 13:06:13 -0800 (PST)
X-Received: by 2002:a05:622a:5c8:: with SMTP id d8mr42626672qtb.545.1638824772970;
        Mon, 06 Dec 2021 13:06:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638824772; cv=pass;
        d=google.com; s=arc-20160816;
        b=pV86IEEWqDLnle0K7LQCecs8cHpBt6QEf8LaYZtxCIDxfQIL/zCXxEs8i+1xgsNkX0
         qJG2X6eQh7/ebvTpLJ8gjIdaXyynZS+mJnBF92azkvDs5bSu25Fv2hNiSB06TgJ+ILlF
         cFnlarfPqpSLLW2EV7A8t+qMazXM69tTacu/gVEdy3aKf4B6/1uKYFKaWwaTdSQW55m/
         Oxa6GEBZTYtu1zH+v506cWbnRUn89nlAoRXt7jSnWSpDs8yQcFWASdrAzZwUUu7sUw5p
         S5OCOuczWeoAmXN4nXwpdTVQVKRxhiHTVyqrsKTWYFN3CHTptsbuKAoGC62Nqy1eb5ZZ
         TSCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=R0i7XGIhFNCmzmaYUvYd0P08f+nZGuT1yo9DIRk77gM=;
        b=jOtYziJJ5TaKEkche3F+SgQlpRtV6JoOD/Hqx/u2bHT5bIZ5ghTeNRk+kw+Dokcicg
         dT5cBjnlbQKXlEt+YIYxaIfFi4ApYYPeL3cHnQsWGyqYlJ4H7DrNJFDI0qXBpUuEhKYR
         eQhB0gFSI1OtamqLP/yk577MjgglScqL3CdTCTAYUb44egP7N9kvxhLMQ5BRk6rxSgL3
         IKQXIyL0DvZloPU0dDC8E40aylT6TYEv6VeylSpNHQ5TlWTA3zSZfmXSzCqD8PPQXrtT
         744jqHjcn9PxAa3jiqr05k2J/saxwhO35fZV9JP4VkfamNRDFWT+RTcfG+hzIazW86IO
         gRWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=l5e5gbUN;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.51 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2051.outbound.protection.outlook.com. [40.107.93.51])
        by gmr-mx.google.com with ESMTPS id bs32si2272476qkb.7.2021.12.06.13.06.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Dec 2021 13:06:12 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.93.51 as permitted sender) client-ip=40.107.93.51;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eriR3gYVF3TjWOGh4RXzZQngZ//erbv6h0mA6FwTuKx/J8Q58plAhh1wzd/ZIqtymI0lxJlCCAbaprMJHSaVTRjz4dqP92RZMP6O8JHAh0KNEagUaFLWKHBcFO22dfw9Q4rep7JoO6S9Y8hrFMsxsyO+7yMwnpKjpwYnM/ObwgvukrEV5eCEU6pivqHNeqgTCyAXz2TGFQ02ZC0zYcW1XJ0fl48SM5OpTKeLnVv1xpCH5viCxRR7eSBbhpafvUbzXqMdPftmuPJbaFNN4Rdgx8WXr05j7ULTUMfFoFnrJpjFptZtODHQP6aR9I99Iff/wKVi6LBdRVPzWMJ6v6WOvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R0i7XGIhFNCmzmaYUvYd0P08f+nZGuT1yo9DIRk77gM=;
 b=GKnQXfEoirJi1mqJeEHzMTSdGFDewOjV9R3UlxB9AAGZJo6D8GthfS3/jS21G1Ih+Vj6stBigkRZV3P02bQa0DQ9EDPvwDclDIAlplA9q/fNeYZrRxGaAj+/PAZW9ucQasgONHpeTpm9P9cHiT6eeroYqEAPrisGp8herGL6R9Q+WOSfRCiAeErkZ5FEk7Ye/jR9nzrPBQYi98SQq4BUVUJz0clPF4NQEacuBnSRZilXB5yrOawai1decqPFBKP5EHt6pE5V3c4e+m0BVJ3JuKKqc0jek673YdQVr6V0X9/phgVpE6v/16i52XFF6y2MteTThlrobn3evU5sdYQlvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL0PR12MB5523.namprd12.prod.outlook.com (2603:10b6:208:1ce::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.16; Mon, 6 Dec
 2021 21:06:11 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%5]) with mapi id 15.20.4755.021; Mon, 6 Dec 2021
 21:06:11 +0000
Date: Mon, 6 Dec 2021 17:06:09 -0400
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
	Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org,
	Joerg Roedel <jroedel@suse.de>, iommu@lists.linux-foundation.org,
	Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <20211206210609.GN4670@nvidia.com>
References: <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com>
 <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com>
 <87v9044fkb.ffs@tglx>
 <87o85v3znb.ffs@tglx>
 <20211206144344.GA4670@nvidia.com>
 <87fsr54tw1.ffs@tglx>
 <20211206170035.GJ4670@nvidia.com>
 <875ys14gw0.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <875ys14gw0.ffs@tglx>
X-ClientProxiedBy: MN2PR19CA0059.namprd19.prod.outlook.com
 (2603:10b6:208:19b::36) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by MN2PR19CA0059.namprd19.prod.outlook.com (2603:10b6:208:19b::36) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.17 via Frontend Transport; Mon, 6 Dec 2021 21:06:10 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1muLBZ-0093ja-Mj; Mon, 06 Dec 2021 17:06:09 -0400
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 15dd6c8b-46a1-4adc-16f7-08d9b8fc3acc
X-MS-TrafficTypeDiagnostic: BL0PR12MB5523:EE_
X-Microsoft-Antispam-PRVS: <BL0PR12MB55230DBCE8709CA87CE51FA9C26D9@BL0PR12MB5523.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: goFOHJVmfsm6VxIg6RlmsThxZFP+qQ7CwjQwLWBuLepnYgD5QIea/JN3WQSfYdyZJCgdTSkfXNjCdujV/A2ScPuajdLiQchMPRjFfxdtX1fjgFPNLMCTjhiV0C9v1e9eAN9GdVfYhHHUOGf5Mny861XGHunn/6ZoQG2B2ELglJjdkxrLXiryp6eo7IS8/X2V2Gq8m94nHrhshiB4TH3HYp2xR5n4d5j2juyampfPchmgXybnZMzkBxyItYapiQWC+cbBG1CH0g9gcQ+jR8WD8+6E1hKhevQkeU/Uf1ubui4pXOMeLqULIDLlpuRxJNNhu+KUKTZtFGzTsBp4gUPTm5OLzr0c8OkChCb19A8Sb7nl43MYn7L3RRU5f+MeYC+e0ungGokqoaYiorwZOrJgLDCQ8p0QKJh5WMGLto5oJjO9i+fkkmL2QT0ZHcSfdGWBAWhl+q9Q+i+ZJEHZ6D98FAlQfKb8mdc2WLFS7jWPkGqT8cUPW9ua270pNzhPOaC1WqMUmzAO/ykdOK6sA3nqyJ2vBf5fXwn2wLJ+G0zOBF0VkefvgmK6IR8pSO0ecyemgroPvgIvCwnwX8/zPehYjPqbUHpNBr9Yj2sAcmsG1XZEZBQ/lxHMy87b9gNIgHRLzS0ApmFIZIxA7lO9sFu44w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(54906003)(2906002)(38100700002)(5660300002)(2616005)(186003)(36756003)(83380400001)(86362001)(4326008)(1076003)(66946007)(26005)(66476007)(33656002)(316002)(508600001)(9786002)(8936002)(8676002)(66556008)(6916009)(426003)(7416002)(9746002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aVK/ybRMSmFHi31FaUJo7dR2mH6Z8bu9oyDyKCIBtmPpJScxvoX6Tu43jHsT?=
 =?us-ascii?Q?EyldvNpV0FHL7met3u8pmMDou63OD9mBWbS2+hHBMI47vzuEHJeiVJJJfFyo?=
 =?us-ascii?Q?CPZwesZE6TNUZvEqPR9A6c94aEwNlsxwajlfemDovIfFs67nIxpvKt2tTo/w?=
 =?us-ascii?Q?hkHblhpeN0EQb+X6WFn0opGazcIxF78UCnGtaJthFaBER7Pd+V4M+dnjHUcD?=
 =?us-ascii?Q?wd3fINrFN29WfeF+aRyYb94I9G3xM1B1BYxnARmdVjXJi6ICUnLFpxlR1j7z?=
 =?us-ascii?Q?lv7yRIHVdQvG4KVQX0xRRsEp8uXpVk/gbcGeQIrcTfk4ep3+02u1WN9G/Obv?=
 =?us-ascii?Q?1EeG4ls2QZaRekSw1AIC+9lMhgCjb8wcuEbszBEJPoGoIy3EzFkkZXCHcamC?=
 =?us-ascii?Q?G7+hd3ki/dXQMfBNxxkB7hjcNCfUnXCcg2bbEB6oTBC5WH5uQ6Bqf1q9igLr?=
 =?us-ascii?Q?QVUVR4xLlhh8yQl7Rp2zPtUudCQP2i0NckfFWnnpGhKOdt2+bC4CUFCH77X3?=
 =?us-ascii?Q?YvUupp2kVhkaM/LcKLf1j+rpFW8ZbJwPxb6o0TchoNYHaDHTDy45HQm5TY7A?=
 =?us-ascii?Q?6KJZNCVX2rveS8PLQsH4ohud/D276hKl//kIfAws71Jxdq0kaVD0/t3dAVpm?=
 =?us-ascii?Q?tlkW0Zt45NFvMVAoljxZ5VOAgIFHHfWTclf4ABdqFCanIcBm2OXLkgTRSXS5?=
 =?us-ascii?Q?BbLQycDy6CuQqVWLygLHce86UGzm2SAl+YufSYKrYB1P8VMat5bhCxzh18j+?=
 =?us-ascii?Q?Uf7oBXkTt2G2k7YFPqNsFUj22AqzdFcKdHFnKCaRPJBHNPw4skd/eD4hy0Cs?=
 =?us-ascii?Q?no0BoJeIYtAAFwlG9X7rV9tR5UW23PB7i1Fv/octcWSIujrgPmbKw452Ucq7?=
 =?us-ascii?Q?VNusREMiFWbN+PdtIyLcB3Ucu5hrnhDaJN9zZwd8FkqWp3z/ExsKAk5V8Dwc?=
 =?us-ascii?Q?b5c/hc46GWPmr1XuAOadC6jZ7ufgLhayC+o5Vn6DzW4isFQP+4vk+mb6DzZm?=
 =?us-ascii?Q?ic+3WQAdaH2nlWf8tNNgpkD76xqBbhUQ6znigkSXtijZZLg1eKTtho3gslYR?=
 =?us-ascii?Q?lIco749zp5tdMuyUVeZIdoL2GtSC4RbrLO8IJykH2NXpfbhT8el4mXb1CjaA?=
 =?us-ascii?Q?5e7VDYMmR2aobqNuC7TZLrE6o5FYoQUStKetMIaEAhemU3qm7Q3a/5VSQLIW?=
 =?us-ascii?Q?HvxwdIFJkzDq5b/LOlvPoR/z/rwNSW/uZoNmsF3cpiH03qGZ6ESnVdlejk5d?=
 =?us-ascii?Q?bHVfqzhnHz5Sog8lfnxuHVemJjgTsVj7H2H0T/gTKv3jt2S4LiUsRvgnmNK4?=
 =?us-ascii?Q?kDG3uSQeXdmAShV1Xymf3zyRHXagkSHUMxDQe+S8CXnsoCD7r8PIWdAArxXR?=
 =?us-ascii?Q?jTO9ZUqQ8ifbBA370V6VYge2Rm/uHcqP+XKweOMwNzTK1dujsFnDH0EF96f6?=
 =?us-ascii?Q?wHPnspGYULp/2hyyQt6oie962FVbOO5aTYZlNezjio+I8pJjaxNUuUEEAuT/?=
 =?us-ascii?Q?uggjTsftZToHHEIFsH2+5EWgHRH8o+vNob+2DsoHqYwUHXcwolPffObSHQq2?=
 =?us-ascii?Q?65x6i3d2fkILtdK7Ltk=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 15dd6c8b-46a1-4adc-16f7-08d9b8fc3acc
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2021 21:06:10.9077
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V8K+Bjp/GhW8DMnZ/sDBWqpY0Jx7JhT1K1hIPzW5czDVsrko4rei4t7aXkAxNmfI
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB5523
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=l5e5gbUN;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.93.51 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Mon, Dec 06, 2021 at 09:28:47PM +0100, Thomas Gleixner wrote:

> That's already the plan in some form, but there's a long way towards
> that. See below.

Okay, then I think we are thinking the same sorts of things, it is
good to see
 
> Also there will be a question of how many different callbacks we're
> going to create just to avoid one conditional. At some point this might
> become silly.

Yes, but I think the the overal point is that it we could have ops
that do exactly what they need, and we can choose when we get there
which makes the most sense. ie the 64 vs 32 is probably silly.

> > Surprised! These are actually IMS. The HPET and DMAR devices both
> > have device-specific message storage! So these could use
> > msi_storage_ops. And WTF is IOMMU DMAR driver code doing in
> > apic/msi.c ???
> 
> Historical reasons coming from the pre irqdomain aera. Also DMAR needs
> direct access to the x86 low level composer which we didn't want to
> expose. Plus DMAR is shared with ia64 to make it more interesting.
>
> Yes, they can be converted. But that's the least of my worries. Those
> are straight forward and not really relevant for the design.
> 
> > arch/powerpc/platforms/pseries/msi.c:   .irq_write_msi_msg      = pseries_msi_write_msg,
> >
> > AFAICT this is really like virtualization? The hypervisor is
> > controlling the real MSI table and what the OS sees is faked out
> > somewhat.
> >
> > This is more of quirk in the PCI MSI implementation (do not touch the
> > storage) and a block on non-PCI uses of MSI similar to what x86 needs?
> 
> There is an underlying hypervisor of some sorts and that stuff needs to
> deal with it. I leave that to the powerpc wizards to sort out.
> 
> > drivers/irqchip/irq-gic-v2m.c:  .irq_write_msi_msg      = pci_msi_domain_write_msg,
> > drivers/irqchip/irq-gic-v3-its-pci-msi.c:       .irq_write_msi_msg      = pci_msi_domain_write_msg,
> > drivers/irqchip/irq-gic-v3-mbi.c:       .irq_write_msi_msg      = pci_msi_domain_write_msg,
> >
> > ARM seems to be replacing the 'mask at source' with 'mask at
> > destination' - I wonder why?
> 
> Because the majority of PCI/MSI endpoint implementations do not provide
> masking...
> 
> We're telling hardware people for 15+ years that this is a horrible
> idea, but it's as effective as talking to a wall. Sure the spec grants
> them to make my life miserable...
> 
> > Should this really be hierarchical where we mask *both* the MSI
> > originating device (storage_ops->mask) and at the CPU IRQ controller?
> > (gicv2m_mask_msi_irq ?) if it can?
> 
> I wish I could mask underneath for some stuff on x86. Though that would
> not help with the worst problem vs. affinity settings. See the horrible
> dance in:

My thinking here is that this stuff in ARM is one of the different
cases (ie not using MSI_FLAG_USE_DEF_CHIP_OPS), and I guess we can
just handle it cleanly by having the core call both the irq_chip->mask
and the msi_storage_ops->mask and we don't need ARM to be different,
x86 just won't provide a mask at destination op.

>     x86/kernel/apic/msi.c::msi_set_affinity()

Okay, so it is complicated, but it is just calling
   irq_data_get_irq_chip(irqd)->irq_write_msi_msg(irqd, msg);

So, from a msi_storage_ops perspective, things are still clean.

> > PCI, HPET, DMAR move to msi_storage_ops instead of using irq_chip
> 
> With different parent domains. DMAR hangs always directly off the vector
> domain. HPET has its own IOMMU zone.
> 
> You forgot IO/APIC which is a MSI endpoint too, just more convoluted but
> it's not using MSI domains so it's not in the way. I'm not going to
> touch that with a ten foot pole. :)

I left off IOAPIC because I view it as conceptually different. I used
the phrasse "device that originated the interrupt" deliberately,
IOAPIC is just a middle box that converts from a physical interrupt
line to a message world, it belongs with the physical interrupt
infrastructure.

Possibly the IOAPIC considerations is what motivated some of this to
look the way it does today, because it really was trying to hide MSI
under normal PCI INTX physical pins with full compatability. We kind
of kept doing that as MSI grew into its own thing.

> > Seems like a nice uniform solution?
> 
> That's where I'm heading.

Okay, it looks like a lot TBH, but I think the direction is clean and
general.

I'm curious to see if you end up with irq_domains and irq_chips along
with what I labeled as the msi_storage above, or if those turn out to
be unnecesary for the driver to provide MSI programming.

Also, if msi_storage_ops can be robust enough you'd be comfortable
with it in a driver .c file and just a regex match in the MAINTAINERS
file :)

>    - Have a transition mechanism to convert one part at a time to keep
>      the patch sizes reviewable and the whole mess bisectable.

This seems difficult all on its own..

> I have a pretty good picture in my head and notes already, which needs
> to be dumped into code. But let me post part 1-3 V2 first, so that pile
> gets out of the way. Not having to juggle 90 patches makes life easier.

Okay! Thanks

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210609.GN4670%40nvidia.com.

Return-Path: <linux-ntb+bncBCN77QHK3UIBB4PWT2GQMGQEYPOTP3I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 269EB4654E4
	for <lists+linux-ntb@lfdr.de>; Wed,  1 Dec 2021 19:14:11 +0100 (CET)
Received: by mail-oi1-x240.google.com with SMTP id y20-20020acaaf14000000b002a817a23a1esf16772908oie.23
        for <lists+linux-ntb@lfdr.de>; Wed, 01 Dec 2021 10:14:11 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1638382450; cv=pass;
        d=google.com; s=arc-20160816;
        b=x+hDxUW8aPH7QZENv7CWkUlV6UNmEj5NO7QuKM0c/IZhrRvGLUptFeJb0dAvmxA445
         i6n+2XrB83AJPGmvhCxhOmFw3wjzPWxmeWMyJRXtYCUVzymSTsQq/AfvVyPTR+B0ZPqe
         D8mTx3Dt9XcpmoZMfLAMrTfMM8ycWpm4lXHMNb3qDfL5Zz4I0693UC0i0qIvpsMyRYZB
         en7OktvbHSYXz3A2L2ZZmiqblFVMxLGAfOCiZRu7GMvb7RsDdEH0NGun/gRdGCrOXXfb
         ULS1BVhUaPST9s/geww7FeXVwdY22DN/lv0FbYD8WYi4KlrJVkzfRvvtOFzIl3eqqYEj
         G/9w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=ax8lmLDapMV4Pz/f74FI6bhX5xz2FebpmtSvXWdm81Q=;
        b=SWg5k6qBJG2EJ4A6BwibxulTr9UGZYwyp+3Rn1iaE7wVnMitk8KNbGcc7o92vrRp0o
         UyAD13W6UDWvT0iRF7VSBPe/qFSgfHQLoXmnhOcAD48l6J4X4VRHOsb0e0TuFjf5VsoX
         nfEruk92fOQ1y+nZ2ZZCaGboxB0qNd9cCTDIs8cS8uieGReU5vBSFeN19ZHfH84p1QR/
         NHdk6jc+swLBCZqNs50qUW6fK8U7djT2jH2f7GcEGM8x663sJ8uaATNEnROOTsfv4n0X
         T4J/x7ZVNciF/ClByaYHySHUdttyHNswl9+V7SsTiMK/7HV9XxD2HBclgHX82HF7/1D5
         Z6IQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=g0RP6hNw;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.94.54 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ax8lmLDapMV4Pz/f74FI6bhX5xz2FebpmtSvXWdm81Q=;
        b=cH1B/7uuws4VxDvZm28pp+xLtd01KSQFME/Vuyk0356j7jKLiAR5KOXaygqqvqsoNF
         Sk8jg1/BgjwF3z8M52zUaw0b7LC/XZTrjrkdwdw5cO75pgyTqA0zLklBWsRfXHWZfpmm
         rVWdN1lJtoBWkBW3dUi6LszAqNeLGNzWEx3/FVzVgAUCLtA4ZlsMob2K0Eop99+L7KsO
         MWfpMGMg0XUiBMJbb+rCuCQOgGg9v7Pk2hctxCUqiYcyxQHZI1eC8LTW4ickIhYqrxU1
         jWL2PUc4rlX8Z/arowS9bFSd81Pb0kupfBSh/q+c5nGb30kIg7uqtWHNG+Go2JIsuCe0
         o75g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ax8lmLDapMV4Pz/f74FI6bhX5xz2FebpmtSvXWdm81Q=;
        b=tjUC2FMrDczDDHsDAofe2zebzsoHFFm6y2QS/QVxcyzU+jqfLFlNczwZknb4iLCLSU
         Jj6FLH9qeKhYQFNIQZRPB98b8CXNy7B4d+JkxE2zSc0GYsQF6AhM7MvxQ3zngaV61wCM
         a+PLV99S5AW2hTf71s/lutALpD075/eSxvolKVYK9oVdGxvfN9MijcU5fURi0zQ3sRbW
         EHqeKdrMfqnAEUK+w90If4XIM8s6qNds+4uQHnwfntL1twcdODiMxbhcHqditU5lONxo
         OIapL6bG2CzDWYmnsYOnpK2lKqRuiJivDZHT0mh2J83A6i3ZIwlx7bCdcfQaCyMfeZGp
         SXXA==
X-Gm-Message-State: AOAM530epXdYHUCMOPd5C0dVRAhV/+Nk8G0FvUKzRWd8F+DdCO2WxZt6
	VvxhWR8RGa/kjaKEOlrRrXI=
X-Google-Smtp-Source: ABdhPJw3fhbglSym6bjJ7pAYWKOEA3j3fUu96ZKlPijGd8IvJYRoslLo/ceGrnzfJELHuskFB+2Mzw==
X-Received: by 2002:a05:6808:bc7:: with SMTP id o7mr7644028oik.172.1638382449870;
        Wed, 01 Dec 2021 10:14:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:4492:: with SMTP id r18ls1154023otv.9.gmail; Wed,
 01 Dec 2021 10:14:09 -0800 (PST)
X-Received: by 2002:a05:6830:1e8f:: with SMTP id n15mr6942189otr.259.1638382449520;
        Wed, 01 Dec 2021 10:14:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638382449; cv=pass;
        d=google.com; s=arc-20160816;
        b=L/G4hf5o9CLEjDBpC+no3VRBtr7y7l2+XL7fbl1SVwztL3tqJnM4anU1eBbocjy/J8
         CIo9l6VhGYsgUHv2iNwvDEmCQJxdiX8+8eizomEJ6i3Jcs7Qw2YSq3Fu6tpEp4iP+2bo
         x9UHDQHYYrvoDa8dT9q3ENeDTJ8heSOQAyPL+QWa8OPVUVLN5CbQXuJZ6lS3G3lkenkE
         EcrD4wPvNvWndzOQsfITVbGuFu/OlFqzZ3Fj8RrgYZk9FVm+pboT2+PRS2JGGYt80Ghq
         vIw5/PaUmhFhQrHD18JPbqQDc7kyoAZCV75MRRWcXEjoCoUiAKktXmnsb9bZyLfWoE0X
         imjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Q/drkoEhu7nZh/phzadEOE8Lq+erAnjghyP5VZJ9WY8=;
        b=KmQYrvolnS+BUHlcjYCYAD7GBY6Nl9I1m/wVuRw78iJo2vbUZHzKYhIa8lhXCJXm5m
         EPbuNegyei0T6IOCD+ohRyCeUfKem+nc5/Dd0CTSFl1DJ6x98LEerVsJlUrxoZbupboq
         KoBf04rKhRuhw3P0a0cIpS1nFIXOkSJa2bk/6cCxlToPpbcEwjebSHpM54hNq7qF43bC
         BpZ6o2a92JdGGSNtQJc2Mml1HH4bBRwy+Wu9xfZb+xAb9eQ5OFxMmC1PcLZmE11yZXWr
         rxLYPBNU2vfSx/ow13W73csVdPvf/AKy4+GEOP7KakiK0pe5yKXtPxnHKErH0xnqU/lH
         hyKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=g0RP6hNw;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.94.54 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (mail-mw2nam10on2054.outbound.protection.outlook.com. [40.107.94.54])
        by gmr-mx.google.com with ESMTPS id bg19si129128oib.5.2021.12.01.10.14.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Dec 2021 10:14:09 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.94.54 as permitted sender) client-ip=40.107.94.54;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QE/rHRAiPYEPxQR1Uv8/RDYYm/arXqEW6y3MmCkYCKESGRtvuZmnXHk5mOFYoMctUL0JFulPKPu7wHAjYkJU2rfGngmwx1odvQiuPJ4AAdbo+RXIWi2t2Rp4/IHEz4En+dtSlO0amumaQTzQ/pYDQaU9O22xWfVRFBW5WvJr+yRHbrLGV5PhvIMuJb22TnBBceBkMmKtbyXnhXOoem582FO0LAegPgH1OlcbZuab6QuXJG4EXbPiJXLcDTwbfKupJra5dZEoyKUnolPycICt1haQ7PMsdcMhBxHik0EEeUVVf9uhV318QHgrTPMDK9HI/UzKAEbPbvI4pjBS22rAyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q/drkoEhu7nZh/phzadEOE8Lq+erAnjghyP5VZJ9WY8=;
 b=KeyKQg7sztx0aiVwgD98mkhy5iIrrWO0jWzIFiO+nr5UrjXusjcT9cgZ08TcaLIPg/Mbr9tqdbURjlKyRncXHVjiWv4m2XuKfUYMjpbpDkkAJ8IlK6u4INaY7c1uzsC0DI0m76c+FHli63CQmUPdgV3agjX2HX0AZGXm2jUmtp+AXqhUgdzPqiZeyqsv0GCU47UvqKqOiPhLp9O8Y/m9+LZF3wzvcKZqhHK8PanLIOTaFUwbi/fR2+jxw1Y9pqX5goRPYfo1TGH+4X29DaI3Jaxl9+JQzkDVJBY9XztHWAUEaS9/meVvFv7VvH5S8XFmStNFyqjajiLC9UePBOddlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from DM6PR12MB5520.namprd12.prod.outlook.com (2603:10b6:5:208::9) by
 DM8PR12MB5493.namprd12.prod.outlook.com (2603:10b6:8:3d::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.24; Wed, 1 Dec 2021 18:14:07 +0000
Received: from DM6PR12MB5520.namprd12.prod.outlook.com
 ([fe80::1569:38dd:26fb:bf87]) by DM6PR12MB5520.namprd12.prod.outlook.com
 ([fe80::1569:38dd:26fb:bf87%8]) with mapi id 15.20.4734.024; Wed, 1 Dec 2021
 18:14:07 +0000
Date: Wed, 1 Dec 2021 14:14:06 -0400
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
	Joerg Roedel <jroedel@suse.de>, iommu@lists.linux-foundation.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <20211201181406.GM4670@nvidia.com>
References: <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
 <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com>
 <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com>
 <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com>
 <87mtlkaauo.ffs@tglx>
 <20211201130023.GH4670@nvidia.com>
 <87y2548byw.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87y2548byw.ffs@tglx>
X-ClientProxiedBy: MN2PR11CA0022.namprd11.prod.outlook.com
 (2603:10b6:208:23b::27) To DM6PR12MB5520.namprd12.prod.outlook.com
 (2603:10b6:5:208::9)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by MN2PR11CA0022.namprd11.prod.outlook.com (2603:10b6:208:23b::27) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.22 via Frontend Transport; Wed, 1 Dec 2021 18:14:07 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1msU7K-006VDS-61; Wed, 01 Dec 2021 14:14:06 -0400
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ca816ada-6367-46b2-3b78-08d9b4f65d99
X-MS-TrafficTypeDiagnostic: DM8PR12MB5493:
X-Microsoft-Antispam-PRVS: <DM8PR12MB5493056BBAF18733A1A6D39DC2689@DM8PR12MB5493.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Tooc435HsfvuiFOTgyLmU4UgqNRqIoUN+hYf4bdl50UA/dxldRTzVHZZqBq9zQA5PguVHJDQgVPtbluUUOwnz61zneNqzuFoYTLMzuFBBBe9g21yrwI/8idH1sxFNmOza54aLLCFpGibH/rXS3hETh4rB4DiuOHQi0v1h0xlmnDrXccpWVuHC2Qx//dZ9TEOQwroE0hlug3aoM3BH//I1Al+Eq+AX+XjPJcQjlZDtHZOtBgqL+k3VYNEgE8JnHsYV1SYa4r/MHfF1OhOTXZahbD1n3myKfVlQe25KjI0jp1cGDzs/sDD+Lqr92hn9RSokng0Nco9hr668AIVU6ETt6vV32D3sZHF9AmQuy8moVdWXATPUrRohde1xrbmuLXWvuOQmlm7oHbmkChU9EjNYjAazteU/PHmsHkFweyRMDKU3JqVDdPMHuVkp+vquhFg2VRq4Ux4KFn/wnRjafhQoUAYLUdqyihad15hfvjCE6KVnlMzu3+vfCfttCb9hiJNeLwMJIzC9fIq63u6PFtxyxN7Uom5H7VgM+uOqyoq22PqBZtbEyp2I2x1Eupo3rgCxWUr0/tmofipWVnGUzZ73jVjtTOl38siyVd5t057qPz/NiEkYcyU5Vfyu5CJlh3TiEaNZPX978OhWBCl0Z/0BA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DM6PR12MB5520.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(7416002)(1076003)(426003)(508600001)(316002)(33656002)(9746002)(2906002)(36756003)(66476007)(83380400001)(66556008)(8936002)(6916009)(5660300002)(66946007)(54906003)(4326008)(38100700002)(186003)(2616005)(26005)(9786002)(8676002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?llI5b/lyMhd8gG1ZPmuCIdNISi77mu8IHX+gstCZ0HblnrtRYvgS609dIChy?=
 =?us-ascii?Q?g3IdcVpTnooTpY0+v6L3BRmDkYFCH2+SWdEEOV9BiiUaefz2FWdIiVdhzyy8?=
 =?us-ascii?Q?ZKHUWL6n2T/9du2cbyYEzm7Aft9Hpa10ia3wzP+NrlsJmdWH72ejSI2l8u8W?=
 =?us-ascii?Q?xzPK8TzaNxtjn/r4ShoLi3FXSTrKssFOngQHcttcheBDKWe1I10OEzIuSEBY?=
 =?us-ascii?Q?n+hJb1f7QmZaMpJnCFcwxh81DLXqGxxqptdpvKTWT2E9w/IR4jTiQ2DVE9vw?=
 =?us-ascii?Q?jGXrTrgqw4+OOarrJaI77k5zT114heoEdDIF3XRqSgfE2Kvu1fNbpOXZkGC+?=
 =?us-ascii?Q?sjQmynwzM0POehlw0H3evhEv42vFSvVLwtluqmCiFzBuCmnhudlST3k1sVXF?=
 =?us-ascii?Q?NMph/wrpnHlDasjAIU5r20NcvspaCQHh8Hh+Bp7LA3cm5rtPgR3JKB5BsVu1?=
 =?us-ascii?Q?5tIX81sKFsSIGyhYzm+1kffIi2We3xZOCgfYWKDlKnYzc8CXAGnmYNM1gAqW?=
 =?us-ascii?Q?urNY2IvDCuY52REtZ6J7MkOw3arxaTCjzp2Bx4B2frkuCj0aSPEjMD0oDyqY?=
 =?us-ascii?Q?8VhisZGIS1B8T4TppOcXk1BfxmQFfo9UzTYsA8HHwBUBsA1qF1l1H/WQXJU2?=
 =?us-ascii?Q?uXB9IF/YCIuXKftHB+fa9QJQgnjGxDMixKyYfSFE/9+lFXCUtcA6m1DWOsIV?=
 =?us-ascii?Q?2OnsnBxhlXgYeHG7n9EvaFyHktnc9o5/I+sNXA36OIbGKrQYY10/VJkB0F2N?=
 =?us-ascii?Q?gOLAim4E7dBKCO2IuZtZlJIuZgNztolos3SGM2hhtAFqe5/A9KjMAoI8ygnd?=
 =?us-ascii?Q?a/TQgFAeHEJIHCXsp3fP2YRBjZmN5VDhtM9AQ43H5tsN8d5gv2SkaFtC3QdI?=
 =?us-ascii?Q?3bc017HJ2oTHx2WiVxr6bFHSTUUxlRxUDVTqH2K45bIfwN/oLJ5OotY1O6JA?=
 =?us-ascii?Q?qw2SxhlkU+4wbe5KfOwhMDSC82Xfz56M0xP8k64PZI6M5Xg7ilIGYBZ7ds1L?=
 =?us-ascii?Q?0FNUYJSgqO1+DssnJt/4VH0+mulEftWl/umSaHFx9mnWj4yyiNp0A48ctmb7?=
 =?us-ascii?Q?y0ySGCi7td2yNkinNNy6r8Uv+8LUwr4mUpKJZQPpCk/jU6CxzgNdVD3PbZLH?=
 =?us-ascii?Q?4rgcDExva0ItFCuJ5T3vBfj2qZOQqkLTDY+wwLxVxnGxbQYXgBXVhuzxwPu/?=
 =?us-ascii?Q?6XlslvzKYXzR+toDRG+e6m5yCRLeGRaPO2JY/eIYelprUtT+/KPZ5wRqmDYH?=
 =?us-ascii?Q?hiA/KnbUVzcJw3yy3fTvGZeLrYbd6NZGM80C+CR99tQXO+9d+GiWSaoOlBMJ?=
 =?us-ascii?Q?eR5Tteo2lvD+M2JtoU6e8t4uvdg4oUe/6ggsWJE04RbgjQrwuPwYlN0r2J5x?=
 =?us-ascii?Q?K1oJnKqprF4+jQMxeDGE4KfvIkJIq3DJ47qMjx8hBrvqDydA2mtmsYJuHSbg?=
 =?us-ascii?Q?D41JC98A34UkxL889oTUaZ9qEdRWzqfNCxZnFYJJ/B4a1T/9g+HSifTF3APm?=
 =?us-ascii?Q?wZDdp7JP2dFfS9lvWo1NuVLo9BQxUdvYe2xd9G4kZDUCKKgTKRJNtGvgKIgz?=
 =?us-ascii?Q?t3009p88R2MkoCD2or0=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca816ada-6367-46b2-3b78-08d9b4f65d99
X-MS-Exchange-CrossTenant-AuthSource: DM6PR12MB5520.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2021 18:14:07.6795
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z7b+iAxIE8zKW/3yDHgcto0NrQg8iPaBQx0a0KUbBfcC7PCZdkhXCaG9L9mb+JoR
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR12MB5493
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=g0RP6hNw;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.94.54 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Wed, Dec 01, 2021 at 06:35:35PM +0100, Thomas Gleixner wrote:
> On Wed, Dec 01 2021 at 09:00, Jason Gunthorpe wrote:
> > On Wed, Dec 01, 2021 at 11:16:47AM +0100, Thomas Gleixner wrote:
> >> Looking at the device slices as subdevices with their own struct device
> >> makes a lot of sense from the conceptual level.
> >
> > Except IMS is not just for subdevices, it should be usable for any
> > driver in any case as a general interrupt mechiansm, as you alluded to
> > below about ethernet queues. ntb seems to be the current example of
> > this need..
> 
> But NTB is operating through an abstraction layer and is not a direct
> PCIe device driver.

I'm not sure exactly how NTB seems to be split between switchtec and
the ntb code, but since the ntbd code seems to be doing MMIO touches,
it feels like part of a PCIe driver?

> > IDXD is not so much making device "slices", but virtualizing and
> > sharing a PCI device. The IDXD hardware is multi-queue like the NIC I
> > described and the VFIO driver is simply allocating queues from a PCI
> > device for specific usages and assigning them interrupts.
> 
> Right.
> 
> But what is the representation for that resulting device? Some VFIO
> specific homebrewn muck or something which is based on struct device?

Why is there a device? A queue is a queue, not a device.

If the task is to make some struct device (eg mdev, or cdev, or
whatever) then queues may be allocated to do this, but the queue is
logically a resource handed out by the PCIe driver and there should
not be a requirement to have an external struct device just to create
a queue.

> Right now with VF passthrough, I can see the interrupts which are
> associated to the device.
> 
> How is that going to be with something which is just made up? Does that
> expose it's own msi properties then somewhere hidden in the VFIO layer?

For sysfs, I think all interrupts should be on the PCI directory.

> > There is already a char dev interface that equally allocates queues
> > from the same IDXD device, why shouldn't it be able to access IMS
> > interrupt pools too?
> 
> Why wouldn't it be able to do so?

The only 'struct device' there is a cdev and I really don't think
cdevs should have interrupts. It is a bit hacky as a in-kernel thing
and downright wrong as a sysfs ABI.

> The VFIO driver does not own the irq chip ever. The irq chip is of
> course part of the underlying infrastructure. I never asked for that.

That isn't quite what I ment.. I ment the PCIe driver cannot create
the domain or make use of the irq_chip until the VFIO layer comes
along and provides the struct device. To me this is backwards
layering, the interrupts come from the PCIe layer and should exist
independently from VFIO.

>      When it allocates a slice for whatever usage then it also
>      allocates the IMS interrupts (though the VFIO people want to
>      have only one and do the allocations later on demand).
> 
>      That allocation cannot be part of the PCI/MSIx interrupt
>      domain as we already agreed on.

Yes, it is just an open question of where the new irq_domain need to
reside

>     1) Storage
> 
>        A) Having "subdevices" solves the storage problem nicely and
>           makes everything just fall in place. Even for a purely
>           physical multiqueue device one can argue that each queue is a
>           "subdevice" of the physical device. The fact that we lump them
>           all together today is not an argument against that.

I don't like the idea that queue is a device, that is trying to force
a struct device centric world onto a queue which doesn't really want
it..
 
>        B) Requires extra storage in the PCIe device and extra storage
>           per subdevice, queue to keep track of the interrupts which
>           are associated to it.

Yes

>     2) Exposure of VFIO interrupts via sysfs
> 
>        A) Just works

I would say this is flawed, in sysfs I expect all the interrupts for
the PCIe device to be in the PCIe sysfs, not strewn over subsystem
owned sub-directories.

For instance, today in mlx5, when a subdevice allocates a queue for a
slice (which is modeled as an aux device) the queue's assigned MSI-X
interrupt shows up on the PCIe sysfs, not the aux.

It should be uniform, if I assign a queue a legacy INT, MSI or an IMS
it should show in sysfs in the same way. Leaking this kernel
implementation detail as sysfs ABI does not seem good.

>     3) On demand expansion of the vectors for VFIO
> 
>        A) Just works because the device has an irqdomain assigned.
> 
>        B) Requires extra indirections to do that

Yes.
 
>     4) PASID
> 
>        While an Intel IDXD specific issue, it want's to be solved
>        without any nasty hacks.
> 
>        A) Having a "subdevice" allows to associate the PASID with the
>           underlying struct device which makes IOMMU integration trivial
> 
>        B) Needs some other custom hackery to get that solved

Yes

> > Any possibility that the 'IMS' xarray could be outside the struct
> > device?
> 
> We could, but we really want to keep things tied to devices which is the
> right thing to do.

I see the sysfs issue makes this a poor idea as well, as where would
the sysfs live if there was no struct device?

I'm inclined to think either of your ideas with the xarray are good
directions, primarily because it keeps HW data out of non-HW struct
devices and maintains a consistent sysfs representation for all the
different interrupt allocation methods.

Regards,
Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211201181406.GM4670%40nvidia.com.

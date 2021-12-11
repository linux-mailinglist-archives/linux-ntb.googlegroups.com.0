Return-Path: <linux-ntb+bncBCX27RGNVQNBBYVR2GGQMGQEFVMUNHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F6E471297
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Dec 2021 08:53:07 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id m1-20020ac24281000000b004162863a2fcsf5165395lfh.14
        for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 23:53:07 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639209187; cv=pass;
        d=google.com; s=arc-20160816;
        b=iTYPBnLTuemCHRdaXS77TZil8CrgS6g7O38prmCKcRKS2Vp5eFpA9gzvfFrS+XqG6/
         Ny2RN+1P3TxLnEGKxnOYNWxbkVok5M2aTUGWLUzAOHqsXTNwlq434kz2E5hrjG8I7QNu
         7B64yv8hr2egaT6cGWaeiFxNB/PMyZzPJYwmRFPvIG0Q+jaFxmOUkG2ez28l6LHI4D+U
         J5dtgDKU3gooD9vnhPyjqYVjmvXr6hEUb7qMOjzk/BCdmn6yV0XcrGvBEhyUHV9TuqBK
         qkIH8EpwF2GhgWu6YkYI5GfD/NYKa7ICIJ8YShTplMw/3g8ZZkiyvw7hbRi3d3Jpk5tL
         +09A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=bD/HK2A/VyQdPDbSi251rCUh6AoBE+SYk2CfTTgGm3g=;
        b=TPkf9oxmB4CuUmryeCSe+ituyGnp8vJH6l/TgLl5+rLKsxtvPqUPckX/OW1AHEeM4+
         OOalw2sLwI4feVEJzZIE2LUv7x3SlXiJ4o2gr+CdY5cVv74TBvMBrhM2vYETMP841lop
         E1PQTFBT0WcYtt29e9FSyoxQ8p3LgqXwA2cwm+a7eWXrLsdMu9QB2FyMsTgtLncfvvi9
         U3Q6/mkcKlvTDJHoA+30KanyuXipSQ+sYJn2oVWs0boCAPpI87rsE07ZcigPpHPbxvow
         Gl4I3GJvn26Qs5Qhf1JeaoTD1Zp23bWrFf9Wnk827+mCsqhTZqUiYDwptBybfny3/QsJ
         7Y0g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=Fk2EpkVe;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=YX9sFO1+;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bD/HK2A/VyQdPDbSi251rCUh6AoBE+SYk2CfTTgGm3g=;
        b=bNzN8dTwtp/DvW/TC5xILEd2QHG8V9lJLrtbQ8LG0pFYrIjkFdu41gQBh61QHEZ7kt
         pzLECraT6swI1C0dMMvpwRMpYnPy/djf/DsuEr2urRpx49L4awGYFrs72owssfGTMeQu
         8VYkkwyHvaKIF4pGS/S8a+S89QFNrY/lvPtxwwRZblCEsTcwzk4EBb3PSiupyEMM6VIm
         T1fHlYjXcq6wZu6wpt3GXPs11Pkq93gSg2w/EBwEZtUwrXbYatL3yW+CuhWl8TnGg+QI
         2wlAH2htkDDezQlni8J4ftcnu1hD/D0AF7nWDZTPuoffULBR6U0DxFXCtl561URhxeQu
         vdHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bD/HK2A/VyQdPDbSi251rCUh6AoBE+SYk2CfTTgGm3g=;
        b=lcMPYt6Y1WrqUZlMEEKUkLt2/LOOzsYCpb+JV4TV7l3nPd1rFVfv5qxV1Z7IUUsV2j
         de1ccQeL0eyGmwInVqca4iHVLlMOodREr1LmFf2V0oU8CGtnjYM4W4yyTmQ/pJkm7x4+
         2kccjmRZsr1goNjiGCkakb8S2Jk4SNUdbDr3mo5HzQIdGS9B0Ei7i2j64WFIYJOVX3Ki
         E4ViwoSk3whpH/0A3TezuttxhdK6DOw06Aqs0syvsAFHoGNo3xa1F2McRG5gMBM+s8oq
         uvXBrOvaOhaGbT8/TNE1ZK9Y2VA7giccU/2pwfQh0aLDnnw9VX+BUZdQBTzLWle77juP
         0KUw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530EP42oG32fSfnMj7+pD9z80du5wz5j65WN3CAjWcxEeXm6KQw0
	xC5DUrWpCymBRFkK499WjHU=
X-Google-Smtp-Source: ABdhPJyhrTTE6esdd6IBUiT4AdEDkCtKCl0ts2CbGPFpjSOsdN2iQmueWRQA0c7Kb7n5c3SadJyPsQ==
X-Received: by 2002:ac2:4215:: with SMTP id y21mr16616588lfh.526.1639209186688;
        Fri, 10 Dec 2021 23:53:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3b9c:: with SMTP id g28ls1146224lfv.3.gmail; Fri,
 10 Dec 2021 23:53:05 -0800 (PST)
X-Received: by 2002:a05:6512:39d6:: with SMTP id k22mr17316320lfu.559.1639209185895;
        Fri, 10 Dec 2021 23:53:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639209185; cv=pass;
        d=google.com; s=arc-20160816;
        b=NHY73EfnydSADaorzYOgUeb0h/4LzDTqCmkP+BoCjKvhqddP556LteffiO7f40ks6u
         UwigbHOjDyfS6auOCDTbYxF36lbzpjrS0fAomYl1yxgyzLI8YW9GwgBMVOG4Sbf5PWqn
         h4kfXJ+0keX1RKjB97uG9d2PrOuU4e6e+Fb8CZ+xf6XOc6rzwyYWk+ZjjbX57K6vaeg4
         q0u1QyrxJ2lL3pKBm5LJqa83+xBtd6Ld6kfHpAsDz9a8RoxrlY5wUU1iluOo7YtsAmLU
         zBEzhTzEQMgHc31UBqVNiMB2BvJnGisze4vzGGyMZ6IqfRQLpW0Hus05koNCibo0oe+Y
         rSWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=zcOUEDtikxKATapfuQyPykxdlw2CP9C0eeguOeaOVmI=;
        b=FjgOmTrG/tdq7wjvPuaSRADvDGoyKd1S7MMYFiCgL/ZgJcW6LI9AAlzv+0XJY6FjPn
         bTegs3AzVtLBtVnniPEKuU3EOZXE17LqXGN90Qb8WT5DWXKWwpw4GvPHJ5Y7mcSDQ52O
         Nd8OK+CvDLwlQAhsbwDhMp2dm6qb2DuAgwvOzcR9Vko3XyL4eBKF1042XyWNYRu0ej/U
         vChDKuA/mx2frY3g78ngTOXQNkTj5qUqMqmOqnP8Sh+43dJkBYkIrxQK+UIYVFKS+Uvy
         yuY0UVACorCst++T2Cw9XnLb+NKBcdJ+X90VFZkz6Oi4RWh4zEfhMyUVf2pfTpEVR8cK
         KceQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=Fk2EpkVe;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=YX9sFO1+;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id f11si291227lfv.6.2021.12.10.23.53.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Dec 2021 23:53:05 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="299302234"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; 
   d="scan'208";a="299302234"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Dec 2021 23:53:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; 
   d="scan'208";a="681020011"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by orsmga005.jf.intel.com with ESMTP; 10 Dec 2021 23:53:02 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 10 Dec 2021 23:53:02 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 10 Dec 2021 23:53:02 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 10 Dec 2021 23:53:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gWks90c0U0z9os1rsrNyLuhbgMdtapQoloDIBQT9ukg97v5QYPrdgImg09LZY7I9PwbPd3AljoJENPcCjH2UI3cYCOAlPDY+e6UwM3wos64CnneptnUsQuxqgElqFgovXUTJOfaCs3mSz7gXGgfWqf1rl9aXQZtZWeLSdKq1M4IAZ72h4ddmHQfSnjlpmIhvZwYmrauUFy6ss3D8wqb1DksasLCkVugwHG7EGKLg+zZ0GDmm+5N95GWzwSCY0N+R8B9/UL7eKJbaB+J1EnPZ2vQ6mlsToHjYKAML/3JgZ5eD1EwdzsYRi1h38u0xrU62JjasDUxwJcvKRdep71TyLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zcOUEDtikxKATapfuQyPykxdlw2CP9C0eeguOeaOVmI=;
 b=TSPSG0k3TutSN100o3RPvvKGvCdSISglq2FPRm/WEj8WWEsnWm1G2em5dy48SOJKImEMtaUkLIMpryc3rnIwHL9m6k9tmWkQpkw3nVQOYoUEfNLfaWdnfXJYZQf9uNOpTquIHHnM3X7Hm0fOqWr/9jIm9DKeRx5qBA1RbC8ebHLeruOukEuMY3dJfHCsXvqBX2csutK0HxU0QvaS+xTOuf70H0ujG+nvhfdWh/w+aXRkiD0nG50gTuhtwA7HSb0Vq+GfuP4n2GoDuea47SLzNcYqRiDH3E1IKMttlrdGkx4s80hd9TFljHzhcHGcVjXGx54g6VX2y1ZI+Cu0aXaykg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BN6PR11MB3860.namprd11.prod.outlook.com (2603:10b6:405:77::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.20; Sat, 11 Dec
 2021 07:52:59 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04%2]) with mapi id 15.20.4755.016; Sat, 11 Dec 2021
 07:52:59 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
CC: Thomas Gleixner <tglx@linutronix.de>, "Jiang, Dave"
	<dave.jiang@intel.com>, Logan Gunthorpe <logang@deltatee.com>, LKML
	<linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, "Marc
 Zygnier" <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
	"Dey, Megha" <megha.dey@intel.com>, "Raj, Ashok" <ashok.raj@intel.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, Allen Hubbe
	<allenbh@gmail.com>, "linux-ntb@googlegroups.com"
	<linux-ntb@googlegroups.com>, "linux-s390@vger.kernel.org"
	<linux-s390@vger.kernel.org>, Heiko Carstens <hca@linux.ibm.com>, "Christian
 Borntraeger" <borntraeger@de.ibm.com>, "x86@kernel.org" <x86@kernel.org>,
	Joerg Roedel <jroedel@suse.de>, "iommu@lists.linux-foundation.org"
	<iommu@lists.linux-foundation.org>
Subject: RE: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Thread-Topic: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgABn9QCAACTxgIAAAdGAgAAbd4CAAA94gIAABpSAgAt9SoCAADlJAIAAgb+AgABGMACAAAc8gIAAE+oAgAAmHACAAFJ4oIAAem8AgAE/1RA=
Date: Sat, 11 Dec 2021 07:52:59 +0000
Message-ID: <BN9PR11MB5276B2584F928B4BFD4573428C729@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com>
In-Reply-To: <20211210123938.GF6385@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f28959de-a94f-486d-b0b5-08d9bc7b4073
x-ms-traffictypediagnostic: BN6PR11MB3860:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB3860E84DD738E410C46707F28C729@BN6PR11MB3860.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: prIbr7vcPYzlPoeu+80Qw/FpM4qCUIIljh05j3L75rtThQkCwux2Fbrlsl7F+hBfUxhSlc0U70M1exW67BQiCg4fFAhHBw/auvImgZvNrYQ7ndXemBEqAPiyOwN8UoEWYmRAHfqc19kAEuIfKrdUoXe4sN108czQhSt0XvHvmL+uVQuSLtOJ8gg9hvPRSMFXYFkI8QtmH5qlVaiN9lczhHa46luDyq6Z1zH8COagQgtez69zKV/CK87ogEGT3bW4pByoBsDFVOsr5G8oDBss3KXj44h8q5rowL7oFTYfRFXwbUQOdDXBeB+4bYV6HO1nCYqI/gK4YE1k01nvMmSZ9DcZFskBm4JRwAegZwwaKKp5xYu2BfazCeQWFkia6n4V45BsLLiddtSdTQuVlnJsyq1aSOP/duZWHedU9PGoGNDAQZyVTQ9BGDdqTaUNm2tXjEUYWbFD5wmeL5trF1TEp72GoCGmccU1/OEwlhtTQcw+izIJ0AAGBtdW6bBwRC4/SgN/8HI0ljlsRXpEMYF/MHM5Fy1G/cIsZaz3rh1b2oXgPurkDDxJwuz6AeLExpyQuHNiQS2lava+MS0WgFgImgKSYs3aDAcifVTriNMcp8yfLD1vatHHuuD4+AbTvT/7GE43+e4zCZf5h7n/+a7Q+pHNOCaXL8SkWtehi+5FDQDR43cydUtvGLRBflTJFEbuV8mKzFKPXEfuIrCh1ULV4w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66476007)(54906003)(33656002)(86362001)(64756008)(66446008)(55016003)(7416002)(66556008)(38100700002)(52536014)(76116006)(66946007)(186003)(122000001)(508600001)(71200400001)(4326008)(9686003)(8676002)(26005)(6506007)(316002)(82960400001)(38070700005)(2906002)(6916009)(5660300002)(8936002)(7696005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f1eOO76T/evD/DN8ZkMUIqzFFqfVGVq9ths4MAAPgcXAddMcXCDHrovKfTJr?=
 =?us-ascii?Q?/rVJdoFV8Q+miurzd5hbhl4yFmRQSmFZbN6nG4qTQC9T+kfLuStEOgSHbuh5?=
 =?us-ascii?Q?oeG5IN38lizm4jcj/bnF41cYVNo3rf8iMJUorFydQttz9lMEOkqLJkyfUxFG?=
 =?us-ascii?Q?6hvQnudptOB+i2L/UulauClMxVndmdlksX1oQtlSurmD4MXLr1KIOUJsvSIm?=
 =?us-ascii?Q?OnQLYHxxebL5OQCAEZSvJXFwCBI5XYApn0OE3U9K51InAAD6T13aSg4N6z7D?=
 =?us-ascii?Q?0KohewMNN3Xk5K2cdMVHR84ZRr4ZgTuKuV+r2/pe4/+NUV2oINoTr1nO3Fy5?=
 =?us-ascii?Q?SniAWDxLVEtcWKjzell14UPRwECVRRlAa+uvmGFH1HgDS5TUQ9ZktDfmj2Dw?=
 =?us-ascii?Q?jtDlHizjdi1wMQ4mZlS8SNbdsT0lhz4uhnUnNAtxXXEoDQutQAjrKo5lhYwp?=
 =?us-ascii?Q?JMH2JAllVYSBZJFjGmnRQ3jMS06l+DHc18YyJ+TD1kzR4+mK5qckBL5FXKQ6?=
 =?us-ascii?Q?feDWkvdX+ztjcoYY8KKcEZDJq9/QLgfTeauBpq7i3U9b5pR4DY/Jl/ejsXkB?=
 =?us-ascii?Q?ihBKZSKr2AyfydkXz190EwRPFh/CXzNF1hUasaviv+ZQGupQ1Q+F5mWdBnIL?=
 =?us-ascii?Q?GLmrsQadA/Dm/eWFUFF0z83PJuk1ZsV6wOWdKrDQTz2VeovkGW9Iujvv61/U?=
 =?us-ascii?Q?W0Y4NZIZbfJ/7r+zSVDtCm4xEYLChFC2cHCKhhItSJDvKGTkyFYTwRFbQuzi?=
 =?us-ascii?Q?7SgMC5/blGWkISEGg4BAxZwMs2vUM2Dbr7F7xbEd+XDl814TEcK20XosIV6c?=
 =?us-ascii?Q?EPbsSGX4KgBJeY+4gohhJ5RUDCJN/Tyvap0/DbxiFaj0fbLpgLnQOhjxeXvE?=
 =?us-ascii?Q?JfSt0XLjLF8dRf5iOSsLpDD9P4k2y7II3OKUvmChUPUm/2/RimoCwHAgaGOG?=
 =?us-ascii?Q?L7XMGq0OiOPSdOW//E3/ro35MpMiPEEsfI7fi1n9lfQCtrvKkftBvVcLVRqN?=
 =?us-ascii?Q?HPpetiODQXEuQonqOkikyKpOnHerVM+qQ/A/zlSFZ7bQ8SKUNn0X+/f5kG/w?=
 =?us-ascii?Q?zTfsp2K34oPEjTIab5OSZQ28ytkBRxLdpt8HjITswot5ZSlN7nBx6NLN+Q1g?=
 =?us-ascii?Q?aW5Jb1chvJgZFikbEAH5S4edGzU3x0sCBoHYkjEN7W6IZQs8uvQyvGDjah/7?=
 =?us-ascii?Q?Ca69aZRSjLjkOHNqq8JKX5AiyUVjw44J0aEnxeMe+SllDN/RNKi8LnG+MTbH?=
 =?us-ascii?Q?VzYln/7bDb7heuCvZqeQqVSPnt7UKqwZRMuVORuuZxeBd/xiS5d7SVoVkxtT?=
 =?us-ascii?Q?zaIHCjmTZ4jkbeqVgUCMruMVl8b6/KZkK4m+Vdua9KbeurhuVEp7RAy45ZnH?=
 =?us-ascii?Q?YUr8W+/tYVXFc9V8ImSCVsVRgT+2OMsXj1EDmttbPMf+gcCnUOg8SxxsPMep?=
 =?us-ascii?Q?K0rLTss5gOyVLq/4yvpTFhD6B6XLr4JgpjkK4UDxTctYQUDRYayAallS4FvD?=
 =?us-ascii?Q?NmRSQlPfq7KYRZvUFJp9kH8vKt+8rwFBdWfdoWKxrquhcyrtUM/SH5jfWTDg?=
 =?us-ascii?Q?vjUw+POu7a+azAbigv06g4GgSZdVDwTlUD7vnQlTaRiiBIxHuC1VVyrtoBZq?=
 =?us-ascii?Q?Ag=3D=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f28959de-a94f-486d-b0b5-08d9bc7b4073
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2021 07:52:59.6266
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TfkaBKHcM9RCCkfJf+mjfXy3FiKFR9h0uYeU8+xHigwv/zCMi38XXQmGvHGX4Aq0yjOmv7PSymYmwrprE/mJFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB3860
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=Fk2EpkVe;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=YX9sFO1+;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of kevin.tian@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=kevin.tian@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

> From: Jason Gunthorpe <jgg@nvidia.com>
> Sent: Friday, December 10, 2021 8:40 PM
> 
> 
> > Then Qemu needs to find out the GSI number for the vIRTE handle.
> > Again Qemu doesn't have such information since it doesn't know
> > which MSI[-X] entry points to this handle due to no trap.
> 
> No this is already going wrong. qemu *cannot* know the MSI information
> because there is no MSI information for IMS.

I haven't thought of IMS at this step. The IR approach applies to
all types of interrupt storages, thus I'm more interested in how it
affect the storages which are already virtualized today (MSI[-X] 
in my thought practice).

> 
> All qemu should get is the origin device information and data about
> how the guest wants the interrupt setup.

yes, this is what I concluded in previous mail. The hypercall should
provide those information to the host and then get addr/data pair
back from the host.

> 
> Forget about guests and all of this complexity, design how to make
> VFIO work with IMS in pure userspace like DPDK.
> 
> We must have a VFIO ioctl to acquire a addr/data pair and link it to
> an event fd.

No question on it. Still need more thought down this road.

Thanks
Kevin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN9PR11MB5276B2584F928B4BFD4573428C729%40BN9PR11MB5276.namprd11.prod.outlook.com.

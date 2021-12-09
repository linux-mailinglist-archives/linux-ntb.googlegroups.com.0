Return-Path: <linux-ntb+bncBCX27RGNVQNBBAFOY2GQMGQER4RFZSA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC7C46E20F
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 06:41:20 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id a64-20020a1c7f43000000b003335e5dc26bsf2575898wmd.8
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Dec 2021 21:41:20 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639028480; cv=pass;
        d=google.com; s=arc-20160816;
        b=B4lZ2fT8Lkjr/EYhY23cHFW8FoqjlVBqUQN23HajSojABzn5qkiuuf0hp6xXA4tDi4
         jCtAPMapk7sQ8eNx8Al7yWmz488SebwqbqwqiJEyOSkva4f3egAvHvvyaXxiz/CyItBo
         BGDOcEUgSfCDDcC8Kvd+pxWA2NsrUEygSegF0kUPTjw6EarTlu0VLXwX6MJ1XJyvBWNV
         XHHrVDA6sa4lfZesZ4Qhq7MlHpPHnTKGfl0Wyx6yjglIHjZKAFhiUQLutw+kx8b+UM9V
         //AWsFcfykiZ54IzvfPbtpWIYUYWaDjvsIRw6D5Re5QHHq+TilPHAMYd1MBMT5g79SjH
         veJw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=AwccuVT0m032rdr9+V7mbWYKYlkbijWHIj9bXAEHeuk=;
        b=iI6ytCL3y7jyZ5f8FQ3QNxVYbXXxoDGYXNKnRPFJsPY8UUmMjdkGbqIZJbLjpOSNQ/
         uRfwRcLAgEXmlM/4/z1hnvq2y3eTTlk52tu/v+DCM8UH5Lbl2oeXT7BnvQe1q5BwC+g8
         CslZWyWQOPhHWzq0ovMwqbwc9ILWcHcJcUF7AWA7qhkApYZKf6wt5hSLpgfQileWyxc8
         0FYhHW/Zb7i4b4GJjDiRIv9PAJ3zBzf19SV6xzkgq7s5sLcPpjZrS5AT4Gph0IJmeosH
         SmoGI63qulGTPBSaOaE80E9NSlYDyYzhbBcOT2jpwRDf97QZr2zbNvZ1AHbMo+qwP+bu
         YLcA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=UfakHODk;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b="uDzm8o/V";
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AwccuVT0m032rdr9+V7mbWYKYlkbijWHIj9bXAEHeuk=;
        b=MjQt+Ybg/vIHRSsE/jmraXczf63nH06Q0IAXnnDjJ/8A6Cn+z+b9P91U9ogBnrZEGk
         +R3nVfVcRMBtu6qMrqlN1zLjoScO4Yd4y8xei9l9BpGVe/39z+AMzkyxncqUvtsgqq1g
         wBV/vr0JztL4p5hS9tXjVnKcbiOiFJGEg/2PkP4aYwQDvzGAF0Yq47gH3EQ+2JiMCYMo
         c3aNV4R14FxtLGhJL+hxvVPkXQxJeFu98BvQn1z4jesNf8SwrPt5rx54XGIYKB1UO70E
         cljuW8bLAh/mSNd0jHD6U3qtxrmQUTu92CnaNDY1QnsOGLfEJbjP5BeP/MFzn30njLIf
         KtmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AwccuVT0m032rdr9+V7mbWYKYlkbijWHIj9bXAEHeuk=;
        b=KPYD7mzvkU6iEMl/vpflqUKUjwoS+nHXvDOEcR9IKz+aIQlaGl9zFuAmKn8F8Dwatm
         bu9iBB2Q0EytFw/er+5GFdzV4HOpmYHJiAkUUoYA7CYU3UmkSnz3M6hVYmnDJ38Ws7yd
         b7S5W+qnmrY70pij+wIXV+5RWskO0cyQl4l/FpHvsTW7XIrm+BwDfgmJliiuVVZUHHUl
         GTaEFHNvJDCnv962lqoH54uPIlnW8JlYxQoXwEq04cTlY8NtDnbDplQLXZyuIbasbevY
         0jI7FO1J6d2Ojccw8FJGzktZwQLVvdEV1a8zNn8xQfQVwwLOHnKTCnScYk56J1V+0QPa
         XX5w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531sxMh74dHyxClzYM6NiFd7LpcfMxa9PnTtjZzmuqrL7Yl8Whmg
	1eWtHpFDG/tGmbvJvPmJJjs=
X-Google-Smtp-Source: ABdhPJx4NqK6/F2OeZ6EDEhBjNy0dXlYQzDK2aBHevlNqBB+qEWKIPbMAufaBuLQbe9Wn3s9Xb3GmA==
X-Received: by 2002:a7b:c157:: with SMTP id z23mr4386574wmi.113.1639028480327;
        Wed, 08 Dec 2021 21:41:20 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f885:: with SMTP id u5ls2700026wrp.3.gmail; Wed, 08 Dec
 2021 21:41:19 -0800 (PST)
X-Received: by 2002:adf:a1d4:: with SMTP id v20mr3875372wrv.190.1639028479483;
        Wed, 08 Dec 2021 21:41:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639028479; cv=pass;
        d=google.com; s=arc-20160816;
        b=YorYaNw6WqByUxH+q5ALxkIEAmi3IeAVfZiYhRDUtcPD2Gh/Xec0ExlpbDFll9n+kU
         54kMyUrg5Roi93ZEUmPZD4SbPwAs5tnADXLzO1zUYYylO1O/cBc9rL3d1Ns3RJZQwj0k
         QtmKb0pBExq98Kq74ixxFv/9hAp/mT/ZhaADjl1TduDk1y9swCrxDZnrjrpJ6fBwjR3x
         D5ewoEZAV7GmfSkiQB7VsKJWIiQJ98QhUyumxITFAMlKrBhOUgT8ixnTPh9K7npmSVPF
         d6EO/cMW0TrwYd6fnm/c/m7Wqxwo9nUUn73DcmvK+NWMKTgbRBIb2FIciv/LvJUPTFpS
         ExXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=v+PP1ZNU8Zy98NMnAYiLpMU2Mcvyja7AivmpWBaYBVw=;
        b=kvqNDGn6bbQpSgMTYJ/wcS9AUYgqBr1uiGrr7RssN8NGkr7rQ6yW5htbRb4PFErnmB
         rT16YzocfBbGmlrWX5+cHbC3jGYWmkDjLLEYFCNioUYTyJXXQxYW3GBahsnuTsXu/7rq
         De3ut1HVCdTh+dHJjKeu8xKVsNNtArrBveD+jF8ZgTIqpQYawKuZ6wp4FnHTvv+oletg
         2dLKap6ROcrtYMwiURWv2m+EojS9MnBPqcFzEgbRAFjbN7rEet0i6NBx4qHDGGfzVLjM
         9qsUgBH3NVEK+vq0mY0NcAgO8jRs3YYKUwKGuAp0RY9zhPyAFn8Bn9v9oUfy6cmgBFsT
         eX+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=UfakHODk;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b="uDzm8o/V";
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id s138si507536wme.1.2021.12.08.21.41.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Dec 2021 21:41:19 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="236759451"
X-IronPort-AV: E=Sophos;i="5.88,191,1635231600"; 
   d="scan'208";a="236759451"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2021 21:41:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,191,1635231600"; 
   d="scan'208";a="606727926"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
  by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2021 21:41:17 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 21:41:16 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 21:41:16 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 21:41:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oNOzoORFO6N/Tz1u9nPlnKjlfWx6QZdI9IubC6kHIY01Y64d7c4INfvHPoHsiiAbIcB7jkWmj158ibvgrAJfTG0Yys4+7ibh49bpnlyOH3zCoHnasyNoeZiGDZDdRGPJPhTRO3sB5Rpq7O9JWFXdSJW59H99za5RzOYR8zS99HwnW9bWn9Q+du0dLXATrd3qT8wh3J3PXPnJf91yqjwpLUhuC2ZtNFy6AoNTqrK3tNPQcTeN4vBMI6Ide1Vv9Lo3VIRuQFrqAbn3CGX0dAzzMnj8koxor5Jv5XR+5L0XFRLOiRZQBWzQn8CxWArn7ahWCOUS5puveKGsvUDV2MTpTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v+PP1ZNU8Zy98NMnAYiLpMU2Mcvyja7AivmpWBaYBVw=;
 b=dC2z46+/eCkOljvJCEalaRQKxyksBIUP9FrbYnsAsAPTJSJw+NznNbW1qpn7Nd7yOVzMjVokI88/c0i3q/0yMJxMD8S213KHdK+2mWilgSRY4MIkOv0+gNUbKB8SdejH2gV2kChSipUOqPhsbqweoTb8K1yn42zBsZQn2Qd6HijcP5sfJpVU9E18UAIsTwDPadcvNFtRErd4PXAavB5O6hLdxWflz8d58fSV7oCnot6iUxGrErxXucaGdmALnSCnPbr8Don4kcQTKBozY5MOiRzx4yTLDFKumX1A8kZ8Uy7l/OqHiPUQnfZDWqkUpC/SizDhWvj5vaEG593Rm4J+MA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BN6PR11MB1315.namprd11.prod.outlook.com (2603:10b6:404:49::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.12; Thu, 9 Dec
 2021 05:41:14 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04%2]) with mapi id 15.20.4755.016; Thu, 9 Dec 2021
 05:41:14 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Thomas Gleixner <tglx@linutronix.de>
CC: Logan Gunthorpe <logang@deltatee.com>, LKML
	<linux-kernel@vger.kernel.org>, Bjorn Helgaas <helgaas@kernel.org>, "Marc
 Zygnier" <maz@kernel.org>, Alex Williamson <alex.williamson@redhat.com>,
	"Dey, Megha" <megha.dey@intel.com>, "Raj, Ashok" <ashok.raj@intel.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>, Jon Mason <jdmason@kudzu.us>, "Jiang, Dave"
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, Heiko Carstens
	<hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
	"x86@kernel.org" <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
	"iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: RE: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Thread-Topic: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgAAttoCAAEzjgIAACsMAgAAjl4CAAD2IAIAA6NQAgApo/UA=
Date: Thu, 9 Dec 2021 05:41:14 +0000
Message-ID: <BN9PR11MB527696C0E8D08680FFFB6BAB8C709@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <87v909bf2k.ffs@tglx> <20211130202800.GE4670@nvidia.com>
 <87o861banv.ffs@tglx> <20211201001748.GF4670@nvidia.com>
 <87mtlkaauo.ffs@tglx> <20211201130023.GH4670@nvidia.com>
 <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com>
In-Reply-To: <20211202135502.GP4670@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 01461389-5de6-4068-f2cd-08d9bad683ad
x-ms-traffictypediagnostic: BN6PR11MB1315:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB1315647B552D5FAD0902415E8C709@BN6PR11MB1315.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: avLkqsrKonm7Ggw9tVhhrdFmzJ1IUuXDpvTxR99ye71j3SwB20/Q1osjUcbHo2fV0eAW91TT1cSJbZQn9RFxXIoen5zxTQVQ6y554lK4/iJ5dYXHj6uzzHL7h8oSqy8esQi3Cw2Ex6t1uTU7sUU4erDXxK3C8zhIb5LtixfBZ1xHNz4xVx1l80femxrLml9EgsPAIZfhrYiF+zG+BCXEntUfpF6g++RGV1WDVOhgI4TMLSREvg4D/tpAu/V0VvJDWXPJZ+DUTRsrhLy3OtbcwMoMxjkr6ZCxg0OTWFP5gLAB3Hcnpy47npcQ/BP5NcGYBW4NdwrZbaWC3VhHlPozD3pjV4+rk2ozRDVNJy3N5aEKXT45NkSNFNioUOQaa5KSGj54yPplngO9JXH5SaN1nkhpcYrB/CfVmNd/meNG5b7FASkGJmg2Pu/LqZTu1oJyDrNFhkAxmaXZt7vGm7eChNFnpE4KfAVaYMjRj4PhqHw4zZr1qktN32PyFKn1ZFMjQyXivrWLuPTt2wlqB3DZR03hcPtbQ3k8GGArbpOJxs+vY5u8kvzDGl3ywK8LRRgldWX2LDfcntjSH+hBhRD6uRxG8E3AxjJ9twJi+81nwe8lr8KoQpPgsZQN4LIi1LWA4v/5ayer2UTOQ582mbTIBBd0e1iDyb+h4II3IyxwUBcSP0xzfrjy5pG/zAPXL/Yq/u60qS9w+cX78nI0tJhy0A==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(82960400001)(9686003)(8936002)(508600001)(7416002)(8676002)(38100700002)(38070700005)(2906002)(122000001)(110136005)(54906003)(76116006)(4326008)(55016003)(26005)(6506007)(7696005)(316002)(83380400001)(5660300002)(86362001)(64756008)(71200400001)(66476007)(33656002)(66446008)(66556008)(4744005)(186003)(52536014)(66946007);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?rUwuOavsESzpU1yGBdqIOajt5sUiZhTWCNYj9OXn2GH8ukgPBL1gVBF4NV3p?=
 =?us-ascii?Q?RbtBQyYNWA7xMEnvX8JhJApm8l70UXyZxOz/Xtlyv+GDxUOKqXWV/wnmFd1C?=
 =?us-ascii?Q?d2WHoRpbHhC/w91cS+NfaH7KWPy89XSNPS2sjpXnmYO53AydafpHEPii/RlO?=
 =?us-ascii?Q?MsDQ6snAAOi230aMGk7hs0M4WQj2NBhAUhzr+Gq06k35KMVu33/B/CXaB4yp?=
 =?us-ascii?Q?/gwZH21bNdA9aqaLVQ7DR5bz43/sbpcKD4fQKTmTYtF2tWbMHgMDMZJXPm0h?=
 =?us-ascii?Q?j0oMGefUp1O/F/UTHzJjIHD1QX4t+EG5fvk6D/Lt09+mAw+gtoPVDwfLP6rN?=
 =?us-ascii?Q?eD4uL/bVssKIfC6pizCE4xNpmvJXaFAnT6D56zm3M0ybl8zyzmekF/W7E+AS?=
 =?us-ascii?Q?nqOcVZEcalureOOpxr+GudGOPGj8NRPlldQ2sd6jw45mJOSraEYAMRQFrDlb?=
 =?us-ascii?Q?KuC8MiqmbtkQVD+SyENeRU6eCHQWMy2HwjPikaSUn4DM43xfwzmM1MMgFvFl?=
 =?us-ascii?Q?HSAhT1D56AgTVbLCDp8D/iaDkzlm0cb9q2T1wyEWEYddXz5odcWpU9Z8NaEG?=
 =?us-ascii?Q?kTHZX2m463dQaNLlCqz45hqv7HpGSzznXvIQxooVTA88esGKX/Vwz60+BFJi?=
 =?us-ascii?Q?udKdSP6GyEwFvNINzlKs1horuWMT6P1qoo+xP02JsR56hpOxhHrfxRRnNfvR?=
 =?us-ascii?Q?tDGu5Rd/2JdK5ELHTE98cNr4DyLstOoppuVnkFJl/jl+UWETWw4PmNw1kalX?=
 =?us-ascii?Q?FeNlD77Mq3+iH0Gq62PlmgK2yCvDBSOpET/TUys7yIEniWxfaUlFWOkqPSP4?=
 =?us-ascii?Q?6zVpcjXusCXuQ7bp6B9ZfJbzL6vo75DZJLWXvG+jfcRTjorhefSIDsCPKEFU?=
 =?us-ascii?Q?BdHt5bvsTX0wnmdzNN8dsIFY2PqBTL06Y97Q//D2DU55lJAYGE6nG4k4tgXy?=
 =?us-ascii?Q?kRgxrnbPbG6huWJXBqY8+uGp3ll8fOZIPauCx3gCGgWOLSBWNFDt1aVa1M8T?=
 =?us-ascii?Q?oZUZ3+juzL+Sp4CQXqx2JH6z5AJpIPeaM3nd1hOtxwITT0lczMdkaeNlMal+?=
 =?us-ascii?Q?BTqa/NmMh6XO72XvemcSm7yAbsKursRU+plLR8iue6iCPK0oGXI/rm72I/0W?=
 =?us-ascii?Q?PMcW9g3o4JkYtFwkb/qWlm/EhBTXehXwrJ7EKfc27UPRKgmcsWdKzS3HDPkL?=
 =?us-ascii?Q?++/UudjXZxkoYBhbixQWQ18gfBpLR0Rd/sdIzDoO4IJCnf6iqLRactOBJruY?=
 =?us-ascii?Q?26KDAXIoGmlVNJjInEQz0bhEBq12kS9jufyqE4+WDotaW1YGmk3LFW5xLrw8?=
 =?us-ascii?Q?mWDu+PajSYiBaCC5XXH6lSD3l6RTON9L1N0hZeBfKbkBKVYnCIgu3xMyeUal?=
 =?us-ascii?Q?3YUt3Za091XqkeAxNL5U32aEs/A0aPIiM5PRjqZyP+HihlkANr1o+pbRizE5?=
 =?us-ascii?Q?dPRIgTN8rW8wM5V8jHbFUdkGZGVJWvFx+LX00dDyHcZ0wvfPC/q+AksyYELr?=
 =?us-ascii?Q?rzftDOPpdkd5ZiqLHVMaxcVx3XrAjNc0LtyOtnVmrfxEIFiSzMiumLsfVzk1?=
 =?us-ascii?Q?AJyjYH13xi2T/BzSJyRnAfqo5bSsZDWLbHSkfozZVUHgWMWQZvFXeJttToWY?=
 =?us-ascii?Q?Orvy2B7xQeQ/HM/8EqZjmUg=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 01461389-5de6-4068-f2cd-08d9bad683ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2021 05:41:14.3224
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tPVsc4lMbajwCQVXJeZYGiCpJQDQjQ5jvUsRc48JpsT/W7C0mbLdn0yy998zYMADYmOHV4uAtQwFIIM9KrV4PQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1315
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=UfakHODk;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b="uDzm8o/V";       arc=pass (i=1 spf=pass spfdomain=intel.com
 dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of kevin.tian@intel.com designates 192.55.52.120 as
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
> Sent: Thursday, December 2, 2021 9:55 PM
> 
> Further, there is no reason why IMS should be reserved exclusively for
> VFIO! 

This is correct. Just as what you agreed with Thomas, the only difference
between IMS and MSI is on where the messages are stored. Physically 
it is unreasonable for the HW to check whether an interrupt is used for
a specific software usage (e.g. virtualization) since it doesn't have such
knowledge. At most an entry is associated to PASID, but again the PASID
can be used anywhere.

The wording in current IDXD spec is not clear on this part. We'll talk to 
the spec owner to have it fixed.

Thanks
Kevin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN9PR11MB527696C0E8D08680FFFB6BAB8C709%40BN9PR11MB5276.namprd11.prod.outlook.com.

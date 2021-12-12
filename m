Return-Path: <linux-ntb+bncBCN77QHK3UIBBLMP3KGQMGQEOZT3UEA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF8A471ED1
	for <lists+linux-ntb@lfdr.de>; Mon, 13 Dec 2021 00:37:18 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id gf15-20020a17090ac7cf00b001a9a31687d0sf8201857pjb.1
        for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 15:37:18 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639352237; cv=pass;
        d=google.com; s=arc-20160816;
        b=e3OZDSFVLYbg4J3bYxuYQPEYaqINHB6lUiaGoA88h+jFYBhb5CeuAbC4fc4OVu5oWC
         /FwCGSWUnDP7l9NkSWPkWm6W4ZGKEH7QXoT0+7YrgbbAnRg4b39crxLU9+cmp7NFB0iJ
         uQQvqwuS1Zxlct/hWjAw3bWj6nwfL9o73DhucfOqfOpTm/Jc4s02hnlVZ0qO9+5AV1JS
         F0cpeqkhTLC3kIG5bkTEAt7XpGsIeVlPq8Ep8wZg/gJsVACqFuGo3uuanfjrDJvw8ubR
         0x65lk3d8O4jxwLuDft4IvowrfBGcuce36HtSIxacgcKYa/W/eE8e+2HL9AymToCRTxy
         liQA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=eHSEaOj+mIN1ABSsUpS50Vkplb/q1sAMIrn2PPBBoZE=;
        b=IAPE6wYbygHz8kNxza5GS9fCu1SwWh6FOrlcmLaBFZmH45V3h8Zxv0p6FcHcojBvfT
         zTt730M/JaO6mf6M9E0+Oy4R2WEfSHCqaa1+XnKb9+fYTKXGk+NZi/xhHCVoxXjlOqJo
         dRn1dqivdQlgS0c4hEbI8MkCP9r9iFdD+nOQhRZ1tU1TkIu4gX2rdYq+lrU0dn1GA8q7
         nny6VMajLc6ocGNB+jcE9MZCxpAsXwEdnx9QAExPRacvJ3RdW5CMvAe7a3C6zxZwv79t
         yTFpfHVWAV7HlGZ4PFMuzBs3k3Gr05kRvPaIWCpynD23pXvvtvMYl4NH0KBU+LQfKWzn
         9y4g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=K99hvQ0t;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.100.86 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=eHSEaOj+mIN1ABSsUpS50Vkplb/q1sAMIrn2PPBBoZE=;
        b=lb39i0vKK2U3z73uyn4Y9v2K+Z/djaQQy9QZ4jO42wkBp+2BbduyqJVpZYQZcQ7Gum
         RYK0kaaQAWv0AOXuZm5nXTyfW1iNuArWZXZYqqlr17HPou9n7cLefIs46+lvgt4qXcup
         lYb8zJHI3lQAnGY3oqmQmFKxmnkjloKotJthGK2OiJHTA5Hg1sObuBYSZcKb5gVQ5Zb3
         4Laqsyqw41Fp5tZQQzSskodRBkYrZcHKTTYhoDTE1o5L8eDIm37mQrdnni8BAkkMKfOf
         /znYjCgL95FnfI4W3snuB/wiHQ9DW382MJfawfliQ3z5fztMR0lAGqR+ag3+CVbr26Mx
         BVfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eHSEaOj+mIN1ABSsUpS50Vkplb/q1sAMIrn2PPBBoZE=;
        b=f/k/AsCFYmBZGKYmZahGLhg5IYWmdSOSJZca4n838Uzs/EBHvLzBmA4NzjyVhpk4ur
         2pfhTfQX8VLwgzhJVixzdfyfbvyOcHEeiiqIH45OGI9qD7C/tg00vE8McK1sfjClmIEQ
         9nstOCVJMvJsCEM/ylFSEHAkpxxeleI/yAhnwU6QiYkiUIbkPba1SlUvU+rGcFIClpjc
         L2GIVKnA4YIY6cONVOjuuv1VD7U+3iCsVIyhyZYwvW19kZzxHqTcFEpfpfy6yG73PhL3
         doB+AvGeezH4AHab7X7fiZjF07RNufI9+XhpaEFz1Rx8picAMYwIy4ZgkI0ljHBODBT8
         xH1w==
X-Gm-Message-State: AOAM533I3vKFujOGJEZUZoo49tJz5sD5lXFPDJAu/Q8e6X31HAzQJ250
	g0e6Ithnh43VRezSOVDrF8U=
X-Google-Smtp-Source: ABdhPJwm/bMIQr/+z8Q+XTYyjYk9P4TbhBXklViatCQ6lfCMrnVaBC1vmL7LoVDc0O1NnLGS+82cuQ==
X-Received: by 2002:a17:90b:3b46:: with SMTP id ot6mr40504221pjb.217.1639352237381;
        Sun, 12 Dec 2021 15:37:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:33c3:: with SMTP id z186ls773843pgz.5.gmail; Sun, 12 Dec
 2021 15:37:16 -0800 (PST)
X-Received: by 2002:a63:e50:: with SMTP id 16mr50296275pgo.619.1639352236773;
        Sun, 12 Dec 2021 15:37:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639352236; cv=pass;
        d=google.com; s=arc-20160816;
        b=fbHmNScE3mwYn8kgG/VVUozd3Xpe4HrsB/d+XsJPuDudCiXwVdpOUcGT35GvsCUvnd
         FvVLGQtca4kYhcaj4GWlR6Id+6XX0egFltaBUn+mqHuC7kv4Fc7+QetAFf27htTU7Cc6
         5layEiYBsIBkuqHCn+ChSVGVzqhvy4gSEvUAMyCtjYQOuAelViaFGycT2XONdkFRC5Cv
         uonhVakxnvlrTEet/7TdtChRtUhPLKYVTZHIRlFM11EoxJBAZw1ONkiGLFf8vmN4fr7d
         GwxjAOpuPphNBTii5mSEaGO37FbR3JobqQdj2VnK9EyoEZ4VPN0fOS238sm5uDYZV13Q
         eOsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=wF+Qk7+8MiqEzPnqOkVUPnpitocoStsuGlmd/sSS0Eg=;
        b=jDW93WbBeEPkw5sWRjINh79KsJhMf7e4vWGIOtIxj3qXx1krbugpgtRgiOey2tDz5o
         MJL+MyU68jVJWaWkKdsl7EijPg8ndxDHCbmSYOlX4p/toBM/VnMaVyIyd+qOaKR4/RLW
         zfe8gsFFVWOGQ690TRs6lt0QH5HmRa9TaxVoqbnugJvR5Tgs2xPwP3pyyieMkJD2Tyvz
         gjtqbCHTgnBPsqxE+dzKOlf8LPYT5ZNZkgXpTmn/JJ6trrb2+bfnrqTvzqHOwIz8La5u
         saeEdSD5tnu5JROda5MwEnHhgqB4e4tC2SDY5+O9QX1xafgCUjKtOGVapPrUO5Fzqr81
         1eAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=K99hvQ0t;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.100.86 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (mail-bn8nam08on2086.outbound.protection.outlook.com. [40.107.100.86])
        by gmr-mx.google.com with ESMTPS id l17si539776plb.1.2021.12.12.15.37.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Dec 2021 15:37:16 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.100.86 as permitted sender) client-ip=40.107.100.86;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VZzXSWXbbqe/hnWYcboS2pgYEs8m3uT273FNYEX/jLwJXvy2ORAmsN+X9+BS/bdJDhiqQ5NlsP6ytYVb9RNtdNs/uBqRkQGeR0Rj6WcVLJDBMX8TBuxGxY+o8mJ4/R0SQJwflRB8/japTv6vNYn+wyvxUhwKBuJZyDpfWconCo9Rw+7fE7K/1OOzUSjDU5O7AsKshBUg5SU645ejyeUbYeRtEpUDBL3xbDT0KiTfBZHexgUO9fHyW+xOSeGsp1gRTFfaXboQlxHSB8zdTwDBwl3ECe59DD5meuJRRoS2eTHYBlOxKFR5ZmvURGjjQLIH/XzUctmN7opJpy28qCFcKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wF+Qk7+8MiqEzPnqOkVUPnpitocoStsuGlmd/sSS0Eg=;
 b=YUu2N4vcKEyNEHSAAOguWm+1TBWX2AJMuGWY5d6yy2N77oQX3JP2+4FLoXCej2XS2lsgJMmnsoM8bD0L32eDYSaIZ+axVWcyCkZIBMJbOBPzh/5NXYsqBcKlziUzV6ZSplJ9/bLmhNAhWdFWzlmTyiCpY3PMLWfsCtm+dGdeL31Kx9KjVKYwWV3j5kPK2QAbsSTSzRP5HOlkhSHZKIWpcAnmT8udb8LpmgvH7J4b4d9bc+2JFKgV/CApqO6QIWTnYjkxGTZmnKqSRidKdJrr09xEsVRDJ8fg8LGIvpbRuJbcz0NFrRP0IY8gEF34neA+YHrg841ODYOYHZglnXSitg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5110.namprd12.prod.outlook.com (2603:10b6:208:312::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.16; Sun, 12 Dec
 2021 23:37:15 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%7]) with mapi id 15.20.4778.017; Sun, 12 Dec 2021
 23:37:14 +0000
Date: Sun, 12 Dec 2021 19:37:11 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: "Tian, Kevin" <kevin.tian@intel.com>,
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
Message-ID: <20211212233711.GN6385@nvidia.com>
References: <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx>
 <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com>
 <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <875yrvwavf.ffs@tglx>
 <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
 <87fsqxv8zf.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87fsqxv8zf.ffs@tglx>
X-ClientProxiedBy: SJ0PR03CA0029.namprd03.prod.outlook.com
 (2603:10b6:a03:33a::34) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 41c53f40-2c82-4873-d5ed-08d9bdc853ce
X-MS-TrafficTypeDiagnostic: BL1PR12MB5110:EE_
X-Microsoft-Antispam-PRVS: <BL1PR12MB51104053C83D668AF2E9C596C2739@BL1PR12MB5110.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: r9dHcs0LSeTTSRnMK9mWX2OsZsBCg+hAgEtF3ux9k5YpkhKLtIsLzX7vvOdR+88LaOT9Vj1qSWnhoJFQ9alS5KCWqGPz6krKZkbv7Bw9QEHJxlSKgaCTGxfwVjUrtN32SGL1dsskMBYV8uB4zKlAN1lQkMdfwWQBvbAP4JT3LCp4cypqFVGglJRGWvrWKHU3fATv9GpPUZ1i3V65TST7r/QFWAKkUto5iWpwE5sAVmYjzAHtGLRJUCXUHBasdtHsqXQAPUHsM1rmu8jCwkaB0b9L9J4CGzk8BXXJx4w5lUAKW87szL7ZJun8NSY9ULT2ycA2uhuGxrdh28ZlQLfbaRWHC9ypCftHg3/Tbb56lZfxwd0uFO9k6TlZ56bEumRrYSVOEis82hx8RrMeFTLvuZkfsvLWoohINFZiE3kv+Bsl/2u/1RlHoWBJ1bxfqG3h1nZxqdwB9sbDAcqmESzCW2HuWAuPV8jabByAnvbQdHyMpcxyjTmoK1Tuw4xXa28PD+3HPOQrNR1ccTNP6SdW073nh2QKOPnia7M79wELm5zyaqW09LECV0jZYe/it22PGo9ihzYuz2SsP8RB8M/0ZF/aE6/NY5NfFVlKZ2iJkWNVYZyJ5CojB/c3FQaRoEm3tx81M+b0Owpkr0PPnOsEDA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(38100700002)(8936002)(86362001)(316002)(508600001)(26005)(36756003)(6512007)(186003)(2906002)(8676002)(4744005)(54906003)(66476007)(5660300002)(4326008)(6666004)(66946007)(6916009)(6506007)(33656002)(1076003)(7416002)(6486002)(2616005)(66556008);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LY1FUCDXqY5jloOhePXqOjMVQo9exGWANyC6s124MTk6/IC+3zUFNQbGm73k?=
 =?us-ascii?Q?UNFjaIlZvmnnYG8lh8sOOiegcePeeVuGD51JmA84M6TAgArj7O7tQdaw6zfi?=
 =?us-ascii?Q?kW0DGjcZDnjZOLJpwmtz6Xq/t3C+1qyjXAX/i8Niiq9+nsMjVTcxCu8+oXhn?=
 =?us-ascii?Q?nSy1XkUmPieYMhk5tGCSIA2viuxH4bUiGnZMERt1gZH3MEBizBvJN+weVts7?=
 =?us-ascii?Q?sIuTtIuqCIlAvHMtwZewJqdSfBEEGMplRnoFlL4w6eTazVr0a4gu7oYNuq9V?=
 =?us-ascii?Q?QyXjPmmH7D8MaJPKUMWJSWnleV8oQjSedDxqY9lLqxIRV/Uh+OAoeCydYIcu?=
 =?us-ascii?Q?1wVkFb25rtzTU7JUFZP8tiRameekTbz4UuUDGO8m04TeLrLgsDFKEP4haXNg?=
 =?us-ascii?Q?Xc4IoBKNdW1mlP1C1UN5efuJTNfNYgLk45Z4DUXhcSuT5JQmpqvHMevVwMq9?=
 =?us-ascii?Q?4APYSsbJJ889+qLCbQDVk1IBdHvqb+KevWKEojApms2Dn3BeMsa3FUZVcvmp?=
 =?us-ascii?Q?NjXT/N8x314YnWKi7RW0L/JVLP+UPgZFMckF5kfsdg2ZHhRCqKABzgSkuA1F?=
 =?us-ascii?Q?3jINAQggeEeF3PlLpOLaJgDEqqW70ojrv29z4yvWbJFKsJEYIiFOUtEOC8qA?=
 =?us-ascii?Q?yxgTyYBx+OzVV//YlnO86MB/n9XtNplfjKwRa6tr32ve/tHnCzeFEtmAUdSg?=
 =?us-ascii?Q?iq62r9ipPJ6O2Jnzeev7JjQah/AYS9FbuSvMp2k42Bmpz1JuVMqJ4Lm+eS5u?=
 =?us-ascii?Q?NxFLwiV2qz9iFRPmKhEaCwE7v6GON2h6e+aDku4qov8ZyKE1O7fy0FYqQfJU?=
 =?us-ascii?Q?+kwF4dmCw++DGgU0dfAkTVFWAN7RR0pL8lGEs1jyzsxQOruNOfVTknRTYqpn?=
 =?us-ascii?Q?4MzYQW2wgElS7egPnK+BzIfDHe+MUWDDhQeLDQE3gNDYlW1ASmLP9YUEMpAD?=
 =?us-ascii?Q?BT4YwBQk6qWULQfv9mwxtVOKwUz4vmyQQIs0Oj2NHk+YYA75E7/K1T1NI9bE?=
 =?us-ascii?Q?SMTQ7sVVsOqI9P+uOdOymHAzAX2Ms/gpzfHLsDx1vzKzUmozRzMIQf6sQCBM?=
 =?us-ascii?Q?7fywNK/8iT9KylSnkUogUtmLyUg92U8VZzq1KgRbVWSnbTXVTEOR/bMQg/1A?=
 =?us-ascii?Q?m87DsMvKi9GNRGnab3gVNKJALn0+A+LPrYSxtSvmqmYvSA+MMcTP0piyv1Z5?=
 =?us-ascii?Q?QYuJ1Q/N2feZbr+NvB1Lc2DcULodeqW1qWSULMFZQ3w4VbpqtQLeay8Du0ai?=
 =?us-ascii?Q?w5c7SDoBArDgZoH7KxLQlHi5nXZz4KVdDexWPn8SG+0iuA7/TTZUyhWPgLcC?=
 =?us-ascii?Q?9WOxlK6J7b7sYqVn6+N7Sq3xmz8WqU3eRUWnf7pp9W/D26xcb2xaiUU4ysGY?=
 =?us-ascii?Q?soCXg5UggdwyPu13ivplEwBXwJvxasZ/tSlG7en6j+c0vVGe/0QI73BLcUuR?=
 =?us-ascii?Q?BDlpCozOAP+tqb8Q4iFdibZ3n0Yro7pEjXYN3Pk3XeEAy0Q2tPuva11uOczA?=
 =?us-ascii?Q?KoaudsMHS+0EnR07FOwyX1HxbrB0a0Pjqkj9Fc1KicZFXHSRaNU0PT1iGYDu?=
 =?us-ascii?Q?PANrkAoHjY7bdTEWamI=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 41c53f40-2c82-4873-d5ed-08d9bdc853ce
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2021 23:37:14.8839
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uyL3ZqrbIvaq/apW/PNPUayEOQJ0Y8ZvdS2rQ6ByBxD9OO6uVmDDyqNTk7L+mHea
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5110
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=K99hvQ0t;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.100.86 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Sun, Dec 12, 2021 at 09:55:32PM +0100, Thomas Gleixner wrote:
> Kevin,
> 
> On Sun, Dec 12 2021 at 01:56, Kevin Tian wrote:
> >> From: Thomas Gleixner <tglx@linutronix.de>
> >> All I can find is drivers/iommu/virtio-iommu.c but I can't find anything
> >> vIR related there.
> >
> > Well, virtio-iommu is a para-virtualized vIOMMU implementations.
> >
> > In reality there are also fully emulated vIOMMU implementations (e.g.
> > Qemu fully emulates Intel/AMD/ARM IOMMUs). In those configurations
> > the IR logic in existing iommu drivers just apply:
> >
> > 	drivers/iommu/intel/irq_remapping.c
> > 	drivers/iommu/amd/iommu.c
> 
> thanks for the explanation. So that's a full IOMMU emulation. I was more
> expecting a paravirtualized lightweight one.

Kevin can you explain what on earth vIR is for and how does it work??

Obviously we don't expose the IR machinery to userspace, so at best
this is somehow changing what the MSI trap does?

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211212233711.GN6385%40nvidia.com.

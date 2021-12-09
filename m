Return-Path: <linux-ntb+bncBCX27RGNVQNBB2XHY6GQMGQEIS3WPBQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D6146E842
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 13:17:47 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id b3-20020a2ebc03000000b0021ffe75b14csf1776282ljf.5
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Dec 2021 04:17:47 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639052267; cv=pass;
        d=google.com; s=arc-20160816;
        b=g6timXBy1zzMRpzE+2R5eHdO3BBqhsavFpkrYT8A18FrThXUFYE0vl5suRRd5VTp5h
         Wz0xqJmKS5oe+b/03+fJx4EYL6xYGi7qk3RHGcI+Hh0JFivgm8oN0vpCs+8buqoz2pAq
         6fOi6ai9j2XaOEt1KriyMJA8Q7rvwWpi7Zw+nzgmktxGgWV/FbmmaPBxcllrwp8jwEo6
         +LCJYA2vApgExm75OWFVugQHcdEa1A/ucgU1ShBKoOx8mucC32yc9AZAhY4CYzWXjZld
         2AMvqvtEthg4DDekz4hiJTOQkxzFBCr8phcJ/myogONCZiWyD4/U7qQ67XQFz3M3iD1A
         PsNw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=1wkQNP9+QILvk7jPmEQcp/cOQjKmYiCMER3ca3XzxFs=;
        b=hzp264z/R4dcc3BPOk8hl/Zs8ZcjQjbcn2GFvQJqleZ6rkz0Oo+BIiNBTVfPTcpghw
         K18QHUA6LAmvOiXRt7EK6ic3hc4J39xIXA6CYFwqcAzp4x3e9HnGyvbRU637uYFEukBY
         Llx6nzG26bYy/XD6srsKRzn/xfRv2xHnuPZ5+LDEgeoT0Ba9XPYdELaGB6rNx3zkZtp5
         sWrzDszXzqnuY4VWWkWTrjymN1uCP0jTCYH2QUZrWs+pC8UbLtdCNjtt/ZMqSasqKWKX
         U64xBtZZ6PemQBYST7XfJofg6HxF9EGksMHzkbc8Y2HZTUkwSTYFlfSvwTEmBk6ND8Dd
         ZtMQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=WMbq9apl;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=noJqXXaM;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1wkQNP9+QILvk7jPmEQcp/cOQjKmYiCMER3ca3XzxFs=;
        b=eHgG04/8hRSn9jtcZLXJr08iREQh/DqumFZQQKD4LN2IvZhBogzGCrKphKCdJl/4B5
         DOVvE+J4IGk75lIcHWVIHWGV0v8zYnRH90MD4v3RZ9Q7wxRnyJnFFCDZpQZVwW1tPO6N
         hd6eE5JSzfmRjf7Q1FP+Qmak5zibKxT0B9OQ1Ez2gFbwDrzzkR1T+t2Ds9mp4/WECS3K
         7XL0ZWKzkiPgcAwoOIAiVxMANV/HiD6zqGkdPS0MnmMAmQIlDvcwV+kSCiL3vyBxwr7g
         TLn07EIPWnx0QlxP+TSEDSG7lbJ7KSobTceFQwwSoYwEWxT5PRkLmCWrsMuOpIEov+Fb
         rCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1wkQNP9+QILvk7jPmEQcp/cOQjKmYiCMER3ca3XzxFs=;
        b=jd4nRZDbKeywyc2DBvb9sOrAuDsmNOpe6IikQyKE3fu+3Xi0jOhR6euLDqHeB7W4pe
         s0qkIQ76W6kmlH3pra90Z5x3PH8qon1FPJyIkwNOw37eE9OqwzBNkRwbMCO9x6/Phfmr
         8K/2L/Hrl4UD10BLKazDBn30vGcjopObyRDp5gihzt4zF4Y6HkDa106feCvfTkeynbZh
         60zsYn4nq1+jKVA/BCsbGLFgqeZ21BjT4Z1fkjx1SC6rjdjaHM98E1QTlzmSWAQnNA8V
         i7zqkapqU8Mmz5GDTI4UAepQ7GTUGRcM9miTSuSDCdPI++fh/WlQ56mRXlSe/nUQLSkc
         YDoQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533ZFlvY4t3CTIDIzb65FNfkL16qZ00SS/wSp76iazj3RY3toBvN
	4y9mM/wRdorud3ApII8O7Kk=
X-Google-Smtp-Source: ABdhPJxEivEsxlz0QdGeWuBPU5wJkGZB9KGs/mVyFH7glkqeO6uEvp5odJXnpog1xUonv5XYqjvr5A==
X-Received: by 2002:a19:7512:: with SMTP id y18mr5629792lfe.236.1639052266770;
        Thu, 09 Dec 2021 04:17:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3b9c:: with SMTP id g28ls563594lfv.3.gmail; Thu, 09
 Dec 2021 04:17:45 -0800 (PST)
X-Received: by 2002:a05:6512:519:: with SMTP id o25mr5395552lfb.422.1639052265577;
        Thu, 09 Dec 2021 04:17:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639052265; cv=pass;
        d=google.com; s=arc-20160816;
        b=nkDTdnf4UxdaK1c7u2dFTU9KwMKrBGW44mzOFE/8e2B4w+b4ektukg5U1EvTJTGSzy
         K+kOR459J+Jeom7aHsGiMfzVCeHEjpLqCW9ArHtT0w9LMe7JV2ctdPEFBH9LTHIqOYbk
         eAOUPa/eumUHd+Uluzcc3JCHtwftB1DWlS0ui9/TSBkDhfoybzNlxJ9OlxXNvTu+F2EH
         E+vr1zwZpvTiOhsp12Zcl8aAINsRke+LUI3mvcyTGLkMJdcLcvNOPsMc00fm+tGMy05E
         IJcqrgAxkMNRb0TGfDCpNvmH8IG4qyWjrqBqWSXyi4ZtfIx+NL7pzlFQB3K411G4yKXJ
         Lccg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=TyW8+CHNozl8bUuWKqJN1CoS4SXDfvG8T9l5c2dRIcA=;
        b=RMRxhw5JzfyZsVQE8t2poNCYGtlvbqdBY2W0LL2DVAFI9629WODy/qMGPMOC9tfWab
         l/yQPo4lvVvqkOfiXzClKfCgsZWwKVzGxlSGB1GXhC9wtnVcw0vnasobPRUu0rORS31o
         AFGRsRdQvcZ/XLfACQiXH4GkszppRs0LoR03DokS2rKlqf76nXMWLZgQKmMy94HsdJX5
         OOaTp9T5gdrGNI7T7llZrCbi+4yRLW7lV6jjVvbGjbXhbhFXELPjL9CYGfH0GyOpp7HW
         l8R5OvLqf22NvGf27XostB8tpyN0T7wA+8JXMFs0c3LbeM2CgvbCTSSoPbyS0u3xTwhN
         WoYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=WMbq9apl;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=noJqXXaM;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id y8si305367lfj.0.2021.12.09.04.17.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Dec 2021 04:17:45 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="224952586"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; 
   d="scan'208";a="224952586"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Dec 2021 04:17:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; 
   d="scan'208";a="750330042"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
  by fmsmga006.fm.intel.com with ESMTP; 09 Dec 2021 04:17:39 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 04:17:38 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 04:17:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 9 Dec 2021 04:17:38 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 9 Dec 2021 04:17:37 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TUpDf2DWnWK+lQDqpQc6WLdGoXByIXp8LvBjJl/P6Te1C5lf3BTrWmbobO0SvWCruWj0y5E8EbaFUklqLQtTreNStiX1JKQsR3p+la8GuqTNh9re7jAkxve69DTvvrYl7tzzyQlaplz2qQi/w1dY/tJeNdsnXhvVL3M92B9jbFcjmneap4aUHqgredeYX4qSUDwn6DvwCM3aWMrNjuxilRdKHRX2kF0TFZMz0I7BLolYiFADuAFoPCvVLqT5STabifxL940ywvoMwnztU1KG5+Y4+pNAlwC2nBkYgo+ykArJ+or0id9/dQbzGm9Olh8m/TR2SxVyQUP/eaCbyACCjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TyW8+CHNozl8bUuWKqJN1CoS4SXDfvG8T9l5c2dRIcA=;
 b=Yoht+nFQQ5ACjd3eGOWVzl+BFTxav08oFfr6jVTR+SEYxw97tQWHg8XsxGWTCQ08o1ZwLdUA6EqC3X3jdydJUjPRYaVJ0q7Xzdeg78OsCXgCQ3zaFP79FY2qCqm2N10afUV9NvrvVdqmtOpJ/8QNrZkjbgErK+zmu4WA7Gi9r9VmY43q850dm+tpz+pXzTBxQPJpagHbdnz/MImpEu2Iup0FM+76qj1/n0biYWD2xMBXtJkb6lW8SwBjtW00JMA7NMNdCWvQyf0OOzoNVHktgrVvjcafOavLlJ0P35vWkAngazpAw7oZLxjafgbbI/NEJsJfzP5sn1etn+3VTmAkag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BN8PR11MB3714.namprd11.prod.outlook.com (2603:10b6:408:90::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.11; Thu, 9 Dec
 2021 12:17:36 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04%2]) with mapi id 15.20.4755.016; Thu, 9 Dec 2021
 12:17:36 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Gunthorpe <jgg@nvidia.com>
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
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgAAttoCAAEzjgIAACsMAgAAjl4CAAD2IAIAA6NQAgABcawCAAAmigIAAKimAgAAjYoCAAPMeAIAAGgMAgAis5HCAAEEdAIAANO7A
Date: Thu, 9 Dec 2021 12:17:36 +0000
Message-ID: <BN9PR11MB5276BDE2AC58ADA7A66CAFBA8C709@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com> <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com> <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com> <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com>
 <BN9PR11MB52766CC46D3D4865308F61D98C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87pmq6ywu3.ffs@tglx>
In-Reply-To: <87pmq6ywu3.ffs@tglx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7f722c3d-9a20-4273-6a50-08d9bb0de2de
x-ms-traffictypediagnostic: BN8PR11MB3714:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN8PR11MB3714318D8D08F4A264F56EBA8C709@BN8PR11MB3714.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AQ6LkiGBnQ9KVM86byNWccsHy12nF1ihKuqA2848aS1v8N0xvJmLa6EUstfrVntpPwLoU3wh1s8KKLFMW/QxdPFkoFnszUNx0L5JPeVpJnZkmQs+GSkAYdG4n7T4tt+qhKu58GoZKjNW8HjALwBuNnS5WZ4aP3bZFAWyXBf+/ET0jus80niM0bWSqgYDSG01ghpvuuqWV6WbxcgI/7DhmSukjQu4YEHBQox7VNzEMLpNHn/0jAhdJr1axs39c1l5OjUq0F5+8VpxV5bvdnWDz8LmJ1BKpqeiRw3bVXoUFLqzFb33nQ8GJKCc9xJQ/7UUvB17nfqDlY3LQuYuN7IDpsqViaXyBOGJ9c5Tplh+zpgTUkEpcxPRBa4K04JTpl6+yZSzBbDgwbphx9gzkty3AOAoHKs3DXqKK204aVrxcDqcJ1JXXXffloXn/cSAORdrHXXcPObhRwOyXQQiX+Rfp5dtX/TBvMxYsY4lxOY7G7LIxRddE3LHDoSDl7lGm4H0RXThBu/QM6cfCZV/13wyIjAQoiH6hB8iqe7JA93wml73aMtce7IV2mIjbqJcrFVEp/K5UnvilgRtq84HBeFG1Nfuin9AfSVlgG5PHPn4xlgi4Ki0Pb/0sIOZ9AvtDEbNtLxpInT1IlWY5P5rNEg1BfMq3xY7oHfsrOS0RF8kKT72cVj02Z0hx4EfUIt/Ik6KxHWDvT1LqM2Q3I3bzvh41w==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(7416002)(66556008)(8676002)(6506007)(508600001)(33656002)(66476007)(38070700005)(66946007)(66446008)(9686003)(76116006)(26005)(55016003)(64756008)(110136005)(4326008)(2906002)(186003)(8936002)(82960400001)(86362001)(52536014)(54906003)(71200400001)(38100700002)(5660300002)(7696005)(122000001)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?uLF1CwV6V8M5HScw9bmsKMT1lg1nITA2RB0ia5+ikTAo1etS6FbmWaG5l6k8?=
 =?us-ascii?Q?77OXelpxNVi08nHDCT45RPsCxJ+1uD5fBHWVOWVMVkP1DyU/HwCwtg8V6Txg?=
 =?us-ascii?Q?kAZrcDQajTzOr4frDrk0uhmowFrLPHhSTYgl5Oct4oO3dUO9yn6BRL/OaOJ1?=
 =?us-ascii?Q?VysYLPqqanQyQYJo+05wim+yNqzLw8muq/FXwvS3pQy3POSVODdEWfoUWNtC?=
 =?us-ascii?Q?C685opss8fUzgU7PPHT21H7Qxn/G+1ly1Dy+HxLKR1sg+ZOm01aRcLLa6nMM?=
 =?us-ascii?Q?YYjfTqpzXSgFM2BXw15RbB6Xw3O8Uzu+FC1WTMU0ofbBSLWfBSp1PZgrZoQa?=
 =?us-ascii?Q?fPj2HCtji9/VfA0IucMawpZ9j8rE/pIPf1P9SBJ1lhKNkiJcfXKII3P06c1E?=
 =?us-ascii?Q?p2gF9e19823HvZA2IdqW/3QMj4n/iTs2IWyB3irjvYKxKY6Zk+OZ0Dtbzd8q?=
 =?us-ascii?Q?ZgHH7JVBG4XE1xN7vsD1+uqpt650A5ob/Lb4/aeyLjP+Dxhl4DGuNFoGsueB?=
 =?us-ascii?Q?S76+3hDWu4nQ+yfqB8Midx7yW4zDExK1vFlEOe7XYzyKUJCYB3/eFB9gajWZ?=
 =?us-ascii?Q?9QkeL48UThJPvVUxwdMPh3vYPoOkMqXhRQ8PhgfNkki23FMgo0F5UTinADbq?=
 =?us-ascii?Q?48BlUccA9jr8Hhap+3GAu6/V23YBMwQupKYcHiY8tLOz7np7qMM4Fyzv20lM?=
 =?us-ascii?Q?X4xJJgANBvUFeHlewFH8l0Sa3uc8LqLwt1t4YTty/h4LZWKN4D8Ohn5MI6Ur?=
 =?us-ascii?Q?NjUTdNwmVlwp7W5SdsT3pqGTxQ2+EyTuGxVr1OnL8qSV8pW+t8T4QNHng4Ta?=
 =?us-ascii?Q?bfjmEMaD0RXo4V20j088aQYS+T+yAQol9BeO2rUCMaTq4U45Yrw704B3BWQY?=
 =?us-ascii?Q?Ywc00vVQIT1Qqr2YNWn1QCtjl+Jk6IPEcHpQee4y8/2z2S/nDbGjD2VK/GsV?=
 =?us-ascii?Q?fz5m8NQOvNe6FK5X1PwGo1TIwztIt7ia5ePBJsvE1KFMd6t5WkW208exjR9K?=
 =?us-ascii?Q?Mf1R7fAiBt++9I+LVKLDwuwEFpjB5kyZTYwJ/YNx9kWOnuNofuBIi7tH4aLN?=
 =?us-ascii?Q?SaVVoEiFGE5HkMgtnZ/snIRlEam/yDoVMwfVTkzudCakX5EXzjny2mhwkwvs?=
 =?us-ascii?Q?uFFy8QTMe4dc7qSJOz+kQQeeXHv8qGX6S88SaYqiFq+SOkkkh38plbvkguCX?=
 =?us-ascii?Q?B3IWnlD/UClpyiine/bgL1ljqkxOAIABN9kAxxUu9tmZs9hlZbx4ZYrNtQ/c?=
 =?us-ascii?Q?SQzKzdf3hJgOSKWsf2SiR/rplYodc6qKgOHLMxdNvugxhDNaQDZGn4MX1I28?=
 =?us-ascii?Q?xm6NKGEm7Ny+3qcCQmV7+602UV/Z+3Yg5gD3WODhbMbXbwPHsfLmi3k+WRxd?=
 =?us-ascii?Q?PVBng1wIeRjvdoG2I3vV3FF8bG6Yvh744Y51IL2YoIZCVgoeQlxXByl6r7li?=
 =?us-ascii?Q?g55FccTqIqWBRT6eqTmtXQ2J4A0ptzR1NNKkJPNSafd6fDApUik+ZLL1swy+?=
 =?us-ascii?Q?Tt+1ncuO4JRzj6oJx6MGTnuu4oaUGighax2W71JXkGx3VlYfWz2rUD1EyKMc?=
 =?us-ascii?Q?wuHjLtrYxzM5MhMszUelDaCre+/jRUI+6nfuFs/OlwLDJuZCooz+BPWcv7W5?=
 =?us-ascii?Q?VoPUMB6pE1JvlW2CYVKozbE=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f722c3d-9a20-4273-6a50-08d9bb0de2de
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2021 12:17:36.3627
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +Qsrb30MAVYx6VhBpnpcL+psk7W7Qo3E/JCMLq2xouGr+xlSZiwHKz6g6pZ2ftY+6mjsp/jkmPGNY+Y4+FKa4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3714
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=WMbq9apl;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=noJqXXaM;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of kevin.tian@intel.com designates 134.134.136.126 as
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

> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Thursday, December 9, 2021 5:03 PM
> 
> Kevin,
> 
> On Thu, Dec 09 2021 at 06:26, Kevin Tian wrote:
> >> From: Jason Gunthorpe <jgg@nvidia.com>
> >> I don't know of any use case for more than one interrupt on a queue,
> >> and if it did come up I'd probably approach it by making the queue
> >> handle above also specify the 'queue relative HW index'
> >
> > We have such use case with IDXD.
> >
> > Basically the IDXD queue allows software to put an interrupt handle
> > (the index of MSI-X or IMS entry) in the submitted descriptor. Upon
> > completion of the descriptor the hardware finds the specified entry
> > and then generate interrupt to notify software.
> >
> > Conceptually descriptors submitted to a same queue can use different
> > handles, implying one queue can be associated to multiple interrupts.
> 
> I think you are looking at that from the internal implementation details
> of IDXD. But you can just model it in an IDXD implementation agnostic
> way:
> 
>      ENQCMD(PASID, IMS-ENTRY,.....)

Not exactly IMS-ENTRY. MSI-ENTRY also works.

> 
> implies an on demand allocation of a virtual queue, which is deallocated
> when the command completes. The PASID and IMS-ENTRY act as the 'queue'
> identifier.
> 
> The implementation detail of IDXD that it executes these computations on
> an internal shared workqueue does not change that.
> 
> Such a workqueue can only execute one enqueued command at a time,
> which
> means that during the execution of a particular command that IDXD
> internal workqueue represents the 'virtual queue' which is identified by
> the unique PASID/IMS-ENTRY pair.
> 
> No?
> 

While it's one way of looking at this model do we want to actually
create some objects to represent this 'virtual queue' concept? that
implies each ENQCMD must be moderated to create such short-lifespan
objects and I'm not sure the benefit of doing so.

If not then from driver p.o.v it's still one queue resource and driver 
needs to manage its association with multiple interrupt entries and 
PASIDs when it's connected to multiple clients.

Thanks
Kevin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN9PR11MB5276BDE2AC58ADA7A66CAFBA8C709%40BN9PR11MB5276.namprd11.prod.outlook.com.

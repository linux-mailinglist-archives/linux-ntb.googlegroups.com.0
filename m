Return-Path: <linux-ntb+bncBCX27RGNVQNBB35FY2GQMGQE3DUZVKY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1213046E1D7
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 06:24:00 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id z138-20020a1c7e90000000b003319c5f9164sf4277075wmc.7
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Dec 2021 21:24:00 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639027439; cv=pass;
        d=google.com; s=arc-20160816;
        b=nSKormzbz7IHtB9AG+/nhEBVnp0OAtHfBWoW/AFMY520yAixQFxa7VRkR79gh+OtkK
         a9EBSD0n7FdTSBKDt3MHIgNMfVrHSK4YMxjx1+b5bc85W8JHuBpZ/81wthkKpj1lsPEA
         ZjvL6dgyhL6i1DzMEDVQqkMeCfG8aZeYbpVoDYMmPW2IVDmaM+hodGX+lRa20UiF4M5A
         lPNS/Cg5mFWyaYHBDuxV67+DXlPWcoBb1+oxVYYWACesAflY+sypY8QfjVEkp0dB95Ld
         yAoiW3IdKlW2oyMEFBdT+y3thpedjwWLgC4eNYFPj8oP8SAHajiOkmsOlLpQ2p51x9tT
         pV+A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:dlp-reaction
         :dlp-product:dlp-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=vnF0nfkvwTzS1VnMa0aGnMloJ5ZTAsITCJYOtuxexyY=;
        b=F39kROiqvSxaH4i5dn2uuBYi1KonQUWzCTW7jLF+YTcJZs0dYvRcPYqTHedMoSLwr5
         mjOEGqOwJM+QDEuu5HQRrnitfqNrYrT0FEJLOy00gbu63y3Jmk9xGz2HklXwBZT7mYLv
         V1w2GMfYocrmWlpmeM/LRXTQYOXMQAYBEonCMZlaDo8UQ38NnHfaFdYbBpfW0Ko7AnGx
         FP/4jDcgKKurfz/S2YL3L3D7de7VknCXQ9Y4AhwzFyl/gYT7+Vj8O+RYmJ1gazgxb2L0
         Vnn2u0mEhxT+s8vRJWdGkGrPprOcUw9eDzMosg5N2UcuU9I8mxXzwkCXJKJhsNpc+/Mp
         jePg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b="ltml/nn4";
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Y7QRfDMp;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vnF0nfkvwTzS1VnMa0aGnMloJ5ZTAsITCJYOtuxexyY=;
        b=MdwGmqood716yLNoOw63liXlrWORE7nIlL+DL5kJ9F2MSlt07kf3iWA9VLvQOcgpkB
         OLQp3WstXX9dFzBjylAnsDZENqatmM3btguHHLRNGqSeZWHXwtGu6ybDB0p541ScZVL5
         4beiUtExgJVAMkUjrzmhZ++B1djTSmJR6qnA8PqC43WIKnY48nR6lIn9NRBu48CoJsPk
         oOEpHmQUSplEVZXne0Sr6pTCLRFDkr2fhLkLFr48/+KX6lPfZczHgP7Br/6RQnXUHt1O
         Cn8zm/u8dqMmmT7al9M025SU5+ifhIP9UbHOoTW9f3g4L1O6eE5fv5GkZG7MAIucyt5Z
         yRvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vnF0nfkvwTzS1VnMa0aGnMloJ5ZTAsITCJYOtuxexyY=;
        b=Mk4DWqSSruNwDdIPjLIPSpypOH9gUIJd18dsLmarHe9sbVJaSwR9WPt7vVTs6yKMgV
         2mvqHQPtr8Ors5vVHC3X0wUTZvouMiEanpzRUDLr3vugDQm8B6KDqzFjyn7FEjtzUqkU
         +xQkCLouqP2XfvAih0LtyQJx5D1W7MERJjS1zwK84wH/nJwSKRMwEaJd0AMXiQvpGFGT
         UPw/sSb0gp0bI9iwwLg/QXsD6nVkNyhmfHyUvYCIjkZTaab33XTOaU0G9MqfhALkqb9W
         TzsIA4BZmoEybEXjELCfJSPGulHR0UFHx7MX30LssiCwB1XVoO+oj3ZyRIrfP1fw8uSp
         e4aQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531pccxTgCmi/tTkcDzaHkCjGLiZ/7ZJKxkCadIl4odm/7tDWa3m
	w3A8ZjOc5iuzH+2rk+xC358=
X-Google-Smtp-Source: ABdhPJwFhmOszv6iq7pVey+IRXFpApv4bTEY2FQZcL0rp6XJ2FgN8kipaTALNrlsDGBVl5YY1c+sMg==
X-Received: by 2002:a05:600c:3b8f:: with SMTP id n15mr4380395wms.180.1639027439640;
        Wed, 08 Dec 2021 21:23:59 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:fe0b:: with SMTP id n11ls2646877wrr.0.gmail; Wed, 08 Dec
 2021 21:23:58 -0800 (PST)
X-Received: by 2002:a5d:630b:: with SMTP id i11mr3805233wru.316.1639027438582;
        Wed, 08 Dec 2021 21:23:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639027438; cv=pass;
        d=google.com; s=arc-20160816;
        b=owqjAOsvf5KA42N+Q0TxlfsgSxSQwXJRDUVC/tLqtjNTPCKwvsN8PyMkUzKKj65ubv
         0pJml5TextvUkwEMKsnGnF4xXFiNkLfY9vAV4nO20dEKWPT/J3wklyGkNG1bbAJAEgOg
         jRSNCAyu8OiuwWyekIrdrSQy1TVnlCujD9mJI9WC/WUR7Wl39MGons2uSFTqT691jjav
         zf1JrhNrOcLev7PpmXCYvCA6eOvp+de36Z35NamJJpNiwyklSYblq2eS/oN5dtHRLOWW
         VNq9M2tDbtuH0MuuoCD44UxQDaiesXbYwE+RyqAHRDzUPnDWS6v9fxMXcsnzEw7+/4En
         alHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=9WqmDmnJthBuiI0mANBZYS0xaEAfQC4WGJGQCl1gXXI=;
        b=Q5jBSNlOdNF0LUNMHijOKUTDK9eZscRyYt2wiltlqQKMr+vTR1nGeo1/T/QrFcNUqQ
         G1SSWQkuiL8wQHr0/MXN2LQnhYUXLdQwtxqkXBI/F8D/uT/pWe0eYO61aMrbMflJQtGK
         +xHw1pH6xNf9luTTFzShQ678JnnEsiQubjs9Q1V4w3ZzyZ3MopJCE39ywn24CnnycXxg
         X8IAEe4sjab6VAS4L+tlG/GcWaZhm/HjNt4ipD9P0Ruc22vjTHPtgIWoVjC1OQ2DeFZF
         BB7skRGfNI6Dv4AgoL7FjP2v+4tSyUPBLAqaSOBPHqX/f02BPZP7lfu6rye0cSztlrCJ
         Wn2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b="ltml/nn4";
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=Y7QRfDMp;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id a1si262961wrv.4.2021.12.08.21.23.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Dec 2021 21:23:58 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="225281181"
X-IronPort-AV: E=Sophos;i="5.88,191,1635231600"; 
   d="scan'208";a="225281181"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2021 21:23:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,191,1635231600"; 
   d="scan'208";a="564518737"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by fmsmga008.fm.intel.com with ESMTP; 08 Dec 2021 21:23:45 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 21:23:44 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 21:23:44 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 21:23:44 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 21:23:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MRGmGbu/jQ5I6kHXFvg4lAbNPOPZ6Yp+YjGUpjvf3Z4XJWk/N2gcVLW3ZBF0EOgldHMkIeGfJA/2YqQHm9XEcup3rOAMISJktku2oQODVPY3zw1c3dCJOnOoSumCKSzM37d0KQTowo6Im9dzzK/m2Tgv9GJj/ILTILa0p8QLyF4hHCHb9O7M86dvczPl89iGNbfvFHaPVMbU8UqzaAXeQRnWiDizr54Xzl/UImsKHg+J9YYJdBoIHq7rGIe75UqwoJJOOcsjEGTLyKmcKD1YOjesPFy5r03tgDKt7JcZsHoZJqZ2JzcsdxDFxcvbCLXH+CIhWzyVjWp8xNLduQtRfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9WqmDmnJthBuiI0mANBZYS0xaEAfQC4WGJGQCl1gXXI=;
 b=FXMZ4hZccK+iD0b1uSV3ZXZHTINJ+nZKn0rDxh9HMHT2l4ju3rMNH6w0E1PiQZGqPPJ87E7veW9M8YzkFS6SLIMXItG33/UllFirVIwp/0BHL8+kSCejkqT0ri6RbV8BctUwikdifZKAMiN0QExln/qLo4fUwqihl3p+P2V5n8KSR1ueMK7T5dCskYGH4DgrxhnpkJjeRlrvco2KE4pp4Lgv3hc4oYQosIUvFoAXOIcUmducZYpNHyno/+p4aeobkqOwHgMH36ltyMK1zcxivWa68PSVH4adxuli8kOzpPKS9lGsrghmNEpK7oPtmCxRNFgyu+n8zGi/JdsvvUy4tw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BN6PR1101MB2194.namprd11.prod.outlook.com (2603:10b6:405:55::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.14; Thu, 9 Dec
 2021 05:23:42 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04%2]) with mapi id 15.20.4755.016; Thu, 9 Dec 2021
 05:23:42 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, "Jiang, Dave"
	<dave.jiang@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
CC: Logan Gunthorpe <logang@deltatee.com>, LKML
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
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgABn9QCAACTxgIAAAdGAgAAbd4CAAA94gIAABpSAgAt9SoA=
Date: Thu, 9 Dec 2021 05:23:42 +0000
Message-ID: <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com> <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com> <87ilwacwp8.ffs@tglx>
 <d6f13729-1b83-fa7d-3f0d-98d4e3f7a2aa@deltatee.com> <87v909bf2k.ffs@tglx>
 <20211130202800.GE4670@nvidia.com> <87o861banv.ffs@tglx>
 <20211201001748.GF4670@nvidia.com> <87mtlkaauo.ffs@tglx>
 <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com> <87pmqg88xq.ffs@tglx>
 <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com> <87k0go8432.ffs@tglx>
 <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com> <878rx480fk.ffs@tglx>
In-Reply-To: <878rx480fk.ffs@tglx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d104248b-e6b3-4847-3157-08d9bad410a9
x-ms-traffictypediagnostic: BN6PR1101MB2194:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR1101MB2194A89DD7131C2A7FA408B58C709@BN6PR1101MB2194.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: z65On7Y4yaPYeWPS67Ky9cqxV3SjWhp+JNAbGkLM/6QClIiEemvsMTEF8L/47dix17Psi1g46G8Kt9VnIpeacy8OqaCwPCoA4HEKceb4p0/Bm9zS8tR1lh8EuJ18JbHTjjBCIFor7Sg63CyMLMI0t3YnR1eWEThmAxNWzdpjVPJs53dzHbm7/y27eGw2vr5HYO2slmubRBPAwJYvIAtddUuwFoMkegOg2mO2LxNU4L1ifTg/jTHMlkZMlM1/4jMCTcFMjKQ9EbbWsAVTAIX5SUDGWf+i9RXYl+UkkcLzJMQrnZA99/6hsLZe4aDiMHm+YPOWbAAUTNHDRO8PqUyAefDZaaXIQyDumyc11G64kYMGCZLeKVFmpfIOyNAT6/Kr5uEP8awF1xVdgllm49FbEv/K6CGrFTjSvcEW3hgSB3ZtuS5azEPGO3YPHmV28PdAxMMU+m0U1ajkbfk8peKAsSmishqdJ3bQWxqaLtZTaummoRYUx3wLm+QAoSa7I/k+T8Htxp6rykG1eMkhInupXLdiM9kKYcStfl1/mDbFNQAp2MeK6bOdY8/u2J4HQq3js3ScamRYbm6i9B42+RuPMLqDF5aAypQWbMWplQTHvsRKrWmctWr9Hm/FgvDjq+GhnUYcaqUA0Uld53Ce+gfKmmlZeCDo/qPtKJfKnpnpK3hf6wQFYwCcJPCdf8tTJLOk75SwXIK2caQdG1qpDzXO7g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(316002)(9686003)(7696005)(38070700005)(54906003)(110136005)(38100700002)(122000001)(2906002)(4326008)(508600001)(33656002)(7416002)(52536014)(86362001)(71200400001)(8936002)(8676002)(26005)(5660300002)(55016003)(186003)(76116006)(53546011)(6506007)(82960400001)(64756008)(66946007)(66556008)(66476007)(66446008);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+V2GIWuzQiaEvPtwSTXNTFW3hBvClWwAQdvVr3AEWibxri8C0t3+xx2CQmbo?=
 =?us-ascii?Q?gWzlkiHYbLXD8eZvt66HZVpwWZtC90q91cYfOslq0TG/8JVwrNrqgwA9n7ms?=
 =?us-ascii?Q?cGtC12o1nRoOUIvKv/lIJ3bNRdGOmxCvWNjpTC01zj8wBzaYObm5xM3ANTPJ?=
 =?us-ascii?Q?hqv3AKyuHocXeZ+1MI0CBeuZZK9PRZNNA4uNiKj+kCN/032DuV3HFx0eXvun?=
 =?us-ascii?Q?nDUmYzzmK/g6fAb2OBlIvXHrLZb2hmEvy0gkaU3tYS3f/TLEn3Rfa+Ixnelx?=
 =?us-ascii?Q?9+N5g9pwjpzcPrWF13RBLTNOIAVGA657tMF8QznRoUROjiwKNrv7CA66i/Gr?=
 =?us-ascii?Q?RNL+KP9B9wmWvh1vSaluJkYAVkq0CRksrmani1CsVGqAMyn8XblM/IzcTMNy?=
 =?us-ascii?Q?cTuFMhg7mHr3u9Mg966ddCWYLFloZxDFuvlpHbX9i9RtajRGbsRoiWYd0JJ7?=
 =?us-ascii?Q?wL/8kGTIcZp3EtqJybsZ5ez2NX9HkwqDq+fxySc3hwrbWNZwb8IijnKpZJS8?=
 =?us-ascii?Q?N4zqK22LdyM83WtfoAlE+hvmoouudk06wmwwr7NR0Rts6YsNA9y7/7yRT2+i?=
 =?us-ascii?Q?AenEgn+c/RlTC8/uBf6gL59LRCMzUmKm8Rn6+sX2+ZyCbHTKIGVXGx0d2cnv?=
 =?us-ascii?Q?7tHiC7cvMLg6R0Uc+ijgdbQHxcXDLnXZVNeQ+0w13mWNv37hJLMrU/24A/Ju?=
 =?us-ascii?Q?dH3axYzfbkd8TRfiV5TY71QHGNgin7awEqQTc7Cv2mtHC4AksnnEnEv2ilbD?=
 =?us-ascii?Q?Qkp6crlHIA/xdMQWQjMWWyBNMxBtcJJQDGb3ZRZ5S84P0jTECZkiBo+/0yo/?=
 =?us-ascii?Q?nR6iS6kOYuZ67Lj68hIiZjX7vSw8gnMuKq+3Sp8SbCM5YL5VdatTSeZ2nLTt?=
 =?us-ascii?Q?lIhZwHqzu9YxqjaRb9pBAY9Rk88fjHE88L6MdRs7imqfzC0swtE5SQq+fJVb?=
 =?us-ascii?Q?d/o8WbTRhFTcxfHqkp+9yfdQm+LTsETaSQkP9XTJ5Gg2F+cqLXvp7LzAah58?=
 =?us-ascii?Q?sAZ8Zhi7oOwutoxqN5ZphRmr1MD/4HxPRtG1YWVOPClC5YUS1fh9omySpQMM?=
 =?us-ascii?Q?TqqckmDDPNEHp4MnMv3JQ4o4iDLRy0peKvbN6I42ki4arEzP+eOMjd8MnlVn?=
 =?us-ascii?Q?RpVbfzAZFC6XeHoQEAlMHm7xn3uKnShME+OypcOpme0YeQ8QUFFX0cH+aMTp?=
 =?us-ascii?Q?1gUQfF9J9IBYBnCxEne6nJCi2HFhH4/E6VZrlKMrlAbEpvGUH8SK0BGJ5N57?=
 =?us-ascii?Q?T53Ziiragjt9DH8h6sfUgN9045mgJGBKVK0o2ixzi5wIFj0nLQMwJJTRNpZV?=
 =?us-ascii?Q?3LnCYlveM8hcFWhLvLJLYqnTwl4CRDyCA3ZXSIJtpta4M21vXHx3h/c4O/Kv?=
 =?us-ascii?Q?+WpCK/GTt45yUmOfrkrvk6STKLzBq3IMxZ6VJ0JrMWc0vzmNMDVHUKMQ8qUQ?=
 =?us-ascii?Q?BloFF3oQZPYmb9HzFib5DiS0j44RDTuP9jbxELLxB+n8y2uYytPWyJCkpNA9?=
 =?us-ascii?Q?608h62a1cDyZvn34yTS3RwSHzonBbcEIDRVd1XIuwRPzenJ3SsboG6WiXydA?=
 =?us-ascii?Q?IXeywmIzhYKg646cj9uYDu9oX4+c/maAoJCplckh3hLEe7lNZYzvIFhJ5nsq?=
 =?us-ascii?Q?WwKFagrRKNpHAhxqmMY5ZEk=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d104248b-e6b3-4847-3157-08d9bad410a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2021 05:23:42.3728
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8UIJxDStJxl8WH3xuX2DhokcewO2Nc5uv3oacsnG5H+BADXCTpk226OAOUJS5RSuqMXAxbexq9Iunk96iUJz7A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR1101MB2194
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b="ltml/nn4";       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=Y7QRfDMp;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of kevin.tian@intel.com designates 134.134.136.20 as
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
> Sent: Thursday, December 2, 2021 5:45 AM
> 
> On Wed, Dec 01 2021 at 14:21, Dave Jiang wrote:
> > On 12/1/2021 1:25 PM, Thomas Gleixner wrote:
> >>> The hardware implementation does not have enough MSIX vectors for
> >>> guests. There are only 9 MSIX vectors total (8 for queues) and 2048 IMS
> >>> vectors. So if we are to do MSI-X for all of them, then we need to do
> >>> the IMS backed MSIX scheme rather than passthrough IMS to guests.
> >> Confused. Are you talking about passing a full IDXD device to the guest
> >> or about passing a carved out subdevice, aka. queue?
> >
> > I'm talking about carving out a subdevice. I had the impression of you
> > wanting IMS passed through for all variations. But it sounds like for a
> > sub-device, you are ok with the implementation of MSIX backed by IMS?
> 
> I don't see anything wrong with that. A subdevice is it's own entity and
> VFIO can chose the most conveniant representation of it to the guest
> obviously.
> 
> How that is backed on the host does not really matter. You can expose
> MSI-X to the guest with a INTx backing as well.
> 

Agree with this point. How the interrupts are represented to the guest
is orthogonal to how the backend resource is allocated. Physically MSI-X 
and IMS can be enabled simultaneously on an IDXD device. Once 
dynamic allocation is allowed for both, either one can be allocated for
a subdevice (with only difference on supported #subdevices). 

When an interrupt resource is exposed to the guest with the same type 
(e.g. MSI-on-MSI or IMS-on-IMS), it can be also passed through to the 
guest as long as a hypercall machinery is in place to get addr/data pair 
from the host (as you suggested earlier).

Thanks
Kevin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN9PR11MB52765F2EF8420C60FD5945D18C709%40BN9PR11MB5276.namprd11.prod.outlook.com.

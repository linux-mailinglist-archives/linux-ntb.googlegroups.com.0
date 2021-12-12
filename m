Return-Path: <linux-ntb+bncBCX27RGNVQNBB6NV2WGQMGQE4TMERUQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 606834717C3
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 03:14:18 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id c1-20020aa7c741000000b003e7bf1da4bcsf11105820eds.21
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Dec 2021 18:14:18 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639275258; cv=pass;
        d=google.com; s=arc-20160816;
        b=i5Qe+47GcykoOHFCQmaqGmKKgqiwhvELMAQfkiNm76lVf5pE7yvvNgXUoddXMadQ03
         f9uLqflF0SjkfxipE1yRjE/W898iXxkq+Rgk1kQrESjxpZgul+aLEyThgWwkGRgs9S0h
         TH69KE95ICnHS1gfuujESka8CdEAkbZtkrMtziO4C4ltQ0f0BnSVn3pGU6OQA43PmTsj
         xNuBfdn0nsBsq6fWexI28XPzl0OF6C/AUDEC9NR1jz3083nqP1AD39MZl162YKdUfGzJ
         9H/WoVBC2ZO357fpOeJGsLhwEAh0EHJ3vpfvK902rywOrE/s+rkr+hBO5SdkfJw00G6G
         uXow==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=vronPyRmUsYqQaMN1qND8pKVrFJR4acd5P8+QBgrd20=;
        b=GXsJem+sq3cvJIsOKJy+hcD+iKeZUHK7G0J8vniqCni5Db2spTnkjk8suLCbSIBX4y
         QxRo3vTV7/dhHta0yKwfHyDHTSzje0sNKLUYagFdpHXzj5+x1U2GgdEydDASVPJVQJAw
         WMzD8XgENGviiO9f1PeGyQk3Rlxg3u611qafoShM0BinzhIeWZm9VY+kq8FxatfGVNaf
         cNzrpcwKdH37KNlI46W+Q3o3CQZ/IkRHfR9HirGdzDZjVWZQwZt/lun4v5RYbT4iOua9
         fSpVR1oEjjuYYn7Ek/NI647qGbx4cvLXrQrfSaWIQTf34AQvwiMMACkTXwFGvwzLX0Rb
         O5yA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=nvL3iQgK;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=OnoJgTbw;
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
        bh=vronPyRmUsYqQaMN1qND8pKVrFJR4acd5P8+QBgrd20=;
        b=LTBCcxvFlDOpC666H8KeFJKsjLmlXiSbBP+JujKVkGrI6LxOts9Fld8g6UAi5t6gcl
         PY1eLp5TFElNkOrrcR/H6uOAOeyJHoglmINxfm2zfDJQ9Ky8QMHbhELxaayZGmi1UkDY
         HsF9gQGLVVJUlWSyfswTHv30GVw1huXsYPCZRfhBAWf5Bltf7a3XATcM5axFOueMxLZQ
         7lQj3C4giy2J4iBZYQtuhfaDij+zX9zA5gSEJcWhKThLfDN6yz/cSrg4f4Ds12BM8bUp
         3ppvshwcIqW8/vfac/Q6E6CCkKbBj8V65YapoUrrLTHh1MJ6krsUez1OWfsZnqcBEKTy
         h3XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vronPyRmUsYqQaMN1qND8pKVrFJR4acd5P8+QBgrd20=;
        b=hJYvvcxb8yUKRBvNbMvpFMphVyYxrXzpnz/Pvt8VA+CXaCGUleUQLTTTx3Hz20lRXy
         Sq5biaFtqPLBCbq56F3kDck2P3iR5lM739s6jJ0JRiUIbvcOPDVkt3TEPpLClOBPEI60
         gzEuQ6FBxKPlC0mGV6nfXsFaG2Iz0wk7FFRYG62i0lADr3S/qso3GG6ir4AnbSRlUltV
         X8FF/UU9kkHcBeSFY7ohiK0fvw4jrfoynlAafaXLppKCif4n2y6gqtiYA45Bokn7SVQ4
         mdgoZ9+k1LE7EtwHQhEnyPFeoux4Z7zFBT7LCPiB6X2bPp1FeEm1qMdv96hrJB5Sc/eR
         Eosg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530CaDCjMknJLjeGfnfQf/vUcdu56rl25VjIU7aYQLb+/cReOxip
	Q5kNXRJrMQoAZ+Ts0E1VsrM=
X-Google-Smtp-Source: ABdhPJwx/5oZsqqoXfIHrECsAyjqqWenJR1HaN2jKEcGFTVRDZimHhHp/ZYS9x1tX0oFWU0gYkiFeg==
X-Received: by 2002:a05:6402:2693:: with SMTP id w19mr51492965edd.266.1639275257993;
        Sat, 11 Dec 2021 18:14:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a50:fd09:: with SMTP id i9ls195564eds.3.gmail; Sat, 11 Dec
 2021 18:14:17 -0800 (PST)
X-Received: by 2002:a05:6402:5251:: with SMTP id t17mr50376872edd.397.1639275257162;
        Sat, 11 Dec 2021 18:14:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639275257; cv=pass;
        d=google.com; s=arc-20160816;
        b=DSZRrgjAOl44jwuaoknaXbcGfZ9Y72sxeMgzYTs9F3hXcSbPXKhDdlPDMKANpgy2ji
         5wIhCiIDA7akFyOL6LsN5FDu8OEN5e1Y0BCPJzh64Kdbki//JsseN223ONC+VNl3si8D
         Z+bgJPDCxmazfz8W1xwW/MSDKLEcV52bmXMrjFa//TQpbcN2eslMtc893Cp8PfNWulJI
         JarMvvmcVQtpwssXmacegt2v5BAnSguXRD6LULLrFthIh58UXAslhNUJAGb/doXdmVBd
         NNKzGDdIgUCh3HhaLKZ0uwhxuJeb/r2aIi7swrUOr9P86hMePJ/2gl5Y/tEEQo3hMyJh
         ot8Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=BcuayxCT+qnHhWVKtvC89DppbmeNGmZEv1HP2kwepSU=;
        b=HswMIAjL3LPFRcbl90tJoRnu7BqxagSNxuMAy+fP4caB7gBc1b/TBa4R+99eWxysVi
         RpVbWZb5/0w2XDB3Ru6umCjmt0mTfMTd1X7yCHkeRLrxFE5hZrBEcTRX4ZEy/ju8isev
         CQvvbBLWvz8DtItmiLDcMjeT6GKP6WKzFR+N5Yi1vyzg7Ub3j5iN9ZaSPOgaRwwcseF9
         hGYMYwcXl6MX9GMpCIcbEgTqmyn/L+f256QhFxrQpPiz9H+ZGIkDTLyZOYl63unr+6tZ
         S7fbb2ABna8fHfooTvgLy6t1gRZTWO3Rn+my3JuQrFFKW4iZi4SxPENKUzQ2MmAJxFMu
         Z4OQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=nvL3iQgK;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=OnoJgTbw;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id w5si279954ede.3.2021.12.11.18.14.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Dec 2021 18:14:17 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-IronPort-AV: E=McAfee;i="6200,9189,10195"; a="299358055"
X-IronPort-AV: E=Sophos;i="5.88,199,1635231600"; 
   d="scan'208";a="299358055"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2021 18:14:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,199,1635231600"; 
   d="scan'208";a="608277127"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
  by fmsmga002.fm.intel.com with ESMTP; 11 Dec 2021 18:14:14 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sat, 11 Dec 2021 18:14:14 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sat, 11 Dec 2021 18:14:13 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sat, 11 Dec 2021 18:14:13 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sat, 11 Dec 2021 18:14:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jbTkldGHBPwziFYogLu8VK2gQq3kJ2GtFKuyX3bVbxlRq/iHPUu3YBxeWSGCCSufLeuCW5YevT6uIfRj/K+NHj5/97ybGs7KfmYO86PBhTKNfJ9e//n2bK1dLNC8F26SG0lHuRnpbUGJNGSHSOWFf8l/uXUqNYvUcatYFoTcwRBi+a/K6t++H22nX5TyH/zWTim7nry7SyeTbUp18ixfPW3LMKgQXUgle53Vvn1QTlvN8+4EwxiorBsG6YkfD5MvB4G8R/h6fJgY5GODBsZBdg5RfA/0lfv2a4/yAfuWhzS1BjPLuh2C0AZrOg5S17+ZitXGQkWHMsPkm1eCn19L+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BcuayxCT+qnHhWVKtvC89DppbmeNGmZEv1HP2kwepSU=;
 b=axRNQXfdN26Bm3xQ6XNiZz56FSYuN8Z8gDPF1GeCUQ2rAEvMiwUcDM89EChCTIxAuNA7IeZG3Y5y1MaVZTqe+jHpe8w6LpHrRi0Enf5m86WzL7W3YdR5yu8PJp5wKpiC7I1EugdGc4IIA0hhpRFGAvnoXupAGbboy4oktXKBy72Cv1lipfP+KtVJdHwvaw6vjGlNRITBxQwXqDIVEMqCUX/qyC8+wlFhaCRD0i90E+H7uqQRkCMQodjZtGwgVX2s0Zg6aGbQ37wRUVXzEewy/6vtldTjBXa+/Aiu3iBlPxiU3hiGYigaOgpz0O3GZon5RQzJml21hIhSBp4jBlUL4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5271.namprd11.prod.outlook.com (2603:10b6:208:31a::21)
 by MN2PR11MB4016.namprd11.prod.outlook.com (2603:10b6:208:155::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.14; Sun, 12 Dec
 2021 02:14:10 +0000
Received: from BL1PR11MB5271.namprd11.prod.outlook.com
 ([fe80::345d:b67:e8c5:d214]) by BL1PR11MB5271.namprd11.prod.outlook.com
 ([fe80::345d:b67:e8c5:d214%6]) with mapi id 15.20.4778.017; Sun, 12 Dec 2021
 02:14:10 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Gunthorpe <jgg@nvidia.com>
CC: "Jiang, Dave" <dave.jiang@intel.com>, Logan Gunthorpe
	<logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>, Bjorn Helgaas
	<helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex Williamson
	<alex.williamson@redhat.com>, "Dey, Megha" <megha.dey@intel.com>, "Raj,
 Ashok" <ashok.raj@intel.com>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>, Heiko Carstens
	<hca@linux.ibm.com>, Christian Borntraeger <borntraeger@de.ibm.com>,
	"x86@kernel.org" <x86@kernel.org>, "Rodel, Jorg" <jroedel@suse.de>,
	"iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: RE: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Thread-Topic: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgABn9QCAACTxgIAAAdGAgAAbd4CAAA94gIAABpSAgAt9SoCAADlJAIAAgb+AgABGMACAAAc8gIAAE+oAgAAmHACAAFJ4oIAAem8AgAE/1RCAARP4gIAAHS7w
Date: Sun, 12 Dec 2021 02:14:10 +0000
Message-ID: <BL1PR11MB5271BFC6B2218CF7E9151EE88C739@BL1PR11MB5271.namprd11.prod.outlook.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com>
 <BN9PR11MB5276B2584F928B4BFD4573428C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87lf0qvfze.ffs@tglx>
In-Reply-To: <87lf0qvfze.ffs@tglx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 36ed7bef-3646-4702-9e5b-08d9bd151581
x-ms-traffictypediagnostic: MN2PR11MB4016:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB4016EB9CD4A1B131B2C5CB948C739@MN2PR11MB4016.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: suOKQp+Fo7Io8LUCLX+JMNXwaor6fdVS7PnvpfSyk3IQXnF8Wzpqu0r1qSwozECdIW7rh6FlxMYDc82LAkNOt/WWMQxzECYc3gYN6Ss8h5X5rWn78fwsFOISNGsltDC3LlCuROWW72QxgKWqN+9+FIeYPR4yXk3O7/jYLhwU0AIRvgeUzicTTkgai1SzCKIMf5zfu2Vt5x8/qo4PYfldHgAUM3N3XH1ip1XsOJhjPbxRSU1Alphov1cr7FB3JzYjje7G9zmUWoUdC6SXtFqLzy5TiNPsiagpWyzum2fSeYNBpJHEHF9vSVFRn6dhArZsmhyLJQw+dQc+aS5yhlHNT54Ik9d4q7/d2C8seK8P068T06WqdlocN14X4e+A8UxwQXnysGOpvBxxcQvZnzmyPybddelUMXo8IJRMpY9XriDnJZx1Ol+KfparlvicusZcZxkPipfsOTUt7gHNdnHvaaBJ/ZW9Pd4JzGBX5bBAVlm/3yqBVRben7rlyW0OhX/wPy8AveG2jyQdicButc/6DdVJ5+e7pQTFuqDot+pm0wJOgrXaruZR2FL2xEVy0JnqSyiKc4sXi1khp9o/cqmQCzbXb5Te8mbQWJnt6wOSkqfD7A6kHpC1TyRJgcL451kXSltuaXp46WOkqVUi1TNGVPQ6LJi+mO9rQGpgfmg7kv3v2jepSflYMN2xlh4OnjWvLJXYbEoFG1EP+WV93TSlLw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR11MB5271.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(508600001)(8676002)(54906003)(110136005)(9686003)(82960400001)(5660300002)(55016003)(7416002)(4326008)(52536014)(6506007)(316002)(7696005)(66946007)(38070700005)(66476007)(2906002)(122000001)(8936002)(86362001)(26005)(83380400001)(38100700002)(66446008)(71200400001)(186003)(33656002)(66556008)(64756008)(76116006);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Cv23W3v7Eu2Hl87hNWWiml7cNgydQKZoL/iuVXPBI0QowyCV2/e2wyBHL4QJ?=
 =?us-ascii?Q?x+IEcu9fn4vY12Y4+zgokgZN9n42S4uAKhQgsZCWVxydvSyhZwLGdbL3OV8j?=
 =?us-ascii?Q?u7BbFN349eWeO+WifAknxTHr8lK17vlNEEQCinEdy2MG0qf5a0A7jA2+Db4Y?=
 =?us-ascii?Q?Zjp07PZsqoRSo+7zsNwwzajsDdknzs/quMnJp9NyiIrROTjuiDyg9PKCggmF?=
 =?us-ascii?Q?1cm2n+vbo65If6e2VPtWZR7MUay1F79UEZb0hasjeI4FAgs8UKZkl8obZSV9?=
 =?us-ascii?Q?2R0lDqpXKCGqvVQhm+hn3DN72XoV0Fe2fEWgziEczi6Nm7ncujyWA1A/o2az?=
 =?us-ascii?Q?VjEUWwLIxLW0WEFA9EanpZX1f5TT3d+xkNkOJa60JYTb+liRkyhLB40CQmfs?=
 =?us-ascii?Q?1VyvpLHwoMDahKiEII4MSz+7lfM8aLeLK26Xkg1npm1WofKwpG2EicbhkqYp?=
 =?us-ascii?Q?dfb/8hUgLqGZHUr+c25nEFUj86s5ow5e5ywzlCh0dFh8gjoZeCqRik93tDuV?=
 =?us-ascii?Q?nFk5kdmf+A5Tkvkd+lHTLtIsfhrfpBS5T4NdSrhHEDP6cWzHYdQ/6X9KoG+U?=
 =?us-ascii?Q?uRKMAxDnD0EM5PWKudtVYH6H0YRmXXUu/ENiVQmEMVVYXyQH2qpyMJRxrCEr?=
 =?us-ascii?Q?HJo4+/YZd949iD1ipoGH2R5KSpDL41k1ZBxNTio2o/js/dGoAClBLLQDB2NL?=
 =?us-ascii?Q?+r3F4tyP2t57oMQMF/32QQ7bC5+Ik9NRTf+x2zoJ6BuFpo5BL7wfkZMEKi4d?=
 =?us-ascii?Q?VS9e/vcbCG24GMEuV5nJdI+yiJIE9aR2bCetwBBR44sbV/MFn3QulyEimXt2?=
 =?us-ascii?Q?khHTSZgN38dfivYcNYMgqkWuY5kt3QJsmxz+vhz6qLRy+qPvHoupVbX9QWWn?=
 =?us-ascii?Q?1R9J1pXOwKPfpDI0JVV9TaomreVqkLZ5/hJwnT4n6G6FwX9rmsQE+IXWVHZJ?=
 =?us-ascii?Q?swn/EUPIt/GCYH0qKr6m9pBuj77LsFTHox2mwkpxJZMTjrJAbR/aKNYNEYIL?=
 =?us-ascii?Q?C86SEERFU7ls5TAeueeIv8SiTD93MObf3GlWKxa0jxbKTfxapjNNSlfNSXkB?=
 =?us-ascii?Q?3QSAlYrcJjEjKiUuAQDORNSbKte1nOFE2sIrHDii0AFZPiK3XPYErN2a0gJK?=
 =?us-ascii?Q?xsK2vLfqGfJGRdftl4A8vhYgFXjWzYEJ6gpJ0Qtuehi+Vz+OYQZB+KuWEiMJ?=
 =?us-ascii?Q?E13DnQmD5EH7TpXsjC9BnlBBKLBT1c1QFJehWfEybXbKMOyX2u87miEQFiat?=
 =?us-ascii?Q?WDweu9vZNdcyv6g3fxcAmBlIaqOUbEiP1+2i+w/6taKFoa32a+XfSDLHkCPF?=
 =?us-ascii?Q?SGEMIEkHae6XSpjS/RV8C2QZY/QEEpj55iMypqPaswgpOK6KxlGJmbSsN1y4?=
 =?us-ascii?Q?9lodfdtEbSWGBfyOIZMPbwayswRXo7M1BocD7nzk5N9wE9dlfMCJd7XuRB8P?=
 =?us-ascii?Q?JmJPbBmQnaD1Nz7uzPJzif7nVIuy6+OlQ3i6jeB0JOve5pBCDCLOm7yM660k?=
 =?us-ascii?Q?aDjVy0HL0p+19OthRLjzI94PSyaGU8TbPnUXVB1XEGeeeRo3b0uzUMCaddjB?=
 =?us-ascii?Q?UUUSDnxLwVUPmOyL96tZ0+AJNTt05BaiPQ42AIYvLCaWFCjCRPfa3iqFiNHI?=
 =?us-ascii?Q?Lqp2LZN3LlPwYa1f6tMmk4E=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5271.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 36ed7bef-3646-4702-9e5b-08d9bd151581
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2021 02:14:10.1166
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YvZ5GNjNY6Lh7Zu9nQOj7GDimjUi0rQZw/rP6PLzKUJPmQScM/IArpyhAxVxCHxccTwcvtQMnRqqNcPW8rsvHA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4016
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=nvL3iQgK;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=OnoJgTbw;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
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

Hi, Thomas,

> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Sunday, December 12, 2021 8:12 AM
> 
> Kevin,
> 
> On Sat, Dec 11 2021 at 07:52, Kevin Tian wrote:
> >> From: Jason Gunthorpe <jgg@nvidia.com>
> >> > Then Qemu needs to find out the GSI number for the vIRTE handle.
> >> > Again Qemu doesn't have such information since it doesn't know
> >> > which MSI[-X] entry points to this handle due to no trap.
> >>
> >> No this is already going wrong. qemu *cannot* know the MSI information
> >> because there is no MSI information for IMS.
> >
> > I haven't thought of IMS at this step. The IR approach applies to
> > all types of interrupt storages, thus I'm more interested in how it
> > affect the storages which are already virtualized today (MSI[-X]
> > in my thought practice).
> 
> They are not any different. As I explained several times now IMS is
> nothing new at all. It existed since the invention of Message Signaled
> interrupts. Why?
> 
> The principle behind Message Signaled Interrupts is:
> 
>     Device writes DATA to ADDRESS which raises an interrupt in a CPU
> 
> Message Signaled Interrupts obviously need some place to store the
> ADDRESS/DATA pair so that the device can use it for raising an
> interrupt, i.e. an
> 
>    Interrupt Message Store, short IMS.
> 
> PCI/MSI was the first implementation of this and the storage was defined
> to be at a specified and therefore uniform and device independent place.
> 
> PCI/MSI-X followed the same approch. While it solved quite some of the
> shortcomings of PCI/MSI it still has a specificed and uniform and device
> independent place to store the message (ADDRESS/DATA pair)
> 
> Now the PCI wizards figured out that PCI/MSI[-X] is not longer up to the
> task for various reasons and came up with the revolutionary new concept
> of IMS, aka Interrupt Message Store. where the device defines where the
> message is stored.
> 
> IOW, this is coming back full circle to the original problem of where to
> store the message, i.e. the ADDRESS/DATA pair so that the device can
> raise an interrupt in a CPU, which requires - drum roll - an
> 
>    Interrupt Message Store, short IMS.
> 
> So you simply have to look at it from a pure MSI (not PCI/MSI) point
> of view:
> 
>    MSI at the conceptual level requires storage for the ADDRESS/DATA
>    pair at some place so that the device or the compute unit embedded in
>    the device can write DATA to ADDRESS.
> 
> That's it. Not more, not less.
> 
> When you look at it from this perspective, then you'll realize that
> 
>      PCI/MSI and PCI/MSI-X are just implementations of IMS
> 
> Not more, not less. The fact that they have very strict rules about the
> storage space and the fact that they are mutually exclusive does not
> change that at all.
> 
> That's where a lot of the confusion comes from. If you go back to all
> the IDXD/IMS discussions which happened over time then you'll figure out
> that _all_ of us where coming from the same wrong assumption:
> 
>     IMS is new and it's just another exclusive variant of PCI/MSI and
>     PCi/MSI-X.
> 
> It took _all_ of us quite some time to realize that we need to look at
> it from the other way around.
> 
> There was surely some other conceptual confusion vs. subdevices, queues
> and whatever involved which contributed to that. Water under the bridge.
> 
> Coming back to your initial question:
> 
> > I haven't thought of IMS at this step. The IR approach applies to
> > all types of interrupt storages, thus I'm more interested in how it
> > affect the storages which are already virtualized today (MSI[-X]
> > in my thought practice).
> 
> Stop focussing on implementation details. Focus on the general concept
> instead. See above.
> 

I have no any problem on understanding above relational. This has
been acked multiple times in my previous replies.

I just continue the thought practice along that direction to see what
the host flow will be like (step by step). Looking at the current 
implementation is just one necessary step in my thought practice to 
help refine the picture. When I found something which may be 
worth being aligned then I shared to avoid follow a wrong direction 
too far.

If both of your think it simply adds noise to this discussion, I can
surely hold back and focus on 'concept' only.

Thanks
Kevin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BL1PR11MB5271BFC6B2218CF7E9151EE88C739%40BL1PR11MB5271.namprd11.prod.outlook.com.

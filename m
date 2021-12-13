Return-Path: <linux-ntb+bncBCX27RGNVQNBBYXW3OGQMGQEIHB6MNY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 33E034721F5
	for <lists+linux-ntb@lfdr.de>; Mon, 13 Dec 2021 08:50:59 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id h7-20020adfaa87000000b001885269a937sf3583829wrc.17
        for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 23:50:59 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639381859; cv=pass;
        d=google.com; s=arc-20160816;
        b=O3Ij+dC8+VJMDmFYfe5PLA5mx483e1glSye27Sr64NwFx2kr121+p4VlAHpkga6vBz
         b3N+NB2az8czs7/W/hCtQyDlLOwH6Xuz3rUpLHAFqqoFBqlsY1pYMzEACPD0T6BBrBtX
         jzURUaNVGSK1kRuzFLtFJwICFl8es+0nJ6aDYUSskrDXhCZI9/4oFv4UBglxtdH6/1cB
         4OvdLuQGXhwoa9Pdxg+lx3n0ovGxGPAy56Zt50j9h9udwG6XYzfpSZZ6PSroFVJbEg4A
         wpOTmsZpBQwX1Xjl9WsM7RQg2rELT1ZJG4Bsk571NRJorhwFMilV7I9EaHqgU92xqo2T
         ryzw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=zfNPtZNVTlqkqp32kQpX7SyYte04dvkkjU8JWw/4mgI=;
        b=u5UzNUMzGrtYxkKwg0MUTucjRTdFbO0wieChlEJk0yHPbrgkjzndd9Dyh5S7FXFqTM
         x8OD3wqlPub1aoGbnj93dWpRvUZnKz+NBo+rJW/hNTkZ2b+xZcrZssuSPDWhNNPEA4i+
         +52zSJlXy/3fmjbUNM+8urKK1JxUfJ8GxKVSIeHT5RUWE1lBSJNbjfn3o97PbWXOUXUE
         BAQ8pX7qF8q7U7LiIn76vNXbGjvhR2mzFGkt5fj/il8N6swOIfQovf1kwVVehiMFSz8t
         sh6/yNF5F0L6uHTjfqR92Ht8CXUP517aM//nIKMrBFpnQ+VgEt1Nt9jwOuEZuZlcNwAh
         WUmA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=BLeLimmL;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=IRie9jBJ;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zfNPtZNVTlqkqp32kQpX7SyYte04dvkkjU8JWw/4mgI=;
        b=WiGCpG/mtE2OiO4zw4ngZIYpue+v2oYYevathHg9My/JJEgPAuoCPP69XRGpZ67nYA
         ylFqWqD6TfbVQGGVhDwgCs6ugeWNJgA5MGO+956GAG34/It7CjBN6SwibytYraNBZKPC
         nlkEOXByeawniNoPmJjuCPqLzNKPiGJ1E32XHNFnnBDQJjPgXX/Ej0AnH6DlWbbGMmdd
         aS3hni56TfaZUHyHq19xrme6/DMRlCliX3CG1QrmDuJaWjFQTjBnazvpyeChFg0Mrsjm
         vkmzr2Ugr7SrsIK0eW+TxtcrexZwcgBBgxlJRnJw2tnaNhma4mCeN9r8ohJTPfcHWm1Q
         fjVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zfNPtZNVTlqkqp32kQpX7SyYte04dvkkjU8JWw/4mgI=;
        b=vA5BqJQ7/lquF+f4lr0/78vJAO5Yg8c+jrKcrhWALpnpoBU9ezTi1oIuuEMqncYicY
         /QDNnu/ch2Y3G1EQrSfrAW3k+zz72OwvKKLGEY9BiJXnzCOyL1Ts0AqibxJowvZf4bxi
         SvKjfPSKovw5etKcfW3CXiqNOi9hQOx5U1CSgC1yCTvmBQZOFnX9aXuHZ8oLyCdfiCCO
         COXRCB384LF0eOk7ruSX2ylGzgvlByeBBWhOU201dFxeu6FZgWzA/fx6chpPDCcyqtLP
         /ptKIVI35gS3MWFvUIe2iH/JTSqzB8xzR+eluKaytCnF85k3gEm48TJGgZwCSfRUkk98
         3s0w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533eI1akojR6TJjWTSBDKmtT75gnN9vfGi6KDVB+uHfXmpIP16Tk
	Wt536bcdY/cPaUZPxF+xYPg=
X-Google-Smtp-Source: ABdhPJzaEZJ2naePIouYJshjUa7ao6lDdIpQFBes2jYc4D7LZHvLURytr6B+jyeOvuu+/x6RejNuHg==
X-Received: by 2002:a1c:2053:: with SMTP id g80mr36104474wmg.3.1639381858750;
        Sun, 12 Dec 2021 23:50:58 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f885:: with SMTP id u5ls177269wrp.3.gmail; Sun, 12 Dec
 2021 23:50:57 -0800 (PST)
X-Received: by 2002:adf:d1e2:: with SMTP id g2mr31440726wrd.105.1639381857819;
        Sun, 12 Dec 2021 23:50:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639381857; cv=pass;
        d=google.com; s=arc-20160816;
        b=DLP1fm0s//fTGHDnLzA1oPEOmOsupSoCttv3Rfy0TppxLuKOhpuK2yn6KFa4IUEEyT
         TYeX33vmd9cdjvvOrIsOYNLIGGbh90jyoHw7hxuV889CX1te5naACRw7Ant+vmPCtdza
         om2cqRRqNkdCZdZFftejJ5XvlDBZ19M8ePguObu9ukWbP6csytrD2II9ef9pyqURKtZw
         Ol9RrW0/roeD2OwfALN5wFva8Cx1IkIjJHA+DOTzDJIGNNu63riwReH86hyB28+Yz2ZS
         VIsByrcaFqtw79maqe9f3UGObf0uCFZ+WylkDTRm8CzW4hIyGdAjNea0JsSQbbyRETkv
         WB/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=S+8Uf+TNLzvPMkktbvIrwHNDm97CWPgm/lo1RxGeULI=;
        b=yDg0GXjrleCh4BENUlODqL/u3qRxwKazP/kNTodZ1u5AInuanG5hFSNIOts2P04u4I
         /4bTR/wvjs1hJ72+OSM0xeKeeWGCwchxu3gqu7VBcdxoYObdoJ1AKEHx5s1lQNvO5QQF
         22YxKQOUegl4qIJpvcR37e8jy4cCp7XWfUUZsDzt+dYphRmEPRyUhwPHrUAmsdUGZ9pS
         wXNykNXv8eP+v+nRAuOUfTADqIAxkew6S1PPlSEkhuHVp2krAH5uZgYWwVlL9lVtiFkG
         dl5Bkj4ZFJ/U9OnGQu8eCNbgWFw5ycmhQR0HPVMibgJokHVPMCunGPl6IO7JRH5h3JsF
         SRJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=BLeLimmL;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=IRie9jBJ;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id e2si556353wre.5.2021.12.12.23.50.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Dec 2021 23:50:57 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10196"; a="238495777"
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; 
   d="scan'208";a="238495777"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2021 23:50:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,202,1635231600"; 
   d="scan'208";a="463291419"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga003.jf.intel.com with ESMTP; 12 Dec 2021 23:50:55 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sun, 12 Dec 2021 23:50:54 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sun, 12 Dec 2021 23:50:54 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sun, 12 Dec 2021 23:50:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hNJq41pYFHNm8gn6V6Lnz6pwOv+ZDyS+QHlIX4Is/ip9j56IvpyWGN0fQfFIzpSZJ0RZopFzjXvlRtXwAHvnPZckvRzFRn3EniNXfFPemzCeiacTIEsBPU3Jm3NF25AWZNyhXfuTDkXEI21ulF2dXmCG0tanolbveWc63ZTJsS+q1ilokDmA2EzACGBiZDmgC5iNOBvfIcR4kzw9cfOuptRYaxmdkaYBT6S3xbi6nHHlBACYp0nfp7ZNw1Cv09MFCy5ALCy1zFGDcl5Ii+mnkTwZvQz1sW6oqFXZhVsCIDdo8IVSJCwhu7xzReV5CvLbmuSlXL5aKMEW7to0MWDY/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S+8Uf+TNLzvPMkktbvIrwHNDm97CWPgm/lo1RxGeULI=;
 b=WVJavp9V0GclhtGCBNToht3srRejOMm29SY7+SZ7UbHCfpdPK/x35FGO4XVUbyB0dsKzC/KzDYbhxctqPxAsWkPPG8mxaPLrKN1LNZNuvPB+BvDHcq0ZAhWi/Jpz7XsGQfHfVK1aUOSri/On2q9GyRlBXMWb1+TQs+Ta74Xu0+nwLkJ25xWx0loRgzRbgwplxqhz0dgb+DK+kCk+Hvj3xmFQENP8QnC1DfN/b+PR11jBNxaxdgLBo6hwiaJhElTbRIxb/xps46rNcCmhDZ52JUPhD6vtyTJRpym/c0qwWK4TwsYg18xRtOmKhesz76sFzhvvBQZzGwOGEAcSz0vFyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BN9PR11MB5484.namprd11.prod.outlook.com (2603:10b6:408:105::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.17; Mon, 13 Dec
 2021 07:50:50 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04%3]) with mapi id 15.20.4778.017; Mon, 13 Dec 2021
 07:50:50 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Thomas Gleixner <tglx@linutronix.de>
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
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgABn9QCAACTxgIAAAdGAgAAbd4CAAA94gIAABpSAgAt9SoCAADlJAIAAgb+AgABGMACAAAc8gIAAE+oAgAAmHACAAFJ4oIAAem8AgABqWwCAANPscIAAWxoAgADV7aCAAT/pAIAALSqAgAB3WTA=
Date: Mon, 13 Dec 2021 07:50:50 +0000
Message-ID: <BN9PR11MB52766327C636245CFA8C9E248C749@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <20211209205835.GZ6385@nvidia.com> <8735n1zaz3.ffs@tglx>
 <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com> <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <875yrvwavf.ffs@tglx>
 <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
 <87fsqxv8zf.ffs@tglx> <20211212233711.GN6385@nvidia.com>
In-Reply-To: <20211212233711.GN6385@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38055116-a1cc-4666-331b-08d9be0d4842
x-ms-traffictypediagnostic: BN9PR11MB5484:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN9PR11MB548463C37E8A6206F72919508C749@BN9PR11MB5484.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0wX6LKRwcZyilLoBb/TQRdKNMQTD44HDJig2G6od77X6o1FewoaFYeKrUhVtp3HpW7dCI7hcrWCXPHeAbXhmjyH8g6y/7SpgcC90dNYUO9Lpneuz7ivEbxxQvsmWE9/8h8MuHPixD2EGEcGtd6YvQKWInoUScNJxlISjOy/PNj/kM6ieL2q5JWKQbltW7aPCKDXiyl3338jfmrXySw5ObbLRkUJ6YZquTfdv0069VQfUrAoJ9gUP5vBYXjWDQ0Jc5js/o3mPh2ATJX4l/yYB9o77RNh3upkQumxRFAKGZSEgc2+OZICS3jxs6MTog3mBmQOuSNV5V2sMjOal7e2Cvoxa53cy9EGy0b7vqEC8zbIMgjiLuwv263P/4fLue2PyrRD9qWFQDnm2vfg150sCxes0/fWw55gf0GeJZ0uc81B8Dfue4plWr8od+tzwVCThIhIJSmycrEHUdlBFvW+XayO7edFLkMHBFHsbWZuEyb63bzjyMWb56ps38D+xLa+9xEJbdP97NkVCXrWTZdjpMCcrGDrE6vsHy0PChUZYhdqCrifqGKRT/C7f/1F45kNsQL1nVrmx/q+tVb2zjg3CkWwQttaSyXBjnMHtNeUaQB7ZXLbEqtQq4CA4dQiz4oPoKyO+9WeRI627J03yzOsgQQeMD3yf7MoHQgOtdft48pUWVAGS2MUEgs78TCEAwBjBQTKPK95GX6wTGQDpOZ8FYQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66446008)(122000001)(66556008)(26005)(186003)(71200400001)(6506007)(4326008)(9686003)(38100700002)(82960400001)(2906002)(64756008)(66946007)(7416002)(76116006)(66476007)(52536014)(83380400001)(55016003)(508600001)(5660300002)(33656002)(54906003)(38070700005)(8676002)(110136005)(7696005)(8936002)(86362001)(316002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?EOXzUo4rWNa/aJ4Nk2YKW8Lca6Rol3XbOXHEGce/jeOU8s/4Om0VqHOjDoJM?=
 =?us-ascii?Q?5m2kp1zXB34bdLv+KUqGvVJGKK6T9HGU8CN68p2byr4ajEiJv5E0+licqRm5?=
 =?us-ascii?Q?FyK9KM8pXDyTWuIIDP7XySwiPCe7N//qXicrV4/tYQMDnroxKLOVCgAYAZgr?=
 =?us-ascii?Q?mi1DYw7t4gg5FJvheRjnPiAluMDSXUMqyABbucgi9Z/8X+2PgxR76cFOWFsq?=
 =?us-ascii?Q?0TZlUK8JgCyezYVvljMLeJiCF3N28nHaisDqox4zxdMLQihqROOB6j9KD0TC?=
 =?us-ascii?Q?qvNJbsTpE/WFjggzx2EARvHovdCDaqZmZZaUYBudS3cyFcuBOeYgNBN73g8Z?=
 =?us-ascii?Q?scQUEQneEXxTfnz3hUuArl24dqW7RTxyF55NpabfyXXFiIOf8dqdjkrvHdex?=
 =?us-ascii?Q?ykNYpXZVSwYfBT2Fm9FHoZ/2SX7tUyPUxFPr3t1KwLw6vdUX7yxwnqHaat2r?=
 =?us-ascii?Q?CDX74dSgCNifFshC/eq75VcNhH4kcJO5RPfBk1tMn84N6M8l4NZ/PA4gmOkd?=
 =?us-ascii?Q?zs/Td/40M6A0OcxODYxqt+6iayBIneY3TtDtw0OORNFmcvx8Ougg+Xo/Bbd2?=
 =?us-ascii?Q?9jd8lQvZtwmAA57qM0kAKnhSGeja49v5QD34w+00BhqExfiX/Tl8nKPjPBmJ?=
 =?us-ascii?Q?icCVMuFeEQMTLRVF3uhA73DHshR311+TJMJ0n+GP8yr7ODpc4MUcJQlduTKO?=
 =?us-ascii?Q?ozqAKne/jp/1SMRGtJTjJ2Y7y1z4qfZe88RkUoMsW+ZgFLMpSlwwkL+u+mNE?=
 =?us-ascii?Q?cVF19WtEjS9d4cbkRRXtukh0K/AdAZsI7acD7GH2iJRWYcL62A7UMdjIlQyB?=
 =?us-ascii?Q?5G1E7933565LnQI165bWU/+eK3Ht7f8DiIa3nF8kh3sFZj+vwk6CzS2QJx9W?=
 =?us-ascii?Q?JaSx7gUqImzaJKUL/pWgmS3j8VVVeP9cnoonpEL3qKcOwW+GuCSzddOU80IJ?=
 =?us-ascii?Q?mixbzASa/BZfb0R5MBI9b7UNV8syj1YePU3RqiHXvlYDphfcgl1YNyu2dmLv?=
 =?us-ascii?Q?cN3aEqwf7xxmS0UuCKgey51Xo7ikTNIFQpXBy/KPwp96ziU58Si0/DnIJJ0K?=
 =?us-ascii?Q?RsmCN2ZXzOAixgYg3Wm8MokuarhVVUV2wI0Fs/W0RO03cQCcafhphExf+yxP?=
 =?us-ascii?Q?EndUPbP8PIrHCSEzRxJqngJEd1zX1GrEYyZRBXC1d3jVN6CQATVpXCPBYcnT?=
 =?us-ascii?Q?BdZa86uLXd+BCSxCkyPLrF9WThGg6jUyhmakQIgZkHXoZtE+GoUJrrvKpEc/?=
 =?us-ascii?Q?e2UvJPf3vy0Ma0f99pAvesgr0GZdJnik8UJuwGdgIKJU9mlIAxInMG5N4XIf?=
 =?us-ascii?Q?lQTmSTxWdvkFr3lxN4XWECI18GaHl6tCTULA7f++H5vckhxsyUGkH8Xcv1s+?=
 =?us-ascii?Q?MNe9+q/p1prTAJW3OgWIzEXgFE40FusDhBmybmhtRDN65SCiplPewHPjmzE2?=
 =?us-ascii?Q?KrJkPZy2bVWp2OO+GLFp2XL0HYpQ1DxHzesc/kXG0pseJ3Ye0A1a7l5R72/z?=
 =?us-ascii?Q?4gD8ncYsLotjG6KYvLZgQeTYJqV0t6U9/gvvwv4X1/N40fWvhyQHTpDlP43W?=
 =?us-ascii?Q?70WKotFvL/Vg0J0NHVma608/PUW7orp50W+Tn9OkolQGLpG6VWFYoua85BL1?=
 =?us-ascii?Q?Rg=3D=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38055116-a1cc-4666-331b-08d9be0d4842
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Dec 2021 07:50:50.4850
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: UWim5/Z3zvyMbpHgDE3GO+r8dD7HueWdHs2cKIM3sGPpOL/NxR2PJOPIJLKh7nBql0fQREItkL15ZKyBERrW6Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5484
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=BLeLimmL;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=IRie9jBJ;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of kevin.tian@intel.com designates 134.134.136.24 as
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
> Sent: Monday, December 13, 2021 7:37 AM
> 
> On Sun, Dec 12, 2021 at 09:55:32PM +0100, Thomas Gleixner wrote:
> > Kevin,
> >
> > On Sun, Dec 12 2021 at 01:56, Kevin Tian wrote:
> > >> From: Thomas Gleixner <tglx@linutronix.de>
> > >> All I can find is drivers/iommu/virtio-iommu.c but I can't find anything
> > >> vIR related there.
> > >
> > > Well, virtio-iommu is a para-virtualized vIOMMU implementations.
> > >
> > > In reality there are also fully emulated vIOMMU implementations (e.g.
> > > Qemu fully emulates Intel/AMD/ARM IOMMUs). In those configurations
> > > the IR logic in existing iommu drivers just apply:
> > >
> > > 	drivers/iommu/intel/irq_remapping.c
> > > 	drivers/iommu/amd/iommu.c
> >
> > thanks for the explanation. So that's a full IOMMU emulation. I was more
> > expecting a paravirtualized lightweight one.
> 
> Kevin can you explain what on earth vIR is for and how does it work??
> 
> Obviously we don't expose the IR machinery to userspace, so at best
> this is somehow changing what the MSI trap does?
> 

Initially it was introduced for supporting more than 255 vCPUs. Due to 
full emulation this capability can certainly support other vIR usages
as observed on bare metal.

vIR doesn't rely on the physical IR presence.

First if the guest doesn't have vfio device then the physical capability
doesn't matter.

Even with vfio device, IR by definition is just about remapping instead
of injection (talk about this part later). The interrupts are always routed
to the host handler first (vfio_msihandler() in this case), which then 
triggers irqfd to call virtual interrupt injection handler (irqfd_wakeup())
in kvm.

This suggests a clear role split between vfio and kvm:

  - vfio is responsible for irq allocation/startup as it is the device driver;
  - kvm takes care of virtual interrupt injection, being a VMM;

The two are connected via irqfd.

Following this split vIR information is completely hidden in userspace.
Qemu calculates the routing information between vGSI and vCPU
(with or without vIR, and for whatever trapped interrupt storages) 
and then registers it to kvm.

When kvm receives a notification via irqfd, it follows irqfd->vGSI->vCPU
and injects a virtual interrupt into the target vCPU.

Then comes an interesting scenario about IOMMU posted interrupt (PI).
This capability allows the IR engine directly converting a physical
interrupt into virtual and then inject it into the guest. Kinda offloading 
the virtual routing information into the hardware.

This is currently achieved via IRQ bypass manager, which helps connect 
vfio (IRQ producer) to kvm (IRQ consumer) around a specific Linux irq 
number. Once the connection is established, kvm calls 
irq_set_vcpu_affinity() to update IRTE with virtual routing information 
for that irq number.

With that design Qemu doesn't know whether IR or PI is enabled 
physically. It always talks to vfio for having IRQ resource allocated and
to kvm for registering virtual routing information.

Then adding the new hypercall machinery into this picture:

  1) The hypercall needs to carry all necessary virtual routing 
     information due to no-trap;

  2) Before querying IRTE data/pair, Qemu needs to complete necessary
     operations as of today to have IRTE ready:

	a) Register irqfd and related GSI routing info to kvm
	b) Allocates/startup IRQs via vfio;

     When PI is enabled, IRTE is ready only after both are completed.

  3) Qemu gets IRTE data/pair from kernel and return to the guest.

Thanks
Kevin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN9PR11MB52766327C636245CFA8C9E248C749%40BN9PR11MB5276.namprd11.prod.outlook.com.

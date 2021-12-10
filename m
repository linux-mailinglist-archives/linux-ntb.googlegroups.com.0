Return-Path: <linux-ntb+bncBCX27RGNVQNBBW4HZSGQMGQEO2NP5VY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A7B46FBDD
	for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 08:38:04 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id q13-20020a19f20d000000b0041fcb65b6c7sf1592079lfh.8
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Dec 2021 23:38:04 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639121884; cv=pass;
        d=google.com; s=arc-20160816;
        b=OuJ/aB06VTr2gC35hWDD7zHg5auJhOmtkJIvhHslKVEcRxoTA9qfkGsB89H6P6RxTG
         PZZ2JZfPhGY5DJONBDQPIky8FalNCKdKU2XcoPlP4EX8cVMpMrDN6qy4j+o41VgR6HVR
         zgJ4ZBGu9zJS2VTtR8vlrEC1WVi+nfA4YKd7Y6ZlvR/IRXoT6foHj8B6MnjHDEvkqP+o
         Qf3r3GxZSKeV1L/lBa6rQMU0EpiY8nmsnS+KWLE5r6rNWgvetCTvMgQEQwGS1dNB08nb
         3sEwuhmem54ADgoC7ZeAcHK3PDs6/7F+PVCLCkHuth0ZqNHosIAiaebzfY/+6QuwXhd5
         Zc+A==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:dkim-signature;
        bh=a4hb+jzhpSKCmNUge0CegePinJXMAzJSm16RhNmidck=;
        b=jH03F0RgFOBcZxWANQHfwnEuGIlicaPJNZd+aLMJoJhVKDOpVpxHkA9t+sc2MwTW0Q
         RbKO+Q0lvU0Y2V8huoJ+G1qVD5BwS/RKyORgrox44eqNy4S+RB06O8nH3Fknty0O4kw8
         rWuWe/PeQ+CY6x+KNq6X1AfInpVCcFiizk1/KH/tq1EwviZFQcCB+HRr3v25DGTmP73N
         MZ81DbdBhL3P0fWgGCEnm8bnF0iitHAKFQ1Yv+6j+l5zU5CwBbYAb7wIfYYlVeuJtULc
         +K0BroLoE1bu35HXWW1BXSyBG7JFkEoBFCfmwppfWAuGlT34nYHlLYb7YrDwBGs7MsJZ
         +L7g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=XBkGs4iQ;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=WNOJGeNx;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a4hb+jzhpSKCmNUge0CegePinJXMAzJSm16RhNmidck=;
        b=AScDIJuCu8zFmGm6E2BUJgqjPYbCRLlAQDw5JsK+tN/Kdtu09zaD4j0lU84Bgl9M1X
         z9gzXxPJN1rfLt9ym1rj5lA0vMKnrbrVD6+p/gs8X07K/fqegxBo+FvNIsD3l1vR8bMy
         9jOBUtMWQZwPxJAt6a3kde/cif1PfFNwEaccMvhNu9rR8oZN21pBrG9+wwQRETjz58qL
         326XcRG/kazmdvziD0OxookUWeWCvlQeF+qnAWaBNAZ1QEDVUhy6dVFVk6UJs41Tee9k
         2R+kodbYZlO2egmORTITNKTQ1AAELLRjcGiInx6kigIuF0+BcsdOI3XOzqc2Aajnfx2X
         sciA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=a4hb+jzhpSKCmNUge0CegePinJXMAzJSm16RhNmidck=;
        b=Rh61t7S44dYwL3Qo19vBeCis36akkxpssKCAkpExp1ObhHOAvg7Max2e39bML+yvDU
         DX3qAW4h2DsO0V9FtRbAi17npoWrRB4Ekw7iyT2YzX92c/J1bPLCPrcX6rq3iJ+/NaKj
         xWG4vcbyM2cz9zTzsGu+t+0FKB9FweqIVRoUbtf685GjFqVNHjFbN6mQz024/moca6vO
         WyOfTB1Pn1sCy6K1MrJgfJR9riw/0m6GjCp31hzAVcfJJ5loJU4bUXeWlsqFBDJjUu4A
         Wnh5xmC15k715QNd7xuyjDWZ4RtXf+x7CJLeLTj0ntOl0Wh36zkVKrGq9CmGO88KkKbp
         js/Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530gGtzUn0lYHer54hRmY+0ChelxRhKEkUdsatxVx9UJ4hLnLjix
	y39Y0P9iRn1plNA4VNNFdUU=
X-Google-Smtp-Source: ABdhPJyUFcd3kC7xwjYEIYWI9ESf8sRbMq6mnIUNsbrIhmudH2brpovZYVVSPcgUItlSvHulEpo5sA==
X-Received: by 2002:a05:6512:1682:: with SMTP id bu2mr10675032lfb.400.1639121883932;
        Thu, 09 Dec 2021 23:38:03 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3d9e:: with SMTP id k30ls4534lfv.1.gmail; Thu, 09
 Dec 2021 23:38:03 -0800 (PST)
X-Received: by 2002:ac2:4ad0:: with SMTP id m16mr10916644lfp.29.1639121882953;
        Thu, 09 Dec 2021 23:38:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639121882; cv=pass;
        d=google.com; s=arc-20160816;
        b=aclA3DlnairVVnpxuujJP4i9YcmmWxITaRtlUFmjrNOOWCB7CJj547vKN4ouz1sX1k
         xa9dWsaXpwBzfdMjZ5SmpFeMT11qUl9nwVNz4KuXtFEDV3wbE+dBeNvMntcPkssHcF5M
         g/77BjqNSPjCWCxVDCdfMHy3QDr68F70fYCh5AK2CalClujLp81TtJlYY4oqntDBBojc
         AvwWuKVKBgVYnUnQrlPTW6ZS/y3pcHowDnF062mtDm5GIlUMcm/K8XBi5rfhdrkwk7AU
         Ugy1tLTJq/ZpnMgMa+V1tYcbY+4tdrqPYMjMQoTQn1d+MXz0Zk9Qy7XDVVV5El6wOnfx
         IiZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=BNQlx0w+RtnTGzK2cGVXlDGep0QRJAwj8io0a3TpCks=;
        b=zKReERSZMEVQlTfit3ND9qb4vm+1uvippHBRmrY1b2KT1H/yepSdq1mzC+Se0nzDp0
         ztLyx7dd2VEixzWU8r1f+UtK1RqZx5jPy57JvhD/EYKS+M7sYlnb0ml9oAej4ROYv4xD
         bCx87luTS3YesW7mJSkE1k7BSIHs7bYPqMZRbzqZFxRzYn7IHSmoQt+AcTK+LQYKywz5
         O7Vd+PNROu3zRSAeNo7Tyw4EIchNMFuG6F+jwir6EJf+hTlrnKMdOVuO3ubA6J5j0FzT
         yLUNTQi/gM6EnV/t8N8C6MI0P8Zw0+wuXTwm9Y2hpdJ6ZB+u1O3xZBRHgUc8s0hJPvnX
         18Yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=XBkGs4iQ;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=WNOJGeNx;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id h12si150849lfv.4.2021.12.09.23.38.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Dec 2021 23:38:02 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="301681061"
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; 
   d="scan'208";a="301681061"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Dec 2021 23:38:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,194,1635231600"; 
   d="scan'208";a="659476102"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
  by fmsmga001.fm.intel.com with ESMTP; 09 Dec 2021 23:37:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 9 Dec 2021 23:37:59 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 9 Dec 2021 23:37:59 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 9 Dec 2021 23:37:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O+dI9ujepQ3DphCZKogwdcvCQ60acchNFpCAjaoIdl6pOkltLKLLcC94++C8tpc6Nsmo3Li9pw7er7Yve/dXb1I7Jp938wjTzrJE3/XpRtGewNgJolBi3YtGGmnR1gEwwtooB4JL+pdWLA+WVPRdKhmDJp7hAvsExFC3UQcgjSuJRHun3MC6A94rycokr5q8q69GMByzxIXUtEl8PZHGUBKzR1LC8nQbsGc/+gq9YMR7Z+eG1q7VvZx2sOZajCoQc8dnHtVsqTRXoJKlqY0ywo7821zcBnum8x+nWQ5a7wEKAAIMVN4J5ZyEid9YkLjyUFehNm8DRgCu4J2L+7+rtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BNQlx0w+RtnTGzK2cGVXlDGep0QRJAwj8io0a3TpCks=;
 b=h7aEon1ZHv+zCGFt+aaFJ0unTyslEwyeVxO1X5v65uItxZGvElKHY9PkEwlnTYt4wMR9R/Tq9/ai53nclHd1NKv7I1hQKa0mcFdy/n2djE7wuN6Dx3JWGc7DDXPzn/YWkui42VXifzAD/z5mB5UyAoLwfhT1OyhTlzlVGrJWV24qeitxqRHsuEcwoiYF2RJI0uPd3Zbow0rxs3673L1Uahd0CA0n34aWmeKTgzGaL4FfLRRBL/Abn6Wzef41CiFFU6mh5dE9SjV+E/cNjTI0Y6xXPS/2pirUNltmEhoVzdOfRE5G2qmEWCwxGDzhWWo2NCr1CDwUuKMFJTBUVbBKiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BN8PR11MB3652.namprd11.prod.outlook.com (2603:10b6:408:87::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.20; Fri, 10 Dec
 2021 07:37:42 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04%2]) with mapi id 15.20.4755.016; Fri, 10 Dec 2021
 07:37:42 +0000
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
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgAAttoCAAEzjgIAACsMAgAAjl4CAAD2IAIAA6NQAgABcawCAAAmigIAAKimAgAAjYoCAAPMeAIAAGgMAgAis5HCAAEEdAIAANO7AgAA+74CAAQZAYA==
Date: Fri, 10 Dec 2021 07:37:41 +0000
Message-ID: <BN9PR11MB5276B9A8D0C4D824999F81508C719@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com> <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com> <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com> <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com>
 <BN9PR11MB52766CC46D3D4865308F61D98C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87pmq6ywu3.ffs@tglx>
 <BN9PR11MB5276BDE2AC58ADA7A66CAFBA8C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87mtl9zs7e.ffs@tglx>
In-Reply-To: <87mtl9zs7e.ffs@tglx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c4dff50-9b29-4e5a-026b-08d9bbaff302
x-ms-traffictypediagnostic: BN8PR11MB3652:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN8PR11MB36525B62261B546958717F438C719@BN8PR11MB3652.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: goExaWsUUmqLVeDkmWRV6YxpdPVQm7QpMYaE7y4GjrEePd0EtLC9FrLcAplcdhW3IZTRC9EbcBuS0nuYeJ3KhLRyBwskhIb7Nn8Iev0ZiJt9DgKtxLQuxub2CCFFpmGr54AMwhvBuKy8yEQmQ6XZHmLZcsYAuglFNHPbYrpHgsoso8K1qcv5D6wKz2co3LYrOQcLyz7jIULOhZ1rt83+MmcgK87w6x5hFEosLu3Odwg/sZ0kx6lOVtgoCGJu9TJ0O/gUsiM6xQCTKzmkjigb4jc+qsNwxXnZ0/7LdV63wMFRIlcJsj1CgIiNI/O1oIL+xfaBaG/N5uDHeiLMy5jRK2a65zmH7lFVS8SG83wgYy256ndvtJgV80iHRJfJJFsk1P7eOM5jPT7DXMLzjAfI3wx41xGkRtbEGJWtaDuqxRrRZGTcyiDdbPlSwDZlRlrAmwlxlanpj2ZuRSBTwsCfVX1vaqOjvushI0M8ln+35vLYUEjWCC+ImsgY6+xEolpdmqUECwaPxQC8+z3lTdZSAzFG5xQCd9H7WFX4x61KutIlhe0aveu4fQQgLJ5KOedVi6FRcfaezKfW+rRUXhmz70TCTvJXaNrFqYzBTSneqbd7UO8G2FG7BUFzpneXNs7Y8CV/WRQj34D03S6ACwJF3Sz7jWixWfGc2fm00hMm1b6RysyObZBVK+/AP3z8tWOVINRoAQXoubkoJ5m/Zladgw==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(186003)(2906002)(55016003)(38070700005)(7696005)(7416002)(5660300002)(508600001)(6506007)(86362001)(71200400001)(122000001)(26005)(9686003)(76116006)(82960400001)(4326008)(66946007)(66556008)(66446008)(38100700002)(64756008)(110136005)(52536014)(33656002)(316002)(66476007)(8936002)(54906003)(8676002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmkwQnF3N2ZSYVl1UE1laFEvR3BJR01TSEF1Tnc3Z3V3L3dvWTV3MkZrcUg4?=
 =?utf-8?B?Vy84QUJLdHRQRmxidmF2MkhYR2NTUWtjeW92cTRIVVJOSlE1VHVrQmlDekxR?=
 =?utf-8?B?OFo3Uk9lTDd3dHVQcHhzcHdnRVFhKy9oTFdaUmNQdTVWOHNUQjBieFZybDRD?=
 =?utf-8?B?b1ZiZ3ZWZFNYODhVVGpKODU4djNWRm94VGNpbE00QXpocWw0dVFMdTJmZGhk?=
 =?utf-8?B?ZVBUbnRHa2RobUNUb2cxbVBIVGlmaUNJMUpMa0JIazNuVytxSmFxTnY0bDNT?=
 =?utf-8?B?Z2htRDBjM1JZc3FEdkVrOHdjZ3FqYXdiVlBPM2krMU9taWZFTHV4RjJuRW5x?=
 =?utf-8?B?NzBoRFowdzlUbmxPWnhoNEpYVmd0RjJacnJ4UXpQSGJEeldYMVdQNHVBbWp6?=
 =?utf-8?B?OHYvUjRUdWRUdHhreFNlVjFhMzdydW1tWWRmYTJmcmlIdjZINzladjVIdnF6?=
 =?utf-8?B?Zkc0cTdRelR6bkZWb25mWWcrNFNuVU45RXE3anp5bUR0aWMyclhpa0NZZFQ1?=
 =?utf-8?B?eXVveTZsbU5INGVwN2pFbk5na2JYS0tvc01uLzJpYjdZUng0TXAzRVAzczJ5?=
 =?utf-8?B?U1Y2a0ppZFVIcldHT080R3VibzF6NXQ1UWQ5YU5SQ2NLT3VleWt4NG5UUTJq?=
 =?utf-8?B?Q2RGOWp1cDArQ0NsMnJ2UWdacjZSai9vU3dOck1NMDlqMjRFVm00NGxTSGE4?=
 =?utf-8?B?bWJiSWZBaExycUtsRkd0dy83ckNVay95L21URTNQblczVWFFWkZPRG1IS0pj?=
 =?utf-8?B?bGY2aHZseS8razBPaXhxTVJqSkRXS0lteUhVRDZpNnMvWkNsWEpYZ2lCc2ps?=
 =?utf-8?B?OEdST2VoSmhCNGJuZVVHV21qZjUyb3liYzFlcVgxWkdRV0lYQVVld1BtQ2Fm?=
 =?utf-8?B?M0tPaDV2K1EyS0FXcXBqV1N5Vm5QL3N4WFhGSFBFK3drajhvb2hNbzFzc3dG?=
 =?utf-8?B?NVl0YlVWeUFhVWIyYkpyTU1pVFNoT1hJTE1IU3Q5RmN4eDRKdG1zN0dtWjFE?=
 =?utf-8?B?REQzOWRYRDBYNmhaZ1c5aU9TU0hvKzBGR2tjQ0xIc0RpamJOc3RkSFR6cHJN?=
 =?utf-8?B?Q2R2VklTbGNaWW1YK3Y1Y3MrN3BWM0FQU0dBYS9OWGVHQ3FlMVZnL01ReVF1?=
 =?utf-8?B?NFE0cmkwRm5LdUUrcFdRamhMV2ZxRFh5VFYrNERvNWQvMS8rdjJUMnlRRENx?=
 =?utf-8?B?NDVKQmx0SCtNKytGaCtINXVTL1dwQnpXYmtEQnJ3RFhMYUN0N05UWXRkMW03?=
 =?utf-8?B?NVRPTjVpS1BOTTBxTUtFOXVWSFJ1SzA3bzU0bXM0SGYvUENJQjk1bFAzY0Zr?=
 =?utf-8?B?L3M4Mi8zZW1vMWRwQnJRaEhjazdBbVNncCsySEx6ekE5eStiNWtyQjV0cG5F?=
 =?utf-8?B?ejNLUEFBYUtUUGpKMUJEelR0OWNFUTJXV3NDZERyUUtTWGRFVUhTYzBHcy92?=
 =?utf-8?B?ZGJVTmtQbTBjNXZObStJcjhVS2F1SlFWdG94RFJQejlsY0d6N2l2dWpNdkN6?=
 =?utf-8?B?MGxiZHpzUzlpbzREcWdqVUsxYW5iWkFDbDViQkx3RUNDZlhQOFAyTVdjKzRo?=
 =?utf-8?B?dDVvNEZNNkZLbEFFMFA3N3BMSjVPclNxTFE2OUlyMXRQeFlaZXVqQzJ0dGJK?=
 =?utf-8?B?V1pJVm1PbElDZWtwZ251Q3Q4UFF6UDZFSlpFL1pHRno2MlFiSzJhT01ld2VS?=
 =?utf-8?B?cVczY1BpUGIvV3F5azIxZWNYTjg3RUh1dkhOb2srN3ZiKzJ2b2xvWUpJdnNj?=
 =?utf-8?B?L0dmZEdmeGtiZXB1dXhQbWJqYjV5WCt6QWM4bXV1Z05wZEFXSVN1Vitvb1FG?=
 =?utf-8?B?SmtQK1AxUzBTWXVWZ3NURTZzaTVjVTVLOUV3SnczaDZ4dnNOMnFZU3pOUExI?=
 =?utf-8?B?SW51S0JtYjZvbnlsUmZPb0hWbzBGN3orU0JQUUlFWUszdnducEc0MVBRZFkw?=
 =?utf-8?B?Y1E2d3F2UmVZZlJKaVhSa3VhVGdEM0RQL1cyd1paM1pUZEV0TjhTdzNNaUdZ?=
 =?utf-8?B?OUk0TElCcUhycjRtRWNna05vUmNOaTdYK1JyeUlaNE82ZmtCVjRQV1RIa0JD?=
 =?utf-8?B?bW93MWRTNFl6c21zTktZcXFWZ3pyRjc2bEpvQmJmbWV0RUNNVlk4TzlidHdm?=
 =?utf-8?B?bHFKZE0yQ2pyN015aDRHK2ZaM3U4NUR6S2FYMTNoZS93b2tDRmpQQ3hXKzRY?=
 =?utf-8?Q?J2+wbxh4KkEV0tVbMPXcPZQ=3D?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c4dff50-9b29-4e5a-026b-08d9bbaff302
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Dec 2021 07:37:41.9007
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MElgu4qeVfYtk4HOYNmN2LGMWVj+aLsN9RojoTS9+PFGWIPLKiNYL6ge9VfqXiXJjGWakalphOeoHXEt1UKg7w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3652
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=XBkGs4iQ;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=WNOJGeNx;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of kevin.tian@intel.com designates 134.134.136.100 as
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
> Sent: Thursday, December 9, 2021 11:58 PM
>=20
> On Thu, Dec 09 2021 at 12:17, Kevin Tian wrote:
> >> From: Thomas Gleixner <tglx@linutronix.de>
> >> I think you are looking at that from the internal implementation detai=
ls
> >> of IDXD. But you can just model it in an IDXD implementation agnostic
> >> way:
> >>
> >>      ENQCMD(PASID, IMS-ENTRY,.....)
> >
> > Not exactly IMS-ENTRY. MSI-ENTRY also works.
>=20
> Sure.
>=20
> >>
> >> implies an on demand allocation of a virtual queue, which is deallocat=
ed
> >> when the command completes. The PASID and IMS-ENTRY act as the
> 'queue'
> >> identifier.
> >>
> >> The implementation detail of IDXD that it executes these computations =
on
> >> an internal shared workqueue does not change that.
> >>
> >> Such a workqueue can only execute one enqueued command at a time,
> >> which
> >> means that during the execution of a particular command that IDXD
> >> internal workqueue represents the 'virtual queue' which is identified =
by
> >> the unique PASID/IMS-ENTRY pair.
> >
> > While it's one way of looking at this model do we want to actually
> > create some objects to represent this 'virtual queue' concept? that
> > implies each ENQCMD must be moderated to create such short-lifespan
> > objects and I'm not sure the benefit of doing so.
>=20
> You don't have to create anything. The PASID/ENTRY pair represents that
> 'virtual queue', right?

Yes

>=20
> > If not then from driver p.o.v it's still one queue resource and driver
> > needs to manage its association with multiple interrupt entries and
> > PASIDs when it's connected to multiple clients.
>=20
> That's correct, but there is nothing problematic with it. It's like
> allocating multiple interrupts for any other hardware device or
> subdevice, right?

No question on this. Just want to point out such usage example=20
since Jason mentioned it. =F0=9F=98=8A

>=20
> What's probably more interresting is how the PASID/interrupt/RID
> relations are managed.
>=20

yes, that's something we need further think of.

Thanks
Kevin

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/BN9PR11MB5276B9A8D0C4D824999F81508C719%40BN9PR11MB5276.namprd11.p=
rod.outlook.com.

Return-Path: <linux-ntb+bncBCX27RGNVQNBBVVN2WGQMGQEW564K5Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2519A4717BA
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 02:56:39 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id n6-20020a2e82c6000000b00221698ffa68sf3859759ljh.17
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Dec 2021 17:56:39 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639274198; cv=pass;
        d=google.com; s=arc-20160816;
        b=gvz/BvNdAps7A+OGoDiISDjGBkJ2+/5WalN/NYl9KtuP5+/7YYQRhBnKmqKkKIUll4
         +IL4l1kw7ybWH2YALOcs7gl0CKutDZbaV8hK68K6+2yht5metDTq3JAJzPHb9IW6ualE
         zdcEMcrS7W73wtOMIGTwusZAsxGMjDvMYGPYp4Z0eSq7a+fkKTpw+CTClAQMAg0MAa9Y
         O0H/IKmeriEJ7YusEf7BRiQ4sq/RfNV1K/4Ze/Q8fvUmp/fAeF74a+QlqoPyaKPAZ9RY
         iI0VWhma0GwGYH6ih6XQh2foM3ZylCyZaceBEgE4H25PF7wVT3hKPT+j+/7nCtlEUXov
         khNA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=rKCpLS1jpaxvuywrX/PRIAlwz/5jDRdlZgNQ17s87lA=;
        b=vBjpeeTRtIktr+mDaBYonHjOL36oXcUxkjl/E7WrN82nEGtL/L6rUapXxOL8NmRP7Q
         NPYBzArlRb6KaP+wfLz21ewKM7PzodqiakwhiNLmEFymiLXwiZEfGWo4vpVfDNIEBV7z
         5yvvoZ33SzCZZBym4j8sxIbN8NaN/zYWPnueqDoLC9BLUveWs199TW82B7j9hv2r79F/
         MMknOI++IWi+0qvgShQ3dr8wE+m49MfxX3bytMWt0AjSi3Q8qm4KDXoLqNzWKj7wsrja
         ldlIAuV09a731vhcF4asdgO7M8zNn1ZXATCspVyN3aSrrpZOFrsm7wa81lzS5ybpUsiU
         HjoA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=gDkc8Q1N;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=IqEBYDmt;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rKCpLS1jpaxvuywrX/PRIAlwz/5jDRdlZgNQ17s87lA=;
        b=kf4/tQwSp2S1tEFvjGlajt9j8SNs9ALnlMhN/t1V+7+k60jAkSHA4k2HKxMwq68saJ
         alGnboPFPLnctLi81/ogl+ZSnzB0/OGMV3zig0r/0woBDnS1AT14TVFT3Hl45HZPYIKY
         XIF0cujqg+YqyfgI9pfnDsvDNUrzMfGflmTLFEmVN5+sqtHoXdWd7FaGLlOBDT1rM97g
         3DHh0VoDr54ZoCyd6bN1px6NTxVFAPGdgS5su6wuwOiXhHIy5amZYj+mEYGy8yCcIUnj
         m0wMkCAmhGpPCL5v683AnxbOkWFxMM6W6vgcV0YD/UoMEtje4SwEfKJXAC8roE8gYzI5
         aKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rKCpLS1jpaxvuywrX/PRIAlwz/5jDRdlZgNQ17s87lA=;
        b=hEDUHG1hs7mdGgRmzDAm8eoAT58aHAFXSYa0TXEbWanZNUUtEBttxsBE3ZR2HzWnf8
         N1RD+9iLpBxkf0++bGvOewRBREcfOmAMsKZB3Jc0LqXyT2IEPJiSbxRjXubNhsJx1TSm
         9Tvk2iqsoN8vy/NFDP+J0Oyxnc4zk2tAMpLYiggcaU1bOJcM5bGHOYgaHXbjNgwNV+YV
         pSz5sujaJhVO95h+e+5f9oSj8qT0VLOjd0Bl0Kt+CfvAb1WL/Qs6Vyj7r9SX6yRBbHqY
         Kf4xZD0KORhPUn6S2t8FpL4yNnsHZru57KF3YJOzdU+1KebzTUPEAn4pRp0p3rSeKFg0
         KfJw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531lcXkDIMwMYWO/xH8HN6ip0Y/r1dZMROa/Ekj7T5Ia9o6Ef9oK
	JdRNkBHFicnlOJzKesWtjPM=
X-Google-Smtp-Source: ABdhPJxBhCssJ3gIIq6ADZXoPvAwFmskP4doAqYM2cARNqz1NIqX7jZdWPCiq6KdqSGbXNTyOjFn8g==
X-Received: by 2002:a2e:93c4:: with SMTP id p4mr21800782ljh.367.1639274198510;
        Sat, 11 Dec 2021 17:56:38 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3d9e:: with SMTP id k30ls2751lfv.1.gmail; Sat, 11
 Dec 2021 17:56:37 -0800 (PST)
X-Received: by 2002:a05:6512:2101:: with SMTP id q1mr20408357lfr.663.1639274197594;
        Sat, 11 Dec 2021 17:56:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639274197; cv=pass;
        d=google.com; s=arc-20160816;
        b=x4d9pLhaa+A7V3Z1OTJkOsK0JqrAoXzdy+1NSFBxOGH+8tkoOAASkfStSgSVAV5nmS
         LO4MLrMzLoR4Ngg45G3FBFlsQsQAV3gFZnfbcKUyr/NLnDoSNCWbIi0vbJWA8t7L86aG
         t5kSMPD9tI8pSU1U2f4kOO3RJun3bXeAC4S7AgueY3s8aRr365Wtwed/9Jm90kMXcUd5
         EZwL1zuglZovB3vuPlUdxfyOJhAKhAu02o/yzAZxzyOvuEiZZoaavxPJff7P6dhMK92i
         kByuKT6qQtA3T00dY/5D0WuadzeufQ8b+Gdbl9pFyLCWe6jFAwZGsv1AUUEilz8lIg/U
         tHLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=s63LHu4YIbBAQJJfSifYoItAZ4cewvwDRjm2hHYfy8s=;
        b=HB9bpqXlNWjc8BQZ0lqsRYRtE/j4ryAigvNNqouRSTJievHmdnO/pXYFHzjpcRWKjj
         XP8ienROioQfJ92rxNE8ccso95mXy4SVooKCAiBvsJ7mud+9edh+fn9hhp5UkRRDed0h
         x9WZMJbTj6Gd1r5yg1kL2lmPztN7pxSy3XY3BX0gGvHf1MtOhwCOBMfn/ZNkHjlQVLsF
         jYn5g0nxgLwfA/aF1Vv9ZhpEkUoTES4l06LZr9YTbbZIwj0yV5dRqetCzN+QogjdVAFh
         GYnIPEoOHF5rEGTvrXk6vUY8izHAhQHLR5VEt7EX3wMOwEaPCXQLmJW04LKXDA6O1NtT
         DnGw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=gDkc8Q1N;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=IqEBYDmt;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id u19si409968ljl.5.2021.12.11.17.56.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Dec 2021 17:56:37 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
X-IronPort-AV: E=McAfee;i="6200,9189,10195"; a="237306667"
X-IronPort-AV: E=Sophos;i="5.88,199,1635231600"; 
   d="scan'208";a="237306667"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2021 17:56:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,199,1635231600"; 
   d="scan'208";a="613374619"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
  by orsmga004.jf.intel.com with ESMTP; 11 Dec 2021 17:56:34 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sat, 11 Dec 2021 17:56:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sat, 11 Dec 2021 17:56:33 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sat, 11 Dec 2021 17:56:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nrV6ZJ/jT/dzWyogWXpyaqdbp5vSeLdTjWeOHdCy6jX3k2xrqBqscS0GpKsGjOq62PIHLcx36B+cvNg5y/UiZdMHN7HlZVdzLvoLRcoL7u0M46fiPtcpA8ZFx6SgIYBy1ATIbjkbzpGqxlQZmUapbI/BVJhuatkTIrpfyNmH9Y8+9h6hsSKE015Sipar42IsjynlX2cS8GLqgoGMgH9Aw0WnozGWV1oB/KUu77K6Z+QauAmVgBXNOExAvmksHiqeUy+S1k6rI8Ke5T6snKt4wUSrDdKSgDkgD0JcK0vXyPEbW+GqwtkTJh/rTWKxi1lygFFZZKl2TcPNipKc1xu6eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s63LHu4YIbBAQJJfSifYoItAZ4cewvwDRjm2hHYfy8s=;
 b=GRbquxK+KpbBsfVcuhG8UmvtGR8Gz/LPyKUNL86AopRULcO4iKLnrZrz/rcDwSV9NdsSIM3GwZ8Rtv7yZy5JZcJZeGvZxS4urAMNDjAVOET/kUrv0ypg08xGybVGAjbUjdVMBIQg36tcpUY3+m5P66kDQxLTZT2ZxbuDGDXmpn8POgcg4lW1DjDkYjFx6ldob8WPIW1cshcP2FINZ1Xl+4EVDl0kL7EK21VtbCTNVL7cVALn2Z4zeatd/9REkvBJA3BntuvcoHp6TN1RZsI9Jfpu1mQUQg+vw59FHMgMQlixZwOzqC09huJqc0g8J9lyqazt48pjKdvQ7pQidI86oA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5271.namprd11.prod.outlook.com (2603:10b6:208:31a::21)
 by MN2PR11MB3871.namprd11.prod.outlook.com (2603:10b6:208:13c::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.25; Sun, 12 Dec
 2021 01:56:31 +0000
Received: from BL1PR11MB5271.namprd11.prod.outlook.com
 ([fe80::345d:b67:e8c5:d214]) by BL1PR11MB5271.namprd11.prod.outlook.com
 ([fe80::345d:b67:e8c5:d214%6]) with mapi id 15.20.4778.017; Sun, 12 Dec 2021
 01:56:31 +0000
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
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgABn9QCAACTxgIAAAdGAgAAbd4CAAA94gIAABpSAgAt9SoCAADlJAIAAgb+AgABGMACAAAc8gIAAE+oAgAAmHACAAFJ4oIAAem8AgABqWwCAANPscIAAWxoAgADV7aA=
Date: Sun, 12 Dec 2021 01:56:31 +0000
Message-ID: <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com> <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <875yrvwavf.ffs@tglx>
In-Reply-To: <875yrvwavf.ffs@tglx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5382d6d1-7740-4aba-a189-08d9bd129e59
x-ms-traffictypediagnostic: MN2PR11MB3871:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MN2PR11MB387132F76D503DDF486A05F38C739@MN2PR11MB3871.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PL0GpkLz7lglXX7yaVGiNcOg6pt+VM/8rEGcaKD9SuBJfz1M6OilevPnXr2SVNYQsh5TVACbjfM86oqgZvhYT23D/XdweVivT8w6w+Bqi7ZWOZ+qWgmuxE8ULpgazaSZUL30hwmedqZY39KUT3E4nLjvY6XBDjr7mbIQm4qYfxvTi1LZ/cGsj3vfTVpp37ux0ZHW0rJ/6tcH5Ngy/KqIwGjOkGHIQjul59CHhgWBe05DB42PYSblLmc8AV9Nfs3pNqMM/pe8b913CoYHN9gWhGBwaUSR7HUt2ZM2r4ywBTDHde00MtD/7nFrRvnN7Xo358mtq2HRF4PQ/zXjwWUsfaVfFYJAq86fSldtBzf52B/lWvCXC1PQ7HwmZA8Wyw8Td1K8QTzYtM1fxMiBeZBLoJnGA2rGnW7mLtKC1eqTkF0laD1DRp56G14EA2o3Q1AWuEwlc/BJhysypX2jE4JSBtqfEqxR9St8jsDR79qpDHRW7hr9ur1rukfjzmrkvzEa9fjZq3bQUcMvsJRHey/M5OeIwnqgBteT6GZTBPVInYO0hZkKeSX81Nhr1ZuEHaHHEOS5TmzpZWuBWuqKm5+3FjFLDsxkNejav59BDdEaf50WH+YjPFOXDqaRYHFhCfevuzgSGCN/46GvtK+CDuFTeDAnFc9+FlwtYzURk1X6j/+PipFjouQU88VQEvyNAFh6imuaEG+mF0l/kk+zWwmHiQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL1PR11MB5271.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(66446008)(66556008)(316002)(64756008)(66946007)(66476007)(76116006)(7696005)(4326008)(186003)(110136005)(9686003)(54906003)(71200400001)(86362001)(122000001)(8676002)(8936002)(55016003)(26005)(6506007)(2906002)(38070700005)(5660300002)(33656002)(83380400001)(508600001)(38100700002)(52536014)(82960400001)(7416002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?DUMXxiXhM3FFRaKsJzHdBEXeSe4LS5TxQ9cAhVIhmKMVs2WF1z48TBZba1nG?=
 =?us-ascii?Q?oLhOp6HW6bRcC3RxPr9t5t/8Vfsm4AQ1ILN0uGe41WYTvet3qdk6SJYuS077?=
 =?us-ascii?Q?rP4pTUIWJJBIgQtMMIkWAM57WHByxMxuDJ7qIqpLWOAfTqqWJIur5pQr5Rh0?=
 =?us-ascii?Q?KF/PpdfvK4PPsmun0Hhoc4CqWhsxoOJnam8NS3Kn8egDqKP2U/yJBNub2ZfH?=
 =?us-ascii?Q?5fB+3NnusRBpGuRWJ8rTIPioDc8hr9mA/XVGD18FvL4HOch5IUG4RiUS93ON?=
 =?us-ascii?Q?NQuyXnEKRu//vpmI/ncQZA/jhzBupsAiCxjwKMncfIV3FXlZaZ3Nekp2HWAf?=
 =?us-ascii?Q?/qHYhkOr7Mi7QXeNb8RwHo8/Sa+IbDasNXrSi64UDD/Noin8ORlo4xwqiO6g?=
 =?us-ascii?Q?IGv3Q/9xcC/lScG4SURGbxSjjJ/ErOx4k/Plg9Zs9Fn89TfJ5y3Ui3SbJ1Bn?=
 =?us-ascii?Q?aiUpl3V0+N8Z/jPSYrijJ8POMjtjZwdtc3nG1L+Mm2x0pJv1D7c4tk3o01jI?=
 =?us-ascii?Q?GFQN+6MLp0FpYgakcKg6a+51hu/apN8VWlE9DG8NWKl3eEpXA+Uiq5PcziWB?=
 =?us-ascii?Q?nI0gGx9RJJBCgY2KAOQH1HAf/We3wrsBPoiujbfi+vVyx4aOl1/9Dgb6vw0l?=
 =?us-ascii?Q?dQcLIXwe2uHN6OHoSwspF2K+eOZ5nseoCy9ZpP7v9qrSHrK4S6oZZo2EDvKY?=
 =?us-ascii?Q?+z3HYnyTQ2jJpAbgL2q1ijsxTmXnCFibcAxvxHJvGKThZ5KCQ8l8jGY5GROI?=
 =?us-ascii?Q?cUB361Jus3pHWvhfqyh9mwtmu1MCva4k45FfL3llgOXspix2jd3M4BLe5ebZ?=
 =?us-ascii?Q?iSwM0vfMaSyF6lis9vdluNMWYFPyC3CaIfZdeQ7pEIgW1rwA11NsHasJQbCR?=
 =?us-ascii?Q?cWk0lz9MnCe+LChnIUPRyxvzFL8iZHEw0NErgmQe8bGnpwPW9suzO7ObkKv3?=
 =?us-ascii?Q?wfzxZgFc7AONHgsKBocdjepHjste4CxL5pVreRFteiavbCx6dSw+2HtvHyU/?=
 =?us-ascii?Q?DGKNwlTlhtMM3pYNrSrz1uEE2DsiHoNAXnLqAl4fYlqA9NXubb3gJ7trLMLY?=
 =?us-ascii?Q?MkRANAKvSNntt1XYpOl45hQU6/jQ/y+ViYTDjiA+nqy73FJony9DLiDsEai/?=
 =?us-ascii?Q?6vppnteZkH2U9EFswPYzFXbY6cH4pmyrKpihV51I53G5C03uRswnyj9Ysgbb?=
 =?us-ascii?Q?kqy2wIfxh9GluthMj8t2Meb+9giwlC5jGHM8KQO5nsf1er07gwN04oeR76kd?=
 =?us-ascii?Q?wG1VI1m39yzmrRri0W47pwDASpgkp8kjH+XOXWQWs5BqpnYZmrKUTRVF4X0c?=
 =?us-ascii?Q?YtE6jq7vGE4aZrCiewF/mPtOaOHA2ZwjgsMYuLveBUfioFgCFdkHjM5CrBR2?=
 =?us-ascii?Q?38//u7NTef2/GI6ryqdcmRXQ3eIK3Bew2RhhKTbwV/ymuIqYTG37+TYWacCb?=
 =?us-ascii?Q?rGjoFUzzrCQ68Nj8lopHshf1haHCVTqn4GP++7wrgYrCm3PTzSuA9kmqlxa1?=
 =?us-ascii?Q?Y5Xt1RkAFC4fz5ygs6R4K2gWHcVyQEgsAjj30Kay8oqmtzdMWAvys2tWcxQx?=
 =?us-ascii?Q?ptpKt5zy+KK60rzIqmNapTnuOENfAsmULWEz6G7A43cLCtnC+LB+1itYZHyd?=
 =?us-ascii?Q?ZXGsGM2sar9pn5C09HQyI4g=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5271.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5382d6d1-7740-4aba-a189-08d9bd129e59
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2021 01:56:31.2265
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HuIDCOJdFjarZFqQ8DWCUKqEi2Z/iX9oNs3EtMUjetsSeGkizPHBnXJReUIlzBRzYsaUzYfHs5FwA/ZUzI0rZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB3871
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=gDkc8Q1N;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=IqEBYDmt;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
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

> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Saturday, December 11, 2021 9:05 PM
> 
> Kevin,
> 
> On Sat, Dec 11 2021 at 07:44, Kevin Tian wrote:
> >> From: Thomas Gleixner <tglx@linutronix.de>
> >> On Fri, Dec 10 2021 at 08:39, Jason Gunthorpe wrote:
> >> > It is clever, we don't have an vIOMMU that supplies vIR today, so by
> >> > definition all guests are excluded and only bare metal works.
> >>
> >> Dammit. Now you spilled the beans. :)
> >
> > Unfortunately we do have that today. Qemu supports IR for
> > both AMD and Intel vIOMMU.
> 
> can you point me to the code?
> 
> All I can find is drivers/iommu/virtio-iommu.c but I can't find anything
> vIR related there.
> 

Well, virtio-iommu is a para-virtualized vIOMMU implementations.

In reality there are also fully emulated vIOMMU implementations (e.g.
Qemu fully emulates Intel/AMD/ARM IOMMUs). In those configurations
the IR logic in existing iommu drivers just apply:

	drivers/iommu/intel/irq_remapping.c
	drivers/iommu/amd/iommu.c
	...

As I replied in another mail, the 1st vIR implementation was introduced
to Qemu back to 2016:

commit 1121e0afdcfa0cd40e36bd3acff56a3fac4f70fd
Author: Peter Xu <peterx@redhat.com>
Date:   Thu Jul 14 13:56:13 2016 +0800

    x86-iommu: introduce "intremap" property

    Adding one property for intel-iommu devices to specify whether we should
    support interrupt remapping. By default, IR is disabled. To enable it,
    we should use (take Intel IOMMU as example):

      -device intel_iommu,intremap=on

    This property can be shared by Intel and future AMD IOMMUs.

    Signed-off-by: Peter Xu <peterx@redhat.com>
    Reviewed-by: Michael S. Tsirkin <mst@redhat.com>
    Signed-off-by: Michael S. Tsirkin <mst@redhat.com>

Thanks
Kevin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BL1PR11MB5271326D39DAB692F07587768C739%40BL1PR11MB5271.namprd11.prod.outlook.com.

Return-Path: <linux-ntb+bncBCX27RGNVQNBBW4HVOMQMGQE4R2TRQQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id D2CE35BF85E
	for <lists+linux-ntb@lfdr.de>; Wed, 21 Sep 2022 09:57:15 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id v62-20020a1cac41000000b003b4fca0e80csf124993wme.0
        for <lists+linux-ntb@lfdr.de>; Wed, 21 Sep 2022 00:57:15 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1663747035; cv=pass;
        d=google.com; s=arc-20160816;
        b=dFy2ZQIj8EQrqUKTa9OrBpGL5sHgAWBG4fARQEupzgTalr6OmtJlt2jdrqVocmLmQS
         7ecm2TKO6oam74R48crUwo7MJ6K9P06rSzA9O6pHbbl9aZUvgsEsbM2w8ncEPvwH3tpQ
         R0f9QpufUfV7fcrAGQMumwlr674BoZ8TKaLKMUFlx40D4IiCVaWjpsGsqGdn2OlgFjug
         OGU+tMmyzIj510d/Ymwfu1og4dlhXahwjvjVHtn1mXvXcGIp4DR2ZmSjeN97lu1tOsul
         zNO3vLggo6ZARDGfUbF/WHDjQqKNam1BWRSczd5aDouj64ZctbTHDYsdOpMoPLdzAOQT
         Y62g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=VqhpRKzGdmnxZ4OLdMUfJv6n95sLBnAP6MVsdMlPkao=;
        b=XOciSESF9idMGcBTTJIEndz+HfpyC375dlY3rrV9OXhtY5P/c49ep8nkXqsSH+Ir5I
         XDcOxFzjN+JaooF05wL8RzCpzMT/vapuM5xo3Mn1jJOGE3aqykJksoMOLnpIwJdV8Lor
         mesea2rZe6AqHCRkjxGsgG8KBzrzg+SQWpZ3k90Nq3X8c/Z3sPMg1ju80dZVRgVKN0Xx
         syXi4ylGQwRHyntcNhl88b/SMEamrEm8Ptyus9TO5dLlmpKeCsqD5T2bY5RoEXwRI6qQ
         5WRzNM+YEBM1eVOSpQgwvma7jTNys/yf8gxPGhpgF8JYbobFkV61UB6T81q+WwBq4o3x
         B8KQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=TGEiLhMc;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:sender:from:to:cc:subject:date;
        bh=VqhpRKzGdmnxZ4OLdMUfJv6n95sLBnAP6MVsdMlPkao=;
        b=I1HW8GjEYp1q+ImS4Ll/q8lqJp0aPP8ArpKCtFvhaB81zNtGtcz7V8G01oNwClgcjo
         CHNhXWkPaAhDNfukhMsRtIPnrs3cmUYJz++9XOXq37zfLdld/9VKHgAJqrDKDFPceyTR
         S6qthF/iA9qvoToMbNRCv0Lmoo+L+Yok5IlIBwxFULsRedEBO844nvKoQSwb/hvOdX9f
         38/GNsaoU6L5WziIj9P9NTRKkED2FcDHF8T4UlfhZhg80Q+IoOdS7L/m9x4KeJF9JZJj
         VTzev3bPTLl2s7sJehbV5XyrP7YORDxGZ5T9AlsHV+moZRh/EzEDbw8NSY899x8Sw5a7
         kXSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from
         :x-gm-message-state:sender:from:to:cc:subject:date;
        bh=VqhpRKzGdmnxZ4OLdMUfJv6n95sLBnAP6MVsdMlPkao=;
        b=DT4AooiW2kqwbB23HBzry4Gpo/JsFeHQB4c9Kav5ZolcW6s3Lb8Nxn19+JUKMQY1PW
         p34gouzboZ4/yJU9yqR7P9hpm4++ftWLmwYlOx/B9fGUYKDktgVeswX+uwK983IIdpT4
         6r0O8nK4DpuuKiT8TQX7LkDlWAr7AI9yHQpnbNHWplt/1G4GoyuMo0T2Am2EbNEb0xEx
         8PWdjW0CAtwGgvR24iCNd2nUPDA9aRoKy1Yy9zamaeqRrUymimcNTqcECTVQlQF6NVyz
         M9FlYl9BOSVhJuhO6WFvdH40zXWiI+O6YXebMzctD1lcyT+Wv8fYYnBVavvy9sIXP6It
         3aEw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: ACrzQf1Mi/fKctSAvfnirNqS6W0WDKWXWOuVPjY5Hccjqzuojp4ICgAc
	XTuMVJwcHvAwTv+T0xFJI4k=
X-Google-Smtp-Source: AMsMyM53edW7xDRjRcCC/rC0UdpwEO/5my2QGvMPZQI3oYKKR2lsmZWz9Bdx7NWaa2y3xcpxbN7QfQ==
X-Received: by 2002:a5d:45c6:0:b0:228:8bda:f345 with SMTP id b6-20020a5d45c6000000b002288bdaf345mr16327789wrs.584.1663747035382;
        Wed, 21 Sep 2022 00:57:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6000:695:b0:22b:e6:7bce with SMTP id bo21-20020a056000069500b0022b00e67bcels6336844wrb.1.-pod-prod-gmail;
 Wed, 21 Sep 2022 00:57:14 -0700 (PDT)
X-Received: by 2002:adf:ee89:0:b0:228:7bdf:47d with SMTP id b9-20020adfee89000000b002287bdf047dmr15865811wro.641.1663747034229;
        Wed, 21 Sep 2022 00:57:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663747034; cv=pass;
        d=google.com; s=arc-20160816;
        b=YHJUkpPmd40MHlzKFKEwaHIgVbGh3vSJiUYcmui2L1xkf/RHzLbP7BhLJt62Q5mp7E
         pNSQBd+sNBE7PAtX7F0iNlnVsDFFxthLpoj5CvD8WRFU1GgrvTAQdBWBe+xjUgbyvlMg
         D1GP4URRY6vLHx5u3d96ruBZCdS8tnO6CcO9DXH6pQTkn2vLOJISfvm3qNPrFXaiGv85
         QtPz+IYQ0DV7M/jpcf4sFDRqmYxEqxzNx3KyUNXy3BUED4r33fu4/W94HJcEfqMf9B36
         +6h1PmvOk1ylO8xw+ZTOfELbx8HLFbMEc8EKP+gZFQUjdep3zFfu//q92ZUHmj3oNTpk
         3u5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=p96RpKE/fQwHi2+7oLpCorwPul/+7um6geOGVQ186Eo=;
        b=I0LhXaLXf7QwcU6M1/nT/4Ntg2vvax6KeMMtyS/hHsUioxJO5PrKm4O+6CdTocNeZ/
         JL6vcfRbsa7uf1GjiOO6ESzkINFSKWbNYAMhKkimNrNaq7xNtTvwUVZBMtJrf1+kE7Hk
         EIRKkvKwLgdVtaRT3S1L49msmr7ERq9c+CJWDkCsTgrGWOrE5ywBpGHMWPdvKEFRQcy3
         BK6trs9wKpNG9SbSZQE5hMkn+EKRLkESqo/2MqObPtFGCzW5zV5aPMxvYkO7VpENnE8h
         bG1fRB0ladRJ02nIvY9viwvXNqi1AVzshLe+xudXFmWiNEWTM3mJslwYj+1NBL19JLP0
         MMeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=TGEiLhMc;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id n42-20020a05600c3baa00b003a54f1563c9si81833wms.0.2022.09.21.00.57.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2022 00:57:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="299919876"
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; 
   d="scan'208";a="299919876"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Sep 2022 00:57:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,332,1654585200"; 
   d="scan'208";a="652432278"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
  by orsmga001.jf.intel.com with ESMTP; 21 Sep 2022 00:57:07 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 00:57:07 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 21 Sep 2022 00:57:06 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 21 Sep 2022 00:57:06 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 21 Sep 2022 00:57:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CLoJIJp/vCK7cBczRKFuX5R75ECj9RYZY94QO005vlc3yRmSpXButRe8ei+otQWbIuz1KY4mB4WoE12ZP2WyblyQQXJqCYCDpPvAsgtfEJzuni729owo/qAoH+XGx2qs3JGyy4q8/XbdTRzMGfhui0nqj8oim5kkbNur16bF1Wz/6H9a87pL8NAePZzrzrWfdKwDJ0mx4Oxr+PxbgbMk+F/N+xNyen9vHxOc9I5VkTUGmDOBVntVK/rr9CrToK969jePOnBexa95OtSbBL2G8CL6BTQG6dWQtPtKPcf2b4MHeVwg4XVzaYkH8jceFo/YSsf3yjA0aoTwOdrCN1HR1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=p96RpKE/fQwHi2+7oLpCorwPul/+7um6geOGVQ186Eo=;
 b=DUqMjaR2GKEJGgNuq62KYmqwY7G/R1x3PjriFZn621fmd1LXtUEpi2sSiOGUAZdnEmI94vPlQ6PyTc8GPmGljR9LYm/2VoVAJnsH1vF8yuELZBsru3j1pXWo855p751ZRnWpelSzedsSmgGKRkwdj8UpMk9TC2I3b1ysEyRNrqmowKAtx+3crPlSwzrwrjSFhQxi/kfXRZ9pD7JzvGEn96VPj5xUW0qcF7bhq519RsR58NBOZZA/dTJAawBC0Z1nE5CUJPnAB1YkBx2t7J8Vgh/8r+NmBKYPIq9PE89oLXYZy9nTQT1oqB0uD41qsFMbE9o6kltrhFnxe8xZRYr5vA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by MN2PR11MB4630.namprd11.prod.outlook.com (2603:10b6:208:24e::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.16; Wed, 21 Sep
 2022 07:57:01 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::a435:3eff:aa83:73d7]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::a435:3eff:aa83:73d7%6]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 07:57:00 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
CC: Thomas Gleixner <tglx@linutronix.de>, "Chatre, Reinette"
	<reinette.chatre@intel.com>, "Jiang, Dave" <dave.jiang@intel.com>, "Logan
 Gunthorpe" <logang@deltatee.com>, LKML <linux-kernel@vger.kernel.org>, "Bjorn
 Helgaas" <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>, Alex Williamson
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
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgABn9QCAACTxgIAAAdGAgAAbd4CAAA94gIAABpSAgAt9SoCAADlJAIAAgb+AgABGMACAAAc8gIAAE+oAgAAmHACAAFJ4oIAAem8AgABqWwCAANPscIAAWxoAgADV7aCAAT/pAIGycJswgAhPdQCAASQawA==
Date: Wed, 21 Sep 2022 07:57:00 +0000
Message-ID: <BN9PR11MB5276CAB439EE27557FC17B1A8C4F9@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com> <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <875yrvwavf.ffs@tglx>
 <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
 <87fsqxv8zf.ffs@tglx>
 <BN9PR11MB5276961D838169BF237928E18C499@BN9PR11MB5276.namprd11.prod.outlook.com>
 <YynJqID/E5dFCakg@nvidia.com>
In-Reply-To: <YynJqID/E5dFCakg@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5276:EE_|MN2PR11MB4630:EE_
x-ms-office365-filtering-correlation-id: 714d42a3-fb50-4e88-a562-08da9ba6dd6e
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FO7T63Xig+AKNjd3U2qP+N+E1OXnAVERIESWiZbdgbwmKJlgbv4XrRhP9x+u1lRHLmitYbHCk0tlKlmjgjbriW8KulAdKUh9Ox6UF+z36VQHaKzb+x3CnQ3eq5QoYqvAKQXxoxLEqPwEInucIvuQXeZesorQcv3BwPNnUh3FmO7houE4apELzsNm5RfGd7u6ffvmk8FEC5Pw8vWwnvmdLfVeqFwNCc+j57OPHUDv7s/fACVi5Lafrp7/w5gDGhCliSIqffTr1tVHNaoZhm532NafnfPbtBzBCN+IWVEBri9XdUFbJdoPMz1moiBt7l50PDq6/vlapEe2hn8snoG/804gvh5g2jEyp43BnjAM+IlkTFVniZm/HmoHHRAPJctIA8u6q0Yy3vFlI/hNsTvqkNfl40D2lmJ6pXGaRvLSa4rpLXtDj/kw7FhluMzcdgONeGaPis5/Pe9LpHrrgDNLIPz4l4RokkuxvDWfJzFp0EKEl8tP/1mpnTI3kz1/Y1HV1QPTaQRryE2KtUakP5Xk/JfA2B8o5mhXxm74rKVh1iCh9y6cANxtPPSW5v8pfwXBa5E/0WhJcxHz7WCdNTUVfbJ+TJOWRYZjdim02eszSZof17komlMkSc7Pk1e8SMYeo77lg0R3qaidVSf0e/U/GZCAUrgFsgs0hJaZv34MrRtrxDXC4uV22tf+nClFa57tNFPIuoPG+V2ve9Nj10oQccCEPuuXXkQ8oUrsgmjKyMjcPeOpubUWmEpWpzKZcgFM2kXBqlSW0IhV1qdvWKSKMQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(39860400002)(396003)(136003)(366004)(346002)(376002)(451199015)(38100700002)(122000001)(38070700005)(33656002)(2906002)(478600001)(71200400001)(6916009)(8676002)(8936002)(66946007)(66476007)(66556008)(64756008)(66446008)(4326008)(76116006)(4744005)(54906003)(316002)(52536014)(7416002)(5660300002)(86362001)(82960400001)(9686003)(26005)(55016003)(41300700001)(6506007)(7696005)(83380400001)(186003);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?D4asN3dN3UmVvMo5Rc96pJWQenKM0u26QPWb4weiQgmAYUoU0NGC0goizzQJ?=
 =?us-ascii?Q?KPo9XfcZ6HKvTy3qPO6vXacxCgAuM6Xs4X6RK87OBDkrt/5/dzCQ6mDrpcmw?=
 =?us-ascii?Q?RLguTz7l/3Xh9wU9C76AporlqwWyLJkMp1jpvcmD9dLA73+8PlyfA8jMegHl?=
 =?us-ascii?Q?tkVrZ9Tu4k5pvk6+jdAU6DtWbaV4T42uRrssQNpQWbOJPayZVH9RD0INlbd0?=
 =?us-ascii?Q?Qjuog+r0Xp9ZxxzXJZp1riC2Y1+gecr4Y8VhhJXJyVrZOW1PsDtz87TOjPxn?=
 =?us-ascii?Q?gv2pWTXFEvjgrzBm+1qbGlnISeRrdJjRt+GnxWupNiimKxnBqU0jWjoRf8ws?=
 =?us-ascii?Q?oXG9EfYtVljV2BdazS4/mFU32lsdD3ZqLwZAe27L3BUgriOvyZ02DEBHVTLv?=
 =?us-ascii?Q?OJoi6yC81Bl9a73TuvdOgCgpcjZB1eHcE3gGGoqRUkBmOwp+nMV4VpQs4l8w?=
 =?us-ascii?Q?XtRCkQjgyFMZ8OJrV8w7WUfrEePIe46cNiBVY8UonNCCBa/bEFAXnx4DM0vr?=
 =?us-ascii?Q?YvC+sItlEyKNJ8/KpcE9j1KkBhbpK5SQOulHMO8nWjOyozGz+OJf0PnoWFpi?=
 =?us-ascii?Q?Fv3JjfSg32b+LT6X10SLtLKKDR1aWLs/5WuymS9lI5naOAU73fSOh+CqRFIZ?=
 =?us-ascii?Q?F86dU8mdPmo4tJnFkqQEj3D4KU/IBqHpZmcdpO7Yshr6k+KkQGiu7aE+Yzu1?=
 =?us-ascii?Q?JizCPfHCUTbeQbl6KCyv1TdQVn3mT16yshagt9MY4C6ooeiZjAhvGfye5VSk?=
 =?us-ascii?Q?1QA3FWLIeWgpCsQmrAjmqzhC5JVMT08o1JN5oIQ1zTd87lHg7Ixn873ItiLI?=
 =?us-ascii?Q?cvtVNdqK9i9yKD5eHdV9NJNzoOmRX0vDwC4aA3VFhg5k5jnSl5EPTxeqKTOy?=
 =?us-ascii?Q?ZVpHQYplG4GF15uFu+sljhGk6vEcp9i6eERqXp2ZlquJJNDZfKVA2rR2XInx?=
 =?us-ascii?Q?OQRSr4jRBsuefJO0cojGQ9v7pOH82+PKRefo2UoXdnfA8yLDICNwYqKKPFkd?=
 =?us-ascii?Q?P2EKEeS1vt9Ch27L0omtwS2jfKvu67/Fa+xdSDcRqkM5FvBp0gH/JEcPgoBz?=
 =?us-ascii?Q?CilXm5+ZhucgYFUSeCSrMlHMoacLi1VcE1r9afnyOlCC7kWzcANIM1X/HhhU?=
 =?us-ascii?Q?lGiSY4Jsd1k6zzI3X6Y+vyDThF3n+7Lg98vKRoaGoGOpz7VEukOpycgds08i?=
 =?us-ascii?Q?J1dgLfNPlO88XgZpZMeYfRrRbAUc9zOFr1U0okKxJ68xRlHDzDTn2daXQCyW?=
 =?us-ascii?Q?biXuX4B2uO1X9fCUp/0ZCqNytzEVvUiJbUJ1jXmlRjn4mMTdb7sDbE4TJ4lt?=
 =?us-ascii?Q?rhMR3qzL/So5EflCdEgrgiBOOVpYoGSj6UwR+Y6/YjFW0Z+cJl7ZKyZItAMh?=
 =?us-ascii?Q?FpvZwZkK4DbWuy8PI7E6gFcYhjk1z8EaWdIjtLvLPz+I/MWp4YGmhX1Oopi6?=
 =?us-ascii?Q?0kbAwijxVhmZo4Npqxkd8x46YK3wYzLAoUhs9i3Qd2kt/v13zvyMett9Qr0y?=
 =?us-ascii?Q?LpsD+lQpWk7gac5JWk4McsblHCFCBGCJBBP2B9KUqXAt2DlBiEFQCFvBH+SC?=
 =?us-ascii?Q?RakHVhcPGjDddQcRW/SHTqVM8mzjrnc+ACiY6q5d?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 714d42a3-fb50-4e88-a562-08da9ba6dd6e
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Sep 2022 07:57:00.8082
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iGQ2+wpbyK8gRqbK7rMWlTD2rFeY6piiItC/mrjTtt+dec98m5EN7s4uVFp/qO4VsmkDwY/JMq41MALfgc5JtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4630
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=TGEiLhMc;       arc=pass (i=1
 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass
 fromdomain=intel.com);       spf=pass (google.com: domain of
 kevin.tian@intel.com designates 192.55.52.115 as permitted sender)
 smtp.mailfrom=kevin.tian@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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
> Sent: Tuesday, September 20, 2022 10:10 PM
> 
> On Thu, Sep 15, 2022 at 09:24:07AM +0000, Tian, Kevin wrote:
> 
> > After migration the IRTE index could change hence the addr/data pair
> > acquired before migration becomes stale and must be fixed.
> 
> The migration has to keep this stuff stable somehow, it seems
> infeasible to fix it after the fact.
> 

This is not how live migration typically works, i.e. we don't try to
freeze the same host resource cross migration. It's pretty fragile
and the chance of failure is high.

btw isn't it the same reason why we don't want to expose host
PASID into guest in iommufd discussion?

My overall impression is that any such exposure of host resource
requires certain guest cooperation to do after-the-fact fix to
enable migration (though it's obviously difficult for this interrupt
case), otherwise the actual usage would be very limited... 
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN9PR11MB5276CAB439EE27557FC17B1A8C4F9%40BN9PR11MB5276.namprd11.prod.outlook.com.

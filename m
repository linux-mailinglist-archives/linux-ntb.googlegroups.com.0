Return-Path: <linux-ntb+bncBCX27RGNVQNBBUFN2GGQMGQEY2GHDXA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F86471291
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Dec 2021 08:44:17 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id bq6-20020a056512150600b0041bf41f5437sf5188494lfb.17
        for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 23:44:17 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639208657; cv=pass;
        d=google.com; s=arc-20160816;
        b=0eYkUUhygt1L1lohFSPGp2SnyiOjJpwRISu2NlUENqHwvughBQgIMPqI/M3igJ+wno
         +1+Nm2d8flVtjyeOpJdTrMWiavhpUCJRoXPNTIy7akkn9/mWAvye2kD5nvnJOh/vSMZ6
         FtsAWql81SlrOBExNF37ZkV7HE4rUvkPQlkHtNc9uJWWPpvCJh+eClUv22I1kFHnPLH/
         A23ir36zEAKIRhZVVjYbftcrkU3QNAkmaVa16UmZP9G1kBLcWemvhKMYc4Kq5KfJOduE
         drF6KHXlRZ78mxJFE09Mc4016HTMxtKIIrrAnCNnNautsqowe3/rjZuUgXhGp91RvVJI
         4fWw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=YAAkHNyaNcMfUxYT1vyCLjpQt36WxC/OHH211+YaKZ0=;
        b=WxiLEOgIunMm70Zzv0lXhnEXSpU+WCe7TtLn2Vokz9VAZ7C/DfJ7Hq3kDRt0lAUKRW
         c3e20XSDiXPkEB4PXvNcsEqzbjQyC/oLAZriXFjPNBadSDJaMQkCrPwS6uEajI018ATp
         LxNO27w7ivItUmhpz4MXX4t4/MyVixeMEphdPE396Wd5sWUPT3CeoVcfY9c4Q/HAhSD8
         Uwf1cyHHgw7bSta9tCG237zLU3L5vDdJ+jyaWracx4CV7jZ6kN5ELyZJSpG0LswtYf9H
         Nap++T0roijcOZKikwrQQPq7546tidihAf68BfbB+0bWybbgOqIKGJnlHBjdZnX5YJf+
         W//g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=j7LIhQdl;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=mFr6Jzym;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YAAkHNyaNcMfUxYT1vyCLjpQt36WxC/OHH211+YaKZ0=;
        b=lhSnwxu4hHXOC0KLiTWfQaW+6FaiMRSa0obQ6qpGaoTaKCNTF6PrSYeC3cyamatjEd
         hJaHXjqtJr/Aa3nCX+88Mg78GEW+H5W565zF2k6uATWi2HvGE8yZzd183L+B4nlT1Nl2
         Z7+hC3JgU1nw0mSfAb3F61V5pUTiZyV8E8GCzAYhkOhka4NElbJdUxJ4UG3wS8DefLPb
         U3lqrijpY4mNdAm4udIEYsMYLnR+O79N62GCxCrCyi+n2KYJqJKgynUkjgLvUiL/dTSU
         sIRiolVv603QuJhPq8+j97pBRU/EhUNBp9tr3xQYyvhwr/SHhygMD7+SrnwbVLxBH0yN
         7Qqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YAAkHNyaNcMfUxYT1vyCLjpQt36WxC/OHH211+YaKZ0=;
        b=a7YYsVB/g7THv+ib7UqzOQfhxjTh2IJ9QfekB5QJoQP9iEIn3hGTCvRBbvbfH4TnXk
         QhevyWo8bSvlHlyfsW+euumEXDGJMqpbzQ3ikVg3PhxQPGOBCsAi3DKGpDGsozFn4vvG
         Fs3myGeAB0A6j/bHAnlVobJ++8Ib7qe/nwWLwJ2YmVYMK09hxPxJ85zWGSZCALCcNS+i
         LSL8QZptlLlpoFjA0WrPaS0o/Hv01lVzoxCPQlFB31ld8GB7ttayeM+QogMiBOzhgVkJ
         aDdDAZrXg2LKhP4hPao6UGgN9qwjo8VPLEJosYZOYRHcS9pm3/05dL7/+bteT5bAAkaG
         LdKg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531C0JvgR7Ob2R9omaxUGgkL4bV9N3KJf/5rVvb4eNCbF/1LDxpf
	DodJtfpUvR9MVYKTJ1I8FWk=
X-Google-Smtp-Source: ABdhPJzFGWalX9Lt3it1QsTh55ufd/rnuy1YVvebcj/CYgfk7LoIANZ9gnc3R4HkmIjfQg9AryQ7SA==
X-Received: by 2002:a2e:bf24:: with SMTP id c36mr17944638ljr.150.1639208657167;
        Fri, 10 Dec 2021 23:44:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3b9c:: with SMTP id g28ls1141041lfv.3.gmail; Fri,
 10 Dec 2021 23:44:16 -0800 (PST)
X-Received: by 2002:a05:6512:6c7:: with SMTP id u7mr17066892lff.261.1639208656235;
        Fri, 10 Dec 2021 23:44:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639208656; cv=pass;
        d=google.com; s=arc-20160816;
        b=km21zljxN/MmfLfjFku6qs8g1AazNFcURjHa2Ri24V4ewKoYNfEucOTKbAJkp602M4
         J6O4OTDIVT9+cnyWVQG2SyAQn0aXFuKwXnF70DkItOfN2g6uSuLnyyQe0bSEzY9nscgN
         MKpmw0LFjt5nHTaDdlzWIYgydQrTVf5gHc6XBe3R7lVb1HBM50lXh4vrKv30bMZPY0lS
         rVn01K7CbhMPF8TvGygsoxkV1WWOt01ErT4lwXyUUr/ZDR1vVa7y/OP0PkIaCgkh/xqH
         zUiExvxkjSMmWw4Afm024yj0KKb223ks7U5gXGTo83SGAk2uXjEtz61I237hVrqLGNdB
         FIEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=fRz0+4hlFdl4Wcdri0A6i6wAexwPsRVVdqscg0voZ7o=;
        b=gLBZQp/c8lhitu4Og2jSatCasSzJ6Xos+LhjjpCwxEvlczVVlWhClWswfP81yqUv7B
         QYfvyRXx6oENHgwQo4wNBBP86VgS4CGeyn4Em9cKjYlEHGL6YO1B5Wc2310tmpkm2Mso
         kZ3ZTPaxSBL5VEChMasLj1obnMnApJqmraJoOiPpF2JDGqnkUHLEoidZ28XNvy0QwQh1
         Fkf4M9ztW4fA+Hjk28K3WSMrwNC3k+0JRpg1O3it8zGlT0FxHHtzAh3Lo3/efXD9Axkf
         6jKI+oq6aFx9mxTmHnYLF2qW/bU7ha+96URgj9G/IhazCWWbGeKAFrVxE6neDKa+zZIP
         sztA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=j7LIhQdl;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=mFr6Jzym;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id k26si252078lfe.10.2021.12.10.23.44.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Dec 2021 23:44:15 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="262630174"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; 
   d="scan'208";a="262630174"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Dec 2021 23:44:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; 
   d="scan'208";a="504254512"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
  by orsmga007.jf.intel.com with ESMTP; 10 Dec 2021 23:44:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 10 Dec 2021 23:44:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 10 Dec 2021 23:44:10 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 10 Dec 2021 23:44:10 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 10 Dec 2021 23:44:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VfNhdZ8Nr85Re4AoeMgDY2TupG4X98K7az+anHnFyfzQVBetoyhCERzXPWfuIRpP1BL0Sb9Pfc1K8eEBwCftq5L/lsuab0OpZrKTNqfnahgeZOmOibFUBnJfXS9DUYKQpDc49MqP4gHhd856o2aI4eAoIYkw3/DeksXW9YJW08ORDIsQHiESCnuD/d69u8XSvMXOnQErzzXxvfwMv1IQ3jDSG3ucxofz8mKS3Y4vFGmhvwUR1oyHp8XXnKL4/zBM3F0jMUbsmnUg9TWoS8qBXU5ezUr3mKabOuIgiZLLRlEBBaXbehMSNCKzDQ0pJ5ZTxApsXtfCbEAQorOndjHozQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fRz0+4hlFdl4Wcdri0A6i6wAexwPsRVVdqscg0voZ7o=;
 b=Kcje5fL07PI/Y+PS6IhhSTLoMGsw+1S24MvZaD6D04mTLj6y6ZaRe7hZMuLh0uloBylhbw37p42EIR41tm6T2pzI1J1u94djjM1JjkgAKKH9Ts475IIMU6e4ugOpOzXbhXKut5/pf5lb/pIjADjANwEImxq6oHbR7IWhjE/ZMeFcDCEOy76eVqi5bkX/z21MGW6HrRQQMch0x1Hgdrr2Hakewb8oXMxTupKxJRrzVgKovH2jxr1OCoYFNNCRAH9oqYlQstTLvlQd5lI9piopHxJ1GMo9iPZLtz9F7CmDmoR9Z/jSQZKnHWb7DZ+b4p7jBJFRxwKlWXWg/7esxFl/EA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BN9PR11MB5355.namprd11.prod.outlook.com (2603:10b6:408:11c::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.25; Sat, 11 Dec
 2021 07:44:08 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04%2]) with mapi id 15.20.4755.016; Sat, 11 Dec 2021
 07:44:08 +0000
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
	"x86@kernel.org" <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
	"iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: RE: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Thread-Topic: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgABn9QCAACTxgIAAAdGAgAAbd4CAAA94gIAABpSAgAt9SoCAADlJAIAAgb+AgABGMACAAAc8gIAAE+oAgAAmHACAAFJ4oIAAem8AgABqWwCAANPscA==
Date: Sat, 11 Dec 2021 07:44:08 +0000
Message-ID: <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com> <87fsr0xp31.ffs@tglx>
In-Reply-To: <87fsr0xp31.ffs@tglx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7d342c0f-91c8-497d-eb9d-08d9bc7a03d3
x-ms-traffictypediagnostic: BN9PR11MB5355:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN9PR11MB535539BFA5AD2307F2F3699C8C729@BN9PR11MB5355.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qSL1ts4TgTQGodemLLYCmn7LwTX0rQw0AjagUtK/B/dCTxFmIMwfWGDZHapgI3Dj9gaVfGoBuTnY5KHfitEOOG4Z1pwfuBoWjA5ddYSKrXcQb63Y2M0hLELMOECsvQ9P25UoUqdR8GnL0lT0YqRB0bHOaWeef+y3vjo0Ew/JIicnVgYP9StoVGVZiZMuSu7BpYwo0YfIWwEnnTbvFJBmzmLX1GuP5SSn9bsy8sXZm0wUCqZf4NbIR6dIz/O3rPXXGJC70kKzyiPZxzWDVG+IrAqb4FeN6Uk0ywAqYn60p1RCjefFkDTi/aimhkKteVBcUQyZdoo3NQ3eBcPiRmEE+x36OEmizNGCBs0pFMAV+fA6ndq65GpylB4TxQM1P81EedbHkOeR5s2Uy8TPUdZH+ESK3rZ2x7a0tV+GoGAv6jOnYtseLeniMfZEeHkHJIXEOlVrFY98pDvxu6+ZBwMPJM7bNgivkbgTTr3tWv5FiEl0xskx9xC9BSo/irpjN/cWiwVOWzrZ/YZXImJyl/1NCs+SQjfJwTnEV9FRJ3qE2PkbPx0J/XlqMzOmz5oKgHUXYA9OLM/2xzAUIqH8PM1fWlPHBIyVKfUlEXmMMSdUYIrQkFJzaEbjUgG9TeXOk1pSlFiMVasXZKmnXbcr/ESsgVvprGptB/3WOR6v5N0SBZayF9MBTiHXQ1t7hbh8XfMlTeTvHgzti91p3pQtsMjQZA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(38070700005)(4744005)(86362001)(2906002)(8936002)(5660300002)(55016003)(54906003)(82960400001)(316002)(110136005)(66446008)(7696005)(7416002)(26005)(64756008)(66556008)(83380400001)(9686003)(76116006)(4326008)(66946007)(71200400001)(508600001)(66476007)(6506007)(8676002)(122000001)(33656002)(38100700002)(186003)(52536014);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?PslPlkTQDjU02BGCe/Eq0aMCXKc0S9/DhHx72OkBFzdkkGmaplHUUmlRfJVe?=
 =?us-ascii?Q?A4rk6YfsR6WD+O/rLAAlU7ksHOpLzGSxmvVp7vQgJeWTPyBbwm9Zr2GcjzKe?=
 =?us-ascii?Q?fMhIncYpeyxHca6K35UzX3SFQfgJpXdVeCxw+2ZvPHjXe/1lkhSheP/8qmae?=
 =?us-ascii?Q?jHPkW6+qAQjWO09BsyKMar2yglqvqb4L19cBpztszFOQ526prlFoJ0ejkChB?=
 =?us-ascii?Q?sJeAJ/UT4akLJjU4DRI5Q9BoXgiAXqYf6u/3brrZrQ2KApliAh3SMIEpxm6F?=
 =?us-ascii?Q?76mc5gedVaygayqIVkzMgBoZ25qPMalVn+xnREfD34ipny9TsmHmcb0pK4Kx?=
 =?us-ascii?Q?WIdU7oE1IaS0G3NPQ482fIw7g/NF9KBe6nNzWRe3Bh+JNanhQG+ktmjuXRFr?=
 =?us-ascii?Q?OLzdXBCyWMF7HSS7KhM/YOo3DjpGbyLIRgcPjtj4ceXzfS06tJWp8fOvsgyJ?=
 =?us-ascii?Q?AJbpj2ZwBnfMF3x96jEVddYhGZLAYPQF9v03JcA4XpS6QexdaC2aRJ+SGa0D?=
 =?us-ascii?Q?9Bugk2qH7PCIcF6PjxUfieBIx8eJudLvk54FDiCcs7j+tgxMmsrKu1X6JnlS?=
 =?us-ascii?Q?7alXwRXAC2DrzRdsniCVBiCG5toKNeABFEgTtOs44IL5jShflP2K0XacmLr7?=
 =?us-ascii?Q?OxSXrV/yf1KOLbSlYqWaWUP00MB02YR9dZvzao4z7OIeXuDZnzfWIIAsNQGE?=
 =?us-ascii?Q?IYFK4l67387UlwBDB9yExsNnPSvSJSoiVgh++4kMFaPtYIDbnQbJIS8PpBo7?=
 =?us-ascii?Q?aiJiwBTQM68qQJGIxOheswVtRpjV0QD0UIeENisevP5O8MyJT9UH5il4BI6x?=
 =?us-ascii?Q?cnygsNRNqjD7FA0T4gXxMaYyUnN/Hsoxpqm0CWHCFlO8oirHvnOimSg9DD2E?=
 =?us-ascii?Q?Hid18qsKolU6EPBvBIQhQ/RO9kqzzmg6UNnjJHEcPuRclSj4VLeg9uLnOcu0?=
 =?us-ascii?Q?sUT0VuwG3BrxQglmIRwieVmUeudDTY6SpzfyhlDtuh1pPFV/alnVVTMcjN1j?=
 =?us-ascii?Q?Y/iaxzwVgOtPiWFSNDThdohhDsiIX8ZJlX6bXSlnKA7nDJtIRXs34vN5TNIX?=
 =?us-ascii?Q?1hn99n5cuTGzXTcu25CNeOjqii9gtrDFQrm96W910dhJfxYyHPs3xwAFeNrX?=
 =?us-ascii?Q?z5lLvz1w7ymSS2R2XqsAISC+htX0ivvMewQIzZrtLeYDXbpgmEc4DUV0/3my?=
 =?us-ascii?Q?bWbvVIxqSMXWnDEf0MBFcb7yPJW+UhGbcPGQHHfqXk0ULAz+VNlxKy9ZsuO4?=
 =?us-ascii?Q?N73V9Tq9JpI0aR3Vk6FkSlNP8GXvMW8Cv16lobov/sQuPrRpFs4HtB4qZdET?=
 =?us-ascii?Q?rce+lLIxVeijOELbSQP1SCQ1lmskl+OTX/hWWHqMzKhOMKOdarb2iTF7g0Z6?=
 =?us-ascii?Q?guD/6763Bc1A63I0pB09BovTshqUL6utkqV3dX3HqNaP1ESr++vTVDbh/j8o?=
 =?us-ascii?Q?p97x9V9nMDYAnT3FS0e0QBX9PH2LJedfcH6VSA7YUrdlLgs3DQ0XoBQlgSOI?=
 =?us-ascii?Q?cgaeWlgx/yZA81zJeCeGD98dbWp3Nahd3th0KP3foDac2tDT1j4xFhOIVU1j?=
 =?us-ascii?Q?hG/nJSwV1kquV4T3Y779s3ci0b20FidPfkW6IEXoW8sd9WjljYLwcbCBZkT3?=
 =?us-ascii?Q?Jw=3D=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d342c0f-91c8-497d-eb9d-08d9bc7a03d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2021 07:44:08.4284
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OBVRhi4LfD/tQW8kiAxsEiyO4iK8narL/YKH0zkxNSVxodHoN+vbToDR0NxUqsP0hdeYfnB5mQxljrkPeAM22A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5355
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=j7LIhQdl;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=mFr6Jzym;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
 dkdomain=intel.com dmarc=pass fromdomain=intel.com);       spf=pass
 (google.com: domain of kevin.tian@intel.com designates 192.55.52.88 as
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
> Sent: Saturday, December 11, 2021 3:00 AM
> 
> Jason,
> 
> On Fri, Dec 10 2021 at 08:39, Jason Gunthorpe wrote:
> 
> > On Fri, Dec 10, 2021 at 07:29:01AM +0000, Tian, Kevin wrote:
> >> >   5) It's not possible for the kernel to reliably detect whether it is
> >> >      running on bare metal or not. Yes we talked about heuristics, but
> >> >      that's something I really want to avoid.
> >>
> >> How would the hypercall mechanism avoid such heuristics?
> >
> > It is clever, we don't have an vIOMMU that supplies vIR today, so by
> > definition all guests are excluded and only bare metal works.
> 
> Dammit. Now you spilled the beans. :)
> 

Unfortunately we do have that today. Qemu supports IR for
both AMD and Intel vIOMMU.

Thanks
Kevin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN9PR11MB527625E8A9BB854F3C0D19AE8C729%40BN9PR11MB5276.namprd11.prod.outlook.com.

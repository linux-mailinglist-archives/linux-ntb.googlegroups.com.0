Return-Path: <linux-ntb+bncBCX27RGNVQNBBE5Y2GGQMGQEUPV5PXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F294712B5
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Dec 2021 09:06:43 +0100 (CET)
Received: by mail-ed1-x538.google.com with SMTP id q17-20020aa7da91000000b003e7c0641b9csf10105494eds.12
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Dec 2021 00:06:43 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639210003; cv=pass;
        d=google.com; s=arc-20160816;
        b=ryQROk6dYy0pxSf62SSI1pKF25U9kQRm8J0wt2eTPFv9cqtz4i4quJKMtgPptcerv4
         MsDCsvXCHE+hyLIvZEDXVi9vQ56SbQ5ovx4JwFXRl6rBOUunQwCO5hXadyl1dRUqqIYW
         fYlY86RdQqDucjYQWYNLQCrGT5w7mLtkn6Xu0arjCFzlq5H5nZ9B2nF9lzdppPqm/LJI
         iiaPTwFdE2qVqX6wU32zasf9VJ3aqMll21/XI5HKeN39zgxS+Z96agorA9cURprBGtC4
         iCvUiYo7b9Pb/CJ6gssOYTdKLSOcOcYA8l7gY5wKgXZDFWxK3c53r0JHC/ySBQ+/65o6
         gzjA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=tUv0Ky4PmYtyZ7v1al45bUOItveCSjV4GIBPAb7k9DE=;
        b=pnBNolV7N9iOwMqEDjGwuEncvKMtaxw7c4IIwt5zux59MXWfxlQF+fCFBe4bQr93U5
         fKBFq88ZnCSA4xnz6H1+tWIIR/YRs0JnfxKQCtPxOrKa+565YA2Y39t19qOM6eKL+YTV
         lAmVSgcX4t9iES0ktQGemgGGuhkAJvw/eBCfu/fQZWnbNWZd4yT37llAsyaBmc+vWd/7
         FWWadq6XPlWpS7eGECb/tR0Y2EsXzSchr/jNK5GNONb+TN3c92BnmNwAd/Tuj9O9cp+7
         MII+mxh23FAjNtB/9r9wlorh9PRbO9LAB3DQmdMafvox6hSZbX3ssrGuPQicwwk7fL2J
         mcSQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=YoybmTRX;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=IC+cqKfv;
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
        bh=tUv0Ky4PmYtyZ7v1al45bUOItveCSjV4GIBPAb7k9DE=;
        b=OLYQpcBn9X4Hqf4zjXrhg/LWsc1LbhYIgurZROQ7psifA9O/CFWK09wO/slqg46d6d
         d3TjrBSC1HVHVsudmJPGCWLfFQ6+kkoHEbpyz8n5UcbRo1cA+kxE+O3JH6MPs9icbUnN
         Vr42ZwQgKkElwngUWooJnW1KfI98/eTxQyQc7RhD2vVr2J7Q9kCyxm5/ujEvie1HfvQr
         HZ4PTyNSt8KnAqwapvxNmTxNy8wpNCKZ3nc2aur9F84+zTyXRiD7h+BlmhsjgHkU7H09
         YUcdAY44uYA4/G+RwvKITZ633+MxN9L0N8r0AgGensW6c86S70o+fCnEgR7qR8kX31mX
         /YZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tUv0Ky4PmYtyZ7v1al45bUOItveCSjV4GIBPAb7k9DE=;
        b=uRHKmrRO5lcy9V1XUbaqxrSp5ThQrSqgir8nW3keHiKCGyFTYZwcG1GQn2cePc4det
         msU73TR+IRS3xwysxBrEEw0R/4k2Up/SSyNfwpCSBS/czOahGh4APpjn/MzuIUlZySIm
         gf+LIgCeVwX6mUta8SBR660BfZhvJCY4JGDEHIRxakZZRuJIB09lTVRngTDtPClLoNMz
         aKYsNJDu0bnYiZNx7yoacL+O6equ8KLA9MMiJ1Vzf4oRoZftCZQ92sPg9UuUecgPOtMw
         FC7zwHGiRQJYK1PyHMomvtzjcrODuFpWAOG+QAaGPOyC4/XN/GLm324UyXOOi7K435ID
         4xhA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532WhJX8Au1n42nLOZ42DYvm5QOrJXbX6yfObeT+CqsMqXsaSfe3
	lE3GUZI/KQvzdGBw7NaqT5I=
X-Google-Smtp-Source: ABdhPJyBA6g5DKV8mTHQI2JjFFEPU6tqd4FBnUGM3JOxj/4TKmg7zzejSeI3r1vZTbTaPzXQJBukaw==
X-Received: by 2002:a17:907:8a20:: with SMTP id sc32mr28934270ejc.65.1639210003274;
        Sat, 11 Dec 2021 00:06:43 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:907:3e9d:: with SMTP id hs29ls3865644ejc.2.gmail; Sat,
 11 Dec 2021 00:06:42 -0800 (PST)
X-Received: by 2002:a17:907:3fa3:: with SMTP id hr35mr28254339ejc.397.1639210002307;
        Sat, 11 Dec 2021 00:06:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639210002; cv=pass;
        d=google.com; s=arc-20160816;
        b=vvve7Cg5OFT3B4muUf6jM05ismFAp3ja037I5/2fHGidpKmTIlhP+w9QguI9rNZ80U
         plkViDV0I6b2fN34rQGwDnUouUFJpgCjmjHIHr+MGNi4DGVd2KbKmkLklTKnyGVIv1dz
         lqIfmfai4ZsVHqqbiXW+KEcgCG3fI5iKXtn32AsmuFndvYNYmqWpxnNgwPGfI2V6uc5T
         pAN5V5qZ5K+DAthBpNFUZAztX6vzuLn6T/Xzmiljla4BvGZa6f6V/aXj8fN6jVSltTfm
         sa9V1u7J3Legok6Hx6UXjNm1G7GQiufXlL3s/GE3MSY+kk/dAo8iYeo1q6CPIcTu2MQZ
         DWbg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature:dkim-signature;
        bh=oaQYUrgmkGontwUl3LTo0owEPnGKWHqfRW6shL03ms8=;
        b=EHbDC69nP3vnPVPa2TbMojt8lEjEeQ/MEkFQR4Be0Gf1bRoTRVGMK8yS07PND60ONu
         1Rdajox2VWt0ORZ4EWuML0CCwbhy9+SnL4IkQxLh0rxlSNopUkK8glzvtRUSwczza4j1
         3bUpLSYsPONEtAxEyUawV+yFgUpHCXe3b4QQVG5A2YqSJGiQJNdkw1RP1axbct+kHMsS
         YW0V3YVwndvOkWrvQXMU4TX/eLj0Ew+88HurEAK/83QbC9VsqoR8DTUU/7dhiYRo366n
         1KyoU0plPWFzjwDofi3mexjBT7yMN75079t5VYbIXRO9GebSL26T2VdaB9pz5fbfpVNd
         Blrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b=YoybmTRX;
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=IC+cqKfv;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id w5si201497ede.3.2021.12.11.00.06.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Dec 2021 00:06:42 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="238324348"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; 
   d="scan'208";a="238324348"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2021 00:06:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; 
   d="scan'208";a="517080608"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
  by orsmga008.jf.intel.com with ESMTP; 11 Dec 2021 00:06:39 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sat, 11 Dec 2021 00:06:39 -0800
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Sat, 11 Dec 2021 00:06:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Sat, 11 Dec 2021 00:06:38 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Sat, 11 Dec 2021 00:06:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i7mzjHQKuWhOl0yyKwFoKguL3QQ/xmHqSksGSXxFUWkjJudQ7TQ0R4FycKw7RrjTDiAjDHTznIrZh0o2W6cIIhcbPnphuIpTm3xFrBOWqWtGvxbNxJMOKky/a9/3qg6laqIEiuyYiJBB1SaworAn+g4LdWfYiOYYSRrKC+YWBzJ0b+96BowJfZ3P3ddBQBsd6Us2b4V039dWDt1OsFiU0nF6BdazOo/acgKg10lqfga7wXqvx8dsCe/XggyfIIl5yhH771QTkhAt0WkMr3q3NUPMy+9TmWlBwu3s/8zm674JlOsWMlKtahqef3TQO0DmmBBhxO4/z2DOqZlN4BA9eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oaQYUrgmkGontwUl3LTo0owEPnGKWHqfRW6shL03ms8=;
 b=ZG/keCEnKqWrdgGWJj2kmUetf5T5/dxmB3akq6B3XFBcK8jdXky8mV4nBryc5icqGIcRuspkLbH7vDtj7xAfWTnjRaP8pcmI/5IbM6tMDNh4fHqc9YmQQC8Ahg/QH0Uyxsc1CC6vEjqwkas4pUDyEJSgLh9PBENjw5v1Zt0zL3oDLRp1wbKbWtMyiNWvuDqy8mrrSjf1koSi1Y2zi7t4s/KsdsMoA+qXFwkdMDbB+Aygq0PUdgno36qE91Wv2RM6CJODQIjDf8/ST2XCW6Faqg4mBF8Fpa9eG2HRnBnnSnzaObkJ9xdZbGkZypNa+KkaBIXnlZ9bGaK+rGBpoiyO3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BN8PR11MB3572.namprd11.prod.outlook.com (2603:10b6:408:82::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.20; Sat, 11 Dec
 2021 08:06:36 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04%2]) with mapi id 15.20.4755.016; Sat, 11 Dec 2021
 08:06:36 +0000
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
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgABn9QCAACTxgIAAAdGAgAAbd4CAAA94gIAABpSAgAt9SoCAADlJAIAAgb+AgABGMACAAAc8gIAAE+oAgAAmHACAAFJ4oIAAcxMAgAFJwrA=
Date: Sat, 11 Dec 2021 08:06:36 +0000
Message-ID: <BN9PR11MB5276AD88A1D1A1AA313E228C8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com>
 <87pmqg88xq.ffs@tglx> <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com>
 <87k0go8432.ffs@tglx> <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx> <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx> <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx> <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87lf0sy7xd.ffs@tglx>
In-Reply-To: <87lf0sy7xd.ffs@tglx>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b953aac0-9cde-4f96-d012-08d9bc7d276d
x-ms-traffictypediagnostic: BN8PR11MB3572:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN8PR11MB35726B5F88FB0364CC455F5B8C729@BN8PR11MB3572.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9Sv0dth5+iq7R2NEox1Mpg8LUkrt+8Jo7aRRR60lJ5hOwuXt7WZ52uO/dvg9OS6cr8v+WtQ5h0Y4hvXV27+TPbdofYVL2danKva/11y+iwe9tb00osR4Qs/SOPQ+8mC9Nhm8L8lhW/7IU6OX8m128rMcN6C8VdGbb6gZh7lsIO9Wh5oXFh5Zhq9xaAP05qy0Dgkd5Q2bE+qrCPF/B7QnUwrttSngLrZHx2voi0OV3L/xFo30ynJhHXsfrB0nSEeI2Z/E8JXOgh8igshC+ZNuR38Iem/KqHzYBT/h21HUAaeGBtw//KV3n1ZM9/2y+cQ0toeKIpFAlHFCFaO4pIEKFVSKhljmUzRRlOSLPXDooLGwxi1G2zbfxaT56dmnZ9Rz1jPqpXB3Ip/6oc6hsWCohSvoBBFfFX2T6SBxsYg91XcwIaokeXP9XDrrMrFU9eE8pHLaSzSw6BMUP9zfznvk0ZP3M0HnrbAhyS+07NgINOUeBTUBTGal0q5yKDJE9hJ/hpkOpTqIS6NScQfnzhElNY6NFW37qClAinB1yfbzlSzBR/ULOJADbXQQJTjQEtu2qbhJWl6LlDGZQJzK5Y3/ovZBu1J58U+g8XycrSmjKjfSBoPCaLrtoEcaopfaU2WbXWGS0MMBfkGtBenmaTL1IcyA4UX3BLz+bSQzyI/emQ/gmldzvXIweDN0bR5Q4qApz2619yQGGZqYHDbCuWTjPA==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(186003)(71200400001)(9686003)(86362001)(52536014)(66556008)(66476007)(64756008)(66446008)(66946007)(76116006)(83380400001)(26005)(82960400001)(7696005)(6506007)(55016003)(38100700002)(508600001)(122000001)(54906003)(38070700005)(7416002)(110136005)(316002)(8676002)(33656002)(4326008)(2906002)(8936002)(5660300002);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?TsgFBzavXdHiXThggHYvSi/xt+Ng+1jTWFoJQx6uaqQKakuwGDQ567cacjau?=
 =?us-ascii?Q?texhdPW92aWD68jliOwTD3iZGtWsZEXVnSsT2i752vIvEmXn5NsRq9Mym+Mk?=
 =?us-ascii?Q?8ENLN0vKL8A+FO+kDS9ZHjygwWuycV1pYtrp+35XnnweJ7X9zKeLotC6fzM4?=
 =?us-ascii?Q?eXT4jP8DZXMRJ/ztYDsfQI014wFjfKxKbwSBbM7yY0l2SxMI1GkBy9W9Gvlw?=
 =?us-ascii?Q?SDGI6lIf+f3RVl5ar+Q0no+tQZIN7PQO3VfA12aphKmu22ysRWcdWCiXRDqF?=
 =?us-ascii?Q?p1FFp9EdyD8w39es+9fOW+rdl/CBLIb2uBjsSgY8ONVPvL3HrvACgHEJHFoe?=
 =?us-ascii?Q?9APDLpN0LYSR94MXwhFDUlt3lFG3eVmXDiQMNtuoHIMySe5GWnpkor/nF50s?=
 =?us-ascii?Q?w7IvL2iuxTyF8nx3CV3xBuwzQzjyULO9/lugkZYC42eIDxzWu6mZdRJTNgPy?=
 =?us-ascii?Q?wgH6D5CdKa69K6qH/c6NJ+pNE+FPljAWEFJBX9OIfYiGpPh2kxKOvE0QPw9Y?=
 =?us-ascii?Q?19LdzimIG8JswZrj1KjXd9E/XRclNSiRhNaQhxbuoddaB1k6fx9TgIaMNZ7m?=
 =?us-ascii?Q?XU0g8xGwL0kt5aIeUiPFMaWZ7+1qmMTZdUy4tWEQr0AJQnoa2ywCMaxkLohf?=
 =?us-ascii?Q?V4MlL00VCUeFfbWwAIjxianMzt9+c486FtrFecgdhnhez4c8xthcbea0UUEf?=
 =?us-ascii?Q?lKpu9zNcBXh9Z7xd81TI3dowybdVXaRrAo0tT9RroS66nASTV4LcEnNX5KP7?=
 =?us-ascii?Q?XvRUas3cWm4UhYJ6PgEUckA/mjnylYGuQRMY9LeanFzPKx6KZf/VOagLfwVa?=
 =?us-ascii?Q?Mmx9rV1qznI9hspKc9yVdLqiXMPM9zMPzor6ogj/XfPjDEAiQJNDOkenqzQl?=
 =?us-ascii?Q?N0QerGBNIF/C8tl8lzAl1HMG03yp6hnW4LJpDM+sZYXJLgD3aP54oYKrTy7d?=
 =?us-ascii?Q?YG+TsiygdOXnIVyO2oHAw1kqhiQuWSUf6m0MskLl8LVcoPNDOU1BMyZkJG8c?=
 =?us-ascii?Q?NdqB+w3HWumrDf1K76rctPL4+5IeYlj5nCi6RCt+4KEIJURRA8RmFf+DlcEh?=
 =?us-ascii?Q?SpC/fsUdH0R0IgwlDW4+P+wcvzPtXH6nYMvR/DqTqisz2DFOFZl30GkPopli?=
 =?us-ascii?Q?LtRgYCgz9jCUn+sHYhd9G535ehy0oLS6LJpCQnP9DgdJ4yh61gla3pqFbS/s?=
 =?us-ascii?Q?2UyWfcICoJc5zhcIVUSZhbc1SW74EkJgb61GWWk0oi7r2aiEW5Jf7tCn0FUM?=
 =?us-ascii?Q?nekBps9ieHsrlWT3au0QOlCzh8CNGI52F/PjhoQdeV/8UOHvBVjA831EYUXY?=
 =?us-ascii?Q?w+ptO/3RHvBZivegtvECF/CugBVGv5GXDcG+4j9+RKZuM9sJZxh3DgDwAE7F?=
 =?us-ascii?Q?52F7umerPGptF2c3TvgGx+o0/0QIliqZUEso87Is65f0oXxPfUPUTlFT8YPc?=
 =?us-ascii?Q?+kMKcqsgyWHXzS5tvu4j2D5ktNfWWyPP5yJF5tvkTC4iV1efPy1tU88koGPI?=
 =?us-ascii?Q?z3D2JyNkySXpnBnLuU8t6A6OpRXNpTgdw4remPAeYG0vLBUuWT+Gl9+eLCr1?=
 =?us-ascii?Q?9cZL/zIQbPLsAGbrN8hc9hqEQttTdnBqpxEJIAUJqU95Yfx+7fxXMDOmBN8l?=
 =?us-ascii?Q?Qg=3D=3D?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b953aac0-9cde-4f96-d012-08d9bc7d276d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2021 08:06:36.4692
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ghq/f9EJPdoLe2ekr4h9pOtrW3oDDEK+WqdPDQCC8tWD4nPRZScmflVOX/hPLQxB1fU509Fzut5blRkqdz4O/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR11MB3572
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b=YoybmTRX;       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=IC+cqKfv;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
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

> From: Thomas Gleixner <tglx@linutronix.de>
> Sent: Friday, December 10, 2021 8:13 PM
> 
> >>   5) It's not possible for the kernel to reliably detect whether it is
> >>      running on bare metal or not. Yes we talked about heuristics, but
> >>      that's something I really want to avoid.
> >
> > How would the hypercall mechanism avoid such heuristics?
> 
> The availability of IR remapping where the irqdomain which is provided
> by the remapping unit signals that it supports this new scheme:
> 
>                     |--IO/APIC
>                     |--MSI
>      vector -- IR --|--MSI-X
>                     |--IMS
> 
> while the current scheme is:
> 
>                     |--IO/APIC
>      vector -- IR --|--PCI/MSI[-X]
> 
> or
> 
>                     |--IO/APIC
>      vector --------|--PCI/MSI[-X]
> 
> So in the new scheme the IR domain will advertise new features which are
> not available on older kernels. The availability of these new features
> is the indicator for the interrupt subsystem and subsequently for PCI
> whether IMS is supported or not.
> 
> Bootup either finds an IR unit or not. In the bare metal case that's the
> usual hardware/firmware detection. In the guest case it's the
> availability of vIR including the required hypercall protocol.

Given we have vIR already, there are three scenarios:

1) Bare metal: IR (no hypercall, for sure)
2) VM: vIR (no hypercall, today)
3) VM: vIR (hypercall, tomorrow)

IMS should be allowed only for 1) and 3).

But how to differentiate 2) from 1) if no guest heuristics?

btw I checked Qemu history to find vIR was introduced in 2016:

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

> 
> > Then Qemu needs to find out the GSI number for the vIRTE handle.
> > Again Qemu doesn't have such information since it doesn't know
> > which MSI[-X] entry points to this handle due to no trap.
> >
> > This implies that we may also need carry device ID, #msi entry, etc.
> > in the hypercall, so Qemu can associate the virtual routing info
> > to the right [irqfd, gsi].
> >
> > In your model the hypercall is raised by IR domain. Do you see
> > any problem of finding those information within IR domain?
> 
> IR has the following information available:
> 
>    Interrupt type
>     - MSI:   Device, index and number of vectors
>     - MSI-X: Device, index
>     - IMS:   Device, index
> 
>   Target APIC/vector pair
> 
> IMS: The index depends on the storage type:
> 
>      For storage in device memory, e.g. IDXD, it's the array index.
> 
>      For storage in system memory, the index is a software artifact.
> 
> Does that answer your question?
> 

Yes.

Thanks
Kevin

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/BN9PR11MB5276AD88A1D1A1AA313E228C8C729%40BN9PR11MB5276.namprd11.prod.outlook.com.

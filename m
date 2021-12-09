Return-Path: <linux-ntb+bncBCX27RGNVQNBBJ6DY2GQMGQELUJOZ3Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id C6C0F46E26C
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 07:26:48 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id z18-20020a2e8e92000000b00218e583aff1sf1412463ljk.1
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Dec 2021 22:26:48 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639031208; cv=pass;
        d=google.com; s=arc-20160816;
        b=sjD4Kl4tpqpjvQbE2wrnAMkD4eZ9N1LSXaqGSzYXMZg5zPQUjeD+XKP22G+l5qEf/A
         D02dW+ZVxDXsKn9Z8Zra7tp9NBhGiFKjAsWm1vmiV4gC/z6aoM4viafPI5gK7h4SYuun
         9PxinPeEOYXEmWJjhnimYWQOrVRTMLi2dM5kdBN4fEiYqWALmOB1qTVQIBA93tk9F/tu
         +ybl1KSsiQHuCtGit27iZWax2vcP0J2pI9iJgZWa5BmjbdmX5nFGdu5t1v3lgeKC5Iz1
         zs1ls28dUFMu1kG6WCx7UFi0cRuQnOdPPdwuQzSTezS+3a+9t2jgg/mUxpi94RKXl3Yd
         cpzA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version
         :content-transfer-encoding:dlp-reaction:dlp-product:dlp-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=t3hJQYzvf85WeGEN1HVyT7vP7IfTBTPB1lL2v7JGKfE=;
        b=dVuTh0PEDqbrHHQ6LkoOeeDi4n+WegEb9GBdxIL4mTZHk8ryP9Z7zoDP5pyfrPWURT
         R4NyD5biIY1IGMkaNOuLUhVbAJRG7Jl+Jc94zCwAWITvDxrryhREb+szTa4az+ht6Qis
         QBlKk4wmMGGgqMnWxUM+cv+Jsqbg7wyC2p9FY6Y/I1CHnsYEW7FEsi8JbONRplf026cb
         lO7Sf0ETUvfl1KNwsLD2CJNLko7SpFjOGtXXYzR7wQCzsZad6Rx74Q+iRGmX2r5M4Tex
         gLObN2QZlAget+TVeSi18fHopO/z5vH0zGwBrgPZ5/27eMQUdaL+5srBqlqIKE0ze4P5
         RN5w==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b="kPsD1D/F";
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=mv17MgIp;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:dlp-version
         :dlp-product:dlp-reaction:content-transfer-encoding:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t3hJQYzvf85WeGEN1HVyT7vP7IfTBTPB1lL2v7JGKfE=;
        b=o0s2o60GE5N2eBadDQ9hLK/ko8m84hbuUAdRUpXBqX/sDC6VxXNXIpduwh2gh3LuyM
         k2mdEtdrhnOw5EB9iSukUAhn792FRz5UOBNvGyNeCQpm3xNyxQL6r06fm8hryomqjnjY
         SDntM3CSGu75fZTd+1Ir77+B1BRXmr7GeCAJo6hdZZ/68wtNt1by+EXRu5MkyGAylM6J
         Gw5GZkzobcGKgv3vfZOSMe/LdYvw7hYmk7wcxcCD4zarfJufEDRq+9pLSGqx/QqiQMAy
         ZpdhicGQafXw9XN9CdBiOTljS0LRhWZ4Zed1bPe0MW8sQ7wX5dJ+xdDlXOb/ca8ivuZP
         oMfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:dlp-version:dlp-product:dlp-reaction
         :content-transfer-encoding:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t3hJQYzvf85WeGEN1HVyT7vP7IfTBTPB1lL2v7JGKfE=;
        b=JV7fUjg3emRCKLu63WDepdIEOvnyAYscDThy0dYOPGRYt0jCXzh8gk2K5RN8Io1hp0
         XRLJOr0buXsfqJ/7JZ7z87jGIYIc/A0NmT3Vb789WEwtprdKp7Yvv+ZjxsPsLd3wxS7e
         4Yc9lKtM2nlnxBIG9qYsYQxKUA5tH/ZHOdpFQkghbDFL33ZgZcSCjstwCAAJ31vShdqE
         FGNnh/LogQx/qfRFobL/b+E4dO7dY8X064AQocV/7wdIbfW7Wf83GmGCip1pA8kkIngr
         NsoabJMgshEjTlMhe6oYhCUSuvaeBm0Y9SCZtBQXmUN+g020sOQ8KLxf/YyyUZY+jlwC
         0erQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530rDbW35sDVwNPvgJYUHiVGrQ+TJxmoRsV/QdWecsysPu3uRDna
	FbFRisRi4gqS10/vljTfRu8=
X-Google-Smtp-Source: ABdhPJy1NZoZtHkiC8yJVaBHEEXlmwfK6tYk3Ozbr0MGWRVeAbYmhDaPuYfQBuOJoizNBwNxAv/OWA==
X-Received: by 2002:ac2:4423:: with SMTP id w3mr4130765lfl.385.1639031208125;
        Wed, 08 Dec 2021 22:26:48 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:1320:: with SMTP id x32ls2604523lfu.2.gmail; Wed,
 08 Dec 2021 22:26:46 -0800 (PST)
X-Received: by 2002:ac2:4828:: with SMTP id 8mr4165870lft.332.1639031206833;
        Wed, 08 Dec 2021 22:26:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639031206; cv=pass;
        d=google.com; s=arc-20160816;
        b=dbo4XSqxtzGsdOKGmO5wJCVcLUO4uuvLtSSp9VnsPIVSwrNbIsWESC1zVdPnqxi50w
         Fu+/74zPG3QYzmO0cigSj4XQgzQBYEQifyHlHJNQD8CVpzaCgRMx0ioEWOQVKXnu5OTw
         Vo/Z8k8h/yghyMOWuE9uYjCUzPl4Vu7WYQDwDRq2VjY7MLQaIaTyiX9IndRgQwINfUnR
         /1IXNgdQDvnDCSkj8h091dMi+s33t7EyrB61NKpmjF6IOp07hd7j9jbgG1Gc8qEt896D
         1LWwsYXEh36yLz/UonNvwPPSDusMKZfkDe+L521svpDWLx8wW5u7qg4DY1OzpHtow67J
         UqIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:dlp-reaction:dlp-product
         :dlp-version:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :dkim-signature:dkim-signature;
        bh=3CbC6kR+mPuTqGzo2hNaUUNvT4porqlcwwmBHZkHrqM=;
        b=0fNRhFfgtfJOvog6FELheHfDMXfYv4M9f5+VggKRiy+F7AartK85DkRtvp2ADjDjm6
         yHuKjLfStAb/yActqIKHChTEcZhM432P8sPg5ttHyKGevqzJ8F5TeGZBaYLD3h2Sb6XU
         0/1cGphMaBCXO49nwLc1hIBRaQrVLmxFiX/LcpStZBrDisGhryFp7Gach8eSPiYlGeie
         0BkEo6SdYzzg7Ho+NdkxmskHaghPTlsy8rhcMzwofzas2qWmYfTnN3c5HFhJsvWlKV+p
         ZvYH2qScPJJ4omQiK8BM4L69wI0u/tUuweZ+Sipvm3J3sT1Z272oFMnuZtx6pTo2ah10
         zplQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel.com header.s=Intel header.b="kPsD1D/F";
       dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=mv17MgIp;
       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass dkdomain=intel.com dmarc=pass fromdomain=intel.com);
       spf=pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=kevin.tian@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id y8si264470lfj.0.2021.12.08.22.26.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Dec 2021 22:26:46 -0800 (PST)
Received-SPF: pass (google.com: domain of kevin.tian@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="301412798"
X-IronPort-AV: E=Sophos;i="5.88,191,1635231600"; 
   d="scan'208";a="301412798"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Dec 2021 22:26:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,191,1635231600"; 
   d="scan'208";a="606738481"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
  by fmsmga002.fm.intel.com with ESMTP; 08 Dec 2021 22:26:41 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 22:26:41 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 8 Dec 2021 22:26:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 8 Dec 2021 22:26:40 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 8 Dec 2021 22:26:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GJYufEHEWfFnrOZjaXH6Srgv9KYJUuH5PJV8QMOKYoZLyYs4ZeMdS0Ep8QhLOeM5xZRQ8hYe/f2ehlGxPN5GaMLCBICjuQ4tC9ci3I1wbyJ3CX1VDc2ChWHM3znjplKIG0GHx5YYh3hC5ys6seoFJyscid5VZJpfTeZPf0FeuMWrKsc2bv22gv96aVH5Zoi4wa0deBSjJ4E7C+sppjYvKsQN520dNFKFRjb/N3KnuxoUi4cVznpjuLqdImpu9Dz92899KEx9VTuPHNU7LGDuO7GxlYtJWQhD1+jxkCef4LFhnVGn1xX7wJitZ0jreY6K/wVMlGtqXYi+sL69q0t1yA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3CbC6kR+mPuTqGzo2hNaUUNvT4porqlcwwmBHZkHrqM=;
 b=GWSBvLASsSD5D3F4c1S9tfT42b150OGtjYEhGN7iBv1W07QeZNC11Wde2zMNw3CmazVwSbQn7sz4P3ry7IvHa9FGF1JK785HIpCUOOFam+vnVapCA8g3DjcjmHohhY0smh4Sg88gkzG6wRA+iGeEfk6Yzs4+htvjqIkzHxebBSJH7QCW9pVW8Bs89P0FU1xGsVsd+mdqQgzwz6KVCtIwEF0jMGzbUpq1Qeoi5tnLpgnahk/6EPWmtut1FqDLydSZ9NhYtklMvOA5QvrY8zS3bk5kFWc6MbR8bRR2wBlZ6RtHjT4Ic8K5gA8rLCTM6Xp2FbRkoqzup8PFs8B3cMnnTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5276.namprd11.prod.outlook.com (2603:10b6:408:135::18)
 by BN6PR11MB4177.namprd11.prod.outlook.com (2603:10b6:405:83::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.20; Thu, 9 Dec
 2021 06:26:39 +0000
Received: from BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04]) by BN9PR11MB5276.namprd11.prod.outlook.com
 ([fe80::5c8a:9266:d416:3e04%2]) with mapi id 15.20.4755.016; Thu, 9 Dec 2021
 06:26:39 +0000
From: "Tian, Kevin" <kevin.tian@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>, Thomas Gleixner <tglx@linutronix.de>
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
Thread-Index: AQHX4y1VNaiO68omHEet2J9DWrVARKwa1YEAgAAp0QCAABreAIAAIi2AgAE8MoCAAAd1gIAACyoAgAAPcQCAADDDAIAAp1uAgAAttoCAAEzjgIAACsMAgAAjl4CAAD2IAIAA6NQAgABcawCAAAmigIAAKimAgAAjYoCAAPMeAIAAGgMAgAis5HA=
Date: Thu, 9 Dec 2021 06:26:38 +0000
Message-ID: <BN9PR11MB52766CC46D3D4865308F61D98C709@BN9PR11MB5276.namprd11.prod.outlook.com>
References: <87y2548byw.ffs@tglx> <20211201181406.GM4670@nvidia.com>
 <87mtlk84ae.ffs@tglx> <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com> <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com> <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com> <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com>
In-Reply-To: <20211203164104.GX4670@nvidia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e03f4057-bb0e-4ce1-73c3-08d9badcdbbb
x-ms-traffictypediagnostic: BN6PR11MB4177:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB41774DD97D83301AE6A54C6D8C709@BN6PR11MB4177.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dRU46MrjMSZE/C29hoUpnfsLx0qt/ccfuQRimZv8w4r5cFir6w39S8BzPYeQBUh2OB18iRkxljNCm5PrvW6smiCLDdnF/3QGrA1sW+Dz8LcwiIq7OFgQiCF65NBXS+EPUE4rlIOTAJZyeSrZ40P7jkGD4od+ociWbhZVlz8z7WoiYMt83eCegQz9ZOTdR5alPKxktn6up1AYfxH/8VTIFNbKYrWOUmGtGMWq04L9X/SunQFsRu+xCz2Mq9E8zeypP3UplZdHVA4hecp4pKchRg9XzCQ8AZbc7ArHQDVTa5OiXZJH4D7bjMI4eVbPCtbWi4nirwzuG2x1Pbq4p1pxlDUshnEUtu494KwoDbh0hDt6FzWwCk2QPJNvM4cnkJ059wWw2gTfGe1uwXHQDdzjXW/azOkeHEUuS0IkMkGtMomOjykSAsda8aGRERC4UkQBRtmSCDQRH9PBIfXsLWlxnqrnnnw9UEFsIuWNzEEePEUNSA0JmijyPT3YGPLUSShKPhzQhE/RrxkAnoOMZ7fQEz7H8KSMe5/ZhM8crr0fpzz9qQzlQkYafi5Rt/01y3GK1r78cXI2nes3LBYE3/zlodm8xo8c2EEN3JATVhV6Q/Z+Z39JIr8/LmdwDqD11DNVZ9dOKofgCRHYty8IQd5DsVzqXpXHszkQSsgfKeb456FS633XUyj2QzsnlkCkEhjXgGQsHeD4laBwPuHuKHjirQ==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BN9PR11MB5276.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(4326008)(52536014)(6506007)(66446008)(64756008)(316002)(82960400001)(83380400001)(55016003)(508600001)(186003)(71200400001)(110136005)(33656002)(38070700005)(76116006)(66556008)(7416002)(54906003)(122000001)(8676002)(66946007)(2906002)(38100700002)(7696005)(8936002)(66476007)(5660300002)(86362001)(9686003)(26005);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N01pdGxhT0h0VjFrZEM1SS80d3Y4MDN6QjRKK2NRNFBDUmZDbEFMQmtoK2J2?=
 =?utf-8?B?RWlZRnpyOWVjQU05RmdON012MFBMcHQ1U2V4elpaY0JhS0JiRnpVY01kRWR2?=
 =?utf-8?B?SUFjcEhUOFdPM3lIdHpxd3ZtOVVyNWx2NGd2RVp1VFJEY0xhZERRaTltSWdz?=
 =?utf-8?B?cFRQelR6bjdZajBWYnJtSFJmYVh5SHVWeWtXUmxpR3hBTU85cUtsWmIxTFVC?=
 =?utf-8?B?aUM0R0NLcXBvcktaNlVPdGNhQVhYWEY0T1o4aUhIZXgybUNqN0psSnN5Z25q?=
 =?utf-8?B?N1YzQWNUencvZVgvKy93eE9XTkIvZjJCbi9WTTBwd1ZabDVwTkZpcnc5L0pl?=
 =?utf-8?B?SUl2c1BmcHlKUVQveFRKRDdKKzRwZVBRRk4rNUlRekkxZkw5R24vS0RrZnMy?=
 =?utf-8?B?Zkd0VkNnZ2ROaytzVnVwMG9VZlNaNDgrU0g3K0VweXNCQzlJZDA1NGg3T1Qv?=
 =?utf-8?B?eXVGenBNZEhmdTR0eXg0anhid2tGSlhBcFc1Qi81d2x0NmNtQkttcXBHc2ZH?=
 =?utf-8?B?SHFmVnBRYXI1MFFWcCtiQjhNdlcwZElZUlFTbG9LdUVZSER1bEdaTlFDLzV4?=
 =?utf-8?B?MU1xdGRTL3c3dG5FYmVlQkxybWUrVXFvdUI4UFRxdDlNQUlSbTVoUVZ1WGR2?=
 =?utf-8?B?SzhzQ0xNZmJpWVVjeU5JdzlVaGQ5WnhEdDhTWmVMZU40aS9OQTJlYTRqQjVZ?=
 =?utf-8?B?b2RTQ040T1BMMXhkMGlycnA5YmdkVmtxR01rc0ZjNGE3K0lKaEZCTkl2alhu?=
 =?utf-8?B?QUxVSklYdDVJcHVrbE5JaTQ1SGM2ZXl6U3oyTFZUNWIwbWppVHRyNXV6NTJW?=
 =?utf-8?B?QXJsWTdPTk5sN2xGdk1zWkszeGNLd2Y4NWZwMmxDT0g4RlpONEVkWVJjcTAz?=
 =?utf-8?B?RzNubGxlUmdJTThMdnc0Mjh1ak9sRE5LaHhnenJCa28zLzhiZWxxWFcrbUda?=
 =?utf-8?B?N2I2SGc4SzgzbUM2VFpqZk1JRS95cjRjRjdWMmlNbVZIcFhhOGJzQVYwZzND?=
 =?utf-8?B?cFM1Wk1NUU1ScndKdDJ1S0VjSjlhZXMreFpWa0xwcloxU2JQT1k4M1VTVVIy?=
 =?utf-8?B?c3BFWXAyVCtTbzd3dVNNN1FicXdyVkNuamFMYVJkOENUVHJhN21veThWMzNs?=
 =?utf-8?B?aXp5TDdTZXEvd1NEU3l4ZWlnL0grQTF5THFKOUJqWWJlMHdaelg5NnZMKzds?=
 =?utf-8?B?amdXTkhmb1NoZS9CK2E1SU41UFkwRW1CVjdmQ2hLZ1o0Z29xYjFEZ0tVa1Bp?=
 =?utf-8?B?eFZCUXBDbjVKN0lxWWlMSnAyRXc3V0dLUG1memk1bVduRGxlMjg4OTk5Tmph?=
 =?utf-8?B?bTFvZEdmRFNpRzNXNW5rVThGU0JmaTJ4ckVndk54R3FXc3Y0cWZNeldpSEFp?=
 =?utf-8?B?R0dZdGhNNENNK0lOMU9ZOHhhdEdMNzFGMHZXYVdVMHZiS2tPZGNFcmxQemdI?=
 =?utf-8?B?TUpHaVNyZktUaVVtMmdZOWM5bkZhbzFaT3ErUHFEMldlR29KcDdpMDl1eTFm?=
 =?utf-8?B?RjVZcTJQRjNtUllXMDV6ZEh1cHlRdjBmU0haQVBpdDM0UjlxTVN2b3NsakNV?=
 =?utf-8?B?L0V2MDh1MkM4U0l3ZzE4NHZpb2d2NEd6TGQrcHJPZ0wxaXI1QWJkekticHVw?=
 =?utf-8?B?OXY0RlMyeFZWRkxhZVNQS3I3NERZK1ZhcXNpbHpGbEQ1N1dCU1RBbUR6ckZ6?=
 =?utf-8?B?Y1FCU0dvQ1oxUXBSRHhJYTFjb1hHQ0lrdldVUU9Hem45bi9reCs5ZHY0MDJr?=
 =?utf-8?B?YjFmbjd1WUtjc3hvODJ2RStSNFJZL1k3VDZhQnNpcUozakZ4T2tMVHBpdDRu?=
 =?utf-8?B?aXRkK2R5eTlhMWIwbWlpcWVndGtiK3R4Rnl6TGVaS3N1SjFqcXVrR1N2emRH?=
 =?utf-8?B?YktvRUJ2cEhFd0lpZkVzTFU5NFpicTNkS1lva0xrZmEyMEhYVEU2MitQdHhJ?=
 =?utf-8?B?VWtXdUhJRXowWjJPTE1ZQWlYalNudm0xVDU4KzJvUnFEejFTN1QwVU8yQ0V5?=
 =?utf-8?B?VnJ5ZVhKT2xJb2UyNEJ0Qi9ROGRwTUVma2w3dDUyVGtmcjFwdHEwK0dMN0p6?=
 =?utf-8?B?aGlLcmlIVjRIRFdHc3d3ek1jQktNNVZoVXJnT3V6NHFTSmZxeXNSekUvTkFS?=
 =?utf-8?B?SnZCS2U0YmtvTGdzUHJHUWs2L210ZTQ1eVpOQmcvV1BudkIxT3V2SWZDcGRG?=
 =?utf-8?Q?38ddY4JQaz8eV7w4ZI7HB1s=3D?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5276.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e03f4057-bb0e-4ce1-73c3-08d9badcdbbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2021 06:26:39.0039
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qermKvcryDL0XryjfM7mTmXFt77yVW7Pj9J8KLivsc+dNfVNpUocSEouUPCUmCBngMbtp9rNUi7t3zIUG8LjVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB4177
X-OriginatorOrg: intel.com
X-Original-Sender: kevin.tian@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel.com header.s=Intel header.b="kPsD1D/F";       dkim=pass
 header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com
 header.b=mv17MgIp;       arc=pass (i=1 spf=pass spfdomain=intel.com dkim=pass
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

> From: Jason Gunthorpe <jgg@nvidia.com>
> Sent: Saturday, December 4, 2021 12:41 AM
>=20
> > Or has each queue and controlblock and whatever access to a shared larg=
e
> > array where the messages are stored and the indices are handed out to
> > the queues and controlblocks?
>=20
> > If each of them have their own small array, then queue relative indexin=
g
> > makes a ton of sense, no?
>=20
> Okay, I see.
>=20
> I don't know of any use case for more than one interrupt on a queue,
> and if it did come up I'd probably approach it by making the queue
> handle above also specify the 'queue relative HW index'
>=20

We have such use case with IDXD.

Basically the IDXD queue allows software to put an interrupt handle
(the index of MSI-X or IMS entry) in the submitted descriptor. Upon
completion of the descriptor the hardware finds the specified entry=20
and then generate interrupt to notify software.

Conceptually descriptors submitted to a same queue can use different
handles, implying one queue can be associated to multiple interrupts.

One example is the shared work queue usage which allows multiple=20
clients directly and simultaneously submitting descriptors to the=20
same queue, by using ENQCMD(pasid, descriptor) instruction. In this=20
case each client can be allocated with an interrupt entry (including the
information about the client's pasid for permission check when the
HW generates completion interrupt) and then use this entry for=20
all descriptors submitted by that client.

Haven't completed reading of this thread, but would like to point=20
out this usage so it is not ignored in the final rework. It basically
means one queue might be associated to multiple interrupt entries
and multiple pasids. =F0=9F=98=8A

Thanks
Kevin

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/BN9PR11MB52766CC46D3D4865308F61D98C709%40BN9PR11MB5276.namprd11.p=
rod.outlook.com.

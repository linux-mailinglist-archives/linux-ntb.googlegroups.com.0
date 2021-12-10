Return-Path: <linux-ntb+bncBCN77QHK3UIBBZ4QZWGQMGQE6XAV5FQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EFFA4700B1
	for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 13:30:33 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id kj12-20020a056214528c00b003bde2e1df71sf14027645qvb.18
        for <lists+linux-ntb@lfdr.de>; Fri, 10 Dec 2021 04:30:33 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639139432; cv=pass;
        d=google.com; s=arc-20160816;
        b=EyS70N3EF+yS3jUrUkpTr3QjH4QFkLHpYHRG1dGM+2IgERBkQMZExf81eWQ+TNNbvM
         2P5VMaFFNpnATn5Sz3tM37/+tnT2F5jBFiLf48aTa4EjJqma/dl2o0sCVL6TidYfXZtt
         iYggZy64Rqk/HegcvsQqz3qOv6NI0GdxGQuYuEv6lqnHuyx6fCTgZRIfX0rebP07cDF3
         CS/6vCRvPIqumgi+AgWYmxh33GJDsOj4lmuO44COpcS1IL3ZEkJXZfZjgz9GHe9OYvFG
         nhyOEvDHeVEK1I49XuDx2oUevaA+sfEUFkdHsTY/JbUIvLHHupLsh1iSs36RnQY1D09h
         tJBw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=kJBIspxX/bFCccrsl6Od7Q/590Q2pcyBxxuMB8Sf9vg=;
        b=XXNVvBu8dKwA6dSfCoRrqGJi8ZG3cYmRnT1XwpfcBddLlr8axnEz2aWJ62o+f3fEYP
         y1Rt3G8xCCD6M5arj4y/VeQNk77lAhQYE4adzRDj1K6rioD5LhHwewym6V9tOSUpF9Gf
         4j/YM8gAqxXzHJ4lFWjvBPjtzQ9uhj6AshwMfMG9C6Q2qBbh7NZnSxPWlBA6zW33DbyK
         DAN5pJIgZ+IJmQpF9R6QuEqCdVyAr5FUfXwLrv8lnyC0MLXK6G70I9b256u8svjtVPK4
         /GV1zcxl5Tqkzwi1iifjPhwmbfIO/cLREJIwIOVwugxRFXN2BJO2CPPhy+aRdxlkuYiD
         50Zw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=R71nXRaS;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.68 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kJBIspxX/bFCccrsl6Od7Q/590Q2pcyBxxuMB8Sf9vg=;
        b=RfPtfl7z+TwlLOqOdPYgbAgTHGHSxqleguh+y4u9+P5d6VzVnpImUoCV563lqUjnfL
         4nBibpcfKIYIlN+kXznheklNkoTTCKT+k7nhFliSLKmy15ykpKR1XLu3urw9FNuXb4VA
         juGtmOL1DyRnMAid8JB9TZDJbIakQOiwgCvHhdDZLNo8lit7zkoAn1MMit8fsBXI69z0
         w0oKk2dVtVIl77tlHmLQEzKiVYwNLFx2A3WK6SUrO2PfDcl50uXiqtQJzUi2Z6u25jwQ
         tKzUeEyLroTWnov91exToe9Bb4qX61Gfk9XRGm1xoqIM7dVWDZYD6qMgwDjBzRCVR3NB
         ehTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kJBIspxX/bFCccrsl6Od7Q/590Q2pcyBxxuMB8Sf9vg=;
        b=rnZULGGkHNfidr+Oz/6bGvSuBgZsuTIF7slf+cM+nNoCWeWu04SFAJkN6A3mcLxqVF
         8yEdOh3silPpm9XGiop3Fv/TJCqvZUpzXbVE1FU7KkYfx8QfyK/VCWd8MSKIADi6ct5x
         3GAkm1EJXdY944cZOF6lLtxPqTjzQMHo+m2Rjc1ve3w0ZF8mrKteZHlmHU9vqYVpvfVM
         kxWHq3PnCQhKTst52jEMjBa2/aHc7fiS1PzyKIjOC9+3jS/dWACs/3jPvE9TianIVNEV
         nNII5mjQJI6skTKtixqdiK/JOWyQxHBRMW1B2Lr3050nMOuA+d55rC4CnuyoaEZXfDwl
         zgOg==
X-Gm-Message-State: AOAM531fH/u+CXJ3bKoZMu0SCVOf++DZFONEoorlaHaMV1voxP0Cb+XB
	nLPH05zlOqrErOIIk+6v+yM=
X-Google-Smtp-Source: ABdhPJxANrQCn/9iQYd2I3fx3oD5iINjg2RL6b8euGvtvlE2xT2qIi1pf4uLX8BvoTswdQ0ep7JpIQ==
X-Received: by 2002:ac8:7415:: with SMTP id p21mr26192258qtq.667.1639139432073;
        Fri, 10 Dec 2021 04:30:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:4e56:: with SMTP id e22ls6538773qtw.6.gmail; Fri, 10 Dec
 2021 04:30:31 -0800 (PST)
X-Received: by 2002:a05:622a:553:: with SMTP id m19mr26579000qtx.103.1639139431600;
        Fri, 10 Dec 2021 04:30:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639139431; cv=pass;
        d=google.com; s=arc-20160816;
        b=vPQ+9v+QSyGLa1pKZ5NTA8onvnBpeQ+r9U9juyU5cOLTwptUL0B1HPpZFV7JtEkewZ
         2SwmeTxqZVNM0L/xCPbBAv7sdLwWHYqAgk6WgqLA5k3hUWTX/O3WErXcMx6QFyH54nz1
         nWcYaP9MjF6EXE7IyFpsDQVtMawAuGZEzXr6Uz4C/RwlGTT2Chufgz4+0Cdqkw5iXcFQ
         h6IC5sKvOMtOcEcVwEBOyRti7++yIjZXT3d+bIhvm5EFNNufE4zFcrdSQ3zGItWIHhxT
         PlFQd3U8FZOHS1+ASgMNBgwaQfcmSL9tGt+V6DsR6cuIuG262P2gPhBSRb0OOJ5w1dxL
         zvXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=5Vc9XEu/HF/mw+9vjsMr0xpXkkWqJbrTDGPuUppisAU=;
        b=NDcL9+nzLqyzldx+Gf8q5VKfDvSkcgUIZXA5ITqtimNOrdkSeyY5mYbLFnbEZdj0cy
         nLdbIXM0AeizTqPYyN/uTkgOwcutm6qJLh48TTHo49BznGdCdwxziAzPwSgPm0ZoZuNq
         LAafmMUSEYGfAB5ejEO0lSdj9D4wtKFoxC/bX345qnZVmrVF7f0/P2G42hLKx0JCJ/yE
         WwNeZTMgAvX21m28lH4qofp17QchE+9wxAo69JiP1wd6Mab4Yv087hNsI63flkm41pH8
         rsISNPGkKtwdtkblUMQwc2MB51XFH3GXGaulZ+BAIm2bOBWJTvNgNlWAqxCHn76ZgHLg
         kjJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=R71nXRaS;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.93.68 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (mail-dm6nam10on2068.outbound.protection.outlook.com. [40.107.93.68])
        by gmr-mx.google.com with ESMTPS id i18si503170qtx.0.2021.12.10.04.30.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Dec 2021 04:30:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.93.68 as permitted sender) client-ip=40.107.93.68;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gu5CMrxngDS1yy5MVXtdwk4zrlKIU40ZMoa7LgJblZQVQlzIAoprE/q6l5XugkYmoDjLEUyPl6xcV4fCmZf3y/tl+Dj9J4CQL2cE5AmfGIsK/J5ASAJILqRI8hf5nD1GV7V1XGiFxnFLdEP0hqXyhc81a9Mlto+0OYNhlgvDdDfz9FWxIQ3TpFWIOpAH0lGdgdz09qoCP0DhkTe9PmmyWRHSwPHE0KJSzmbSRw7w/sRV0Rx+sYieqJmj1zI/vMOWN1lNP/6yLrw3wQyCqM9JlAGacp+CaFiBhI3Ime91VTkXjbkrdtWtXt0/Nlvj7LBQB/UQ4sT7ZQFPPTHDBYDwnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Vc9XEu/HF/mw+9vjsMr0xpXkkWqJbrTDGPuUppisAU=;
 b=YmxN6OdoPaPpBzw6eLY5gBRRDVRS52k7llqEPGZ0N9TLEg6A/mLJbeoWxgM15FpLsDRS5CPMDOLayzIZ2MU0Wj4a8yVH2bJtkMCoj64l+Bc3whOom5W2594tnJv2CP05gB5mSS6OlM08ZVIEv0lhM+3OBTbPvTA2LQ2UqoX9k3tMob3WJEcAjb2DBSMC3I7UQ4iCJoC+unqKdH71G0hD/hC61VPPTQMccFyqZJd+dqTin3XL/oXD6sbkodHtY7SkeIgihaOnWeho/6JbLc5zh3MZ5OHJNBlj0fjjTOMjr0+fSapAxWrk9HaaN/fT7miK7xU7ju1o7ISP6kIwM1mYWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5285.namprd12.prod.outlook.com (2603:10b6:208:31f::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.12; Fri, 10 Dec
 2021 12:30:30 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%7]) with mapi id 15.20.4778.015; Fri, 10 Dec 2021
 12:30:29 +0000
Date: Fri, 10 Dec 2021 08:30:28 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	"Jiang, Dave" <dave.jiang@intel.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	"Dey, Megha" <megha.dey@intel.com>,
	"Raj, Ashok" <ashok.raj@intel.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-s390@vger.kernel.org" <linux-s390@vger.kernel.org>,
	Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	"x86@kernel.org" <x86@kernel.org>, Joerg Roedel <jroedel@suse.de>,
	"iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <20211210123028.GD6385@nvidia.com>
References: <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com>
 <87k0go8432.ffs@tglx>
 <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx>
 <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx>
 <20211209205835.GZ6385@nvidia.com>
 <BN9PR11MB5276599F467AD5EAC935A79E8C719@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <BN9PR11MB5276599F467AD5EAC935A79E8C719@BN9PR11MB5276.namprd11.prod.outlook.com>
X-ClientProxiedBy: YTXPR0101CA0047.CANPRD01.PROD.OUTLOOK.COM
 (2603:10b6:b00:1::24) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 44481053-c0ae-4ed3-710e-08d9bbd8da0b
X-MS-TrafficTypeDiagnostic: BL1PR12MB5285:EE_
X-Microsoft-Antispam-PRVS: <BL1PR12MB52856E3D1700E2EC13AE69EFC2719@BL1PR12MB5285.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MJ/WO+GHjPUc20CElGuMaL7GcuvH7TJ5Xlx9LINUHgG2cI4kzZW/mW5eZmyCuT34tdVAd/BszOQWvUzVTKahhkmR66fxPnMDGGXhyIVaqmlAj9qO4ItYD2eMGHD7sRhU+kOHlhHOeOGpw/uWrGHSuMsSTAy2/Y6q6tvi9uFTWs4JhzAxCN84ueOqRZPYXmu+R7MgAv6nSvHZxwQQlEf7i2exR8pHzTTVrQadng/j2VI7MzdtF7w9S9RmTgr7Cua6OQxKNLdyseoIvKQYOkoUlPg/nl2Ih0BprWY9W0tiG/L70wLIjlnz/X+FtNa8uX64bFXxV4/R0cKhsrx/7eB6Mr7MFB7OXKGAzvOdPMSGZzXLeiCrxW4dq2CPSIRlL8kSkszplyg8Kzups79kqdcRljytCz4VO7StVNAwXLdLJ3aOOqy0UC3tItGuuKYtKLwyb0ZLJCblwN4LarXHFFRrFhgOWPu+/fAMbH1JSAbQ8gBxwyaIHRhSccW8gCimWwsDawhl+jnTsF5kuXnzCtkJoADFeC9NWND3IaCKlqYPQJk7DwZmp88xBxUZquOp3NB437aB7bQkv/K+tK9DIXGETLjqSg0mVNucJMAg2Wi5LznotMPjOmI/JtjnYb889AJ5IrBRIF86M2wwDBn+ObCw2w==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(36756003)(33656002)(83380400001)(2616005)(86362001)(186003)(26005)(4326008)(5660300002)(38100700002)(7416002)(1076003)(4744005)(508600001)(316002)(8676002)(8936002)(2906002)(54906003)(6506007)(66946007)(6916009)(6486002)(66476007)(66556008)(6512007);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/AQi6wOzUMnEgpm51M5pU936BFk4jC1x1SRFWSzHLVfYZ6tk+AO7GlpFUduh?=
 =?us-ascii?Q?t3CQpCSDpWk7UsgUXywpHKkAbjmW/867ZjvIc0STh6awn9YB/yLmsOixkXGh?=
 =?us-ascii?Q?GIcyk5NLVwAfGhDqOaynY71cyXIAnTsNtL9lGEs1rqrM9XXyS1EKXGF4GYW3?=
 =?us-ascii?Q?xy/l3R1GOZOVL3Dn5tVqs1IoagzQddjt6aewaJ4KXUC2OZeYZXYf709cJJRa?=
 =?us-ascii?Q?OB3ttAhzeMfyaA5ILGuwBqZ6Er9zwJuMuwzTY8rG4q0SG7YmAOfu9hl6VHOR?=
 =?us-ascii?Q?tejPpWEk67pgqyilHaPOlQ29VNrqK9iq3ztfpShmISumNbafp0nAXNhgD1+G?=
 =?us-ascii?Q?UQEuOqX83MoSX0yv0ykoFoR/LGd4Q10aJ36KmHgQzAwgdh2su0IWjiT0l7Ww?=
 =?us-ascii?Q?6FtNUFxjdjY9r25qwy0gfxWnetwZAv5lQ6SRZ9C/hiofpMcsw/HXa7Hnl/0D?=
 =?us-ascii?Q?Dx3FhAysiVgYoQS2rqnsoIiAZNjPgxxVImBGxAPKJk6dasld7n5uLGRYrVts?=
 =?us-ascii?Q?uEZY6PtVZgtq2t2BpbjJrQYtm/k0jKpIXZjNpn6zLkP1O8yRd39oZZOvhoge?=
 =?us-ascii?Q?BXphBnAEwyAySltHDSYT91XZQIzCRAl6V5StIM+l2LLSMwRbpIvxED96q4pn?=
 =?us-ascii?Q?FySwGFXdHFdlwokQoJBWDc4loW+HNiiUl/wMBx9Tv+SY572eSG3/biuJf4pL?=
 =?us-ascii?Q?jOOdp8y4AAfFAjkatek43p8A9fEgjYK8XOWnM3uJ2GoMI2LrF0TEj76RJs38?=
 =?us-ascii?Q?vra4evdDHfqrYX0eJ0zeh9svl/23OJCSuHf57MyUA5uvOHECeNuN4RiXhRSl?=
 =?us-ascii?Q?qMBzcjRPbMnvPvHHUykIixW7nsDlKGQf/WlBJpgBMTmQS/F6p+vlZH8gzuZA?=
 =?us-ascii?Q?5D26Yiwk93OWT8nbxOxQMCPPBseSk8hlNuUT+AQYzvSurw3MqkmG8KhQzT1o?=
 =?us-ascii?Q?NVsewcxSLicCH6jYozJqIryVBbYDMT9Wl87k9jTvi2RQvwsvBCMnqicD7i/X?=
 =?us-ascii?Q?8OVzjZJ41IampGzW3vGbRnU/6qeRlGE/O/UEmuWLJU99Xj1NSMUmu5sb3oKC?=
 =?us-ascii?Q?yvekQ2oZoPRQj1QL4eatr1XaxKnKHhsh6YrbXvI7q6mKmL4n2iwrF3hCKNeT?=
 =?us-ascii?Q?W+Agru9vs6ajDUWzaR+EeEY+UNpf7ucqdNszQli1YGwMCbdmnleJR3gS6DHd?=
 =?us-ascii?Q?JI1lmrjZAen97u5WozSaGx90TrZecHmWgxiPPSCcHag5co+bW7EYzyhs8dV7?=
 =?us-ascii?Q?HLd012x0v0CHUZ+XAbZUeccTolkWL/YGNI5dG3AhVvkhZQJPqcqtoR75a5SV?=
 =?us-ascii?Q?7UCU6gT5OlavlDBt2rmssZrvtQtMO7TtcE0+6s5X+qTGj+6WOmICRFBu6r0f?=
 =?us-ascii?Q?ZUfoShv5aZBiL7MgNGtCPtNmZlz+AjgGqCeOuk3XTDJVueem2RD/fxdukjnw?=
 =?us-ascii?Q?Gcse1FM+qOGxphVs4wl9XmvkLOozeCvf72mtHXhtnSJEqALRC7O/LAEiwhWP?=
 =?us-ascii?Q?V7gd0gXDTjct5EwG7UIPnQs0oBzUuQ48mx3enwD1N1hCZKKvt+qz3C2htwqf?=
 =?us-ascii?Q?vbda9FpA6qKdIbkdkWQ=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44481053-c0ae-4ed3-710e-08d9bbd8da0b
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2021 12:30:29.8898
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lYFVc3o7rAi0qCemi0BIdqgOeFI/2gbUrPbdPyCJAcfHD0eZO9WWhYnimevRZXir
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5285
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=R71nXRaS;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.93.68 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
X-Original-From: Jason Gunthorpe <jgg@nvidia.com>
Reply-To: Jason Gunthorpe <jgg@nvidia.com>
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

On Fri, Dec 10, 2021 at 07:36:12AM +0000, Tian, Kevin wrote:

> /*
>  * The MSIX mappable capability informs that MSIX data of a BAR can be mmapped
>  * which allows direct access to non-MSIX registers which happened to be within
>  * the same system page.
>  *
>  * Even though the userspace gets direct access to the MSIX data, the existing
>  * VFIO_DEVICE_SET_IRQS interface must still be used for MSIX configuration.
     ^^^^^^^^^^^^^^^^^^^^^

It is this I think we don't want, there should be no hypervisor
involvment on installing the addr/data pair

Guessing by what I saw in PPC there is a hypercall to install a MSI
and the guest never touches the page even though it is
mapped. Presumably there is some IR like thing making this secured

PPC has the same basic problem, I think they have a hypercall to
install a MSI, not a hypercall to provision a generic addr/data pair.

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211210123028.GD6385%40nvidia.com.

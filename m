Return-Path: <linux-ntb+bncBCN77QHK3UIBBDG2ZCGQMGQECJMOQ2Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63c.google.com (mail-pl1-x63c.google.com [IPv6:2607:f8b0:4864:20::63c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F90346ECF8
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Dec 2021 17:21:34 +0100 (CET)
Received: by mail-pl1-x63c.google.com with SMTP id f16-20020a170902ce9000b001436ba39b2bsf2618174plg.3
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Dec 2021 08:21:34 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639066892; cv=pass;
        d=google.com; s=arc-20160816;
        b=i5sfUfOIGDfttxbRpJqxIyv69Vxc3Gnuw0Hjqbn5beSNF7C7/UmpwJqciWCtZw5lg4
         uY5hAt73XoH9afYzgMlA93YEw88ZHybDY4Xw4gpoCIixu4BRWDUZyy6IRBiNPWoxqvRu
         I30WAc317WtULxfGcvFj0fG1s5rSXI0ys4AksvHZvg4I5zWIoOroCzUia0HHMPlLPBAQ
         PJbboWhJ8DsmkKNpXswioZCXBGsItjOT939uD+kJNyeIi81zWFcAG4UHV3S92LuYO9UV
         HHQIjDaROYsm4EIaXv1lmi6/QBn9LbdYIKjKMHm64fqEXnUHhafunPtZGp+gb9mr7YUL
         0jiw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=K4FgfVSjJ8a9oBvsbiiyA0N3Wu5rwVMQkhDuoQntmns=;
        b=seyw1jMn5pFKda6P1vW0u6ff7Bz9XzokWBnI6dM84daCv+Ag3bNMLBG0Lq0nCnl7Dr
         xHbRh+fq19ZCsE/ypuQG3epbNPXh7/clmZIfuWZzxtgmXABa84MtfiRhv1u7rJU2u/m9
         m6tR4bxE0HtCxw+gLQwFbyqaaLlzlwQqrkBlPprqS/ABZbmiyHLoZlMStqClch9ltAd2
         9nxWRli5NIwMJeZ3S/qg6iqqWhvtonAv+gsyHS8HzlaHAKZK5eFSshV7YuOsEtN2s9LV
         Sv7NJIDQVXJm4qBE4+NqWOzSf4UL6vjJIHz2LdSh/HytYAH97gZyaDNPfnrwiSJUKwNR
         aO8Q==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=BJNxtQt1;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.236.81 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=K4FgfVSjJ8a9oBvsbiiyA0N3Wu5rwVMQkhDuoQntmns=;
        b=n0IgCnYrsA/ghS0Gq1zeJ8yHumEevX2ppK73ZjZKL6crm6lFNQdFQjzqo5U9MhPYmg
         eGI+bFXfnpgJ6sCiWerVhqXpyWsdN2MTbUIv0xsaIx3J6bDyNGWOEX+vaiTaLCdY+6uQ
         GoT+Uo4/4s6uOYf/jaJHyMvQT9Vaw25qhfOWgiz9keFvER+VaKMpk7tJDtTwxiRLSI/S
         Y8WPwQKTJOckm2/3BSfQqpimi3XoXFYDqjsLR1WwSaI0J5Wut7yBfyfMzv396Rg92SZo
         BD/RhRfARwN3+E9V3L/b4Dk5EEzx5SzE8cilbqX+Xb6pnXG1h92qjixb+7TM/Pdq1dUm
         BFYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K4FgfVSjJ8a9oBvsbiiyA0N3Wu5rwVMQkhDuoQntmns=;
        b=WcEBBycrZYzxWI4HGqVZ+c3m+KpRWeGIhYtYXpnuozb3G+uo6GWSbhnODO93Wb5GY7
         aEkM1oBX2gi0o7AOvOY8P7fF+y9SqIjojne3prkZHQ92EBQOfSPMpA7yiYEzLvTGx9RL
         WdfSO1njSeiNskBnx6LxCk2RCpydphDech/wDB4ZAlz/W85iHyNys2UPOXExqVux3naV
         7hxHiqfleNacTzADsPFTBTLtpY46sOA6GUI0uPxrgZvonk3SlT92FNxpgPtWeBkug0uY
         lCIobQZBsNzSQkV+zkdku2+bSihc/ohAVm3jCCXi7t5V2Zg4dpdZ613HzkYOvH4rxNsv
         rqPQ==
X-Gm-Message-State: AOAM531oInLZh2MedSxoUocXbYYTqkRjUssaIlVCUzTH9oiQCQmbGxpv
	n36tKC8fIUS0uuI0TyvJsdg=
X-Google-Smtp-Source: ABdhPJyUAkBGuTRNozPVsD8CgiEZuP2i7EOwGGbYvcgNsr+pQzdORxrI+AwvjpfhSwv/KtySVD3cqw==
X-Received: by 2002:a63:290:: with SMTP id 138mr1599873pgc.425.1639066892573;
        Thu, 09 Dec 2021 08:21:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:d44c:: with SMTP id i12ls1865756pgj.0.gmail; Thu, 09 Dec
 2021 08:21:32 -0800 (PST)
X-Received: by 2002:a63:6687:: with SMTP id a129mr33943496pgc.477.1639066892008;
        Thu, 09 Dec 2021 08:21:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639066892; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xv4YPXaddnsQSEB2WHEmaX/gMR6w/6++WU1Nn900dj7OkBdoO3C5JDjFMIhLjfYPgC
         YI9hh1Ljkbj+AV9YcXt1OprnpgwzarPmhaKtLbFTQMAWG9lICbkwvgIPnmvGvwwPUILh
         cWFbLlvibfPSVC59oRAB5nwCbOyxjppERKAU6J3DgOdFjZPQCKWqhELrL3ahTvUuWgIV
         jAu3wC10WdRE6oS8RHIoPsba2gViw25qJ5IMXMS3y7e0qSvF3VcHhDlHn3jG/vE6+yTC
         OD3zkBa1JE1aDdQ4oXhMG88OPW8G2/qdqyDdRHkxVyx1tvk8nPd6mB6ZI7BCkeXCp+GE
         kf2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SgPDlhNAzB28ieRUrppSXQEi1R8DHDSAtSWhVn+tnQo=;
        b=pq1/iHUW2sft5/twqSSNoSV4YHYXzFHww0ccF0/WtlYpZc4jbHHTCpDxArwKkQ2Nll
         PMWkb9X0NeXyzYSJWRAiawHC9BXh+65UgaLljdya+uBSYaDMzzl9v1Y54SeofwqmkaEz
         rg+FFM99F7J+2WppRh6b9iNjhiydLX0Fu96fPy5C/5lbQXNpP/cxvpTAGoLT2Z5Ccxe2
         ZUofc6iInwQ4WL/XpVbPEn6X2ZesiyL9qXcdfSrlogi8AfDss9kpTjN1lru0mnrrxZNb
         4yqe1pNo/jMkiclhPSj1Z0pNrHyQVouHGV/ZCRzoc2rMv0IndeSg/dQIxHlUkLnMM7R1
         8NdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=BJNxtQt1;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.236.81 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2081.outbound.protection.outlook.com. [40.107.236.81])
        by gmr-mx.google.com with ESMTPS id pi11si995038pjb.2.2021.12.09.08.21.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Dec 2021 08:21:31 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.236.81 as permitted sender) client-ip=40.107.236.81;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hOENTDkFiSsj/FQG5HFN2CZdSVBAsWCQx+QAKk8ADq8DAXDtkSYDUyJ2PcGsb+peVwGc+CB31nJ41v6kDbx7/L64OenoOf1HqMLzrPGBlQ/sDl36VEN6RwuftKaJ0EdSrFF2LVYeqzU5JFZVReqBByjF3SxN3fMg4lXJtgyTyGqc8mJxuSm2lU0GPEABrSTGAFA0p17qEsM/0zYC40Zm/S8m78zQvAIXeQ7T7owZjT4jiOWw4QDBzV9gTOCIrxiusAVi5ZyoWNQpLe8lRSXf0e1w4sQKb2RwK/bxGDXtxGPj4XFVAwichmYLdUptztWgb5QjRWcf7k7FgOO5XlqbtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SgPDlhNAzB28ieRUrppSXQEi1R8DHDSAtSWhVn+tnQo=;
 b=ZAScLG6rBs+oV4RU+C+BFWmf1wjZ6fSgvTt6Kn+nCG5JSgGuJsXkTHy9w01zrvpVE0DjM9EKlBl3nwmh/OToiLP4iR582uixmphIaWv/w6fSnS1UZT5ZPNw6cxbTNPOMgivGA0Eq/k4XLiFn1fA8DAwihLPJmDh0Vzi+SJY9ZOLsIpk5o733ugmrnS8dm7heieinx3XB1P38PqnetgIV3L4PpShqmUpXy69oaOaQ8JisW1zq8HBTfNHavGm826N8u1SZIJ01iODGyC0HfE6sm1qcgaVSApweQJ9VCOqjFXlrdIdddkMaY+oU/RF8VlLw07ELOmu71320P6wStRgzRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5174.namprd12.prod.outlook.com (2603:10b6:208:31c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Thu, 9 Dec
 2021 16:21:30 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%7]) with mapi id 15.20.4778.013; Thu, 9 Dec 2021
 16:21:30 +0000
Date: Thu, 9 Dec 2021 12:21:29 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: "Tian, Kevin" <kevin.tian@intel.com>,
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
Message-ID: <20211209162129.GS6385@nvidia.com>
References: <20211201001748.GF4670@nvidia.com>
 <87mtlkaauo.ffs@tglx>
 <8c2262ba-173e-0007-bc4c-94ec54b2847d@intel.com>
 <87pmqg88xq.ffs@tglx>
 <df00b87e-00dc-d998-8b64-46b16dba46eb@intel.com>
 <87k0go8432.ffs@tglx>
 <f4cc305b-a329-6d27-9fca-b74ebc9fa0c1@intel.com>
 <878rx480fk.ffs@tglx>
 <BN9PR11MB52765F2EF8420C60FD5945D18C709@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87sfv2yy19.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87sfv2yy19.ffs@tglx>
X-ClientProxiedBy: BL0PR02CA0054.namprd02.prod.outlook.com
 (2603:10b6:207:3d::31) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ceaad3d0-bea1-47fb-96ef-08d9bb2ff53e
X-MS-TrafficTypeDiagnostic: BL1PR12MB5174:EE_
X-Microsoft-Antispam-PRVS: <BL1PR12MB517473759B1E3E3F521D8B15C2709@BL1PR12MB5174.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fWRaIkG4ZxaNseKtDNRrE2IibmaxxZS3fMfCEaPRjTPrUaUI9acH1OAtyuWalHvAa3ZrwVEkztxVajhECLrf5sOmudVu4KqtsTmd/xfPEI2e5LF/7UchpW5XzLgU53hQRgWlWdglCiY4tlko+iFn6jlEUkfG9nWolYmU7ZyYmKyKHSUUuSKAu6D4WXxEhB2TcX41jn4k2+unumorYX2Pcvw2SRXVNzSxU8MO8Ch0MNTALpFhc7E4907s9wgTFA5ZqiKcuInpQqllWnHwWazFxo+mJ/togRY87XUPA05ARCKdljSjPIQiFHZjuNBgTcSO8wcF9HXAegNwZ/StDbzYVCfdiCBCdEvx4lhVDsUGFK8oaarujBexhOxP2Ph0Hf0iQ3pQRzasyy9nDzE6b5K/4JJdZDghv7md0rV+GBF2bpsTCWuX0nRHQkb2NtdghTvNUn7uPbLZdvse1zMZf89tN3A0+qA5ors4WsdyvNpdRIZ9GP96pqko2+JfVdSIxErzSUuIUAdF5f77NQNFeEOoKvAXoWezqs4/GQdtCe8/gPVxq6YtxvMFC4l76A3JNsJnrZTpPxFup2Uz/JSke9LXX6kLdFF5gPTpbhVULfhFJTGd9hUmdADp99G5TX0r6WK8SufvJa8fDQmz/pZJ88fEWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(66946007)(2906002)(36756003)(2616005)(5660300002)(33656002)(6916009)(6512007)(66476007)(86362001)(6486002)(66556008)(38100700002)(7416002)(54906003)(4326008)(8936002)(26005)(316002)(508600001)(1076003)(6506007)(186003)(8676002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5C02uw14WhAWiIggLNL9HhXA7jGTL3xtRUP1/vD000rzgJilACvrgVcygthD?=
 =?us-ascii?Q?MJ18960T+EzhdTKiA2ZO4z7YSWvYTmmfHWcgKo5egSoSU9kgJeB+Fbw/ZxQY?=
 =?us-ascii?Q?p8nuie7rc7+DlNCnJoEv9wrte8TtiTDFzJhki706/b8WoF/95N+ig9yCRJKm?=
 =?us-ascii?Q?tLYF271oiRp8dw8BLb5ECjitmLjsaU1YMiQiUdJtx4tPWq1LQRN3uEAb9hhe?=
 =?us-ascii?Q?OvX6FYT5nNNVHXrKEocyBLd3mKXjRGpEUva+16OOFgSp3TqTL0ztzYGRf5Vp?=
 =?us-ascii?Q?2VwzJhsJiYOsu86tRSkJko+a8kLrXVAsOQeyNNETgNUpvTDSlWvbBaeYG3bw?=
 =?us-ascii?Q?0DJawaSZlTcEfBCKpxy2tJnr1RcK7UuR9Yae/jU3PXwaFs1CIogXJSOIjrqd?=
 =?us-ascii?Q?aFa/BEYSduqklM7dzCS6ask69zdvetJa6iTFk0SeiwhvjrwPgCq+Sd7BO19W?=
 =?us-ascii?Q?B/ZN3OBUoRZnFDi0eSPc9azGIl/izO4Ps9yXTeQUrBYt/LhkwUKUZhJaLFmK?=
 =?us-ascii?Q?UqAvL+ErcWEk4taKzCOJUP108RwYQmphUt7seabVhFM3YpXZGNQSiFYJia8u?=
 =?us-ascii?Q?PuDNrPuQfTDQodmGWHm/015NVsbLqfL5W39Kt8pz9p/Kv6QpFui5t8Ed3b5I?=
 =?us-ascii?Q?ztvyx3pRn+OTQdfTKQrU5CNj32YqCP3aKRrfjW+X/teIrIIlvXa8KMOdASv4?=
 =?us-ascii?Q?fd8nfFS0tk2//YdrpvD9pXEvk2KenIHq4yfikXkpcsPlDPXmPV7ccCExjnSu?=
 =?us-ascii?Q?SNT5gS3taWjNXfTchFMi94vNE7vkbrEv39v3brmt3aqsitA0ESl35rz/hE9/?=
 =?us-ascii?Q?KFQDYuEi1AAE4OjWbth8NC5anE2naeTHIzIUY7q1PTTs7Ei8oFGgpGdt8m48?=
 =?us-ascii?Q?r6nkaXYYkdnl2PEnLSLxwR4rbAcOtoVcyOyB+QA4MczkIn0lD7QtObYaF+z8?=
 =?us-ascii?Q?WLKIQqtGMVVVpdXaokQFkjrg/jeDQHAIhkpbQd4gNncsNzFb5NOA5dEdZ+Sr?=
 =?us-ascii?Q?y4fMle87tx2k3NMo7GvNrd18adYzzGsqLGgUwckglI2SKPGflKSPSOM8XAbO?=
 =?us-ascii?Q?LkKvBOshKBvuabulu56oqAsdwtTfPc3BMIXLCescTZtOU5aM0/3Uy311UjAT?=
 =?us-ascii?Q?EBkCtZ1dty0uE8yA+iP+KQQPkGL63AF3c4jsBl1osCnyh+Ffk/e0Wi0sCJi4?=
 =?us-ascii?Q?X23120QYe2EZvB/fWlPoD93bLBW+XdLB3qQVl42NEpcE6DxryKlMvg519xRO?=
 =?us-ascii?Q?4VLWD6MykqD/TVj8A/brJmaqxQwPV6OfamkAVlWM+dO5floaIJ3V9jLvjewN?=
 =?us-ascii?Q?suDVpV3I7IkzIuBxTetICLAuIQeSer2QN3x62m7YPwBkMVKD72XneM9dlUy3?=
 =?us-ascii?Q?FneDLRQl+Eu2DXMQGNsJXOPYPxactM/KjMxNc5+uPskrjAfkX4wXDVgndkdp?=
 =?us-ascii?Q?OG+qP3dtGsuSiFBSqGAITwsVhCuIQg0TNCDUliqaSHt8jlnfUh7I5O1MDpbN?=
 =?us-ascii?Q?117/fWFtJhcVAjML8RIy3uNlKujcRaLM3Lkzp8tiUSlHIBXBRUxpXaksu9S6?=
 =?us-ascii?Q?ABwOMzjWKJpytIuJBy8=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ceaad3d0-bea1-47fb-96ef-08d9bb2ff53e
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2021 16:21:30.4980
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EuinvCzm9qNHsV8oCXejq8KNnDdAGfRwakutYCXudTpLNAa4VvWYoIVuHCwsrbjK
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5174
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=BJNxtQt1;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.236.81 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Thu, Dec 09, 2021 at 09:37:06AM +0100, Thomas Gleixner wrote:
> On Thu, Dec 09 2021 at 05:23, Kevin Tian wrote:
> >> From: Thomas Gleixner <tglx@linutronix.de>
> >> I don't see anything wrong with that. A subdevice is it's own entity and
> >> VFIO can chose the most conveniant representation of it to the guest
> >> obviously.
> >> 
> >> How that is backed on the host does not really matter. You can expose
> >> MSI-X to the guest with a INTx backing as well.
> >> 
> >
> > Agree with this point. How the interrupts are represented to the guest
> > is orthogonal to how the backend resource is allocated. Physically MSI-X 
> > and IMS can be enabled simultaneously on an IDXD device. Once 
> > dynamic allocation is allowed for both, either one can be allocated for
> > a subdevice (with only difference on supported #subdevices). 
> >
> > When an interrupt resource is exposed to the guest with the same type 
> > (e.g. MSI-on-MSI or IMS-on-IMS), it can be also passed through to the 
> > guest as long as a hypercall machinery is in place to get addr/data pair 
> > from the host (as you suggested earlier).
> 
> As I pointed out in the conclusion of this thread, IMS is only going to
> be supported with interrupt remapping in place on both host and guest.
> 
> As these devices are requiring a vIOMMU on the guest anyway (PASID, User
> IO page tables), the required hypercalls are part of the vIOMMU/IR
> implementation. If you look at it from the irqdomain hierarchy view:

It is true for IDXD, but mlx5 will work without a PASID or vIOMMU in a
guest today, and there is no reason to imagine some future IMS would
have any different device requirements from MSI-X.

Though, vIOMMU operating in bypass mode seems like it is fine if it
helps the solution.

> If you look at the above hierarchy view then MSI/MSI-X/IMS are all
> treated in exactly the same way. It all becomes the common case.

Unfortunately in a guest they are not all the same - it is like the
PPC code I saw messing with MSI today - MSI setup is a hypercall,
either explicitly or implicitly by trapping device registers.

So MSI is special compared to everything else because MSI has that
hypervisor intrusion.

My ideal outcome would be to have the guest negotiate some new
capability with the hypervisor where the guest promises to use new
hypecalls to get addr/data pairs and the hypervisor removes all the
emulation around the PCI MSI. Then MSI == IMS again and we can have
everything treated in exactly the same way. Hypervisor doesn't care
how the guest tells the origin device what the addr/data pair is.

This moves the hypervisor trap to setup the interrupt remapping from
the MSI emulation to the new hypercall.

If we keep the MSI emulation in the hypervisor then MSI != IMS.  The
MSI code needs to write a addr/data pair compatible with the emulation
and the IMS code needs to write an addr/data pair from the
hypercall. Seems like this scenario is best avoided!

From this perspective I haven't connected how virtual interrupt
remapping helps in the guest? Is this a way to provide the hypercall
I'm imagining above?

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211209162129.GS6385%40nvidia.com.

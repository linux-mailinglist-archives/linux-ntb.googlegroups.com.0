Return-Path: <linux-ntb+bncBCN77QHK3UIBB3VXXCGQMGQEWDY3X5Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 661A7469881
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 15:19:27 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id r65-20020aca4444000000b002bce52a8122sf8176740oia.14
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 06:19:27 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1638800366; cv=pass;
        d=google.com; s=arc-20160816;
        b=FnD2GWoPWemJCvRA8i/C1mlzciFfhCUQjdb+IfVxLv5OJAsYGL2luchP5y09v+00Pg
         lbF7OtN0F4A8A92NMY3UaPrnOEVJOIuQN38eUz188iBkKE1TwxcUgj2Zqx8DxvXYvVs0
         vY0RGSTIOK3cmToTAUzmm8PvV3d2C7K4yYm5gp0RZWWkzByOtqqUXn9+7V256fw6Qu3l
         zrA7H7lOx8xBk3UXTyyHxxMRCyzmAOdpgfO1Fk33XXjOpihnKh5nrm+ZR0k6qHG+97ea
         isM/Tdmj2i38w7wtXcSBzFt9zZMieWs7gJX9GVaKm18DKdmmzA0uO1+f3Xi4abefD5KV
         DQXg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=iK8g1/g+1EZ+eD0/Flj3lV8D+3I68yK8OxJS/UQ86/g=;
        b=0oziXLIkxhgLfa8dpmMzfnOmR77C9yuMQglrcxcHAwGBzFPzRl5orTq1LGSi/vz9ut
         G3P1XCdyvtpefhvEVqYBH7BYIyC2+o+7y8uYxVLuFZJFbMLIZBK9ZEECD7Pw6fYsYo+O
         W9WS2J3vFWLlMh3YjuSSmUMj3dDD3K0QOnNqSnwTEtrxKQSO0Y/L3tkZPw8jnnHnSYMs
         BWv/bDWW1nfAZMaRGAJdQIEKuWOn6a5Fmt8/vMCOxWuPMBd1hg5npVlCaXueKFEi47qh
         lL+hpNeAVAMFlFbWNc6QkuIZqVALkXY6MpmV1qkeAXJvUH5g6ZX6PbgSzGjaSzTHgK3V
         xbmw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=ksINXdoG;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.220.61 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iK8g1/g+1EZ+eD0/Flj3lV8D+3I68yK8OxJS/UQ86/g=;
        b=RIhlRFODln8+9bYlsa3APR7/JCfN7JwbQqRwY6JnUrWbNJ9vo6hu5zu87F76Gwjt3h
         ExowIuhFPrLIlxNxm8T9zQNjtGGqbOudx6/62xuVoddHC5CJh3V3voyPbvIBXmKtaCEJ
         tXZPSXraiaYGjtP5mNemZGAp0aZkiBKqD6rF3sQGibkb6eT+HpFWocQ/s6xE5Ti+tKbX
         qPBc+S8AhLAFFXC8t+eYv0GMrpMhEoj3tQeNNU6X4KmSYn514U4CfpCURjOdOIWZ1OvG
         oLphvmkKzaPvsR4ulyF4eg2HMciy7C10jGdk5Iyngc4Vbz0SRI1SCf7wUgveBets9NVT
         UtqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iK8g1/g+1EZ+eD0/Flj3lV8D+3I68yK8OxJS/UQ86/g=;
        b=OUHZmgZJ+9ETccQtZDqmMFlXqfmBXDkO01DE1RrKgti+ad/+HB66JYn9aL9gZ0Q1N0
         g3ncX13fpWNxFqhir6cYnxmTKGd31/Z+M2fi4Y00UbbGVdH9pKBz/dKg2r9SmQalyUjh
         Oz3VMnA5W3hraYNxdrjm3pds4Er9p4iC7tYxCkZoWPYBA5g4OVz8FakhOAMpf8IxUg6I
         lcs8WkA5qj55rtXok3frSvrfyLD9WL06CALxB47XYFFSf3Bcy/b9sINDVJwZ7/zJHagE
         m1KZMkYUziKFA+bfApCglcZXiJP8QPYn9qNmDtx/FM14bnsE1umAoVVTkbtEZrYmmdnv
         vevg==
X-Gm-Message-State: AOAM531FHnioPoWVCN9fwktHOCpDnaDW612kCJuyak+b6dKkT45N9pMG
	mKiGEHOSlnW5lvq7d2oEgPE=
X-Google-Smtp-Source: ABdhPJzQP/CeZvuVeJ2jF4pVyhBRKSkp1+cPRc7K3+7RuYxjGJuZVYuuqjfPMKKuE38/JEMbDFJ7zA==
X-Received: by 2002:a54:4515:: with SMTP id l21mr24155855oil.15.1638800366179;
        Mon, 06 Dec 2021 06:19:26 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:58c9:: with SMTP id f192ls1151142oob.6.gmail; Mon, 06
 Dec 2021 06:19:25 -0800 (PST)
X-Received: by 2002:a4a:7d52:: with SMTP id q18mr22297573ooe.52.1638800365691;
        Mon, 06 Dec 2021 06:19:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638800365; cv=pass;
        d=google.com; s=arc-20160816;
        b=YsByp/LDrUHOd1HJkQ8YLf9r79+F6cjrG98+PcID4Pq2ALuxrVwYeBlua5pWbnDjlN
         7MlE+y+TJ7m/7Sxo219V4l1ZFbhyAQalJ5rTBy93jXDA9KuCGAaltWyN7+wG59t+g3fb
         GyHEMq+wgqT4aNHrAer3Qo7x6bWlYhGkTqWPliejaRkzJUGN0iebgRpYjsXrp1/N9roN
         RmHILWqgkWiQoeNKvuEsgxq9kGzXvfsfKj/MEuBTQDd7FvabEL7qEGODKooRVOVHaFuB
         YJr/m3i5EMa4tdCRVwRo6dEof8g+6jbhw0/pZNhipUKYRjztSsX5daJx6SHTScDgTOs1
         Hkmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=s33L9I9tWRsuPN1BuFQQ4V50sW1tbQOR8xkMP9Iv0d8=;
        b=MYZ6as/DopwlqEVuvM+KR1TV6S1p1wBz/eveNiBAIgoWzs/uYgQW/ow/LcjNUT9dhA
         vqF78TItoMMIPqQu23P6tBuaIXF3hB8N1gj/LW3x2y+4XMXcv0+pOOzBY/jaa/IjUgbH
         uay9kg7TyWplU0lREcqeiCqvX2dq2m1v7+jT+nfgU6GsAUZ5KRnBTbDxEKm5BH2FRKBG
         /1ezjQBTuS2DmMmmqslqTVaLfzlzHe/PwmQU1twyRr1KaA55WCgFU6KBvyn3krNilvW9
         JMpeaq3yW+57VP6RoX2uTyGCkD5svu0u0bl+Ng8wfwqhVQB6UoS7xTwdKwnQMKKlr1JE
         +j6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=ksINXdoG;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.220.61 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2061.outbound.protection.outlook.com. [40.107.220.61])
        by gmr-mx.google.com with ESMTPS id be25si1348191oib.3.2021.12.06.06.19.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Dec 2021 06:19:25 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.220.61 as permitted sender) client-ip=40.107.220.61;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gnmuz2Uc6a0R4rEzUReyBjN4V3CaA8lb47vKd1CV20CVLVyXaOcSTAp0y8a3Au+g1s0qNGud7u8CcgM4vgObsGJbKv5u8i1WYtiquNe4R05jz+hGLDRrUksSG3UBDcu/OOJeAq+Y28b4DgDes/uJ9SR14sRBdyPnBJj/K7Bb3NnyMoTG5nXcAC6N3gvpnt2BUu8mon5aMm/dg5FkCAzvNuEt8LZGjKG/CMGuG5kBAR+NU2kRkWtRq4cNLC/nEIklgoerZgr9laCxzXh2a+mB/xoDsEbJRv8jO2mME56O+mnYkw1GUgi76ceWF7avKJbyw0e8ZeXL3eqA51AqLw2MBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s33L9I9tWRsuPN1BuFQQ4V50sW1tbQOR8xkMP9Iv0d8=;
 b=Sji+6fYENl2qeuxKa+cfyFHOlj2fG727PsM7XLXy1vLcs4fwYf2QoEABu6SmOck29isOog0vtmx1vcKo+v5y5qwoISdGbFg9Gf+L3Dx4aJd83lB2HibQEHrJQTvEjCSE0tx7ULcxpylCRcyulJ8nt+JBcSbn/mRHoYHUvVmyebYgntZ/rVERBclK7diDK87eE8rtAOwQkUiAG4ieafV3mN5zxuFcbIqOde+3tuFc9FV63ZDfr9D3NAI5njXhIEX9FPl0cpCobRoVhwkwHH/Stuu1L/V2DnrvcPOrNSeX5hMC7p+FPAMZHJw8VjSQrHlR4P8QrQjBXizrNZqudRJv3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5077.namprd12.prod.outlook.com (2603:10b6:208:310::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.24; Mon, 6 Dec
 2021 14:19:23 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%5]) with mapi id 15.20.4755.021; Mon, 6 Dec 2021
 14:19:23 +0000
Date: Mon, 6 Dec 2021 10:19:22 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: Logan Gunthorpe <logang@deltatee.com>,
	LKML <linux-kernel@vger.kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
	Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>, x86@kernel.org,
	Joerg Roedel <jroedel@suse.de>, iommu@lists.linux-foundation.org
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <20211206141922.GZ4670@nvidia.com>
References: <87mtlk84ae.ffs@tglx>
 <87r1av7u3d.ffs@tglx>
 <20211202135502.GP4670@nvidia.com>
 <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com>
 <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com>
 <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com>
 <87v9044fkb.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87v9044fkb.ffs@tglx>
X-ClientProxiedBy: BL1PR13CA0099.namprd13.prod.outlook.com
 (2603:10b6:208:2b9::14) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by BL1PR13CA0099.namprd13.prod.outlook.com (2603:10b6:208:2b9::14) with Microsoft SMTP Server (version=TLS1_2, cipher=) via Frontend Transport; Mon, 6 Dec 2021 14:19:23 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1muEpu-008wJd-Cr; Mon, 06 Dec 2021 10:19:22 -0400
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e7bf6166-9883-44df-e64c-08d9b8c366de
X-MS-TrafficTypeDiagnostic: BL1PR12MB5077:EE_
X-Microsoft-Antispam-PRVS: <BL1PR12MB50773C662AA0E526C1D576ABC26D9@BL1PR12MB5077.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ziXlJLH5sUn3pszwfZcvSt8eyCqqH/MKuu8PuHpZLiJ7BCB2SClIZe3b6D7IxrYXeZn7HNL5g25HLtfCJRXdr+F2sZvegUL7pq5MZPZ3GZ/W26nFJg3oiDG9MRsHWxXtUkF20x6oIfRvkKKOUKe5Hu+DpSpztpqVCPTNqBi+QVV9bYqBODVMopUuUib0oHWzsPEykGZoTC0X0BrORsBBl5C3q5mAz9iXNCa9GRXeJWbcfZwcY0O/JuLXxdLQ3yLB+ZS+tWfi5eB+unvfUjvvd97J/SARbSFFpCM50aU90Ee9pzGDgNI6IlG4pmqZOiN5IzFD7ZnmbGL/9ryojsiK3YWGyDIncX9ugDeThgEV0XIv9lLXKut6ODPlXvg5KYactdT+tDV1K8ccnVXPdXmxmNsdKcZihNOXnOBHKrGHkXrk+cw9LOTj4nQ2tkkpyIn+ZFd8LwUT7koYVqXvlHJq5st+hhcxfsROHHMiuqvd9hovoNSuLm0LRCGt/apB1N/Uw8MTb2EhtXIqmg2xkWDdickC015YCWwuJovQnxcVZfDOr3XdzTd+yuTgR4lx0ffh42FCKnvUWhHavHxNBn2XGWCoyD6j7rfU7/GFc+fHTAAPT+jotTktUZ5TDAljKlQPmjEEprAZczOdNJZFfQiQbw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(2906002)(33656002)(83380400001)(66476007)(66556008)(36756003)(66946007)(508600001)(7416002)(4326008)(5660300002)(6916009)(54906003)(86362001)(2616005)(426003)(38100700002)(9786002)(8936002)(316002)(8676002)(26005)(186003)(1076003)(9746002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bsPPD0sQ47SWb5kJqKM4cjW7v+CMfuZ0RV1qzYUFEABibKzrI/nA1J08R4p2?=
 =?us-ascii?Q?1g5tK5i9OCldw2ApSbjF62qYwsYEaA2r1DLHRTMLMLEJRlwGWVy+aXhe8nTA?=
 =?us-ascii?Q?RYwNusbVDUzRNigfbSnamucQRCsIdP4K7Vbq5k2meIWXlH9B973gwvmBR9HQ?=
 =?us-ascii?Q?24VtfTPHEay1wvd7rvKwhEFFEz0KfAGKVUFIzc/8WvHY/bSeJjbtIcXENs0o?=
 =?us-ascii?Q?XUQiPWmqRVigFs15G95PVkvonTnjmSFevaZasVAr73gZ04Gwb935IJm8Ixtf?=
 =?us-ascii?Q?OC/JZ9Xz30JlzvMHmJMdsQyg+81xXqjW3G90z9vF0h0h7AMbFNEpNd26uBXn?=
 =?us-ascii?Q?J+uIloVivbn++BUZk2WfftwA+KzPPIkoR/ZEnTjkaWgTm1IQwf/m3oXeyy+K?=
 =?us-ascii?Q?qx9+KPR+7S6VNLb7r3HDYIqw4hBoiMdaAwXF+29SnBAnT/yxVRHz5ABCOMJl?=
 =?us-ascii?Q?EG63rD+Wm+XK6cB+HwVxyWFULvUX0VmgAFrI9iSk6stTn5Tk/qMzrs/8f6LZ?=
 =?us-ascii?Q?x6tR7gwMNYHm/hzuFgLqdMxE/S5vaEhUbkn1As3lsKopRjTKMI4XlSuM01XK?=
 =?us-ascii?Q?I1ENuE1PS2f90eoYTyZZ5tE+6e4Ts8ssgRzgj7eR7vpNcz05IxnYX34c3hi/?=
 =?us-ascii?Q?KCmev0uyiPJ2pMrAMNDoFFlqyPtpEKjQl5Wt4vUpRpHubE7Hdihn+YFLFJK0?=
 =?us-ascii?Q?jgcv0GuQJXcWX+XelPVJqd0z9JBwcNsKEieEIYCOKEPWy2twSGLjkVkYp3SI?=
 =?us-ascii?Q?0zA+7SDpakDNBof7FttLjHuufynA8JBILhHguw4/ES36Qu0cdVaXpXt2FAvX?=
 =?us-ascii?Q?uRMF1Aq+X/M9Xq4S/APr0lO2HfYCRmV04PNDhkXjI3JA50hAvVQuAtb3zVMm?=
 =?us-ascii?Q?SpGlu7dWRPGZFSfZlePZXxfFFI8XsnewQUqge0Su9eopl7EC09ixTLPljoYp?=
 =?us-ascii?Q?71426u/aEIpS8ZpQk68NDOaz9dJNTxhVvaifQPNqy+llgQ64TxffARN6cGIL?=
 =?us-ascii?Q?3ZrG/vQuOWP8LHf4db41h6kn6ww9K5pQIewahGLyOIn5cAmMp9QWFnJzC6Mk?=
 =?us-ascii?Q?/S6ZSIE1IywH30TjFb3QxF0j/6TkwPcLhA3RSsfM/OTgmNQShJuSJSIAhDN5?=
 =?us-ascii?Q?MLd9yPeTUcq8r1DPUchroi24m1l0bWVIIbKIaWGiH7M62jmkp4iGA7vClkv7?=
 =?us-ascii?Q?WlAA+GM+0W9UWocPGujOAMeYytckKDyB1sWqcT1bJ3qna2A9szOSMYlpAXCt?=
 =?us-ascii?Q?QuYI4xxyOK+3pYmZmzSBQZ//xalZoIZQi9sB/Fgxmk8X0hq9QZgZaOwR7zk2?=
 =?us-ascii?Q?sWJmJ5zISvIt1iOW6Dg9L+LwwHW1kDJ4EkApvPJJBksQWbiEsraknNtKbZ3Z?=
 =?us-ascii?Q?li9c2YVxw2Sh1K7DmKhAdDcECEoGMBi0uh0LG31fLMymfJ1pPxJyft0F6K6c?=
 =?us-ascii?Q?ErHhTm+ct5xklVrRJhpP3yFqeOy6BzYLoOXMD05dbaakKCsWMIF/w3ad10td?=
 =?us-ascii?Q?SmMhybGYKEn8jIhoWQEV4tFO2PVGz/kVirauoVwQT96QQnmH4uqIH/quPN8P?=
 =?us-ascii?Q?7GlPI27xFKVFvUpZ8aI=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7bf6166-9883-44df-e64c-08d9b8c366de
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2021 14:19:23.6621
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wS+lLoTetQsZ/T4eURkiJe1eM+TQQMSm8ySYHl86m4vRqgtZTVj3XzFFHMskOR5R
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5077
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=ksINXdoG;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.220.61 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Sat, Dec 04, 2021 at 03:20:36PM +0100, Thomas Gleixner wrote:
> Jason,
> 
> On Fri, Dec 03 2021 at 12:41, Jason Gunthorpe wrote:
> > On Fri, Dec 03, 2021 at 04:07:58PM +0100, Thomas Gleixner wrote:
> > Lets do a thought experiment, lets say we forget about the current PCI
> > MSI API.

I've read both your emails, and I'll make a few small remarks on this
one, mainly to try to clearly communicate what I was thinking

Just want to call out the above paragraph, not suggesting we do it,
but the thought exercise of what should we do if not weighed down by
endless engineering cruft is usually informative.

> > What if it worked more like this:
> >
> > probe()
> >  // Access the real PCI SIG MSI/MSI-X table
> >  mystruct->msi_table = pci_allocate_msi_table(pci_dev);
> >
> >  // Special interrupt 0
> >  mstruct->desc0 = msi_table_alloc_vector(mystruct->msi_table, hw_label=0);
> >  request_irq(mystruct->desc0, ..)
> 
> A device driver should not even know about msi_desc. Period.

Here, this wasn't really about the msi_desc, it was just about some
pointer-based handle. Call it what you will, and force it to be opaque
to the drivers.

eg this 'msi table' layer can just have a 

struct msi_handle;

In headers

and in a C it can be:

struct msi_handle {
   struct msi_desc desc;
};

And achieve what you've asked for

> >  - msi_table is a general API for accessing MSIs. Each bus type
> >    would provide some kind of logical creation function for their
> >    bus standardized MSI table type. eg MSI/MSI-X/etc
> 
> You can't give up on that table thing, right? We just established that
> for devices like yours IMS is not necessary a table and does not even
> need the index. The fact that MSI-X uses a table does not make
> everything a nail^Wtable. :)

It is just a name for the idea of a handle to a device's MSI
mechanism.

Call it 'msi_hw' or something.

My concept is that each device, integral to the device, has some ways
to operate the device's MSI storage (MSI/MSI-X/IMS/Platform), so lets
give that a name and give it a struct and an API. It is all still core
code.

Think of it as a clean separation between 'determining the addr/data
pair' and 'writing the addr/data pair to HW'.

Today you are thinking about this object as an irqdomain, irqchip, and
msi xarray - I think?

> >    It is a logical handle for the physical resource the holds the MSI
> >    addr/data paris.
> >
> >  - Use a pointer instead of idx as the API for referring to a MSI
> >    irq. Most drivers probably only use msi_desc->irq?
> 
> No. pci_irq_vector() translates the hw index to linux irq number.  The
> hardware index is known by the driver when it is doing a batched
> allocation, right?

Yes

> I'm fine with using the info struct I described above as the reference
> cookie.

IMHO an opaque pointer to refer to the MSI is cleaner
 
> >  - We do not have device->msi, it is held in the driver instead.
> 
> No. First of all drivers have no business with that, really.

I'm reading your second email and still not entirely clear what your
thinking is for devices->msi?

> >    dev->irqdomain is always the bus/platform originated irqdomain of
> >    the physical device.
> 
> This is a guarantee for subtle bugs and I'm not even remotely interested
> going there. See also below.

Not sure I follow this? My suggestion is that it is either as-is today
or NULL and we don't try to use eg mdev->irqdomain for anything.

> >    Thus we break the 1:1 of the device and irqdomain. A device can
> >    spawn many msi_tables, but only one would be on the dev->irqdomain
> 
> Why are you trying brute force to push things into device drivers?
> That's really the wrong direction. We want common infrastructure to be
> managed by generic code. And all of this is about common infrastructure.

The driver needs some kind of handle to tell the core code what MSI
'namespace' it is talking about in every API - eg MSI or IMS.

Pointers are the usual way to make such a handle.

Going along the IMS == MSI principle that says there should be a
driver facing API with a pointer handle for the MSI and a pointer
handle for the IMS.

Yes, this means the existing API is some compat wrapper around a
pointer API and would have to store the pointer handle in the device,
but the idea would be to make that pci->dev ONLY for the compat API,
not used in the IRQ infrastructure.

> > Is it sane? What really needs device->msi anyhow?
> 
> device->msi is a container for interrupt management and that's done by
> the interrupt code and not by random device drivers. Again, struct
> msi_desc is a software construct which the interrupt core code and the
> irqdomains and irq chip implementation use for various purposes. Nothing
> outside of this realm has to even know about the fact that this data
> structure exists in the first place. See below.

I imagined that msi_desc remains as part of the interrupt core code
and the 'msi_table' object is another interrupt core code object for
dealing with device's MSI

> > IMS is a logical progression of this concept:
> >
> > probe()
> >    mystruct->msi_table = pci_allocate_msi_table(pci_dev);
> >    mystruct->ims_irqdomain = <....>
> >    mystruct->ims_table = msi_allocate_table(pci_dev->dev,  mystruct->ims_irqdomain ..)
> >
> >    // Use MSI
> >    mystruct->desc0 = msi_table_alloc_vector(mystruct->msi_table, hw_label=0);
> >    // Use IMS
> >    mystruct->desc1 = msi_table_alloc_vector(mystruct->ims_table, hw_label=0);
> >
> > Not saying we can/should go out and just do something so radical, but
> > as a thought experiment, can it guide toward a direction like this?
> 
> What I agree on is that the interface should be in a way that the driver
> can:
> 
>  1) Allocate vectors at a given hardware index
> 
>  2) Allocate vectors within a given hardware index range
> 
>  3) The core returns the hardware index and the Linux irq number in
>     a separate info structure which is independent of the interrupt
>     stack internal data representations.

Still slightly like an opaque pointer better than a two entry struct -
but compat is compat..

> Sure the driver can get a cookie of some sort to do allocation/free from
> different resource pools, e.g. PCI-MSI[X] and IMS. But the internal data
> representation management has to be done at the core level.

And here I still see it in the core level - this 'msi table' is a core
level data-structure and the opaque 'msi handle' is a core level
data-structure
 
We are just exposing a handle that the drive can use to. You are
calling it a cooking, but IMHO using a cookie instead of a pointer
seems obfuscating a bit?

> even try to make the irqchip/domain code mangled into the other device
> code. It should create the irqdomain with the associated chip and that
> creation process returns a cookie which is passed to the actual device
> specific code. Allocation then can use that cookie and not the irqdomain
> pointer itself.

Sounds like your cookie == my msi_table? Maybe we are all agreeing at
this point then?

> So thanks for being patient in educating me here.

I'm happy you got something out of all these words!
 
> The fact that we will be able to support this at all is based on years
> of cleanups, consolidation and restructuring of the infrastructure. The
> result of doing this is that my trust in driver developers in that
> regard is very close to zero. The cleanup patches I had to do for this
> series just to solve the single irqdomain case did not help to elevate
> the trust level either.

Yes, it is amazing how many patches this is at already.

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206141922.GZ4670%40nvidia.com.

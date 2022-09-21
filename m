Return-Path: <linux-ntb+bncBCN77QHK3UIBBF4QVSMQMGQEBXHPJPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id A655C5BFE42
	for <lists+linux-ntb@lfdr.de>; Wed, 21 Sep 2022 14:48:24 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id p36-20020a05651213a400b004779d806c13sf2007322lfa.10
        for <lists+linux-ntb@lfdr.de>; Wed, 21 Sep 2022 05:48:24 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1663764504; cv=pass;
        d=google.com; s=arc-20160816;
        b=QD0DzXYoHQQ+//lSAdLVvVp33pcAjUIr9w2DSwLSzW/KqzTvLZ1Lcjyn4iZYpdh96f
         7RjA+Ki9Qyts1V35VmnLUyO+RKPwOvEut156CdJ82ocz9vEibMVHH3zzJJZ8E0Ks+dye
         wJtCmxxdRLUSeMPMfbEh5MvdccKFfuVkN5IZChNR+5r+GZNyPUkN+daJzj2gDf3M+d/d
         Lu56QA61Qc0Dn+pvMkmr12gS2sDLch5UBModjR1/ilcMfK9tWVNPU2noe2llUSe+7A7/
         shF2DWfEgeBSIItkQnc4JbV7af7ounjbRcSJEIXS8OrYrwj1PZHW9yoBUqWbKPRBr91h
         U5TQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=5P+6YalnWyGfntN4PJDIHaHFL3tgTqgtNMUKVmTaqaU=;
        b=fTsUGcvu7ik68Rmyr1mXn8PPkKcFQa6uQf+yUuZUaQvUnThlgxvPLn+vUKsneJhS6n
         3s4WaPqK/kJhmfzmrA9lSXIALvgjBKyBGLTdjWNfAtC/igMrRQSuCAHoWVPuQL/B/bvp
         XLetO0WQCPnESijLSeRWmomL+SuFGpRqEAB2VkRPFoovdv6x5C1gn+Io9GrYP1ul41Jw
         MMSXAKP2O9f/JHBaYCCCbTKzMqqIvB+DHDqCxNLUCjqAEsJ8+47vPXyU6i0qxcCPvfmS
         j+p28Qm0phFSl/J9NFsBNHuZgOeQ69cUleys6xbyCHh+HBuba5IWSp36yKH7/jKQUm5f
         pMeg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=jTI98G4U;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.220.83 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:content-disposition:references:message-id:subject:cc:to
         :from:date:from:to:cc:subject:date;
        bh=5P+6YalnWyGfntN4PJDIHaHFL3tgTqgtNMUKVmTaqaU=;
        b=sQsY0+6AecnRag6VuDA5594sPXpkB9huWsm4QIJK/SgYBFgMMdydj/anhJrlOYikm1
         HawlSeyfhMqsgTN/WF91aSGZ/pKImnuiK3mjp9fB0jTszrbm13efbDV4jpAErlNsLwCo
         h9P4sjfEBDFJRv9EbdilbAmGK0vYp/dZXWe+sd5AIddIzVd1QfxMvHSmitkUWMfw5ILk
         cg2UbzB99dfNoOIt9D5M0XMulPYdTcVlOg9P3GxL5osn/TWpbdtMkJhQo0vH0cx4jEUr
         TOmKgnDmnhrzgyBmZGnYb4WOUdiMVjGSYZoRDtNExiYB+Om4NKfQRpTUer8vh0EEf2d+
         WDoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :in-reply-to:content-disposition:references:message-id:subject:cc:to
         :from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=5P+6YalnWyGfntN4PJDIHaHFL3tgTqgtNMUKVmTaqaU=;
        b=odshi/CsNC50iw39C8R4k9CyZU+PdJOw7qpV0oLHCQnR/lKBWSo81CsSGKUEoBF5m6
         eVZmWngOUtPGdrGMQOncmXLE8gQt8JwbhREE8pZnf19986VNJkPzsbvWqa6pIGizbHCg
         mqZZn+uC10kbhig8f4eYZc0+CZBg7xMx85j7nTP8abdd9yQ2LQN1watqo7XN1IcFmljM
         mV9pMIHbWNrKk/vufRJZc24xI0wVSIJWFDYrriar9JRG4RxTA4zq3ZTeP/q7G2mcCXES
         uTZogmZ3GKVSsBbQ8yVSSgsTVekOoz4+jZprUVLmMtl4uG+bXRKpMdU8dD8sffIs6p+6
         mTIw==
X-Gm-Message-State: ACrzQf20uqwXt2cbyZ6O4Wt1mE9wgXm9BYYOhfPilMFQvOjoYIPMGfCN
	pNUhFoi3TS4idg16hgbhm+Q=
X-Google-Smtp-Source: AMsMyM7voKL/5iCj+6YJZ1liUFjaGicdTK5I67WuXW+NmnpQuGXYPebyoBn1sc5VV2owKsLAlW/AQg==
X-Received: by 2002:a2e:90d6:0:b0:26b:8a74:6aa0 with SMTP id o22-20020a2e90d6000000b0026b8a746aa0mr9364695ljg.350.1663764503815;
        Wed, 21 Sep 2022 05:48:23 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:8297:0:b0:26b:ff81:b7cb with SMTP id y23-20020a2e8297000000b0026bff81b7cbls1040956ljg.6.-pod-prod-gmail;
 Wed, 21 Sep 2022 05:48:22 -0700 (PDT)
X-Received: by 2002:a2e:954b:0:b0:261:d3d5:ee5a with SMTP id t11-20020a2e954b000000b00261d3d5ee5amr8728780ljh.287.1663764502459;
        Wed, 21 Sep 2022 05:48:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663764502; cv=pass;
        d=google.com; s=arc-20160816;
        b=Qpm/dl1yojpFPN8azUcaDwdV9zcrwz8FQu1fQWabGkabkBgjSglFvFBrAQ36GzukxY
         rNzd5hOtVadRB09riNsqHrcz2ctskSU2KS1/Zt7Y/BuegW5UOccy/FrDrp5qKQMA02KX
         SUVoi1eXXTacn+wh31NUJOQeiP1vjQ89eCGyfcIdQ7owifJvNQMByzBoChUhq22biAMS
         BgpYA4UBVBUmEccNfKuVneUE7hR67KSWE4UjOA+xPFkwj8GaBJLcJmcWOw/uLtGLaIlm
         9Ta0sQ0KcKfu4JBDJICEh01yGcdT+UOzVISZTc7kTfYca1DjLb/DE9JbxZodAY1xxnmy
         SJ/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IqOL5Bq6nlefC78y3XxrrlJG/k+d7vdZpm8o3yTkMDA=;
        b=T18orQa2aEjwtlPQcXf8lVBWGY64vzVCPTuUnPxpczD13LzmICDdy2dCkknWg9aRCb
         gZiBRX21PZVvfQKUybzGFFmEMaFk16fJgUacD1w1NMFqD4VZm/983AheUyL9fb1+V7QV
         9DgGbxNfxLT3m+NHofBmKQ85J5sij9rr+dr6ofU1bBzi+ovEZxktxg8TQUOZ2xk+De2S
         MFZjgot+sunF0jCIjshI4ttwB8FyMJR1+01whRY5xy6a76J1Pd/7R8ESNYxeiaEmgCm2
         hb/b+9PNXIFwaGH09Ujjp9XxKEH/L0eY7eq8gFhJxclOvmzuoK06np7zTejjLQuxHx8S
         M/Og==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=jTI98G4U;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.220.83 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11on2083.outbound.protection.outlook.com. [40.107.220.83])
        by gmr-mx.google.com with ESMTPS id p4-20020a2eb984000000b0026bf7cf2a41si128577ljp.2.2022.09.21.05.48.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2022 05:48:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.220.83 as permitted sender) client-ip=40.107.220.83;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TSkhM6kyeJaGOcgeE+AXlzOI/UucAU0KtGTcQWviNFH0EZ6De7guhU2CqcnaRq0nqkbMqqxufLsTI8dmBdJOgTiwjrJmXv1ErvbFIeP/N7upiM8mquWKE5cDoRkvHrCFjN5GbNa5l1BI10W56S35iZF5WwVRq5azaxfgEy9WWpTQAz8GZXp9haKiTNAmVqe4TqqH1H4GLwPewkukLZsR9Nj4VWemcl1+laPT54y5BUa9KOQd6iBpEh9GKtReeWYpzkJxiPcAXiOzgW8bGRC+fIrqpsfCRjXoitbAl6Tf16RMKfCL7GqhdofyIepG5qF0PbyyN5wf4Nm/gTFNtqp7nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IqOL5Bq6nlefC78y3XxrrlJG/k+d7vdZpm8o3yTkMDA=;
 b=iZTqy29zShaDnIdkX7q5dLNL2RHdXKxphwUesFF2zyYdhuyS8pR55ueE8oxMHdT9l5jlOaR163R3PwA06tZfathEaAWAEUG8JCj2CRtG9ZlH5g6TwOlOkenGqeudMh8GlW1ZRm3n99O2NoW1z3HiJTkt4+uEflzGb1Isc2lIDB7TwznQjaymofgYdtSI1xbGmLMoHNvDbjo/D0BcUav2AbFyORII+CRxNARec7DD/K003gC8nwQlNArsmizXx331QsKJRFcU68eIoitucW/PwoVUoDrQsyuiFJXRJTElld8d+KGgq6vq/mi/7H4hRNBwle3zwufGuU5RcZV2ZDD4Aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from MN2PR12MB4192.namprd12.prod.outlook.com (2603:10b6:208:1d5::15)
 by PH7PR12MB5951.namprd12.prod.outlook.com (2603:10b6:510:1da::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.21; Wed, 21 Sep
 2022 12:48:19 +0000
Received: from MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5]) by MN2PR12MB4192.namprd12.prod.outlook.com
 ([fe80::462:7fe:f04f:d0d5%7]) with mapi id 15.20.5654.016; Wed, 21 Sep 2022
 12:48:18 +0000
Date: Wed, 21 Sep 2022 09:48:17 -0300
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	"Chatre, Reinette" <reinette.chatre@intel.com>,
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
	"x86@kernel.org" <x86@kernel.org>, "Rodel, Jorg" <jroedel@suse.de>,
	"iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <YysIEUbxjS328TAX@nvidia.com>
References: <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com>
 <87fsr0xp31.ffs@tglx>
 <BN9PR11MB527625E8A9BB854F3C0D19AE8C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <875yrvwavf.ffs@tglx>
 <BL1PR11MB5271326D39DAB692F07587768C739@BL1PR11MB5271.namprd11.prod.outlook.com>
 <87fsqxv8zf.ffs@tglx>
 <BN9PR11MB5276961D838169BF237928E18C499@BN9PR11MB5276.namprd11.prod.outlook.com>
 <YynJqID/E5dFCakg@nvidia.com>
 <BN9PR11MB5276CAB439EE27557FC17B1A8C4F9@BN9PR11MB5276.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <BN9PR11MB5276CAB439EE27557FC17B1A8C4F9@BN9PR11MB5276.namprd11.prod.outlook.com>
X-ClientProxiedBy: MN2PR19CA0064.namprd19.prod.outlook.com
 (2603:10b6:208:19b::41) To MN2PR12MB4192.namprd12.prod.outlook.com
 (2603:10b6:208:1d5::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR12MB4192:EE_|PH7PR12MB5951:EE_
X-MS-Office365-Filtering-Correlation-Id: a40e8b16-104c-4811-1cc0-08da9bcf8edd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XG9D2k63KXFSiWbpf9Zkz6bQ2gzTYu7SC9nQHkn13xYw9Mnh7A2xz4SPj5cassulGSVpMYeAWqAYhM8Co3fnEsU0CCiC5Ne9LHHEMu6MVkCF0DWeW2VKRcMV1WnjxVyK3ow8uXk+UYmL9Abf11E1YZzhpfPH3qkAFTs29SB8NprD/jnnn1tpXk9q46+/Onr+ecfzxA3QX8cJIf+uk7m/sg/9k2Purm3MMDX3lVC8jAMSqAXM2Vc9n10MvsCH7CQJE1jACQeTwfEuxZ/MO3Oyo6V8b+mch+1Gqnqe0x/FYDP6A7SrxmkN91wTfqZxYIGwYmHU2HpjbLICZJEe9dcbTvNunlo4Wynz1uob/z4megVnqtwsJ53UkSAKTYlJm7JWwFjBmPmkt6lW1xc09EI4P+vdGpaJcflsxU0N0prO+LrJbixjrprEwUnP4lZxJwWEENmt0bvvwuRdZUkCE3pDoq58K6e1vTDGlTeRCNoEeRReWDxD7RFOTy+xAQsOajN/+nuLBnVWWfwgPjPgdVZpTFanLAIRSLno1abVmmLEhG30a2qXPjYR1yzSKxkr39sZmRt6CPLcEbLE36v0URts1vIdgSZVfVJdP1fijJZPftI7nT8T/q0KviaK6slIr/cq1bgoE9o41YPkSkjFN4hP9ct6fCdB/olf7w2/4fPL+IdxTBajlTV2qAyFu0GhQdwcQOJboXbxQlsDzPUD67MYVg==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:MN2PR12MB4192.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(39860400002)(136003)(366004)(346002)(396003)(451199015)(6506007)(2616005)(6512007)(26005)(2906002)(186003)(86362001)(54906003)(6486002)(6916009)(316002)(8676002)(41300700001)(66946007)(66556008)(66476007)(478600001)(36756003)(7416002)(4326008)(66899012)(5660300002)(8936002)(83380400001)(38100700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t9GLFHUrIGPBDvKB2YIv/h93SExmgshaW5t8ejeBix+8IiR7DmDKQPevjVoF?=
 =?us-ascii?Q?Jyxe9eFioDpjQgvnxPCA42HCMp0Yejp1hdbIuZaYJ0e3XIzenl38DsSXrtsL?=
 =?us-ascii?Q?03oRRhPXfqZcC61Sn4oQn0YDRQV5C8W48AeKB23MCYccGrQ3MisGq2BJPX9x?=
 =?us-ascii?Q?+LXi3b2xU1wvGw48f+AJToYEd+j+eeDnTt9k+dw9+nyhhsLc1t6AqshNo4oT?=
 =?us-ascii?Q?0aqcvxKrV/z0AP2aCxn3ROssrX0DcA7VAb4FwewY8DhBUbUvospRCFWif2JG?=
 =?us-ascii?Q?L0sQhaQTAHFiQhj3XWp5LyOLtGo5QO5B4UijDFTF/an6MAnDwBXc7wdlJ2NZ?=
 =?us-ascii?Q?KzU9md2ecJkTDushnYdZ+zzb3oPFjp5WjoW3Up+IbLggNMZ3H2QCXpk6XK4r?=
 =?us-ascii?Q?9qoiPDH9N+5WU6o37INqiLgDauH6vqTHbM3t89sNnN/uvgF8zWZwDNaiidH5?=
 =?us-ascii?Q?7vgmMQxDCyB/MibLKdr7CqRdcNffSxhwVXncqQfKcmWnukkPuCCnMIgHR0Vo?=
 =?us-ascii?Q?Aw7KaWpM352dfdZMhLSk68kI17v5ZHsHgG2T/OxkJ0IZYqvhJ8OYr1R2m1Q+?=
 =?us-ascii?Q?efOuyCRc/inutlcpFI4g0w94hdvHj7U2KPaZ4YRH4n1r3d1lcmczoNmn8znR?=
 =?us-ascii?Q?S4Xb75MiEBB2EODCbCXpIz4bUuWlH195DslYaDsbrbATcetVnW6pyLU2+msg?=
 =?us-ascii?Q?63Dyl/8EuUvNInptBBQGpvBh3lSOU3/1b1xnWH6R6Qe2AI3xGMPretqaLzKR?=
 =?us-ascii?Q?ZnwJGdgpjVZwin7u5DgXtA5qBv1mF/sAj+18duvoHlK3GZeuiDm4QcdHtduE?=
 =?us-ascii?Q?dmv2FjF6E4Uh50w0mRsKLyRAm2WwMkxdcRt9HGsPYRF/Wul2iIPpS56i9Q19?=
 =?us-ascii?Q?PGhvHPoVjhlfjhQk/q5KT/HvuAo36LfQD0uyaAey9ZKsoZTAPXjTgYzDknEk?=
 =?us-ascii?Q?Sh4V8/sSzrY5zq/T6e/hOB2AgLSE0zoj05QL8fhRJ+CCmw9BiIOTP4wNw7PZ?=
 =?us-ascii?Q?I/B/wsvcAzJgFtjRL6vbL2lrb6Pva/5i8PLLgC39jfrTF/2BQc8DM72hTc57?=
 =?us-ascii?Q?ZV8ukZnzzGvAjjj6edKWsOAvZoVib4QZBBbGX0d7hf4Cau36zjSjuceZtx8n?=
 =?us-ascii?Q?zOKXsuJw0mrdy3uGeVPaUyyKwqsXkVYhc2v/WnBHrt/PRHS8gLaT7StYcz4q?=
 =?us-ascii?Q?yfT4/8kIqKHix4jIdmWA5mToIQgeY4T/dGujLlHOMDn9vhgFpfumMKq72hY5?=
 =?us-ascii?Q?0sX0BP+/XYoPOsEAxYeVFeY7vak3KfGopttUiMUqHJmEjiy7704wpZFkwi1U?=
 =?us-ascii?Q?IegjOidaUlgGf5j14RRxAczfTrTbAdR7qqfxWbOQB6txspDle0oiyg+1ELC9?=
 =?us-ascii?Q?7RLAp1g16maAsibrLxCMv6/zgkKC/e1Pehyy6PHCzzdL6mB+5vJYFF6Cbwrr?=
 =?us-ascii?Q?P1txJZskEuY1F28GMOEQycQ5OCjDRhC7M9kVhRWtVJQcdVD6Rp6wtJX39Yd2?=
 =?us-ascii?Q?LhqFV80orC4k2ycxbN6TaWMWrK997NjZOnXfdSYhZOzc4anOZPlVE7MFE3z3?=
 =?us-ascii?Q?JC5TDlNefzAks5JWKQHqp9vme+dnFWPHB5BixB5w?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a40e8b16-104c-4811-1cc0-08da9bcf8edd
X-MS-Exchange-CrossTenant-AuthSource: MN2PR12MB4192.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Sep 2022 12:48:18.5924
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CZT09jc7jbRg/Yx+/TlIlwq2WpQBUZR3iyF5rGpOlLdKRXtM7gMgPHagfhYa2KB3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR12MB5951
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=jTI98G4U;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.220.83 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=nvidia.com
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

On Wed, Sep 21, 2022 at 07:57:00AM +0000, Tian, Kevin wrote:
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > Sent: Tuesday, September 20, 2022 10:10 PM
> > 
> > On Thu, Sep 15, 2022 at 09:24:07AM +0000, Tian, Kevin wrote:
> > 
> > > After migration the IRTE index could change hence the addr/data pair
> > > acquired before migration becomes stale and must be fixed.
> > 
> > The migration has to keep this stuff stable somehow, it seems
> > infeasible to fix it after the fact.
> > 
> 
> This is not how live migration typically works, i.e. we don't try to
> freeze the same host resource cross migration. It's pretty fragile
> and the chance of failure is high.

Thinking of the interrupt routing as a host resource is the problem -
it is a device resource and just like PASID the ideal design would
have each RID have its own stable numberspace scoped within it. The
entire RID and all its stable numberspace would be copied over.

This includes any pPASIDs and MSI routing.

> btw isn't it the same reason why we don't want to expose host
> PASID into guest in iommufd discussion?

Not quite, the only reason not to expose the physical pasid is ENQCMD
and other mdev based approaches.

If IMS is being used with a mdev then perhaps the mdev driver can do
the vIMS/pIMS translation much like we want to do for pPASID/vPASID

But if a RID is being used with IMS then the MSI under the RID should
be stable, IMHO.

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/YysIEUbxjS328TAX%40nvidia.com.

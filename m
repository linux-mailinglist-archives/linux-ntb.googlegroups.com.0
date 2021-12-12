Return-Path: <linux-ntb+bncBCN77QHK3UIBBAES3KGQMGQEU6AEVHQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F30471EDD
	for <lists+linux-ntb@lfdr.de>; Mon, 13 Dec 2021 00:42:58 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id 11-20020a056e0220cb00b002ac12986811sf773881ilq.9
        for <lists+linux-ntb@lfdr.de>; Sun, 12 Dec 2021 15:42:58 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1639352577; cv=pass;
        d=google.com; s=arc-20160816;
        b=EPT5GdQgv95zLFGsZDNERSojdmDyWJSJkIi000kFtuPCiVL4pqp7vhGwpbfZGTomAB
         PPneqZcth0yd8eMMskEgFYhr/XRE9sJWV1czSnh//KIl6qo9ClJOWdZq9cV96OU4+sSf
         goWDe9iwgiee3kfH2a58v0SJa5H3W+rABFvgPBtm6HsK+Iv2NVUAeImSj0WgUNF2Pu+F
         5QBOqPNxSN9JX4TkDX060yIKwQESDNMsHrd54PR9NLmA+McYHZsESHqMa5XYvo7OFOHy
         HAmUi+DYbpmyQkFGOwhWNS19EPhrujNSJpOCsJ71S/DmA1Y+WJ/L7Rzbbg+Ftx7qI5OQ
         XotQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=L0anso2+iBL45kxzpSAdBNcgP8VIzxCU/3C7LMrpQPE=;
        b=AuVIzxc1wA+rv96stBCSOio+MHcGqlScdYQuuT9AUEGcrOyYzln1W5cB4YeTM4CwYf
         2YKP4Ub67HdKgte4resH7m1BZEjfWueYsCUEEHJmn9HnaKsgDinkdLWObw3WKCfAk1/e
         lapV3NlP+hnpGYTI2YlYhI5beBetvXd/DU2ZWThLqp+hxD/hkC5wKdi47hjpd9TL8+Fq
         DBhDg559Wll31bm6iaoVIxu8Htfmaq3ekNng01f51yQ+piEcrxBb6tGstFhqgOkkkpI0
         YAtEnx2mt1mdTR+dvSZZ3gIs0AL+saCy4yt9KIHxkhuRMngnefL2SmoorV218OGIAKd8
         OjcA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=lWgkH5Qp;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.236.79 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=L0anso2+iBL45kxzpSAdBNcgP8VIzxCU/3C7LMrpQPE=;
        b=dUufy0P0W8lf0Ao6Tr9eU9iOlwYRH8Q+UGoFyiUvkHzvCLIC3vtpQDe0kOaR5I4u+U
         YTHDxNpAMr4yxdiZ6LDW7hJ7XlHV4umrLMvRrIkZDB84IDphLx445D8QNHxycybA6sKV
         tjA58H88k9qKaDuiOj2AhMUKq685I7GhgFfNBGXPzi0rY3kE3l5RYFeKuSYJxSB61ueB
         +4GYj8HM7XVc6nSPL5ZwtuA+OFtV+PCphLzAQ6drbIKbtyBi15k1dH/OEHn3XoXD6M4G
         OC7B8p56ihHjO7CuTMTJj3Pn2NGeAIYD0OTpIUA3VAqQVqNBWPdVMneJxvCZju/ZNgxs
         ZedQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L0anso2+iBL45kxzpSAdBNcgP8VIzxCU/3C7LMrpQPE=;
        b=vFekv3C5y97LMK/qEGq0KktUkbIDg5RGvfDD8uTyciOiiAE/3TxcoYz7giEkXDb+Qp
         NtOujrub2ASmtqXrNdTwoOgGD4WXnKkQ0MYXiNoQyG2J++reVxU1Ccjn6+6Ed25hotC8
         EgoyH5qe4fUyPozE4BulQzBrp+zFM6h7Pn45uA4oz71Jmlv7eny5eOQdykX+uEGEOhqZ
         GB/2clmvBwSDkdj+g5EV2WYn3Qc5Mhye4ZMOef/RS4PTHEXYh6En1vmNnlNYvJuv6+Ch
         IJRjq16UE9MTvIQcqcCgBi/+/sOmeZDtji/iNmYcJdS6LFXcAQ+XXMCawXxeXUOSJVtj
         UzQQ==
X-Gm-Message-State: AOAM530CN1KYehR96/91clFa8vhRLwH0KSyXxGlvVlWvC7wMTIwfhaco
	4IMHQVlfD2XLX/1AA7q1AUM=
X-Google-Smtp-Source: ABdhPJxPRN/DzHtpKRtTmBnWEf6eOpNxkTHAPJVoyQrDF81WZpFhgrzOa3HYBBgukyBEJUBT7KcUHA==
X-Received: by 2002:a05:6638:24ca:: with SMTP id y10mr29064674jat.109.1639352576752;
        Sun, 12 Dec 2021 15:42:56 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:d8e:: with SMTP id l14ls1493653jaj.3.gmail; Sun, 12
 Dec 2021 15:42:56 -0800 (PST)
X-Received: by 2002:a05:6638:1395:: with SMTP id w21mr29863592jad.125.1639352576391;
        Sun, 12 Dec 2021 15:42:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1639352576; cv=pass;
        d=google.com; s=arc-20160816;
        b=u5e5D3eXW8J6f3p6iojcg0KU2RYk8PKoUwdwsFc4oURoF023dlmlMf8oAg7wbZT3US
         EvOjbt10+T+uHWpxm4PNcbP2lp3QEo68OBU5i2H8eKT9uEnNZmh+lWm1GUqBO1jXxHcr
         IYP85zGjyzkE13XCF+HkrJgbTrVlKK/6bXlHFneARmWiWx5NJxCdJKB61gEe5975YDLt
         DuxbicSJ4+xG0VxlgPwPXq+DQ1gPBS0gDf9Z/9uxAYmqgsFJVz5NvY5AdWCXyzQAoD5w
         3Qlj1KRnvFI75SrGoDUpflcsshE2WTxW9/ewmRQ19AvGKNtzAh/5UAdJeQv+W6v8NEXE
         Nynw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+0Vpovmm6vQTotSgXEnGEIiSXkUxHTSYHym39GNpzC0=;
        b=Xxr3LmTwGQwaBJOiKKQD40A9M6ZtwuGUDJbc5bWOmD727d5yROm3w/PzhculNSxOlf
         GuiroHEqypAs6TSUYpbRcjM+XAI4b7TTVMUABFyKwiXyMmwJqqsFyQ3bluF2FNuGY72K
         AslPg3Qc4QLg2NbvVqim+b0eFXTiCFz1l1psjtymkUbcU16rjVj9u5l9z2ubg3KhC1Iy
         j973ZCz0oYKmwbaBBnytc4uf9/uL4+dysApQPxE3L//WgVAz5ej2SdRCK1ZuqwnLUm4i
         iD0Yg5jTEPNA1QCc0zQ1F/tGoHiZs6e+goe3D3HNasjPuWJtzZk7gnQ9cusT0TivGqm4
         ee1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=lWgkH5Qp;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.236.79 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (mail-bn8nam11on2079.outbound.protection.outlook.com. [40.107.236.79])
        by gmr-mx.google.com with ESMTPS id a15si995233ilv.2.2021.12.12.15.42.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Dec 2021 15:42:56 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.236.79 as permitted sender) client-ip=40.107.236.79;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kC3WFb3vfdZqwJyuPWsQLPwwW+cYXRfw4TQ7LlLwqCvkWOdqcKli+B1IlWCEoakrTmBA9dUl+LosyoOJk1q9kpuSiEMo4F4M3mtsz9YLWENGbOraMjuEZdKTey9+TAWgYJUUYzwUB+ESAsQwEkkqPDqkg+6riPfE3jFj2/1SluDEmSKLQe3JWFq+M4oDC1ml8YWkK/K0DfbPY2raugMQZAdE9Rg2IdDBaX4cmGGsW/lLwtf0mYI9XR+Wtmo3IUctMgNDWtikioGPvuqhYZpqxOLx2FT1LnpsmQlX6d41Q24lQmwoOTZyH/etseQjgV4N/8dQIOa4lP/pusykP2g3/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+0Vpovmm6vQTotSgXEnGEIiSXkUxHTSYHym39GNpzC0=;
 b=LcoIwF1vkZIRamOMXr69XHzO7kwIjYl1CfZpmsWFTT7EqZF2oE8Eti5Xu0QeNR7xJefFMFFX2/97BwwvK/B4OJzHYx7SqgEhooLJb9c0gLWaE58uAPNdtqete72FFQqtsQGf837qvF9CkabUiHEr1u7jNTBZA3Cuykudj2ouWUawyE7i4vSKuw6waEsvVj6Wt+a+2EuzQhYlG+VB7oLqe+CkcVYBmDQ8O4z1IBelUdiI2hAmQa6FxitncQ2catbtKkgSHPKA3XkvOG5hwAXWsNJQZh09frpnfAx3Bg09P3QPILH0wo2KZXYW4inSem+nEMfwH4LLvLNtHCA3FlPfqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5189.namprd12.prod.outlook.com (2603:10b6:208:308::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.11; Sun, 12 Dec
 2021 23:42:53 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%7]) with mapi id 15.20.4778.017; Sun, 12 Dec 2021
 23:42:53 +0000
Date: Sun, 12 Dec 2021 19:42:06 -0400
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
Message-ID: <20211212234206.GO6385@nvidia.com>
References: <87sfv2yy19.ffs@tglx>
 <20211209162129.GS6385@nvidia.com>
 <878rwtzfh1.ffs@tglx>
 <20211209205835.GZ6385@nvidia.com>
 <8735n1zaz3.ffs@tglx>
 <87sfv1xq3b.ffs@tglx>
 <BN9PR11MB527619B099061B3814EB40408C719@BN9PR11MB5276.namprd11.prod.outlook.com>
 <20211210123938.GF6385@nvidia.com>
 <BN9PR11MB5276B2584F928B4BFD4573428C729@BN9PR11MB5276.namprd11.prod.outlook.com>
 <87lf0qvfze.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87lf0qvfze.ffs@tglx>
X-ClientProxiedBy: BYAPR06CA0026.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::39) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 75bcb45a-5a9d-43ae-14d1-08d9bdc91dcc
X-MS-TrafficTypeDiagnostic: BL1PR12MB5189:EE_
X-Microsoft-Antispam-PRVS: <BL1PR12MB5189B8B297380C6843F5DC3FC2739@BL1PR12MB5189.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TdtI9ZGXLMjR9jAG7a3fQtI9GKIFtDXLsKgXy49L5AMR1U5BoFPjpyVR4ShcKECorIPbT4zqHydv26MtZ0Ud3eDIrjH8UbWbAppShAy0lpWTJAMrYERkr+DixQrvhm47SDhvbRfim6sHNesd6Puw1n2sMU6i7pQt1WeDDEXqIleaWQX73AgJISiIdiN10rGW12r8DcFDyBNz+AgdIq75CvOpn7+GeZsDnqm03VekZ9yiG/eNwBhl46uZvR54LfUoWAiujGyrQ9ChoSwZXBwfPlf/YJId4dPE/w1LSokFViukXd+TWF9Eya/xvC1Prs/E4ZklYs3mp/ANbcsApRawbg2MuKFWNeMcEVBI8ZvhXCKvDav0OUuj8Us4woNDyWIE+R5CN9XZOO+YtRm/yk7198/6O1ne7iaxYIl87w22pApbWZvTyXli5ouZjN4rAs8jn3hvH1rJqNq35jD7ANcWmTwxd3y+YOx3L9sCUiszmm50/Je3dijS1oSiEIXlaKHWOhGrSIgaGfWsbk6UEbj1ZI7FPGAvfBhrjFXcFGkq6ZzOitFO4H2MwhhwM7BN2K8AdEfaT6+WrZpzwvwfH8VKebcDKtRzzxH+Uh38hRGD82Rou3L2hWz+j1NS65PbHHMehgv7XSsmXId+TQvcqoWdEA==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(38100700002)(36756003)(6512007)(6486002)(2906002)(8936002)(26005)(54906003)(6506007)(2616005)(33656002)(8676002)(6666004)(66556008)(186003)(5660300002)(4744005)(86362001)(66476007)(66946007)(6916009)(83380400001)(508600001)(1076003)(7416002)(4326008)(316002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7qs/JYJvTCIiPEhbM7KQfQcilivWDeDAZAyL9wFnOG9am2T8pfjam5qw8PNv?=
 =?us-ascii?Q?3uAiwKPOk4Zo3Nzsx1YuRyDzrI6HcakpBZua8TQd2/OsrCfanKSwMl39JMHv?=
 =?us-ascii?Q?CUKzzJf+Qhc6vuQftzPNJUsh5lbaRy1uMn1wjCV64ItDp/BoswHQ+DX5fkbX?=
 =?us-ascii?Q?OP6WeQS71SH8AOLCHL+vbxEVh0/Us2PW6pbWZHt+WGNaHggFcFfNnN+z8RC9?=
 =?us-ascii?Q?hRBHp4DyK4gmMbJtCXgXDWdu7I0oW3DlN1JTymEaAVaDAfnLmn36gJ/lzRwO?=
 =?us-ascii?Q?Pv78ras//8usBfs6sH+Z6Cnn/F/OSp6tM5StajRoBV5T0INFzTrD5MJvv0cF?=
 =?us-ascii?Q?AvtaqOHTjmTK0ktzFTqnN61YB7sOJJo29jBW9AIpbWmf3fjDYe3EMIqiuGUs?=
 =?us-ascii?Q?IotpcI6LEF3BgqQLRXVQvhGia2rSUO9bQ6QLk2wtJt7DkhUBu5wPCL9T3f7c?=
 =?us-ascii?Q?VVLSLIhGfOyMGM0AWDYgI60NpnK5D4KIJaTtnp+3UQklMJ204QNEVB7UB9bu?=
 =?us-ascii?Q?wy3rIwn6w5RuOCN3k5/D6dzJtLA6AMkoLQa94viZwokJdQkB4kZOVXxSmG6b?=
 =?us-ascii?Q?Di/0U1AZvfR/RJBrYnsfYjje/a4Kol7BKJHTDFkXNv7awxEkasZD6NPxhpUA?=
 =?us-ascii?Q?+I5Vq/hVpygKBz9j6jnu61GFx5v9hkcDi5dPNr15UzZpEcdyYFG049naQubK?=
 =?us-ascii?Q?BR+k1AWOaxRBPLNyiiPXgZO1fIqcWY+IIUITkvTVrzPP71fVWpFZgOk8Vgxj?=
 =?us-ascii?Q?rUX79hmlE4BU3bINx2ACs1kMcjkNIaYl+/C80/+Lg41OVWyhCEWDv1wBesGt?=
 =?us-ascii?Q?h+jVyYb9NtK/bzVdnJfrQW0mi2ByRxe6DdhSCg1MFjp0HCnIoaNq5izuZy+1?=
 =?us-ascii?Q?t2q5ufjsEukwlo1Cnh94P0Trkhvq/WRD+6n2f/URDlgxzdOfWPUfwvMLv8UI?=
 =?us-ascii?Q?s07hz0PDc6/2+3HKbv5W2sos62d9bpjL96bwRwgU6VPF4DiuFdx7iAG2N2CL?=
 =?us-ascii?Q?TcoYP4L1C1IzRt/4raJlTdWcGC3MKxOIvJpVQGDnPrsEUA39tQOeV19T1YGQ?=
 =?us-ascii?Q?Yf8mM7qbFVibJttmQRsM4Qiv7VZ7fxE0o1IdAoT7y8MmwDKZoEmmHt2uHOUg?=
 =?us-ascii?Q?qP2jwmSXcmVvF1hn0XMCq5BKBA86BhDUYkhWFfjyktoEkaWQ8GwhN0BO0Uxr?=
 =?us-ascii?Q?J+VcHYdGvKTKOtKQELRdijjfBq8cjFGQACvgAlQccnkkEP+6DueiQ9qBb80G?=
 =?us-ascii?Q?l6nUXb0LVHZWtMtxUIYCq1GYhJA2531BMdvDQHAy151VmaSSCwtz4ZjOfa5w?=
 =?us-ascii?Q?9NEcZ7nz3P+U9+dVzCf0v/jwmJ1bHAb8SgRgsafgRKjTU/Y0yk0sXvrx1Nas?=
 =?us-ascii?Q?FGZNFOav/WnAWgv49yVp+cb5u+i5fKeco3pb8mTu4/TsGDKwX4XqtueyydJC?=
 =?us-ascii?Q?5b+tS0BikpjzHhz8iiIZs4lBBQFssf44mC3rfjbxPN7fIMirTfop17T3aF8M?=
 =?us-ascii?Q?C4kIxe+w7/sk69jvll5DwyD5W8gfKZzTuow3A1XkYd8MdRpTzCuZfoQZdcU6?=
 =?us-ascii?Q?vCmREsxMCGff4zGbsLY=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 75bcb45a-5a9d-43ae-14d1-08d9bdc91dcc
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2021 23:42:53.7032
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GqeEBk9m/aMKOxlbaNkfd5Jax0mGlr2RTRFiSnOPQNnzc/ILQoUU3jgAKHGXBH2M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5189
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=lWgkH5Qp;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.236.79 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Sun, Dec 12, 2021 at 01:12:05AM +0100, Thomas Gleixner wrote:

>      PCI/MSI and PCI/MSI-X are just implementations of IMS
> 
> Not more, not less. The fact that they have very strict rules about the
> storage space and the fact that they are mutually exclusive does not
> change that at all.

And the mess we have is that virtualiation broke this
design. Virtualization made MSI/MSI-X special!

I am wondering if we just need to bite the bullet and force the
introduction of a new ACPI flag for the APIC that says one of:
- message addr/data pairs work correctly (baremetal)
- creating message addr/data pairs need to use a hypercall protocol
- property not defined so assume only MSI/MSI-X/etc work.

Intel was originally trying to do this with the 'IMS enabled' PCI
Capability block, but a per PCI device capability is in the wrong
layer.

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211212234206.GO6385%40nvidia.com.

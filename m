Return-Path: <linux-ntb+bncBCN77QHK3UIBBNUDXGGQMGQEAKJVNWY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id A449646A1DE
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 18:00:40 +0100 (CET)
Received: by mail-ot1-x340.google.com with SMTP id n13-20020a9d6f0d000000b00579e30aaa02sf4117096otq.0
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 09:00:40 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1638810039; cv=pass;
        d=google.com; s=arc-20160816;
        b=eMSOav05fEtW4gdchH9acJa3bigWXvRTnyL9VamcXmNcmD8iilNuU7+qHF9AeVyVOf
         DhfLPlnVS/PEw+WDep5cb5F3VU8kaP2jXUgxyy72CGor3NDjy27ZX77WM5sawiiaSaDI
         bdleanmjZ9ims5WqSkd6hy58yWUgHr7D+YP1WvxEuhCL0Sk+4iEH3SdSfJpBGnbKdSvB
         DgiFpIhVXUTPe4nNac718oR++2dhwJDatCBAzIxwpQYf8BNI+Lnvq0bmdLMZSsMoNkug
         2y7dyS+vX0084NUsSLLZ5FzYNtsekygvK5dJZDe1HxD72FNuTDulaqcl3iIAa/6I0/rg
         hdAw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Ff6BjtmMf+zLatdqKRfubRK5pnMxcfEpWYKA+KioFH4=;
        b=oETQgikPYJu24otjF7yGQwlvESTjazydfppn5iTHnlfISez1fM3T8dqYwR+sivEl9Z
         XXIFJBRWDS1BTzWyeXhWTQleTUqSKyPS8/7jD+hV43QX556fzjrXEzBAFUFy/pmkl3SO
         rZtnbbPicKvCjS+Esy5O1PF+4EbU9zepyrU8s4plVJMQEKYeLZYGPxjhFuGQyUwOtz6G
         5LTSCwV7HJnsjpDYX0R+LkFZUnTWpznmK2PKkUvqxLG7O6J+UDC3JeNY4H7mveQIzCY5
         XAYtDbcO/cb2nZPxD6XS1WGqxd7bGttwWB/w1KJk2cb7T8QpVfq4atsu0nuykuNCPLPV
         6n3g==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=hnHv79Ni;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.92.79 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ff6BjtmMf+zLatdqKRfubRK5pnMxcfEpWYKA+KioFH4=;
        b=Evrwc7LeWyKuo/0oEW4HkYlGn0LjpAtKp/SnxKPEJm8sQ0lmsqwXOXACfQKELG+lq/
         VlxakoWG5DVBLBPsXwN/QvAsY3f1h6Wec8Uws3WRuuumaEdRMAi7dogNs1xmVTysYayu
         weGknfm5blsIkDtKmpzhu7F3QXUNa+wS/0h83LE0uKaujEYyAx9bpuQqK6Inr0uafAOr
         DleewQtLMTJjqVu05StuRpF/Lx5AOHGsH9BZJMPRXTrGQ2TMhTeUUi+MOs0L2oNUHCfv
         rklyko2f9mEh5hYkYbg2da9GBku01mWMh09lJuGUi2+NAShXKh2MVEmrw7Sf4rKWLq4v
         dN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ff6BjtmMf+zLatdqKRfubRK5pnMxcfEpWYKA+KioFH4=;
        b=X9eLyMxUaSd31+a5Xh0a3w0CKqiwHnWx6/g6tJ/z97CLPfEFlIwgdLFJ6bzyaFL+V2
         vZAn13wkipIPPNDcfiWdQpWvkRXW7bMh86+Y+VPG9o4Z2icZTcByxjCOUVv2iAKYGHDX
         e6Y1eQvQ7F2pErCocvR5jvhYVTcNAPs4ssgcDgvjgZv9OxXc2GgKKjnnKbhcXy0u9bJB
         +iKTSGpVn9cFh80kQuFkmlIWCLZWgUPQmceVNKPMv2Yjt/UmzwqVAYeT5wOOlC6tMV7b
         WOxCtWmomRhUlDSppVCXLtekfczvtX8uqYaGVqZ/esqj5V0m0dV+ti6vfkmzp4s9BfdU
         xsSw==
X-Gm-Message-State: AOAM532t1Ps2fQchzNKIyx/3UJD8lbHFrH7pKuHNHF5qzob2RnnNtYnj
	KjKUX3PSPqQ2j7yZNqtEVWE=
X-Google-Smtp-Source: ABdhPJxTt0b/sTeoNSTP3sTZP/ZRHy+EQLk/WZjBPv0zyzXUJCFirn0KQaeVV4/VW23tQFVfBry4Lw==
X-Received: by 2002:a9d:4c10:: with SMTP id l16mr30372290otf.198.1638810039111;
        Mon, 06 Dec 2021 09:00:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:219c:: with SMTP id be28ls6389566oib.1.gmail; Mon,
 06 Dec 2021 09:00:38 -0800 (PST)
X-Received: by 2002:aca:1c07:: with SMTP id c7mr24745006oic.133.1638810038596;
        Mon, 06 Dec 2021 09:00:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638810038; cv=pass;
        d=google.com; s=arc-20160816;
        b=ou2KFqOU0NGPYgsLt7N9nMNlpqsur1w9d9hxXNvZs4GZqvnqgUPYFD3gX/e0z/+L1c
         DrKRCs0cNAIZMnXlvUktfXYdTgFhcEl99VnBVuoOTEaHcRPn3BdgN9tbt7Pt5bERL97O
         SZZ4qRvWDeZGWeO1JqNYqzE1V7cXV60dltaaEKbip8/ur10AdTMRm/WxlG6VIvtv9Ss9
         JBovubTl+FINyIePcgXd8dHdszrb/IS4P5v9pf+ujvsGlbl/eV/oMiVX7D26OlzstD6/
         7AzfxDfWs8Vfkf4ToV+hMnqBhGrWa/vA2IAgEHKUC2hX+iz6mu9REI9dDJiLhf/4k5Vl
         WlvQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=OVXMw+tjILuidNqysjqadq9QwSeRKyC6EzlfRzlyqp4=;
        b=098xNbtzi7UYH4eGxQyKEi7dB+DmU/sAoK2jKEg0idLoL4dODre0aBUQktDZ/HmrHO
         /YZCVFqYdt/k0KPBqcTBvskEU06w99sHjefqJSECpSH9qrYM2ljLTjP9ppX2fnJahHet
         NREveiZ0U5wX4XgmoaWw9cU9Aw0pxWDx7WXfjLmZUTrC+xIyp12LjUF9nu3zxVm+ryg9
         vnamVu3CKH0QhfKHWmD7ht5GOJ5g1zg7y1XRsaQ3S/JUOCZYJtnK11ixC797Lrm1l3C2
         gB4AmZTLweKPyZ+9gI58rYrO0yoU+GGj/58vFXvEnl2+dMRdnzarjV7Dw55fMnA3/Nnc
         z8xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=hnHv79Ni;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.92.79 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2079.outbound.protection.outlook.com. [40.107.92.79])
        by gmr-mx.google.com with ESMTPS id y7si302329oon.2.2021.12.06.09.00.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Dec 2021 09:00:38 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.92.79 as permitted sender) client-ip=40.107.92.79;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CYAdag3btNhsIJk/hDvyr0wlaDyIRNCUtPcI6ocAYYm2P7dh9u+IAOrr7AkUAIo0WMu7ebMlyoDuxV6gdUQ0Zb1JXTLTxYbiFh4/1BlpkgbSck3XJKvRpbZZLOFC2zybWdUHE/ddaSvdv/QiTZRWDEN10Hhh1dNJLJP8S/iZAXsEy8YCkCst0tIuVboA/GRvZLQRpeMZp4ezOMbbC+Qi/cs+iCY82QyD3s/2cuiCWJ3I4er1AEfIVlKebjijbqL/lH47rk3ZU0dSul6LEhlT7DHbzHrDM/Xn6rDEJ8O+GrXgMgu/kSe8PHiTpHgqN3zKsEvDLv205DeP0VQg80o2Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OVXMw+tjILuidNqysjqadq9QwSeRKyC6EzlfRzlyqp4=;
 b=LkBQ4WIftO1vRrAJabq4QKmMaWkPb5lxbCw1uXH+IUrjcG8tpcw8R7vj9jhvEW+tP2AqvsqLxsU0fOgn4KfGqgcTwiHyVViSnTsvrQA+XMFouxqWAz9gmxFAJKLhy416gjr6N+X/H288QjgWEUf8jzBGzPDkTcB7r8kVwdyBQ2rEp1g7mWQ3TAmsgQcPMwB50Gw7s0UuVWVF0otNusUv0Siop5H59eyLp9Gj8fieUaCDlutn2Lfsfk2FEFat7pLe6OCvkHVgqOcVurLLmQVjUwQ7kI+3as1xylV6Q+Y/Tcez6cFX2pUctIX3pOqEmtpenYfvGogDUSPpGm7GsfsmGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL0PR12MB5507.namprd12.prod.outlook.com (2603:10b6:208:1c4::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.16; Mon, 6 Dec
 2021 17:00:37 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::d8be:e4e4:ce53:6d11%5]) with mapi id 15.20.4755.021; Mon, 6 Dec 2021
 17:00:37 +0000
Date: Mon, 6 Dec 2021 13:00:35 -0400
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
	Joerg Roedel <jroedel@suse.de>, iommu@lists.linux-foundation.org,
	Kalle Valo <kvalo@codeaurora.org>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <20211206170035.GJ4670@nvidia.com>
References: <87wnkm6c77.ffs@tglx>
 <20211202200017.GS4670@nvidia.com>
 <87o85y63m8.ffs@tglx>
 <20211203003749.GT4670@nvidia.com>
 <877dcl681d.ffs@tglx>
 <20211203164104.GX4670@nvidia.com>
 <87v9044fkb.ffs@tglx>
 <87o85v3znb.ffs@tglx>
 <20211206144344.GA4670@nvidia.com>
 <87fsr54tw1.ffs@tglx>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <87fsr54tw1.ffs@tglx>
X-ClientProxiedBy: MN2PR06CA0026.namprd06.prod.outlook.com
 (2603:10b6:208:23d::31) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by MN2PR06CA0026.namprd06.prod.outlook.com (2603:10b6:208:23d::31) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.20 via Frontend Transport; Mon, 6 Dec 2021 17:00:36 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1muHLv-008zDA-PF; Mon, 06 Dec 2021 13:00:35 -0400
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dcb8f338-7235-4c97-8efc-08d9b8d9eca1
X-MS-TrafficTypeDiagnostic: BL0PR12MB5507:EE_
X-Microsoft-Antispam-PRVS: <BL0PR12MB55078837F776C3B4174B0AE0C26D9@BL0PR12MB5507.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iekRGUtV+d0WQcBrXNUflgqxNU0lTBLovrYiPMn9GZYPY/pbgGCKlD/O4s+ZKPvcyiTBL3kM8Ma0S5/IHK3WkXI3/nbD50T/d3WdsSICRyr0/RUEatioBNTwQDXu5yh6JxAt56jtevJbQqTiH/kRVrew2/3EUTCuidZ2L7w+tIj+MSvTqQvKu/8bUYyQHc4e/CWv5aZnRRVTp3EaxDktMYQ0i8dKBgkrcwLSxjTTpDGSiDxBaEKYzs/eb6m19dAJnCypnfRgpRdCGk2HckHySlZRFG82+wo51JWZhqhZ5EfF6hXseG1o86SLODiaLV5VHMvrIyQUrfRF9cg6QWx/dcLjPBzYZV5okO/RIfZbLW+IiaYTuO+pzlUBSk1vbOG5QbfKp1pAJyAYaGDYh5nG170EqHPXIl/UDSclbygbMjwE22fVGT+6fBfRqIb+Z+7HwtiMG8DRSDIcLPn/KEnNR+4BpiEZdTyLcMQEm+trHjkBxs9BrzeCgdwbm+pLAnR0VlE5OK4v8SB8R4HRHm4E8eX5ykTTAZb/OXlI8SmaDnSc+4Pybc9igMxw5Z0VDRrjmBGGbwRZxF6F4hpPNAvtun7+7tC7Alx2147d+Te6VO742RQWpxvac+UyYcPNpkN5yKSK7JZpvOT4Jvh6baqnng==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(86362001)(66946007)(66476007)(316002)(6916009)(9746002)(9786002)(36756003)(5660300002)(33656002)(83380400001)(1076003)(508600001)(66556008)(4326008)(26005)(2906002)(8936002)(54906003)(38100700002)(186003)(8676002)(7416002)(2616005)(426003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?62JhFTlURoWUpNTuWT0tpEmBwyOZVTvPjiL/uuZafq1Q84fYnlydLNoFSZrx?=
 =?us-ascii?Q?TaVsS6VQGpryOeAIfNMB1zjk07fTlIE2lveXeR+7sme1e6HPje5R1KuV+nT5?=
 =?us-ascii?Q?w7WK925bC0CGqhVs/kFzu087N8O0oF2fw0RP0iK0LH/EZb5bVk+zfi/p+BVG?=
 =?us-ascii?Q?senlpfmGznVWX070SOsNRvmyqOhz152EeDWZo504c0Xxpht6kEhWGNE4onXK?=
 =?us-ascii?Q?2AYqyGL+jw2dniICQ1yIFTLnQrrv5VzI5TcuYav/38ucEQUAmWBAO+edZ4U4?=
 =?us-ascii?Q?gEWmLrWXy3CkycAuNiEG0f9w5kmLFyqyzJXi+BE6WaSDIK7j4iqmVw6dByH5?=
 =?us-ascii?Q?e9cHPE5sGvlSUcXyXxPJiE1gwwP+7Bi4dKGsg2yLL7SK0W87DFxZYE9DetQ5?=
 =?us-ascii?Q?waVoiQDHSy/UekHTlC9JU/S/bjpZJJ+HlYMyeHFE66TKIiZ1gul4KLQaoZYp?=
 =?us-ascii?Q?V/vnSp+fJ1K9vek+/EynwU5njpLXo1158pHk3arG64tmn+Fz9oMhnhPpZLYb?=
 =?us-ascii?Q?AHaeMEBNSfycJYLbsqSVmjK+O63Jq+j4kWK/l6x8Cj2/SbMsA22Q59LDCOzy?=
 =?us-ascii?Q?95XxvxwqDMYLF3Fkcgd4plcwtyVxYmgFZzLx6+9RTjiFNKuUegvrbMsl32v9?=
 =?us-ascii?Q?xJ2ajtVzpbigG1cVmHr1EdlEjli18CQwVs5gikquHslH1V7sF4v88ehv2495?=
 =?us-ascii?Q?gCf+pt1FUZD1IPP98E94tcBrgXRzZK27qarmJ3X5O3NkUOQG/eB8cie7hsCc?=
 =?us-ascii?Q?bUla4qekBhHHYoqudQViPP0JcCfcUPTDfojWCeVqHB5TL8uyT3GhfderBmi3?=
 =?us-ascii?Q?AMc1buO6BU+VP2joo43AK/eGzfBB3eFGalThMK4yMD1FxtSdDytE2Uz9E5wW?=
 =?us-ascii?Q?zCSWnPze6jTvuP2qIoo3QoM1OIjL4M1B3JqsONo+G1M/Bt/KyaDYRT041kQr?=
 =?us-ascii?Q?C6RFfcuQhGKCNd2rVUa/67Jqr6ADUVcOzOkfVc+YTbdrNNcRRMhTyhUQNw/s?=
 =?us-ascii?Q?tvqhn8onHe+kQS7vYTXx+7LrTWVPpwQTuwtmDyMWhksbA+mt3ENsZLzUxRi1?=
 =?us-ascii?Q?jhZVRivf/qIbzXFYwfxRIKhBVIZxlstZTI80Fx14thi+G5di/KEbT+qAptqv?=
 =?us-ascii?Q?PpAITPdLFC8qahr0VKoLmsDVq8Xl+b3TQ/pmDWCz4b0ePb8ZtPFjBmD6uj17?=
 =?us-ascii?Q?EMFa/Sc1LajiAOLufKyWVXvQhMaavPq+L0D32O+Gol3zPf34gB0f/RnbNNfN?=
 =?us-ascii?Q?i3ZS2InYhAYzWuHcpeC/3XhYoaws7K3sIemE3xGDx33U+TxvFoP6fVgcWjhw?=
 =?us-ascii?Q?VazjdEVBG4wWpo//EAfHoMUfOTAy+LY0BE4VnaS7Q02W+bkw/Ut04aOwWK6v?=
 =?us-ascii?Q?q2abZuGqsJ9IsbwCsRu2/4mST8iAaHMO4sVbZWEiQknGUxvCrHYN8ltHy8tX?=
 =?us-ascii?Q?EhcVedS8/o35Eje/nI3d4lnlKZH9o/tgBYR6cyp2Irqvl9fVELBaNAfJD/R5?=
 =?us-ascii?Q?1OZ84Izz2AryzeDpZQuvLqh2Kp4AndxBzQTimE5RpwUfecG/AkdDs+AR6mAa?=
 =?us-ascii?Q?ggzTnjgCq4hKPSIOL58=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcb8f338-7235-4c97-8efc-08d9b8d9eca1
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Dec 2021 17:00:36.9728
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /8ITmnuZF9GzuG+z2+LxBmX6n2wIbXz55wUKbTb2DkQSQ9uP2pVpoMUOO8qzQdLz
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR12MB5507
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=hnHv79Ni;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.92.79 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Mon, Dec 06, 2021 at 04:47:58PM +0100, Thomas Gleixner wrote:

> >>        - The irqchip callbacks which can be implemented by these top
> >>          level domains are going to be restricted.
> >
> > OK - I think it is great that the driver will see a special ops struct
> > that is 'ops for device's MSI addr/data pair storage'. It makes it
> > really clear what it is
> 
> It will need some more than that, e.g. mask/unmask and as we discussed
> quite some time ago something like the irq_buslock/unlock pair, so you
> can handle updates to the state from thread context via a command queue
> (IIRC).

Yes, I was thinking about all of that in here.

Let me ask a slightly different question

pci_msi_create_irq_domain() hooks into the platforms irq_chip as an
alternative to hierarchical irq domains (?)

eg:

		chip->irq_write_msi_msg = pci_msi_domain_write_msg;

And we see:

void pci_msi_domain_write_msg(struct irq_data *irq_data, struct msi_msg *msg)
{
	struct msi_desc *desc = irq_data_get_msi_desc(irq_data);

Now, if we have your idea to have some:

struct msi_storage_ops {
   write_msg
   mask;
   unmask;
   lock;
   unlock;
};

Which is how a driver plugs in its storage operations.

In almost all cases 'ops' will come along with a 'state', so lets
create one:

struct msi_storage {  // Look, I avoided the word table!
   const struct msi_storage_ops *ops
};

ie:

struct msi_storage_ops {
   void (*write_msg)(struct msi_storage *msi, struct msi_desc *desc, struct msi_msg *msg);


Now, what if we made a 'generic_msi_create_irq_domain()' that hooks
the irq_chip with something like this:

void generic_msi_domain_write_msg(struct irq_data *irq_data, struct msi_msg *msg)
{
	struct msi_desc *desc = irq_data_get_msi_desc(irq_data);
	struct msi_storage *msi = desc->msi;

	msi->ops->write_msg(msi, desc, msg);
}

And then have what pci_msi_domain_write_msg() did now accomplished by
having it set desc->storage to a pci_msi_storage or pci_msix_storage
with those msi_storage_ops pointing at pci_msi_domain_write_msg/etc

Then we can transform:

void __pci_write_msi_msg(struct msi_desc *entry, struct msi_msg *msg)
{
	struct pci_dev *dev = msi_desc_to_pci_dev(entry);

into

struct pci_msi_storage {
        struct msi_storage storage;
        struct pci_dev *dev;
	unsigned int msi_cap_off;
};

void pci_write_msi64_msg(struct msi_storage *storage,  struct msi_desc *desc, struct msi_msg *msg)
{
	struct pci_msi_storage *msi = container_of(storage, struct pci_msi_storage, storage);
	unsigned int pos = storage->msi_cap_off;
	struct pci_dev *dev = msi->dev;

	pci_read_config_word(dev, pos + PCI_MSI_FLAGS, &msgctl);
	msgctl &= ~PCI_MSI_FLAGS_QSIZE;
	msgctl |= desc->msi_attrib.multiple << 4;
	pci_write_config_word(dev, pos + PCI_MSI_FLAGS, msgctl);

	pci_write_config_dword(dev, pos + PCI_MSI_ADDRESS_LO, msg->address_lo);
	pci_write_config_dword(dev, pos + PCI_MSI_ADDRESS_HI, msg->address_hi);
	pci_write_config_word(dev, pos + PCI_MSI_DATA_64, msg->data);
	/* Ensure that the writes are visible in the device */
	pci_read_config_word(dev, pos + PCI_MSI_FLAGS, &msgctl);
	desc->msg = *msg; // in core code instead ?
}

And others for the different cases. Look no ifs!

OK?

Now, we have some duplication between the struct msi_storage_ops and
the struct irq_chip. Let's see what that is about:

arch/x86/kernel/apic/msi.c:     .irq_write_msi_msg      = dmar_msi_write_msg,
arch/x86/kernel/hpet.c: .irq_write_msi_msg = hpet_msi_write_msg,

Surprised! These are actually IMS. The HPET and DMAR devices both have
device-specific message storage! So these could use
msi_storage_ops. And WTF is IOMMU DMAR driver code doing in
apic/msi.c ???

arch/powerpc/platforms/pseries/msi.c:   .irq_write_msi_msg      = pseries_msi_write_msg,

AFAICT this is really like virtualization? The hypervisor is
controlling the real MSI table and what the OS sees is faked out
somewhat.

This is more of quirk in the PCI MSI implementation (do not touch the
storage) and a block on non-PCI uses of MSI similar to what x86 needs?

drivers/irqchip/irq-gic-v2m.c:  .irq_write_msi_msg      = pci_msi_domain_write_msg,
drivers/irqchip/irq-gic-v3-its-pci-msi.c:       .irq_write_msi_msg      = pci_msi_domain_write_msg,
drivers/irqchip/irq-gic-v3-mbi.c:       .irq_write_msi_msg      = pci_msi_domain_write_msg,

ARM seems to be replacing the 'mask at source' with 'mask at
destination' - I wonder why?

Should this really be hierarchical where we mask *both* the MSI
originating device (storage_ops->mask) and at the CPU IRQ controller?
(gicv2m_mask_msi_irq ?) if it can?

drivers/base/platform-msi.c:            chip->irq_write_msi_msg = platform_msi_write_msg;

Oh! this is doing what I kind of just suggested, just non-generically
and hacked into platform bus drivers the same as PCI does:

static void platform_msi_write_msg(struct irq_data *data, struct msi_msg *msg)
{
	struct msi_desc *desc = irq_data_get_msi_desc(data);
	struct platform_msi_priv_data *priv_data;

	priv_data = desc->platform.msi_priv_data;

	priv_data->write_msg(desc, msg);
}

platform_msi entirely gets deleted. Instead all platform drivers using
it will use IMS - set up a msi_storage_ops with
storage_ops->write_msg == platform_msi_priv_data::write_msg and
allocate a msi_storage someplace.

So, at least at this first order, we could have world where the
irq_chip does not overlap struct msi_storage_ops - ie we move the MSI
related things from irq_chip to msi_storage_ops.

Then, all the core code places calling into chip->[msi] would instead 
find the msi_storage_op from the irq_data. ie like (or better)

  irq_data->desc->storage->ops

Now we have a real clear split of responsibility.

The irq_domain hierarchy and irq_chip is all about classic wired
interrupts and interrupt controller path after the device launches the
message. For MSI it's job is to determine the addr/data.

msi_storage_ops is all about interrupt origin points that can hold an
addr/data pair. It's job is to store the addr/data into the device
specific registers, do mask-at-source, locking etc.

PCI, HPET, DMAR move to msi_storage_ops instead of using irq_chip

Then you get what you asked at the start, the platform's irq_domain is
now fully generic and can be 1:N to different MSI storage providers.

For API compat every pci struct device will have to instantiate a
msi_storage someplace, but that seems easy enough.

Seems like a nice uniform solution?

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206170035.GJ4670%40nvidia.com.

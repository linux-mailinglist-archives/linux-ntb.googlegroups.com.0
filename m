Return-Path: <linux-ntb+bncBCN77QHK3UIBBWOFSWGQMGQEUUZFDLI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F92462844
	for <lists+linux-ntb@lfdr.de>; Tue, 30 Nov 2021 00:31:38 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id p18-20020a05620a057200b00467bc32b45asf26491148qkp.12
        for <lists+linux-ntb@lfdr.de>; Mon, 29 Nov 2021 15:31:38 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1638228697; cv=pass;
        d=google.com; s=arc-20160816;
        b=JWxn0ar7t3G13z1ZM7nmrdNwKVa/Ccd3DgW33qEtSYR2PU5vJfwiorUV02fR05sS4W
         Ls9tD1wVWd69BdOqexeJ7qQw53DmiOosF87vGvwhBC3zi3EmCrat9lZc4mjDvqfS5kR5
         LZZfFQKOprErRtaXNOLzjBHYwz4IM9iFrkiK06tgxb6T7y28p+VuOPGgNxWycgjLnZn2
         4Fj0ak/rgO5fsc6AwDcYsnoFdyZuIDmR8i75pZ2zMy/NEb3RjPQwnlN3hASVXYVOgkmD
         zwlZH2s5W+7tLh/RN0qqXFKjf9Ad91ITqLDd7EPbNK3O71mP8pMctTuh9utBhkfx+JWL
         FfBQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:in-reply-to
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=90Wd/PKxeUfQ5rPmVk+4Ucmr4FcSfDBSClZzb9WWxDo=;
        b=rh1WxkYKfleUwTV61d9HTf+juzkyRSbTWEer4HgGi7QnoDIsS6iSPkCDtr3eOS6dnQ
         uxjicZhOml0ywqzYA1tvfQovUBiDDoLyz5E5WxI7M5OB2d7bNh4DA9E8LDl6EYTyKGVL
         nyEZl3sesCR5g0RkhLQZZlN49+YAdOo58tpzaVmpOKvxd5J5N3eVhlheuHj77C/p3gVH
         4xLH4MPJozy220GNa3Q5tsqafNtSl9qKhR/NkRD7JgwUzymjzC9OF1esDoWFf7RgDXin
         215Mj0KmIQ8wgzRccF0Srow+78RlBPjYOGrzasdRgySpHhcCEbhKF6MPtdYRg3wnVG/4
         IqFQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=BPxRiq2Y;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.244.86 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:content-disposition
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=90Wd/PKxeUfQ5rPmVk+4Ucmr4FcSfDBSClZzb9WWxDo=;
        b=VHxrZwZ9gAerWitpdplNVz63/sVRTcw1K++twSiM/A5lrERaHfmX5AfgdzRjX8vkah
         pcpk9t9D6tKSqtJQr/4TKCN5LiqHhkEhUcILjLKyADwCssthG6NmI/bHEnlUK6cdZBZW
         o5sRA3FrGlF/bQB76kvsbGqIrKvMn3nZcqMi4nGS4Vw9dsYpUMSuuXw5LB7QGdC0U/tl
         vJod5wByJX2ux4MM3twSaclLUCrbNvH1aMvg9vdB/mIjJIY2uXcVraKnFUBSUB2YhceW
         cUSxO+djEtzwVI+3wwGBZIuKCOV8Mr3PEBLcf1peWAf1y3ojUMaIs+H0Dgt7xVg/LZ1D
         ApGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :content-disposition:in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=90Wd/PKxeUfQ5rPmVk+4Ucmr4FcSfDBSClZzb9WWxDo=;
        b=teFby9V+f0gnz+bz9/wwnD8ex+BGtWCqThS34H08/HmTogCIoPcKWupv3lB0Obx3c8
         BvLGMI7+JPZPaZjZBTD0Q5JaDtQLjy6Y556wVdBn/QRig84ecWqSaJ5V2lXs9hhaNk41
         r+NeJXLGXoWgdgYlFqJr3AWHCOWBLuwsfR1DMSZrvsBgxrn8uaDjwT/K6ZSKKqT+5omz
         WNZjSB0gFhiJVOkBckPjONxN8oTn7imBxcL1B/FEx716gMj0+px2wRFm7/LDCNecAYW+
         q6VTZPTTX0Z8nL58RZw3KZTwg/7BdTM1+CZQ9MCOsSqNqeeWoHk5rMNGIWdptKfdThBi
         vdxA==
X-Gm-Message-State: AOAM5314AYuaogA/OtBeDXbAAspqyBPvAS3kU3RE61T+OtPq684Idn+X
	t4ga6svJqhgGXwqoEOIDfto=
X-Google-Smtp-Source: ABdhPJwpQbJX6Q9SWYZozIXJHb6scH+7uSkFEGqEUzMZ/zhi3zLZdidT7m2VztLAZxx70OuIWQ+h0w==
X-Received: by 2002:a05:620a:4107:: with SMTP id j7mr33585754qko.645.1638228697364;
        Mon, 29 Nov 2021 15:31:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:5c85:: with SMTP id r5ls9393624qta.5.gmail; Mon, 29 Nov
 2021 15:31:37 -0800 (PST)
X-Received: by 2002:a05:622a:1812:: with SMTP id t18mr37863190qtc.455.1638228696931;
        Mon, 29 Nov 2021 15:31:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638228696; cv=pass;
        d=google.com; s=arc-20160816;
        b=w48hP91q7aP4CGu5fsQvzi2M8SgvJUu9eYi79qluQGBCDQgtmf5QVAtPieknq9ZG6Y
         FNLsH6XALWCYbLz9FVTAVg5YGChGFllRrOk8/3sjUIZOK8RBg3490TRhO8/RqxgXTppN
         l30Dg3YEXvDKbIjM5sXtj2ES0wQ2T01lV3nts7tAJO7+kp0jcyb2a1VcbeIHsQRkSei/
         EZOV8YqRIhiea0BEmhtpZHeBVlJDLVty2uVy7BLHB/N1ttGLA/HM0ObnrcrSWcYuFpHB
         HvJvlFi5r3UIepZ//3nQEOigt/XXr8fhYlV7/tZiLYCfujUgAxaCrllT1obHQhIIvvpJ
         lj9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-disposition:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nyxPtnkcQL0uIg9OAMxMzlMr1aPsQv2mJYOr1PS9ewM=;
        b=akIqRvMvTxvuq1PW6HZPbIgHGowYXC22mBdn2A47yoXCdQPkbw3OtpE9VFF9mZwr6b
         pqQ5ST1EMFAqBUUx0SFZaG+qG0yepolvEqF5HRMg16qzenVDXC2chtr0Er5BDnhlTSnt
         j704091IxLCU70NkkKxL4sOcz4OfiDTrmu+pjrUqvPbBxitup8FIyBMwPjiKMnLW7y7o
         W37/1FSZVB77aj4ALE3mUOIaBdmipMU7sU5YPAVIZ1Bpn+3k4xUkQjYOXAcobGu6zI+X
         f8DZcPPSOzY3NTtqEf2rmMTDnEvpzr7wcXJLb8uJF/fKqEHJ6SI9s1QOsVugGq8iCgMh
         FHHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@Nvidia.com header.s=selector2 header.b=BPxRiq2Y;
       arc=pass (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass fromdomain=nvidia.com);
       spf=pass (google.com: domain of jgg@nvidia.com designates 40.107.244.86 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=nvidia.com
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (mail-mw2nam12on2086.outbound.protection.outlook.com. [40.107.244.86])
        by gmr-mx.google.com with ESMTPS id s4si930658qtc.4.2021.11.29.15.31.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Nov 2021 15:31:36 -0800 (PST)
Received-SPF: pass (google.com: domain of jgg@nvidia.com designates 40.107.244.86 as permitted sender) client-ip=40.107.244.86;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gVbC7+8ClrqWAYdS/veFfz10RCOyHjhf+eQi8gNtV+4UpmtNcz8eqtKx+icP/53mvAZ4gy6C4y6GPiRUGg2JQq4qjGeZVW0V7FRYH1eMZtE58jUyobaReY3qwPApcV+wIScKw0e1T7gxkLgPhsdXcynMGbwv5uMlAxWkm4szA+iKOkP8JpW6pvoe1ZtYy8QMMfIhr5NMnqt6CZ1DiMO934CK82pXGzWbSlUyyIaKSlKf4e1WDeIX7oeo591ekB+UCN06cs3lIg6JvBrrasSDyz448oQV8JHKYOKAcbU/bLfc0k3cqCd/KV4/OTBQJTTUwd2oePGAaj19rk9fNi8BaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nyxPtnkcQL0uIg9OAMxMzlMr1aPsQv2mJYOr1PS9ewM=;
 b=j0zqQHwfJ9GiwHOytIEZ3r7ulK8+4f8dZ7ZnBkjfBrXm2FCsYMXMR/uo6l9TQDflBonKCYPT1ueg1WTBe4rRF8NEVROU9dp2ElemvsmbARyjr3iofFtjWiiXZbDibIXD18NG8mUibfj+P3VG/WXl3VU6wy6273VsCqUGPVt6Anr8635/dtwnuiXu8EtNmabNEVh5xEfSJLRa5GsD7j/mBbIdjuRKzdhUmmCsiO9L/uRG1XeTdEVysNHB/syWX06E5+SKhwg1rHsNG9I21iUBtKJskgtw2/cOu3j5qexxgrU4iZsmGxUnTbn0sOFmHaP/o11qVbkdQKzEXWQZTZS3fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BL0PR12MB5506.namprd12.prod.outlook.com (2603:10b6:208:1cb::22)
 by BL1PR12MB5191.namprd12.prod.outlook.com (2603:10b6:208:318::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Mon, 29 Nov
 2021 23:31:35 +0000
Received: from BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::5897:83b2:a704:7909]) by BL0PR12MB5506.namprd12.prod.outlook.com
 ([fe80::5897:83b2:a704:7909%8]) with mapi id 15.20.4734.024; Mon, 29 Nov 2021
 23:31:35 +0000
Date: Mon, 29 Nov 2021 19:31:33 -0400
From: "'Jason Gunthorpe' via linux-ntb" <linux-ntb@googlegroups.com>
To: Logan Gunthorpe <logang@deltatee.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	Bjorn Helgaas <helgaas@kernel.org>, Marc Zygnier <maz@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Kevin Tian <kevin.tian@intel.com>, Megha Dey <megha.dey@intel.com>,
	Ashok Raj <ashok.raj@intel.com>, linux-pci@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com,
	linux-s390@vger.kernel.org, Heiko Carstens <hca@linux.ibm.com>,
	Christian Borntraeger <borntraeger@de.ibm.com>
Subject: Re: [patch 21/32] NTB/msi: Convert to msi_on_each_desc()
Message-ID: <20211129233133.GA4670@nvidia.com>
References: <20211126230957.239391799@linutronix.de>
 <20211126232735.547996838@linutronix.de>
 <7daba0e2-73a3-4980-c3a5-a71f6b597b22@deltatee.com>
 <874k7ueldt.ffs@tglx>
 <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6ba084d6-2b26-7c86-4526-8fcd3d921dfd@deltatee.com>
X-ClientProxiedBy: BLAPR03CA0110.namprd03.prod.outlook.com
 (2603:10b6:208:32a::25) To BL0PR12MB5506.namprd12.prod.outlook.com
 (2603:10b6:208:1cb::22)
MIME-Version: 1.0
Received: from mlx.ziepe.ca (142.162.113.129) by BLAPR03CA0110.namprd03.prod.outlook.com (2603:10b6:208:32a::25) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23 via Frontend Transport; Mon, 29 Nov 2021 23:31:34 +0000
Received: from jgg by mlx with local (Exim 4.94)	(envelope-from <jgg@nvidia.com>)	id 1mrq7R-004kPs-9f; Mon, 29 Nov 2021 19:31:33 -0400
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a120248d-c303-4c37-2baf-08d9b39061dc
X-MS-TrafficTypeDiagnostic: BL1PR12MB5191:
X-Microsoft-Antispam-PRVS: <BL1PR12MB519143820A0AABA3DF4B591FC2669@BL1PR12MB5191.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Yy/GrBVA+5qtPbF/ctJMtFSTY4k11w2t/QwmigajP8r4jZxAB31+SXLZmq0pTMN+dRt4CwF37OO4Ge6pi4mAQFrBJjvm95YvZy+eJvUpLyrtDK0JCWVP1D4o1SiB5tRxfqS8UEIXak2fYQHd1dvOPvb7SNoybhsFNoquiYujxbgBy9HykWBJp4jOgKcoOa7ueJcOWgaJV9PJK/x4H4iGSHKWPZufU3Cc/oe83GZCKeRVRGXukwi5CqE8lQNGhvkPE/0PdbfKRCrRnhbA34xbl2r2zY59+AyG8HuZFRyyzcIoipB1AIZv6RrGb3v5MOgiVLC6DB7Nf40yJMFuWqpAEO5YCutEyF1yy3ZM9hiLqHPgRFLbuBfdVQ8m+fKuTm+KtX/DR0rxYIzZ6VeR4gvEqWumVgX7a3/Pzfsm9x6ZnUA9CeY1Wk37jAk+Zf/bDZ8gyz4N6YvhC/Et+Dh03lrPULJog0PV+RiaiWw+Iv3nnihDLj1OjmBhJGHzywLIpzQFdz6058ajYA7mlBIYtUBDy56ELBZRITexvSt11YtGyoEo2cbn7+GH+GV5aV8SnRw/nEn5moVUfGI568xMK/oLi5DLF72y5HQsIrVNs+VtJN0VogTJwqumS6r1mL2wv8s0Uw09t6Jv8B+9pShZ4zhzcw==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BL0PR12MB5506.namprd12.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(366004)(186003)(36756003)(426003)(6916009)(8676002)(1076003)(66946007)(2616005)(5660300002)(26005)(7416002)(2906002)(66476007)(83380400001)(66556008)(33656002)(38100700002)(4326008)(8936002)(86362001)(9786002)(9746002)(54906003)(316002)(508600001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?d8zmZsrlevrOyId2WsxDhY8ZQyvEEmffio4ibRhoF49elGiDkrUTEk9ELLtz?=
 =?us-ascii?Q?94M0UpQqdFK7fyPr1TXCxZodb62l8jzhxPpAuy3RQOMY9NW+w6/9dV5RePzT?=
 =?us-ascii?Q?XVUjPC/4OpR9KyzJZ/KNdvh/LG2O8a3WcihresxeXFRONt0v1wY8I563aA8s?=
 =?us-ascii?Q?Vh7Pi0/gS15oNmz/toxMOjnO8K5NAfLWMyu3AfzKT6o/rV0uou+kYDpP258h?=
 =?us-ascii?Q?04DLXAzZleEIHq1lNldM8OJONR13fjJBgjdCTnhKMCil7oeZWJ4TSsTwMl5t?=
 =?us-ascii?Q?WK6whG9NajHudHXZR20n8Nhcf68OXACRSh27f8C7WJJ6oti969D6gDxktxXg?=
 =?us-ascii?Q?J0g0ecGuF4K36EPZ+l1l1LvBZMb4VBwaiYm9hnh03fgP/tEDrH12rD1YYpLr?=
 =?us-ascii?Q?8W9bKk5pSyLMmQUyvfIhL0/eoUBJmtm3EIiU49nD9kyojCHSUTg30MP9Phd7?=
 =?us-ascii?Q?Y5BWFZcVYXsk84o7lFunjVVynuoE167agf1Nyxs1D4zhPCEXCVOiFqwFTI3u?=
 =?us-ascii?Q?Cisv43lqhW18SM6tp9twWF3QwaYLK8VtCtXgr7UkJDjyqMko1zUDM2Z0W9M+?=
 =?us-ascii?Q?V1O/NoYNx1HMdnSapkEURWHmbrmthDvUSzZevrNY9GX9ZAGyyKFzoEri3ewU?=
 =?us-ascii?Q?YhaW8HNcfh+wm3xtbnN9J9EcO4id0Ksq9NG9Z2vR7MNgRrttlbHveoV4e8LC?=
 =?us-ascii?Q?XENrVKo8Fg8D8Twg056dHxlM2K4z4tgeLdKd+daFHxfuxh0I259l+q34ksVX?=
 =?us-ascii?Q?ukfiAmHhv2C3/6GYlX70AjDpHU38f50U7hovaWFhLmNpfNWou6UG+NpKosYU?=
 =?us-ascii?Q?XQsArJl9M4IOsc7InKb4RytaKNybkdSQw8krIbAYwAfHl8sfYB3TgP0KqVD/?=
 =?us-ascii?Q?probtVtyRYDjfbK+cT+3zz/1o3aAOUziLS2fH95LQ0Qqm8gdqwHIAlX1LCDH?=
 =?us-ascii?Q?5gxDP+XliD6zi00gwf88Y1k3JuMcohKctRzoJn2sxTcOBtT9SBzpvt3HUyak?=
 =?us-ascii?Q?vRY9YonuHUWL4HgQ+Y5uoDKXIH82kj3Qizlo1ATYM5bseKtnBnH6FNA8U2sS?=
 =?us-ascii?Q?dHv1z0CT3D5yWbfGhrYL1EGpPYB+OUoODd32mI1zxJIGpW1XquoOAlYcoLko?=
 =?us-ascii?Q?tUJjsO7NhFeeptBehBbipADoXZvVYB+nSZWQrdwbO2Ic3nIQKbGXesAJloa2?=
 =?us-ascii?Q?LemTMpsz20KcjiKe4vdxlE+uIzNPkUNN7i8gCTt4uZPFfCmkfeD7kBIJjEvc?=
 =?us-ascii?Q?NQYpMXRcNowTgNkWx0gK4AJbSlXyGjKReiAfq/67AoCmsSG1m80reydi5M/C?=
 =?us-ascii?Q?tQWxNn3qPi53fMIlgWAjhziO/6bSuWkJvN6SBfWvN40kb4gsxAqr6Fqwcn4X?=
 =?us-ascii?Q?QpCXUCXJXFSXlCestZUzpFpB5WOl1KmpSP8Mz7VvbXcwWDdVlXzKCbPrsUCP?=
 =?us-ascii?Q?igbR8G9c1jwQRvdBO4rmfvYZ4Pvsl/C4hyUWHbYlBvX+/1rtyXrtx3lqKr4n?=
 =?us-ascii?Q?0AdlMN7FtDH99Gp+wHdLOZpPL5tQSbg2AaKx5L6nHO2kWdhnOw8Y+XnnRI8F?=
 =?us-ascii?Q?XTl3zg9bHxz0phabpf4=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a120248d-c303-4c37-2baf-08d9b39061dc
X-MS-Exchange-CrossTenant-AuthSource: BL0PR12MB5506.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2021 23:31:34.9182
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GzI8/mSkYXICL2FAC4r6xn6fLgB0CyPpVBssGoN/KdITybX902bHKRE/skhT9anU
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR12MB5191
X-Original-Sender: jgg@nvidia.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@Nvidia.com header.s=selector2 header.b=BPxRiq2Y;       arc=pass
 (i=1 spf=pass spfdomain=nvidia.com dkim=pass dkdomain=nvidia.com dmarc=pass
 fromdomain=nvidia.com);       spf=pass (google.com: domain of jgg@nvidia.com
 designates 40.107.244.86 as permitted sender) smtp.mailfrom=jgg@nvidia.com;
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

On Mon, Nov 29, 2021 at 03:27:20PM -0700, Logan Gunthorpe wrote:

> In most cases, the NTB code needs more interrupts than the hardware
> actually provides for in its MSI-X table. That's what PCI_IRQ_VIRTUAL is
> for: it allows the driver to request more interrupts than the hardware
> advertises (ie. pci_msix_vec_count()). These extra interrupts are
> created, but get flagged with msi_attrib.is_virtual which ensures
> functions that program the MSI-X table don't try to write past the end
> of the hardware's table.

AFAICT what you've described is what Intel is calling IMS in other
contexts.

IMS is fundamentally a way to control MSI interrupt descriptors that
are not accessed through PCI SIG compliant means. In this case the NTB
driver has to do its magic to relay the addr/data pairs to the real
MSI storage in the hidden devices.

PCI_IRQ_VIRTUAL should probably be fully replaced by the new dynamic
APIs in the fullness of time..

> Existing NTB hardware does already have what's called a doorbell which
> provides the same functionally as the above technique. However, existing
> hardware implementations of doorbells have significant latency and thus
> slow down performance substantially. Implementing the MSI interrupts as
> described above increased the performance of ntb_transport by more than
> three times[1].

Does the doorbell scheme allow as many interrupts?

Jason

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211129233133.GA4670%40nvidia.com.

Return-Path: <linux-ntb+bncBAABBR52YPXQKGQE7VBIYVY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 30E6F11AA81
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Dec 2019 13:12:57 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id q17sf8898644qvo.23
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Dec 2019 04:12:57 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1576066376; cv=pass;
        d=google.com; s=arc-20160816;
        b=AfW4GOA9lN40tbUZKAi2jzLLdgmFTZYjpRlVBux+3mc1D1hD0a692oxUP008tnkKXr
         bsjHICFmzrjiEwEKYNkTeDDrVXTVQMjtpYWZzdTRrunIjGqXtJObrPkZCzDRJV+bFWZ1
         MkNMInzNKl7mEiaYBwFexUPlZmv6elqxWXLUcXhwxSgBozsi9gJ9pr1sWoVgFsRwbmLx
         /anDkx64SBfUfh8rB6TXZWcduok87fC2yPqb+cn8/1Rkipqz7ckkvBdEC22y1kmx8Cwb
         Ha+Om9fGkrObbOPsWa+r5eyjdn8ZJlUSorl/NEzwRNhQZuNtoZpUq9/O+FfFpBKzy2Vx
         kQeA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :content-transfer-encoding:in-reply-to:user-agent:date:message-id
         :from:references:cc:to:subject:sender:dkim-signature;
        bh=yd98q+h3H7OlYN6EpW0bnfJ6UoDCNLnFWk+Aksixyeo=;
        b=KxgG+cVRH8CHNmWS3JIbHXNbJ2d2XKawkS1CkIkEq9pTKdUqFlbglvbBgrtyvvpne0
         3cucUA3JjtujTspY4VA4PmbgElNVcuYMDWGApAUlvT/luPMO+cKQfe6AAKajBFRUVeUn
         6XXZaNhqysJiD1rpVHwSOhGdV73kLGH27eCP732lmgn/e1jXUjm/kEE89OuUtgJIR75R
         l2RSC2J6BytuIPJVAT2EkLukTl0KkOq08e8+E8NaIKray+QMP/s2ZZ+ZaxolFgF5taP3
         bsNYCeGV26rvL/8aKQb+RMTwMXazJd6MD4u0QSd1sUrBs9bEsB9llkj6Ff+pRDPsBFWd
         3IbA==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=02mGQ+kd;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.69.73 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yd98q+h3H7OlYN6EpW0bnfJ6UoDCNLnFWk+Aksixyeo=;
        b=MOne2UsYRaOUcNlxwLnuyBlnLfc8ORRiNYOp4ca7gYwF59Tf0U5jG2gE8Ic8tXKb0E
         2clGBigdBAY8yXoUGNm/pQ8HB+VNOjWsWa4DP6RPwrY+yp/ySHRxu/gH6Np2SJX9/VWW
         fvkUOPJMXgQe8kD6OYxPYlTx2lz+phd3PcbsHqjDUE8pwXPGOoJyrQZK5XQH38MAWpes
         xCyn3VZre0xFQQlRN126KSwp+K3o7BRfiNHw2YUh0TN05c8YbEzfody8KEiiHpBMTITz
         yV9mo5MTOPUtAouMT+6fbz8YCNkf2T114mHy7szJasF9GglcGuTh8hHhygGFtl79GEE8
         WeVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-transfer-encoding
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yd98q+h3H7OlYN6EpW0bnfJ6UoDCNLnFWk+Aksixyeo=;
        b=lXM1kIB7m7EULv3+5O54kxX9mC2YlcPTIG1l3VHNVxG7dAKiESoOXz1swkVRVNFrW9
         2JUKrJVFLTvt7PWal385Mcn8BDkVJLP/BwGAX07nBpl0y7OjShF79eNqDzzjfCQU1T17
         YjSypms+oj9Q7ZMznhHR3WTT/JIUkMvQjW6vS6/dDv0TcXoMlxWreFjcb+RXAmbiDFd4
         YA2nO6Khz0cTKjLqpp4SFx9DWPmov+DEtLWQgXMTSk9c4BhmK5YxUhcTKZgFGZhzTaHy
         PDGDM/HO67HopfkTvxbj4pbZIr+vWd2llHDC4lY1/ktippP9YmyzzvLifk4RfdZSCTe4
         R9gA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVxrdz0sfs1mT1mZhdFHNuSgBoRCqbDxU0CzU0pvLHUtueCOk85
	ufXWXW+hJLvT4YsulJbUF34=
X-Google-Smtp-Source: APXvYqzk7pUdvm1Rfg2MTc4RQIQBhpdQH5plozxRLgtAUfgCWUog1HvdRrKVG12rEYOzPXZLTkQBfQ==
X-Received: by 2002:a37:4e04:: with SMTP id c4mr2517214qkb.75.1576066375746;
        Wed, 11 Dec 2019 04:12:55 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:9ec3:: with SMTP id h186ls563438qke.3.gmail; Wed, 11 Dec
 2019 04:12:55 -0800 (PST)
X-Received: by 2002:a37:6346:: with SMTP id x67mr2588888qkb.476.1576066375356;
        Wed, 11 Dec 2019 04:12:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576066375; cv=pass;
        d=google.com; s=arc-20160816;
        b=xuLL8fS+9x+fhNtJLSSPLBEp4CgpDJQBh6RNcautyQrDJ8evkOKRfegkRMFU8Oi/yj
         mgZeTJr+hEBuqgmMsVOaM3EsVawxhYpFl/RzQcboI6Z2ilCWY/2ZhfWtt+DfJ5YlWp/8
         Z7IlxOD/JC1rH6KgRXUv1PCYLjH21meNRdkWvdZniWzfmdTrXWRgSJ+Dx2pDV1EpQ7yL
         ALh2yDBM4xLLlzobStWKGwPj3dAnfvoVAsEnnpY9KuwXbNyCH5rVdaa4UHhhgxR53qy3
         pM9jQxahTbpM+bfMuGb4jG4i67YVYaMWRgJtovx4ohD6j7Y3iFssZDXFVru/MzWE/Wvz
         V6pQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-language:content-transfer-encoding:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=JgDwmdfGpdt75eJ8asuQlamJJKdo6gEj2e8PZ4pgJhI=;
        b=gtrTz5Tlwdvh8PbdgOMaUgRk57qWoFWGUYF6oHgnc0kKvWJ5BUUeo2fnUQqHgI4OLm
         ohc54ifyf3PCTBPRTTKOYxGilSj2pFMJr29yRhFylJGLznzwVqp3IG2HhfSKRwqbhz5k
         4W35eKZLuDzw5wa7qclD6UBzhhY48Lu8cwm666M/Yj7EB9A5bBd8y87IUITLUBjfv3lY
         NDi82GV2N2hhehMBTetebi3oJMk2jnBQ69s7dRzot0N1QUnUy7kr3BNXLzyJBYQHaLKS
         UnNG7/xEkv7bsXfO2wmFwwbHpGEW1EvJkyWKvzJLoZosTUa4eONatydX3llbNminPoYI
         cg0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=02mGQ+kd;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.69.73 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (mail-eopbgr690073.outbound.protection.outlook.com. [40.107.69.73])
        by gmr-mx.google.com with ESMTPS id d135si38743qke.7.2019.12.11.04.12.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 04:12:55 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.69.73 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.69.73;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lu6GawxZbCmOKLULY7D9wt6iuqT310SyUGHFtDdBlwgvH4xV6srDnXVORbVDUoVfwsifDyIh/6IQ0nrqh9/x4du3U74FCh3xxfAeSQJ5GRtUEXHlp5ETk9oqJn3erboAordfsrFRhVboctSDVLQDRGRO9qBroXYQPeJUEa9Lq0q0urklKTcNQaZ2HkCmgx1huWUAPiPTB6hTIEE4Xx6mul2gy8GE6s/CPfQ2+4jejPm7eRe11ggCXnodb7dw1HjyL4ekk5hBxsCj3gLeR6LXbjdd7WyKPXUHj/DkJD/t6UypaUEHk6NCLLn+18Lu9lEA8qXURKe75AW7jHIZhNYKeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JgDwmdfGpdt75eJ8asuQlamJJKdo6gEj2e8PZ4pgJhI=;
 b=gmnJjeGn8Rtcq/e1lZa3GJPw1z7RDCfVXuYhF7c11OPrkRB4lYenUk+U8V+4S2i+//geCzy9ENb9vtuMdiyHx3Y0mIuRp7SbsEuT7kvgHgoOYRO3FCWolXQKfsP+Pz3/r5pQCYvSQywfLRbXnupDgwj/7keHlG0+up49lgf3PlO8Lj6WH5uppnfRkb0JbTimn5RM+YxoQYYqXl2NDaggisU0BcO6llP9NGtoSGsFPPHZeKgnk+f9NjVWjoJA33+Wp32oQNhq/jj91LsmfnsXNko2faz7c32a3g4fMsJZADu9jn3IJBctu3s6ZQbK792017xJmcy5PNrpfwMJfqE8qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (20.178.244.22) by
 MN2PR12MB3967.namprd12.prod.outlook.com (10.255.238.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.16; Wed, 11 Dec 2019 12:12:52 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::1900:6cb7:12ff:11c]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::1900:6cb7:12ff:11c%4]) with mapi id 15.20.2516.018; Wed, 11 Dec 2019
 12:12:52 +0000
Subject: Re: [PATCH] ntb_perf: pass correct struct device to
 dma_alloc_coherent
To: Logan Gunthorpe <logang@deltatee.com>,
 Sanjay R Mehta <Sanju.Mehta@amd.com>, Shyam-sundar.S-k@amd.com,
 fancer.lancer@gmail.com, jdmason@kudzu.us
Cc: dave.jiang@intel.com, allenbh@gmail.com, will@kernel.org,
 linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
References: <1575983255-70377-1-git-send-email-Sanju.Mehta@amd.com>
 <fd958d1b-5abc-b936-2f21-429326a6e5de@deltatee.com>
From: Sanjay R Mehta <sanmehta@amd.com>
Message-ID: <c70955ba-516f-19e6-6dbf-3bf864114fb1@amd.com>
Date: Wed, 11 Dec 2019 17:42:40 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
In-Reply-To: <fd958d1b-5abc-b936-2f21-429326a6e5de@deltatee.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-ClientProxiedBy: MAXPR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::16) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
X-Originating-IP: [165.204.157.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e0e1a932-36b9-4829-fb02-08d77e33723b
X-MS-TrafficTypeDiagnostic: MN2PR12MB3967:|MN2PR12MB3967:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB3967DB4834B8DAA57CCA8430E55A0@MN2PR12MB3967.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-Forefront-PRVS: 024847EE92
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(199004)(189003)(478600001)(966005)(6486002)(36756003)(2906002)(6512007)(81166006)(8936002)(4326008)(81156014)(66556008)(26005)(45080400002)(5660300002)(6666004)(4001150100001)(186003)(66476007)(53546011)(2616005)(52116002)(31686004)(31696002)(6506007)(66946007)(316002)(8676002)(110136005);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB3967;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vmJss8oxY9j/DcOSLXQxZZzdlPpUim/Fm1OmsIQWFkvWOEIkhhFPFenkrWcCfqqxzQWCFC7bJMnsXiiORlh/6RxVAAnu1uysyICkdWp00N59GB1sR39wCmEPCIA/PpbKdN91ULpOo5K3JvVwVCPG8HoICLVyimbM6Pm4y5KAP/JRh/PhY7iSUsAxqpD763AqsDef+F0Tb3vI9gmsMD4LK4comb864FYJl+q1A+cPuffjQffsJhwp6Kt/EzEVrbhpdOvA+Vi5oUKSzRc4+SwhwmLivKUPTLT+kiqAiynUD0Vb9jUmn2Kj2Sx1phGA6gPk3+uev7altaLJb3KkRuQ4UtnpKTpmAaQC3L3A+QeX/nXUeecy32upKJCmEC25mf2dE2HUJvp5aMYLeorYidorphl6MqqRNwSKA2lr40/5X4AYRIi3AvZY33uHx7qEIgpXRyD2OlTbsXjSI5pIU+XxNYXGveymRh11zcss6p5sgRU=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e0e1a932-36b9-4829-fb02-08d77e33723b
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Dec 2019 12:12:52.2769
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sqFuiEVWcvNOr9FDB2EK9FwSGIToe86sGyHTb5bKFkQLqbyVwkCNQKGQcpmY1wzxAw142t4UtRkCf/sbYQ3r5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB3967
X-Original-Sender: sanmehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=02mGQ+kd;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.69.73 is neither permitted nor denied by best guess
 record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
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


On 12/10/2019 11:01 PM, Logan Gunthorpe wrote:
> [CAUTION: External Email]
>
> On 2019-12-10 6:07 a.m., Sanjay R Mehta wrote:
>> From: Sanjay R Mehta <sanju.mehta@amd.com>
>>
>> Currently, ntb->dev is passed to dma_alloc_coherent
>> and dma_free_coherent calls. The returned dma_addr_t
>> is the CPU physical address. This works fine as long
>> as IOMMU is disabled. But when IOMMU is enabled, we
>> need to make sure that IOVA is returned for dma_addr_t.
>> So the correct way to achieve this is by changing the
>> first parameter of dma_alloc_coherent() as ntb->pdev->dev
>> instead.
>>
>> Fixes: 5648e56 ("NTB: ntb_perf: Add full multi-port NTB API support")
>> Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
> Yes, I did the same thing as one of the patches in my fix-up series that
> never got merged. See [1].
>
> Hopefully you can make better progress than I did.
>
> While you're at it I think it's worth doing the same thing in ntb_tool
> as well as removing the dma_coerce_mask_and_coherent() calls that are in
> the NTB drivers which are meaningless once we get back to using the
> correct DMA device.
Yes, What you said make sense. I will address your comment in the next vers=
ion of patch, but I will break them down into two separate patches.
>
> Thanks,
>
> Logan
>
> [1] https://nam11.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fl=
ore.kernel.org%2Flkml%2F20190109192233.5752-3-logang%40deltatee.com%2F&amp;=
data=3D02%7C01%7CSanju.Mehta%40amd.com%7C1f043932c1c1425a836908d77d96e265%7=
C3dd8961fe4884e608e11a82d994e183d%7C0%7C0%7C637115959326469198&amp;sdata=3D=
BoDyfqTML39JhIvO7%2FvYGnKNRKe2rSKgZxJ0uT6dtsQ%3D&amp;reserved=3D0
>
>> ---
>>  drivers/ntb/test/ntb_perf.c | 7 ++++---
>>  1 file changed, 4 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
>> index f5df33a..8729838 100644
>> --- a/drivers/ntb/test/ntb_perf.c
>> +++ b/drivers/ntb/test/ntb_perf.c
>> @@ -559,7 +559,7 @@ static void perf_free_inbuf(struct perf_peer *peer)
>>               return;
>>
>>       (void)ntb_mw_clear_trans(peer->perf->ntb, peer->pidx, peer->gidx);
>> -     dma_free_coherent(&peer->perf->ntb->dev, peer->inbuf_size,
>> +     dma_free_coherent(&peer->perf->ntb->pdev->dev, peer->inbuf_size,
>>                         peer->inbuf, peer->inbuf_xlat);
>>       peer->inbuf =3D NULL;
>>  }
>> @@ -588,8 +588,9 @@ static int perf_setup_inbuf(struct perf_peer *peer)
>>
>>       perf_free_inbuf(peer);
>>
>> -     peer->inbuf =3D dma_alloc_coherent(&perf->ntb->dev, peer->inbuf_si=
ze,
>> -                                      &peer->inbuf_xlat, GFP_KERNEL);
>> +     peer->inbuf =3D dma_alloc_coherent(&perf->ntb->pdev->dev,
>> +                                      peer->inbuf_size, &peer->inbuf_xl=
at,
>> +                                      GFP_KERNEL);
>>       if (!peer->inbuf) {
>>               dev_err(&perf->ntb->dev, "Failed to alloc inbuf of %pa\n",
>>                       &peer->inbuf_size);
>>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/c70955ba-516f-19e6-6dbf-3bf864114fb1%40amd.com.

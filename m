Return-Path: <linux-ntb+bncBAABB7UF6XYQKGQEQGHECIQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A163155631
	for <lists+linux-ntb@lfdr.de>; Fri,  7 Feb 2020 11:59:11 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id y24sf655049ljc.19
        for <lists+linux-ntb@lfdr.de>; Fri, 07 Feb 2020 02:59:11 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1581073150; cv=pass;
        d=google.com; s=arc-20160816;
        b=jjTbKrenetnwq3PxwMaoxDsvaMC/uUSvhZXRfO5fTxUzt2Nn+L+54ulcaTbjmY1hw+
         uLDXMV7IEuzY8YxnDWqupieskz/rgXPKvtOkDYy8nqbyi5MmIsNC95SEnlMFGk1PIQ1G
         Hgt73LxVc/s2ST9joYn6TOY/iguRxxLHn+a/pNbABnAGSSEQv/4arY/TY0mnt3ZIacpE
         mfqG3Rzz1BzauJMWiuGIOenNqBiQJiHEVyvqXo8s2W/32gynlgNK9CqF367VOz8rXd9J
         nmkmCbqyNsXMHTQP9IPg50ejbIn3i80bCrCjjYwNCuvHTcUanrtkFeCxSH/z1lF6FAzy
         5jcA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :in-reply-to:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=N39MPhYNIUWKBNd3Xe1U2jJFLzrV2hgp5ni2AAGfmlk=;
        b=JN2yU087pA1/TqT7bBiY9gOcNG9Z7s3Vte0G2vtyy4vFhgfPcBSHdG7BtfYeqdwXyg
         rADrCEq6Ad24/9x3Ft3zCHPhRg9ThL/TYLyLJcoTij3MEU1Lo7VPKMVDBvjNOl7C4CsP
         FwBMkMSJlEryCfVwgEMKPuSpI2B0+sQK6/V2wPu3jM+VZ4Jpjs7sEJB56pgUrzeJRvCk
         nlqc13n9cldkUUPgc9rZiiasOXrKH2K8ivwpLc79o3hrauOfJalaPP6FD8B2Eo0xR8gJ
         nq1Q2kH8c4kjdvcKPAq8aHJG/5kVusgoOohfn+fMFHv0RHghjXsMQ6qj4Zr9Q4mPy2B+
         CGfw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=n5x3XP+Q;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 2a01:111:f400:fe4c::61d is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=N39MPhYNIUWKBNd3Xe1U2jJFLzrV2hgp5ni2AAGfmlk=;
        b=pbfJx9BfAdWOotyNag+2ggIcSLAXqhSo2TPAMtib2Yt+KbdrIgrfhOuUdUV79f7IXG
         uJRpL6P/92AUcQlenEIek5UrGrXKRZrGHEPnIlM/1yODYSF3w1Puh7AqX+OG/93l1q0O
         a20KBOldUcD95UpLqN12cpPLcTOUkz2g0uQNZgPJ+ZWEvCVOn1D9lT40p+bsckqLoAS3
         zj79VZFVUZBHuvnhzA2eROC4T8NjmdKjoJ/R8QkJOAMYM4gWceCvJH2h04XCaSrlo8ug
         7nJ6RF7eh+xI/EqyDgfm3SeAsyOpX9BsBZFlnGrTiMSpOx7gAmhB545YxRB7NebuJ20K
         +PPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:in-reply-to:content-language:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=N39MPhYNIUWKBNd3Xe1U2jJFLzrV2hgp5ni2AAGfmlk=;
        b=iJbJeZ4itSCcPKFuyx6RACPd2ejEg21lJeTRbshnk5wncEvil7TIbuRWWpl+qh7OnA
         86dhJQzpIWEEPVbLTX8ra8mJM+yw83tWfmfjAP5OUR8bw2mRoKK88JzDu/nq6N2FW/HG
         AsVLLcRO21Vz09KdcOmbbeiSLU16ve2GJccwA5IgHdt5PEC+khRMQCp8+qS41WJJNMUI
         Ni0+L+lhzl0TvbJrAuVuavechm7J3ol5/K2CUmcMeE4mc5BOYWUaKkjs6UcwzIr4Hoak
         M1Bag95u4woHNmbkIoAAGV1ZQFzKEMXOmH/nXaOnqXwPoIN2FWo+JR2kGJ6IFnPFCQPa
         VrDQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXaSVsYozJi5gKHCtrhvEPKnb1MQxO9xGDq9Xn6ts5vUAWHxGSN
	b9PvisnHT9w35RCQafQdCJM=
X-Google-Smtp-Source: APXvYqyBJeQDfqqWijK5DBKr1jYMHxFHj5xIhJeRpoGJGVg0doTVDbbF0KtxFhCRGPXzvdf6qhkn1Q==
X-Received: by 2002:a2e:a404:: with SMTP id p4mr5119735ljn.234.1581073150738;
        Fri, 07 Feb 2020 02:59:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:8488:: with SMTP id g130ls1408206lfd.11.gmail; Fri, 07
 Feb 2020 02:59:10 -0800 (PST)
X-Received: by 2002:a19:5007:: with SMTP id e7mr4254341lfb.153.1581073150327;
        Fri, 07 Feb 2020 02:59:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581073150; cv=pass;
        d=google.com; s=arc-20160816;
        b=IbAUyrzdL1WtAHhKHRdCBCCpJ+PaIZc1JKtV+f19IN2t1wqUYbQi2cbeSWsp9Ec4Ju
         A4g2LrzMEQEhrN9XoAa46utXF4YY6OXYZvk09yTTAo1/hEIL0zPyy1zZF1k/1MLPdzbo
         LoRUZblUmVA56o1CcPdy9KsVrl2DVJ7t5lsam6/0ammZzzyLJ/Y38QnDCokkAwfK8AbC
         m2IQjkfblObtAzcY0hXggrkRkVT5R2tSU6VgIcNtRJUXGi+fYA5MViPUr96kLupRDtS8
         4+A/cbS5DWmeS+HutZoSdIP36Les9n2Q15uU4DqFVZoTJ8lXRu6wGmBJ3fo3coABYHyX
         YmdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:in-reply-to
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=gAvNHMF3BEEuF+jyQajEGgnJAK9RgQfxm38MIWoMBy0=;
        b=S208LD6FZYbJIKDnxZCCNWCKBs8pgQBkJQCsgiAzqZjCOIMlJMbJE+YWtRIkN7mlST
         7isUWFDITaypX2i3IDThHXj7idiheP0VIxJpjPjOEugk1EEdfOu4ish9VkSf/MobAXW3
         HG74tkdVRSrTHLPziUMM/M1SCSVUEWnb/KvLtCLRPokX30an43v9oOXMfiOPf8bv6VsX
         SGDeihk1d3l3sXhGJYykvcbS0spHLkLvaK6cpxG5hgXnOFJ57e3obWr8HhmGf1OGB0Et
         WwUNE/iVn9lOayvwBAJUGq2fuLhN9Rl1yBXhbygcnHKhJ4jUkWT3IEBEFQ5q+3o5vvac
         WFvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=n5x3XP+Q;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 2a01:111:f400:fe4c::61d is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (mail-sn1nam04on061d.outbound.protection.outlook.com. [2a01:111:f400:fe4c::61d])
        by gmr-mx.google.com with ESMTPS id x5si105926ljh.5.2020.02.07.02.59.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 07 Feb 2020 02:59:09 -0800 (PST)
Received-SPF: neutral (google.com: 2a01:111:f400:fe4c::61d is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=2a01:111:f400:fe4c::61d;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L5WffLa5vFC9DGAzuUNoNrOlHzmMdzNBJx7gqhTITMZYsPC/Ab9qR3uFUhst3ihBTuxQ3FGWDi0h5h2X5YwPJZ1+lFdhNov8a36t7+zymchz0FKxItwtMgrX90IbdFsVtCjBh3WnlSVZJxGU7xRQ8Egy9vXscbGKLVTdMvr7tEOVE2Wh0CaguBpnFUadAOwQHkaCQ7O/aixhQq7mcS4AHhz/lHKlhzazoKKKipgcBJ0VDrJM7iMrGSzAcOrNZMDqZmgW0JZ92xyQhG54UfdUsIzkrGzjjbQll4BmI7Vn9Hm0k7ZpSgqMKem8WxR83/DIlOaZEd7Pb/cl3fZSosAoeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gAvNHMF3BEEuF+jyQajEGgnJAK9RgQfxm38MIWoMBy0=;
 b=mbbji3YNqdUzH9D3drGdCxWXdPouAGOUjt/0JV2WkU5WuA4so1FD17dMJSDga5pRVsHruKs1hxOwoqxCeBWURPkyrj85LW29bBHpVkwwSeqVfertBYXr8TU+9JtviwBiarRCfQ6fKWZlyLXtWtMGqNkShydjFmuPVi+q3tPXYZDjayXTNbmVe0+llQHnexVgYUCgDUCjh0o9KQDjsx3rKNgs1Zae8I35Zk3zEbOjjfuQoOAj3a4ju+lZRKwlsIgPy4vcRaG/k+WEPcBj9fHYeFFD8X02CFDRR74WRDpSmr8wYrAJwNCr/oRsSO/UOAThXuS97ej4OrVE9yzcfBa+mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (20.178.244.22) by
 MN2PR12MB2944.namprd12.prod.outlook.com (20.179.81.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Fri, 7 Feb 2020 10:59:07 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::1900:6cb7:12ff:11c]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::1900:6cb7:12ff:11c%4]) with mapi id 15.20.2707.024; Fri, 7 Feb 2020
 10:59:07 +0000
Subject: Re: [PATCH 00/15] AMD ntb driver fixes and improvements
To: Arindam Nath <arindam.nath@amd.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Jiasen Lin <linjiasen@hygon.cn>, Sanjay R Mehta <sanju.mehta@amd.com>
Cc: linux-ntb@googlegroups.com, linux-kernel@vger.kernel.org
References: <cover.1580914232.git.arindam.nath@amd.com>
From: Sanjay R Mehta <sanmehta@amd.com>
Message-ID: <a8e98fe8-25da-3ea7-a204-2fee07c6061a@amd.com>
Date: Fri, 7 Feb 2020 16:28:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
In-Reply-To: <cover.1580914232.git.arindam.nath@amd.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-ClientProxiedBy: MA1PR0101CA0002.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:21::12) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
MIME-Version: 1.0
Received: from [10.136.17.236] (165.204.157.251) by MA1PR0101CA0002.INDPRD01.PROD.OUTLOOK.COM (2603:1096:a00:21::12) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21 via Frontend Transport; Fri, 7 Feb 2020 10:59:03 +0000
X-Originating-IP: [165.204.157.251]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d9cf9741-f873-49d1-4987-08d7abbcc07c
X-MS-TrafficTypeDiagnostic: MN2PR12MB2944:|MN2PR12MB2944:|MN2PR12MB2944:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <MN2PR12MB29448EE95FCABD4E42934BA7E51C0@MN2PR12MB2944.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0306EE2ED4
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(136003)(366004)(376002)(396003)(39860400002)(346002)(199004)(189003)(186003)(16526019)(26005)(5660300002)(52116002)(36756003)(956004)(2616005)(4326008)(478600001)(81166006)(81156014)(6636002)(8676002)(8936002)(53546011)(110136005)(2906002)(66946007)(316002)(66476007)(66556008)(16576012)(31686004)(6666004)(6486002)(31696002);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB2944;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: J32Rmqfiq9DTZ+R9uNT8RvHE3RRJzaiZf8f9IP+xljgbiJZFIeFW4ntpkaA4mGwNolYLC78eantxy37yjQnMVmYIBA5Otp5HvGIaqBNi64YUTU1GMyDcJ36+56QyLLJPqXVx2MnsXfg7i00MkLQNIkP4anFT9XpejQkLRieTYcP0A00hO3ULOhtB7WG5qS2Uo0EUt3I4sSpQFwBLxThQv8qi8re46v1GSHf3Zx+JnTk3fL/UGlpOi9GIvBrZReaiss1T2i/Py651S+DchdhW2lpghjuxSVtFd7gjPxegFi5AQpa6iUaD2StnYM6CeJUsSSzA0X4AaTfL6/6GJhbE9PJtKbRfFREPjJJzPa8R8OlulQAu7/SO/1NOAY7pUMKRF9J2SaWYgmxp6We/juTDLnE5yJewN1hlqlBQ6s8DtmygP7mL0YGW5Yl/MKHOnAYg
X-MS-Exchange-AntiSpam-MessageData: hukhYf+ywiGhemx4sf+yd/2N+NE8gtGLpBb2/XNwtFNexvhGk+q/s55dJh2gwhpTvZuihNf7Z99Jpk352xdWuOkstqq3Ew4tRFB0WeMToLBAFSZ4UKGud1SPB3yde+l/VFsLV1GKRJX8/u3Kx1NOkQ==
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9cf9741-f873-49d1-4987-08d7abbcc07c
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2020 10:59:07.0834
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6r79La5wWPGuxwwwJNhkwWgQ9rKYdm0dNPl5s8yImPeMC8KQXolBoBe9xxV4goLudHTyblvvoZIcUGj6rQLsag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB2944
X-Original-Sender: sanmehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=n5x3XP+Q;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 2a01:111:f400:fe4c::61d is neither permitted nor denied by best
 guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
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



On 2/5/2020 9:24 PM, Arindam Nath wrote:
> [CAUTION: External Email]
> 
> This patch series fixes some bugs in the existing
> AMD NTB driver, cleans-up code, and modifies the
> code to handle NTB link-up/down events. The series
> is based on Linus' tree,
> 
> git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> 
> Arindam Nath (15):
>   NTB: Fix access to link status and control register
>   NTB: clear interrupt status register
>   NTB: Enable link up and down event notification
>   NTB: define a new function to get link status
>   NTB: return the side info status from amd_poll_link
>   NTB: set peer_sta within event handler itself
>   NTB: remove handling of peer_sta from amd_link_is_up
>   NTB: handle link down event correctly
>   NTB: handle link up, D0 and D3 events correctly
>   NTB: move ntb_ctrl handling to init and deinit
>   NTB: add helper functions to set and clear sideinfo
>   NTB: return link up status correctly for PRI and SEC
>   NTB: remove redundant setting of DB valid mask
>   NTB: send DB event when driver is loaded or un-loaded
>   NTB: add pci shutdown handler for AMD NTB

The patch series looks good to me. Thanks for the changes.

For all the ntb_hw_amd changes:

Reviewed-by: Sanjay R Mehta <sanju.mehta@amd.com>


> 
>  drivers/ntb/hw/amd/ntb_hw_amd.c | 290 ++++++++++++++++++++++++++------
>  drivers/ntb/hw/amd/ntb_hw_amd.h |   8 +-
>  2 files changed, 247 insertions(+), 51 deletions(-)
> 
> --
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/a8e98fe8-25da-3ea7-a204-2fee07c6061a%40amd.com.

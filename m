Return-Path: <linux-ntb+bncBCJ3VB4HRUCBBCUM6DXQKGQEV2HAFNY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 73F0F127159
	for <lists+linux-ntb@lfdr.de>; Fri, 20 Dec 2019 00:21:47 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id b5sf5380807ybq.23
        for <lists+linux-ntb@lfdr.de>; Thu, 19 Dec 2019 15:21:47 -0800 (PST)
ARC-Seal: i=3; a=rsa-sha256; t=1576797706; cv=pass;
        d=google.com; s=arc-20160816;
        b=v8tdSHyBrA5Muoub8YS1o1wlbtyOycMEozYlm+e8yEVpHtIrc5OjbbHE2m8tjyowib
         KhADiBZfdeLxA+8fu5XE+TuRuyaw9x8olSgy9Zbl/PBW/Kx9o4wtqi7gvWOZJYiS6JjX
         0AoSs38QA2vWSeN5iS4Usm+fO9FMv/dag/UN49MJ1LPSPQ0WN0HPEJblfBBGUuEo/Gvr
         GK+8pEPbegKQZRfG6FVtOpK+E6GTldxPluSyu3V1idhJWfogGKqbALx0tbeMH+Ot1GhR
         M7JVhkmvCNuPj74dohKXJ3hrV2Y4OOi55AwCqf1m24rLCHkZs5Da1xPL/W0ysiVa1D/h
         9NqA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :user-agent:date:message-id:subject:from:to:sender:dkim-signature;
        bh=2tSm+ndMqpv2urvl7V+7VsUTlhCBZ0uZQ8y8IWPdozI=;
        b=A04ZsMYkVDCdaOBuMckVnQy4jSyEf0Ea+Bknpg7BZ1GHvpsdNSXEdbzn1gMpCAyQJ6
         Fy56fhtnUGptX3UCsdNiXpmIkbyUWT0hKYEoB5WfxCHtu6i4vxg4CZYRZLCUk+TxyR+K
         Vp7PSkmZ/P5CXJ+Xty7R2NxYrFdPlAldszibIqI0TAsIlogSjTtzl+sRA1uTWfcuDUX5
         NhUg07TktATzvGKWc45f8xGIzNVDkPzdxl7aPTxbWJq+yI2/WJF9k3E0+2kmqZpWkOv7
         +Oc6t1/rUr4ImNCmOy5KAdgU28rJk6nF5gq6NpfJGLlC+KrX0FGHsINcB6nKLJbyanMN
         J4fg==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=A05cmJ8q;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.243.81 is neither permitted nor denied by best guess record for domain of gary.hook@amd.com) smtp.mailfrom=Gary.Hook@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:from:subject:message-id:date:user-agent:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2tSm+ndMqpv2urvl7V+7VsUTlhCBZ0uZQ8y8IWPdozI=;
        b=R2i7pUqn1IZTHxCGkLJMH9ysYs7pKLEjZQDtscrk4L1/Rtczeb8G4gJP6GtnQbyMRA
         BQx+8fXypm2bDEtRGhW9rgne+lMU0WntAKb4HVBg6hhRhNQf30ytH9zNHgbGeOGx/jVc
         8hqNPi9f5ik1hT6f6MfVoCJJbFr6iN+ohGVn51byJnpy2KRf+9/M2D4CPLR+2llqRuWN
         S+IT+tcD56upYG4uIBlBj23EHKpiV9TpFQMPGz64YV2tVkdn9NV4Jb4nugrHYv+JWPe0
         61Rej0pk5JTCE+4kP97dSsuRQwRNonHaboV4fXfKg26BxzVEwRhZcLUpXcm4HMBSNhd1
         3G7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:from:subject:message-id:date
         :user-agent:content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2tSm+ndMqpv2urvl7V+7VsUTlhCBZ0uZQ8y8IWPdozI=;
        b=cpeDKp6xkG7AdFUZuyiFcpD3J0Hn3hHG396gsfrIIm2JgSrRdMK6U1K+pM15h/u7mM
         zU7d74nIsnx8Foqg6CT/EOjcM3OFc7JsEU4g0Aax1JMqg1HICRWKPJ1xM1EWO9EwS7xy
         nkjKdAdr8mtaKLSPnQE47TZgbBqJHrn31P6/Mo0lAZcCbmeOV82lW5MrByF/epHljhLi
         6B15xq3lsqLF/X3fAMvxqYi0nguQh/sRvzZmAgizZbCcxsCMgTMOw3INxD1ZO0eiLxHd
         6cgSqxFEwV4XRalmSkFN5O9OTO3I3pq8sTsbAaHuOnMRHwS1sz5yhCXby3E7LvcQ1tq9
         yFpw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXA1+1y1Ui3FExVY5ABLsq3dZv/zzy/xIAkHCedg38qNKDfaMS8
	KVp/XmVLeKQX2lsDQXmkn9c=
X-Google-Smtp-Source: APXvYqyUrFwsxb14ZT8CtzQnqYwaEEWbWlQOenSgL/QSeVN8pxJYgMeLAGo+Y9ULy3aYRS7U/tzHDA==
X-Received: by 2002:a81:5305:: with SMTP id h5mr8358009ywb.31.1576797706194;
        Thu, 19 Dec 2019 15:21:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:81cf:: with SMTP id n15ls1119547ybm.9.gmail; Thu, 19 Dec
 2019 15:21:45 -0800 (PST)
X-Received: by 2002:a25:3d05:: with SMTP id k5mr8835488yba.33.1576797705756;
        Thu, 19 Dec 2019 15:21:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1576797705; cv=pass;
        d=google.com; s=arc-20160816;
        b=DuVLuvjy3cDOXPruaSIgulO7wNNXy6P0DtkDUptZ+Sp/C8npnnsPIzOQ2M5PvGgKr1
         zWxOrRagFfUrPloPS0LVzmMGFe8BZNaAR/HubJJRaUOr5g1UQbTpUzIEmxL/IO3R05aj
         flXwj0a7N13oprnjGZGZD9CC7AbibR52t7hy+TlHkJbDJ3G0FtSz4+AlVEJ6f7MJYfUb
         HfYx78ydqJB7yOcnPDxYLo0xlAHn6w1d9H6Qgzy2mzrKPwGMJzlNasDhZlTZjMaONqtr
         OkoS5lqu/foBThmb0b4QoZbPDVSa9UKtcZb7LzP0gowu4UPrLGo3E4sjRE11Hk2OUGWl
         4pjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language:user-agent
         :date:message-id:subject:from:to:dkim-signature;
        bh=9AbEiE/pNS8NzVc1AGVAb6K9rrB1qFvMN36h7S0j4WU=;
        b=c6PiNMdIgCdXKmrruiOW/t87YevIPLuz0YJ3sGB20PynByHgebSn48GGMt09mNnLc3
         weRV+Sf0vFo4gFxPuDWJkR305lkDD21OnHKWCT2gs+EgMv5F0CbtmLfq1DiBV0E8ZVnU
         iJltSohB4rkEoKe1dcPr3D5jY6yF76ay3cKPb81sUo5C/hmebzHrtiCO4qbg7ob+yAeC
         vNba6pIcN4aZd/W51vet4FTSKyjJEqDlAoaATCzP17y8s72aYMzpgpz1tY2G5GG+cHQG
         d3XKBJRsydzQENQPWpTp3zBauS5+Kh6HeNxqsKMSsEocXw1ELnPQN4XcUna2Jwf1wZgu
         cz6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com header.b=A05cmJ8q;
       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass dkdomain=amd.com dmarc=pass fromdomain=amd.com);
       spf=neutral (google.com: 40.107.243.81 is neither permitted nor denied by best guess record for domain of gary.hook@amd.com) smtp.mailfrom=Gary.Hook@amd.com
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (mail-dm6nam12on2081.outbound.protection.outlook.com. [40.107.243.81])
        by gmr-mx.google.com with ESMTPS id j7si328589ywc.2.2019.12.19.15.21.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Dec 2019 15:21:45 -0800 (PST)
Received-SPF: neutral (google.com: 40.107.243.81 is neither permitted nor denied by best guess record for domain of gary.hook@amd.com) client-ip=40.107.243.81;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nDRB7sDwW6s6q1GdY0I/hCQpegopIsIegOLzipzyfn2Bm/fRxTbo9yryKDqHmTNJnjFVhj0GQw+1oaUHJXP4K+PdH7c0vZfiH21HsHvFOm59E4hcPMI9CJYJyJbNUaALVPm8RpKC0nYi6A14PS2IGkAfmn1u/MfNVlXoWq3uQcEtYpfowlTHdE2JOI6pQj7/f8mXtS7Vi78B06gnsoLRSFU53joELXqUhw4t2Q03AHYJW1lAfi7LICwdUNwhOEOwTqvGtGD5qIpsNJ+vB5d2835hWkW6lFBTh64Qc1AZIF4grFkC1UGrb2/AeCnXcDu8PifCjfr/3gmEHoXeGG2hPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9AbEiE/pNS8NzVc1AGVAb6K9rrB1qFvMN36h7S0j4WU=;
 b=UVhBi/CcBa1gMip1m8QL/QjzMkyeEaAyEtIaVDHrXuIL3Ml18tphH2DBDCVVEQ1EqUGysm255fmNbRqWb8h3L6bk9nOmechLe3FSAv4nmRbovb2+tH6Fmr59/M5OBirzSr2ILSqMYUfTYlMOjr+c2VNztHnUy+GdkCRLiEpykSd1LX7F2QeMg9wQWtERRhn4Mig1ImFnwsarkDHnqOqUhGiwNKT75bbkc7KBN05nMBQhvNxGpTrmcIjYiuZur3vxb04+KCo+in3LPAe1cbbvEZ6vFxmLF6ZByxRPZeIlwBVV50+DXRoCbr1yzUNbYFqFuM34NrKKg1saaVEUyFWWUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from DM5PR12MB1449.namprd12.prod.outlook.com (10.172.40.14) by
 DM5PR12MB1594.namprd12.prod.outlook.com (10.172.39.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.14; Thu, 19 Dec 2019 23:21:44 +0000
Received: from DM5PR12MB1449.namprd12.prod.outlook.com
 ([fe80::6d85:d029:53c0:ba61]) by DM5PR12MB1449.namprd12.prod.outlook.com
 ([fe80::6d85:d029:53c0:ba61%5]) with mapi id 15.20.2538.019; Thu, 19 Dec 2019
 23:21:44 +0000
To: linux-ntb@googlegroups.com
From: Gary R Hook <gary.hook@amd.com>
Subject: unsubscribe linux-ntb
Message-ID: <19a1e0b8-58dc-3e3a-36de-4be35e808cc3@amd.com>
Date: Thu, 19 Dec 2019 17:21:42 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-ClientProxiedBy: SN4PR0501CA0123.namprd05.prod.outlook.com
 (2603:10b6:803:42::40) To DM5PR12MB1449.namprd12.prod.outlook.com
 (2603:10b6:4:10::14)
MIME-Version: 1.0
X-Originating-IP: [165.204.77.1]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: a23853d2-8753-4609-994e-08d784da35f3
X-MS-TrafficTypeDiagnostic: DM5PR12MB1594:
X-Microsoft-Antispam-PRVS: <DM5PR12MB159496054A82D4AD5FF7F22BFD520@DM5PR12MB1594.namprd12.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-Forefront-PRVS: 0256C18696
X-Forefront-Antispam-Report: SFV:NSPM;SFS:(10009020)(4636009)(39860400002)(346002)(396003)(366004)(136003)(376002)(199004)(189003)(19618925003)(8676002)(6916009)(316002)(31696002)(52116002)(86362001)(66476007)(66556008)(81156014)(81166006)(3480700005)(66946007)(6486002)(26005)(6512007)(558084003)(2616005)(478600001)(36756003)(4270600006)(8936002)(31686004)(6506007)(2906002)(186003);DIR:OUT;SFP:1101;SCL:1;SRVR:DM5PR12MB1594;H:DM5PR12MB1449.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
Received-SPF: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: o8xlgSdbmdXnRRJ9hxf2OXTpJrmZIMNL5fyO6vflgIWdl5Y79jvf/e7+zK5O08ZiFn40+Eu7nu6X7lyXC+6ZgwR6m9G54ie8QJIN3g/2vKRKl95eczHXYJnjoYwQsGwU8k1fhtGwEjOQMdsf9tLeOKJzwWGEChUWbcdKVynWGG3UJOG8AsY4ujpBQTxO0Fvpd8UVz8pe+NaitLidU/M2F2tiomgkRk171ZOXxMgGInBfsFpDOuhB+lJlM1Wa9eVzohu4NgX+KmX7U4ZD8IV3EUWFCzDFakZJWsiacr4s0fQh15AQUAtAjDtgTgkVwdNgXRcZ47FyviKpoNTR0+JYr1pE0eQxI0EXLA2e9l1LrbQBQng3AWaxWjCx4maYnLE5DUhDy6sHsokocxfHubDMwFHwqZ11T7z6T9NGjpu4Bl8gifcxu9ywAeF7/D2XVuUj
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a23853d2-8753-4609-994e-08d784da35f3
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2019 23:21:44.0697
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SCGzdbfKhe0f2COEOT0+yRbhcu7WGJY0MutZJo90oA6nV26IifGDR04aa+cDm8ck
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB1594
X-Original-Sender: gary.hook@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector2-amdcloud-onmicrosoft-com
 header.b=A05cmJ8q;       arc=pass (i=1 spf=pass spfdomain=amd.com dkim=pass
 dkdomain=amd.com dmarc=pass fromdomain=amd.com);       spf=neutral
 (google.com: 40.107.243.81 is neither permitted nor denied by best guess
 record for domain of gary.hook@amd.com) smtp.mailfrom=Gary.Hook@amd.com
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

unsubscribe linux-ntb

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/19a1e0b8-58dc-3e3a-36de-4be35e808cc3%40amd.com.

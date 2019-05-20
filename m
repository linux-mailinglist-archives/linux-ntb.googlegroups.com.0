Return-Path: <linux-ntb+bncBAABBXFVRLTQKGQELQ6JLQI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 833202335D
	for <lists+linux-ntb@lfdr.de>; Mon, 20 May 2019 14:17:32 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id u11sf6532625wri.19
        for <lists+linux-ntb@lfdr.de>; Mon, 20 May 2019 05:17:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1558354652; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bjr+kdExnsuvlbqF4GJrVhYq9Z0He4KEacEmQSqsmNRkWo+OX0YN9J1KOo5rOcBEqf
         GZ71eO8paFA2S28QgTd+HWks4wOa61uGxmTVGa9dCKc+W8ucoELlg+73zE9yOYEePsGk
         3Qs13qmf2vLzg/J0mcgxS1AByzI7X3G91lHT9RNq+7Drs0eLUSibuVBXXE2s6lL0uSxf
         ZQ0klFhUeSuhscnv3hwq0h+pBX0bTEA2NuuD+uNluvLwu7N3s3mJsztXOGUCklutpwB4
         7QfoKcRjuTCOMN565lOaoJaAkUorSkfhwG5kx/xCLldKcQxhVQh4nNSqmTUDy8qUmSeJ
         Lwug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=ekrH/Enwgu009J2d+gLl00DtmGxjJql51wuBLuDqVOU=;
        b=swezPHkBrY5WwHXT3UjY4xFpL0YQwaauNhvfjGTB0/bjE7yiHgS5E/ZRMmq3kj9guK
         kXQlQNnV/izm/EYzUMZAZirJCAqPuTPE4LLT48a8IMx6rutcF5qloA75JRZkwii2DSwK
         x92+LalygCIzG5aPOjQ8xFaUafhPNlSQEju8gq7ZuajP7UZq3lUqWWlZ1lrcMw6FmV8V
         cQY8q9SWkGx3dQzD7Ggmr1PlDTRiDcOqnUWNVBojqwn64wRPAnLMdHlI/IcxhvJF5XQ9
         sXsk2btXr1Oixy5U8mXLwdvG8Unph0lLzAM8/zzTle/5xuc/goxGqhtc6nEFZHRHoGQ9
         FaPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=oeaNask4;
       spf=neutral (google.com: 40.107.82.71 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ekrH/Enwgu009J2d+gLl00DtmGxjJql51wuBLuDqVOU=;
        b=aPQ3Fia82bUzLniWU1rDa8iH1+NF7M1P653OMMSerhmxfxBUtNtRg7hihyFUtC+bw/
         Winvyb2JF78xgl5+VVKwSasCPFlYVauLJGCRxifVGTJTvjwx2XeJH7qozOfaKE92R3X2
         /kz9aFszh+3ngSqpIzNoCo/7oNdaTEFkZM3m2Id/YNQVp0fmT6bmcVyzaKkoVqYP5IQj
         bsYvaKFFYJpQWzkMOvWvbD8S85EInpn7xR4RW5esEHJ1M8j47xRTDlDQ2tsodWDMDcRX
         wFxjvu4Fz4cKC0B5UNITLvTDx1O2mWoH5FTC7Dpeqw2FHg/qbhFI/TfI8WWkjalPU3I9
         w+Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ekrH/Enwgu009J2d+gLl00DtmGxjJql51wuBLuDqVOU=;
        b=Ra04cenxcuoBnMGxAyqHTMukDwVSKxvqj8U4czWemN8IxvcNq8ioqzhJ8xVeg8pXCB
         t4/Dn5yqAzunKtjHIeyt2nf+jhGZ8PEOQfVGtkqwKsIbZVU4K3n3avl6X9UfKrT1dji7
         jV+WExsbeWHVXKJvA8myV1ZE/hp97Nxzx0UEWdS+x8p8+Pos6vtBdQFGyit93KPLh3ae
         Iqw8PZGqBoZyPXx1vnhSrSyy4i1RvZ9wfZXpYA1pAAg71GrG03pM4rBt8qhJ821KSzFb
         W8FLXequV7wbdGRVVhCGxyh5Le40ynoA3L4iPftNBnqBkt2BnNPvJlyG2avl53cOASb5
         3oNA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAV46aY46YCAjGtJ9jT7EO92hTd3WjBD0XRAPX4Y731PungU+zAy
	7HrfzMv3sa1hJ7Lphbk2dIM=
X-Google-Smtp-Source: APXvYqyM1g7lPRWE+1+ztYaSLr9pAymjaLC6oU4S9JcpOUQIs6s4Fd4NKSJ6gp9LUvzstPW01HE3nQ==
X-Received: by 2002:a1c:96c9:: with SMTP id y192mr30123773wmd.75.1558354652229;
        Mon, 20 May 2019 05:17:32 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:6992:: with SMTP id g18ls4074890wru.7.gmail; Mon, 20 May
 2019 05:17:31 -0700 (PDT)
X-Received: by 2002:adf:dc0c:: with SMTP id t12mr32525989wri.101.1558354651821;
        Mon, 20 May 2019 05:17:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1558354651; cv=none;
        d=google.com; s=arc-20160816;
        b=INQZJUJKqpcFpuXhlfB+2KHvpxlN5BM4g5krWbqTujeWmXk+RfLko1kzq6Y7SD5RT5
         ZvkovlZkFISkhLWzxD7/MQsleWs+BLr380nBJjtcOxCgdUmREc+gXqYrBLzrm2kUqT7E
         L1WPfL7RI5vQxukNyhMCtCBnOjcWNAsk+jjLwg3U7XLJ5U4KDS6EXMx37wBkmKdvZROJ
         LTw0V+rYO73GIFowIJuMWlKph2jYQYdcq3cilClCCAx5Bs/FMRJl+L4xHDnJB0Z3vD/5
         29OMDzCGypKTRiD5EWAGgDubO0q+gYDbjiw05cfN2I2VxqQBgXkk8FcrssLcD1nEz9+Z
         XJ2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=cCj7GbY19CLBrglx94cRC9EukNGC0Zs28OvxQfFv1SY=;
        b=ZE6FV4yGlQWc74umzXoCFjplKLBAaT4T5Hp4LfL/wUrKiC+H3yzXok1Isw3cmFBNaE
         VXe+YBc/jLOVWx7Bt5UrxXsvAPxf021dcKzhoJuNQJK6JV8PcTs6W5knAYkxAeNC+ZNX
         D4oqcMzSUVVJlbv8SkTtxhruiD1LtSIFw2D6SM2YEA1XM+GEjxb5+UT9D0UqkP3f8T5A
         l5tlXUIXwH59s51bwnmjnY67IE8akC7fofYDPHKOZ4FQr4ffiNXkO9zXWhWtMhtC0qY+
         DEp8IxN82nrPZLtFHWstUXuWJhpKnB5LTes2LKrCI6sVqHXf5PU3EPhUW8d3JapkLOlG
         GeVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com header.b=oeaNask4;
       spf=neutral (google.com: 40.107.82.71 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
Received: from NAM01-SN1-obe.outbound.protection.outlook.com (mail-eopbgr820071.outbound.protection.outlook.com. [40.107.82.71])
        by gmr-mx.google.com with ESMTPS id j129si1328718wmj.4.2019.05.20.05.17.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 May 2019 05:17:31 -0700 (PDT)
Received-SPF: neutral (google.com: 40.107.82.71 is neither permitted nor denied by best guess record for domain of sanju.mehta@amd.com) client-ip=40.107.82.71;
Received: from MN2PR12MB3455.namprd12.prod.outlook.com (20.178.244.22) by
 MN2PR12MB4013.namprd12.prod.outlook.com (10.255.239.30) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Mon, 20 May 2019 12:17:29 +0000
Received: from MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::792c:727b:e40f:3a49]) by MN2PR12MB3455.namprd12.prod.outlook.com
 ([fe80::792c:727b:e40f:3a49%7]) with mapi id 15.20.1900.020; Mon, 20 May 2019
 12:17:29 +0000
From: Sanjay R Mehta <sanmehta@amd.com>
To: Jon Mason <jdmason@kudzu.us>, "Mehta, Sanju" <Sanju.Mehta@amd.com>
CC: "S-k, Shyam-sundar" <Shyam-sundar.S-k@amd.com>, "dave.jiang@intel.com"
	<dave.jiang@intel.com>, "allenbh@gmail.com" <allenbh@gmail.com>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/4] NTB: ntb_perf: Increased the number of message
 retries to 1000
Thread-Topic: [PATCH 1/4] NTB: ntb_perf: Increased the number of message
 retries to 1000
Thread-Index: AQHUxQ+kzcBLircFnkWwMPFTZUsE7qYVAJwAgF+BMwA=
Date: Mon, 20 May 2019 12:17:28 +0000
Message-ID: <e67dce79-bd64-9dd2-927c-124a34fcdcfc@amd.com>
References: <1550222279-27216-1-git-send-email-Sanju.Mehta@amd.com>
 <20190320175011.GA27156@kudzu.us>
In-Reply-To: <20190320175011.GA27156@kudzu.us>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: MA1PR0101CA0014.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:21::24) To MN2PR12MB3455.namprd12.prod.outlook.com
 (2603:10b6:208:d0::22)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.157.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ccef33c1-9166-4688-5ff7-08d6dd1d2062
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:MN2PR12MB4013;
x-ms-traffictypediagnostic: MN2PR12MB4013:
x-ms-exchange-purlcount: 2
x-microsoft-antispam-prvs: <MN2PR12MB4013E24DB38E12BA27391948E5060@MN2PR12MB4013.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 004395A01C
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(376002)(346002)(396003)(136003)(366004)(199004)(189003)(66946007)(73956011)(26005)(66446008)(64756008)(66556008)(186003)(66476007)(68736007)(25786009)(15650500001)(6436002)(71190400001)(71200400001)(36756003)(229853002)(446003)(6512007)(6306002)(6636002)(486006)(6486002)(2616005)(476003)(305945005)(11346002)(7736002)(31686004)(52116002)(53546011)(6506007)(386003)(14454004)(76176011)(102836004)(54906003)(110136005)(6246003)(5660300002)(478600001)(6116002)(99286004)(53936002)(3846002)(72206003)(256004)(966005)(316002)(14444005)(2906002)(8936002)(81166006)(81156014)(66066001)(8676002)(4326008)(31696002);DIR:OUT;SFP:1101;SCL:1;SRVR:MN2PR12MB4013;H:MN2PR12MB3455.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;A:1;MX:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MhhZRDIc+onUd0Rb19jJmig3eGocfxx4ycIBJtSJFZloUCabDVFb7XAIrp0o1I00hSK92mSrRlL6TuU73e3oLXwVCxEF2KMtqCb6ZtVPoJ7plG9n/fU8OqPQldWVdAxfAABknUeXsQqWXVtqYopPNgoPQNcT3WtJrnInPmtAWcTYZBUFCnkLEsFt1D0Lbx5B1UjB7c2Q1WZMeDTniAd5n3+a7gNhmnVbyCxfKvrMnBGKM3vZQG6hxtbu1AhA1Wubt2+ZzvU42vC2Dxp2ZgrV6DnckFxP0gAuWADsAFekzeVP7R59cKnFHbOJeZLCN2BR5jUpErF/bqdyPX+XVhWe4vruELGXjrO5PntufaVYDcLi3UTrswz/pI8m0FSF3hytCingoi3E/Eb6+/eBhP7a0R7KNRm/DdjtZLg3AnfvZvY=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <5A37FF114949484F96A13A70D522105A@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ccef33c1-9166-4688-5ff7-08d6dd1d2062
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2019 12:17:29.0239
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4013
X-Original-Sender: sanmehta@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector1-amdcloud-onmicrosoft-com
 header.b=oeaNask4;       spf=neutral (google.com: 40.107.82.71 is neither
 permitted nor denied by best guess record for domain of sanju.mehta@amd.com) smtp.mailfrom=Sanju.Mehta@amd.com
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


On 3/20/2019 11:20 PM, Jon Mason wrote:
> On Fri, Feb 15, 2019 at 09:20:07AM +0000, Mehta, Sanju wrote:
>> From: Sanjay R Mehta <sanju.mehta@amd.com>
>>
>> while waiting for the peer ntb_perf to initialize scratchpad
>> registers, local side ntb_perf  might have already exhausted the
>> maximum number of retries which is currently set to 500. To avoid
>> this and to give little more time to the peer ntb_perf for scratchpad
>> initialization, increased the number of retries to 1000
>>
>> Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
> Series applied to my ntb branch.

Hi Jon,

The above patch series is not visible in 5.2-rc1 branch. Please let me know when I can expect them in upstream kernel.

Thanks & Regards,

Sanjay Mehta

>
> Thanks,
> Jon
>
>
>> ---
>>  drivers/ntb/test/ntb_perf.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
>> index 2a9d6b0..a828d0e 100644
>> --- a/drivers/ntb/test/ntb_perf.c
>> +++ b/drivers/ntb/test/ntb_perf.c
>> @@ -100,7 +100,7 @@ MODULE_DESCRIPTION("PCIe NTB Performance Measurement Tool");
>>  #define DMA_TRIES		100
>>  #define DMA_MDELAY		10
>>  
>> -#define MSG_TRIES		500
>> +#define MSG_TRIES		1000
>>  #define MSG_UDELAY_LOW		1000
>>  #define MSG_UDELAY_HIGH		2000
>>  
>> -- 
>> 2.7.4
>>
>> -- 
>> You received this message because you are subscribed to the Google Groups "linux-ntb" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
>> To post to this group, send email to linux-ntb@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1550222279-27216-1-git-send-email-Sanju.Mehta%40amd.com.
>> For more options, visit https://groups.google.com/d/optout.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/e67dce79-bd64-9dd2-927c-124a34fcdcfc%40amd.com.
For more options, visit https://groups.google.com/d/optout.

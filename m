Return-Path: <linux-ntb+bncBCJ3VB4HRUCBBCUP2LTAKGQEFPHYQFA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id DBDD419328
	for <lists+linux-ntb@lfdr.de>; Thu,  9 May 2019 22:03:22 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id x6sf2797844wru.0
        for <lists+linux-ntb@lfdr.de>; Thu, 09 May 2019 13:03:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1557432202; cv=pass;
        d=google.com; s=arc-20160816;
        b=mfrYSwNa3WRG0ZBDBe8tok1Lc2pulwNA3XI96oCWd0yRk9jIRpX4StA/jLn7nYp+pN
         dkmGEB3xBcp3r8ej3Yq1v6tSOYuID8XtYADB44rxOAykZtJcKlR2kr/5xDLkCLNnq1P+
         RVFQTMtucpj4U/xl/rA2SrH0s7ZJKv+i50MGQap/gzvp/m4L9+S8LUR7V7mzwJ/RtF5y
         rkJeDSnmrmvLtRbg8ISJ3uq84FjcPYpSIu5nmHs5GnYcabNcaGlif9xkbaK2hLd3FL4C
         GvH7gFudJDHBGIEyTENnIOJLl7vAFMWhIBtjysrgCC4Ks3ocXZ1TcXBXOGjh8lb3y+uq
         oAYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=tF9m7MmwfMONdJqdQgQ30cfC1lWyiRQgCb2ShesbDjA=;
        b=yKePj1cHPwBVn494wJxYdnNgvqB3Jx5qS5SQzfFtcidCMA/2DMc4n0188OHWDjtNaM
         mTFX3Du0eGQn/6ubwj8G7K5SNuZgUEAXVo87jDOVuwAfoVg+xCnf92KjTh9y2rsOWcGs
         2ds+WOEAfbNf+FjvifRqkNbemwQyi16Rc0TckFclnVbSciJsidnMadNhYiktqQxBrzlm
         l8LpzAuCBq57bgsiZMIFzL4FfPp7YamIknv6uZ1wt71Xb8nLKhxb4AUtlYnzxzZGVLyT
         BPElt4QBxm3II4cQqgMPYTtpTfT+Bk0kgblmS5b7MdldoRxTyvdtf3rGVWuq+O2yappY
         tAqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amd-com header.b=0qjDmwCO;
       spf=neutral (google.com: 2a01:111:f400:fe51::629 is neither permitted nor denied by best guess record for domain of gary.hook@amd.com) smtp.mailfrom=Gary.Hook@amd.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language:content-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tF9m7MmwfMONdJqdQgQ30cfC1lWyiRQgCb2ShesbDjA=;
        b=D4o0fzJG52fgJahcWtXv9GzVX3OVvnYrtDGitq8JGht7P+LOWenJIu4BhUJyRgHBHg
         zr2/8/vB+5yzogNLJmseNs2sI6oHpW41qlSO9TVfldLCDUNEa6CzQcaGCWWBBHGQfCZX
         YyxdPlmy8Oy8QxQx/OoIl0WV/sl5HRLA8DiHBJEc3p/Ngil7aGkPE471bgaUF0kM1Zwj
         PC4/bK3CRWPcIPAcq/zzy2bSKoFxPM/xFxCgovun5xc73VLP3NRmlMKzxDRowAINBq2G
         9jclxiA1S9DWq+NhXTlPUkJWZiLENufwF6nm3pubS7vR8DKp3G/0ypmrS4xzOztGbIeD
         3tkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:content-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tF9m7MmwfMONdJqdQgQ30cfC1lWyiRQgCb2ShesbDjA=;
        b=gREaWxv6Cv9UOSAnzKoFHeoWmfIn4RVWmfdev54wavzu0GBXgLfEzlzup/EVh5Qa/8
         R0NwIQtmLu8da+1mZiaCO0O9H6fn6oX5De2EpI1JPzAEC0piruiRNX31qdYw6wt/wppe
         yDHj7jrPq4Gwz9dDgOvxAGEzpLkr9XYpxr1m0uFl4zioiJXCbLUJqo05ZXuqVZUs3phx
         Hgn3fPPnsIGWnaiE3vwbTCBy1O++vQU46cZja/XXRCCo/yXQP52oXIyU4s1beApF1uQD
         i5AXg/ZhUdbzPRStKr+1xOQOEsgCSdWbnOXyB8JjtMmsiRT3s6r5/a1tt2lIDFf51gcg
         PP6A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVKrQRzoY79z3b9kN6ABCKGCvtiXqob+ajhcIwIlWclrjw7hKL0
	ei2gKBP4lV5xC0j6Fi2rA7s=
X-Google-Smtp-Source: APXvYqyy89wzAg1BMHiNYhw7U9vxxFiqsTe3dunACiplbiOE+3MLuHr5IpHdU3yvmL3wtSeqG5nN3w==
X-Received: by 2002:a1c:2c04:: with SMTP id s4mr4028207wms.123.1557432202643;
        Thu, 09 May 2019 13:03:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:b642:: with SMTP id i2ls817231wre.13.gmail; Thu, 09 May
 2019 13:03:22 -0700 (PDT)
X-Received: by 2002:adf:d4c8:: with SMTP id w8mr4863853wrk.2.1557432202249;
        Thu, 09 May 2019 13:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1557432202; cv=none;
        d=google.com; s=arc-20160816;
        b=lZ5b/6ZVk5BhGFjA4CcHjRObxmJ8J05IIvb5P3k6JM0RcdRrx9udHLZQ9pkoJIXfC9
         2IvjUaPi7DNdNe0EJmtFyvEzmlilL6JF5oIj590Tf5c8ujtjMZy9Wihs8VZUurO7A2TA
         uZGXjUllOYv1W4B2zYbmF2nmD+81xFN6CN7BnvlHkEuXL+0N1vwaJWhuNHl7LDWI6QE7
         hkr7D4+JpmYwP0NQZP6zGhyFJVy65r8St1gXMHqlaSo0+Txo6KGxHg0TSv4Ki8RFeLG0
         dpZA59rYRQ0VI2T3v7cCZpN80li/cgzEynGL26y0rb0VYnzlYQ9txhSKXzVCp3rOqYjO
         LtNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=uNJt8DVER3T54e4x7lJTuhnpM93D4pJ1uA/vT5503Dg=;
        b=kw1IdqRJLeKUsvajmfAIRUGNXM8NqCHY6H/F9jka/Kt2c6gJ8mzVljBI0DBZ+Kte8h
         4KvT3rvTYtLNexGyVvRdk60T68qw7QH4MJ7Y2cf+XCUijlWYz6+sLwVwh4RSDlKUV+Y7
         cFeIw9B/8X9Ep4fbPL+OafMmQ0htlml2HWtnsY8vXf8bTv3Q+rWs3NDlZvgPBssGHUmW
         zV3ZjUbqluS1yjcA7GNJzz/0kOjXac2JfGZRaaq3CboNgj2bnQZutcyUwLkartFegp7j
         YqjzEifflX0UnNaTV09DJkwmR8F2anqqRDcwPtDfIk2NJmq5MqvlkhngRizjBp2rmucK
         VRFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amdcloud.onmicrosoft.com header.s=selector1-amd-com header.b=0qjDmwCO;
       spf=neutral (google.com: 2a01:111:f400:fe51::629 is neither permitted nor denied by best guess record for domain of gary.hook@amd.com) smtp.mailfrom=Gary.Hook@amd.com
Received: from NAM05-DM3-obe.outbound.protection.outlook.com (mail-dm3nam05on0629.outbound.protection.outlook.com. [2a01:111:f400:fe51::629])
        by gmr-mx.google.com with ESMTPS id f188si670303wme.0.2019.05.09.13.03.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 May 2019 13:03:22 -0700 (PDT)
Received-SPF: neutral (google.com: 2a01:111:f400:fe51::629 is neither permitted nor denied by best guess record for domain of gary.hook@amd.com) client-ip=2a01:111:f400:fe51::629;
Received: from DM5PR12MB1449.namprd12.prod.outlook.com (10.172.40.14) by
 DM5PR12MB2534.namprd12.prod.outlook.com (52.132.141.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Thu, 9 May 2019 20:03:18 +0000
Received: from DM5PR12MB1449.namprd12.prod.outlook.com
 ([fe80::11db:1b41:d1e6:c6dc]) by DM5PR12MB1449.namprd12.prod.outlook.com
 ([fe80::11db:1b41:d1e6:c6dc%11]) with mapi id 15.20.1856.012; Thu, 9 May 2019
 20:03:18 +0000
From: Gary R Hook <ghook@amd.com>
To: Eric Pilmore <epilmore@gigaio.com>, "Mehta, Sanju" <Sanju.Mehta@amd.com>
CC: S Taylor <staylor@gigaio.com>, D Meyer <dmeyer@gigaio.com>, linux-ntb
	<linux-ntb@googlegroups.com>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>
Subject: Re: Fwd: AMD IO_PAGE_FAULT w/NTB on Write ops?
Thread-Topic: Fwd: AMD IO_PAGE_FAULT w/NTB on Write ops?
Thread-Index: AQHU91hjNQoHErsWzEi/5FKxmzbafaZJlASAgAJQjoCAF3E2gA==
Date: Thu, 9 May 2019 20:03:17 +0000
Message-ID: <8e4ccf44-9e4f-8007-ddcc-431440f9d533@amd.com>
References: <CAOQPn8sX2G-Db-ZiFpP2SMKbkQnPyk63UZijAY0we+DoZsmDtQ@mail.gmail.com>
 <CAADLhr49ke_3s25gW11qZ+H-Jjje-E00WMHiMDbKU=mcCQtb3g@mail.gmail.com>
 <cdcd00e9-056b-3364-cfbc-5bcb5bcff91e@amd.com>
 <CAOQPn8sQ+B97UptHpxJgdmcMxBZrqGynQR8qTc3q77fAODRH-A@mail.gmail.com>
In-Reply-To: <CAOQPn8sQ+B97UptHpxJgdmcMxBZrqGynQR8qTc3q77fAODRH-A@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: SN6PR2101CA0004.namprd21.prod.outlook.com
 (2603:10b6:805:106::14) To DM5PR12MB1449.namprd12.prod.outlook.com
 (2603:10b6:4:10::14)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [165.204.78.1]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2c88d6cf-8b25-4d71-65d8-08d6d4b96098
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0;PCL:0;RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);SRVR:DM5PR12MB2534;
x-ms-traffictypediagnostic: DM5PR12MB2534:
x-microsoft-antispam-prvs: <DM5PR12MB253426787FF9848D0CD86340FD330@DM5PR12MB2534.namprd12.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 003245E729
x-forefront-antispam-report: SFV:NSPM;SFS:(10009020)(39860400002)(366004)(396003)(136003)(376002)(346002)(189003)(199004)(110136005)(54906003)(446003)(6636002)(31686004)(73956011)(66946007)(186003)(478600001)(26005)(2906002)(256004)(229853002)(305945005)(71190400001)(66066001)(3846002)(99286004)(5660300002)(6116002)(66476007)(66556008)(64756008)(71200400001)(66446008)(52116002)(6512007)(36756003)(31696002)(486006)(81156014)(76176011)(2616005)(476003)(68736007)(6486002)(11346002)(81166006)(14454004)(8676002)(25786009)(6246003)(7736002)(316002)(53936002)(6506007)(102836004)(386003)(53546011)(72206003)(6436002)(4326008)(8936002);DIR:OUT;SFP:1101;SCL:1;SRVR:DM5PR12MB2534;H:DM5PR12MB1449.namprd12.prod.outlook.com;FPR:;SPF:None;LANG:en;PTR:InfoNoRecords;MX:1;A:1;
received-spf: None (protection.outlook.com: amd.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7PhfNKb+DqXlPYa05v4cK/UNuw/bTJRHI+7vKXOwFNPr2iQV/IXZih9AFezGugpA2VCmNPZQbEc74vnkZzaoBnKcZeZQkyzzNBQ7e49/35ZCXcW4lXRTINt274nTyp6c/efBSBijBeh2g8nU1igBJNVlHcAyl78IyXHi1gsGj0XTM83tHNDia+FEDD/P79V3BNaCanfuRm1FqW4I9zFUeB0J47G//gJzEmNGni+V7dAQuZ+/h893DzA+X6MVd1L7ojoRGRZWd/q4ZH2ceraJbJ8b3yy3t4Jn2XgeWTGQvi2eYVg9xa40GuIhDoB0n7Y+/8dOtnVZPlNJqEG/p/iiau9MLQ4aDB+itjG8ctLgG0bLqSXfoU1lj1LRev9lpUwLS8Q3zFQRFvHabGvrq9rBAddXIaeguS4yUnN3nGPuCVE=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <BB3AB0C78BEA1A4DA8BDB947B84C94B1@namprd12.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c88d6cf-8b25-4d71-65d8-08d6d4b96098
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 May 2019 20:03:18.0037
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR12MB2534
X-Original-Sender: gary.hook@amd.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amdcloud.onmicrosoft.com header.s=selector1-amd-com
 header.b=0qjDmwCO;       spf=neutral (google.com: 2a01:111:f400:fe51::629 is
 neither permitted nor denied by best guess record for domain of
 gary.hook@amd.com) smtp.mailfrom=Gary.Hook@amd.com
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

On 4/24/19 5:04 PM, Eric Pilmore wrote:
> On Tue, Apr 23, 2019 at 4:00 AM Sanjay R Mehta <sanmehta@amd.com> wrote:
>>
>>
>>> AMD-Vi: Event logged [IO_PAGE_FAULT device=23:01.2 domain=0x0000
>>> address=0x00000000fde1c18c flags=0x0070]
>>
>> the address in the above log looks to be physical address of memory window. Am I Right?
>>
>> If yes then, the first parameter of dma_alloc_coherent() to be passed as below,
>>
>> dma_alloc_coherent(&ntb->pdev->dev, ...)instead of dma_alloc_coherent(&ntb->dev, ...).
>>
>> Hope this should solve your problem.
> 
> Hi Sanjay,
> 
> Thanks the for the response.  We are using the correct device for the
> dma_alloc_coherent(). Upon further investigation what we are finding
> is that apparently the AMD IOMMU support can only manage one alias, as
> opposed to Intel IOMMU support which can support multiple. Not clear
> at this time if it's a software limitation in the AMD IOMMU kernel
> support or an imposed limitation of the hardware. Still investigating.

Please define 'alias'?

The IO_PAGE_FAULT error is described on page 142 of the AMD IOMMU spec, 
document #48882. Easily found via a search.

The flags value of 0x0070 translates to PE, RW, PR. The page was 
present, the transaction was a write, and the peripheral didn't have 
permission. That implies that mapping hadn't been done.

Not being sure how that device presents, or what you're doing with IVHD 
info, I can't comment further. I can say that the AMD IOMMU provides for 
a single exclusion range, but as many unity ranges as you wish.

HTH

grh

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To post to this group, send email to linux-ntb@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/8e4ccf44-9e4f-8007-ddcc-431440f9d533%40amd.com.
For more options, visit https://groups.google.com/d/optout.

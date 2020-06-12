Return-Path: <linux-ntb+bncBCOOP4VF5IDRBG5GRT3QKGQEDOLYAAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id D27471F7380
	for <lists+linux-ntb@lfdr.de>; Fri, 12 Jun 2020 07:31:08 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id m5sf3722367otp.18
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 22:31:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591939867; cv=pass;
        d=google.com; s=arc-20160816;
        b=ufFZxD4r+Md3litS/AVHrC2Gr7E5vhc+1AYFAAmYabPo+vRcjP7l4qw1f1FepaDqNc
         M+F6rKIdRH3b6gTxV26ulyLeyCeKRXh7ct7fNfgCLEbHL5cvQe7W0Ztr6kmXZnxkA7au
         FMmadLGJQ2NM5s6WbMd/bUN89nMIwIIeYjSHtn0xEAB4Gvsm74y1uPiLSNAze3gtdRDK
         49H9tZvFHc5U7i92dTpCG5IOUbTm3MHqQ3vLYfzYGT4gz08GF2cdyDvRYLGs0pWKJMPT
         NkGIGWZ4htmbw8R9GE3daKpj0HsG/0uMQmhNJ9AotExh2cBBSwqEPnaVRyZXw2vsvrs6
         TYaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=cLdp0EjQBB6d+qlzAEXdO89UBdT43635QkLXtgiJxWk=;
        b=j/uohZm2V/FIMcM4BpKbRGSupXUDhys2uHLcPW4NYw/Hr5b67UFEU5zaR048quSyRK
         0YG19y5MIFuHwDC2RVE1dvq/3T/rjn4Wh4S0vXhODmdzHJ+O/+WTVoLU4dBNgXFx7H9s
         bnUOkdhRP4+SuLHFmlZV/hFBOUpzkQcxT8JQkh/TIA/hgKofbzHA07EeRwIV27jGyILD
         kHL8eEf6ZAgg/6KsT73IAdLM9erPsOLF2Jd0p9A7KRTdkyv+IvQmaguA+i4qOt/78m4z
         vs8OzKN2yw3RySn71CJFltkXWrGrSHrvfZomI3i4E2vwfaTIfPO7ODaTqpO0IQKPSHfb
         TUWw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Cg2p8vyd;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=cLdp0EjQBB6d+qlzAEXdO89UBdT43635QkLXtgiJxWk=;
        b=WX8QYMcuGcL8sdViAeabh31tUD2spdDNi7oHj4RfcHWR8I49cLM45Qh06cCSMC0tj+
         gmBRuIHRTUZ+jDB7g8Yl1X+texnvaKFNW0PyvRMZQKq++GrbTSjQiWKHSGXja3DF3CjO
         RRxPrrd+fEz+gYvgXpXHlUMP9ZgK4pLW88g5MUjaXvgY9iiDUU0nF4e7NgMHs77ZEniK
         /v35eTHaMWiCToINlHog7urZKk9o6C1CUB9wUisSGpjwDXL+IUPf0t/OD8mg2SGRggMF
         yG+Q+bHuoUd78fbhPq5IeWseQqWAJL/NbFBEnXKXbvtDmCHexx20fIGozIOuGtzTfUh0
         VOEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=cLdp0EjQBB6d+qlzAEXdO89UBdT43635QkLXtgiJxWk=;
        b=sYBIiu1IirHpUClTwzSGsmu/8RiOLg/oIkmeDUkmTPUxc4aap8W9pen13EpQHI/iMS
         QCCkt+NEmcBe+sn2HkNKjvnWApTXdDkAQsco52LWoWIE5Uyti2M6jbV7yzpdTN6pTJMe
         ejjdsXj2VpzPkWPTomxaTH2chg/YszWyPCZ2T2NpUQRMeo0ht5N7nyn1rE22oQEguv01
         QcOUiTY12NfuiMtOXLzq3RQddJ/b1vmBuDZYqA1WDbFY7ssomhQ4hZl1iOMGIyoPX+6c
         fJuWF1l15L4ITFRkK+QTZx3hDjFs/rapMXfr5gCrfqhXWM5SDUb6PvjH5Fi5xivFn+EH
         7ygQ==
X-Gm-Message-State: AOAM530MUe4h1VH+v5zbG2Vcc9+GiKArNSe6iSGkIrIPyClHEHUZRn+1
	esSrXaXfP+M/X/JFNpYzJxA=
X-Google-Smtp-Source: ABdhPJyaqfsbaNdcLpP6Yf+aF3ATbCHTbOLGfyczsCVvdiohyDjwPY/OgWolzswnil0ps36JOlhC8Q==
X-Received: by 2002:a54:4015:: with SMTP id x21mr703599oie.161.1591939867480;
        Thu, 11 Jun 2020 22:31:07 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a54:460f:: with SMTP id p15ls900952oip.7.gmail; Thu, 11 Jun
 2020 22:31:07 -0700 (PDT)
X-Received: by 2002:aca:af82:: with SMTP id y124mr1035149oie.98.1591939867223;
        Thu, 11 Jun 2020 22:31:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591939867; cv=none;
        d=google.com; s=arc-20160816;
        b=upvCW4GK6rhj/a6TgDMw2r/DSETEMGdws8yPXS8WdoP2qQoWNY+w3+uOuggjYDAURp
         6GimsyOakGfejHN5G5vbrhUjp7QB2tpsGdt27FIR0pVUUHbkQ0w5cJ22G4TXU7M07dIV
         1+YQIcvFwdJdebZff2XuHkkUiTOFfq38zKkzj9pSezYuAn8173e5BuvCdRs1ZCpewc7P
         7bQmPVnQ4HsKqLIoNVc/aksrrEgScs7Ulr+SLFluBaur2cc8IUORi+Ck+SIiea6rpTYm
         aPTKyEiE0Zj/8gkn5SmZ84fIoKM4SvyGI+HVqGvPrYul/V1aCp9m8KtcKmt8/sI5IJl+
         6DDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=CsA12+jay5u2Gva3INtQk/dUmPirKLYO9bGaNjt4rNo=;
        b=J7AiRsa6YfqmDMvkEZh8HVNCrLXfyRrkHl/QJbtQptblWkRNNSZOoWFWJbl0zqKThd
         S2e00owTvt95nU2k4Fzo4IK/XlV/USEGpBAXoCk2bDcJLCZNjleY0ohCbniYz/OfMs1p
         JnPOFJtkqk+ldyUt6K5ABECeXd2h5CeTzgJhapZ0NX1VM4eIbbMfurcZRBgkg4LkStkI
         qKMeqq7fGs7kcLkT9y/HR0jh0s/DD0uAQVRUgZLn1sZWBdIvj0M5EiC+tYkTJLxRVW9o
         9wZPHg4FyfXacUpwbkXNgIZa2bG0fWln2xE/kvTgxzn+VXftuisRsRN7mQJnJiFT2aeI
         92sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Cg2p8vyd;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id y198si144335oie.1.2020.06.11.22.31.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 22:31:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05C5UxHv105841;
	Fri, 12 Jun 2020 00:30:59 -0500
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05C5UxcF111764;
	Fri, 12 Jun 2020 00:30:59 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 12
 Jun 2020 00:30:58 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 12 Jun 2020 00:30:58 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05C5UsBx060089;
	Fri, 12 Jun 2020 00:30:54 -0500
Subject: Re: [PATCH v2 01/14] Documentation: PCI: Add specification for the
 *PCI NTB* function device
To: Matthew Wilcox <willy@infradead.org>
CC: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
	<allenbh@gmail.com>,
        Tom Joseph <tjoseph@cadence.com>, Rob Herring
	<robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>
References: <20200611130525.22746-1-kishon@ti.com>
 <20200611130525.22746-2-kishon@ti.com>
 <20200611151301.GB8681@bombadil.infradead.org>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <c8a5d63a-7026-2b40-4b26-5f4e481f7df4@ti.com>
Date: Fri, 12 Jun 2020 11:00:53 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200611151301.GB8681@bombadil.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Cg2p8vyd;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted
 sender) smtp.mailfrom=kishon@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Kishon Vijay Abraham I <kishon@ti.com>
Reply-To: Kishon Vijay Abraham I <kishon@ti.com>
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

Hi Matthew,

On 6/11/2020 8:43 PM, Matthew Wilcox wrote:
> On Thu, Jun 11, 2020 at 06:35:12PM +0530, Kishon Vijay Abraham I wrote:
>> +++ b/Documentation/PCI/endpoint/pci-ntb-function.rst
>> @@ -0,0 +1,344 @@
>> +.. SPDX-License-Identifier: GPL-2.0
>> +
>> +=================
>> +PCI NTB Function
>> +=================
>> +
>> +:Author: Kishon Vijay Abraham I <kishon@ti.com>
>> +
>> +PCI NTB Function allows two different systems (or hosts) to communicate
>> +with each other by configurig the endpoint instances in such a way that
>> +transactions from one system is routed to the other system.
> 
> At no point in this document do you expand "NTB" into Non-Transparent
> Bridge.  The above paragraph probably also needs to say something like "By
> making each host appear as a device to the other host".  Although maybe
> that's not entirely accurate?  It's been a few years since I last played
> with NTBs.
> 
> So how about the following opening paragraph:
> 
> PCI Non Transparent Bridges (NTB) allow two host systems to communicate
> with each other by exposing each host as a device to the other host.
> NTBs typically support the ability to generate interrupts on the remote
> machine, expose memory ranges as BARs and perform DMA.  They also support
> scratchpads which are areas of memory within the NTB that are accessible
> from both machines.
> 
> ... feel free to fix that up if my memory is out of date or corrupted.

I think that's accurate. I'll wait for review comments on the rest of the
series and I'll fix this one in my next revision.

Thanks
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/c8a5d63a-7026-2b40-4b26-5f4e481f7df4%40ti.com.

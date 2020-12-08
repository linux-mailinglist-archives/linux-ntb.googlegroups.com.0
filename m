Return-Path: <linux-ntb+bncBCOOP4VF5IDRBSMKXT7AKGQEGEE3IDY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7224C2D2238
	for <lists+linux-ntb@lfdr.de>; Tue,  8 Dec 2020 05:47:06 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id b4sf7070188vkg.10
        for <lists+linux-ntb@lfdr.de>; Mon, 07 Dec 2020 20:47:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607402825; cv=pass;
        d=google.com; s=arc-20160816;
        b=sK0FuomYRgSBHFQeYkJJKfZ2MpdiaZj9iAbGJytM35trX0qME/nEW80scjiHCH9MLU
         FZvkOfPgEr6XwdaEJalu9MyUvE1qXkK+aba8hwOUxlAkyVlslErRP8c4HeGu0Zp091MV
         uIppHIB7AYn2JaSOZm7w5JtweafFvcsU109VcGJ0uerZ2GSVzinuG4wdvvw6R+FRXAV6
         VZ/s9jqgfGMqxVzhaMBUebNkDBo/K83PIVWwGJ5axCKpkaIR4fv8eHKcC/n41fnUj8Ql
         kAKEOBParrIyjE67QQp5cGZy338a9cIGsop1D1Y+oW8f0JiN8x4eRKtbiPYbey/0ALAM
         EWFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=NiwIUt4q5Lh661LBXORiWR/Op7EZJWXHr2xvvdk+N4w=;
        b=yLQ6qboMOoQjr/uHSTk+E2E6N7z61eGCDNAmIPJKQp+YVglhZbbanPCMURGYpFFeNq
         oGyCwQqFlnrqjVZbFqXDrzyp1F++IDTQjmHmcL1gyV2nr1t5IIbiP1qaa3TIjjqsOZWk
         34ONdcQ8oe2SjT3EFchhNV2So5dn39o49ZLNgZqUeW/+yQxrUej0CFgzH6nsUdZAqo1z
         zYXB7nfctKzkD5AAn98HIBtZFxw17IaF2YNyEQbde4haWFqgt+mUgjUCNez17pg5MUNx
         8zfBRR4zzxwlnkUblabvsZK7qRoJ4ElkRy9MX0JFPLuQZLtLITyf1W7hygy9KkIoaVWV
         bsfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=I1KcsdWf;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=NiwIUt4q5Lh661LBXORiWR/Op7EZJWXHr2xvvdk+N4w=;
        b=bRDgFlvc8K/Jt7+vC8TY+u2eaawCfSe1u+hwMTDB56CWoeCZ6f2374EbR+c0CZY/O+
         m6Ps/DPBPCBYbv4/YyX4h3JNafqVcCIHOLiCaNWOi7KEEmc4TiEQ58N/ezyNuLeV1p9C
         IUzBJfXG5GvXde51dUH7UrMUDraqS8qCYT+ELWbbVy869C7iu+tkR8cN49v9WSKnB7t4
         7D76+nH6q0RMjsjjPAslV4eqJjJHDHVtvk2fSIplkiojn3CZKVC44NNsZ4VUBUPrP/2t
         Qe85HKOmKIC3TS04te6bis978mW0g1yBogwzXiEuxB6EurZxyRb2wP3sNZhPz+Yhzd+k
         1jbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NiwIUt4q5Lh661LBXORiWR/Op7EZJWXHr2xvvdk+N4w=;
        b=QaWEFJNTxF3vSvJZ5sTZDkJ+E64XNRM904JBbtoMUBTBAaClTU1jiPzGQf5PJkzoo8
         nbiKVHnIv52GEedJwOgfVg0x6ivcIrdWWSO6j35czL9QgGpx1cPJqzs239+x+TCRVvv/
         m3Tcq4OptdxGhrJp5IU5qxUeQHZi5uvuosFQEBBNL/dPZIN9JAvl6e/wnQTZ1/seqcVg
         QBnerOCxk6+ybCnu8zeDuTgnxzbETT+VrkQt9YgDAKbvtW7C+sUPsLgGJE37S6rlrSb+
         VI8XNDEDVM09IGc4gmAH7eDuVxVnH6CIgIds27DfPdU50MN4RMWmWWtwQLdhxRNhixC/
         lrzA==
X-Gm-Message-State: AOAM533mZxdZcQKhLRXOpQS5kJ04PsYLvknfFM/lwTUAxctT9DbW8g9y
	zJq2oKraoA7f7voZF1k93ss=
X-Google-Smtp-Source: ABdhPJzzWQiVC0got288ftJWqQiWD/73k76R37dDmMJXbVkPBGxia+NG+sQ+w4+CPyIGw3df2sBagQ==
X-Received: by 2002:a1f:b291:: with SMTP id b139mr15004627vkf.0.1607402825254;
        Mon, 07 Dec 2020 20:47:05 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:e686:: with SMTP id d128ls1060222vkh.2.gmail; Mon, 07
 Dec 2020 20:47:04 -0800 (PST)
X-Received: by 2002:a1f:304a:: with SMTP id w71mr15051736vkw.3.1607402824706;
        Mon, 07 Dec 2020 20:47:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607402824; cv=none;
        d=google.com; s=arc-20160816;
        b=MXy0XhJW4RNrap6bhasMrzad45Yul8q0IlOgAkSPDQ6HG4+OVP8t1EOAl7hb/b6neY
         hYMCK4i9iM8/6/iIJd4u3i6TwTn0cu1vosbJS+u75njYOD8dy2BDElTCRcFAXhy1lL3A
         Z5rQbX/u/i6nRIS+TH51oETr804x0dZxYRbLfA48gVu34RLQaJU+8rM9CBDB33QWS+4M
         omP6Og6l5rtbY93+s6KKQ0WuGR8/2ZMhhYBnyYKVgk0I/UpAO31BzXJyC6imXaKh4ig1
         OLW/i07FR9MtbeDlKLu7eabDpkluqF4L0whWLggtKqrw/a5PkOjVHqdhCd3wfd58tBMH
         38Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ab8TR71D8wvDMjyDs6nWrexGzGp6Fis30WChrKD0GJI=;
        b=MYMAvL/hI2hycYPSlEDWMYONNLNER53aX2GJDTla2AMgUS6ajW0j3dl+sSI0k/NiVx
         c43eMrAcTivzJXU1SdXHQIpqmqLr5Gw0oFdOVvwETKsL56SuT7UnzVFiOGLx5G8VK+8W
         PtQp/r/7TWiLdzNHzTHhR0YWGUHU50u43XixVcyUwmtmvSW06HX60V33BSY+J+6LNg20
         iLeneWFcl8+pFp5RJ5TuB9TYnCW9uvvnLqUPODtr5Veb+se6W5p8Hb88l5N/aaWzLTw1
         J8FxckLzRwnF4gkSC8bXjLW7K+6rwGDc84G0yhUTtBukGh8JYHK8n5wZCmVZpH50EobK
         jwxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=I1KcsdWf;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id a16si1034430uas.1.2020.12.07.20.47.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 20:47:04 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0B84kqxV039474;
	Mon, 7 Dec 2020 22:46:52 -0600
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0B84kqEQ098505
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 7 Dec 2020 22:46:52 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 7 Dec
 2020 22:46:52 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 7 Dec 2020 22:46:52 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0B84kkoW053051;
	Mon, 7 Dec 2020 22:46:47 -0600
Subject: Re: [PATCH v8 16/18] NTB: tool: Enable the NTB/PCIe link on the local
 or remote side of bridge
To: "Jiang, Dave" <dave.jiang@intel.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Jon Mason
	<jdmason@kudzu.us>,
        Allen Hubbe <allenbh@gmail.com>, Tom Joseph
	<tjoseph@cadence.com>,
        Rob Herring <robh@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
References: <20201111153559.19050-1-kishon@ti.com>
 <20201111153559.19050-17-kishon@ti.com>
 <f39cf769993541e2a46bfe4d777ccf46@intel.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <6a493055-eef0-5722-e24b-449a11cf8a36@ti.com>
Date: Tue, 8 Dec 2020 10:16:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <f39cf769993541e2a46bfe4d777ccf46@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=I1KcsdWf;       spf=pass
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

Hi Dave,

On 07/12/20 9:25 pm, Jiang, Dave wrote:
> 
> 
>> -----Original Message-----
>> From: Kishon Vijay Abraham I <kishon@ti.com>
>> Sent: Wednesday, November 11, 2020 8:36 AM
>> To: Bjorn Helgaas <bhelgaas@google.com>; Jonathan Corbet
>> <corbet@lwn.net>; Kishon Vijay Abraham I <kishon@ti.com>; Lorenzo
>> Pieralisi <lorenzo.pieralisi@arm.com>; Arnd Bergmann <arnd@arndb.de>;
>> Jon Mason <jdmason@kudzu.us>; Jiang, Dave <dave.jiang@intel.com>;
>> Allen Hubbe <allenbh@gmail.com>; Tom Joseph <tjoseph@cadence.com>;
>> Rob Herring <robh@kernel.org>
>> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>; linux-
>> pci@vger.kernel.org; linux-doc@vger.kernel.org; linux-
>> kernel@vger.kernel.org; linux-ntb@googlegroups.com
>> Subject: [PATCH v8 16/18] NTB: tool: Enable the NTB/PCIe link on the local or
>> remote side of bridge
>>
>> Invoke ntb_link_enable() to enable the NTB/PCIe link on the local or remote
>> side of the bridge.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  drivers/ntb/test/ntb_tool.c | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c index
>> b7bf3f863d79..8230ced503e3 100644
>> --- a/drivers/ntb/test/ntb_tool.c
>> +++ b/drivers/ntb/test/ntb_tool.c
>> @@ -1638,6 +1638,7 @@ static int tool_probe(struct ntb_client *self, struct
>> ntb_dev *ntb)
>>
>>  	tool_setup_dbgfs(tc);
>>
>> +	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
> 
> The tool expects the user to enable the link via debugfs according to documentation. Is this necessary?

right, it can be enabled using debugfs. Will drop this patch.

Thank You,
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/6a493055-eef0-5722-e24b-449a11cf8a36%40ti.com.

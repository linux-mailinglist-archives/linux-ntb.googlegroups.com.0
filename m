Return-Path: <linux-ntb+bncBCOOP4VF5IDRB662UD5QKGQE4FN64NY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FA3271A1C
	for <lists+linux-ntb@lfdr.de>; Mon, 21 Sep 2020 06:35:08 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id h14sf6276338oos.16
        for <lists+linux-ntb@lfdr.de>; Sun, 20 Sep 2020 21:35:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600662907; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZrfBAXHI5wy56SWxlRpDz7n5oOGt6532VJDXVbw1/qyuFtqvetra9DXh6OD6Wj7VKF
         wV8Jt+jtsj9Nr73m/eG8Ix5g7Y+eGBzHDQ3aQYI1W+tfSRRTPUEh7M6SEMl40ZCiSNup
         UeHDU5Jm2FKMyhA7yXWcr1cruGYBH8FGfsWPvahyLjbcK/8QaFmK6GBTW2ZreB9NjiPx
         HK8TuJGulfmAzVWuzdG042qMfTuTdJpDNQEh/UgGFCvL7UHDIVisjdamFqr/LIRdIgMW
         1DLn9TbxWZANjZBQHx2FhFXL8y3IkGauNkK3TzjXdq0MPYv2xxEmkju1FLY8OjJx2Y5q
         Dvew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=pEB2oaJwVU3jy2HijvZuYw2h/UQUV66432JXsLFx63w=;
        b=wTczQpRbgHcA+IuRIkZ2QenHsG0mSAiNHuMcr9Rqg+EiTuvM3e5Vr8kJ4tlqgu1xLn
         J4dEtgD5/5mB/dHMEKnOK6VQ7Tz2/PPP4xeaTPu+9qPkpPaZ86O/SiRBKwtZnLaNK6G0
         YS4dC5aYL2jZByQuP5PUM+f9Zgnv7/bSNW9m70yTdwGbBpGkES67si1X+S1e2/1S8F0T
         Am3HHIn7U1Cq5z+b3yGxblCQrSNdQ9DxEdM37+0W7mas/VTxKcBn9nZj1VDe5ASEKBI9
         SjT3BXHYDqzgfnQxI7LoeOvkHrDXBGRVhNH3L6X5Rsi5jMTqKLt7DQlWy5Ao1H3CT6bH
         uCCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=eazXT8Pp;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=pEB2oaJwVU3jy2HijvZuYw2h/UQUV66432JXsLFx63w=;
        b=eqiExmWDoEc64yGZkUR1qLzAG4Nsodum8cD6ryYzTLt8g6bi/r5hT7sxrI6hGMxz5s
         GUd25lChp0gfBO0qSelUGKhCtJpCsF2cd1zKOjAHQaZX8jAWHlGFpspnns0W0HG4F+pz
         Kz06dVAzXB/aeP6EvCAhv5L1tB4TSPwZbfq+3rEXiJGRerRm+/Onr7zGQ+uTPywL3Ll+
         FvsAOeT74w1jSprSz8hu1dHi4PYy7hdPMhHJYnAsKPBjIhftmplMCf3V1TBTEP4FRF0Y
         Xg49suHQDt/Vypy7f03DWkai9YhzAJxiUhurUBVgQPXswMGh1wpnmPUb8gIQEdOHl3ss
         3Tqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pEB2oaJwVU3jy2HijvZuYw2h/UQUV66432JXsLFx63w=;
        b=TBYUeE1FY1MUn8x5K7D1m8GbTDhqIwGKRQTqd35nL9C97Y51kG1P0hFHaInah6JBw7
         j4OjAVnJ48pE7sfKjylok5/kkK5z9m4Lar/R1f8G+CE1+VcgWWnRbipt96s4nQLZ9eYD
         9KBLTqfOCH1h8GTU0qkYFp2P70ZTj0eN8UXuNmQ40QBOlkVlXDoLJzMxptwE4pl2yo1z
         /ucE115GB8ByNwDPAOeVrtdn9OM5vJju+y2jqDUZGg/yGKseWi10hGT4tTXNbdLNKl0D
         I71KcQTjAv4fM93b+W6cB9Z2waVXCxUMmrlwQn3UdVsgEeu6gA+MnxxrMDOT0lKwH5Z8
         dVuA==
X-Gm-Message-State: AOAM53268MLHv3VMFkzUF6LaqL5h7dhRxmLMpKIs9c80MY2PQfF9324G
	/AsoxsDKavQGvmt40O3RjXA=
X-Google-Smtp-Source: ABdhPJwvV71V7LZpvc+zxOrDbUf1H0X9Fmd0/fy1xArr28dlRzQL5OyTOQzgnYevU6uzeR7rHO3J6Q==
X-Received: by 2002:aca:ef89:: with SMTP id n131mr15614361oih.22.1600662907246;
        Sun, 20 Sep 2020 21:35:07 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:a84:: with SMTP id q4ls2654051oij.8.gmail; Sun, 20
 Sep 2020 21:35:07 -0700 (PDT)
X-Received: by 2002:aca:da06:: with SMTP id r6mr16599226oig.88.1600662906923;
        Sun, 20 Sep 2020 21:35:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600662906; cv=none;
        d=google.com; s=arc-20160816;
        b=v/afGI9yQtRmVucsmqaWM7HuqjkYMtMG0yKgWy4n/AzTsRkOcDkPtz8sqOn8kd8G3S
         aYlZRZE6kcbLbGAO8sU+YHpU7Nlx21j5WZINysQj3+ilNG+gXMs6PvHVrEYc2wWQeTIN
         GgstjdjhSsCzyilVLbfQYDuKHwQj0ZFHLmxHrlw9HyFO92YWz+Y7Qw8U8JO5PYSPBTGQ
         XRwJgsOCXmtVp/gJr6hyeRPlIx0EmPrtEjVs5M8uszDJdWRJRzY56TkN8mtYFKR8ZFhj
         fYwL/fI22w0DiwCXTcWE18lx+zgGy5mqMVA1UpSehN2hebZ/+i0PyquT470pYZr4geas
         DYTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=WgoOtI+mWNEhU87sIoLc3wQAHysSHQBYrpEdQxdi7R0=;
        b=avjllIUcvDxNXWPkp+bAHLKygsLUUX6PsrywUsk6lnq66RoYZTq+VNWULjwN1/Wg0N
         r7YOpr4ibVf8mrYWOhawe5Sghq31Vg1kzqj0iTcy8uicVwXmgIMxSedzEPFNcktvbHz9
         Ogc02cZuxnLcX4/ZJQtKZCNQU892/QLp7Mv9I6LOcJhSPRETtjARVwzIfPke7uWWFx6E
         ovzdAL6eDAZphL6b0MMjBkkcmWLFPFx6SHY/8GYTIWH7zC7X7ZNJoj+nef93RPVWAs45
         kMy0GCrnuCPIxyHCqFMdjPrMhS1ipCWFMUuYan9CafxuTk2o1bHw3ufl5xvcqYAPyX2E
         Y6Hw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=eazXT8Pp;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id m3si867892otk.4.2020.09.20.21.35.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Sep 2020 21:35:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08L4Yvj4101198;
	Sun, 20 Sep 2020 23:34:57 -0500
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08L4YvJW121785
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Sun, 20 Sep 2020 23:34:57 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sun, 20
 Sep 2020 23:34:57 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sun, 20 Sep 2020 23:34:57 -0500
Received: from [10.250.232.147] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08L4YphG020154;
	Sun, 20 Sep 2020 23:34:52 -0500
Subject: Re: [PATCH v5 12/17] PCI: endpoint: Add EP function driver to provide
 NTB functionality
To: Randy Dunlap <rdunlap@infradead.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>,
        Arnd Bergmann <arnd@arndb.de>, Jon Mason
	<jdmason@kudzu.us>,
        Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
	<allenbh@gmail.com>,
        Tom Joseph <tjoseph@cadence.com>, Rob Herring
	<robh@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>
References: <20200918064227.1463-1-kishon@ti.com>
 <20200918064227.1463-13-kishon@ti.com>
 <31985ad8-2e9b-99d8-55ef-4ae90103e499@infradead.org>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <b79f760b-0641-0e14-375b-df89588405b6@ti.com>
Date: Mon, 21 Sep 2020 10:04:45 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <31985ad8-2e9b-99d8-55ef-4ae90103e499@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=eazXT8Pp;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted
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

Hi Randy,

On 18/09/20 9:47 pm, Randy Dunlap wrote:
> On 9/17/20 11:42 PM, Kishon Vijay Abraham I wrote:
>> diff --git a/drivers/pci/endpoint/functions/Kconfig b/drivers/pci/endpoint/functions/Kconfig
>> index 8820d0f7ec77..55ac7bb2d469 100644
>> --- a/drivers/pci/endpoint/functions/Kconfig
>> +++ b/drivers/pci/endpoint/functions/Kconfig
>> @@ -12,3 +12,15 @@ config PCI_EPF_TEST
>>  	   for PCI Endpoint.
>>  
>>  	   If in doubt, say "N" to disable Endpoint test driver.
>> +
>> +config PCI_EPF_NTB
>> +	tristate "PCI Endpoint NTB driver"
>> +	depends on PCI_ENDPOINT
>> +	help
>> +	   Select this configuration option to enable the NTB driver
>> +	   for PCI Endpoint. NTB driver implements NTB controller
>> +	   functionality using multiple PCIe endpoint instances. It
>> +	   can support NTB endpoint function devices created using
>> +	   device tree.
> 
> Indent help text with one tab + 2 spaces...
> according to coding-style.rst.

Okay, will fix this.

Thanks
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/b79f760b-0641-0e14-375b-df89588405b6%40ti.com.

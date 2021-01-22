Return-Path: <linux-ntb+bncBCOOP4VF5IDRBXVYVOAAMGQE642QNKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E7383004E2
	for <lists+linux-ntb@lfdr.de>; Fri, 22 Jan 2021 15:08:31 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id g14sf881444qtu.13
        for <lists+linux-ntb@lfdr.de>; Fri, 22 Jan 2021 06:08:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611324510; cv=pass;
        d=google.com; s=arc-20160816;
        b=kT+J/aWogv5aiB5HsRufX69J0T9TV2VMyZ4/3Vl507n8tgf1IaFk4Dedx6ixW9ULgi
         0bS/HTS1zqyQbd1886NSpG3Q7F0QvMYj4L2Dw9M51EWxjmwp1WS6DRKQ+XhR+kgKUXa+
         vlzqBHsYQW2dTrP3g0YLuUAGvPOc2NmPlk/Aw5lxLQPevP1k+Io8mXNko0uHZF22L72K
         VjblGn2Q191pU9Oni3oAxlVpgIzrSr4le1F/eBU7gvj6SFwQKDD+pPioJjcBka3Ghcwj
         v3yR/Dn8JdYBWKRU/m2PsTSTMYynt+P/drTjoqvc+i8BruMnkmLbDZgLzYIVYN4ocrBB
         QnYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=lmqTA1mi7pnD24i4dtIDQaoRHuUIBlZNN543EU06src=;
        b=oW0TGPp74xdr5KHkyGb9hULkUj5+tPE8l/DABTilq6e+CTXmg2TgJmDX93Cmz7AqrR
         xATwzy0LfxP7RF+1/NUghzu8BgnO5B59LwmJ2JNOFnCPPMa2VfLT4XxMBmoM28BfTKX8
         zG0B//XO+DayIq1XmpSOyMt37bBdQ3mZMFwXCD3MjDnacqwJ8fQBuUt1D2+DnJNaxV1T
         gZIHcnwwDkS/8bcmZLN1bl/3AGRCmoVqOXTlv0CbbPQikpWD0h6L6IyYKsG3Phc7TRzG
         jpXrAscfoNa4aNgfqwgzLJ3lhttQLGOgfdaKhrLRIi3JRljYoJz+4QKcAfOAVsP6FXj2
         juRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=u3V0pMyk;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=lmqTA1mi7pnD24i4dtIDQaoRHuUIBlZNN543EU06src=;
        b=LbZ4vw7UbSUEUm9Wd0bp7N2F5ywyioEmXy1/aHoN25PrFz+obga9lLSryz/CE5YDOP
         lmrwkTohEJvLPX9Ny3A1f9lZDYjbFdiru8lkZr04bQ1EOSMdFtQ0qflPAoGEiHhRqffj
         mIpcUCNLaE5T+nCv61h4gYRP8e30CjIjzg4vZ7uAamTxJ5WsS1UO3ancRoa7Y4ghcgno
         7IyjmBoiit39TtXXxl1M5Dwjf5HQswyQhrPqGO3dym2g5GaOLIzkkkKdD0FU+wdCOaEb
         niqUEpLTauktJd8b30I6/3DOAyYVk8qgeFQ60W5bpnHXUlpjDIBHhKpRN3pbCk0jr4hG
         I3jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=lmqTA1mi7pnD24i4dtIDQaoRHuUIBlZNN543EU06src=;
        b=VOTTzoHpsr3ypVakQgQPZLHLaOPoApqiiNtMyPuLtGWrBVWbnT8LMvWyN/k4CdRVmt
         rfbU45KYqE6rAS9xZ1iBfN2lwWy9ZHGHBCuiLkzRRH1OGNmSV1hvK/P7eRoxXuRQJ9P2
         5BeG/D6Z20Pc+ZGJnkRyhru78AXAigOInO40ZZVnfOhbtt64q4zcHGTGj9T1zBCnYzLD
         w1U6X8te+B+HeWG2+ppB/SA9aimWlGKKbFS92+nA+xMd11+Qf+kDS4opu68VAF6xj4Hy
         2UIxMqjgX0RZ5KtSQp54CXTl2p7t+2MFopjfBhnx1kf2XhJWVt8b7ajqQGJGJo7dBX9C
         CcfA==
X-Gm-Message-State: AOAM533twKXb9xZvxWQPgIc1g+KX92Yoeb+FwN+KF64qYwfctxqhoJen
	2LbZHhx5Ob/N23nKt892oMM=
X-Google-Smtp-Source: ABdhPJzH9FWzURYJoRuZGURVIk64PMODK8PktTcyZ/VZ560aWihDqfAOkl9GEzHI9wrYvWRbfa74kQ==
X-Received: by 2002:ac8:480f:: with SMTP id g15mr4444113qtq.382.1611324510282;
        Fri, 22 Jan 2021 06:08:30 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ae9:edd6:: with SMTP id c205ls2859519qkg.10.gmail; Fri, 22
 Jan 2021 06:08:29 -0800 (PST)
X-Received: by 2002:a37:dc5:: with SMTP id 188mr4929478qkn.404.1611324509786;
        Fri, 22 Jan 2021 06:08:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611324509; cv=none;
        d=google.com; s=arc-20160816;
        b=WFwmkS9+N5rynB+7fhsRYmS8IQYwtVrF7h+ChkxymTlQbWyca2xdgFL2lrFJRoins9
         c8sNW53oxQ0i/yI/UjsxUFnitaRYMO7vq7zRrmpjtyzcIHr3cBIs6/VGHES/tw78+jHZ
         kg2JNJRzmATNdT8qc3lTRVS/w2AEb9cztcvIgdrJg3pPyIzzdhuCAhlGKnfUaiU5Qw0f
         SnXVDTaxX7gsxekeUQ+XJroJtD4A1T+PDtq0QMiTp1C6jOjY62LBzGpqQGqKUeVwDUta
         Grx8Riq0+B2gkJdABZuxYwMxVqFbkuKldwJkqPNaRessxHOvYlPkFgd62iJhe2n/3aGG
         1AsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=w4XabDkfYqLlpKtLwnIUmLYMQ/z5aYMl+m+dHwL0v8k=;
        b=TheEEuRMykdNuh2cMFidDVdIhbN0FjWF+NVetac2lYDCFUm3f8C+5ocJoQuzAykUPL
         BJlPYl8eSaFXFmiJaadTaj46VtDTeKeHX9d478RpatBZl6SUbOjhDUMv1JRpof4JAau4
         OQ93QYu+ISxA69kRQDniv/5DjZNoyR9J630JwJGar4he6sDj6hxP/TS2PDY4Yd1KoLyg
         lv+RyoXLAHhdoK1VxegFBeUoLM/xkTt7KCAgE0eDCH7Jr7VBVBKJQcUm9WL5WhvTKFxJ
         TjTsmxI3v2U4jlr8OevGXEytgPa7oCQd4H/nNqwsBtAmiO2qQC41YGW812YSq9mmCmwQ
         EIkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=u3V0pMyk;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id n18si547827qkk.7.2021.01.22.06.08.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 06:08:29 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10ME8IVL110496;
	Fri, 22 Jan 2021 08:08:18 -0600
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10ME8I6e072597
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 22 Jan 2021 08:08:18 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 22
 Jan 2021 08:08:18 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 22 Jan 2021 08:08:18 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10ME8BrS073625;
	Fri, 22 Jan 2021 08:08:13 -0600
Subject: Re: [PATCH v9 17/17] Documentation: PCI: Add userguide for PCI
 endpoint NTB function
To: Bjorn Helgaas <helgaas@kernel.org>
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
References: <20210119181852.GA2495234@bjorn-Precision-5520>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <809ab02c-8cc2-86ea-0524-b9350d38c684@ti.com>
Date: Fri, 22 Jan 2021 19:38:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210119181852.GA2495234@bjorn-Precision-5520>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=u3V0pMyk;       spf=pass
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

Hi Bjorn,

On 20/01/21 12:04 am, Bjorn Helgaas wrote:
> On Mon, Jan 04, 2021 at 08:59:09PM +0530, Kishon Vijay Abraham I wrote:
>> Add documentation to help users use pci-epf-ntb function driver and
>> existing host side NTB infrastructure for NTB functionality.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
>> ---
>>  Documentation/PCI/endpoint/index.rst         |   1 +
>>  Documentation/PCI/endpoint/pci-ntb-howto.rst | 160 +++++++++++++++++++
>>  2 files changed, 161 insertions(+)
>>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst
>>
>> diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
>> index 9cb6e5f3c4d5..38ea1f604b6d 100644
>> --- a/Documentation/PCI/endpoint/index.rst
>> +++ b/Documentation/PCI/endpoint/index.rst
>> @@ -12,6 +12,7 @@ PCI Endpoint Framework
>>     pci-test-function
>>     pci-test-howto
>>     pci-ntb-function
>> +   pci-ntb-howto
>>  
>>     function/binding/pci-test
>>     function/binding/pci-ntb
>> diff --git a/Documentation/PCI/endpoint/pci-ntb-howto.rst b/Documentation/PCI/endpoint/pci-ntb-howto.rst
>> new file mode 100644
>> index 000000000000..b6e1073c9a39
>> --- /dev/null
>> +++ b/Documentation/PCI/endpoint/pci-ntb-howto.rst
>> @@ -0,0 +1,160 @@
>> +.. SPDX-License-Identifier: GPL-2.0
>> +
>> +===================================================================
>> +PCI Non-Transparent Bridge (NTB) Endpoint Function (EPF) User Guide
>> +===================================================================
>> +
>> +:Author: Kishon Vijay Abraham I <kishon@ti.com>
>> +
>> +This document is a guide to help users use pci-epf-ntb function driver
>> +and ntb_hw_epf host driver for NTB functionality. The list of steps to
>> +be followed in the host side and EP side is given below. For the hardware
>> +configuration and internals of NTB using configurable endpoints see
>> +Documentation/PCI/endpoint/pci-ntb-function.rst
>> +
>> +Endpoint Device
>> +===============
>> +
>> +Endpoint Controller Devices
>> +---------------------------
>> +
>> +For implementing NTB functionality at least two endpoint controller devices
>> +are required.
>> +To find the list of endpoint controller devices in the system::
> 
> Is the above one paragraph or two?  Reflow or add blank line as
> appropriate.

I'll add blank line above.

Thanks
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/809ab02c-8cc2-86ea-0524-b9350d38c684%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB5P2ZKAAMGQER6W7XHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BD430772F
	for <lists+linux-ntb@lfdr.de>; Thu, 28 Jan 2021 14:34:47 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id o77sf3583541pfd.9
        for <lists+linux-ntb@lfdr.de>; Thu, 28 Jan 2021 05:34:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611840886; cv=pass;
        d=google.com; s=arc-20160816;
        b=ySJLUM2XZ0Faegl7ufMemxGU8JwmFvPk+FkV5SjXzEOUl9uqgsxKaArBCGyNLAxYdp
         yV387ebEO7OFfHy0/VnnwWpXvCwpHEp4H/zQ332vQTNmqu1Q83rcb1sDvNEzxTujZsvz
         rAK56a0EKlcyX9AwgdrRutY0aTmdAAp4FZO5e6vq9pviBenoUaFuy/PLhox6lkDdD3L5
         2ov6xLbVMW+T0BRvtyK7IcgRwWFh0UVpUkAorbiFWT+O36JwfckyVIyRg3oddLhQhnTf
         6Xu2+1IHVlPDuSblhWhb5jqXbVFfQDVcsS1Q0n89A+DDvLq6OqEmpOMlq/RhJrvFW73v
         MZQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=hvn6coghvVVsTQVMA8lh/W5/ekFTBN+st7A2uYn5CPo=;
        b=yV6PomE5I9syevJIsDgw1GbvOJuyEOObtac5u5TUNsBlZJ2D/z6bmk7JIuA8EN2dBj
         87pWiX6jE9Ux+6CLO8+S0TWbyXno/xfK3Dnu0ErvMyFD3ebbI9K2LZFKWG1y6W4NZOJR
         8y4CE/XVldQj1ZmDdO5ejzsUh0h0Y7vRRnRivlMFe2bpiz7w3B/BG5dQoArOEhBIkqiD
         llhMV6GOrP0/MQZpAN0nMDS410yxb+70cecLvjR1PVUvzEhXvKzkL2KlFr8vHtI3YGTO
         sjQqbIMKkUZcshdHg7bZEGR+Oeu89FeKugYiVWUzUKSQNy6KomKveZ/AQwYlsklBRO99
         iowA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uWVhpPjQ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=hvn6coghvVVsTQVMA8lh/W5/ekFTBN+st7A2uYn5CPo=;
        b=nFqC+OP5DAUThStkfj/UEvcPBvDxArlEAYRFfTeO5J+gKmz3Rnb3HFCWlW2RdwzB+Q
         Pdo2ETPA2jWQjHrkAkGr5fnmNr31CXIvzVdgXBBhcK6d84Ey9TvgdAsfliMuzvMgMXCS
         TWAYVfBNY/roRkb7FWtsyLgYeA7YsjCtBIcOisMv6J/J7hnD7LbSL5qDrTyas7EIb9gt
         wYKZNolFzVOpmzY0jI5jyzKb9+lRYcRCnHYmjd/fENZsBkWd8wJqePomcm/zkJb+nohB
         7kuoEHfWTVE2JTiWCKc/bzYgF9D7J83dKWN0kEs/UGrOOGctDkiXNnN/7q3FY8jCFb94
         1prw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hvn6coghvVVsTQVMA8lh/W5/ekFTBN+st7A2uYn5CPo=;
        b=rowj9dOxyKMpyGUsvYgByNJPyAtb2wVWhobvE7AyDr2sjLz8EnO9fcTYKdkrXwTzrT
         Q/uTNuKOqh454WPLMTv9TWwuk2EfxSR3gf128oYy8nQB0vLkIdls7DB1AgATCkBmJ37x
         ccKKGC98IgTMWsxoCTvjaLeIXWzuT3pCk9q9l3Yq+95j5pZlhQNmJCkrfIbtQyzOiHXi
         7NriSg0Awb6FdUeisKOqqS/V8Rii4tZKVlh+kFIata+DVNmrHewrg7Gn/gSzta94mouJ
         g0zN1c6n6vWUWS41WVvu9gKJoJTabSM9wRYfTGNfupqw//Sl4pe5LmmxUWe4SGwzZ20Q
         NVYQ==
X-Gm-Message-State: AOAM532LnOpf3Zu1mk0dRtnm0CI+2btwsn7D24xSZYKQSSbkgU9Fj1CU
	0iovtMrGyUNGtr6TWf6iRjw=
X-Google-Smtp-Source: ABdhPJz9cOkjQnKzxckVD16c7c6zaIIC7FCfojo3CeS0YwUewrd4rXXytmRuPf6lImFnVTYF5Tzhkg==
X-Received: by 2002:a17:90a:6a4f:: with SMTP id d15mr11452860pjm.51.1611840886017;
        Thu, 28 Jan 2021 05:34:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:7583:: with SMTP id j3ls2740713pll.0.gmail; Thu, 28
 Jan 2021 05:34:45 -0800 (PST)
X-Received: by 2002:a17:90a:a88:: with SMTP id 8mr11117159pjw.120.1611840885425;
        Thu, 28 Jan 2021 05:34:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611840885; cv=none;
        d=google.com; s=arc-20160816;
        b=Uxi/Td9cczf0ix/IdgD19EtmvzbZyxKnapHLIFvE1ap/zcS0/5imsbo8As1MQ/oz0a
         z7/55sk+tZKzQULyyOf99kjTzDFn38tMt2Bi8j/j7i2i8arU0EPUMY/NN7WSMI5W0hrm
         K8nC8vF/CGlAxbxy5sfsJ6lC6f9r8aIQfdUJ1Lfm1vc2k80ld/CFB0CRHaIntZyfp+3f
         3HoVjgGiOThSZQggkFNVRMxit1kpeq0L1kvECrkMAeMK74m5M7X415uLQNfCrSfSAwZH
         glgBDg9PAhJTi0IgTb9Yc3K+wcoa2LcU6wLIa7u3z1CVqMrjyUcyFEdQra0al+0ADaA5
         1Q4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=iprY/b77MgjOfCyrnzXeH/gJXeGLHaYSBChiH3K82ts=;
        b=TcxGqnahwBXYbuAed1V8LwHCjXM5TIpXqdBas+ok6NkxjBXgqFDvEXcArvGxsa9gZc
         MaWkYRtCF3bSjvQPLCIYetlsIt9XDXe3Ts29JoUgq14huNMKA8IPKmuJvDaOtGqQPgbw
         nljMO6cQiuaY/RM8Dyk5Ko7Uip8nt0DA5xukxgCzhTPAXtlRg2qER+OtWGiLYZB4Ovte
         icrRcCHYA/WypuvJYLohdf3H7jbkJO7beaNkZRMyyv5kfwD0dWgtqTo0djf5RsTCNx4p
         le5e2AW+8Vx1U/aaz9b6ZFljCyiy9i6suET+bjC5XXSEsU/9SI3O5ynTCJILg2XAU+5A
         BiPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=uWVhpPjQ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id 26si305466pgm.1.2021.01.28.05.34.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 05:34:45 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10SDYXEk017356;
	Thu, 28 Jan 2021 07:34:33 -0600
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10SDYXwc019811
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Jan 2021 07:34:33 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 28
 Jan 2021 07:34:33 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 28 Jan 2021 07:34:33 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10SDYSbN048392;
	Thu, 28 Jan 2021 07:34:28 -0600
Subject: Re: [PATCH v9 01/17] Documentation: PCI: Add specification for the
 *PCI NTB* function device
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
CC: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Jonathan Corbet <corbet@lwn.net>, Arnd Bergmann <arnd@arndb.de>,
        Jon Mason
	<jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe
	<allenbh@gmail.com>, Tom Joseph <tjoseph@cadence.com>,
        Rob Herring
	<robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <linux-ntb@googlegroups.com>
References: <20210119181106.GA2493893@bjorn-Precision-5520>
 <797ec9f2-34c3-5dc4-cc0a-d4f7cdf4afb0@ti.com>
 <20210128121147.GA23564@e121166-lin.cambridge.arm.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <f29d75ec-504f-3def-ff64-f420fcd3d10e@ti.com>
Date: Thu, 28 Jan 2021 19:04:27 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210128121147.GA23564@e121166-lin.cambridge.arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=uWVhpPjQ;       spf=pass
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

Hi Lorenzo,

On 28/01/21 5:41 pm, Lorenzo Pieralisi wrote:
> On Fri, Jan 22, 2021 at 07:48:52PM +0530, Kishon Vijay Abraham I wrote:
>> Hi Bjorn,
>>
>> On 20/01/21 12:04 am, Bjorn Helgaas wrote:
>>> On Mon, Jan 04, 2021 at 08:58:53PM +0530, Kishon Vijay Abraham I wrote:
>>>> Add specification for the *PCI NTB* function device. The endpoint function
>>>> driver and the host PCI driver should be created based on this
>>>> specification.
>>>>
>>>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>>>
>>> A few typos below if there's opportunity for revisions.
>>
>> I'll fix them.
> 
> Hi Kishon,
> 
> if you have changes please send them along and I will re-merge the
> whole series.

I'll resend by tomorrow. Hope that's fine.

Thank You,
Kishon

> 
> Thanks,
> Lorenzo
> 
>>>> ---
>>>>  Documentation/PCI/endpoint/index.rst          |   1 +
>>>>  .../PCI/endpoint/pci-ntb-function.rst         | 351 ++++++++++++++++++
>>>>  2 files changed, 352 insertions(+)
>>>>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
>>>>
>>>> diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
>>>> index 4ca7439fbfc9..ef6861128506 100644
>>>> --- a/Documentation/PCI/endpoint/index.rst
>>>> +++ b/Documentation/PCI/endpoint/index.rst
>>>> @@ -11,5 +11,6 @@ PCI Endpoint Framework
>>>>     pci-endpoint-cfs
>>>>     pci-test-function
>>>>     pci-test-howto
>>>> +   pci-ntb-function
>>>>  
>>>>     function/binding/pci-test
>>>> diff --git a/Documentation/PCI/endpoint/pci-ntb-function.rst b/Documentation/PCI/endpoint/pci-ntb-function.rst
>>>> new file mode 100644
>>>> index 000000000000..a57908be4047
>>>> --- /dev/null
>>>> +++ b/Documentation/PCI/endpoint/pci-ntb-function.rst
>>>> @@ -0,0 +1,351 @@
>>>> +.. SPDX-License-Identifier: GPL-2.0
>>>> +
>>>> +=================
>>>> +PCI NTB Function
>>>> +=================
>>>> +
>>>> +:Author: Kishon Vijay Abraham I <kishon@ti.com>
>>>> +
>>>> +PCI Non Transparent Bridges (NTB) allow two host systems to communicate
>>>> +with each other by exposing each host as a device to the other host.
>>>> +NTBs typically support the ability to generate interrupts on the remote
>>>> +machine, expose memory ranges as BARs and perform DMA.  They also support
>>>> +scratchpads which are areas of memory within the NTB that are accessible
>>>> +from both machines.
>>>> +
>>>> +PCI NTB Function allows two different systems (or hosts) to communicate
>>>> +with each other by configurig the endpoint instances in such a way that
>>>> +transactions from one system is routed to the other system.
>>>
>>> s/is/are/
>>>
>>>> +In the below diagram, PCI NTB function configures the SoC with multiple
>>>> +PCIe Endpoint (EP) instances in such a way that transaction from one EP
>>>> +controller is routed to the other EP controller. Once PCI NTB function
>>>
>>> s/transaction ... is/transactions ... are/
>>>
>>>> +configures the SoC with multiple EP instances, HOST1 and HOST2 can
>>>> +communicate with each other using SoC as a bridge.
>>>> +
>>>> +.. code-block:: text
>>>> +
>>>> +    +-------------+                                   +-------------+
>>>> +    |             |                                   |             |
>>>> +    |    HOST1    |                                   |    HOST2    |
>>>> +    |             |                                   |             |
>>>> +    +------^------+                                   +------^------+
>>>> +           |                                                 |
>>>> +           |                                                 |
>>>> + +---------|-------------------------------------------------|---------+
>>>> + |  +------v------+                                   +------v------+  |
>>>> + |  |             |                                   |             |  |
>>>> + |  |     EP      |                                   |     EP      |  |
>>>> + |  | CONTROLLER1 |                                   | CONTROLLER2 |  |
>>>> + |  |             <----------------------------------->             |  |
>>>> + |  |             |                                   |             |  |
>>>> + |  |             |                                   |             |  |
>>>> + |  |             |  SoC With Multiple EP Instances   |             |  |
>>>> + |  |             |  (Configured using NTB Function)  |             |  |
>>>> + |  +-------------+                                   +-------------+  |
>>>> + +---------------------------------------------------------------------+
>>>> +
>>>> +Constructs used for Implementing NTB
>>>> +====================================
>>>> +
>>>> +	1) Config Region
>>>> +	2) Self Scratchpad Registers
>>>> +	3) Peer Scratchpad Registers
>>>> +	4) Doorbell Registers
>>>> +	5) Memory Window
>>>> +
>>>> +
>>>> +Config Region:
>>>> +--------------
>>>> +
>>>> +Config Region is a construct that is specific to NTB implemented using NTB
>>>> +Endpoint Function Driver. The host and endpoint side NTB function driver will
>>>> +exchange information with each other using this region. Config Region has
>>>> +Control/Status Registers for configuring the Endpoint Controller. Host can
>>>> +write into this region for configuring the outbound ATU and to indicate the
>>>
>>> Expand "ATU" since this is the first mention.
>>>
>>>> +link status. Endpoint can indicate the status of commands issued be host in
>>>> +this region. Endpoint can also indicate the scratchpad offset, number of
>>>> +memory windows to the host using this region.
>>>
>>> s/be host/by host/
>>> s/offset, number/offset and number/
>>>
>>>> +The format of Config Region is given below. Each of the fields here are 32
>>>> +bits.
>>>
>>> s/Each ... are/All ... are/
>>>
>>>> +
>>>> +.. code-block:: text
>>>> +
>>>> +	+------------------------+
>>>> +	|         COMMAND        |
>>>> +	+------------------------+
>>>> +	|         ARGUMENT       |
>>>> +	+------------------------+
>>>> +	|         STATUS         |
>>>> +	+------------------------+
>>>> +	|         TOPOLOGY       |
>>>> +	+------------------------+
>>>> +	|    ADDRESS (LOWER 32)  |
>>>> +	+------------------------+
>>>> +	|    ADDRESS (UPPER 32)  |
>>>> +	+------------------------+
>>>> +	|           SIZE         |
>>>> +	+------------------------+
>>>> +	|   NO OF MEMORY WINDOW  |
>>>> +	+------------------------+
>>>> +	|  MEMORY WINDOW1 OFFSET |
>>>> +	+------------------------+
>>>> +	|       SPAD OFFSET      |
>>>> +	+------------------------+
>>>> +	|        SPAD COUNT      |
>>>> +	+------------------------+
>>>> +	|      DB ENTRY SIZE     |
>>>> +	+------------------------+
>>>> +	|         DB DATA        |
>>>> +	+------------------------+
>>>> +	|            :           |
>>>> +	+------------------------+
>>>> +	|            :           |
>>>> +	+------------------------+
>>>> +	|         DB DATA        |
>>>> +	+------------------------+
>>>> +
>>>> +
>>>> +  COMMAND:
>>>> +
>>>> +	NTB function supports three commands:
>>>> +
>>>> +	  CMD_CONFIGURE_DOORBELL (0x1): Command to configure doorbell. Before
>>>> +	invoking this command, the host should allocate and initialize
>>>> +	MSI/MSI-X vectors (i.e initialize the MSI/MSI-X capability in the
>>>
>>> s/i.e/i.e.,/
>>>
>>>> +	Endpoint). The endpoint on receiving this command will configure
>>>> +	the outbound ATU such that transaction to DB BAR will be routed
>>>> +	to the MSI/MSI-X address programmed by the host. The ARGUMENT
>>>
>>> s/transaction to/transactions to/
>>>
>>> Expand "DB BAR".  I assume this refers to "Doorbell BAR" (which itself
>>> is not defined).  How do we know which is the Doorbell BAR?
>>
>> right doorbell. That part is explained in the "Modeling Constructs"
>> section below.
>>>
>>> Also, "DB" itself needs to be expanded somehow for uses like below:
>>>
>>>> +	register should be populated with number of DBs to configure (in the
>>>> +	lower 16 bits) and if MSI or MSI-X should be configured (BIT 16).
>>>> +	(TODO: Add support for MSI-X).
>>>> +
>>>> +	  CMD_CONFIGURE_MW (0x2): Command to configure memory window. The
>>>> +	host invokes this command after allocating a buffer that can be
>>>> +	accessed by remote host. The allocated address should be programmed
>>>> +	in the ADDRESS register (64 bit), the size should be programmed in
>>>> +	the SIZE register and the memory window index should be programmed
>>>> +	in the ARGUMENT register. The endpoint on receiving this command
>>>> +	will configure the outbound ATU such that trasaction to MW BAR
>>>> +	will be routed to the address provided by the host.
>>>
>>> How do we know which is the MW BAR?  I assume "MW" refers to "Memory
>>> Window".
>>
>> right memory window. That's again explained in the "Modeling Constructs"
>> section below.
>>>
>>>> +
>>>> +	  CMD_LINK_UP (0x3): Command to indicate an NTB application is
>>>> +	bound to the EP device on the host side. Once the endpoint
>>>> +	receives this command from both the hosts, the endpoint will
>>>> +	raise an LINK_UP event to both the hosts to indicate the hosts
>>>> +	can start communicating with each other.
>>>
>>> s/raise an/raise a/
>>>
>>> I guess this "LINK_UP event" is something other than the PCIe DL_Up
>>> state, because each host has already been communicating with the
>>> endpoint.  Right?  Is this LINK_UP a software construct?
>>
>> Yeah. This is when an NTB client application is bound to the NTB device.
>> This is used for handshake between the applications running on the two
>> hosts.
>>
>> Thanks
>> Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/f29d75ec-504f-3def-ff64-f420fcd3d10e%40ti.com.

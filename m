Return-Path: <linux-ntb+bncBCOOP4VF5IDRBXF5VOAAMGQEMBOELLY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23c.google.com (mail-oi1-x23c.google.com [IPv6:2607:f8b0:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BFFF300521
	for <lists+linux-ntb@lfdr.de>; Fri, 22 Jan 2021 15:19:10 +0100 (CET)
Received: by mail-oi1-x23c.google.com with SMTP id l1sf2187006oib.10
        for <lists+linux-ntb@lfdr.de>; Fri, 22 Jan 2021 06:19:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611325149; cv=pass;
        d=google.com; s=arc-20160816;
        b=QFe6l4EYrVLg28/T6AMOGTFyUbMFB3BLgqKg/lK/EtIYGHeDt/aFo3NDfMdE+/yOhL
         tN2MTy8l/5UG5vC8htC0akKQAk9fmiwfLI7pquSW4dszIb7GiSyXQxfbBrSm4eKMfa+f
         9owZ3Uot5dNCJ5zPssVGHYwGOVxtqJxYoNwr7a+xRgH9hE05M+NB3CYi3Sprp0NMxBrY
         9CeNmy6Bqsg09+xnkY1wqyK2FXu+oeQ6c5s6ETIStsEjxiU1qNQDk6wmxUmkkID7osrR
         vjsSw2ayks8xSpryXGQWweknScKBl4PHp555ZPMbwb6NC5Jo0qxpF2dYgE9zr0Dh4n91
         /AFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=vQiMIDanAbknfLm/F2pi1n6CDviV+y4vJr2rbaXkb4A=;
        b=s16kuCxKtTa4l459ArteN4QOtZLYyFbuIEUWd6FfH5gS9XoeTZTXAK8QTD6T2UfYgY
         gnY5r7sSoWS4g9Mo5LskkdIoNTIRVATR7a8Wmjs3/dV8J9hU+pWWT6PkP/8pwV4YgZKZ
         MiNO5T0bsAuOI1KnH3EzpLznK1rXUz1h1zWJ+RfaXrYUwlozj95PRuzy3qvtoDErgmwJ
         N1zbjqjyZPTLmNHwxkyhXm18fOxKklh76bVpoLAKePLmnsIwWmKuQXKr+LfLIk+sgfyj
         2VHYrxDnsu236QWOedgjmWFIeUplJC3AoOmtQOSZG8+uh63cuHt32KAPTTDmeOvbn+c6
         xiVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=agChah64;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=vQiMIDanAbknfLm/F2pi1n6CDviV+y4vJr2rbaXkb4A=;
        b=QuOGXjyFNs3FDs/C1GomtT5n6HP11GfcN7nysRyQW0/ThBJim0zl1xzrazmR8NxVLX
         AwnQO6Lglfy5n35Ge14hQ2plLui8vTV3CjsWhZX2l2LKziMTsuDfHkwYXh5jl3X2zU+Q
         Ehjpn55taDjo2K7tQXgNldWRZDLM2z3y/uJlK2eY43rg9C53HBNzVo/69i17+Yr3PDYe
         DKrQP5FCkr/qCfij3Zjm/G3rZTQp+kLvJ1gET5VOBWWaBuIK9a4/POf00XzP1h1pcyFP
         7l5kWKXc4BmnypbZULKl53d1zOqGW2GdVX0SEVc5xhnj0fQpl+gSe/6wLrI5aBi5Wris
         rYcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vQiMIDanAbknfLm/F2pi1n6CDviV+y4vJr2rbaXkb4A=;
        b=nsACb5floHIfxn/6iEK+3qA8eBCMpBIjellFp6lfRPU8Y6+aXOFwhTXzRBpcnX5C7z
         MA/H7h6+jSgDiqGOVS9vv+32tf2vFH1h51hO2yP6NVWWSq1mm233xWpjfnvi4L9CkCH9
         RykIz9Jo6A1ZPTCGeL6AvCSPozyvhPPuhFf4FOxnOFjIAYi8GqiTqXgk0SOLQk1vv8gI
         dDt2gLN+yzzhXVhthECQ/z5/IF2p2WxhYcAHKjZ+K/VBPoTsnLbe03iUJSFQMgfcHQaZ
         E6jgimo6TK5bJp/ry7Fz/p0l/LiqdvKfZ7EPHVEbHrqJOkBEkMyo8mOAsrJ661TJCgHn
         s7Fg==
X-Gm-Message-State: AOAM530V/5alRqw6w/SLim9uf6/3fZ515kiT0U9D/2CjbGOZxX37IQ4o
	gie4fkjXEpKf2Fmga+54nY0=
X-Google-Smtp-Source: ABdhPJzGV2cAphvEnld/j1FL+KAaPr4YyqdAuiW+j/M3wfwgSjRDIFZn7T8h/vfJWBombsBMLH1qpQ==
X-Received: by 2002:a9d:64c1:: with SMTP id n1mr3486426otl.60.1611325148994;
        Fri, 22 Jan 2021 06:19:08 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:cc51:: with SMTP id c78ls1521440oig.5.gmail; Fri, 22 Jan
 2021 06:19:08 -0800 (PST)
X-Received: by 2002:aca:b409:: with SMTP id d9mr3535385oif.120.1611325148567;
        Fri, 22 Jan 2021 06:19:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611325148; cv=none;
        d=google.com; s=arc-20160816;
        b=I9bGFnu0wdjcxkztkJ5L237dDy4E+HK33QpFeflNa+3VjLtQE8ktEl7mM9jh6Heu9z
         sEFh4dpmeZpClu29+y1MXfziXv0Umr883iedl3BdA3XKOeX5T4xVqAARlyY7bkOUixNj
         JGyxq3hNP4zAfIRthZaGZZilFmNFsyYbR7prEhzCPuj8VRkcQBOv6pucaFvpzzdiMxxb
         PT4w/GFQCHm3B0p7v6CgpkSXyS8qxPJh0PiBSSo7eQcJ66j+GONKba6E1a05yFGd/KGp
         iBcCcG20G06ap2eNQAcpQdXBptKbWaj2t9vTMw2sacGFRm5p/B8bpacLfNThCwe5qZNd
         zWIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DsOvnr9WyeNbm72xXsxkc4ITW7ucVmRQuFGzTZmHPc8=;
        b=UruPPs72ABqhWW4Fd9C7fI7r1UnEG2HXZ994Ms9u3ek+QvB/HCoYvAWJDS6IKM3FzX
         rxGBJeAKJJHH2jjfUyTlvuoxMWMUSWP6YUc7MBWxuFdgnd7xfdiP/d9jGfDte4Kz2f++
         u6ym/71RG30tEmQf1YPQALbIzXxOifLjNWmDkA5gIAOnco7OfDSMkDdM9isHq/fqa83d
         v/m0eQonXx+YOnT6rPGWS719f+AwxO/qECKjsXjAVxp/plbOgio9YELvRTcaN+LDLGrt
         StLJs/5kCM0rW1ctNFaMD4eLcC9OJg7Z0439QNEeFUa47G4oJnqSjv2mHKPMv3p1siz3
         kprA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=agChah64;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id i2si829739otk.1.2021.01.22.06.19.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 06:19:08 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10MEJ0Ub114282;
	Fri, 22 Jan 2021 08:19:00 -0600
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10MEJ0AC019739
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 22 Jan 2021 08:19:00 -0600
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 22
 Jan 2021 08:18:59 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 22 Jan 2021 08:18:59 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10MEIrTc042677;
	Fri, 22 Jan 2021 08:18:55 -0600
Subject: Re: [PATCH v9 01/17] Documentation: PCI: Add specification for the
 *PCI NTB* function device
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
References: <20210119181106.GA2493893@bjorn-Precision-5520>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <797ec9f2-34c3-5dc4-cc0a-d4f7cdf4afb0@ti.com>
Date: Fri, 22 Jan 2021 19:48:52 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210119181106.GA2493893@bjorn-Precision-5520>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=agChah64;       spf=pass
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
> On Mon, Jan 04, 2021 at 08:58:53PM +0530, Kishon Vijay Abraham I wrote:
>> Add specification for the *PCI NTB* function device. The endpoint function
>> driver and the host PCI driver should be created based on this
>> specification.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> 
> A few typos below if there's opportunity for revisions.

I'll fix them.
> 
>> ---
>>  Documentation/PCI/endpoint/index.rst          |   1 +
>>  .../PCI/endpoint/pci-ntb-function.rst         | 351 ++++++++++++++++++
>>  2 files changed, 352 insertions(+)
>>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
>>
>> diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
>> index 4ca7439fbfc9..ef6861128506 100644
>> --- a/Documentation/PCI/endpoint/index.rst
>> +++ b/Documentation/PCI/endpoint/index.rst
>> @@ -11,5 +11,6 @@ PCI Endpoint Framework
>>     pci-endpoint-cfs
>>     pci-test-function
>>     pci-test-howto
>> +   pci-ntb-function
>>  
>>     function/binding/pci-test
>> diff --git a/Documentation/PCI/endpoint/pci-ntb-function.rst b/Documentation/PCI/endpoint/pci-ntb-function.rst
>> new file mode 100644
>> index 000000000000..a57908be4047
>> --- /dev/null
>> +++ b/Documentation/PCI/endpoint/pci-ntb-function.rst
>> @@ -0,0 +1,351 @@
>> +.. SPDX-License-Identifier: GPL-2.0
>> +
>> +=================
>> +PCI NTB Function
>> +=================
>> +
>> +:Author: Kishon Vijay Abraham I <kishon@ti.com>
>> +
>> +PCI Non Transparent Bridges (NTB) allow two host systems to communicate
>> +with each other by exposing each host as a device to the other host.
>> +NTBs typically support the ability to generate interrupts on the remote
>> +machine, expose memory ranges as BARs and perform DMA.  They also support
>> +scratchpads which are areas of memory within the NTB that are accessible
>> +from both machines.
>> +
>> +PCI NTB Function allows two different systems (or hosts) to communicate
>> +with each other by configurig the endpoint instances in such a way that
>> +transactions from one system is routed to the other system.
> 
> s/is/are/
> 
>> +In the below diagram, PCI NTB function configures the SoC with multiple
>> +PCIe Endpoint (EP) instances in such a way that transaction from one EP
>> +controller is routed to the other EP controller. Once PCI NTB function
> 
> s/transaction ... is/transactions ... are/
> 
>> +configures the SoC with multiple EP instances, HOST1 and HOST2 can
>> +communicate with each other using SoC as a bridge.
>> +
>> +.. code-block:: text
>> +
>> +    +-------------+                                   +-------------+
>> +    |             |                                   |             |
>> +    |    HOST1    |                                   |    HOST2    |
>> +    |             |                                   |             |
>> +    +------^------+                                   +------^------+
>> +           |                                                 |
>> +           |                                                 |
>> + +---------|-------------------------------------------------|---------+
>> + |  +------v------+                                   +------v------+  |
>> + |  |             |                                   |             |  |
>> + |  |     EP      |                                   |     EP      |  |
>> + |  | CONTROLLER1 |                                   | CONTROLLER2 |  |
>> + |  |             <----------------------------------->             |  |
>> + |  |             |                                   |             |  |
>> + |  |             |                                   |             |  |
>> + |  |             |  SoC With Multiple EP Instances   |             |  |
>> + |  |             |  (Configured using NTB Function)  |             |  |
>> + |  +-------------+                                   +-------------+  |
>> + +---------------------------------------------------------------------+
>> +
>> +Constructs used for Implementing NTB
>> +====================================
>> +
>> +	1) Config Region
>> +	2) Self Scratchpad Registers
>> +	3) Peer Scratchpad Registers
>> +	4) Doorbell Registers
>> +	5) Memory Window
>> +
>> +
>> +Config Region:
>> +--------------
>> +
>> +Config Region is a construct that is specific to NTB implemented using NTB
>> +Endpoint Function Driver. The host and endpoint side NTB function driver will
>> +exchange information with each other using this region. Config Region has
>> +Control/Status Registers for configuring the Endpoint Controller. Host can
>> +write into this region for configuring the outbound ATU and to indicate the
> 
> Expand "ATU" since this is the first mention.
> 
>> +link status. Endpoint can indicate the status of commands issued be host in
>> +this region. Endpoint can also indicate the scratchpad offset, number of
>> +memory windows to the host using this region.
> 
> s/be host/by host/
> s/offset, number/offset and number/
> 
>> +The format of Config Region is given below. Each of the fields here are 32
>> +bits.
> 
> s/Each ... are/All ... are/
> 
>> +
>> +.. code-block:: text
>> +
>> +	+------------------------+
>> +	|         COMMAND        |
>> +	+------------------------+
>> +	|         ARGUMENT       |
>> +	+------------------------+
>> +	|         STATUS         |
>> +	+------------------------+
>> +	|         TOPOLOGY       |
>> +	+------------------------+
>> +	|    ADDRESS (LOWER 32)  |
>> +	+------------------------+
>> +	|    ADDRESS (UPPER 32)  |
>> +	+------------------------+
>> +	|           SIZE         |
>> +	+------------------------+
>> +	|   NO OF MEMORY WINDOW  |
>> +	+------------------------+
>> +	|  MEMORY WINDOW1 OFFSET |
>> +	+------------------------+
>> +	|       SPAD OFFSET      |
>> +	+------------------------+
>> +	|        SPAD COUNT      |
>> +	+------------------------+
>> +	|      DB ENTRY SIZE     |
>> +	+------------------------+
>> +	|         DB DATA        |
>> +	+------------------------+
>> +	|            :           |
>> +	+------------------------+
>> +	|            :           |
>> +	+------------------------+
>> +	|         DB DATA        |
>> +	+------------------------+
>> +
>> +
>> +  COMMAND:
>> +
>> +	NTB function supports three commands:
>> +
>> +	  CMD_CONFIGURE_DOORBELL (0x1): Command to configure doorbell. Before
>> +	invoking this command, the host should allocate and initialize
>> +	MSI/MSI-X vectors (i.e initialize the MSI/MSI-X capability in the
> 
> s/i.e/i.e.,/
> 
>> +	Endpoint). The endpoint on receiving this command will configure
>> +	the outbound ATU such that transaction to DB BAR will be routed
>> +	to the MSI/MSI-X address programmed by the host. The ARGUMENT
> 
> s/transaction to/transactions to/
> 
> Expand "DB BAR".  I assume this refers to "Doorbell BAR" (which itself
> is not defined).  How do we know which is the Doorbell BAR?

right doorbell. That part is explained in the "Modeling Constructs"
section below.
> 
> Also, "DB" itself needs to be expanded somehow for uses like below:
> 
>> +	register should be populated with number of DBs to configure (in the
>> +	lower 16 bits) and if MSI or MSI-X should be configured (BIT 16).
>> +	(TODO: Add support for MSI-X).
>> +
>> +	  CMD_CONFIGURE_MW (0x2): Command to configure memory window. The
>> +	host invokes this command after allocating a buffer that can be
>> +	accessed by remote host. The allocated address should be programmed
>> +	in the ADDRESS register (64 bit), the size should be programmed in
>> +	the SIZE register and the memory window index should be programmed
>> +	in the ARGUMENT register. The endpoint on receiving this command
>> +	will configure the outbound ATU such that trasaction to MW BAR
>> +	will be routed to the address provided by the host.
> 
> How do we know which is the MW BAR?  I assume "MW" refers to "Memory
> Window".

right memory window. That's again explained in the "Modeling Constructs"
section below.
> 
>> +
>> +	  CMD_LINK_UP (0x3): Command to indicate an NTB application is
>> +	bound to the EP device on the host side. Once the endpoint
>> +	receives this command from both the hosts, the endpoint will
>> +	raise an LINK_UP event to both the hosts to indicate the hosts
>> +	can start communicating with each other.
> 
> s/raise an/raise a/
> 
> I guess this "LINK_UP event" is something other than the PCIe DL_Up
> state, because each host has already been communicating with the
> endpoint.  Right?  Is this LINK_UP a software construct?

Yeah. This is when an NTB client application is bound to the NTB device.
This is used for handshake between the applications running on the two
hosts.

Thanks
Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/797ec9f2-34c3-5dc4-cc0a-d4f7cdf4afb0%40ti.com.

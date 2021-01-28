Return-Path: <linux-ntb+bncBCXK7HEV3YBRBC6UZKAAMGQEDDQTFKQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id 02E0530759E
	for <lists+linux-ntb@lfdr.de>; Thu, 28 Jan 2021 13:11:57 +0100 (CET)
Received: by mail-ua1-x938.google.com with SMTP id z4sf1449898uan.8
        for <lists+linux-ntb@lfdr.de>; Thu, 28 Jan 2021 04:11:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611835916; cv=pass;
        d=google.com; s=arc-20160816;
        b=bU1TU1MsNfNRBCehXi/yB79mCNLmr8HFDcWS20DbZkYxGEMKOorgSJkX6Kig0Th/DV
         x1efE21oX+oYYQhORiCF4ypX4LQA8hLMgAvCdDCUCu8UQgTEa7S8Mvz4OvdWbYrRfTDI
         Ms5xHhMChiUFDosRRZyachA94cZgwEsAit+BJd1Grv16GMwcpwNUTW+s22T/64smRbkV
         PKPt0K05TjH4N8DgIK3kj8QjIjs/m7h8ip1MdMM/aE2ls33gt1bPIpjvCWQbfrNa2+V8
         yLA39Cz6g064yrOuf4HZwUJsn8LyMCLWnYWcPT7rJ+FvSn08bZoWfmkyEiKlO68G2rV8
         45EQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=/mykg+vnN95LDesL0ups+r2nMVnigofPcQF4g01Pio4=;
        b=vBQu066VTMlfBOriKvU5sWyUM31B2/dKMm2lPa1X1drtil0Swtpc80D7QAdB15CdlH
         xFkbUNe2Qc1wR3NagiJV2RxLi2GFqUNn0X9L/DmFcYTakwAgXAJ/dgeSfMVpilj8WJps
         BmFY7pWBEOyRpXzzb4/Umwuwz0IvARrDTBJPZ89WC33KyQgecMH1Od14Bh62+26NJ5hK
         xjXTz4P7AIeo9QpIWCasY27VejE9M/WkoRtxebI82TbjUzD8A79P8dZMFz7SCjj5ljWz
         IZx/WBUubJrK6Nskbepa1PJGlod+17vssSDqEtqLKfJnWnvoTD1yR0wPnY0zkuiKmo1W
         NiqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/mykg+vnN95LDesL0ups+r2nMVnigofPcQF4g01Pio4=;
        b=JBMVEl4YYwZSRiTr3RUHoUsxu/ra+MHShqvFrmi8MgXLhwgEOZ7qVQ+NyHGNlp1bc9
         4t4Qz2K6/2Ey7AB0fphEKidWLsyKAH210IBoSQyQsfbmXdpizPMwnTmT3TLtgxQ9ZJ4n
         QSdmSfA8JKHtGhY5uas8ngvdY8eC3VymYFJiEHoii2VAo+1wX0SPhhG2LPeH+714ur10
         JalPHLAjTnLOzhih5KkEcrT0kT5bFsEz00FSiGUskRniUOAtpAg6V2PWOL40cvWE2IBa
         6HIr4SCpBwrV8Pq/Lsjf547kbYxetWhvv6sSkPUY40F1JOStj4IbB70yw7AC5WxhkdHK
         ypEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/mykg+vnN95LDesL0ups+r2nMVnigofPcQF4g01Pio4=;
        b=P/QiknqUTnRhVm8kkQDrw9IDaIE3L+0PKrkegcf1wudeSqJzrcInpxcqp9Q6Hw51+N
         GiK6F/QVSogxTaTk8zjMC15nPzIrq3il3Ytu8nNGLNVPd2oGsXD0nOgLa3vqG7qIvO1r
         Y764A4TiT3g4rsw6HPT5ctlz5+wlnSh01iuJnN6Oybnk9aBMryq4WaLdfes8bZBhWKMX
         AYJZsYDmKHBlhfgWJ74zhbBcC1cBeLWy/B855jiIq5cYof9V06k6HKoi6aOFmT+1UWB5
         w4rE5JS2rIghumdxRT0W+h0ExxpHzQ5qGVNm761C2/u7ENaz4v8E2bFvAeyhuknyVbhb
         aj6w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530oyUoTPnHRt3UdX+XsNMagS+EdKS3krOg/XVNN4rGcpELCMQAN
	qIl4Qz1HtpBLIiNIgCTEDYw=
X-Google-Smtp-Source: ABdhPJx+/ixhaPeLa0vdcJPSv+ZZVZZqWADW5Rzu8yjFsDbm2U0jLvMoy7ryHjlqWgh+iy/RDw2n7w==
X-Received: by 2002:a67:c787:: with SMTP id t7mr11579094vsk.48.1611835916016;
        Thu, 28 Jan 2021 04:11:56 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:8f8d:: with SMTP id r135ls279949vkd.1.gmail; Thu, 28 Jan
 2021 04:11:55 -0800 (PST)
X-Received: by 2002:a1f:9fce:: with SMTP id i197mr10954985vke.18.1611835915445;
        Thu, 28 Jan 2021 04:11:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611835915; cv=none;
        d=google.com; s=arc-20160816;
        b=M/cRI0j168lElA8btvByjNAnByIJGH6CEYTE6dgP3D3hPQkH0+hwLb1WqCCA1KLyj4
         hok1Mmf/fFhP3Zv2lR+rm950us2h+Mp2P3LeYwnFsqBm7ccRh72qBRwvwXyABfgVInfj
         c0ztpwdp3H/kjz7xJqz+YiCYDUD92RxyZCzWQuSg4PLefY54+4kSOVi9SMjFMWy2CvHD
         +FwCbESXouhcn8A0h+Ls3V4zUs3S/2QfQbGEaUTY6+f4YDUFXID+ltkOtZoyRSzAsLB0
         ZBYkojOKbFRU8EZ+JLczvuXhp/0MduG3QBXlKdoCvCd3jzIgwQtBbhXnr2C267+9AZfr
         MLRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=0n8i8TfMPWKyon3bybyT33k30Twrhki5H9ULmwbPlNo=;
        b=nJAV0NX9zmG9e8P2mOTj6yGb0MzmwDYSzGQFQ6rziH3iVm2R7IKAZLMvu+OPu7fjXG
         veDcllS/5ojjyK06bUTTZcDjpFKr+mR/pB9K3bTZqTPbshkAg0rM2W0rRFPppB1gCb7p
         AzH3uFd/hLISnW1yGQ5y6K/npnW8emTz3Tk/9JEtPs7IGpqJaNDf1+/lyjdUMihgb0a4
         ApIQosJcrDMjVKiSTKIYIsfFP2EN/ynLUFdw2+KSB/upqrS+rCY8ZIwwEMh9bNvQuAYK
         8gQl8UKgxiInBZQfb45HW8QIFPkEijJ9SSdFpnYVl7pzO8t7R5CiB5czmJ8K5kUuy45O
         NbAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d25si230134vsk.2.2021.01.28.04.11.55
        for <linux-ntb@googlegroups.com>;
        Thu, 28 Jan 2021 04:11:55 -0800 (PST)
Received-SPF: pass (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5D3B41FB;
	Thu, 28 Jan 2021 04:11:54 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com [10.1.196.255])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 777383F719;
	Thu, 28 Jan 2021 04:11:52 -0800 (PST)
Date: Thu, 28 Jan 2021 12:11:47 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Jonathan Corbet <corbet@lwn.net>, Arnd Bergmann <arnd@arndb.de>,
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>, Tom Joseph <tjoseph@cadence.com>,
	Rob Herring <robh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: Re: [PATCH v9 01/17] Documentation: PCI: Add specification for the
 *PCI NTB* function device
Message-ID: <20210128121147.GA23564@e121166-lin.cambridge.arm.com>
References: <20210119181106.GA2493893@bjorn-Precision-5520>
 <797ec9f2-34c3-5dc4-cc0a-d4f7cdf4afb0@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <797ec9f2-34c3-5dc4-cc0a-d4f7cdf4afb0@ti.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: lorenzo.pieralisi@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lorenzo.pieralisi@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=lorenzo.pieralisi@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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

On Fri, Jan 22, 2021 at 07:48:52PM +0530, Kishon Vijay Abraham I wrote:
> Hi Bjorn,
> 
> On 20/01/21 12:04 am, Bjorn Helgaas wrote:
> > On Mon, Jan 04, 2021 at 08:58:53PM +0530, Kishon Vijay Abraham I wrote:
> >> Add specification for the *PCI NTB* function device. The endpoint function
> >> driver and the host PCI driver should be created based on this
> >> specification.
> >>
> >> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> > 
> > A few typos below if there's opportunity for revisions.
> 
> I'll fix them.

Hi Kishon,

if you have changes please send them along and I will re-merge the
whole series.

Thanks,
Lorenzo

> >> ---
> >>  Documentation/PCI/endpoint/index.rst          |   1 +
> >>  .../PCI/endpoint/pci-ntb-function.rst         | 351 ++++++++++++++++++
> >>  2 files changed, 352 insertions(+)
> >>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
> >>
> >> diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
> >> index 4ca7439fbfc9..ef6861128506 100644
> >> --- a/Documentation/PCI/endpoint/index.rst
> >> +++ b/Documentation/PCI/endpoint/index.rst
> >> @@ -11,5 +11,6 @@ PCI Endpoint Framework
> >>     pci-endpoint-cfs
> >>     pci-test-function
> >>     pci-test-howto
> >> +   pci-ntb-function
> >>  
> >>     function/binding/pci-test
> >> diff --git a/Documentation/PCI/endpoint/pci-ntb-function.rst b/Documentation/PCI/endpoint/pci-ntb-function.rst
> >> new file mode 100644
> >> index 000000000000..a57908be4047
> >> --- /dev/null
> >> +++ b/Documentation/PCI/endpoint/pci-ntb-function.rst
> >> @@ -0,0 +1,351 @@
> >> +.. SPDX-License-Identifier: GPL-2.0
> >> +
> >> +=================
> >> +PCI NTB Function
> >> +=================
> >> +
> >> +:Author: Kishon Vijay Abraham I <kishon@ti.com>
> >> +
> >> +PCI Non Transparent Bridges (NTB) allow two host systems to communicate
> >> +with each other by exposing each host as a device to the other host.
> >> +NTBs typically support the ability to generate interrupts on the remote
> >> +machine, expose memory ranges as BARs and perform DMA.  They also support
> >> +scratchpads which are areas of memory within the NTB that are accessible
> >> +from both machines.
> >> +
> >> +PCI NTB Function allows two different systems (or hosts) to communicate
> >> +with each other by configurig the endpoint instances in such a way that
> >> +transactions from one system is routed to the other system.
> > 
> > s/is/are/
> > 
> >> +In the below diagram, PCI NTB function configures the SoC with multiple
> >> +PCIe Endpoint (EP) instances in such a way that transaction from one EP
> >> +controller is routed to the other EP controller. Once PCI NTB function
> > 
> > s/transaction ... is/transactions ... are/
> > 
> >> +configures the SoC with multiple EP instances, HOST1 and HOST2 can
> >> +communicate with each other using SoC as a bridge.
> >> +
> >> +.. code-block:: text
> >> +
> >> +    +-------------+                                   +-------------+
> >> +    |             |                                   |             |
> >> +    |    HOST1    |                                   |    HOST2    |
> >> +    |             |                                   |             |
> >> +    +------^------+                                   +------^------+
> >> +           |                                                 |
> >> +           |                                                 |
> >> + +---------|-------------------------------------------------|---------+
> >> + |  +------v------+                                   +------v------+  |
> >> + |  |             |                                   |             |  |
> >> + |  |     EP      |                                   |     EP      |  |
> >> + |  | CONTROLLER1 |                                   | CONTROLLER2 |  |
> >> + |  |             <----------------------------------->             |  |
> >> + |  |             |                                   |             |  |
> >> + |  |             |                                   |             |  |
> >> + |  |             |  SoC With Multiple EP Instances   |             |  |
> >> + |  |             |  (Configured using NTB Function)  |             |  |
> >> + |  +-------------+                                   +-------------+  |
> >> + +---------------------------------------------------------------------+
> >> +
> >> +Constructs used for Implementing NTB
> >> +====================================
> >> +
> >> +	1) Config Region
> >> +	2) Self Scratchpad Registers
> >> +	3) Peer Scratchpad Registers
> >> +	4) Doorbell Registers
> >> +	5) Memory Window
> >> +
> >> +
> >> +Config Region:
> >> +--------------
> >> +
> >> +Config Region is a construct that is specific to NTB implemented using NTB
> >> +Endpoint Function Driver. The host and endpoint side NTB function driver will
> >> +exchange information with each other using this region. Config Region has
> >> +Control/Status Registers for configuring the Endpoint Controller. Host can
> >> +write into this region for configuring the outbound ATU and to indicate the
> > 
> > Expand "ATU" since this is the first mention.
> > 
> >> +link status. Endpoint can indicate the status of commands issued be host in
> >> +this region. Endpoint can also indicate the scratchpad offset, number of
> >> +memory windows to the host using this region.
> > 
> > s/be host/by host/
> > s/offset, number/offset and number/
> > 
> >> +The format of Config Region is given below. Each of the fields here are 32
> >> +bits.
> > 
> > s/Each ... are/All ... are/
> > 
> >> +
> >> +.. code-block:: text
> >> +
> >> +	+------------------------+
> >> +	|         COMMAND        |
> >> +	+------------------------+
> >> +	|         ARGUMENT       |
> >> +	+------------------------+
> >> +	|         STATUS         |
> >> +	+------------------------+
> >> +	|         TOPOLOGY       |
> >> +	+------------------------+
> >> +	|    ADDRESS (LOWER 32)  |
> >> +	+------------------------+
> >> +	|    ADDRESS (UPPER 32)  |
> >> +	+------------------------+
> >> +	|           SIZE         |
> >> +	+------------------------+
> >> +	|   NO OF MEMORY WINDOW  |
> >> +	+------------------------+
> >> +	|  MEMORY WINDOW1 OFFSET |
> >> +	+------------------------+
> >> +	|       SPAD OFFSET      |
> >> +	+------------------------+
> >> +	|        SPAD COUNT      |
> >> +	+------------------------+
> >> +	|      DB ENTRY SIZE     |
> >> +	+------------------------+
> >> +	|         DB DATA        |
> >> +	+------------------------+
> >> +	|            :           |
> >> +	+------------------------+
> >> +	|            :           |
> >> +	+------------------------+
> >> +	|         DB DATA        |
> >> +	+------------------------+
> >> +
> >> +
> >> +  COMMAND:
> >> +
> >> +	NTB function supports three commands:
> >> +
> >> +	  CMD_CONFIGURE_DOORBELL (0x1): Command to configure doorbell. Before
> >> +	invoking this command, the host should allocate and initialize
> >> +	MSI/MSI-X vectors (i.e initialize the MSI/MSI-X capability in the
> > 
> > s/i.e/i.e.,/
> > 
> >> +	Endpoint). The endpoint on receiving this command will configure
> >> +	the outbound ATU such that transaction to DB BAR will be routed
> >> +	to the MSI/MSI-X address programmed by the host. The ARGUMENT
> > 
> > s/transaction to/transactions to/
> > 
> > Expand "DB BAR".  I assume this refers to "Doorbell BAR" (which itself
> > is not defined).  How do we know which is the Doorbell BAR?
> 
> right doorbell. That part is explained in the "Modeling Constructs"
> section below.
> > 
> > Also, "DB" itself needs to be expanded somehow for uses like below:
> > 
> >> +	register should be populated with number of DBs to configure (in the
> >> +	lower 16 bits) and if MSI or MSI-X should be configured (BIT 16).
> >> +	(TODO: Add support for MSI-X).
> >> +
> >> +	  CMD_CONFIGURE_MW (0x2): Command to configure memory window. The
> >> +	host invokes this command after allocating a buffer that can be
> >> +	accessed by remote host. The allocated address should be programmed
> >> +	in the ADDRESS register (64 bit), the size should be programmed in
> >> +	the SIZE register and the memory window index should be programmed
> >> +	in the ARGUMENT register. The endpoint on receiving this command
> >> +	will configure the outbound ATU such that trasaction to MW BAR
> >> +	will be routed to the address provided by the host.
> > 
> > How do we know which is the MW BAR?  I assume "MW" refers to "Memory
> > Window".
> 
> right memory window. That's again explained in the "Modeling Constructs"
> section below.
> > 
> >> +
> >> +	  CMD_LINK_UP (0x3): Command to indicate an NTB application is
> >> +	bound to the EP device on the host side. Once the endpoint
> >> +	receives this command from both the hosts, the endpoint will
> >> +	raise an LINK_UP event to both the hosts to indicate the hosts
> >> +	can start communicating with each other.
> > 
> > s/raise an/raise a/
> > 
> > I guess this "LINK_UP event" is something other than the PCIe DL_Up
> > state, because each host has already been communicating with the
> > endpoint.  Right?  Is this LINK_UP a software construct?
> 
> Yeah. This is when an NTB client application is bound to the NTB device.
> This is used for handshake between the applications running on the two
> hosts.
> 
> Thanks
> Kishon

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210128121147.GA23564%40e121166-lin.cambridge.arm.com.

Return-Path: <linux-ntb+bncBDV2D5O34IDRB5F6ZWAAMGQECMVTBAY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2668B3082DB
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 02:05:57 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id j12sf8149913ybg.4
        for <lists+linux-ntb@lfdr.de>; Thu, 28 Jan 2021 17:05:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611882356; cv=pass;
        d=google.com; s=arc-20160816;
        b=LE9vWo2HPXF/s1RhXOdMr/wVnOrGfrg4fMf5OjGwhPYhfWWE4MJmzK8ypphyE4x6+W
         L4YqftPVdJd42qCEOJ9kmb89zHCsXZWnnMuEdaH3melM23LFqgYhZwfAMEk+VATDF9wB
         TJp4VSLe7Frsir0yT2Lp/j4HYtWpoVMUJIg5D/3pfkUdNnKlyY3Q0HIHSb20g1wxlidB
         J3utpJcV9YQJ+kQSw/ucI7lOt/KzR4G6iqeyBhaQzrmz+z+/dn5WNe0zP3Ef/KhTZaCS
         oczbzzIv1qcm9obpAKXW3KD9dMmEoXfk+0aJcoid/zeHpy0cJoFfJcx3F1FfYQR96ZK7
         obzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=wP5gm2H3wqcqc8NWS8dSw+sCd+fOjQV4QS1SzG2cmdU=;
        b=DJzB8HRtXe3ShCGjR3vMtMd0NgOu+UPtZExiScao8vusCy3/z7l9sEALToJSWfR+OS
         eKaqQ0FPSNY6oieYna/clCaZFju356Z72A3yAi/ibp5LCfeNpXvjKxEuOnPvR+IMYGsK
         T5+t5hhObQtHt/53d9alqoMxSZ8iIl0sWO1VMOsc0i3fKKWNMTevGZB6ZKoyJ1nrNPAH
         cyXRb+Zk8U5LcO9+/XbauOuD1dFhpuK+tblJUXeJqGGG2/e9VGe+18p7RP/dXg1G9EnN
         gNVbxLythhKsjyYe3OSgDZjzt8xANFMgR3L8FAPFNoS7lMQe9oYUHazjzQT9/yM+xgl4
         jadw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=cyTOri95;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wP5gm2H3wqcqc8NWS8dSw+sCd+fOjQV4QS1SzG2cmdU=;
        b=nEcoPRDZddJSpnnbbPW79MT+ZUPP5+hzZOa1sw9wrdDSGn42hHXLey6aFR1mUqDUqM
         vd/TF7maR6CdDLjkLxWkzd88GAzUUd7MQy62yUhT7ZyNhO/VuGOlnPzzFaNyXYy1sxum
         5aU5mc/BtCPMN4mM+i52WATQFh+EqaW+f2c6kVA/PgufQA/vlBrmyNdpFM+6iKPOd02L
         l7IL6osOKL8djvdf+uV0Bew4p1fhbYEU1SwZYmjboKbkA8LXMzI86DWrV7v7rsM1p2I6
         wtcBLm+5SbNBJvk+mVugkuW756a3oB2lsAVzhcRRUjZKOEeQeymS9aJjjyGjCik2I5Qc
         04gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wP5gm2H3wqcqc8NWS8dSw+sCd+fOjQV4QS1SzG2cmdU=;
        b=o8yzhRYX+dw0vNwLqgdr5TCa+8zVITHw45FZ0kUGvcV7Xjb8zq0KuQ1KXXIUdTq3x0
         25HG/jEZqNjcUtskUxYYEpO2W0x2Mzm+FKPIq2kRGdk8bwTiJZuIv4uFhIxZqtP9urr8
         2yl4+0p4eg9XTTIb3eATFG8kF4quD6mpEtpS1KVErXAn+oRfg/jz1SthrwK21adBz3QG
         Zf9MCdy95qogGmUwTB+lE4yOKVrgFz8WRWWxyj2+sTUS81dVolNCnnnEWBMRHDGysjmd
         TkZXhTKeeRtB/N1dsNATQpuyvsCdnIKXImYNHD9eFSBDzMfI8l1PqOspHDtznvtqJHJz
         Vgig==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531RURBw1JkhjmdC/KSOmGVu/KCbAh6h+8cfLFuYRe366OVufVMn
	q91pemZfbGSHmcvFUAzUtmQ=
X-Google-Smtp-Source: ABdhPJzpSxh/PC4T4V045MUXonGWEvmYEd5iSKP0sNYVQ8p7IJ8R2qyrl54z0csjOIvKCEPPbsqJrw==
X-Received: by 2002:a25:ab70:: with SMTP id u103mr2830550ybi.142.1611882356144;
        Thu, 28 Jan 2021 17:05:56 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:3006:: with SMTP id w6ls3570344ybw.4.gmail; Thu, 28 Jan
 2021 17:05:55 -0800 (PST)
X-Received: by 2002:a25:3450:: with SMTP id b77mr2726531yba.352.1611882355638;
        Thu, 28 Jan 2021 17:05:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611882355; cv=none;
        d=google.com; s=arc-20160816;
        b=PxbDriAZw2C/zBNjrBAyWnqfvI4TUVdbOcS9U9D2vwEv4uqwZBh+335YNHittGosI+
         fssnhfSKzq3Hp20jkQ9h57eAvC/Xbs46OabAJHTMNT3zh5Bl8lt9nEbE4A3I8j+7Xqi9
         ch7hLVolgBUAgRl5K1GMvTbQy09LNv6Ry+RJj4j5VTplOmdgxoXOi/eXwkRr/uJ0rt3D
         Fze28c2+f9jvI0oWHfiqyQFB8wYrTyCbFWfIif8Cwl//KJLkg4RJDqVeATYd6RXpgbCd
         c06CSy1GCWroiB5xeXO/Xd4kFgADSiP3psoMpouG1QFsHUdknrYmOrsBTK1qAOCi4kAv
         SDAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=mFMWgp0V09MPFVIUP4yjyQwOmaTrILHfk062Av3J3sc=;
        b=n0Z5RlS+FRqq1fo/iWSVDUG1TdGvXSVRVKsc/27SkzFFdpfN0PQkMNr4+NPfeccZOb
         tPip83YJ5N269N4iR+FvMTy/Z2tXgJqhlzo+77TqPzbI2i5L0sTBugZNvWfSYxp2evo6
         zmKHK+zRRAZ/VtZN/fYpnZmyTg5ccuYJgAslTvPl67YvuRwsCyiZbTCxufIRLujIGpzQ
         Xj3FHrLyGqIXUWgOPJGOY+D9m8A1hWN4gQqf9yC7BZLrP2I/DwPwy+0RihQ7yLs+sFNS
         aOk7s0v39VybZa5nHVct4U9abMY9pPeE6hUiNEUfW7nexnhjikjHgzdT+U3wOG7fKAiN
         fatg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=cyTOri95;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id c10si490011ybf.1.2021.01.28.17.05.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jan 2021 17:05:55 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0::7650]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l5IEQ-0007Jh-4t; Fri, 29 Jan 2021 01:05:50 +0000
Subject: Re: [PATCH v9 01/17] Documentation: PCI: Add specification for the
 *PCI NTB* function device
To: Kishon Vijay Abraham I <kishon@ti.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Arnd Bergmann
 <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
References: <20210104152909.22038-1-kishon@ti.com>
 <20210104152909.22038-2-kishon@ti.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <2adb27fe-1b2e-3488-eedf-46b01ee25ace@infradead.org>
Date: Thu, 28 Jan 2021 17:05:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <20210104152909.22038-2-kishon@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=cyTOri95;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 1/4/21 7:28 AM, Kishon Vijay Abraham I wrote:
> Add specification for the *PCI NTB* function device. The endpoint function
> driver and the host PCI driver should be created based on this
> specification.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  Documentation/PCI/endpoint/index.rst          |   1 +
>  .../PCI/endpoint/pci-ntb-function.rst         | 351 ++++++++++++++++++
>  2 files changed, 352 insertions(+)
>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst


> diff --git a/Documentation/PCI/endpoint/pci-ntb-function.rst b/Documentation/PCI/endpoint/pci-ntb-function.rst
> new file mode 100644
> index 000000000000..a57908be4047
> --- /dev/null
> +++ b/Documentation/PCI/endpoint/pci-ntb-function.rst
> @@ -0,0 +1,351 @@
> +.. SPDX-License-Identifier: GPL-2.0
> +
> +=================
> +PCI NTB Function
> +=================
> +
> +:Author: Kishon Vijay Abraham I <kishon@ti.com>
> +
> +PCI Non Transparent Bridges (NTB) allow two host systems to communicate

preferably
       Non-Transparent

> +with each other by exposing each host as a device to the other host.
> +NTBs typically support the ability to generate interrupts on the remote
> +machine, expose memory ranges as BARs and perform DMA.  They also support
> +scratchpads which are areas of memory within the NTB that are accessible
> +from both machines.
> +
> +PCI NTB Function allows two different systems (or hosts) to communicate
> +with each other by configurig the endpoint instances in such a way that
> +transactions from one system is routed to the other system.
> +
> +In the below diagram, PCI NTB function configures the SoC with multiple
> +PCIe Endpoint (EP) instances in such a way that transaction from one EP
> +controller is routed to the other EP controller. Once PCI NTB function
> +configures the SoC with multiple EP instances, HOST1 and HOST2 can
> +communicate with each other using SoC as a bridge.
> +
> +.. code-block:: text
> +
> +    +-------------+                                   +-------------+
> +    |             |                                   |             |
> +    |    HOST1    |                                   |    HOST2    |
> +    |             |                                   |             |
> +    +------^------+                                   +------^------+
> +           |                                                 |
> +           |                                                 |
> + +---------|-------------------------------------------------|---------+
> + |  +------v------+                                   +------v------+  |
> + |  |             |                                   |             |  |
> + |  |     EP      |                                   |     EP      |  |
> + |  | CONTROLLER1 |                                   | CONTROLLER2 |  |
> + |  |             <----------------------------------->             |  |
> + |  |             |                                   |             |  |
> + |  |             |                                   |             |  |
> + |  |             |  SoC With Multiple EP Instances   |             |  |
> + |  |             |  (Configured using NTB Function)  |             |  |
> + |  +-------------+                                   +-------------+  |
> + +---------------------------------------------------------------------+
> +
> +Constructs used for Implementing NTB
> +====================================
> +
> +	1) Config Region
> +	2) Self Scratchpad Registers
> +	3) Peer Scratchpad Registers
> +	4) Doorbell Registers
> +	5) Memory Window
> +
> +
> +Config Region:
> +--------------
> +
> +Config Region is a construct that is specific to NTB implemented using NTB
> +Endpoint Function Driver. The host and endpoint side NTB function driver will
> +exchange information with each other using this region. Config Region has
> +Control/Status Registers for configuring the Endpoint Controller. Host can
> +write into this region for configuring the outbound ATU and to indicate the

what is ATU?

> +link status. Endpoint can indicate the status of commands issued be host in

                                                                    by  ??

> +this region. Endpoint can also indicate the scratchpad offset, number of
> +memory windows to the host using this region.
> +
> +The format of Config Region is given below. Each of the fields here are 32

                                               Each                    is

> +bits.
> +
> +.. code-block:: text
> +
> +	+------------------------+
> +	|         COMMAND        |
> +	+------------------------+
> +	|         ARGUMENT       |
> +	+------------------------+
> +	|         STATUS         |
> +	+------------------------+
> +	|         TOPOLOGY       |
> +	+------------------------+
> +	|    ADDRESS (LOWER 32)  |
> +	+------------------------+
> +	|    ADDRESS (UPPER 32)  |
> +	+------------------------+
> +	|           SIZE         |
> +	+------------------------+
> +	|   NO OF MEMORY WINDOW  |
> +	+------------------------+
> +	|  MEMORY WINDOW1 OFFSET |
> +	+------------------------+
> +	|       SPAD OFFSET      |
> +	+------------------------+
> +	|        SPAD COUNT      |
> +	+------------------------+
> +	|      DB ENTRY SIZE     |
> +	+------------------------+
> +	|         DB DATA        |
> +	+------------------------+
> +	|            :           |
> +	+------------------------+
> +	|            :           |
> +	+------------------------+
> +	|         DB DATA        |
> +	+------------------------+
> +
> +
> +  COMMAND:
> +
> +	NTB function supports three commands:
> +
> +	  CMD_CONFIGURE_DOORBELL (0x1): Command to configure doorbell. Before
> +	invoking this command, the host should allocate and initialize
> +	MSI/MSI-X vectors (i.e initialize the MSI/MSI-X capability in the

	                   i.e.

> +	Endpoint). The endpoint on receiving this command will configure
> +	the outbound ATU such that transaction to DB BAR will be routed
> +	to the MSI/MSI-X address programmed by the host. The ARGUMENT
> +	register should be populated with number of DBs to configure (in the
> +	lower 16 bits) and if MSI or MSI-X should be configured (BIT 16).
> +	(TODO: Add support for MSI-X).
> +
> +	  CMD_CONFIGURE_MW (0x2): Command to configure memory window. The
> +	host invokes this command after allocating a buffer that can be
> +	accessed by remote host. The allocated address should be programmed
> +	in the ADDRESS register (64 bit), the size should be programmed in
> +	the SIZE register and the memory window index should be programmed
> +	in the ARGUMENT register. The endpoint on receiving this command
> +	will configure the outbound ATU such that trasaction to MW BAR

	                                          transaction

> +	will be routed to the address provided by the host.
> +
> +	  CMD_LINK_UP (0x3): Command to indicate an NTB application is
> +	bound to the EP device on the host side. Once the endpoint
> +	receives this command from both the hosts, the endpoint will
> +	raise an LINK_UP event to both the hosts to indicate the hosts
> +	can start communicating with each other.
> +
> +  ARGUMENT:
> +
> +	The value of this register is based on the commands issued in
> +	command register. See COMMAND section for more information.
> +
> +  TOPOLOGY:
> +
> +	Set to NTB_TOPO_B2B_USD for Primary interface
> +	Set to NTB_TOPO_B2B_DSD for Secondary interface
> +
> +  ADDRESS/SIZE:
> +
> +	Address and Size to be used while configuring the memory window.
> +	See "CMD_CONFIGURE_MW" for more info.
> +
> +  MEMORY WINDOW1 OFFSET:
> +
> +	Memory Window 1 and Doorbell registers are packed together in the
> +	same BAR. The initial portion of the region will have doorbell
> +	registers and the latter portion of the region is for memory window 1.
> +	This register will specify the offset of the memory window 1.
> +
> +  NO OF MEMORY WINDOW:
> +
> +	Specifies the number of memory windows supported by the NTB device.
> +
> +  SPAD OFFSET:
> +
> +	Self scratchpad region and config region are packed together in the
> +	same BAR. The initial portion of the region will have config region
> +	and the latter portion of the region is for self scratchpad. This
> +	register will specify the offset of the self scratchpad registers.
> +
> +  SPAD COUNT:
> +
> +	Specifies the number of scratchpad registers supported by the NTB
> +	device.
> +
> +  DB ENTRY SIZE:
> +
> +	Used to determine the offset within the DB BAR that should be written
> +	in order to raise doorbell. EPF NTB can use either MSI/MSI-X to
> +	ring doorbell (MSI-X support will be added later). MSI uses same
> +	address for all the interrupts and MSI-X can provide different
> +	addresses for different interrupts. The MSI/MSI-X address is provided
> +	by the host and the address it gives is based on the MSI/MSI-X
> +	implementation supported by the host. For instance, ARM platform
> +	using GIC ITS will have same MSI-X address for all the interrupts.
> +	In order to support all the combinations and use the same mechanism
> +	for both MSI and MSI-X, EPF NTB allocates separate region in the
> +	Outbound Address Space for each of the interrupts. This region will
> +	be mapped to the MSI/MSI-X address provided by the host. If a host
> +	provides the same address for all the interrupts, all the regions
> +	will be translated to the same address. If a host provides different
> +	address, the regions will be translated to different address. This
> +	will ensure there is no difference while raising the doorbell.
> +
> +  DB DATA:
> +
> +	EPF NTB supports 32 interrupts. So there are 32 DB DATA registers.
> +	This holds the MSI/MSI-X data that has to be written to MSI address
> +	for raising doorbell interrupt. This will be populated by EPF NTB
> +	while invoking CMD_CONFIGURE_DOORBELL.
> +
> +Scratchpad Registers:
> +---------------------
> +
> +  Each host has it's own register space allocated in the memory of NTB EPC.

                   its
[it's means "it is"]

> +  They are both readable and writable from both sides of the bridge. They
> +  are used by applications built over NTB and can be used to pass control
> +  and status information between both sides of a device.
> +
> +  Scratchpad registers has 2 parts
> +	1) Self Scratchpad: Host's own register space
> +	2) Peer Scratchpad: Remote host's register space.
> +
> +Doorbell Registers:
> +-------------------
> +
> +  Registers using which one host can interrupt the other host.

eh?  ENOPARSE.

> +
> +Memory Window:
> +--------------
> +
> +  Actual transfer of data between the two hosts will happen using the
> +  memory window.
> +
> +Modeling Constructs:
> +====================
> +
> +There are 5 or more distinct regions (config, self scratchpad, peer
> +scratchpad, doorbell, one or more memory windows) to be modeled to achieve
> +NTB functionality. Atleast one memory window is required while more than

                      At least

> +one is permitted. All these regions should be mapped to BAR for hosts to
> +access these regions.
> +
> +If one 32-bit BAR is allocated for each of these regions, the scheme would
> +look like
> +
> +======  ===============
> +BAR NO  CONSTRUCTS USED
> +======  ===============
> +BAR0    Config Region
> +BAR1    Self Scratchpad
> +BAR2    Peer Scratchpad
> +BAR3    Doorbell
> +BAR4    Memory Window 1
> +BAR5    Memory Window 2
> +======  ===============
> +
> +However if we allocate a separate BAR for each of the region, there would not

                                                         regions,

> +be enough BARs for all the regions in a platform that supports only 64-bit
> +BAR.
> +
> +In order to be supported by most of the platforms, the regions should be
> +packed and mapped to BARs in a way that provides NTB functionality and
> +also making sure the hosts doesn't access any region that it is not supposed
> +to.
> +
> +The following scheme is used in EPF NTB Function
> +
> +======  ===============================
> +BAR NO  CONSTRUCTS USED
> +======  ===============================
> +BAR0    Config Region + Self Scratchpad
> +BAR1    Peer Scratchpad
> +BAR2    Doorbell + Memory Window 1
> +BAR3    Memory Window 2
> +BAR4    Memory Window 3
> +BAR5    Memory Window 4
> +======  ===============================
> +
> +With this scheme, for the basic NTB functionality 3 BARs should be sufficient.
> +
> +Modeling Config/Scratchpad Region:
> +----------------------------------
> +
> +.. code-block:: text
> +
> + +-----------------+------->+------------------+        +-----------------+
> + |       BAR0      |        |  CONFIG REGION   |        |       BAR0      |
> + +-----------------+----+   +------------------+<-------+-----------------+
> + |       BAR1      |    |   |SCRATCHPAD REGION |        |       BAR1      |
> + +-----------------+    +-->+------------------+<-------+-----------------+
> + |       BAR2      |            Local Memory            |       BAR2      |
> + +-----------------+                                    +-----------------+
> + |       BAR3      |                                    |       BAR3      |
> + +-----------------+                                    +-----------------+
> + |       BAR4      |                                    |       BAR4      |
> + +-----------------+                                    +-----------------+
> + |       BAR5      |                                    |       BAR5      |
> + +-----------------+                                    +-----------------+
> +   EP CONTROLLER 1                                        EP CONTROLLER 2
> +
> +Above diagram shows Config region + Scratchpad region for HOST1 (connected to
> +EP controller 1) allocated in local memory. The HOST1 can access the config
> +region and scratchpad region (self scratchpad) using BAR0 of EP controller 1.
> +The peer host (HOST2 connected to EP controller 2) can also access this
> +scratchpad region (peer scratchpad) using BAR1 of EP controller 2. This
> +diagram shows the case where Config region and Scratchpad region is allocated
> +for HOST1, however the same is applicable for HOST2.
> +
> +Modeling Doorbell/Memory Window 1:
> +----------------------------------
> +
> +.. code-block:: text
> +
> + +-----------------+    +----->+----------------+-----------+-----------------+
> + |       BAR0      |    |      |   Doorbell 1   +-----------> MSI-X ADDRESS 1 |
> + +-----------------+    |      +----------------+           +-----------------+
> + |       BAR1      |    |      |   Doorbell 2   +---------+ |                 |
> + +-----------------+----+      +----------------+         | |                 |
> + |       BAR2      |           |   Doorbell 3   +-------+ | +-----------------+
> + +-----------------+----+      +----------------+       | +-> MSI-X ADDRESS 2 |
> + |       BAR3      |    |      |   Doorbell 4   +-----+ |   +-----------------+
> + +-----------------+    |      |----------------+     | |   |                 |
> + |       BAR4      |    |      |                |     | |   +-----------------+
> + +-----------------+    |      |      MW1       +---+ | +-->+ MSI-X ADDRESS 3||
> + |       BAR5      |    |      |                |   | |     +-----------------+
> + +-----------------+    +----->-----------------+   | |     |                 |
> +   EP CONTROLLER 1             |                |   | |     +-----------------+
> +                               |                |   | +---->+ MSI-X ADDRESS 4 |
> +                               +----------------+   |       +-----------------+
> +                                EP CONTROLLER 2     |       |                 |
> +                                  (OB SPACE)        |       |                 |
> +                                                    +------->      MW1        |
> +                                                            |                 |
> +                                                            |                 |
> +                                                            +-----------------+
> +                                                            |                 |
> +                                                            |                 |
> +                                                            |                 |
> +                                                            |                 |
> +                                                            |                 |
> +                                                            +-----------------+
> +                                                             PCI Address Space
> +                                                             (Managed by HOST2)
> +
> +Above diagram shows how the doorbell and memory window 1 is mapped so that
> +HOST1 can raise doorbell interrupt on HOST2 and also how HOST1 can access
> +buffers exposed by HOST2 using memory window1 (MW1). Here doorbell and
> +memory window 1 regions are allocated in EP controller 2 outbound (OB) address
> +space. Allocating and configuring BARs for doorbell and memory window1
> +is done during the initialization phase of NTB endpoint function driver.
> +Mapping from EP controller 2 OB space to PCI address space is done when HOST2
> +sends CMD_CONFIGURE_MW/CMD_CONFIGURE_DOORBELL. The commands are explained
> +below.

below??

> +
> +Modeling Optional Memory Windows:
> +---------------------------------
> +
> +This is modeled the same was as MW1 but each of the additional memory windows
> +is mapped to separate BARs.
> 

Is all of this register/memory space mapping defined in some PCI NTB spec
or is this specific to some hardware/SoC implementation?


HTH.
-- 
~Randy

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/2adb27fe-1b2e-3488-eedf-46b01ee25ace%40infradead.org.

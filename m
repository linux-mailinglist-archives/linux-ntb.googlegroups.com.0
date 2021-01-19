Return-Path: <linux-ntb+bncBDXJDZXNUMORBMOMTSAAMGQELIPMNCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B5002FBF11
	for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 19:34:26 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id q8sf16898146otk.6
        for <lists+linux-ntb@lfdr.de>; Tue, 19 Jan 2021 10:34:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611081265; cv=pass;
        d=google.com; s=arc-20160816;
        b=q7gUXsEEKC/mXDx44gV54/PaprzGozEUpXRrJ79Uff3yrlpLJHCRwpGjV8BoRN6SOA
         yhM0q/1zT88qdO9OvdEl2gBEnPiqSnRuj8AY2IAlIQMpOuwBhFBdwanK0zjU1274bgw2
         YDyH6Zk/qpvqFZavPbTgB0YMu1RidUg7x7JfsMc/59ZI4A3grvDFxg/MT/NwrxBcb2Er
         ROMIoJNJAnXwCcEBkPSr8oJrd0xe9cXzFkiS7VFIUF+zGLhKR3+yOMWeMcIdp2RvPEkX
         ZUdf5JIGKEmNvy4hYxddf8nTVH4Kx6C7UxfUi5wRMoJzo/Sxx7FZ2my/0DPMwG5ITr6n
         GrtA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=T4CqtiQVPnRnBFmS+618Hw8Z/prLejn6vrqlmEIDllU=;
        b=wvHICTRi2uLkvSxNI4spBqWo6sjPhFU5M4jtjzBQkTATh2YWKBJKFQEzT3jNsavfpR
         4lDYKsKWDPAX4+vIFlFBaThsW41P4yuIEyXmG7csiLYJu7tB0YWaVo/I2l8vVPlhTaSn
         +fez3qMZDlSABY6BLSeJ/kux4O8OQG8MJ4dApHChdnHwKDezd3oyMKQyQuxLM3bZLy8D
         WD4136UiCIQDSEQUvT7qp8MiwusE5NAmP0CRKl50O4CR0hKzZZZ14BgPoTqMdc3q+Dp5
         z5DKlUqOULdIlWn3/SBQGzkm1fVpfOC9M699qGg8QWHhLdT0sU6vCXcDPvJ9IasaPSVE
         5HQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PmVVhht0;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T4CqtiQVPnRnBFmS+618Hw8Z/prLejn6vrqlmEIDllU=;
        b=FdR434brILKcU5/ezO/tfBaXtJGIVP+tjsMlg1tssDI+lm5FQ5YtaT6ZAr8zbOAQ9a
         9ndBVj+ELwsBulEftM2VZ8t4/TmGvCGRYT+JgQXyGNueCa0NBqDMtiMBJBKj6QDIQJhD
         SoyIsGudneA36SEMtoC2S9G4vHhV5FuTgp3ZBZGx3HZzwnnFv23anE3ALdz0JqGkLy9D
         pWwCPEszgoxkBBC2TKDNMmZfVlL8JjO4TCREIxwL71LNNHTeLwmZAIKVxJsrDnktk2NC
         Q1KelExMl6AsKlUz9fzTXejryaqCmp1p/jMYKwp+FhpAu0ZmgI7qnDtldkcZJ5YyJfMj
         oD0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T4CqtiQVPnRnBFmS+618Hw8Z/prLejn6vrqlmEIDllU=;
        b=QaKbAET2omgx84SY749PJ8LXfd02lsUuYanqfJKPwJuaQM+QyS7yie7uV5HMegWWs0
         uhAw+1dXMW0GvVC3Vs3tF3dj19ormlwjRJlMQz0LQn9w2g014T2IJLl+xoH7gC5xkBgk
         6VCh0pljC/VoM07YY31NWz5MGLhu9ucI+24XDHySFJxkusTbpKGWZlxSQ6xTAIT5cI+f
         5cKw9oqt3yuoVScZlfQHf0UToO75YkOLvAfix2+EM/li+cTZpZbTKNoV3H4M1/hiY8Lz
         3Uzk+xxc9bLG5+KUPmmg5ShjZNGmCLYlZOz5LYGzf/zj1XCYQyuFXrTc9lpmP64Ss0fO
         xNUA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530H5SfXTh8TjoNdVcyaY4AA+mV8XLu7r+4kuqX/ZpCYJnfxYUg3
	AqAj/+Q2JBM6N6fxc9zqWiA=
X-Google-Smtp-Source: ABdhPJyisrm7metiSkIiG9a2VGGDAArDEceQxAnxCuxYKcLC+YVMRxOVFSPZQCsJ98VKOJENmxIdmA==
X-Received: by 2002:aca:810:: with SMTP id 16mr682298oii.137.1611081265217;
        Tue, 19 Jan 2021 10:34:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1614:: with SMTP id g20ls601430otr.1.gmail; Tue, 19
 Jan 2021 10:34:24 -0800 (PST)
X-Received: by 2002:a9d:3645:: with SMTP id w63mr4270463otb.117.1611081264671;
        Tue, 19 Jan 2021 10:34:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611081264; cv=none;
        d=google.com; s=arc-20160816;
        b=eKGY1CsAtl2VAcUCq9ZvlHg68x9BM8KVGyNInOy6rlMcWbEGlwcfAwieAphPWrZadf
         t7ycxzLd01rLjJgExxKlOElz/YZF+KaoIWnY160IPu35FE5rMBLfJ2qmRMb+gxTu8Ga0
         /1uEaWBn9CjagplhVhNechn0dTlY32hGIJv+M3VD/jGlm00lHw/CaxmlC5/kQkJfgZai
         z/RtAjAb5pXaK6QMzWExzydVbQ9rjtdXEp65hhKNQw87I3ObNCJ94QKmfKFT9DNdBS56
         jme5H/o3xK1JxpqQsw2pC5ZX60EBTIFxAXUfMXPyR+/H5gerJXcG/SR0iY6+Mxler61B
         Qaug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=UIVAEt6My4+BN7WR5swyUrS3/HxdgT4Z0iXxKOan3CM=;
        b=xtRYtIFhnDmnjDEmMklv/iMNhLooWJwhY8xZUyOfL7tgEm4onaGVd3vbM/+D90ng1q
         9rcJybQI8TYwYG5u088/ES5faSvREICkA6taRJkrBvdpJguQHocT3cxJKxRWTGwUt8Kk
         mDx4IHn4jM8BnJBXbV3JX2PM72zZLkOSykt7TSe0/Pn6EZVRrJ2OiwWXr53cJWV2pub9
         DRjVgKYJHnUvpOEkNfqgRY0hDY37MTGZs/UU31PghG/oK2UP/HFfTFpKQeFp2TsQCKki
         AYwAnmfO3D/Pm8nZGz0NA4CLeLcgeMdIhTWQ/4GuwV7WImmn8IQHxhkf/ZECPJjTIsn4
         3IFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=PmVVhht0;
       spf=pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=helgaas@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r8si2288863otp.4.2021.01.19.10.34.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Jan 2021 10:34:24 -0800 (PST)
Received-SPF: pass (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 54BF122D2A;
	Tue, 19 Jan 2021 18:34:23 +0000 (UTC)
Date: Tue, 19 Jan 2021 12:34:21 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Arnd Bergmann <arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	Tom Joseph <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-pci@vger.kernel.org, linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-ntb@googlegroups.com
Subject: Re: [PATCH v9 01/17] Documentation: PCI: Add specification for the
 *PCI NTB* function device
Message-ID: <20210119181106.GA2493893@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210104152909.22038-2-kishon@ti.com>
X-Original-Sender: helgaas@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=PmVVhht0;       spf=pass
 (google.com: domain of helgaas@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=helgaas@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Mon, Jan 04, 2021 at 08:58:53PM +0530, Kishon Vijay Abraham I wrote:
> Add specification for the *PCI NTB* function device. The endpoint function
> driver and the host PCI driver should be created based on this
> specification.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>

A few typos below if there's opportunity for revisions.

> ---
>  Documentation/PCI/endpoint/index.rst          |   1 +
>  .../PCI/endpoint/pci-ntb-function.rst         | 351 ++++++++++++++++++
>  2 files changed, 352 insertions(+)
>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
> 
> diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
> index 4ca7439fbfc9..ef6861128506 100644
> --- a/Documentation/PCI/endpoint/index.rst
> +++ b/Documentation/PCI/endpoint/index.rst
> @@ -11,5 +11,6 @@ PCI Endpoint Framework
>     pci-endpoint-cfs
>     pci-test-function
>     pci-test-howto
> +   pci-ntb-function
>  
>     function/binding/pci-test
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
> +with each other by exposing each host as a device to the other host.
> +NTBs typically support the ability to generate interrupts on the remote
> +machine, expose memory ranges as BARs and perform DMA.  They also support
> +scratchpads which are areas of memory within the NTB that are accessible
> +from both machines.
> +
> +PCI NTB Function allows two different systems (or hosts) to communicate
> +with each other by configurig the endpoint instances in such a way that
> +transactions from one system is routed to the other system.

s/is/are/

> +In the below diagram, PCI NTB function configures the SoC with multiple
> +PCIe Endpoint (EP) instances in such a way that transaction from one EP
> +controller is routed to the other EP controller. Once PCI NTB function

s/transaction ... is/transactions ... are/

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

Expand "ATU" since this is the first mention.

> +link status. Endpoint can indicate the status of commands issued be host in
> +this region. Endpoint can also indicate the scratchpad offset, number of
> +memory windows to the host using this region.

s/be host/by host/
s/offset, number/offset and number/

> +The format of Config Region is given below. Each of the fields here are 32
> +bits.

s/Each ... are/All ... are/

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

s/i.e/i.e.,/

> +	Endpoint). The endpoint on receiving this command will configure
> +	the outbound ATU such that transaction to DB BAR will be routed
> +	to the MSI/MSI-X address programmed by the host. The ARGUMENT

s/transaction to/transactions to/

Expand "DB BAR".  I assume this refers to "Doorbell BAR" (which itself
is not defined).  How do we know which is the Doorbell BAR?

Also, "DB" itself needs to be expanded somehow for uses like below:

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
> +	will be routed to the address provided by the host.

How do we know which is the MW BAR?  I assume "MW" refers to "Memory
Window".

> +
> +	  CMD_LINK_UP (0x3): Command to indicate an NTB application is
> +	bound to the EP device on the host side. Once the endpoint
> +	receives this command from both the hosts, the endpoint will
> +	raise an LINK_UP event to both the hosts to indicate the hosts
> +	can start communicating with each other.

s/raise an/raise a/

I guess this "LINK_UP event" is something other than the PCIe DL_Up
state, because each host has already been communicating with the
endpoint.  Right?  Is this LINK_UP a software construct?

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

s/it's/its/

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

s/Atleast/At least/

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
> +
> +Modeling Optional Memory Windows:
> +---------------------------------
> +
> +This is modeled the same was as MW1 but each of the additional memory windows
> +is mapped to separate BARs.
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210119181106.GA2493893%40bjorn-Precision-5520.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBUVRZ2AAMGQE2YP2N3A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F393084DC
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 06:10:43 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id x25sf2192153vkn.11
        for <lists+linux-ntb@lfdr.de>; Thu, 28 Jan 2021 21:10:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611897042; cv=pass;
        d=google.com; s=arc-20160816;
        b=vpsq4DqSLcz4BhYeg3NRA1JbFVsAwlsoaZ2acWZ1350n1xl+cS+YfOl0MSIZNibBvV
         C+bTJaWu90A5r5D4N5sXhJHd20UqKa8YLsoILHz2T+mjQAONEUFppKqRJ9kFlEzJoone
         KESIwu6bR002/+AQB1hzK/Ie1rVyf9jo2mJIXzvQ+tUOHONWjfUli8+dAV4F09rLxKk2
         jX3AWLNg07w9Z2TIRTUcllAZ0AyrvlrXcCmYIMLEgSvWxgjApBwqK23HWqhH2WlCiORv
         7xzGvpEDlA8u2tHzvCwdXGuU6rEJJn+G61+w79qZm+aCePFLnv9NrzmSPF1NfA36GIsk
         o9HA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=D7nrJr0sG7sjmeHCWwTPCCkId9Okv/B5j6HthDGTNhY=;
        b=zVxDBeZULdc5umCvW/COOl+F6TwXV7IlS6V3MXHLKfqbjvWTkPAVDI8AyRR5DrUv4x
         zISrg32oVOGeyDi2SjJK/0Fx16TsewFRHPOSDwlmxUicJ1hCJp0gbXuIg4qDMqKcp9Y2
         0JvT5HJAAf4RoP26mL14zqGBKY/WhHUtggGoPbaHMMsn+a5hNzwKnzKzVdTVx/Yi8yiu
         LvYt4P3/GTgokC0kp0Zo+Zj6jR5NUz0QePopWN9azMfcZjCiqDoFHUrmd4a9+loeQET0
         NmMjF4Q10OSj6ehXdIQajv4kVq/tWWa8UsXlRcQvQpViJMy6Mzq3MDQiq6IzjYnTnkOX
         irTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="h/oN9kTL";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=D7nrJr0sG7sjmeHCWwTPCCkId9Okv/B5j6HthDGTNhY=;
        b=jMaRv/Aj1uBTpDVR9GjuX9gXWkSKdyXVjVn7MAgnIVsjUqZBbiWACSPBpXtqgGDrTt
         Pe2Gu9qd6iOHxGSueeitFcyT+xLZZg+3Je3K5GSkQMbUMuDu15HmmUKsKRbYD09yvsO3
         j9UzfjWjmHBDihMN9K1OSdWqheRelWouJ0Q6qhkSpDKJ8ZrTytRrz6A0K59J15gF7CR9
         STbEWmXxcdeQjRaAHs7BFatiXkKYd/unAsMb4JzINzOpZ0eRfHA7z6dpcbF84FcZuSt8
         JyF72e5gsE1M1ZLJSpj6X7I3ZK9NBENBuQYsJHK3OOVoiKVD6/7d09y0BQm66Jqlcm6Q
         ao1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=D7nrJr0sG7sjmeHCWwTPCCkId9Okv/B5j6HthDGTNhY=;
        b=FApV+3d8nG9sbsL5hc4J4DRRAMkXEfyaS6jiC0r6LBuw9ctsmUXJiJkY2s3MfC4zFL
         cn01fPrQOS0ydWwUL9JDpjEy3jTgOahXIhbMiUlV1Nb5YTdvzPguy1gNdPKPrS8GDyGx
         CgiiyIKUQo5/0eQuyWtSK53H7/Y2tJfzn074jevdLWlzt3pIWaIz980XV58jPkY1pydK
         YUMei+/KoDIaKwHSB6egYurpQ79yg2ExoXWpSPM1uYUxXvDbkytKmKYWKNiMGHc31+iX
         Ps1zdNapmnVW5PWKq+9nztUHFGyj6EyaVCpkcp63FiGRABOQrLF6+2Q5c92soGt9JAfQ
         n29A==
X-Gm-Message-State: AOAM533lA/MVMYph2fSo12dAN2LeSYA3CJqcenbP/P89WSwQ7CbyF8tc
	kJzTE65U0KD4K6XXOXk9Me4=
X-Google-Smtp-Source: ABdhPJyH4LPAaBv9ssqE7Ol/UaNmzrd5VziftjbqFPPivdg9ozHli65NkstgxPi2JZ7sStTKIjndWg==
X-Received: by 2002:a05:6102:30ad:: with SMTP id y13mr1666249vsd.48.1611897042089;
        Thu, 28 Jan 2021 21:10:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:3d86:: with SMTP id k128ls430986vka.0.gmail; Thu, 28 Jan
 2021 21:10:41 -0800 (PST)
X-Received: by 2002:a1f:9310:: with SMTP id v16mr2127804vkd.25.1611897041586;
        Thu, 28 Jan 2021 21:10:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611897041; cv=none;
        d=google.com; s=arc-20160816;
        b=vOZe6HJ9InOikarDeEIdh2fbtdHReONaQIAe8MtxhpATMCoTE1S6FrWozu0dYXbExn
         SIOl4zdbx5WSjik7tjxLtmINdd3o3z1zwSjsi0D/Kw8ElqXB7vp6alcZAoyE0figJDWS
         wTnWryyaZfjgKzGTdKLvHtfW0Tm5ti0gVnnTU1q3j+udX3Igcc7s3b8qa5tGTEyXZgbY
         o1JJM/1X0eTJaKci0wKfW44R/MCsqpK/5j1n3Wowsjt28EjHiq+E+y4tsPwuEtwuLdzI
         R4dOuk5hfNt8a3xcgpDLOx8eaxqsqY36Iv1l9dnt+7dM+wDOAzDE8bhbt79mBXZY7Pru
         1Bjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=k3OmjmrTJKamxttI6XACOonQ3wDiCLQutEu7WC0fC78=;
        b=GDmknHP9YYh4yK1eGZMHHej95Z0geJGeCD47rqqXyzGUOl+Igp84rRUXF2yPnxbUfV
         W8qnptBSdCEbmT+lhkPdhfHqJdIz288kbsPtbpMSBpgU+awqW+oWu4cryneskfrVPVAy
         gMIM7c8BrX79M2/CfO3QWkKaED64WvaHQQx7P9vrb9GSikmBbCWB8tywIGFtF0au+qr6
         uv118bXQAtbKP9cTq62+auSuzNrUnF/C/bZ2DvO/YNdXUWVwW1i3GbYHuM0Losqh+UHq
         L65yuKu13hgNhiT6nsPMftX5qYm+XECUskHtNm+W0fAvzgDGGYqPKzIn8vj3AylBFmJ9
         MCSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="h/oN9kTL";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id q11si605115ual.1.2021.01.28.21.10.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Jan 2021 21:10:41 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10T5AUi0116640;
	Thu, 28 Jan 2021 23:10:30 -0600
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10T5AU5c074961
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 28 Jan 2021 23:10:30 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 28
 Jan 2021 23:10:29 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 28 Jan 2021 23:10:30 -0600
Received: from [10.250.235.36] (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10T5AOUc088403;
	Thu, 28 Jan 2021 23:10:25 -0600
Subject: Re: [PATCH v9 01/17] Documentation: PCI: Add specification for the
 *PCI NTB* function device
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
References: <20210104152909.22038-1-kishon@ti.com>
 <20210104152909.22038-2-kishon@ti.com>
 <2adb27fe-1b2e-3488-eedf-46b01ee25ace@infradead.org>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <d20ce50e-d448-db8e-96b5-50d4cb7642d6@ti.com>
Date: Fri, 29 Jan 2021 10:40:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <2adb27fe-1b2e-3488-eedf-46b01ee25ace@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="h/oN9kTL";       spf=pass
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

On 29/01/21 6:35 am, Randy Dunlap wrote:
> On 1/4/21 7:28 AM, Kishon Vijay Abraham I wrote:
>> Add specification for the *PCI NTB* function device. The endpoint function
>> driver and the host PCI driver should be created based on this
>> specification.
>>
>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>> ---
>>  Documentation/PCI/endpoint/index.rst          |   1 +
>>  .../PCI/endpoint/pci-ntb-function.rst         | 351 ++++++++++++++++++
>>  2 files changed, 352 insertions(+)
>>  create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst
> 
> 
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
> 
> preferably
>        Non-Transparent
> 
>> +with each other by exposing each host as a device to the other host.
>> +NTBs typically support the ability to generate interrupts on the remote
>> +machine, expose memory ranges as BARs and perform DMA.  They also support
>> +scratchpads which are areas of memory within the NTB that are accessible
>> +from both machines.
>> +
>> +PCI NTB Function allows two different systems (or hosts) to communicate
>> +with each other by configurig the endpoint instances in such a way that
>> +transactions from one system is routed to the other system.
>> +
>> +In the below diagram, PCI NTB function configures the SoC with multiple
>> +PCIe Endpoint (EP) instances in such a way that transaction from one EP
>> +controller is routed to the other EP controller. Once PCI NTB function
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
> what is ATU?
> 
>> +link status. Endpoint can indicate the status of commands issued be host in
> 
>                                                                     by  ??
> 
>> +this region. Endpoint can also indicate the scratchpad offset, number of
>> +memory windows to the host using this region.
>> +
>> +The format of Config Region is given below. Each of the fields here are 32
> 
>                                                Each                    is
> 
>> +bits.
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
> 	                   i.e.
> 
>> +	Endpoint). The endpoint on receiving this command will configure
>> +	the outbound ATU such that transaction to DB BAR will be routed
>> +	to the MSI/MSI-X address programmed by the host. The ARGUMENT
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
> 
> 	                                          transaction
> 
>> +	will be routed to the address provided by the host.
>> +
>> +	  CMD_LINK_UP (0x3): Command to indicate an NTB application is
>> +	bound to the EP device on the host side. Once the endpoint
>> +	receives this command from both the hosts, the endpoint will
>> +	raise an LINK_UP event to both the hosts to indicate the hosts
>> +	can start communicating with each other.
>> +
>> +  ARGUMENT:
>> +
>> +	The value of this register is based on the commands issued in
>> +	command register. See COMMAND section for more information.
>> +
>> +  TOPOLOGY:
>> +
>> +	Set to NTB_TOPO_B2B_USD for Primary interface
>> +	Set to NTB_TOPO_B2B_DSD for Secondary interface
>> +
>> +  ADDRESS/SIZE:
>> +
>> +	Address and Size to be used while configuring the memory window.
>> +	See "CMD_CONFIGURE_MW" for more info.
>> +
>> +  MEMORY WINDOW1 OFFSET:
>> +
>> +	Memory Window 1 and Doorbell registers are packed together in the
>> +	same BAR. The initial portion of the region will have doorbell
>> +	registers and the latter portion of the region is for memory window 1.
>> +	This register will specify the offset of the memory window 1.
>> +
>> +  NO OF MEMORY WINDOW:
>> +
>> +	Specifies the number of memory windows supported by the NTB device.
>> +
>> +  SPAD OFFSET:
>> +
>> +	Self scratchpad region and config region are packed together in the
>> +	same BAR. The initial portion of the region will have config region
>> +	and the latter portion of the region is for self scratchpad. This
>> +	register will specify the offset of the self scratchpad registers.
>> +
>> +  SPAD COUNT:
>> +
>> +	Specifies the number of scratchpad registers supported by the NTB
>> +	device.
>> +
>> +  DB ENTRY SIZE:
>> +
>> +	Used to determine the offset within the DB BAR that should be written
>> +	in order to raise doorbell. EPF NTB can use either MSI/MSI-X to
>> +	ring doorbell (MSI-X support will be added later). MSI uses same
>> +	address for all the interrupts and MSI-X can provide different
>> +	addresses for different interrupts. The MSI/MSI-X address is provided
>> +	by the host and the address it gives is based on the MSI/MSI-X
>> +	implementation supported by the host. For instance, ARM platform
>> +	using GIC ITS will have same MSI-X address for all the interrupts.
>> +	In order to support all the combinations and use the same mechanism
>> +	for both MSI and MSI-X, EPF NTB allocates separate region in the
>> +	Outbound Address Space for each of the interrupts. This region will
>> +	be mapped to the MSI/MSI-X address provided by the host. If a host
>> +	provides the same address for all the interrupts, all the regions
>> +	will be translated to the same address. If a host provides different
>> +	address, the regions will be translated to different address. This
>> +	will ensure there is no difference while raising the doorbell.
>> +
>> +  DB DATA:
>> +
>> +	EPF NTB supports 32 interrupts. So there are 32 DB DATA registers.
>> +	This holds the MSI/MSI-X data that has to be written to MSI address
>> +	for raising doorbell interrupt. This will be populated by EPF NTB
>> +	while invoking CMD_CONFIGURE_DOORBELL.
>> +
>> +Scratchpad Registers:
>> +---------------------
>> +
>> +  Each host has it's own register space allocated in the memory of NTB EPC.
> 
>                    its
> [it's means "it is"]
> 
>> +  They are both readable and writable from both sides of the bridge. They
>> +  are used by applications built over NTB and can be used to pass control
>> +  and status information between both sides of a device.
>> +
>> +  Scratchpad registers has 2 parts
>> +	1) Self Scratchpad: Host's own register space
>> +	2) Peer Scratchpad: Remote host's register space.
>> +
>> +Doorbell Registers:
>> +-------------------
>> +
>> +  Registers using which one host can interrupt the other host.
> 
> eh?  ENOPARSE.
> 
>> +
>> +Memory Window:
>> +--------------
>> +
>> +  Actual transfer of data between the two hosts will happen using the
>> +  memory window.
>> +
>> +Modeling Constructs:
>> +====================
>> +
>> +There are 5 or more distinct regions (config, self scratchpad, peer
>> +scratchpad, doorbell, one or more memory windows) to be modeled to achieve
>> +NTB functionality. Atleast one memory window is required while more than
> 
>                       At least
> 
>> +one is permitted. All these regions should be mapped to BAR for hosts to
>> +access these regions.
>> +
>> +If one 32-bit BAR is allocated for each of these regions, the scheme would
>> +look like
>> +
>> +======  ===============
>> +BAR NO  CONSTRUCTS USED
>> +======  ===============
>> +BAR0    Config Region
>> +BAR1    Self Scratchpad
>> +BAR2    Peer Scratchpad
>> +BAR3    Doorbell
>> +BAR4    Memory Window 1
>> +BAR5    Memory Window 2
>> +======  ===============
>> +
>> +However if we allocate a separate BAR for each of the region, there would not
> 
>                                                          regions,
> 
>> +be enough BARs for all the regions in a platform that supports only 64-bit
>> +BAR.
>> +
>> +In order to be supported by most of the platforms, the regions should be
>> +packed and mapped to BARs in a way that provides NTB functionality and
>> +also making sure the hosts doesn't access any region that it is not supposed
>> +to.
>> +
>> +The following scheme is used in EPF NTB Function
>> +
>> +======  ===============================
>> +BAR NO  CONSTRUCTS USED
>> +======  ===============================
>> +BAR0    Config Region + Self Scratchpad
>> +BAR1    Peer Scratchpad
>> +BAR2    Doorbell + Memory Window 1
>> +BAR3    Memory Window 2
>> +BAR4    Memory Window 3
>> +BAR5    Memory Window 4
>> +======  ===============================
>> +
>> +With this scheme, for the basic NTB functionality 3 BARs should be sufficient.
>> +
>> +Modeling Config/Scratchpad Region:
>> +----------------------------------
>> +
>> +.. code-block:: text
>> +
>> + +-----------------+------->+------------------+        +-----------------+
>> + |       BAR0      |        |  CONFIG REGION   |        |       BAR0      |
>> + +-----------------+----+   +------------------+<-------+-----------------+
>> + |       BAR1      |    |   |SCRATCHPAD REGION |        |       BAR1      |
>> + +-----------------+    +-->+------------------+<-------+-----------------+
>> + |       BAR2      |            Local Memory            |       BAR2      |
>> + +-----------------+                                    +-----------------+
>> + |       BAR3      |                                    |       BAR3      |
>> + +-----------------+                                    +-----------------+
>> + |       BAR4      |                                    |       BAR4      |
>> + +-----------------+                                    +-----------------+
>> + |       BAR5      |                                    |       BAR5      |
>> + +-----------------+                                    +-----------------+
>> +   EP CONTROLLER 1                                        EP CONTROLLER 2
>> +
>> +Above diagram shows Config region + Scratchpad region for HOST1 (connected to
>> +EP controller 1) allocated in local memory. The HOST1 can access the config
>> +region and scratchpad region (self scratchpad) using BAR0 of EP controller 1.
>> +The peer host (HOST2 connected to EP controller 2) can also access this
>> +scratchpad region (peer scratchpad) using BAR1 of EP controller 2. This
>> +diagram shows the case where Config region and Scratchpad region is allocated
>> +for HOST1, however the same is applicable for HOST2.
>> +
>> +Modeling Doorbell/Memory Window 1:
>> +----------------------------------
>> +
>> +.. code-block:: text
>> +
>> + +-----------------+    +----->+----------------+-----------+-----------------+
>> + |       BAR0      |    |      |   Doorbell 1   +-----------> MSI-X ADDRESS 1 |
>> + +-----------------+    |      +----------------+           +-----------------+
>> + |       BAR1      |    |      |   Doorbell 2   +---------+ |                 |
>> + +-----------------+----+      +----------------+         | |                 |
>> + |       BAR2      |           |   Doorbell 3   +-------+ | +-----------------+
>> + +-----------------+----+      +----------------+       | +-> MSI-X ADDRESS 2 |
>> + |       BAR3      |    |      |   Doorbell 4   +-----+ |   +-----------------+
>> + +-----------------+    |      |----------------+     | |   |                 |
>> + |       BAR4      |    |      |                |     | |   +-----------------+
>> + +-----------------+    |      |      MW1       +---+ | +-->+ MSI-X ADDRESS 3||
>> + |       BAR5      |    |      |                |   | |     +-----------------+
>> + +-----------------+    +----->-----------------+   | |     |                 |
>> +   EP CONTROLLER 1             |                |   | |     +-----------------+
>> +                               |                |   | +---->+ MSI-X ADDRESS 4 |
>> +                               +----------------+   |       +-----------------+
>> +                                EP CONTROLLER 2     |       |                 |
>> +                                  (OB SPACE)        |       |                 |
>> +                                                    +------->      MW1        |
>> +                                                            |                 |
>> +                                                            |                 |
>> +                                                            +-----------------+
>> +                                                            |                 |
>> +                                                            |                 |
>> +                                                            |                 |
>> +                                                            |                 |
>> +                                                            |                 |
>> +                                                            +-----------------+
>> +                                                             PCI Address Space
>> +                                                             (Managed by HOST2)
>> +
>> +Above diagram shows how the doorbell and memory window 1 is mapped so that
>> +HOST1 can raise doorbell interrupt on HOST2 and also how HOST1 can access
>> +buffers exposed by HOST2 using memory window1 (MW1). Here doorbell and
>> +memory window 1 regions are allocated in EP controller 2 outbound (OB) address
>> +space. Allocating and configuring BARs for doorbell and memory window1
>> +is done during the initialization phase of NTB endpoint function driver.
>> +Mapping from EP controller 2 OB space to PCI address space is done when HOST2
>> +sends CMD_CONFIGURE_MW/CMD_CONFIGURE_DOORBELL. The commands are explained
>> +below.
> 
> below??

Actually it's explained in the "Config Region" section under COMMAND.
> 
>> +
>> +Modeling Optional Memory Windows:
>> +---------------------------------
>> +
>> +This is modeled the same was as MW1 but each of the additional memory windows
>> +is mapped to separate BARs.
>>
> 
> Is all of this register/memory space mapping defined in some PCI NTB spec
> or is this specific to some hardware/SoC implementation?

This is specific to the configurable PCIe endpoint controllers
integrated in SoC (not specific to a particular hardware or SoC
implementation) i.e., any vendors whose SoC has a configurable PCIe
endpoint controller can use this. The NTB spec [1] (whitepaper rather)
doesn't define the exact mapping or registers but only defines the
constructs used for communication between two hosts. All of this is well
abstracted in the existing NTB framework (using struct ntb_dev_ops) and
supports different NTB implementations (IDT NTB PCIe-switch, AMD NTB,
Intel NTB and with this series SW defined NTB implemented using multiple
endpoint controllers in an SoC).

Thank You,
Kishon

[1] -> https://docs.broadcom.com/doc/12353428
> 
> 
> HTH.
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/d20ce50e-d448-db8e-96b5-50d4cb7642d6%40ti.com.

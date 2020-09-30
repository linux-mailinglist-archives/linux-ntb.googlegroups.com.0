Return-Path: <linux-ntb+bncBCOOP4VF5IDRBTWL2L5QKGQEVSKDUOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1F627ED14
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:35:44 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id b8sf2136913yba.10
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:35:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480143; cv=pass;
        d=google.com; s=arc-20160816;
        b=dUf6ct/tLGuZeiG9TDAgeEBFTbQ2SimWnJiAdQkx4xv1TvHMx69G1oFHh5sr4QHvp1
         CW6O/fRxNcEYFDyDupiL+R3xLUlR66soGc1YssnNmLXc+2vEdm0opx/E6SNnbFRMJi1T
         5VhRo8p+GGy257NUwuIUVsjC7sUJoeB3R8mLrrkZMNrbCl0cuhkRfHeuadpm+lmFjW3z
         CGKutXevmBVLZpXbKk78k4UAoKfP6ScdwzZz8qi475dK3Jjyq7fPUWUMdI+mqsjm8QWu
         XZLSWsBGvWc+DdOoB8ayJM27EZ8Chq7jKwwTkYr+48UxrGZS5JLAS47wjqQR9FSDcjIT
         It+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9wX2CnCeFyYkgKdL0duNsKaLzbJqxA8b1R/btMaCpJA=;
        b=MS3HX8GAephNuGB1ntCi6+PgbUbLl1T+kUxV5XeRULc5JZ+b6FXrTVsveeflKCKA3N
         PYDCeNzCIgs4AZVtqW8GbmKlZchaL36q++K+J/Dk9t0eMpSHKzc1WPqrU/IIkvx1jZz4
         VxaxzgPXITCVXaJdMSygTKKFFuM35s1uj/QMbzTztsYSctE4ASGWIXSP2gGlfYmyMZ3J
         EZVlRJRLwtzeVGhRyadyee2P4iBZw4KwrPEQzdG1USsuWM1ec3ZNblmdgZeRMhfw7lj/
         JZ1+UJgdYmeVPRVJmCL7AB1ScIHS4RgI6rlzo8nkV62oRDC7t8HSfW9SLOm6DIkkgmDP
         twpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=bKRWiDKV;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9wX2CnCeFyYkgKdL0duNsKaLzbJqxA8b1R/btMaCpJA=;
        b=Ue6NzKD47lk1O/V/CZjOW9sXLu/28B1xsjaehIVsA18nmH9Dt4gzUiQiXz6wYAHu7X
         4UVh4kNhEZEeRxGv7/GNNqe360krbeW+uJR6uolTBaZ65Sp9DkZOKeefYESXSV0tTEJK
         sdvKXO11jjt4BRJR0cau+tYNIco/SCMPbW5nbIBnVwDybPLpsFW6gFgakAQO2LgqCIDB
         hLD5vZSfZYel2Ddr4iLWVxIbT8kzw/EjxRIZpvrI3L1JgcfW5S1kxz8C6/kDA1g02TR9
         1Z3aVB9OqKId3slMwkIYVw2f9HquHjqWHKV8s6xooApJEm8I4XUXuDuhslGN5KtJaLfu
         8PEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9wX2CnCeFyYkgKdL0duNsKaLzbJqxA8b1R/btMaCpJA=;
        b=qTzgjxZNrCDQGgYDHgyqJFtBCidbfme0Pjr7ChLTPB/xBdZFUh9U/EPlPTxINscON4
         Fhup0Faj5xDHHflIWcjsBt5yTa1WaIqnRR8HVrpzSVjQHtUQyeFXAjwXk4khfy+WuKBg
         umA7LQXcPM/bY1W8jUf+s2cJRngcsgjR0qxOwHuFp6yqNj3aFyBLzSLwdwrWzWJPgCvH
         TsyxSlxbY4Mp3lV69W97COd3VeZp/BK7ozvZteY5UGsvnr0JHNXquNafXlM3XR9XlhE/
         WoVstZLM4vpIWlFQqXeejwy6OOKfCa3ioBxgsjJnqigivcPtGq16Gpwegb1kcJXrvRMi
         +Scw==
X-Gm-Message-State: AOAM532plObohoH7xlxj7J22xHdktjNZCeBO+TmBJdkawb85fkmXA/mh
	mQqrqYgFFtLFlnLgiRULG+E=
X-Google-Smtp-Source: ABdhPJwuOAw6Bukgkwn9aNQ7vzrBMXAdXzus0LLgQlh7dK5JMixX5EjuzOjTDAlQ/xh0KPVSAm9oNA==
X-Received: by 2002:a25:2d41:: with SMTP id s1mr3941611ybe.459.1601480142740;
        Wed, 30 Sep 2020 08:35:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:2ad8:: with SMTP id q207ls1032056ybq.8.gmail; Wed, 30
 Sep 2020 08:35:42 -0700 (PDT)
X-Received: by 2002:a25:e710:: with SMTP id e16mr4146455ybh.358.1601480142223;
        Wed, 30 Sep 2020 08:35:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480142; cv=none;
        d=google.com; s=arc-20160816;
        b=JyG3u+cW7U28hyGc5seH0BYLgRd3EbGg45OwNEIp1TT6Hxdrsmv/AxROpuICDsn6jH
         QgvnpxdWdmiBABwekGOM2lMLjn95Q3yLhJzpqHGJAK4FqK92dO4pW/cmyItFXZhyYZj2
         g8oF8yFPyesKHdUjJiwcSDVXPP6UVkUPmo5J1TKkPc2mACzADDsu/C4ZjafBG7/XlEKH
         KqwToFzATqO/+qpe/qNg3Vo8IXxcQpHWQ0CMoeMOho0ExWH5iqU7mGKfQzD/vaHS1UGB
         sSaKYfB9dvXP+i0RVglkUmrgekyzsulP8TKUF0AkKRvchnUomlkPRrOfmXW56Kgvj+pE
         l3Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=PEAp/tAtz4SG7iL1uO7TRLavF7BSCuhGXN4014rUOJE=;
        b=ZU1pnKyV6ZQSwPFwyUPQKWSeYcvPKSxVq3RXqL+eh6lfyMVz0zMwLz71V7bkNaTxbn
         rcxA0IjatNbJ6POiy6AJWGo7USfaUmL4fFyDjXJlPkuw8U7qPFT/oc1EUOthZT0wrryy
         6YBnuPPWu0YFUuyFJTqCS+T32NAkEZjN0x3uAIseWd9dmq39aD1/2hYBmrLas5dNmJdF
         GZleKVUxu9rwEV2LYSYvedD2uF/BVhYaMjWhgDf/EKoNSSugJA1bVdngDEtsRYXzlu3I
         9XKix1BJhFZguwsCrkSs+Qal6eipCIpTcNw7BtNPwK8VfdFbnpIJwoeWkFhCqjUl/nwA
         sVWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=bKRWiDKV;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id s69si163086ybc.4.2020.09.30.08.35.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:35:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZYkU076378;
	Wed, 30 Sep 2020 10:35:34 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFZYVe041008
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:35:34 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:35:33 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:35:33 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZQ033254;
	Wed, 30 Sep 2020 10:35:28 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Kishon Vijay Abraham I <kishon@ti.com>,
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
Subject: [PATCH v7 01/18] Documentation: PCI: Add specification for the *PCI NTB* function device
Date: Wed, 30 Sep 2020 21:05:02 +0530
Message-ID: <20200930153519.7282-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=bKRWiDKV;       spf=pass
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

Add specification for the *PCI NTB* function device. The endpoint function
driver and the host PCI driver should be created based on this
specification.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 Documentation/PCI/endpoint/index.rst          |   1 +
 .../PCI/endpoint/pci-ntb-function.rst         | 351 ++++++++++++++++++
 2 files changed, 352 insertions(+)
 create mode 100644 Documentation/PCI/endpoint/pci-ntb-function.rst

diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
index 4ca7439fbfc9..ef6861128506 100644
--- a/Documentation/PCI/endpoint/index.rst
+++ b/Documentation/PCI/endpoint/index.rst
@@ -11,5 +11,6 @@ PCI Endpoint Framework
    pci-endpoint-cfs
    pci-test-function
    pci-test-howto
+   pci-ntb-function
 
    function/binding/pci-test
diff --git a/Documentation/PCI/endpoint/pci-ntb-function.rst b/Documentation/PCI/endpoint/pci-ntb-function.rst
new file mode 100644
index 000000000000..f7246c812801
--- /dev/null
+++ b/Documentation/PCI/endpoint/pci-ntb-function.rst
@@ -0,0 +1,351 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+=================
+PCI NTB Function
+=================
+
+:Author: Kishon Vijay Abraham I <kishon@ti.com>
+
+PCI Non Transparent Bridges (NTB) allow two host systems to communicate
+with each other by exposing each host as a device to the other host.
+NTBs typically support the ability to generate interrupts on the remote
+machine, expose memory ranges as BARs and perform DMA.  They also support
+scratchpads which are areas of memory within the NTB that are accessible
+from both machines.
+
+PCI NTB Function allows two different systems (or hosts) to communicate
+with each other by configurig the endpoint instances in such a way that
+transactions from one system is routed to the other system.
+
+In the below diagram, PCI NTB function configures the SoC with multiple
+PCIe Endpoint (EP) instances in such a way that transaction from one EP
+controller is routed to the other EP controller. Once PCI NTB function
+configures the SoC with multiple EP instances, HOST1 and HOST2 can
+communicate with each other using SoC as a bridge.
+
+.. code-block:: text
+
+    +-------------+                                   +-------------+
+    |             |                                   |             |
+    |    HOST1    |                                   |    HOST2    |
+    |             |                                   |             |
+    +------^------+                                   +------^------+
+           |                                                 |
+           |                                                 |
+ +---------|-------------------------------------------------|---------+
+ |  +------v------+                                   +------v------+  |
+ |  |             |                                   |             |  |
+ |  |     EP      |                                   |     EP      |  |
+ |  | CONTROLLER1 |                                   | CONTROLLER2 |  |
+ |  |             <----------------------------------->             |  |
+ |  |             |                                   |             |  |
+ |  |             |                                   |             |  |
+ |  |             |  SoC With Multiple EP Instances   |             |  |
+ |  |             |  (Configured using NTB Function)  |             |  |
+ |  +-------------+                                   +-------------+  |
+ +---------------------------------------------------------------------+
+
+Constructs used for Implementing NTB
+====================================
+
+	1) Config Region
+	2) Self Scratchpad Registers
+	3) Peer Scratchpad Registers
+	4) Doorbell Registers
+	5) Memory Window
+
+
+Config Region:
+--------------
+
+Config Region is a construct that is specific to NTB implemented using NTB
+Endpoint Function Driver. The host and endpoint side NTB function driver will
+exchange information with each other using this region. Config Region has
+Control/Status Registers for configuring the Endpoint Controller. Host can
+write into this region for configuring the outbound ATU and to indicate the
+link status. Endpoint can indicate the status of commands issued be host in
+this region. Endpoint can also indicate the scratchpad offset, number of
+memory windows to the host using this region.
+
+The format of Config Region is given below. Each of the fields here are 32
+bits.
+
+.. code-block:: text
+
+	+------------------------+
+	|         COMMAND        |
+	+------------------------+
+	|         ARGUMENT       |
+	+------------------------+
+	|         STATUS         |
+	+------------------------+
+	|         TOPOLOGY       |
+	+------------------------+
+	|    ADDRESS (LOWER 32)  |
+	+------------------------+
+	|    ADDRESS (UPPER 32)  |
+	+------------------------+
+	|           SIZE         |
+	+------------------------+
+	|   NO OF MEMORY WINDOW  |
+	+------------------------+
+	|  MEMORY WINDOW1 OFFSET |
+	+------------------------+
+	|       SPAD OFFSET      |
+	+------------------------+
+	|        SPAD COUNT      |
+	+------------------------+
+	|      DB ENTRY SIZE     |
+	+------------------------+
+	|         DB DATA        |
+	+------------------------+
+	|            :           |
+	+------------------------+
+	|            :           |
+	+------------------------+
+	|         DB DATA        |
+	+------------------------+
+
+
+  COMMAND:
+
+	NTB function supports three commands:
+
+	  CMD_CONFIGURE_DOORBELL (0x1): Command to configure doorbell. Before
+	invoking this command, the host should allocate and initialize
+	MSI/MSI-X vectors (i.e initialize the MSI/MSI-X capability in the
+	Endpoint). The endpoint on receiving this command will configure
+	the outbound ATU such that transaction to DB BAR will be routed
+	to the MSI/MSI-X address programmed by the host. The ARGUMENT
+	register should be populated with number of DBs to configure (in the
+	lower 16 bits) and if MSI or MSI-X should be configured (BIT 16).
+	(TODO: Add support for MSI-X).
+
+	  CMD_CONFIGURE_MW (0x2): Command to configure memory window. The
+	host invokes this command after allocating a buffer that can be
+	accessed by remote host. The allocated address should be programmed
+	in the ADDRESS register (64 bit), the size should be programmed in
+	the SIZE register and the memory window index should be programmed
+	in the ARGUMENT register. The endpoint on receiving this command
+	will configure the outbound ATU such that trasaction to MW BAR
+	will be routed to the address provided by the host.
+
+	  CMD_LINK_UP (0x3): Command to indicate an NTB application is
+	bound to the EP device on the host side. Once the endpoint
+	receives this command from both the hosts, the endpoint will
+	raise an LINK_UP event to both the hosts to indicate the hosts
+	can start communicating with each other.
+
+  ARGUMENT:
+
+	The value of this register is based on the commands issued in
+	command register. See COMMAND section for more information.
+
+  TOPOLOGY:
+
+	Set to NTB_TOPO_B2B_USD for Primary interface
+	Set to NTB_TOPO_B2B_DSD for Secondary interface
+
+  ADDRESS/SIZE:
+
+	Address and Size to be used while configuring the memory window.
+	See "CMD_CONFIGURE_MW" for more info.
+
+  MEMORY WINDOW1 OFFSET:
+
+	Memory Window 1 and Doorbell registers are packed together in the
+	same BAR. The initial portion of the region will have doorbell
+	registers and the latter portion of the region is for memory window 1.
+	This register will specify the offset of the memory window 1.
+
+  NO OF MEMORY WINDOW:
+
+	Specifies the number of memory windows supported by the NTB device.
+
+  SPAD OFFSET:
+
+	Self scratchpad region and config region are packed together in the
+	same BAR. The initial portion of the region will have config region
+	and the latter portion of the region is for self scratchpad. This
+	register will specify the offset of the self scratchpad registers.
+
+  SPAD COUNT:
+
+	Specifies the number of scratchpad registers supported by the NTB
+	device.
+
+  DB ENTRY SIZE:
+
+	Used to determine the offset within the DB BAR that should be written
+	in order to raise doorbell. EPF NTB can use either MSI/MSI-X to
+	ring doorbell (MSI-X support will be added later). MSI uses same
+	address for all the interrupts and MSI-X can provide different
+	addresses for different interrupts. The MSI/MSI-X address is provided
+	by the host and the address it gives is based on the MSI/MSI-X
+	implementation supported by the host. For instance, ARM platform
+	using GIC ITS will have same MSI-X address for all the interrupts.
+	In order to support all the combinations and use the same mechanism
+	for both MSI and MSI-X, EPF NTB allocates separate region in the
+	Outbound Address Space for each of the interrupts. This region will
+	be mapped to the MSI/MSI-X address provided by the host. If a host
+	provides the same address for all the interrupts, all the regions
+	will be translated to the same address. If a host provides different
+	address, the regions will be translated to different address. This
+	will ensure there is no difference while raising the doorbell.
+
+  DB DATA:
+
+	EPF NTB supports 32 interrupts. So there are 32 DB DATA registers.
+	This holds the MSI/MSI-X data that has to be written to MSI address
+	for raising doorbell interrupt. This will be populated by EPF NTB
+	while invoking CMD_CONFIGURE_DOORBELL.
+
+Scratchpad Registers:
+---------------------
+
+  Each host has it's own register space allocated in the memory of NTB EPC.
+  They are both readable and writable from both sides of the bridge. They
+  are used by applications built over NTB and can be used to pass control
+  and status information between both sides of a device.
+
+  Scratchpad registers has 2 parts
+	1) Self Scratchpad: Host's own register space
+	2) Peer Scratchpad: Remote host's register space.
+
+Doorbell Registers:
+-------------------
+
+  Registers using which one host can interrupt the other host.
+
+Memory Window:
+--------------
+
+  Actual transfer of data between the two hosts will happen using the
+  memory window.
+
+Modeling Constructs:
+====================
+
+There are 5 or more distinct regions (config, self scratchpad, peer
+scratchpad, doorbell, one or more memory windows) to be modeled to achieve
+NTB functionality. Atleast one memory window is required while more than
+one is permitted. All these regions should be mapped to BAR for hosts to
+access these regions.
+
+If one 32-bit BAR is allocated for each of these regions, the scheme would
+look like
+
+======  ===============
+BAR NO  CONSTRUCTS USED
+======  ===============
+BAR0    Config Region
+BAR1    Self Scratchpad
+BAR2    Peer Scratchpad
+BAR3    Doorbell
+BAR4    Memory Window 1
+BAR5    Memory Window 2
+======  ===============
+
+However if we allocate a separate BAR for each of the region, there would not
+be enough BARs for all the regions in a platform that supports only 64-bit
+BAR.
+
+In order to be be supported by most of the platforms, the regions should be
+packed and mapped to BARs in a way that provides NTB functionality and
+also making sure the hosts doesn't access any region that it is not supposed
+to.
+
+The following scheme is used in EPF NTB Function
+
+======  ===============================
+BAR NO  CONSTRUCTS USED
+======  ===============================
+BAR0    Config Region + Self Scratchpad
+BAR1    Peer Scratchpad
+BAR2    Doorbell + Memory Window 1
+BAR3    Memory Window 2
+BAR4    Memory Window 3
+BAR5    Memory Window 4
+======  ===============================
+
+With this scheme, for the basic NTB functionality 3 BARs should be sufficient.
+
+Modeling Config/Scratchpad Region:
+----------------------------------
+
+.. code-block:: text
+
+ +-----------------+------->+------------------+        +-----------------+
+ |       BAR0      |        |  CONFIG REGION   |        |       BAR0      |
+ +-----------------+----+   +------------------+<-------+-----------------+
+ |       BAR1      |    |   |SCRATCHPAD REGION |        |       BAR1      |
+ +-----------------+    +-->+------------------+<-------+-----------------+
+ |       BAR2      |            Local Memory            |       BAR2      |
+ +-----------------+                                    +-----------------+
+ |       BAR3      |                                    |       BAR3      |
+ +-----------------+                                    +-----------------+
+ |       BAR4      |                                    |       BAR4      |
+ +-----------------+                                    +-----------------+
+ |       BAR5      |                                    |       BAR5      |
+ +-----------------+                                    +-----------------+
+   EP CONTROLLER 1                                        EP CONTROLLER 2
+
+Above diagram shows Config region + Scratchpad region for HOST1 (connected to
+EP controller 1) allocated in local memory. The HOST1 can access the config
+region and scratchpad region (self scratchpad) using BAR0 of EP controller 1.
+The peer host (HOST2 connected to EP controller 2) can also access this
+scratchpad region (peer scratchpad) using BAR1 of EP controller 2. This
+diagram shows the case where Config region and Scratchpad region is allocated
+for HOST1, however the same is applicable for HOST2.
+
+Modeling Doorbell/Memory Window 1:
+----------------------------------
+
+.. code-block:: text
+
+ +-----------------+    +----->+----------------+-----------+-----------------+
+ |       BAR0      |    |      |   Doorbell 1   +-----------> MSI-X ADDRESS 1 |
+ +-----------------+    |      +----------------+           +-----------------+
+ |       BAR1      |    |      |   Doorbell 2   +---------+ |                 |
+ +-----------------+----+      +----------------+         | |                 |
+ |       BAR2      |           |   Doorbell 3   +-------+ | +-----------------+
+ +-----------------+----+      +----------------+       | +-> MSI-X ADDRESS 2 |
+ |       BAR3      |    |      |   Doorbell 4   +-----+ |   +-----------------+
+ +-----------------+    |      |----------------+     | |   |                 |
+ |       BAR4      |    |      |                |     | |   +-----------------+
+ +-----------------+    |      |      MW1       +---+ | +-->+ MSI-X ADDRESS 3||
+ |       BAR5      |    |      |                |   | |     +-----------------+
+ +-----------------+    +----->-----------------+   | |     |                 |
+   EP CONTROLLER 1             |                |   | |     +-----------------+
+                               |                |   | +---->+ MSI-X ADDRESS 4 |
+                               +----------------+   |       +-----------------+
+                                EP CONTROLLER 2     |       |                 |
+                                  (OB SPACE)        |       |                 |
+                                                    +------->      MW1        |
+                                                            |                 |
+                                                            |                 |
+                                                            +-----------------+
+                                                            |                 |
+                                                            |                 |
+                                                            |                 |
+                                                            |                 |
+                                                            |                 |
+                                                            +-----------------+
+                                                             PCI Address Space
+                                                             (Managed by HOST2)
+
+Above diagram shows how the doorbell and memory window 1 is mapped so that
+HOST1 can raise doorbell interrupt on HOST2 and also how HOST1 can access
+buffers exposed by HOST2 using memory window1 (MW1). Here doorbell and
+memory window 1 regions are allocated in EP controller 2 outbound (OB) address
+space. Allocating and configuring BARs for doorbell and memory window1
+is done during the initialization phase of NTB endpoint function driver.
+Mapping from EP controller 2 OB space to PCI address space is done when HOST2
+sends CMD_CONFIGURE_MW/CMD_CONFIGURE_DOORBELL. The commands are explained
+below.
+
+Modeling Optional Memory Windows:
+---------------------------------
+
+This is modeled the same was as MW1 but each of the additional memory windows
+is mapped to separate BARs.
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-2-kishon%40ti.com.

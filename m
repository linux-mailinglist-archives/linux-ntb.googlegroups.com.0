Return-Path: <linux-ntb+bncBCOOP4VF5IDRBU4CQH5QKGQE7Y4LRYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF055269CF0
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:21:40 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id w3sf1364719iou.9
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:21:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143700; cv=pass;
        d=google.com; s=arc-20160816;
        b=sEh2IFDkj+dhrxGk+NJGUzjTh0MQI4cSKEWglahiTYOMHpe0+j0MCw4ZEKng8YD5IX
         5ORgRbGu3nSKzp62M/c4Vm1tarMiz1CAkiMFRI4iY/xLiR/zUc0ZCXH2elQtC1AsJQrk
         bcuZRIHTE7T1yFP4AF3/holnfWWzkVJavDZ9iTl2qti38VwNg4v4mvsr4zLHFS/JAbIk
         Tu1zCuDMCu4zV73rj1Ll37P3vPTnryNxbIIJmGBfdFSitCFHoEWNiR1BbnWriGgfC6GC
         OAlPwr8nTE52MqMQK3AK27BlsGMCW/kGKxK/EFf4nfr88ju4lwu5jQXPhRAwVSHZ6Tcs
         1Fcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=w6kk8z5XkTAVD/VrEnDt1sEHwt66PrhI4H6smdBktK0=;
        b=A8x3YN+mNi6onXH5Qz+xt5Q7tN5P08FeDNVOfhpbZ2C73PaGW3nlD50A2aGLATdL4e
         YPtOvM7DKqaT5hkPPk6mnycPbjKKI4bbkJi0fTWe9cyj8RTUK58qNRE3GgDPs/Gt5v8j
         +iePY27pI1dMVNgtn2SIS2Fscw6YQKIlXX0zGETDdF4lt+4oqQQSbCHQ4BXL/pA1Rj/Q
         FvtBntk1s8wL01L7z0aMtaBGWIZSji8Ii5Ip7P58tJ16FMKRTNX+ACPIwbZ7WfluonNS
         MQf+NdyLkixElOJ4k+1vRQSa+O2JsFzgRO0syZrCcOm5xj6+V0KvQbyMw7dqUFNTQVRW
         h5yw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=KZFLaR5l;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w6kk8z5XkTAVD/VrEnDt1sEHwt66PrhI4H6smdBktK0=;
        b=p09o6bVx+8JEufCTthkSjg+sJWr/5qzXpauaxU+3esu2cYZo6YRI+xIeqerxELLL/2
         NgQIXps/Y15lc7gwLnravnZDmvisbvMDZ0CJ5X6PBITTVZJcRGTS4Z3CeXUu0se3w8pq
         IVmyrUz3fs3R1NVhJikSBATmyVBcFmRQbUc+wP33OrDOA1UEfNbBFe2QMddJSqkRVsfO
         CS8TSnGHzhTVPHo5g2E3FjzQnm701hVP5TJETvQ+uJn30WG78TMsuh9FMVgU4hOYyu1I
         CJTY26UfD5eBVdsKpbXH9B1og+BmW3ZADLgU+twaj6BmxGRIfhUY0gGVfucLfxteE8WP
         B4KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w6kk8z5XkTAVD/VrEnDt1sEHwt66PrhI4H6smdBktK0=;
        b=lD9+ZzHLCyZG/g+Vuehltf+Ij56lr4Rr8PrD0mwHgTzvhoQw/fhptbBFYRnhOXSC2M
         XurCY1ubnt1WLvb/tDzQIQyjvdgrOJr1EuJl3GXy1RgkrnmTH7ssbB2m1rFBAF3G41vL
         6va9YS137MdNoWw8BQxS2qrFtp39dLbr0puQZ+8p9qP/Xm2eONF4+0YoEloCm+tLfFbh
         jhxFsSfVimp/u06n07X2hOn3fr4F8kxyeyKVELo5OF4RMCnsUihd4i3iEc6yFC1uTB6t
         a8drvpGZ77+3JBUSKdu3BI38uLBQje+VhEC878qh/VFeCE0H8eDSU3azB0YOAQvtODOG
         mtDA==
X-Gm-Message-State: AOAM532TbCeFURVVKJuqPNsQicT3uLFejViAteZTeHvCS90D2HxyZH+H
	kdCKBkZhqMkQ0+64Etd8efI=
X-Google-Smtp-Source: ABdhPJzBXop9qlRy3kt1tIVpAx+Yr+SRIpz5b6o6zt2j3Iwc7vh8oZfwtrZsG2z50znuoC7jbLpcEA==
X-Received: by 2002:a5d:914a:: with SMTP id y10mr14221794ioq.108.1600143699792;
        Mon, 14 Sep 2020 21:21:39 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:12d0:: with SMTP id v16ls1612214jas.8.gmail; Mon,
 14 Sep 2020 21:21:39 -0700 (PDT)
X-Received: by 2002:a02:6a49:: with SMTP id m9mr15838895jaf.43.1600143699385;
        Mon, 14 Sep 2020 21:21:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143699; cv=none;
        d=google.com; s=arc-20160816;
        b=f9Xh29g3XOU/Ffmyf9gVbtVmcGRSlm2Nu+IGCa7i0+ZYNfnr597kQWniLPq7hbNkR0
         othCT5SfUwQ+wNBzo/NzumPPD1/JhhIMo9SJVSAI5ncicqYS2DDmxdoTH8kHXyy4KSrl
         0e6gjw+ofsh2Iql/mT+A13qLsvdrGpwYv45TgNmg7ZiuqxRJo9YdlV6Rad2mJ63nLnVu
         t85xAYBuJ35pzDunmTZx00AhV/bMpCSMpFzAQI+R75z/am5FttuI3iUaAkz82dKcBzxx
         crEkf4mMOgJUB9FpwK83af73WailgOxsI3x1ugSWVTUl9z++axv/N9TD2X7qsuv+u8fi
         Lv8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=PEAp/tAtz4SG7iL1uO7TRLavF7BSCuhGXN4014rUOJE=;
        b=fLuVxBcvkw1KsHrnPIYiJcEHZj6uf+gGMbx4NxCRZA2h28j3UFisgFYlj3cBovNHK6
         Powxqmw3wbfXmYxnGy+2euQdqiK33HdEt8nS2xwJjYJg8haPboz7vM/utjSeCWpOlZGT
         TV9aNumIewZc1ywvgiOasv/fAnFPONTJ1FTnJBcjUQbNRRMe/HqB3BJ/2CB7BDwP2ZGY
         f+TDg9bJs+U8zJAYRxPE26o4bcSHY2W9H15ef2TRxV3epu5s6G3HHykjlzdc5DFAwUdW
         CtbiPsen6cRU2g7w1FXpODFWbbBahDShf3AGavC1b3nuMlabM5EmOoiG29/n3M6G8LoY
         xUzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=KZFLaR5l;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id e82si936184ill.2.2020.09.14.21.21.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:21:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LPgL026739;
	Mon, 14 Sep 2020 23:21:25 -0500
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4LPGM034210
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:21:25 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:21:24 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:21:25 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMh028615;
	Mon, 14 Sep 2020 23:21:20 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
        Allen Hubbe <allenbh@gmail.com>, Rob
 Herring <robh@kernel.org>
CC: Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman
	<gregkh@linuxfoundation.org>,
        Tom Joseph <tjoseph@cadence.com>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-ntb@googlegroups.com>, Kishon Vijay
 Abraham I <kishon@ti.com>
Subject: [PATCH v4 01/17] Documentation: PCI: Add specification for the *PCI NTB* function device
Date: Tue, 15 Sep 2020 09:50:54 +0530
Message-ID: <20200915042110.3015-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=KZFLaR5l;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-2-kishon%40ti.com.

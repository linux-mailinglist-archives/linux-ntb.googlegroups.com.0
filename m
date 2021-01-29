Return-Path: <linux-ntb+bncBCOOP4VF5IDRBUUG2CAAMGQEKKEXM7A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BBA730892B
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:45:07 +0100 (CET)
Received: by mail-yb1-xb37.google.com with SMTP id s64sf9753683yba.20
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:45:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924306; cv=pass;
        d=google.com; s=arc-20160816;
        b=DkAbdHaPuaaH3bam098oX88hsg08mmJFpcqLYjp//3GlNSUodUjzH88xzUA3Bu9soj
         bvrLwHJSV+TXeti1L1odqEB9gkpouI631zeKoama9z5R6lOMkqjkPB31Jk4YeoRbBTdv
         UdmfZsENp/fhWI5r/pJPcZbeEv/kDSEKa8YQlbPYjNaZHl0fOUIdHFt1OTYEo72mG1xs
         kTJPvIxC/Hi1AYWYf6BNmTo05qY4ccTLz60r+/E6+X8komJjI1Jl9izRMiFoFupG0kgp
         CtpGct7U8rYtzolPSesyChphF4ndNsoWh0S4T0/MGa2LIkTAXjpD4Rd9EnVkmINWL9lm
         9jpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=oD7KtaW5lJfK3in1JeoC0cAIciE9EStOTh9nV7SRdYU=;
        b=xBmgvLzALdJXSggV4xhgMSApLPkZB5h2b2vZDCtMHQuKRQLOiJSWYldHRGbTSZsy0i
         FsJLy5dasNXVNELxN4743DBl5BMOeTpmrobHRAl1zPqQymzImgJDdGKTQUAXe2JTAJaX
         Rc1rjdGvjr8xJ1/pyl3jTP2m/T0BKujrOq8HV5Skx9Pd24JYU1JL+AEFLstA0C2grx6N
         E+F2KsQfkbLfucPLJ+CLfxAlz7jMQdC5KK87KQqsQQ+62hRc2Xz9FALt74qMCcbSnCMp
         C/uVUPdP3CGrK9HtZd1pZKhATMIifgm6a4Htcx+hzmqKQVM8cd8+AggFvdpuUyPDI12V
         yxAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=hMNQ3hIw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=oD7KtaW5lJfK3in1JeoC0cAIciE9EStOTh9nV7SRdYU=;
        b=I6VH2DRspPSVjSPdlwZ4F5u1sZBdt/KnJx8D2KKj17BZ43RXNXWwQrZEG/wosSNuwj
         VKemstKmsW5nxwESEf9p2w2Knkh4DXr9mF862e1j9UyHjK1XJlalcTy8c5g0bloNRCX0
         JBSolH3BtzuvJQjGlb+WzmUdXDSFAw7u1WPNmjHJqOwtkumLw52k3+Y7ZCevHbPVVDVj
         B+/733BRoX4k0ql/XhZBThdRq93z5wjfBrumis3mfzfbD89RSbYWDn4/gqz8yb4SjZGG
         dABg+MkPX30zacONuoDTCV4ZYclsF5kW+IWNtScE+Md52VNiOF4GH91Yao4xjlCcaXTy
         Siiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oD7KtaW5lJfK3in1JeoC0cAIciE9EStOTh9nV7SRdYU=;
        b=jpl184n/XQtG2ZtB9UJYXlR7TUCRbBmOYfH051YSJBmP8v/PGkaf/TpIkXvgeWkgeQ
         bu+E6qMEOjiV28gDkP2SkcFp9i28dz/QFtoZw/OVLuZeb+EVnV5QfvZ1PW8dSYUHO5I8
         kSxQ6LCNVuyrpcx03Lw3B5+69x6tH9lkOb4+ZwBCX3/C7BdAT4n2fczi/E8N4tsKAA96
         htu/qWiArw2ESjcBU5A+pG2iVCDS+ELdjCV60CEGX+RBkvVGB9Rn9t2Ox0fUthyoUgq5
         TAxJM1UP/G4Zt+Nb6+RDP99JFcWFLwnbHSza2RlzpRigJ1nJsouQl8KH620iVMHj89+C
         A/dw==
X-Gm-Message-State: AOAM531bWf03pw0Gb6rezhLDWcaJXsggPMecVTuJ/LNv5y1sKXyNLp7d
	GMPMijVp1cUaFIioZc0gxH8=
X-Google-Smtp-Source: ABdhPJzhPRELuMuina0QARlIcctsTXgMU7dCpZ4YbZfR7owwABw9Z1qtA+MHi0PrNBL+d9iq3u/Ffg==
X-Received: by 2002:a25:55d7:: with SMTP id j206mr7439643ybb.6.1611924306411;
        Fri, 29 Jan 2021 04:45:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:828e:: with SMTP id r14ls335403ybk.7.gmail; Fri, 29 Jan
 2021 04:45:06 -0800 (PST)
X-Received: by 2002:a25:3620:: with SMTP id d32mr5747950yba.251.1611924306066;
        Fri, 29 Jan 2021 04:45:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924306; cv=none;
        d=google.com; s=arc-20160816;
        b=CY1uRzVtIUou83HPThc4EVkLfn6M9rWrSK7EMG1Zyil9judLurGnoWa+LwZ55hTz4l
         N7/FChzew4bbNGdjDVsmxa7wBqSrM8Pl61LbIA4dNgp8A64UU0mFMtS7KbojzeWUuYxM
         bQHW5hyvWBAD4hmwYi1CTPQo8ErXPTVO14h+76WJmnG/0OcNTQxpJmws9paCxHlpIn0h
         BZnEbF8p7N8s93tfPkm2qDRxQkTJBe5BC1ninZckHElugZ4kGl73GFQKSNIueYLYIhHk
         du3H2Qo/fYtJBwaeD2sj0BkO50RI1gikEssKGKQRQgsDFciY4skEGRdGDJjEQIEKWZIg
         flWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=cy3YI0j7jgYLS3zYPT4KX3+IbsOlaRkg+3s1uwMt/SU=;
        b=Efy01JvM+LZTdDHhJWHsDZwYVUySwRkOkISAYHKuxGclqvUTkYg25lXPJZxoFyxj96
         wMpSbzgo7Uof0w7CxyKpW8xY961tg9gZ8HMnyRS5M3XhCvVNPa5CZzEPBGib92zBMF8P
         xjcBgUzZv3DRnnsEcJKjyJ0cT0uK9lOCQPWJyX2O0Tb/WzYw9BNNDwI0wSlQLJrSsQUU
         rGwxSqPqigg0lGEkj0YunBwz24EUWAB4THBl6zltZLv3RTJszioOqKIF2/B/qH/oDgZd
         NRN8thyDm0aKCbLoe9M9tJWAQ7jVLHhm7svOasMlQSY7IFB3r/ujbm1hhxKU54cO/6LN
         AxuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=hMNQ3hIw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id c10si568484ybf.1.2021.01.29.04.45.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:45:06 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TCiwhr030018;
	Fri, 29 Jan 2021 06:44:58 -0600
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TCiwK4023350
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:44:58 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:44:57 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:44:57 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDWG075758;
	Fri, 29 Jan 2021 06:44:52 -0600
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
Subject: [PATCH v10 17/17] Documentation: PCI: Add userguide for PCI endpoint NTB function
Date: Fri, 29 Jan 2021 18:13:13 +0530
Message-ID: <20210129124313.28549-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=hMNQ3hIw;       spf=pass
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

Add documentation to help users use pci-epf-ntb function driver and
existing host side NTB infrastructure for NTB functionality.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
---
 Documentation/PCI/endpoint/index.rst         |   1 +
 Documentation/PCI/endpoint/pci-ntb-howto.rst | 161 +++++++++++++++++++
 2 files changed, 162 insertions(+)
 create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst

diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
index 9cb6e5f3c4d5..38ea1f604b6d 100644
--- a/Documentation/PCI/endpoint/index.rst
+++ b/Documentation/PCI/endpoint/index.rst
@@ -12,6 +12,7 @@ PCI Endpoint Framework
    pci-test-function
    pci-test-howto
    pci-ntb-function
+   pci-ntb-howto
 
    function/binding/pci-test
    function/binding/pci-ntb
diff --git a/Documentation/PCI/endpoint/pci-ntb-howto.rst b/Documentation/PCI/endpoint/pci-ntb-howto.rst
new file mode 100644
index 000000000000..9f905ea724d1
--- /dev/null
+++ b/Documentation/PCI/endpoint/pci-ntb-howto.rst
@@ -0,0 +1,161 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+===================================================================
+PCI Non-Transparent Bridge (NTB) Endpoint Function (EPF) User Guide
+===================================================================
+
+:Author: Kishon Vijay Abraham I <kishon@ti.com>
+
+This document is a guide to help users use pci-epf-ntb function driver
+and ntb_hw_epf host driver for NTB functionality. The list of steps to
+be followed in the host side and EP side is given below. For the hardware
+configuration and internals of NTB using configurable endpoints see
+Documentation/PCI/endpoint/pci-ntb-function.rst
+
+Endpoint Device
+===============
+
+Endpoint Controller Devices
+---------------------------
+
+For implementing NTB functionality at least two endpoint controller devices
+are required.
+
+To find the list of endpoint controller devices in the system::
+
+        # ls /sys/class/pci_epc/
+          2900000.pcie-ep  2910000.pcie-ep
+
+If PCI_ENDPOINT_CONFIGFS is enabled::
+
+	# ls /sys/kernel/config/pci_ep/controllers
+	  2900000.pcie-ep  2910000.pcie-ep
+
+
+Endpoint Function Drivers
+-------------------------
+
+To find the list of endpoint function drivers in the system::
+
+	# ls /sys/bus/pci-epf/drivers
+	  pci_epf_ntb   pci_epf_ntb
+
+If PCI_ENDPOINT_CONFIGFS is enabled::
+
+	# ls /sys/kernel/config/pci_ep/functions
+	  pci_epf_ntb   pci_epf_ntb
+
+
+Creating pci-epf-ntb Device
+----------------------------
+
+PCI endpoint function device can be created using the configfs. To create
+pci-epf-ntb device, the following commands can be used::
+
+	# mount -t configfs none /sys/kernel/config
+	# cd /sys/kernel/config/pci_ep/
+	# mkdir functions/pci_epf_ntb/func1
+
+The "mkdir func1" above creates the pci-epf-ntb function device that will
+be probed by pci_epf_ntb driver.
+
+The PCI endpoint framework populates the directory with the following
+configurable fields::
+
+	# ls functions/pci_epf_ntb/func1
+          baseclass_code    deviceid          msi_interrupts    pci-epf-ntb.0
+          progif_code       secondary         subsys_id         vendorid
+          cache_line_size   interrupt_pin     msix_interrupts   primary
+          revid             subclass_code     subsys_vendor_id
+
+The PCI endpoint function driver populates these entries with default values
+when the device is bound to the driver. The pci-epf-ntb driver populates
+vendorid with 0xffff and interrupt_pin with 0x0001::
+
+	# cat functions/pci_epf_ntb/func1/vendorid
+	  0xffff
+	# cat functions/pci_epf_ntb/func1/interrupt_pin
+	  0x0001
+
+
+Configuring pci-epf-ntb Device
+-------------------------------
+
+The user can configure the pci-epf-ntb device using its configfs entry. In order
+to change the vendorid and the deviceid, the following
+commands can be used::
+
+	# echo 0x104c > functions/pci_epf_ntb/func1/vendorid
+	# echo 0xb00d > functions/pci_epf_ntb/func1/deviceid
+
+In order to configure NTB specific attributes, a new sub-directory to func1
+should be created::
+
+	# mkdir functions/pci_epf_ntb/func1/pci_epf_ntb.0/
+
+The NTB function driver will populate this directory with various attributes
+that can be configured by the user::
+
+	# ls functions/pci_epf_ntb/func1/pci_epf_ntb.0/
+          db_count    mw1         mw2         mw3         mw4         num_mws
+          spad_count
+
+A sample configuration for NTB function is given below::
+
+	# echo 4 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/db_count
+	# echo 128 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/spad_count
+	# echo 2 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/num_mws
+	# echo 0x100000 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/mw1
+	# echo 0x100000 > functions/pci_epf_ntb/func1/pci_epf_ntb.0/mw2
+
+Binding pci-epf-ntb Device to EP Controller
+--------------------------------------------
+
+NTB function device should be attached to two PCIe endpoint controllers
+connected to the two hosts. Use the 'primary' and 'secondary' entries
+inside NTB function device to attach one PCIe endpoint controller to
+primary interface and the other PCIe endpoint controller to the secondary
+interface. ::
+
+        # ln -s controllers/2900000.pcie-ep/ functions/pci-epf-ntb/func1/primary
+        # ln -s controllers/2910000.pcie-ep/ functions/pci-epf-ntb/func1/secondary
+
+Once the above step is completed, both the PCI endpoint controllers are ready to
+establish a link with the host.
+
+
+Start the Link
+--------------
+
+In order for the endpoint device to establish a link with the host, the _start_
+field should be populated with '1'. For NTB, both the PCIe endpoint controllers
+should establish link with the host::
+
+        #echo 1 > controllers/2900000.pcie-ep/start
+        #echo 1 > controllers/2910000.pcie-ep/start
+
+
+RootComplex Device
+==================
+
+lspci Output
+------------
+
+Note that the devices listed here correspond to the values populated in
+"Creating pci-epf-ntb Device" section above::
+
+        # lspci
+        0000:00:00.0 PCI bridge: Texas Instruments Device b00d
+        0000:01:00.0 RAM memory: Texas Instruments Device b00d
+
+
+Using ntb_hw_epf Device
+-----------------------
+
+The host side software follows the standard NTB software architecture in Linux.
+All the existing client side NTB utilities like NTB Transport Client and NTB
+Netdev, NTB Ping Pong Test Client and NTB Tool Test Client can be used with NTB
+function device.
+
+For more information on NTB see
+:doc:`Non-Transparent Bridge <../../driver-api/ntb>`
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-18-kishon%40ti.com.

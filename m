Return-Path: <linux-ntb+bncBCOOP4VF5IDRBOHJZT7QKGQE2QU7RGQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A9B32E989A
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:31:05 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id a3sf17986169oon.19
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:31:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774264; cv=pass;
        d=google.com; s=arc-20160816;
        b=SPRUk18gWrx2we/M5QWpz5HT4Z6g1gWirBIOEilygw9xHqPmliiiA5vx7xHx5aEu7d
         VO13YUdrMdaCh4fAv1fjzRv+5Ppzdlo1k/x0DcU6Fea3DBVydEjIc1muNM8jxkxUi1dE
         OfyqDuD8xG1ymvqicJK5+EiwFxBe/w2Yh5jwey5xxrLzJOrF4M/INYn+T6FUVQN8avzH
         BZoaLx6dQNayC1Yt1IjmaRuOQ9LpYfS16RGXT75yHl8KoCmGmb8jhFLVFqgXZPRulvOp
         /Ianf9p7B5zaj3g36K5VM/As7x4fQOw9q2Rd7c54RWk8/DKY1qZUSkQeDZ/7pcWc5zBh
         TGnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=JZAG07mC6S1FBlt74466i44DuOtgJYpHgU16j8G2w/k=;
        b=CVyARr3tEw5DoyUFMQyJSl7xIoR9Y3X6DnyE46y0+2y5dOcfR2IzsDFNlOCalqkHg/
         FUXVdHotV2zx+SXCwDYwVwmILyvZ6krVZMkmKyVadtS+fJaeFnoF5Itk7LVbaZ/IfAKh
         1gfJH752E5lQ2pyeD+mramOmdmvuQGXFVXlnSm6GEXNa+mbKw4wgVw2Wm+78lSsUBvwB
         k877tBPBCVt1CYdAtA5ukMnWTpdyZNFDL+zWyabGuYhWMmO6sHfF93w4ngHCaHKfQbJ0
         QYFNE/vNwiNOf43WURHKTPM8Xi+hw4X/7OkGsRMZXFS6uEp62wxTwg8QzGYRR9cHVIQh
         XvjQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=pOSIOr6e;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JZAG07mC6S1FBlt74466i44DuOtgJYpHgU16j8G2w/k=;
        b=ijln4c8UPFtgH1vjnhRWrvyTODEADd0WmEkP7k8o+EXP5YEeRWD4thQulAqUP2glGK
         91hX8lLJDUqSEKrSXu2HU2Z7ARh0IPzPBzk11GVnOOKYI48tIYU3588iQsg4XmROXqei
         EJ5DzjfYtGWExTdtypt14tR6e4pKMAtXw4p9SRbMzKr7hlXcin68qxlord6UIdWKFJvg
         tD2yaoNFsRRcG79f+pD3/IFbYradElbi+pIHJ33X3JLyZhhSVYdytSl6M9lLGO96EOZj
         pVs8kdXX5v4fcfWSgaZxnmg+NB9sNN8pJsDWqB+lHWPFKKWBYTFOrz7LIzOIRHWCFxFV
         70uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JZAG07mC6S1FBlt74466i44DuOtgJYpHgU16j8G2w/k=;
        b=T5QblTsZ8+q4elwrhkbKUBueneO2gfDHmG/3LmNkZtDhwTZqeCX+RDBfY/BoixhCf+
         NNocngYXNGLfGDd/5KUqwleZBETMR/0fGD6h8exelDS1Ve8OY/zL9+/avWSYLtqkbE2i
         lnL23haOgj8W9UcKNCSy0GpAeqd7beszjVKMiIqfhJyG4LXzSKIyxRhrbV/FRu/+8L/o
         IjjJanmTt5RG+byPA7hlXI8tDB6xaH0KuP+a3IGb3KyftbTgo8dT4SK8t12wP8TsqPql
         VDAIE9zWSLaXSLgLdqfgRvTso927FFlSlMYcXX9yG5CNyXNTbEJzj0o0HerJdtWGhsA2
         rcfQ==
X-Gm-Message-State: AOAM531024Q2OIAHZSZIFAaLfanzcGoh5xkyRQucIcnxa+rIYajT4kFY
	mMv4Z6u8TxTs17eaUvoC1cM=
X-Google-Smtp-Source: ABdhPJyD5aES3TN7u3iz8N7+trhKDtcO4GMwNwB0AsPRw7tVbMujbXrCAGK4T+l0r30GQivzg2cjtw==
X-Received: by 2002:a9d:2663:: with SMTP id a90mr29627243otb.218.1609774264482;
        Mon, 04 Jan 2021 07:31:04 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls19616831oie.2.gmail; Mon, 04
 Jan 2021 07:31:04 -0800 (PST)
X-Received: by 2002:aca:4355:: with SMTP id q82mr18009762oia.132.1609774264113;
        Mon, 04 Jan 2021 07:31:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774264; cv=none;
        d=google.com; s=arc-20160816;
        b=r7c8a5SXhUZs3fpzYArP8DOjNXT2X5K6+4T5TbzxjDq3pIWNTuB0m4ayi55QnHchi/
         iMjgz530oIZmtPKkz092uogWOBcX4zR/OU4xYa3FBEiLoHBx3FF0kcK2dBDilpzZLxA8
         v+Oxc4hNqRcyyRNPet2qQGvv8DuMrAxq45bPKybVNgTOXGJR5v/4ckYPcZh1rpGuZP21
         LrCzwKIsR+JfMWrPxYHHpVxKCDE6yn3q6Tl/9g4mJS8KHfelaAYXL18fxLiJUWbftBQ2
         pmSdE8NjiTckLZP1mSqPa5IG2iK0VsXvfjexmzsumHMTEPqxsPow0FEnjeIPtSsr1B6U
         QfSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=4Fz6/znawPVT5Re4ej/ysxXwiAWhNVKJ7aypY2BXCzQ=;
        b=BvMiSWgYIoXdLLUovm+7Bl1Npmdd5bVgzC3Hvg0saflbCGm4bdhx+nwTNU0N6gVG9R
         CMqnVoLamJ/UcmlIXMEWO0O+HueHdKdBTIgkgbbxDzyAHDVgnhk6obO+joiOSzlNH2pP
         ZPNLjQ4jIXvruLUDYGR89m/ElOfNycApLkhKvYwv5g6WYxJ/2qQv+HwYgWGKjtKBIxlI
         NtsHRyjBobyD31Yl92Q2pVdw/EQwjZRjPXdEunsnBy+70BMJ02K7Lx5cagyfk2DOQ8aM
         zo9bi1CQbuXDWgqTyLUSMTpS3ZzVISG7lKLaBknFjocAe6iZW3qtBTxBtNEP51Nf8mp4
         TrJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=pOSIOr6e;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id c18si4233476oib.5.2021.01.04.07.31.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:31:04 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FUu9G030070;
	Mon, 4 Jan 2021 09:30:56 -0600
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FUu9j081325
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:30:56 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:30:56 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:30:56 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZN093710;
	Mon, 4 Jan 2021 09:30:51 -0600
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
Subject: [PATCH v9 17/17] Documentation: PCI: Add userguide for PCI endpoint NTB function
Date: Mon, 4 Jan 2021 20:59:09 +0530
Message-ID: <20210104152909.22038-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=pOSIOr6e;       spf=pass
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

Add documentation to help users use pci-epf-ntb function driver and
existing host side NTB infrastructure for NTB functionality.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Randy Dunlap <rdunlap@infradead.org>
---
 Documentation/PCI/endpoint/index.rst         |   1 +
 Documentation/PCI/endpoint/pci-ntb-howto.rst | 160 +++++++++++++++++++
 2 files changed, 161 insertions(+)
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
index 000000000000..b6e1073c9a39
--- /dev/null
+++ b/Documentation/PCI/endpoint/pci-ntb-howto.rst
@@ -0,0 +1,160 @@
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-18-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB5MKWD6QKGQE5QESCPA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id E112C2AF51A
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:38:30 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id o128sf1147004ooo.11
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:38:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109109; cv=pass;
        d=google.com; s=arc-20160816;
        b=LWWTF5nD/JzEAeBFZP2dk/KDz7davCYxr5uXiHCjfVdyKqOwLE+ooPFnwLXsX8q2nf
         sWUusUJkAOpm/LuhGh2UFFGRgIqiBCNKzASF2vyZtYZB4OsHZICk2IN25PGY0yNdIoaN
         AU//cLhQsEuu3jiD6BkGSw8uHTxWqMCH2e3izICaGsugtm9pJlRLisqnP+FuL4gptL5J
         dA+zV3/cx7is19oIthhC+qgIKtf+5clto3EnGAURIeGG2XAedHuk0YXS7wRY3r/y96Vd
         ekJN8J5VcorGQAfE7DNXBwWEdmyA+9d9h/q1WFc0KUX7Omn2YiqG6+PEecNuu3hgjE7b
         9HVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=VO5pENqXXoYufUT/9SH0JAKd/d1pvVC/IW6N7080mEo=;
        b=eJAs48KJRCsF8hSVbAkWEd92vLzvkquzRA0QpMeHJh8wQG9wBoc8MrLqIRXaog/GlK
         SrWBo1eo8yLJKmDGwsdTmOAqYUUaxxeVfQ8MADTlpeC2kTbghLygz1rRQVxWMUQ0EPGi
         QoE1VyFDTA6Chcl2d9gkBfvpu++JPrBnVUSUXd2s3lKYQQGF16a/x2Xr3JVEI6YMUVai
         CgV2x6znpxyPMsGRs5KWmlG3yRAqQOlNl5Z71PNtfld6J6akl/pZ28cmdzC6vtY3kUjZ
         q53RFSBi4QyT7m/bT+yBehvv6CHe86tF2nwsiejQals9TJRvu3jSbeT0MkiJVRSOFTjO
         bBVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZhFPix0Y;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VO5pENqXXoYufUT/9SH0JAKd/d1pvVC/IW6N7080mEo=;
        b=U8pVNp44m3Bk036uWkxkQfpOx/9lNgT++1VNd69KJckOqdEIM4m9I7MH5eNW70tuYl
         CbZs8qWcqeidV75bj6TDd3kbQdND+FGLTdVuYCnrT30ND/RPgM0lY6g4AIUM9T/Y71Bh
         /DGYVTFsATEO4aspo03Z7X9oGmYTA8DBbAKaGmeGrx5Avx0pesgDOl8samP0paWTnpeY
         VRlg2FtHiNe3Accnv400gZJPNMe0uqbmLjUmCq7t19Rtot3iA/e4Z2A1bPagA3lVriZn
         /iHInm2vpCVrUXn9adxmykREYmFqmon0r6Wa5yW8LN7zKT8RIJNHvY0hRKNXvAT90cun
         niMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VO5pENqXXoYufUT/9SH0JAKd/d1pvVC/IW6N7080mEo=;
        b=CBWTLnkacA6YlcTP1knhaJwgexQXpih+68CCdANoCbn9NASmy3nHevyJH/vFPsO2pG
         LsICxLF+QXorG2w4acxkxEQMwHiIFtdiiig1AaGXcC5U1KsfFqke/VGel9Cs28SfZhiM
         FfZaA+zv37kN8EIzm3SgTL3wvvVWvzXn3c9N/hFvjWcQzAecIuRk6PAvboGvu40kQfYG
         +QfNh5HvJ+JgYg227nhCctqb7gPNSonpHy+bCOR92tEnVcaGql3ANn4ts8jX3g+ZHRAi
         rXTR6MdpUUyhmiQqNvx/DsLAJXDJwnMhsASuV3WgrUOspJyGmpYQzkZvZ0xaLxW2e+uD
         woew==
X-Gm-Message-State: AOAM530D6tVK9KX/FB8XDw1uplb/rn0oSphye5aT7kmDiUVtVE8HW4RG
	KLX+ZA4iAtCOoZ2w1fY4jTc=
X-Google-Smtp-Source: ABdhPJzYJlKBLuA2ZFYZmbrovpikBi3YPEoHMqrepH9CHMD3oxVmE+zvMXnQ/NhI1bFmVfECfwD00A==
X-Received: by 2002:a4a:d694:: with SMTP id i20mr4583537oot.40.1605109109840;
        Wed, 11 Nov 2020 07:38:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:7994:: with SMTP id h20ls1204929otm.2.gmail; Wed, 11 Nov
 2020 07:38:29 -0800 (PST)
X-Received: by 2002:a9d:649:: with SMTP id 67mr18792033otn.233.1605109109534;
        Wed, 11 Nov 2020 07:38:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109109; cv=none;
        d=google.com; s=arc-20160816;
        b=cI1H/sQozAeCSrhmexQye1ZABhpEm6Qna0N9RwU5g14k53sGrOeCzTAnoyQGzk0Eub
         cPJqQil2Jgv8uezEk21vQDe7cx8U78U9STkcnA6or0Jp2euWUaB740faq/9oS/PA0+FW
         8h5rRZ/xNbaj1vU8/QiJZiNF4ybKTrUE9I59aCG+P1iz1AttWx5/7ASQkor1twYU5/Le
         UCziux1DXH7dgF67WgOZJ2TDl5JGAMVztwFzvhkDySIhHYgEEZ1nLiYd/9JQoURKgGg+
         8msy8s4nRDohJXskq/yBDFPscLH3vqkooFJ20nmBRHVd/Ym3IFnJPPhGamsxhaYzr5VJ
         rTbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=4Fz6/znawPVT5Re4ej/ysxXwiAWhNVKJ7aypY2BXCzQ=;
        b=aFUA6FIvnz2LkWJJHHQdRJUyFkbgBTN4Fcjnag2xnnyrpY0SMgkfkcHtWF0SybWL9x
         2DdfgMcsvZSORm7/xqYFVlZLr3Digd3h9LMIjs+pZWvyxzDs7B7lCKccD5H3YNdNIrhx
         KTkOI5PHtzkDg2OImZz+UuXhHRwqzKpEOXNDChXuW9kNj3D7g6UU1p+6AlPgvwCAuzlV
         CPRThg7GkEmB1MfNfwRZlk4VW1rUuuCG+t0iDL5ruq+se1V56hxo3b2nGEs3SEmoLAtV
         Wrwn14Xt3ELxIiwCOtJ6DYaGt4k7N2ad+3kjy7N9IAZy1hE+CRzX77gNxkjhH8lu0RbG
         7gkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZhFPix0Y;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id n185si149409oih.3.2020.11.11.07.38.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:38:29 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFcM7v098070;
	Wed, 11 Nov 2020 09:38:22 -0600
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFcMqh116008
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:38:22 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:38:21 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:38:21 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa049042109;
	Wed, 11 Nov 2020 09:38:17 -0600
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
Subject: [PATCH v8 18/18] Documentation: PCI: Add userguide for PCI endpoint NTB function
Date: Wed, 11 Nov 2020 21:05:59 +0530
Message-ID: <20201111153559.19050-19-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ZhFPix0Y;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-19-kishon%40ti.com.

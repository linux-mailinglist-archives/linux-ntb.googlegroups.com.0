Return-Path: <linux-ntb+bncBCOOP4VF5IDRBG5PSH5QKGQEVYMI4OI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2587126F642
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:45:48 +0200 (CEST)
Received: by mail-oo1-xc37.google.com with SMTP id t8sf157713oot.11
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:45:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411547; cv=pass;
        d=google.com; s=arc-20160816;
        b=mZp8e6J6bXmjNbHToUgZcH4jxFFjHkTwyUhlnkdrFDX4+w97O7P9o5+eSjW5AUYEmk
         +alJtM4nUzxKvxkRkEz9/suolsvqv56m7q3g7KEd3XkXNPCvdM1BLx72puIl9XzXcC0D
         GPQY+aF9QyLtN5c3udSGBSuAItxlTQocG9K6Y3tFPWJizRCtHIVOoVvqU7v+jTXBZv9e
         mFrYmrquPJEfJBJRmNMikJTVuJr/elPTOTT86MfcYuv4RXLrx82I9+VekeTSnYvAq4IQ
         BG46lDl5q19ehkzafk8zjBtcjZVnJRGOA3vas1KSc6H48kzVQTwxuHVdCZ2MkgHE/w7u
         jfEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Dd18GZg8DLtaHEQJrzZKDSIcOtNIv8B2QabFuFcX8VI=;
        b=DriEQstuaCWjv3UE5S/oTaZr8t6/gMyfihcst2OZ25AAcBQOxLNjwy7/FfMut1sACx
         3ydNHwVVyynd2rNSlEFzFMkZshz6O2C4QjYCXH/Jvq8epv/l2FqARYlnYmHk9YxwiAsm
         zLEYq2J/O0/CMcMsPEmSj5K8dnfs2ntaiQLc6QcyP4S86HfcObUPFCxYmiz3EjhR0TDW
         R56r18suiICWwUYtm4S1PmlRnZsappzRyJs2eqvtTELJKCWtZBw2JLX+P/mjKT6FuH4e
         JfT00BmPRqc2TC1dBBD50imWNrT/G4KqL6OywhhRw594zrZh0s3WEJBT6EeNVylNXDPY
         S4GA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=mVxwBxqw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Dd18GZg8DLtaHEQJrzZKDSIcOtNIv8B2QabFuFcX8VI=;
        b=Jzm2NQicOoOir6Mqwt9Pk0dnX6yu1s3+oIDpLwGJpy9tjTioqdBLruIBaZkzckKDWK
         PNvyrGyng9mXRW3w46m14o6V1g7GELZO61XRFCtTcB7k99OquiwTdg7OSZqhQapWQm4m
         gwmNpxVEJ0o7aODK0QEMBVmXHpZmnRy8EYg0Hwpr5GCWuGaxwTUk2tO3giBpmud6XLrF
         y3hNU4vXDaUgpYef7rbVy+ezHnO/VIea/UV4ta4z2Mm4ju4dwsNbQcoRAqK99MpTMWmp
         lrI4xJr4YeBs9uqoK0J8qqJb2AdfyUHpAVZu9KgRvmM1kWWlP6qQRuZL9aibFpOG8rVV
         I6Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Dd18GZg8DLtaHEQJrzZKDSIcOtNIv8B2QabFuFcX8VI=;
        b=d+sZRCjkORqHTKrUeVmvPXujoVOlKxEobzhpVYGCVKIv321ZxHCoJoEQg2MNRRPzs/
         f3WzPKrThCc7TymxX7aO7KlyWkIHB8rvSOvEC6eUr8VKnF2rI/FrFl+oj8aZ7X2QdeMT
         yzRCfXHkh8HxDlVVxv5x+OE4TOB2YtXCd8EE+s/g/Ly/KQD68MRQZCtabmc0GSsBGjDV
         xWsIP9C6EPYPnqHw8orUY9A/9TmDApMgIJgjPO643RBuG5nIBlZBkh1Exuh0Ft8Y6AQE
         15Geq7rM5I+sAkS0QQyJcoUVkI8xwwdsST5AMtQCOTT2gumCFbMVMnSFLx5gOj+GzRzq
         z5nA==
X-Gm-Message-State: AOAM533Fbe75ESBzd3ZX9nF+hFM9QjO9idmnOL/MGccdwSrJGcyCm16M
	eGu5lxsXaTLZr69EHu4qGZc=
X-Google-Smtp-Source: ABdhPJyqqJVlNyCUkev2hyqCUFR5ZCOt0bFDGRymiqvWTCzvtoCIk6b73C4B+GVoyLImH936603FfQ==
X-Received: by 2002:a9d:3b76:: with SMTP id z109mr22526699otb.250.1600411547048;
        Thu, 17 Sep 2020 23:45:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:3a07:: with SMTP id h7ls1062162oia.1.gmail; Thu, 17 Sep
 2020 23:45:46 -0700 (PDT)
X-Received: by 2002:a05:6808:491:: with SMTP id z17mr8921456oid.110.1600411546730;
        Thu, 17 Sep 2020 23:45:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411546; cv=none;
        d=google.com; s=arc-20160816;
        b=FqL1TeqW6t2jO6XGtc/QxyXehOsa7R38hdM3QPZWvxDxXQhEaS1tNVk0xeNRY+bvGl
         DBR0ppMdv8bJJB3Guuqo0XgKvb8PD0zsJAMy+ibcjPTo/tfbW+HGTXYLLM8/EglMJDsl
         Z0mSn5dTdvx8lw1vL9cSBEia2WTUrr4dvxSbpv7CKDCdUSt8+vTXwUBtW1i7IqQLx8mX
         jjfySIN4xz4BIn4hzfWTLXgKOuX6IQfA6FrGIC5OpjwM2Go9NfvNr/aGWcxUhznpaz4s
         ba5j4+a59SLre9YXLyUuz6FDAQRTyJAcoUKAdmKSFnkJEOIElrTEIUQjXy/W4zZMbqxF
         EfkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=4Fz6/znawPVT5Re4ej/ysxXwiAWhNVKJ7aypY2BXCzQ=;
        b=hKdLMRhqfvL0WRyS+r4swhAnNAvXO/TrpWWIuSf1J5kaS75H7BK1LWMJpMP/NgNVkd
         4qP2s3MtWCEqugLv8yIxEOVdL2TrPXl0SfXePj97wDvSOwwwg2GnMAPyO8p1aqIBqKTo
         3z/5WSHiksBCZxCm2aAySSb02KtmaczUex/28OJNn1sLVz+obEAcbzjhVXduSFprcQaZ
         hpY/rBEFRaodBUxVvkaKP7Y7PQnZKVOC3ToK7Lf7IZz1oIdXnFedabAkkQYANCw1e4rA
         clGMWKogksuq5gMR2ZNY9pu2m0JnOKIK6jcVjwlDCr7OdWsQS0GxbhyTpYZFrybO4TtL
         WdzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=mVxwBxqw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id l15si277194otb.0.2020.09.17.23.45.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:45:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6jdH5017057;
	Fri, 18 Sep 2020 01:45:39 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6jdkk126815
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:45:39 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:45:38 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:45:38 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCb094595;
	Fri, 18 Sep 2020 01:45:33 -0500
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
Subject: [PATCH v5 17/17] Documentation: PCI: Add userguide for PCI endpoint NTB function
Date: Fri, 18 Sep 2020 12:12:27 +0530
Message-ID: <20200918064227.1463-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=mVxwBxqw;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-18-kishon%40ti.com.

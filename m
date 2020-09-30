Return-Path: <linux-ntb+bncBCOOP4VF5IDRB7WM2L5QKGQEPCDQSCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EF9427ED57
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:38:39 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id o3sf675117otp.8
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:38:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480318; cv=pass;
        d=google.com; s=arc-20160816;
        b=CUcHkBnFdJhm1YeVhZCYWeR2O4guCXar4SYBdlUHq8gYWUGqRMCe2WqLQpM+a+yC6n
         DyFgNDj3Euc3mu2Lj1gjik0+IwewGQbz+mPbl4QPezpgDCb033xuz4nLBQZ/fJCa7EMG
         Wbab/0Tyi6jF+T+hnbXlQhBFcTXOZQolawCLalaMFkXfLG5k8Ehxi7TpJnlmccBaRs+m
         9PqQmuOOYOb484jTvAe24sJm/P9+LaKoqz/Bk9FP7pH2+vSKXJi3G67vRlivS/9KXNOh
         FSySrAGxRpz1ga/vqplPsgKYS3lsb1zefBhQekCyevD2ruFsS20z9OOv67Ek+4eOukDp
         BIaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=QdyH0kzoZGyCO+Td3JqUC6ZZmqSSfUXJpNhimetx++4=;
        b=wToS30W3JeE83myR4erd0DDyUgo7LUNDkW+ItyEejDsbutq8AAKT6uOBV0H11JrF6k
         8TMJlBdxBwdju2S5e7AFgd/tGTvivmm6QDj9srg+tA7r1F9KVLU5k/xgfi3tE+ypUTRI
         m7qUxQUQzuUWI9FACNpVMILthiLW6LrTK78VOAp0oblw0+Jpdc50Bcnty6A93iGfJ6Ko
         iznGUBg6sdq8THPahLhQJGGPkT6LTqM3/yX/33W4J+wwP3ZS22pY4CRUXp2KzwZ4v9iH
         wusDXeseGBiGgYB8qTQQ+1J54iygiZPNypHoILBLcQGBGIy3Z+E5xr7u9Hr4IIL00fOX
         EVdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZWHVVQcJ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QdyH0kzoZGyCO+Td3JqUC6ZZmqSSfUXJpNhimetx++4=;
        b=LAktt9E7WUTNZyeiv5tBJFPM44wUY6pchKMDrWLT5dL/KTCGv9PmFSn2jaa1maCu5Y
         7X839rHbnw/z7FhmcSGIWzTcHzcQYU7MyrmjvAr9iSfn1wLzcL2gq8XRqUpktIm3cQSc
         OW2N1Is2VYbj29JmLZmaohwsa1gaQWZcTLwHNb56jQWBZ7N9V2grKouEMPQTLPSNmEXv
         Ps8kcdDl0oI0H0JBqj8l4gfKMbo3CKdxuBuC5bfCTF8kVwLH+Hp5IJKYtKq4PjMOIpyc
         TxZjhP+MKS8wXRHp36DLI7idN7ve5IReYA2QmG0+SAbX6S3j6Ws4q0hJdbEdYhHpKM1R
         Jrbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QdyH0kzoZGyCO+Td3JqUC6ZZmqSSfUXJpNhimetx++4=;
        b=Lju1G7pEwQlYcpzp5EwgbVlur4cIoOsZZjddP8Kbp3pVyZFooMfyTt+cVJ/lWnZR4g
         5FZ3pzJb3V9e6H7BUssCEuMuaZllbqg8fnb8G1Rwd0NzT62lJ/yFBHbumSdZKCYlwE/O
         TiGZzxdZkSYieVjIWrks2tWMhobRM1kpN66ob+II3DCd0QYfp5y1fJX/lrclTHQhlqK6
         7pQJb4J6mYD0FLNBchXl2LSgnum+hmpC/n3uhwj6wLL+SwELbcO2Qu2SwT9qJSX2QSAc
         opFyR3twqu6uapyEgOJ0omlzHblvG70qu/QF4nyHJ+rf1nXhea2HMII50dp+V+jYIJck
         vCTg==
X-Gm-Message-State: AOAM530b84FMtu0Smwt9aa3VccQO6TP30nsg6mKhmoy4I2MwgcGUA1kA
	JVXioO42a1UAyHE4vXXgaqI=
X-Google-Smtp-Source: ABdhPJy0NWexoaDzUlmXKt7/LtqKiQR0XMwfAzA4g/S4fVmTq6ZKg12skOLVExrHvH/8Xg+3WudHEg==
X-Received: by 2002:aca:60d5:: with SMTP id u204mr1641237oib.8.1601480318102;
        Wed, 30 Sep 2020 08:38:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:85:: with SMTP id a5ls597528oto.10.gmail; Wed, 30
 Sep 2020 08:38:37 -0700 (PDT)
X-Received: by 2002:a9d:51c2:: with SMTP id d2mr1976572oth.191.1601480317726;
        Wed, 30 Sep 2020 08:38:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480317; cv=none;
        d=google.com; s=arc-20160816;
        b=b/umqSK007qIlrDLbRMfcmBTSrwc+IIFsb1UaE8rFXGuTvDWDhX47zqYakXR2dd4YN
         UqHSlFWz+dVR+4Cz8N+k7tvKDrPWH/x0tTqVdr5EQOK3OLSW8IW1vLeQOSiVWP4zHdiJ
         C6cWUCqHqF9rEm43s8DLKpjSzJar/vMyNbAEDFcD6jBHAiKGlLKtTYsoD60oSSlyigQS
         jOqx1SzemYKNnbsC4bNqDuRe44d9Zw3ORjWLrlgS54ZgAdZYHz+EYr8bKITwucBnr60l
         IwswsPCOkLDKiDCl9foNW4Py0b/Cm4pKkZxshJYnJ4YxCI4Esfu374HRGi9Ruv3KFLpz
         NEog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=4Fz6/znawPVT5Re4ej/ysxXwiAWhNVKJ7aypY2BXCzQ=;
        b=Rb+18hS51Jc27CK3xGv68ylNO7q6CK2a5e/hRHuzZSpjVDo+1FVjQ7BwT4JHPPQH1g
         FR9T+AYLUJ0+jWykYjKhJHvXe1bKE6ddIKwx0Cns+OtF6Noj/WyOjc+vbxIGL+LZU/kr
         Zyl5m9u+q+Ix+PnkaXgZFJAA3xgtVjom5u+DYWBPrEmzNjDEFFgJUpnkKVBwxAumTJRO
         T2FP9FlZQHd6WiHGJHr94c4a2lABGcPD536/t9JiUSr6q9cAO5fH6+p4V+6hWWMzXMjb
         pxz2PUFrAdlJwMrXlVaMQAN2TWD4x8ImgWi5FQUMn99V3sF3uIeT0QLaRDYZrIpNB2Jo
         rAow==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=ZWHVVQcJ;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d22si204205ooj.1.2020.09.30.08.38.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:38:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFcR7c044424;
	Wed, 30 Sep 2020 10:38:27 -0500
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFcQjt034133;
	Wed, 30 Sep 2020 10:38:26 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:38:26 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:38:26 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZh033254;
	Wed, 30 Sep 2020 10:38:16 -0500
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
Subject: [PATCH v7 18/18] Documentation: PCI: Add userguide for PCI endpoint NTB function
Date: Wed, 30 Sep 2020 21:05:19 +0530
Message-ID: <20200930153519.7282-19-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=ZWHVVQcJ;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-19-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBRPEY75AKGQE2VT6BKA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF2825D2DC
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:52:38 +0200 (CEST)
Received: by mail-oo1-xc3b.google.com with SMTP id z2sf2538919ooj.0
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:52:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205957; cv=pass;
        d=google.com; s=arc-20160816;
        b=J0Cwl6L/jbGmdKLWwXjE8BaefedM/2Qm27E17NzRZZrs66mvO4+W17bZPQe8YN7Xcu
         SNA0Co9Iy2wVSCgqx3PFfi1wwuDqlDa99rMir7I9cGHgtqUu79n7rc8J/8UYZKI2ZMtN
         DUC+gQZtA7RfNeNrejEFEXfoF6JT3gMjXs6zgnOi3rUrWMY+68x8CMAOV3soPu2zev2Q
         9iljx3kQX3xT1lk09iW4omidLee4rLJsvW07Kcsu5Ey1knhKRNVEOz0FwEz+8E5XtiiU
         esT3mPxMpLCZc2xil7WIyb/L1Q1GeoK/a6mjmVnwIHfrpr6wg5ai1TjteaABqR4EJneH
         BM7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=mTNv0GfOMM0NixQ6e/dWRCgV740QuFuHevuIsSkuU04=;
        b=QDtn1XIP4itk196EOizTiamBTtcd1HCkVB39w8gxsTdCpag49+AeNbNeIsosRPA3/C
         bUYwwyLk/25yv/21bOOVSnEGPH0MuCvpvwO0ld7OMDkRkWFFOduBxvBL0oG2H4r4trsF
         ZVwK9coGaXgXcYZDD5CRlxppLcn3w02QR3sGh4D4h5nhxl0mGh+d6Zbyr2iDEhGxek0Y
         upeKbDOQxwrXfoGiwghFhIagDDt8yhPBbSqmi/YE1O0XGxmpUik1cfy22CJ8KTBzM5ih
         tPUrVRwGBxRt27WjgdTUpHb7myks/bB3NLxYUlbl6eET7z/8LytXSGdV6gzlqWlizfr6
         2YRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="I4nd6X/c";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mTNv0GfOMM0NixQ6e/dWRCgV740QuFuHevuIsSkuU04=;
        b=N4cqUn27tBczElnmIcqkJE4/pNThsSdHIyq+Oqbiuz3yzis+m+QXBZkWSHOVQ4cbvr
         gjIY0AmGtpswsM+K+MtJgtFHbt5qnNHJnJXAQ/pRpyQqAyNJiH3EmAdpWE27XlgfJQdh
         kIDBHcQKa4KnVoY/78uy0lmVxvbprXvmmxSrKzByMPECwXYzA5fqXM9RmYgHzB0+HpLk
         uiIsT9WOvFwOZj59Q+deY1oo1YeAuO9JkOUu79L22/xpfkDhFg2peJHmSVkqoAfpnCSC
         QMkFaF4APrSkAnueh8nsfhCZL/tsrGXcbtx+NuyIFMfzkZ8KGbTOTkKElxiUQdF7Pdmm
         2mlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mTNv0GfOMM0NixQ6e/dWRCgV740QuFuHevuIsSkuU04=;
        b=LtXD0KPQQA9SUvv40zFG3UfItjiFyxuCKYyYfvlikTWK/SFGYHYtG6I8HBToD0Wjw5
         fge5JfRWwGZ95ckvarSdP55TPef7QtUXYul1j+NkYcD86N+Z0yg33gAHsaS6nx/IT1w9
         VdzKclL7BCwLuySr9OJe5YyInXF7bUs5zCoFXsEmhpNHy+RuF/llvZ9pqYBmfHKc5iGH
         g4AsItGWPQICgnXfCH31xi02mIfXbvoktyOoDJBeTTQUDYvZwBzShHaIRzcoxCVbMRG7
         uL1fX6yldw0wcv/NqrWuj2xa/wIUBvDGROcLuhwhNJGaFhPmwO/3xWWgBBwNjClTHZd4
         B9TA==
X-Gm-Message-State: AOAM530phjR8NVL0/FnGODIUh8XTN9ure0A+6EHuaBdcarbnXzgzNy2M
	Ytm0G/EtfU7aCkbpDncmnmQ=
X-Google-Smtp-Source: ABdhPJwFJRvEt0o1ohLwmWW8qZEBKoEw37mt6SnnyUWKZXdFg2MFg94PDcP7Eb+T0ZLrS4+TemgXJg==
X-Received: by 2002:aca:b48b:: with SMTP id d133mr4718734oif.47.1599205957657;
        Fri, 04 Sep 2020 00:52:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:157:: with SMTP id j23ls2181079otp.1.gmail; Fri, 04
 Sep 2020 00:52:37 -0700 (PDT)
X-Received: by 2002:a9d:2f03:: with SMTP id h3mr4807715otb.151.1599205957345;
        Fri, 04 Sep 2020 00:52:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205957; cv=none;
        d=google.com; s=arc-20160816;
        b=UCTVq6sAM5Af0onLYg/jEZNBceKCH5wR717usV77hufIU1VXnZLG+Lc/B1eKGVhNma
         ZIzpeZtDrVXowaFqTb9bbeWu3cZvxVMJvvN+KzZV9CZ+cNp7UEeNHzHS58aKU1qiKq0F
         sJl46IbQWfhN0xb7Jt0UbRQ/2Lq6JnlQqgIp5gYEdaKLxYAhH16nAYsRh6UiMJUsjsXX
         ryBOdkzZqTaxn2i3cS4SznYYech7d9vBT6TI1pgcQBvCfNunb9tAfyy8/Lqf3QR8DvHp
         GJiF+L0X8GBmUE0UJ4jyjrtwAqlbTo7UWuysY2+1vJPBcyPWWFNhWbHz0ciq/09htttq
         Vk6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=94TXcOdDL8wb076LMtmQPWLg/sQvPhi/Wpb3J68VtqI=;
        b=bf9mljCnMSrOtpkELuSp4oC1mEaMTxIXWILHKaWRdNsPeIQG0zWbFaCbt0NgqPJY7s
         gkBIXgfwvUSg7UUKSpCseTOXApikdQuxOuaFumUv7B7gdDHAjh5F+zjyAsj6cJxxLmuC
         0rZ++hLTQO4qZrVlx4ew7BjmUruRgzKBezEg8oOaN51n9KsEm88u6Os9gTOSalauD263
         /fXYnToiVyOtnKQGTCo5/DNJITZtB+aDHPGUttu/tL5mfgoM9mmnxBg4F5zX1UMfbsQu
         jkm9HhlXmEGyMy6k8yv5AHrWcVD0m7GiNiYcrgSUk36RzJykkXdW3vDA6Pj4EpCy0Xjk
         6UKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="I4nd6X/c";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id i19si327794oie.3.2020.09.04.00.52.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:52:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847qU68065991;
	Fri, 4 Sep 2020 02:52:30 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847qUaI027390
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:52:30 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:52:30 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:52:30 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osNI058796;
	Fri, 4 Sep 2020 02:52:25 -0500
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
Subject: [PATCH v3 17/17] Documentation: PCI: Add userguide for PCI endpoint NTB function
Date: Fri, 4 Sep 2020 13:20:52 +0530
Message-ID: <20200904075052.8911-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="I4nd6X/c";       spf=pass
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
index 000000000000..2fbb0a051c3b
--- /dev/null
+++ b/Documentation/PCI/endpoint/pci-ntb-howto.rst
@@ -0,0 +1,160 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+======================
+PCI NTB EPF User Guide
+======================
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
+For implementing NTB functionality atleast two endpoint controller devices
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
+The user can configure the pci-epf-ntb device using configfs entry. In order
+to change the vendorid and the deviceid, the following
+commands can be used::
+
+	# echo 0x104c > functions/pci_epf_ntb/func1/vendorid
+	# echo 0xb00d > functions/pci_epf_ntb/func1/deviceid
+
+In-order to configure NTB specific attributes, a new sub-directory to func1
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
+Once the above step is completed, both the PCI endpoint controllers is ready to
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
+Note that the devices listed here correspond to the value populated in 1.4
+above::
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
+Netdev, NTB Ping Pong Test Client and NTB Tool Test Clientcan be used with NTB
+function device.
+
+For more information on NTB see
+Documentation/driver-api/ntb.rst
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-18-kishon%40ti.com.

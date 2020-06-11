Return-Path: <linux-ntb+bncBCOOP4VF5IDRBYWYRD3QKGQE7MGPGAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE121F68AC
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:06:43 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id m29sf4990028qkm.17
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:06:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880803; cv=pass;
        d=google.com; s=arc-20160816;
        b=T+yaZMjXTJ+oQuawG6MHs4Q9jING3OXdbpAgUfeXxRQ4ZSPm9GXcA7jV7gzA/EjOfP
         x8i+qphFNDMNXYzdx9d11N4PmAtX/DuTteGDj+FbWlTBnatEqnGXoR7hAQlPpIAwTcIo
         ZMm/ZRYpMX37tE4+M7jYOjqLyVG2OlGQtMzW8+BqJtGtkSdztkQUjeIguHTYrrV/wiJI
         /KXPch3h9/A9dnW8n71RNyBZoNUJGZ3jMHi2Z5UTOxtkDXJzAsN2Jby4pg9dRByf3hxy
         wuZ05tCR4dooGYRGt9hjJbDeKBj2Np448wQO0BYBMpZErOPmO43yUj8sZNPpJHzDM7Kf
         MWhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=+2lIDDG5BGNMNsMrZy7H7UcPYvIXgnzqN34j9e/Uqro=;
        b=kiWxDubnlq7LmOdj/HrN1B9L/L+Ttjoe8Qg0eBYoT0ob5AaaLr2xHDtPQM8Sc8vaHs
         5aZv8/z4LUTuvjzo+aFAw+mYqO3yQlYZnFtp1YCHP7b3iO3nINXG3VRMlp7+m/v0+BWY
         y8sIS953VX9NFL51szP0zZ/6DvlJ016bn27+V/Ks0lrpM4rLeM4MZCRNzA/6zRwsl3IS
         aJ20TNfmhyBO/PWvxy04ZoajuBg1IudaH+4xBu2PXPAAmr1wl3JpPIcq2WA45GeP/q6/
         3xn3EV64byU/1W4SKCr8ggaI/j2VIvEpJWRJTEqZhiZqKY8bIWpe+VKsL4i5hrP8l+tG
         Vrhg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Lk7WX+WM;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+2lIDDG5BGNMNsMrZy7H7UcPYvIXgnzqN34j9e/Uqro=;
        b=a1OKtw5A3cCmwfEzTXH8HTN9pyieIvmZOT2ZqmtWi7mTVKUEgGz5mSQuNxVnWzEZ7k
         MQYj0e8VT4DFISb3pfecp2L1Gl2X6vvlZoLXiC0kiyQljTu/TFN1PpYwbrFsg8EVjVBL
         c0lB/se3gmDi6tSoyJCwIUt1EH7TSBQnjjeceWxiiXdnTB6NrWqhCgpM7HNl+3kMJytM
         cV0AMfzQLXYfavQlxAXTdzNkt1tAVMB9s4NoY5F/7NoG0lgVoB10UYeyqKgke+BLoQHg
         UoIzREawOYSqesdtemvNz4pPSkq+7tTIB57e2ZoV5QLXcT4R1r/ZJGQVQ2gu+CDTgXPv
         IElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+2lIDDG5BGNMNsMrZy7H7UcPYvIXgnzqN34j9e/Uqro=;
        b=XGee2wwx0BaKp2PuiDiNalO+opWTMyHwffGIBHvxoJq9OfTPlG/afjfbD1LV7ovjnf
         EB1YQnESK8Q/UEkrSairucacGbhKebIsYwGO1duxkhHvB2SnhUkk0Ns6LkkHFW5mK9fw
         YYk52MYsuMmnX7JpdhgbezbpKZ70ghyZ6Q5qWHob4PalkguiAb1e+EEyoBQrnHcrwdmj
         6bU5QhYRPRsWzAAQElbACu4+hP7UOzcHKhi8Ti4qfKjt0WtwWqc1J3jW9v05BA6HPBDU
         B9x0PM1PfKv3Zelyoe81kLFE3Ed0kH/U1cVyLBAHkf+07PJ3yfNrVOM+JMMJXai8MTjz
         Ja2Q==
X-Gm-Message-State: AOAM5332UTJmmpUwQUOA5ML7USLA/3WTYzWoKEdOT8vx4nugtgXEbJgG
	YHGmOUqnORgEGBX01SmvAdQ=
X-Google-Smtp-Source: ABdhPJz5lay9WJYlYWcDDTxFA7RXr9Cgs+dWPReG7E6lwDKaCgkUbqGSJOBA4umcserHz4CIThXZeg==
X-Received: by 2002:ae9:e844:: with SMTP id a65mr8387402qkg.266.1591880802868;
        Thu, 11 Jun 2020 06:06:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:ac7:: with SMTP id 190ls993966qkk.0.gmail; Thu, 11 Jun
 2020 06:06:42 -0700 (PDT)
X-Received: by 2002:a05:620a:1406:: with SMTP id d6mr7909316qkj.386.1591880802431;
        Thu, 11 Jun 2020 06:06:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880802; cv=none;
        d=google.com; s=arc-20160816;
        b=Y5Z+BBhQveIHfLo21W/cVXypipDklYdWsB02k1dlpZNzgdvkgt5A8jcS0mk+Wef5ne
         bFLtgxmkDIWTbkcwjkWeWIEG/pOIJjkhC48CLYKi8zKiTF5yxAB/suX2G3BGudBp62IS
         pjde1rUbmhBNeJeEjjMKQ3xC2FCFw/9i4A4t9aDU9y+4e1y8VuVcod3gMmpKpCEkBpTO
         WyGBNcM4R+ek7WSeHG57iGKi3kKg65R4i1skq8NcqSkZRwlk4g2Et3stNOBsQIz78puN
         /MxiBk74HbFhZNosXOA0j57xfuTy5cF23UBD+CuMzb/+eRpb24RO6BXo9k9PXOrCtPeu
         /q3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=gIasfhB7kWsDgMz33iBPDD5XtaEwVi4iD+o+7fTFAb4=;
        b=wtBX8n+jDrmferlkHDoEkf277ATDoC+jU50K113hYWCk1NEYAWCGfjNNoMAiu+yvcH
         eL208N9EWfZaBNxgfqj1I93JLW7jEN0E5gUbb99HF3sboIkrW/JXbTXWJ5j3alqPyON2
         /c71jkv1ZzQOSVYFfb3CmwOVq+lFEV9GcXNdyBZ8Sc++AgsXICoEGtbNxRVrxHQznFhp
         woz3B3NNeOk9d1tgqOHyIc8iTb9djahhbabviLvqi0pSwav07A3KZNILoPnW/6MsnGDS
         RSYYK+dLmA4U6cFXlm8LIO7GXTQaEIRyvlZ2ag/SMSknK4w4wwG8zJsKFqy8Bi1ObZon
         BKsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Lk7WX+WM;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id y21si250515qka.2.2020.06.11.06.06.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:06:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD6Y4j085542;
	Thu, 11 Jun 2020 08:06:34 -0500
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05BD6YA8058925
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 08:06:34 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:06:33 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:06:33 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZF082585;
	Thu, 11 Jun 2020 08:06:29 -0500
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
Subject: [PATCH v2 14/14] Documentation: PCI: Add userguide for PCI endpoint NTB function
Date: Thu, 11 Jun 2020 18:35:25 +0530
Message-ID: <20200611130525.22746-15-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Lk7WX+WM;       spf=pass
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
---
 Documentation/PCI/endpoint/index.rst         |   1 +
 Documentation/PCI/endpoint/pci-ntb-howto.rst | 141 +++++++++++++++++++
 2 files changed, 142 insertions(+)
 create mode 100644 Documentation/PCI/endpoint/pci-ntb-howto.rst

diff --git a/Documentation/PCI/endpoint/index.rst b/Documentation/PCI/endpoint/index.rst
index ae6d25621058..74aa7e713299 100644
--- a/Documentation/PCI/endpoint/index.rst
+++ b/Documentation/PCI/endpoint/index.rst
@@ -12,3 +12,4 @@ PCI Endpoint Framework
    pci-test-function
    pci-test-howto
    pci-ntb-function
+   pci-ntb-howto
diff --git a/Documentation/PCI/endpoint/pci-ntb-howto.rst b/Documentation/PCI/endpoint/pci-ntb-howto.rst
new file mode 100644
index 000000000000..88a672c7d6ca
--- /dev/null
+++ b/Documentation/PCI/endpoint/pci-ntb-howto.rst
@@ -0,0 +1,141 @@
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
+to change the vendorid and the number of MSI interrupts device, the following
+commands can be used::
+
+	# echo 0x104c > functions/pci_epf_ntb/func1/vendorid
+	# echo 0xb00d > functions/pci_epf_ntb/func1/deviceid
+
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-15-kishon%40ti.com.

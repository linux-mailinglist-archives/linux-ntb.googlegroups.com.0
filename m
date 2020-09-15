Return-Path: <linux-ntb+bncBCOOP4VF5IDRBOEDQH5QKGQEUWZLARY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6BA269D1E
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:23:21 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id b13sf252952uas.9
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:23:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143800; cv=pass;
        d=google.com; s=arc-20160816;
        b=EZBihbgHjcZ+SQSSQxX+bLxl0RK174/NUgeYxQ1DhvYw8pnh7bv4u+zDGMzzMNUTRT
         R6dD9spICoHgMoGheSWq7BctM0szdNI9QoxviVB+8x7kDjs1JHRCX56jgyV0PlVPtc2+
         5AhbRYtxbYbSodNHpKLZKioFo1JTwtedZL2Z+yfkLN7bLQSStlcH66fhw0tmM7sYPSTT
         OsD9XWjFA1d7CnO7xf/YYNdeujbCvgXFx0ONTMwonEXn4yDR6umkHl3i+5IOjgpjlZnL
         /PNrEJqFc7Y06PvbCxfG+3Fq7hsjJn4IE8iaWCUM82ooh8WQaFMieisQVwwfUyrVpNKP
         DbSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=1ciTj36aV7Fr9bHCACTw2oZ8TdRYggrjg9AJMM55g2c=;
        b=CWZ0ZO3RVqomwDIraMLsl0Av6M+lvTtzielEkonu0OlMXEuROgr1f06ztwcY+xeUcr
         Fvf4atzw3/pg8I2xj1jWK1mnRGYNryZcddNvISm/+AnUX4koZ1eFDlv2iDPpvGtjcaKr
         otLmjjiyFydgXOi4qiwGAfCffquvyVW53f5tWsbo9TJoR8WZ1VjJQIOl4+KMNv3oU3FG
         xSeU4vYlLXlkAi6BJc88HZLe7N5DawUgxVXDw6m/vYY8wwx9DckGArKO0tHh0MtY/Ed7
         uKLy1PLEO/kGDeOPjbKcOeWWCg7AvME7R8pMUn6ZcsJxnwchGNE817tsT6TBHCOfhBMh
         OIJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=h1tUd5KM;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1ciTj36aV7Fr9bHCACTw2oZ8TdRYggrjg9AJMM55g2c=;
        b=LNd6qTkSAAj6Ivkz/fD/FMglfQxm91LQq8jfB7W4AH1qSUoXXmXXtQtrU7lA/+mQ3X
         UAjxDBP5uViNaWbCmDmxkpyHp/65xA6bF8QcpgpfcjSEVltZ5M9h1V1FJj+Nzrug3LNq
         PtWxi4EGFOMtZLbuLmt53FMW9OX7Xmhk+ffHOuGGJ/sdwVV3ecQXUjKMFC8OebshqKWB
         kM/FnEuOt8yKMY+pcMtXHOeh7R31YwFr42foeQ7KQpUxRdzFFaPFO7D2auwgd79ecb4/
         8p41lk4bE3cQS75TwhkVYVxKccRBJo6ABWnSLWhM+6OFAMPJf2Pz++aJGeHHEwGRrp0N
         5cfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1ciTj36aV7Fr9bHCACTw2oZ8TdRYggrjg9AJMM55g2c=;
        b=ezClh5gl/vph5oUDcycCM8+fJJS7/aV3hAz4/darjvWlW7wvyqnrnm6bQYyV2VqE7P
         qOAfmiRHaFUbzKAtWTwyYMKcbUro81JQ0j/L3OfU4Y56h2VAf2GrNPpkTyB+9mUnExfc
         lNJSJGaS0pnKQoPrqwlDkuLSlFX6oKWOTRUv0o1aPIuag2KUQvHYuOGjEfbSu5nOO5eI
         2alGYK047OlINB/ivbbi9RLs6FM6ByLvQx3QrffEH7hssog+pr203PSlgA4zMOGBX7tf
         n+MhVCgHD0avTU/HheSjo3M80HfZd54gI4IzeOp646mt/BF8wZWdwW6Zek0lDd3lTV2i
         L5Fw==
X-Gm-Message-State: AOAM532h4zxcN/skkugnS8gbzb0Wxh0fOsDjjY8WsVnsUYzh73gMj6h1
	smJNBEszHJdedPhREeiEfEM=
X-Google-Smtp-Source: ABdhPJypd2LRRyNLoqDflOI5Pt+aDpKKNcGDR2CEId/LX8R2hka+RQmHHpdJJPFjoXvGClMEIpKzEA==
X-Received: by 2002:a67:63c1:: with SMTP id x184mr54903vsb.48.1600143800829;
        Mon, 14 Sep 2020 21:23:20 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:2481:: with SMTP id k123ls573295vkk.4.gmail; Mon, 14 Sep
 2020 21:23:20 -0700 (PDT)
X-Received: by 2002:a1f:6e0e:: with SMTP id j14mr51145vkc.14.1600143800322;
        Mon, 14 Sep 2020 21:23:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143800; cv=none;
        d=google.com; s=arc-20160816;
        b=QlNU8X6qaeIoe7R3mCNH0DyTDK4yqyZ/mh6mv1BTos3acTfP4EM/mqj+MWZYU3sPFX
         PkhMt84r5VzdvgFwqpL6s3p8j7F6L+cMuNflOs+2mDB/q7vOl58bEOXxs5lZHCI+2vaD
         Exzvkg2mKiur86JhH/WYsF2PFxfu0Hw4Egh17MP6weKao0/bR6No7FAEpbUNtZWOUEP+
         FhzmeIm8nBrYuOntlkoTGDwmeusW5/xOwAJOzWDxoMlRGZB+e07BxDWqLeg+WLTH+r30
         5lYJsb2NZlEpsLqMp8z6t8CZmuvdU+zoyL8bExqDsh3WOVxHb++yjmx7xMYSRXOnMxc9
         mqPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=MzY9rnD924XkxaY7oxwQaSVbVUQpslPJTOfRRG0Q4ow=;
        b=O2/asWSMAQFL74BOShKotE7PcdStPlVcXJiEANI9vnYPFkpRVmeHDgDI3F5IW4wMo4
         80LGNjV1rKD7joRxumjuwSMYPGSQGueBYjN33noKlncwDu3bF3XCIEkEKho+tYwvhRWz
         7wHTvi05Go1VserOeiuLo0RjK3mzMo6ALt8MFoUg3l7rJEzxEQAlPsqyBRd6M05RNKGa
         E4ThUJMBwPNS0gLfl3+Owa8waZNEUqUgcOgKIg0FiX7THqoTYnSQb+GR6YHvbExlWmkx
         DiwwT4HbYL7vaycqfe8Y5Y1Dq+uO3y7f0uD4lWTPMJEeKK35FR8fZVW+98EIgThT7a2u
         vOww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=h1tUd5KM;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id h9si414315vsh.2.2020.09.14.21.23.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:23:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4NCao017552;
	Mon, 14 Sep 2020 23:23:12 -0500
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4NBTU059441
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:23:12 -0500
Received: from DLEE111.ent.ti.com (157.170.170.22) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:23:11 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:23:11 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMx028615;
	Mon, 14 Sep 2020 23:23:07 -0500
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
Subject: [PATCH v4 17/17] Documentation: PCI: Add userguide for PCI endpoint NTB function
Date: Tue, 15 Sep 2020 09:51:10 +0530
Message-ID: <20200915042110.3015-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=h1tUd5KM;       spf=pass
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
index 000000000000..e5194573f1a8
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
+Documentation/driver-api/ntb.rst
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-18-kishon%40ti.com.

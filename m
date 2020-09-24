Return-Path: <linux-ntb+bncBCOOP4VF5IDRBZOMWH5QKGQEIJ74ARY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9E0276D3C
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:27:02 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id n71sf2101074ild.5
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:27:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939621; cv=pass;
        d=google.com; s=arc-20160816;
        b=bujgExpAQMRA73yQmuVRHK88t4eH1YlFLoD1E7qoMG9MX3BnBCW/7MdLa1Daxyy2UX
         gzzT/3JwO9aSqxCNhq/GFXAL/HRzGChSSOnksbDiU0SkGFu6nxGyMSMnW1YstyjuAdDD
         upDZ7h83OiI3uCdjDJkRXHoiWzKnswYyT4FrRlcPLwlwJ93pcAiQBsDvyl0cWysYTNdQ
         AKfDD38Ck86elNtWZqqnJPdiJKQNhAKhFGCi3PkH4mprQ5wFXRKToZXrcnMoaSp4bCqZ
         5AXgeRff5/9D98PGL3CPwQh0/QsWzuckC3VigcKEsNIgGiyow6saKi++15AMsHm6iF48
         14ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=FL1qLBS88dhEuOU/w+2tLz/xvggfnlYGeLTKVTot0aw=;
        b=V7hZreg8RTah/su+fcCsaP4YTYOh3lrgG8A0bAuycu1nXVybdLW8ztoEJ5smbH/eKs
         yogQlunKZ6rKH77AXPiFpKsEVT2YkO57b2P7sFYhDd6bPcn9WPE9MzNGSBY3dBaJneGI
         q+QBwMC317fOUs8ehKNncgG10I9rJQ+glrozXfZdPHO4KJD3U/5dnloQoH65png85EQ7
         dxfxJCeHg+R6vJtk/h62D4Xpx80mM+cEbIVipcf1irHczDi2SuHFUsPICVC9VMy3Jywb
         6RsD20zrX4Fji0/DVlXhbPh6t/EDYTCqLFiI+ayEUcaJRG/Re3twpNm+eshHKv8ks3t5
         Mu6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vRCJsO7e;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FL1qLBS88dhEuOU/w+2tLz/xvggfnlYGeLTKVTot0aw=;
        b=AKsf+KP9KWFWFqz8mErq2qzhcHC0MuvbreOAbyytgy7EGkosFeFFZ0rxGiTjEf2uO6
         YGPgYd32wxsMiCLZkXzNZBUZV2BEuGM5GrtVeH6Otrf8JwF89x1RIuEPrMiPXj4TX5bv
         iW/CPKHnaiGGCdg3cWzKNanlxNxNKqDxr4IBZapfCLmgmz+ayi+6IMXekHMY5zgF/a9h
         DeQXEttKWdi9mDuciZuIXIubdZw6DjJJvMyEBmb08KRifApsy/e7cyolDZh1OvMcmawP
         MfLATFfC5f+RE0QlQdYr+4H6Y5saN/vW8uhLY9jAM4hX8JTVMMrHqNWESfZ+Fge/VECI
         6y+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FL1qLBS88dhEuOU/w+2tLz/xvggfnlYGeLTKVTot0aw=;
        b=I4Y49c3rlpRYuU74vssQyOqnJyg38eduqUMX6zpklt7H5qvLMPVOBYVIFkUdD5YRTJ
         1/vjo04ZFOeuSaI/yoZgjojr1YYJkL6YTpOT0QcVHu2lMepJ/EvnBEz+TJYpMRE6wL9D
         fRu+2s/6qS03Z3LmXQKmv0/IL73rE6sYgnhSmjCDXGaUTInI8+OoBmssaCGhXKwxQxpT
         QYSwQmH+eCoUOvTB7LOghUyJca/Jp1mJbcdapRYNf88E7x8qiNT1Xd5lVmHZvZduzJxX
         3I9OawAfvNdCQO5BaSsKp9BFXWtiwW0ewowSG3925n5y4/0PUjuW0cRAilLnYptD60eW
         X9Zg==
X-Gm-Message-State: AOAM5311dTP/cgnmiTMX9J1UXzBFjXc042aWuP+yrEIZYjQZBhkD7NMk
	sOR/Fn2c8dXsWkPk8KzYcBI=
X-Google-Smtp-Source: ABdhPJwNXZP2avOE3zDvHmaKCJ1VrtekqfB37F9zzTaUM9fyJkCne7Hos3PqXmtjTS/6B7X/NAo0iw==
X-Received: by 2002:a05:6e02:1206:: with SMTP id a6mr3397368ilq.108.1600939621568;
        Thu, 24 Sep 2020 02:27:01 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:5807:: with SMTP id m7ls664616ilb.3.gmail; Thu, 24 Sep
 2020 02:27:01 -0700 (PDT)
X-Received: by 2002:a05:6e02:bd4:: with SMTP id c20mr3292284ilu.138.1600939621277;
        Thu, 24 Sep 2020 02:27:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939621; cv=none;
        d=google.com; s=arc-20160816;
        b=DVNi1ReX5GHaNSFCaRQ5I45cWZ4Itj3JPbHfbRqJAgLocd525dk8Ke4r52noN0J9YS
         rdNhaUsg3TR3eT507MUge2rptNjslPa8EzVnpI/9Tp5m+pJeN77uReZkqMn5bFToEjxB
         cV7Ezlkd2Tw4/HBQiWW6VV9QyQu+AWES4NzO1DgwnrA+zEwL6zOykhiZaEh8Oo7PyJdH
         657jv8YhquYjC5ZiR7QJIPjOohGAXmvSSuO9RAvpZVUD75YnRqPji4UUWSefqhdoBkT5
         SVqxuCX23PHKYlriN3R0pJG5H7zuiUm7lYSSf7B4CNXjleYdLS/vq+fCz9pwI+Oa3cVf
         bXOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=4Fz6/znawPVT5Re4ej/ysxXwiAWhNVKJ7aypY2BXCzQ=;
        b=sH2/L2r8TrMolyqw/0QgOtLDlLBfp9NN3c7I8yMssDz0aplKk5QLOGmi8fDdiZCWfb
         0felsa2Bsd8JFzh8MjQD8Micti5millprNfWmh/1ng+s+5dUghHh5SdUSL2KpVQJQDjM
         fx4ffo0NfCIQgNUFBIN0VasbZgXUfAwO29g7T+v00tmZFZgCGeeTolRVCz6RBroLe4sr
         tj/TUk+nMIL6+Dp77XHLRc1XGM8Ig2GyQprkybdN+QnPQKcWF5ptB0E3ULgf5l1dv5jY
         7HXoCq9FP1EVibB0LH+R4YyulfupnRTZwCxvKG5fMjvc75/VT2qAYH+kmmWJLhP0Q3J3
         OT0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vRCJsO7e;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id n86si202291ild.4.2020.09.24.02.27.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:27:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9QsgZ117851;
	Thu, 24 Sep 2020 04:26:54 -0500
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9Qspg036981
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:26:54 -0500
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:26:54 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:26:54 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POZ6011000;
	Thu, 24 Sep 2020 04:26:49 -0500
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
Subject: [PATCH v6 17/17] Documentation: PCI: Add userguide for PCI endpoint NTB function
Date: Thu, 24 Sep 2020 14:55:19 +0530
Message-ID: <20200924092519.17082-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=vRCJsO7e;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-18-kishon%40ti.com.

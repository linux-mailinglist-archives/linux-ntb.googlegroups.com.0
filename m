Return-Path: <linux-ntb+bncBCOOP4VF5IDRBPN34GAAMGQEKIU2QCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF2030B10F
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:59:58 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id v25sf12727204ioj.15
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:59:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209597; cv=pass;
        d=google.com; s=arc-20160816;
        b=a+AhOkwouI6ynDUvzUNsqpel5JPdQDsm8NQZ+NX/SE3algPv/vHMfz7DRgqRSIcvlW
         pdzdrSCjC3O3yB43r/rda3MU1cXpISxhwPzqQ16OO28UQdcS9LVV0IpFwDVEEssAY0wv
         aK654Nb6NKMiD8WaD8uzuXX1AG6dM8MavW1VscfW9e4B6/NcbNfc2gvu0LWhKCVSZydS
         uCkRCMbVDnY2AmcuBGvWk5qqQqSpvwC0qoc/RgxhPkZd4e5jhPW1tMq9JEd4RMSJoTgU
         sgAPQSasAgkkBUocYPZxBMOijybhVSoCOmP+V6wR0EcCf1nuh80HEEHY2v9WnmzoKxfF
         Fllw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=HOI6PJ+ROVv5GPjDZmTia4GtBXr3Hgyzk7PAyLfFXus=;
        b=M1qKnSsaxag8tF8kQQfNkTr6w92PLAYoFCaOBk7zG8iKDHmxIdZvCZwhYz69LrtGqp
         Moi9WaQAoVWTP0DBIb5sTTBdfT5dHqCWrTWp/mNJv9cOUQTwaultw2einqS+UdnPsT4U
         0L8B+QSlGuh+eE3pE9cDMX09eHJRa+DhOn4Rw7TGDzzwUsOqadqD2pbn6/mF0ATKH4zu
         c9wbKoNivvAV+Wl+HkrCH9TRqrV/+XobRfNcuwP/WYndlwJ1YbWHpAyMaHCSypCJPgvM
         o6iCNqqsuMqx2CpJDdm6hGprJuibCoeWU5WH4PSsd2yECNZn1+vdk//7JQ/+7rZHobCs
         YhTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=k5GVlay2;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HOI6PJ+ROVv5GPjDZmTia4GtBXr3Hgyzk7PAyLfFXus=;
        b=buvomo9trGQyoyyy6StYI2G4ad2igoKiiiYYms7bhauw2vHr/3KmG+bplTtg11Z5x2
         wyiP7IdrhRB9G9/qGBM02bXYi0nMrOXN5S9TP9hJKtN12IvR8jciPx4b8V2pCF9yzsp+
         2KOTAQ8YxFYyYwt2LYaMTNMMBu5rb2sWSp3GpxgfY0lDw8qMm1gti3+H6/CQdyrmkxFA
         5Kh1n7RK5kp5fvtMyGMP1IdI7yuEj9+sezYUXbX+Kwx+l2p/xbO6ZByuaq4fErPLlOJb
         iau2xpBeN+aVCDz7LozBl/XbGl4qkSgwuBtmU0/bZ0it+GctUbU1I2ohGgLrKgX9GnRA
         Lh6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HOI6PJ+ROVv5GPjDZmTia4GtBXr3Hgyzk7PAyLfFXus=;
        b=Az2613EmEdyV8xm3ernOrYd8wyJcdvlpD7WzLkFVrCKM82ZY3O3+bU1wyBl5kMOTku
         lzPgwn7+qI9B4AtwNLcUdiajSEIJnoQZR9Y0GblKP6eFvQ3HIMKtomZkcSnaMu1eGhAz
         fpwpyaNc58Ss/cAKnTvkRD7tK1S9mf3dnN8pxEetJvF6TcwQHKSksnkXdHPMW3L4Gqx8
         McAz3FOwxXMiQrDML9HkdZXEak7S+A6gauEszRfoZ4loeedHabgLbkhttisCyGhK/puy
         PDIPH5GjN86xAeyytOzdwVkSEkKToSwpzLpQn9GYdrs1EuP9fBY50f7QO/HaX2nLtJ5X
         VcrA==
X-Gm-Message-State: AOAM530XaCrcBV26xzDOA4E1KWhlkLKiz3Y2d01R3uIxDeZkj1dDPfMP
	ld2GpFT0xFucfvWRBg9fawQ=
X-Google-Smtp-Source: ABdhPJyQKATK1hzHYt7z/IQc72juwRo0ipZqAWWW2kXeILCeiAO9SZjXMfH53LHi8/UWn3OdUdpcrg==
X-Received: by 2002:a5e:9612:: with SMTP id a18mr13559955ioq.13.1612209597321;
        Mon, 01 Feb 2021 11:59:57 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls2542676iot.1.gmail; Mon, 01 Feb
 2021 11:59:57 -0800 (PST)
X-Received: by 2002:a5d:940d:: with SMTP id v13mr13753741ion.193.1612209596970;
        Mon, 01 Feb 2021 11:59:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209596; cv=none;
        d=google.com; s=arc-20160816;
        b=vC2Tak98I0R27DV0J6PRo8kDrnkOmAulVtA4JbVwaCVKDKCikn4byGy/koq+LcbqaX
         nizxLHLuJJUss0kbi+REvGFpznZ/QjcECz2UlN0ydFhvOk7zEYY32KxfEDe6meVYDFVN
         FRO9PjaPdaLG2DjQYbUlczcvkwNOd1LIzs0Qf7oJrwQXKB+dPlq+bjOHiKRqumt1AoNp
         ophvFz2svlcKGjbIJaQ8fbMAFT+I2tSJ8V13H4uDYUGv6FzLSGH70iBjRZxZs6GSCjyn
         nMAlo1w/3O4i4ZScQw+r7/wkfZFJcvLEE1L3UD/rFLXVsge/fqQjac7cii3oP8JRb5zI
         tdhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=cy3YI0j7jgYLS3zYPT4KX3+IbsOlaRkg+3s1uwMt/SU=;
        b=kBJYgJ3QL1t3DkQdOymiPCxL38pj+mK04aoJ+8VqkT8niJEhqUi/UlmM//pzM3q5pW
         LVIlb4e44npYaIWcVx/J9VCEQW0RGC6Ma2KOxgPLOQ2qUp6+t1F5Vgpk7wdM/8XQYaez
         S69pVTICq4+KF3FIB9va9Z0CM5KG3dCCTR3F9Cpjvnu3hLtGALCcILOSEnSWM4ZclrIv
         jtJuqaqGuRMlEa02it8BWaiNQcjq9MJJms2tvjAQf9A8SRYAICg6TUBkwmm3qMVXK2PT
         gSC5EWR8hvK/JIn7NrLVDo5NYMdkbS1HORjm5B4Quv57eG/iGi7HwGy4xX3VE6xX3KQ9
         7fQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=k5GVlay2;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id v81si847472iod.4.2021.02.01.11.59.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:59:56 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111Jxo4P024272;
	Mon, 1 Feb 2021 13:59:50 -0600
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111JxoX0043472
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:59:50 -0600
Received: from DFLE114.ent.ti.com (10.64.6.35) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:59:50 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:59:50 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQo085814;
	Mon, 1 Feb 2021 13:59:45 -0600
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
Subject: [PATCH v11 17/17] Documentation: PCI: Add userguide for PCI endpoint NTB function
Date: Tue, 2 Feb 2021 01:28:09 +0530
Message-ID: <20210201195809.7342-18-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=k5GVlay2;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-18-kishon%40ti.com.

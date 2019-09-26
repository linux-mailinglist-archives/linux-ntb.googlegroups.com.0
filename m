Return-Path: <linux-ntb+bncBCOOP4VF5IDRB3GCWLWAKGQEET77GKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 175ADBF157
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:30:54 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id b204sf1538030pfb.11
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:30:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497452; cv=pass;
        d=google.com; s=arc-20160816;
        b=XLH06eXHgf81UbifnnWXvnMG+KvqevLGG9T/IJmRfMrwwA8M46DTSwS8Z6c5onQqYX
         sPwfIkvBFnwGQRjS3+4OAUcdP/bEveTiPzAa2LZfWEE9cAzadDjcEgahXTlU8zqdiVOp
         PYPc70ePenCu0vnFEEnsgNRIyhWbaH3ZCCl+gSiGQBxxR8nnUVrGULDuJ6gFFRPetY0z
         UHSkqKbDfrVrfNGx5hssQu8wGCsOAOr/gzS5LuO+7W8OheqD3bRNE06hdRXckWbZNXyD
         aN2cP5dMkEiHbEdmjoyKRt/bWWDDGUBz2yj39XfPQDuBYsE5drNqGk99xi3xC2z+O3Df
         YdGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=xxgYoJ/gyYn5GiVeluXOrLtMAvdLYuqpwV9PtsvKscY=;
        b=kRO5PKF5cVPSXmDckOz60WQXHz0LmvZCvxGwtYaQ+mlfHMahLWLvH6nWF1tJJ6gXs/
         7urMIgf9VabzbG3v8f7NlkW+qnra/ZgngPoRQhWa030XrOOwD669GlTVWbvZNcj8IKJD
         YWFIiPravqqiYUk81/VM1k8V6SpBSHuVxMleKWBG5u7KuaT7BHa2hCrudS82IPZPsDYL
         0MTFT38sRN/4i0LfQkS3iP1RwtKBfF4sB1zDI0iElqZz+Cj+yWL7/uTUk/ga/IVxbRfK
         4MMom0/QSywWa3VN7Xn9QtA/cwRcRVUfIBSQBVgW9CjDeiPF+zvNxDyqIw4onJVfYRNV
         UTmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TI7jM4Nw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xxgYoJ/gyYn5GiVeluXOrLtMAvdLYuqpwV9PtsvKscY=;
        b=GU/MLGklbQrB7q/crr3aOmDdZ9OEsB3nr9DUXzFn3MZyxOnXVCl/G+GuxBQ3J4blNg
         HHO4xvNNTeGIEFaXh9wrJs4KTvKjDAkdgl2afgUvxXNGYkRlizlAWV0dtVBwvWIdYKDG
         W+z1Q8+xLRcUogREA5o9Ic2U75hHvHYQzoWxr2LfEsWtymTqLOjns5AXO41efILVSSwq
         tPcfG7IugCalA3xuuvLHRi02tgvTtCv5PvxUT2VWkwfmaaz9RbNybxi2xeks4QkIs+hx
         sMb80h28C7OeT4oCwLq3aLNyxoesUhF1QimmMP/YFlGONl05OS3PoMPbQdv8oCTpGcHg
         QeRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xxgYoJ/gyYn5GiVeluXOrLtMAvdLYuqpwV9PtsvKscY=;
        b=oA2PJ/WAz75fq57BMFDFp5UeNgracl3Axz3zineNXTNm1FHrXn492WmKa/a7vuY6rE
         6DeZ7tH8OKHZPvyzWrt2s3LQRO3075QJykVqUVfLOkpHvNW2zMQzfa0v3TOMgHwX2w/I
         mgtGtYJKUQY9/WAVaRd46u4SmNqwtu0JDnOoR95lfHgdidsmbayFQUsLzW7G0FJSi0Ix
         M4CvhyXGpTW8s9Iz0gRQkPe4HqYbN3MpPiXrYctmNEU5aX4UDDvDQDC9fUTxIox9Gjt8
         sRj0+HOLH9byQe+KSrvuemwRisx6ylJEuFw7CmWipjZYjyA6/P5UgDFw9oN7diPsjfsC
         8EtA==
X-Gm-Message-State: APjAAAXYf4H/q7P9FXPc0GTY7uilDex/UUkqGnXd+GlFpTGvU3roWSll
	bqC18eN9K36qHA/dEztlcu4=
X-Google-Smtp-Source: APXvYqxBPgZxe/ssv3QXfhpCp9NnsTqlJfW3ezaq295uzv02l+gtEQrSw39DU1JXLPuYVKwwfkFeTQ==
X-Received: by 2002:a63:d010:: with SMTP id z16mr2874596pgf.327.1569497452504;
        Thu, 26 Sep 2019 04:30:52 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:63c6:: with SMTP id n6ls520518pgv.10.gmail; Thu, 26 Sep
 2019 04:30:52 -0700 (PDT)
X-Received: by 2002:a62:32c5:: with SMTP id y188mr3017082pfy.97.1569497452190;
        Thu, 26 Sep 2019 04:30:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497452; cv=none;
        d=google.com; s=arc-20160816;
        b=zlXKPrAQNnhfMxBRmc5fnpQMenYzxhLGKk5Z7+BW0dzWT6aGcV/1+ofaX6Ib2NNjOS
         Lzb90lvrK49kOSTjZucXB7y4b/3HW/Ad7+dQHwWZji8eLlQvx18PtT5y9NcQvGaj5sqr
         P/A98MM2BBqb+A4n86g4YAoxwp5/UiMQgvD3gl0TQV/Z2sQdRAIBjlqEr522NOShCq+9
         K4KROTldafYEfEI7w5IRQ22U3Sfl0+iaqZ9HkZzbU9o1vgE+4pYtLFpFG4H9ZFi82oGd
         71e05AzQThs5wu8AbZWYjc1XBDO3pG+haoG9Ojbdgf94hHHNkbWK1bmbV84s24gN5X5e
         nCiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=kAwPRxdL1IzoZOayvlUYSsrr9LV2V6bEEofoVpSjJg8=;
        b=kNwr1a4qfQWNybjKgKWGudi7N4HPctytuMNH51G9gi/6bEiFkF9qEWjdYaTgBZ+TjM
         WxsNnN0kL4PwH6NxpG3jUewdYvKHpmPInjpERajqVmprDLucrFrJDvJMvKcg0s666pfd
         8vALV0al/i/r2E3x/bQ5IQhb0bnP/AnOI9+z80nQa2Pv/sXx9OL2rNMFcuGGutc4K7VH
         tQa4Ia1yZ04JiAyD4/Kvf77n/5F/wpclX7h8QmfxWy315opcoD1TtISmFEawW6cU8+In
         4joSJbXNEcqS9ZZqqV3jtz5ODnD7EpEwQ2T3oeqVfmpy/phlJ3yKzWZdrOArNGxzeGV8
         gpGg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TI7jM4Nw;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id g12si116271plm.2.2019.09.26.04.30.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:30:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUkYQ025811;
	Thu, 26 Sep 2019 06:30:46 -0500
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUkLZ013299;
	Thu, 26 Sep 2019 06:30:46 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:30:46 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:30:46 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTju069017;
	Thu, 26 Sep 2019 06:30:42 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Rob
 Herring <robh+dt@kernel.org>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>
CC: Mark Rutland <mark.rutland@arm.com>, <kishon@ti.com>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-ntb@googlegroups.com>
Subject: [RFC PATCH 03/21] dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF NTB Device
Date: Thu, 26 Sep 2019 16:59:15 +0530
Message-ID: <20190926112933.8922-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=TI7jM4Nw;       spf=pass
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

Add device tree bindings for PCI endpoint NTB function device.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../bindings/pci/endpoint/pci-epf-ntb.txt     | 31 +++++++++++++++++++
 1 file changed, 31 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.txt

diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.txt b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.txt
new file mode 100644
index 000000000000..e7896932423e
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.txt
@@ -0,0 +1,31 @@
+PCI Endpoint NTB Function Device
+
+This describes the bindings to be used when a NTB device has to be
+exposed to the remote host over PCIe.
+
+Required Properties:
+ - compatible: Should be "pci-epf-ntb"
+ - epcs: As defined in generic pci-epf bindings defined in pci-epf.txt
+ - epc-names: As defined in generic pci-epf bindings defined in pci-epf.txt
+ - vendor-id: As defined in generic pci-epf bindings defined in pci-epf.txt
+ - device-id: As defined in generic pci-epf bindings defined in pci-epf.txt
+ - num-mws: Specify the number of memory windows. Should not be more than 4.
+ - mws-size: List of 'num-mws' entries containing size of each memory window.
+
+Optional Properties:
+ - spad-count: Specify the number of scratchpad registers to be supported
+ - db-count: Specify the number of doorbell interrupts to be supported. Must
+	     not be greater than 32.
+
+Example:
+Following is an example of NTB device exposed to the remote host.
+
+ntb {
+	compatible = "pci-epf-ntb";
+	epcs = <&pcie0_ep>, <&pcie1_ep>;
+	epc-names = "primary", "secondary";
+	vendor-id = /bits/ 16 <0x104c>;
+	device-id = /bits/ 16 <0xb00d>;
+	num-mws = <4>;
+	mws-size = <0x100000>, <0x100000>, <0x100000>, <0x100000>;
+};
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-4-kishon%40ti.com.

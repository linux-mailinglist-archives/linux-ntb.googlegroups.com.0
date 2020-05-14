Return-Path: <linux-ntb+bncBCOOP4VF5IDRB4NZ6X2QKGQEVLDRZKQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E811D33D1
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:00:03 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id y22sf2850426pfb.20
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:00:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468402; cv=pass;
        d=google.com; s=arc-20160816;
        b=bHHTk/tBbYsB7SoqDR3ibM7hrOHYkxRoNifF2FvKDBYEETgYDzqdi+/6ledG01fQdQ
         z4gOOgKUfm3kMR/XP60jpqMPYGf5fMr0s9kM0TJzt1dtVvwJIrpWwP42JZaZsuMA9kxI
         kwlNbaJXOot07cA++wgbfaPiaPjuUEnwPZbKCz0rLTRMEfjW1uiPcoltPAI5YF3ycER1
         r55GmMAwjzqF9WgOqEyiOg+oGkAoqOJIvF/7vJIMRAg4TdKVBuP+CVR/DlkevEXrTGX/
         eQy1lRVvzPhBqxGEZJRZtbNCcgxmIJJgmHFVxpSLZb1uHXdKe+NHu5J8CxwXCavfztBq
         VFAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=O6msF2lhunHz7hEQ1/QvazIIBAczcKQfiCYaophdljc=;
        b=nPJ4RWh0puP95Byw1QSMQm6TUTS5Jh9h07eM/4iB6TUn4HA1w3bcFnDN9vWWAoIgNZ
         DMUrpho9pCySwK2wgc2IzNs2T0q656N2/F3L2vg9R9VxhpnaYDg1vw7ac6l0sfCyjJqP
         dWcdlzv92VNMfgIvk3amTTTLqjNlIyIiFnTJvm6rst4lnT4S9xuuM1U8ouP2fxxxJB2F
         WJLP+uXtWkjK2hZvcNEWgOtChEXbBTff0jUa/Mr1HDWGKGqzfkoLoS8aMizByxreinCT
         uRx+lmUygFHyULWvTYE5ZWAfbVLqEtQqSxZAuMaAwC9pK6gGIe9mZrtwHJeRShFePFQX
         NO+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="X/Wl4Vbp";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O6msF2lhunHz7hEQ1/QvazIIBAczcKQfiCYaophdljc=;
        b=A/v+Q86LPcroKjspdbvM8grFnjj5qXIIYQtVHqKVBRHiQITWVJbvPL1BSU6vXrs9v6
         DTea0XptAd3iZXji97MsG4VoX0pO2c3+8I4apcG03xiPf2T5jUOAwRqwAQr9Un0tk0Eb
         ULdY2Nyf5fgq4IZfkRmCH9vbZ0yG3sH3/wFRF4Jj828Fw9BhiSim9iCqtPvXeuwWkx5r
         pkGxvXOWVPXNmkwAkv7Y/wpjebad9vWCJRqn8Q7RQp2rLS1J9MYSOer8QXF3tjZFBj+0
         BM3RF0c0fsv1bgC69++geO0vKFkVB61+CcEe1bXYi5AXMix41KNGhxtDJjrf6uyvNivS
         sZAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=O6msF2lhunHz7hEQ1/QvazIIBAczcKQfiCYaophdljc=;
        b=umrO73HVvSZMpF2awAFG70gPBELT2jxNIRzOHwOZmr8IhtfnbnXv+ad1O+4z2U1dS2
         bqzssUQVNYFrwDHlSckbrzII16YU6g70vMsw6DaJ+ug0byrmDx+jVHURn3sisQPY6URI
         m026Ho/ptmFziIN1N0M4MTCBDDepBy+TNT5ih5df3RfcTHyLM2msxzniUnnlQvFFvA6a
         EmEoHaelstzDJWsWw5cXQXusFwpJR0kM/UInwKasHTpPl5mSwd9NxQSBocjgP0hrUYzM
         KmsO8/6RFcowXNMDomPpR3C4mjD31kU/iCoS9xxHfTFDwcxiFTRXBD4AMc+uFic00MPR
         58MQ==
X-Gm-Message-State: AOAM5300V/jD4SxrTsnnUjMfuqYbpPFq4ixpCDdyyY9hWQyQolp6slJl
	qZNjkM/VFhBl2zDSwlqASGg=
X-Google-Smtp-Source: ABdhPJz2z1vWQmMcRYap2KqMA9WqjFw71LPKVcn/oO2xxVv1YfRPWFMqBk24S/9NLnqBXWcgZAdRLQ==
X-Received: by 2002:a05:6a00:c8:: with SMTP id e8mr4766509pfj.206.1589468402006;
        Thu, 14 May 2020 08:00:02 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:3543:: with SMTP id lt3ls2878727pjb.3.gmail; Thu, 14
 May 2020 08:00:01 -0700 (PDT)
X-Received: by 2002:a17:902:8303:: with SMTP id bd3mr4494786plb.217.1589468401606;
        Thu, 14 May 2020 08:00:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468401; cv=none;
        d=google.com; s=arc-20160816;
        b=qPOr5kUwBQgU7z2YqJmcoW0GpmND4fTulxugB8CawvKGAxERRAs+fRZ9X4ec1WuGHm
         I4zuDX0CHNTms3KHB2oJJoDmUMSOq+/Thz/SQeNs2RPsU/DU+J/iVjVkbr4TbiFp6I1G
         ajOLZ2a+WuyNAPSKJcEYFJ6v9URKCzfHhYOxn8rXDqJgRfEfzP//MCnzjU8yTJt/tVpL
         WvM8gGnePDGrY8hvSOQt3rgBgAG3qOn7dqWMibO69BM03C0RMLJUIxEfa/TNouKJlqse
         gZv7TF1u1vGsmsECr11pzBoMgLTcTHC7+jd2LHiYivRgGMPEQwPoc+O2ZiEnte0fOktg
         HdNQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=Z+gfjunEdb+MDsFcXFEi3ESnDkoKrmf88fLI5DaHYFs=;
        b=o4QObZdRuaDdcByYr0atS4HdIPfeo29GYnamw4eDGMND5KpO3iatJIUL64Yy1p56xf
         jHUNmsQtMjXPTRoU2nb9NE+694LsOVElfiSoUbscCQHhvGbhrCqGoIsynYivPfvwh6Yc
         EOiZ0VeeFeotctn2iqb7K60afFq9bnQkqUi3fJDbXNavvEKuAq9SMCQ7ZdaqH5NQj9Rn
         tHaVFDmRMn/5TsWT9+ImvX2AckGikUruf5fomC2JdlMSJ0mf8lG3d1jETswEyJ09LYMB
         NORoIIfags9sAPa3PZS3TplmXmP79aLWiKfOJpqcYFcjdEotC/KQ5YqeRiISrKpjYIUY
         zdIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="X/Wl4Vbp";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id c14si322700pfr.6.2020.05.14.08.00.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:00:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EExqYf028904;
	Thu, 14 May 2020 09:59:52 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EExqUd117212
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 09:59:52 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 09:59:51 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 09:59:51 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAj019279;
	Thu, 14 May 2020 09:59:47 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann
	<arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Tom Joseph
	<tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring
	<robh+dt@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet
	<corbet@lwn.net>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 01/19] dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF NTB Device
Date: Thu, 14 May 2020 20:29:09 +0530
Message-ID: <20200514145927.17555-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="X/Wl4Vbp";       spf=pass
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

Add device tree schema for PCI endpoint function bus to which
endpoint function devices should be attached. Then add device tree
schema for PCI endpoint function device to include bindings thats
generic to all endpoint functions. Finally add device tree schema
for PCI endpoint NTB function device by including the generic
device tree schema for PCIe endpoint function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../bindings/pci/endpoint/pci-epf-bus.yaml    | 42 +++++++++++
 .../bindings/pci/endpoint/pci-epf-device.yaml | 69 +++++++++++++++++++
 .../bindings/pci/endpoint/pci-epf-ntb.yaml    | 68 ++++++++++++++++++
 3 files changed, 179 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.yaml
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml

diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.yaml b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.yaml
new file mode 100644
index 000000000000..1c504f2e85e4
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/endpoint/pci-epf-bus.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: PCI Endpoint Function Bus
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+properties:
+  compatible:
+    const: pci-epf-bus
+
+patternProperties:
+  "^func@[0-9a-f]+$":
+    type: object
+    description: |
+      PCI Endpoint Function Bus node should have subnodes for each of
+      the implemented endpoint function. It should follow the bindings
+      specified for endpoint function in
+      Documentation/devicetree/bindings/pci/endpoint/
+
+examples:
+  - |
+    epf_bus {
+      compatible = "pci-epf-bus";
+
+      func@0 {
+        compatible = "pci-epf-ntb";
+        epcs = <&pcie0_ep>, <&pcie1_ep>;
+        epc-names = "primary", "secondary";
+        reg = <0>;
+        epf,vendor-id = /bits/ 16 <0x104c>;
+        epf,device-id = /bits/ 16 <0xb00d>;
+        num-mws = <4>;
+        mws-size = <0x0 0x100000>, <0x0 0x100000>, <0x0 0x100000>, <0x0 0x100000>;
+      };
+    };
+...
diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.yaml b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.yaml
new file mode 100644
index 000000000000..cee72864c8ca
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.yaml
@@ -0,0 +1,69 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/endpoint/pci-epf-device.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: PCI Endpoint Function Device
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+properties:
+  compatible:
+    const: pci-epf-bus
+
+properties:
+  $nodename:
+    pattern: "^func@"
+
+  epcs:
+    description:
+      Phandle to the endpoint controller device. Should have "2" entries for
+      NTB endpoint function and "1" entry for others.
+    minItems: 1
+    maxItems: 2
+
+  epc-names:
+    description:
+      Must contain an entry for each entry in "epcs" when "epcs" have more than
+      one entry.
+
+  reg:
+    maxItems: 0
+    description: Must contain the index number of the function.
+
+  epf,vendor-id:
+    description:
+      The PCI vendor ID
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint16
+
+  epf,device-id:
+    description:
+      The PCI device ID
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint16
+
+  epf,baseclass-code:
+    description: Code to classify the type of operation the function performs
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint8
+
+  epf,subclass-code:
+    description:
+      Specifies a base class sub-class, which identifies more specifically the
+      operation of the Function
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint8
+
+  epf,subsys-vendor-id:
+    description: Code to identify vendor of the add-in card or subsystem
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint16
+
+  epf,subsys-id:
+    description: Code to specify an id that is specific to a vendor
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint16
diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml
new file mode 100644
index 000000000000..92c2e522b9e5
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml
@@ -0,0 +1,68 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/pci/endpoint/pci-epf-ntb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: PCI Endpoint NTB Function Device
+
+maintainers:
+  - Kishon Vijay Abraham I <kishon@ti.com>
+
+allOf:
+  - $ref: "pci-epf-device.yaml#"
+
+properties:
+  compatible:
+    const: pci-epf-ntb
+
+  epcs:
+    minItems: 2
+    maxItems: 2
+
+  epc-names:
+    items:
+      - const: primary
+      - const: secondary
+
+  num-mws:
+    description:
+      Specify the number of memory windows
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint8
+    minimum: 1
+    maximum: 4
+
+  mws-size:
+    description:
+      List of 'num-mws' entries containing size of each memory window.
+    minItems: 1
+    maxItems: 4
+
+required:
+  - compatible
+  - epcs
+  - epc-names
+  - epf,vendor-id
+  - epf,device-id
+  - num-mws
+  - mws-size
+
+examples:
+  - |
+    epf_bus {
+      compatible = "pci-epf-bus";
+
+      func@0 {
+        compatible = "pci-epf-ntb";
+        reg = <0>;
+        epcs = <&pcie0_ep>, <&pcie1_ep>;
+        epc-names = "primary", "secondary";
+        epf,vendor-id = /bits/ 16 <0x104c>;
+        epf,device-id = /bits/ 16 <0xb00d>;
+        num-mws = <4>;
+        mws-size = <0x0 0x100000>, <0x0 0x100000>, <0x0 0x100000>, <0x0 0x100000>;
+      };
+    };
+...
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-2-kishon%40ti.com.

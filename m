Return-Path: <linux-ntb+bncBCOOP4VF5IDRB6WRTX3AKGQENNAP66I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id DECC11DDF80
	for <lists+linux-ntb@lfdr.de>; Fri, 22 May 2020 07:54:03 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id s199sf2918474vkd.5
        for <lists+linux-ntb@lfdr.de>; Thu, 21 May 2020 22:54:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590126842; cv=pass;
        d=google.com; s=arc-20160816;
        b=SFtWWtIVeLkR+dyv/R50o+JLu+zffOmKu1aB+8al7ynRJvGdePPS7sobMfctddHuSv
         e5qhRlEw1KpVvObkkqkY1OwDlfNJqYd1KicnMIoTYw+jZC5AJwdtaGjjs1YCcWlaM4Pb
         NaLRAFwzFP33Q7sRMukhjXXs6oNp06pLyPLi2d0A+9E4wd6gFt4m/cU3MIDQdUYDAJhe
         lCTnobDBPedwHvvW+gxMeFaQwQkrEGW8zLgB1w3dxHcPzvMBMwEzMt+XYeFoJfw4i/4t
         BFWQKjbgBBjimsetTJKPNLnjolqK0zMibUWFv4khvynrcTYq274pYUF0tEyR+ELqkEho
         T7RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:dkim-signature;
        bh=kAmy9kG6hxDSC46QadGElYeLCiAPhGqF0DDYNtVNK5I=;
        b=Af3ygsktKcG3aUJsDA9lt6k1tGwXf4t00xgqj4DgqbLg5+Hqy9sTjWWuWPRQjC+z+x
         CpCToVrk7cMjiVm+opSJqeV0UaZWvdcv9AZ7iasOtpxyeEmqjo97oeP0RqiF/Q96OcX8
         dBojJfEW/lLNjhzo79FZFTJMTajDFHA1kK5Xns8M8x5GU/8/wiPNAcIpatRkHsDTaXV5
         uBZDkQ6l96L8Rt8aDMHNndhLWnNPm2R9AQ8mQeRV2YQuBsfduUr+fybunYFi11ZBmJwl
         fSB5nGmibXiS/rhpjH7NYUmsFQZFCOh5n2w3urLTX1imH6gusuCA+jQeeqSs74AWTKBr
         3TMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=AYQq070J;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=kAmy9kG6hxDSC46QadGElYeLCiAPhGqF0DDYNtVNK5I=;
        b=pwXG33arpuQDGF/nILR3Ka0oYvXEMyvxM+KkzNZ7w8j6VL+vJdLaIrlJf2EUNLKRy/
         9gdKlLdjGXWzmaXcm3u0VDRF7a1fjoXAzDW8BjuF0atTqkNuoQOfc8H7dvQzhTuyzxFQ
         zXgvuudbpJTkWvXOm0gkJpTzhI3UiYipjsCobhGTAOc6Sr0COU07bh8eYZWaWHpKLRip
         FWpKVfOrbQ7TlJFeuMureygCp4OTfjSZyIAWgkX/zzsWbbiEQ1x6+j0lmZyKzO9XAkoL
         G+1LP5TyTQ33YPGkqfQr7+wWSDdu9Kbr26TL7C6WzZOIae8YwWgrdxFHJEGpGrsNnQmp
         CAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kAmy9kG6hxDSC46QadGElYeLCiAPhGqF0DDYNtVNK5I=;
        b=CoK3mClU88vg2MPYif3nMBafp6DsNVWLMkNJ/2dwv0PWd8GvatukWW9/7jv5ZUOUiH
         2SYaSTu16gdKcGlTlUdSuHmUvwBUt+6Q7mn+YWu4SP4Y+y8uKY0/pbouFZ/w2VnmsbNe
         zEd7SJL/6lnvIMOxBuFF/9Fp5JwoaNEJ+FDLGq6lXI5K6h4dYah5D8vUdv+rY4ObhYRP
         VT6cuHIH4033pxLOmJJh6HSrqFEY9QrDeHbqainkG/vjAuiY2xxqP1ApdYQtzWwX9RPt
         h3o3xXACnbjnotIcFeXyIxMn/SLhe4yAUoy7axp5crdgVs857nW1xEuuzX2RNaDHNA5K
         WfCw==
X-Gm-Message-State: AOAM530x+bVHfAqIkMfOXRrooFPKgQnh2Z7fAJKZa0g6YRhdXBf+B/cw
	/hGAldAkYDgy2WAwPZqHkXU=
X-Google-Smtp-Source: ABdhPJycT7GU5lGgMBYYkJ215QUzeHWDyEppY989c2NgGXjYOngryXgtbMgClVA6TcO367AqmoBoYQ==
X-Received: by 2002:a67:11c4:: with SMTP id 187mr4992838vsr.96.1590126842369;
        Thu, 21 May 2020 22:54:02 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6102:418:: with SMTP id d24ls18050vsq.7.gmail; Thu, 21
 May 2020 22:54:02 -0700 (PDT)
X-Received: by 2002:a67:32c5:: with SMTP id y188mr9371780vsy.27.1590126841923;
        Thu, 21 May 2020 22:54:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590126841; cv=none;
        d=google.com; s=arc-20160816;
        b=AxRLA5OHIx0A1tEsIU1bVv2BSdyTF+x/6LUyS1sQi8Oi01SPy95XvpdpRmImeiMG5b
         UTIIv3v0dLmE2Es7J3swZg5eTOyOFF7tzRvjBufF3FB3xOebGb7iis85TD7MV9KoI14D
         hWm/fuiKLpf/eHlWkScFKiZ8tg3eHiyjHwCKAq2UUSIOW9ORHkjz5kg0DKg//oqTegQH
         hgWiHlUl6VEQE8IDr3OfmsgQX06cH7LybVsNYVoEGYI7Oh4kFoQeGdFLChOXU8EzbmRW
         mpwlzfiQxw5EvB1TS706fyasI+OyBuy7ZrTFQcJauobygVN2jcFIQh6dFUHvnJ7fXjac
         ujYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=NshuB9n7qwMmk0C1n2A19PvAX8raMBe1CgqKMTbZRv8=;
        b=qgM3xay3RGw4OLoB+YymSKojtL50DRgAd3cOciy8RVu8o9UdgnGrfe5Cc1kkX5QqGa
         RMiJngpzfpLj8Q+/76aVGF9RBEFQ/WKhbhRdzyx9GxsV8cARW2Yy4KJ5Bk+nVfGsdda5
         A5g7mNWPfElEYCvNX5Kz5KuUirrQy0/rQD8g+ktjcVQajsAercdrSlfHNictw2McPW+d
         S78nvn7IsdmTplWOteXo7eBOzLdZNQgFA+Ygoxf9dwWEMI4jcF1Lqp+iN+D9CXeE71El
         gd3b4MFGmtpwQY3Xpp5XoJSRv4rfUYllrAhNuvVZ06uK7RiUrEEuyORKdQsOiA7S7r78
         hYYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=AYQq070J;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id d84si310426vsc.0.2020.05.21.22.54.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 May 2020 22:54:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04M5rquC068318;
	Fri, 22 May 2020 00:53:52 -0500
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04M5rqub091641
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 22 May 2020 00:53:52 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 22
 May 2020 00:53:51 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 22 May 2020 00:53:51 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04M5rlfU114971;
	Fri, 22 May 2020 00:53:47 -0500
Subject: Re: [PATCH 01/19] dt-bindings: PCI: Endpoint: Add DT bindings for PCI
 EPF NTB Device
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
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>
References: <20200514145927.17555-1-kishon@ti.com>
 <20200514145927.17555-2-kishon@ti.com>
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
Message-ID: <73193475-5244-554d-df71-df600f70c0d9@ti.com>
Date: Fri, 22 May 2020 11:23:46 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200514145927.17555-2-kishon@ti.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=AYQq070J;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted
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

Hi RobH,

On 5/14/2020 8:29 PM, Kishon Vijay Abraham I wrote:
> Add device tree schema for PCI endpoint function bus to which
> endpoint function devices should be attached. Then add device tree
> schema for PCI endpoint function device to include bindings thats
> generic to all endpoint functions. Finally add device tree schema
> for PCI endpoint NTB function device by including the generic
> device tree schema for PCIe endpoint function.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
>  .../bindings/pci/endpoint/pci-epf-bus.yaml    | 42 +++++++++++
>  .../bindings/pci/endpoint/pci-epf-device.yaml | 69 +++++++++++++++++++
>  .../bindings/pci/endpoint/pci-epf-ntb.yaml    | 68 ++++++++++++++++++
>  3 files changed, 179 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.yaml
>  create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.yaml b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.yaml
> new file mode 100644
> index 000000000000..1c504f2e85e4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.yaml
> @@ -0,0 +1,42 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/endpoint/pci-epf-bus.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: PCI Endpoint Function Bus
> +
> +maintainers:
> +  - Kishon Vijay Abraham I <kishon@ti.com>
> +
> +properties:
> +  compatible:
> +    const: pci-epf-bus
> +
> +patternProperties:
> +  "^func@[0-9a-f]+$":
> +    type: object
> +    description: |
> +      PCI Endpoint Function Bus node should have subnodes for each of
> +      the implemented endpoint function. It should follow the bindings
> +      specified for endpoint function in
> +      Documentation/devicetree/bindings/pci/endpoint/
> +
> +examples:
> +  - |
> +    epf_bus {
> +      compatible = "pci-epf-bus";
> +
> +      func@0 {
> +        compatible = "pci-epf-ntb";
> +        epcs = <&pcie0_ep>, <&pcie1_ep>;
> +        epc-names = "primary", "secondary";
> +        reg = <0>;

I'm not sure how to represent "reg" property properly for cases like this where
it represents ID and not a memory resource. I seem to get warning for
"reg_format" even after adding address-cells and size-cells property in
epf_bus. Can you give some hints here please?

> +        epf,vendor-id = /bits/ 16 <0x104c>;

I want to make vendor-id and device-id as 16 bits from the beginning at-least
for PCIe endpoint. So I'm prefixing these properties with "epf,". However I get
this "do not match any of the regexes:". Can we add "epf" as a standard prefix?

Thanks
Kishon
> +        epf,device-id = /bits/ 16 <0xb00d>;
> +        num-mws = <4>;
> +        mws-size = <0x0 0x100000>, <0x0 0x100000>, <0x0 0x100000>, <0x0 0x100000>;
> +      };
> +    };
> +...
> diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.yaml b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.yaml
> new file mode 100644
> index 000000000000..cee72864c8ca
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-device.yaml
> @@ -0,0 +1,69 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/endpoint/pci-epf-device.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: PCI Endpoint Function Device
> +
> +maintainers:
> +  - Kishon Vijay Abraham I <kishon@ti.com>
> +
> +properties:
> +  compatible:
> +    const: pci-epf-bus
> +
> +properties:
> +  $nodename:
> +    pattern: "^func@"
> +
> +  epcs:
> +    description:
> +      Phandle to the endpoint controller device. Should have "2" entries for
> +      NTB endpoint function and "1" entry for others.
> +    minItems: 1
> +    maxItems: 2
> +
> +  epc-names:
> +    description:
> +      Must contain an entry for each entry in "epcs" when "epcs" have more than
> +      one entry.
> +
> +  reg:
> +    maxItems: 0
> +    description: Must contain the index number of the function.
> +
> +  epf,vendor-id:
> +    description:
> +      The PCI vendor ID
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint16
> +
> +  epf,device-id:
> +    description:
> +      The PCI device ID
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint16
> +
> +  epf,baseclass-code:
> +    description: Code to classify the type of operation the function performs
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint8
> +
> +  epf,subclass-code:
> +    description:
> +      Specifies a base class sub-class, which identifies more specifically the
> +      operation of the Function
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint8
> +
> +  epf,subsys-vendor-id:
> +    description: Code to identify vendor of the add-in card or subsystem
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint16
> +
> +  epf,subsys-id:
> +    description: Code to specify an id that is specific to a vendor
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint16
> diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml
> new file mode 100644
> index 000000000000..92c2e522b9e5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-ntb.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2020 Texas Instruments Incorporated - http://www.ti.com/
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pci/endpoint/pci-epf-ntb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: PCI Endpoint NTB Function Device
> +
> +maintainers:
> +  - Kishon Vijay Abraham I <kishon@ti.com>
> +
> +allOf:
> +  - $ref: "pci-epf-device.yaml#"
> +
> +properties:
> +  compatible:
> +    const: pci-epf-ntb
> +
> +  epcs:
> +    minItems: 2
> +    maxItems: 2
> +
> +  epc-names:
> +    items:
> +      - const: primary
> +      - const: secondary
> +
> +  num-mws:
> +    description:
> +      Specify the number of memory windows
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint8
> +    minimum: 1
> +    maximum: 4
> +
> +  mws-size:
> +    description:
> +      List of 'num-mws' entries containing size of each memory window.
> +    minItems: 1
> +    maxItems: 4
> +
> +required:
> +  - compatible
> +  - epcs
> +  - epc-names
> +  - epf,vendor-id
> +  - epf,device-id
> +  - num-mws
> +  - mws-size
> +
> +examples:
> +  - |
> +    epf_bus {
> +      compatible = "pci-epf-bus";
> +
> +      func@0 {
> +        compatible = "pci-epf-ntb";
> +        reg = <0>;
> +        epcs = <&pcie0_ep>, <&pcie1_ep>;
> +        epc-names = "primary", "secondary";
> +        epf,vendor-id = /bits/ 16 <0x104c>;
> +        epf,device-id = /bits/ 16 <0xb00d>;
> +        num-mws = <4>;
> +        mws-size = <0x0 0x100000>, <0x0 0x100000>, <0x0 0x100000>, <0x0 0x100000>;
> +      };
> +    };
> +...
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/73193475-5244-554d-df71-df600f70c0d9%40ti.com.

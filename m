Return-Path: <linux-ntb+bncBCOOP4VF5IDRBY6CWLWAKGQEOYMWL4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C93BF152
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:30:44 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id c205sf1126067oib.10
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:30:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497443; cv=pass;
        d=google.com; s=arc-20160816;
        b=lU+Y5Kl0vgBS+BhmxWWvcEYy38YVWm8UwHa/ocDz98LtRrz6P592OAX/br/voP7ewV
         /o21HEnKcJl869zPzjOecfkbG5ZpO6GAE2jt3AfCnnYpVDll9HAE1kmHK4xp7gvisPzS
         ePRniqZ82sRmKnfq7mCWQJvI9UMik/gyDBbGP7zcdJNcTkL+Hr3iNcsqdbjeODQgg3z1
         cGTUoQ1lWlHB+6nVJ5nXoBVMlQNhGxtfBTcCmvAamZmWOjn5L/e6sL+NHy5V4HajMo5x
         kQc+a8iOffTTJ2uXM8tXBGfc53++B2al3tTCb8byOE/RDYlVJKLbpZxGW8bpQkOI9ZLK
         5cng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=ap4psyF2BsV7UVMg3srJOXw2nL3DqpVO3gkiqwB/KY8=;
        b=a9uAOY/m04y6f/HQgxghpp0HG3YJna3OBJhEFZBqyeYqRYcKIfxm9WHbR8KQV9Rd+v
         VWWWeC0smaSTyfmlxy0HMdaeIAVmbs5UfT/kCmta410rt6+ejgcleohmGIQ0V5sd6EDs
         kuZtzTwAm/LhulBStvOyHdNdufQ3tYVKACaqs00m5gT+2yzBIicyAGavbS3fePV3ET38
         xDDUpJ+CqFWokclj4K7enZ3nImJ0y5P4gQQN8sudUZ4VaKoKOZyPaNK/A/CtUW9i3BRi
         ShMNfbTM+4y7Doq323Lmj+kvOsIWPZngqkDwoSP8WSwlVdbRBlJc59JElpNg0TiXPVZb
         V/Iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TmjtRAWb;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ap4psyF2BsV7UVMg3srJOXw2nL3DqpVO3gkiqwB/KY8=;
        b=QwI8bN+5wuA7etXGXKV+3Cf3ouBTckjVriq1z/UuDdfnZ5Zh01eoDRi4ylkHcZl7hV
         mePQs8ZgRsmFzIG+VG59mGZfq3Jfm2qTG4bAk25OnBsdw8qjaVV2tXiHvIyaPE1mfUzA
         3Em2wNxLfdkScwEPkeslifwRCb874HTqNPIWpDrwdi9Hc9gy34GyB7/GRPcYKVk6e+/O
         tgsoeOFN9vraChM2ET3GGP7O5pureETvrMPAYRsM+tCaZ1NwsPHwHM3LQG4qAsFdvirM
         xmH84FFRMb7NELyu9OUFfizf3cS+Z1fcqObDZjobpygrIQO/42W+YnXGMQwWwwQ1v6ZJ
         0dJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ap4psyF2BsV7UVMg3srJOXw2nL3DqpVO3gkiqwB/KY8=;
        b=NwrjiTD9xekez/sHIThDh566nuAHHUpve4BszT93HXhxcfj3AM1gsi0jfybjQttOtR
         eircQCcmQ9k3OGQZkcAZfuPjPTI/08B5e7WyQVUXqWulht6TJnPe+e/7fbRoUlnebyy5
         lpV8f3+AwizUh3x1+ZWwjOQ+cwHpJcoaXAclTfpwbQ1A1flSRj5dPyN8UyCl3zzQYRER
         U0kbtNQquPnH5tb+S9n/ZJcb7x7lvaS8C7fyN0MmJqNgR0fl1n9dtnQKk0QZpzZnZqyq
         o55+/CudwaGxYG7tnd0YIghiYs60K/esW91BHbS/39I2fNHRaMhRQkn4YJHJchXlh5U5
         FwYA==
X-Gm-Message-State: APjAAAUI57QRwYxTbdj0EUl/uYeU56g266t03lVZ+6xIV9IhZA1n/ejH
	7SU9XoY0RDJEU6Y/hCV3RRE=
X-Google-Smtp-Source: APXvYqwF7BJUxu4SrVw5pVXOFKzXJvfHyqn+Bn4V1FOrbSyPTpgNXUz1mtgmCUovg3i9qhAH0A3qyw==
X-Received: by 2002:aca:30c1:: with SMTP id w184mr2264109oiw.61.1569497443388;
        Thu, 26 Sep 2019 04:30:43 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:4783:: with SMTP id b3ls387099otf.5.gmail; Thu, 26 Sep
 2019 04:30:43 -0700 (PDT)
X-Received: by 2002:a9d:76d2:: with SMTP id p18mr2318958otl.35.1569497443036;
        Thu, 26 Sep 2019 04:30:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497443; cv=none;
        d=google.com; s=arc-20160816;
        b=ViyjeFY7RegqPWznZEL4f9PWhG9N85hZoJEfpJsw4Wevmy6HN+IwWb+H1mrfNzjrjj
         UA+uvsgKhXXz4sqd5J4UQ/cIwlLZWr9bkumjipGBiDaabdpJcN/pxLkmiTdquBfDcodQ
         HMOqpr1S89zkfrjycNRCrtvh2dT1zsaC7ZKBnk2+DhHz1TO3H3bPHeT+kfU1yAMM8CmX
         j3qtufDnA5iBrrdcDQPCsELVa6XZ2UNWYf6mjACCIwgMMsh4wystxi8oDlJreHKKUfUb
         38tdmpjnfNhaICJ0TCLDTRPTseSaGPjVj4w1VYogg4W0/NXEVV6PakjVWS/2KP/GpQRz
         ErYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=x66YoPfkVrSslDYTR1it1VZ0fOMT2dXKRxNtTuO8skc=;
        b=xit5nCJ51YWYA21lQb1BeiLQ524NnZSemLPtD1SB4HIX6Gvwlnn5MtU8foLVj82chz
         hcCBBlZUH013n71e/Pn5PzOHXBFnepD3p3UFWXiusL8uULWMSf37344jlpJ6eOx7aEZJ
         fjVul0WCVS+r7HLy4krqaRqfNOcpXBgn2ZYZTAG29Sddv68lrmVQ6lnm1cTyBnnOlugw
         2YR0MQCEWolkjy72WjMzrXTP1JtoVpEfQpkKls+xk6pxpE7+J9u7vGDv86kkE/ksDNh0
         RbB9GEh0bzr3rm90WfGAKdk1oj5pAfty82153JHdGArbbtBZ9I9FF+mgHvlDZeOeU/5e
         dwJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=TmjtRAWb;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id a22si147023otf.3.2019.09.26.04.30.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:30:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUcr9026304;
	Thu, 26 Sep 2019 06:30:38 -0500
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBUcWY049632
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:30:38 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:30:38 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:30:31 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTjs069017;
	Thu, 26 Sep 2019 06:30:34 -0500
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
Subject: [RFC PATCH 01/21] dt-bindings: PCI: Endpoint: Add DT bindings for PCI EPF Bus
Date: Thu, 26 Sep 2019 16:59:13 +0530
Message-ID: <20190926112933.8922-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=TmjtRAWb;       spf=pass
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

Add device tree bindings for PCI endpoint function bus to which
endpoint function devices should be attached.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../bindings/pci/endpoint/pci-epf-bus.txt     | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.txt

diff --git a/Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.txt b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.txt
new file mode 100644
index 000000000000..16727ddf01f5
--- /dev/null
+++ b/Documentation/devicetree/bindings/pci/endpoint/pci-epf-bus.txt
@@ -0,0 +1,27 @@
+PCI Endpoint Function Bus
+
+This describes the bindings for endpoint function bus to which endpoint
+function devices should be attached.
+
+Required Properties:
+ - compatible: Should be "pci-epf-bus"
+
+One or more subnodes representing PCIe endpoint function device exposed
+to the remote host.
+
+Example:
+Following is an example of NTB device exposed to the remote host.
+
+epf_bus {
+	compatible = "pci-epf-bus";
+
+	ntb {
+		compatible = "pci-epf-ntb";
+		epcs = <&pcie0_ep>, <&pcie1_ep>;
+		epc-names = "primary", "secondary";
+		vendor-id = /bits/ 16 <0x104c>;
+		device-id = /bits/ 16 <0xb00d>;
+		num-mws = <4>;
+		mws-size = <0x100000>, <0x100000>, <0x100000>, <0x100000>;
+	};
+};
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-2-kishon%40ti.com.

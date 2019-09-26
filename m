Return-Path: <linux-ntb+bncBCOOP4VF5IDRBDODWLWAKGQEZGSBZ5A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 455C3BF16D
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:26 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id p63sf912737vkf.3
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497485; cv=pass;
        d=google.com; s=arc-20160816;
        b=Q3WI3InOSL6Nk9FC4R3Iw1IHpYiz0PBjLRwLIVc0cd5CebG4rh9BIhN+1KXk4ZKZqb
         Hyb9NtpEYB4an38yJLmtd7HrtqMdih7w4aOBxW/oMBhWZmAbVu2PNQOEOxT6y/BTcQH2
         9DRX2hrc7FAYCLUj/tl9uYp20F5znNRoVEyCaJKJpVEFj2EIvIIEddpbqtjCSacwFZ7Q
         QFhg6v3l2cQs+vYAMkMBMBt72HDfqR8aHI+JwvgYZtY8QZaZvXgCN1gccufHVA1DqEEz
         I87PdzYPWZEoQNAxnFfs1gdRWXgnlFPOIfv0gsoY/8voOhILsXpIeEYSD7FvQdzFW/7Y
         vEcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=R/nDJwqzGw5JrxxtpugHyCKGtPCNNvcS4iQgpGxAN8E=;
        b=lerTCvGHj2T8LsKbf3P9OZpdAOWyAi7TEgQqZAbAeah7IYkoJjY0L23B7rPc2Mx4Lv
         IRnh9Hs6QJIRXc/ImAib5hhcu1CwAWmkkZ2u3IykSxLGInU+M3bqHdsYvl6kXb4uiZbc
         26xnMRwqRRzKHsgH/Qi+AgWgn2kccX2WyLipurDrtRLAIzOOR8iZLjx01GyVlGlg6diB
         2NlDf9edd1vdXzmQLBMJX//gD7nUPFVay9zdIvoGELsN/mEf3AJoLwno++rVA6WrDciM
         C5j+tshOuZ/WSQcxpU4N98qJjkGamVbQenh88FG0W3u6sfrrd0bG5mI6K9LWYJEs9/jf
         cKWA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=EKRJWt69;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R/nDJwqzGw5JrxxtpugHyCKGtPCNNvcS4iQgpGxAN8E=;
        b=GWbkXskl3qnIJj7vZaBTZ4NJF7TtBQRpCQfzZJAbKjmwKSRlV7Lv7QROCxf/lD+7fL
         FPdiJYKhimDaQPnd9ZE5Gt2B7HzsMNIXQNxjkuY35VhXbIYYDbRC8KRu8OrsC47eVHCF
         V97/o/cFTuqwok2qMUwHL1ho7EZVIgL0IKCe6GupiKyKFThcuVvrBSl/JyKLMVwEICZR
         FY62EZ+aCeUyO2Ie6g0H1IZgu2ze9tHPLFQvmDQk291ZCUOmORduoOQUQgZvjLvd/DSl
         COa7npg6Ibg0puTV6fA2iceH5bIxgZV1viS25PgZzmo89yr9VVn+1ucV94WFpSTWN4ZH
         Wfhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R/nDJwqzGw5JrxxtpugHyCKGtPCNNvcS4iQgpGxAN8E=;
        b=RoW7mCGdK4Wx/frf3tJGb/ehUydUzHN/1LwWqSPxGsaaE2Pde+5zASCihkeynVpz6S
         J2H+iJGVndmhyTFGeVJDvZtop5UlvzvGIcBk8kYLZ/fg1ObPIU63S+AGCDkf3413+mEE
         O9vGaLkGEAepWkMLQ8FNTLPSMGyLsr+FFt8Z2tVTe2O+dQDvUpazGjO5KkXhQE82r19s
         CrGPB+2earxF2XrnFqglpD7S6YkMA3Sd42+RhMSRcmhQKLsWyeMs1lWTiL/yDXHLGfqd
         iqoahRzW294DqzPnAzaQfqtwTwlRPu7q7JLI6TdXbCmnVd7NDgmxrb0g/F1WTUj1hjf3
         cUlA==
X-Gm-Message-State: APjAAAWAPditEG9Xb4nmxqEroQ5VK0k3F1FeQbeA1sxT5NRGw4aZMhvX
	YQpcGNB0ip/yWQxgc8MDyNE=
X-Google-Smtp-Source: APXvYqy+kQCy3sX4ZXRk1lUJLy+VUss5sPUvvukrqaUFCGzaByuPd1MfMmtqKnzbtDaZLbMW/rsQGw==
X-Received: by 2002:a67:2e96:: with SMTP id u144mr1765347vsu.46.1569497485322;
        Thu, 26 Sep 2019 04:31:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:8c04:: with SMTP id o4ls66623vkd.4.gmail; Thu, 26 Sep
 2019 04:31:25 -0700 (PDT)
X-Received: by 2002:a1f:e441:: with SMTP id b62mr1349753vkh.20.1569497485029;
        Thu, 26 Sep 2019 04:31:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497485; cv=none;
        d=google.com; s=arc-20160816;
        b=UsFVDBo4Ax0pH64DfI04Dttq33ZJZ1pIdV/sgu/OsWcfSdJPVkNJNXLJXOoROnLh4f
         VrzKLFIuAX+hx6HKY9dGSVfPM8CuwuaXlKuIWVEe2jT05loM5nqGWoGEgB5ke9Z3lMc3
         oqBA+zt1XbYhYbfYKnIpXRHRd1AwwhErzfqJpGv1RafzvQJZByN+pwAh/b/ng3mym94P
         hUqHOlCVKQP7HSgkdfcVLRn8egvIq/PHmqKX18IIVY5+zbvYAjJuN3/PEXhigk3NQaxh
         VJD1rw5uzVtcpiYcnjh+zhQGm7FVVKDkZbn3eKaz5mIhW1te0YHCnkD0jgIhC+ohmcdR
         ylcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=5g6TwgnGUlfofXhn+QvD8y+MT6lDfC7QwOU9sIuCmvU=;
        b=vPNEfiIgELAV0vvFF1pyelJ55hDUBkQZm28wPpqgMNFEI+QOwPn1vPUiap3BhbJcQ8
         JgcDUhSG1Zpg9kbX+DkOZ36mU4DRYYDIJb3XNvqbdZCixI643fUnthVSNkF8FMsqhZdv
         rC9xdAS75u2cPHmxKgjQHV9PfZdF5dwLxpLPNg+FhgYa6PT+wkZJwm3Fo9cKNqzEGVpi
         7qePghCQc/uImiZLx5zx+8kxsVHjL/m5Flwxup18GCM7Nnkit98ZtaKgg3VsjRuuHjts
         15iKp5iOcG6QVG+tZBkc8/2abDJ+AkdQ1fGEUFiPg3HXfLoxFbY8Uf3CzxUKlNBLPCtc
         i72w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=EKRJWt69;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id i13si147653uan.1.2019.09.26.04.31.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVKGg016189;
	Thu, 26 Sep 2019 06:31:20 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBVK37031817
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:20 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:12 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:12 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTk4069017;
	Thu, 26 Sep 2019 06:31:16 -0500
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
Subject: [RFC PATCH 11/21] PCI: endpoint: Add helper API to populate header with values from DT
Date: Thu, 26 Sep 2019 16:59:23 +0530
Message-ID: <20190926112933.8922-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=EKRJWt69;       spf=pass
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

Add helper API pci_epc_of_parse_header() to populate header with
values from device tree. These values will be written to the
configuration space header in the endpoint controller.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 23 +++++++++++++++++++++++
 include/linux/pci-epc.h             |  2 ++
 2 files changed, 25 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 49bdff217777..98acadbfc934 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -31,6 +31,29 @@ static int devm_pci_epc_match(struct device *dev, void *res, void *match_data)
 	return *epc == match_data;
 }
 
+/**
+ * pci_epc_of_parse_header() - parse the device tree to get PCI config space
+ *                             header
+ * @node: The device tree node (of endpoint function) which has the PCI config
+ *        space header values
+ * @header: standard configuration space header fields that has to be populated
+ *
+ * Invoke to populate *header* with the PCI configuration space values populated
+ * in device tree.
+ */
+void pci_epc_of_parse_header(struct device_node *node,
+			     struct pci_epf_header *header)
+{
+	of_property_read_u16(node, "vendor-id", &header->vendorid);
+	of_property_read_u16(node, "device-id", &header->deviceid);
+	of_property_read_u8(node, "baseclass-code", &header->baseclass_code);
+	of_property_read_u8(node, "subclass-code", &header->subclass_code);
+	of_property_read_u16(node, "subsys-vendor-id",
+			     &header->subsys_vendor_id);
+	of_property_read_u16(node, "subsys-id", &header->subsys_id);
+}
+EXPORT_SYMBOL_GPL(pci_epc_of_parse_header);
+
 /**
  * pci_epc_put() - release the PCI endpoint controller
  * @epc: epc returned by pci_epc_get()
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 993b1a55a239..18fff589a881 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -196,6 +196,8 @@ int pci_epc_raise_irq(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
 		      enum pci_epc_irq_type type, u16 interrupt_num);
 int pci_epc_start(struct pci_epc *epc);
 void pci_epc_stop(struct pci_epc *epc);
+void pci_epc_of_parse_header(struct device_node *node,
+			     struct pci_epf_header *header);
 const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 						    u8 func_no, u8 vfunc_no);
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-12-kishon%40ti.com.

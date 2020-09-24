Return-Path: <linux-ntb+bncBCOOP4VF5IDRBPWMWH5QKGQEDAWNSCA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id 34766276D21
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:26:24 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id h8sf1957099ioa.3
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:26:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939583; cv=pass;
        d=google.com; s=arc-20160816;
        b=DdQafSzbFLTUVAOVWofK7nYCqZO/GIJ1gqSG/OaXXTHpRMJftVSIFbH/ZY5KopjstY
         FGjDad3ESU+bMhJDuFt8id54TE4m5G4T1hfviJ33jq6GUPbYX3d02KFMFtmEJ8PHgols
         WW1EjvR7yq5BJn+x30adLHPxa3fyAYxciH5KssfPe+79xS2ygq33VyQ7Pd1fJrcIBZ0E
         gRLfq+NuqWM6tPAfdG3JLX7+bjBbchBk1/OD2ZD52893i1zpPiJgrUwNNzAGln5WmgbE
         ktvFUBXNC2XFvRKSVnbe2osLdxA91fkeCOtu1IoEDUDAaGFormTJldNTHFF7/rdzMc/R
         NmfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Uu5lXWIn4fh/WXJIGQFqoHWh/8empXL+wvcFjoCVe4Y=;
        b=Yxf18o+LA+3XhD1xBG/MFHSYD02iBZG605P8UsaPJvO3V0M/KaEtlh4w+Iod53pRpA
         oRtfAp/wux32FTjzWrqEBuWyIGKyKV0Mu41UdfCSV/bPmnnW5WHzNIU7iKOJswHn3KSr
         iaSj50JFzr50nT/OE8/b3jBC7AX3p9Ckb3R0ju6qMXsJrY4dxaFJWFq1Axw/g4GkF3hL
         vAXFG3cRq0NIsYZIBr2AWNSnZ+XkVBcIx685/qsM9DtooNd+TQuS51EWAH/elhOaeTwg
         yntYw0VJG+W7fwuLfm9+uwKQT7wtlyLinBglYTBrtZimJ2r/S2GFjRjozBkKUScDy6gC
         o9sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Nc8tmD1B;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Uu5lXWIn4fh/WXJIGQFqoHWh/8empXL+wvcFjoCVe4Y=;
        b=YOYWHt9WJtPbN28VFaZkaBwvEiXuaOu7lqf8r5jQCXtE+cDR0GoBrT87wH1f4LqPZd
         YTyyoVwrf9FZjg846P+Q7Oxqq7JX6kuEuAKsOy1ABKL+z/eNbgXp0gyYdyV5V4UfZVjG
         RAKmuxk6swliOP9eXqvlC5Vfcj929I5no/hJGH8+GFsgD+tmAnr5Xn1lxbCNDmIYMi3j
         DyUTYmcihU/zTcffi3EaLlv67ON6xeQDkFtP1EGWg4oMgwDcMV7jfnPlOxwUzRe2TTfD
         zZori92AEsw/4rgh2O4j3FCSDZ07RgPSFiX6VBOF08Z68OF+Yklx10Qu0GW0dmO1ip6s
         LLCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Uu5lXWIn4fh/WXJIGQFqoHWh/8empXL+wvcFjoCVe4Y=;
        b=HC1TYs8M4p9ErOvU76BKEote+DJvBlKmbz1RjZqbhhcg3Z1WYRQwYoDP+cp1JxK6mj
         8x097kOrNx05WQJGk8GkuRn5QucRg378oLU786F9FZg8r1W9JhWnOeNqLEBxVLIF2FfI
         i4YW4zL175TVfJZlc8WK/L/ikAXnBUr17R2yna/7Wln/dVhV2lzlrI503VNk+ldRq9uz
         ZNKKrwDXdhhtW1UbtEakpQeuDlR+wfWvZmAQcKKvXveVG2ZaWZlLRPWstwttjXWEYbR5
         mzMV/F19U03jzGpgmLsSZxHSTXoWe1EuPOQFY+MvFSUDV4AIJlOkHu1Sfd1XIOywTsD7
         +R5g==
X-Gm-Message-State: AOAM533W8Fhv8VOJAamjhI5G8JVKlxpM4F9dMt7sUIOWpmsuA8N5JceH
	lnR0IHbUUmQ9M1bqR8rO2Nc=
X-Google-Smtp-Source: ABdhPJyvUUhUeMjZt03wdYay1jUkka5d/92c65DrGQWb4KIDONfquSbWVMtDA15z2CVfXfR/8M8kcQ==
X-Received: by 2002:a05:6638:69d:: with SMTP id i29mr2799022jab.138.1600939583165;
        Thu, 24 Sep 2020 02:26:23 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6638:d09:: with SMTP id q9ls315579jaj.10.gmail; Thu, 24
 Sep 2020 02:26:22 -0700 (PDT)
X-Received: by 2002:a05:6638:cdc:: with SMTP id e28mr2866382jak.100.1600939582524;
        Thu, 24 Sep 2020 02:26:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939582; cv=none;
        d=google.com; s=arc-20160816;
        b=o8n6qAaIER79vj1t55rGSYJ4J8lSupH+44d+l/cKFrlMoVCZvWGmHZSYvLJpff2RuV
         7GkxE1EcsvGKlfgRBzSoF6DDBeWz4VaPtEYWVKxZnFsiJbP3nDBVrwe7hXDgAGj/vHb2
         m/kiOmJy+6p7u0E0ZVKB4BbrehjaJzAGGRPyaBDd/o3+Yz1m4h08a2/UCUgub/Em/oeI
         R2kIaK3ZQO6AVmX1UdkuJEPV1jYFyr+w0ZHfO0i2ccBBg2uwCLp8qBaLBb/9+28rwfGR
         6kl07smq6ccl3tS/jMOLm3L9K2JWcdIAms6eeAyu3WoJmUbYRfaDzeWzaMbuYGdynBHn
         guZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=lTz57oIbDoqLeHnWKHJxRenng3YXT0XKq15ddYdluKo=;
        b=bYpDklY3XP1rl6U/qPvV06LOuZgn2VG8yPCXeQA3zdid0O485uUFGLisEMMnGb74o2
         HUyqtdFRG9qubnNz/YtLa6KEa0iaTVQPJ3JFMDNOyB8WNwDq2BSkYaezCVUmsiFMtUbo
         bA0pHklyZqygoWTvB9Y038YwTSIHriEyuVNYCZpULRvOnwimufMsxZpPPwYdj5CR1V9L
         KVjbjW8YxZNo5JyAO5abPltptxYnOho5VaP2T4b5OoneeyvIhPzANAJrzaq0w92nUafX
         wByiNFLp1MlEhni0Gt85yhUBr/utzzAt8gS+wZfPO6GgSb/bMxaAdXl/GxJJ5I+WDr0k
         Z8gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=Nc8tmD1B;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id a13si157952ios.2.2020.09.24.02.26.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:26:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9QEDD117372;
	Thu, 24 Sep 2020 04:26:14 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08O9QEir036451
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 24 Sep 2020 04:26:14 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:26:14 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:26:14 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POYw011000;
	Thu, 24 Sep 2020 04:26:09 -0500
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
Subject: [PATCH v6 09/17] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
Date: Thu, 24 Sep 2020 14:55:11 +0530
Message-ID: <20200924092519.17082-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=Nc8tmD1B;       spf=pass
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

In addition to the attributes that are generic across function drivers
documented in Documentation/PCI/endpoint/pci-endpoint-cfs.rst, there
could be function specific attributes that has to be exposed by the
function driver to be configured by the user. Add ->add_cfs()
in pci_epf_ops to be populated by the function driver if it has to
expose any function specific attributes and pci_epf_type_add_cfs() to
be invoked by pci-ep-cfs.c when sub-directory to main function directory
is created.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epf-core.c | 32 +++++++++++++++++++++++++++++
 include/linux/pci-epf.h             |  5 +++++
 2 files changed, 37 insertions(+)

diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index 79329ec6373c..7646c8660d42 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -20,6 +20,38 @@ static DEFINE_MUTEX(pci_epf_mutex);
 static struct bus_type pci_epf_bus_type;
 static const struct device_type pci_epf_type;
 
+/**
+ * pci_epf_type_add_cfs() - Help function drivers to expose function specific
+ *                          attributes in configfs
+ * @epf: the EPF device that has to be configured using configfs
+ * @group: the parent configfs group (corresponding to entries in
+ *         pci_epf_device_id)
+ *
+ * Invoke to expose function specific attributes in configfs. If the function
+ * driver does not have anything to expose (attributes configured by user),
+ * return NULL.
+ */
+struct config_group *pci_epf_type_add_cfs(struct pci_epf *epf,
+					  struct config_group *group)
+{
+	struct config_group *epf_type_group;
+
+	if (!epf->driver) {
+		dev_err(&epf->dev, "epf device not bound to driver\n");
+		return NULL;
+	}
+
+	if (!epf->driver->ops->add_cfs)
+		return NULL;
+
+	mutex_lock(&epf->lock);
+	epf_type_group = epf->driver->ops->add_cfs(epf, group);
+	mutex_unlock(&epf->lock);
+
+	return epf_type_group;
+}
+EXPORT_SYMBOL_GPL(pci_epf_type_add_cfs);
+
 /**
  * pci_epf_unbind() - Notify the function driver that the binding between the
  *		      EPF device and EPC device has been lost
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 1dc66824f5a8..b241e7dd171f 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -62,10 +62,13 @@ struct pci_epf_header {
  * @bind: ops to perform when a EPC device has been bound to EPF device
  * @unbind: ops to perform when a binding has been lost between a EPC device
  *	    and EPF device
+ * @add_cfs: ops to initialize function specific configfs attributes
  */
 struct pci_epf_ops {
 	int	(*bind)(struct pci_epf *epf);
 	void	(*unbind)(struct pci_epf *epf);
+	struct config_group *(*add_cfs)(struct pci_epf *epf,
+					struct config_group *group);
 };
 
 /**
@@ -188,4 +191,6 @@ void pci_epf_free_space(struct pci_epf *epf, void *addr, enum pci_barno bar,
 			enum pci_epc_interface_type type);
 int pci_epf_bind(struct pci_epf *epf);
 void pci_epf_unbind(struct pci_epf *epf);
+struct config_group *pci_epf_type_add_cfs(struct pci_epf *epf,
+					  struct config_group *group);
 #endif /* __LINUX_PCI_EPF_H */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-10-kishon%40ti.com.

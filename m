Return-Path: <linux-ntb+bncBCOOP4VF5IDRBF4DQH5QKGQEEZQSSNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B97E269D11
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:22:49 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id c19sf2016763qkk.20
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:22:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143768; cv=pass;
        d=google.com; s=arc-20160816;
        b=aYsUEEy985xhVjeuyh3R4m/lcsPGxm0BPOc2ng4+W2ZLakbXMGgtZulr109XmADqsE
         uJUGdcA8Qs0VPow0VBLq5KO3iBtUPaJkCaJX7z99OIwA8Va2JmdMYMtSZlO7O+Na8QsA
         6KEwGvNyE6md4n86bHTEdNG3xSh6ezqfj4AUbv2a3xot5F9sMIAagVP2AxQLjkvH/uFW
         bMjjZsNSWnOsaFXHhSQC54bDqdx9Q+ITKlpdIWzsMP80Zt8ovPKd1UoSh2Klg06YHpl1
         Sqjc+jiaTsvKrCiQbiLlH6dbIFIWgEwF6ATEKP7iJ2nuftKR99D3APHVhD054M7HDu3c
         Xclg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=TlKsO6PEdY7ilNqlFRY5J6k1UzH1xookuIaGwiTL6sI=;
        b=sZaIKlogYjsKkX5b07xr2VmtoAxC0qHJBAG9JT3RbJo+87irN5dMv+DcPOl9/zv1pr
         t9I69a83PqWh1v6FHh8FjnIfad9PNaUOW+qF8LP9aPM2K1exa92TzJpRkGHZ3VnGjFLU
         MvJFc2n2Q8wHJUklrA+xnwD9gsvwn9HFmYYjooWoRlnHG7pckKBIh9Ki/QMRMtdpW+SY
         Yrujkfd24SOJK2RfcJZXVLPrtA+AQyFHCiUbctTgxk/KOHf1pkN5YYw/al8qmWiW2FsE
         gk38SJt+VgiM//usDotn/YF3wvj2Gqu0qj7hWU5zDuzhsNfYgv86cuEAFEb8Pkj0EWDG
         gp0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=XuVo5r1R;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TlKsO6PEdY7ilNqlFRY5J6k1UzH1xookuIaGwiTL6sI=;
        b=tQaX4x76mZeagJ2/v99zAUhReDLyloJoWU867+vgi3Ec2BTlp/TthlRUfvzwsZ0ygl
         V1tl2QJ1huzLVIGn7bjNfmyAmtl1prqGZQ2+6/04D61oFHi+ULJu4RlNIMmCj8XjQL6z
         gSYSQd8icNFGFhysKnw3ZNcFg0bZP2Lq/5TD7GVxqvv8Z8q3Znxzz7zaoVjl1YAqDjhr
         0oat/pWpmbEwOKsEkz54+by+uJwL8TvGuY+DCXYnl8Z+iKbIMYAuRi/NOKSnXHiByKxY
         9hnRBnruxUK4nyhghNuD3ry41qNR6FhxlbiKdAdmpNGYKxYGvpPrlfp1s0BF4h2eWf5b
         IWXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TlKsO6PEdY7ilNqlFRY5J6k1UzH1xookuIaGwiTL6sI=;
        b=XDQaZ/W8axU/4DINT39MnOh8PDX6GgoL1CpokDjlz6M1w/mC2oMADQimKmQz4nXn6n
         5NYQSlFFsM3Xk1hh7SAnuszHw4tBBlA5hOclIEjRsJrkDpmk0GAKUaUZZBbByYgUcoa0
         dE0I5FlMMagcU/sBF5et95Dq99wPwGyK4PYuRORZSz9Lf1YJZ3L6Wl1U69/EcXG09ipI
         wpI9PudblbFKL1qD6HENMtzay/2yhXKgKaAMCpQDrmsYjnEZHWwpRt7gAkAXySDDaNXo
         cKBjmn/5TDM9UjuCMy90rCOEEmVhJ6ztVbT8aOqbFo8BfNETtzxnRCKGXk9BbORT3dRe
         K46A==
X-Gm-Message-State: AOAM531e1+BK4WxwIRvj7WSJ3VCFKmvXarXJtdmzhWm0bPLBTvyILys2
	6qY6TcnpXYTkOdAqoG4G9dM=
X-Google-Smtp-Source: ABdhPJzyQNUeE6l7Sx8gPm4v25Lmt5VrKJGpVbQ0KM0ck6AbINtZ4YyXJiJH5qF2bJmww1PXgfSSGg==
X-Received: by 2002:a05:620a:15f6:: with SMTP id p22mr16098453qkm.198.1600143767940;
        Mon, 14 Sep 2020 21:22:47 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ad4:4c91:: with SMTP id bs17ls2985472qvb.3.gmail; Mon, 14
 Sep 2020 21:22:47 -0700 (PDT)
X-Received: by 2002:a05:6214:6e8:: with SMTP id bk8mr16786117qvb.18.1600143767507;
        Mon, 14 Sep 2020 21:22:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143767; cv=none;
        d=google.com; s=arc-20160816;
        b=DvENMq8CnYXFymGZMLHcIr8yoAPA3d+oFJRqxvVelzAhHPJRSD2rhqZAIKegSIc2Dm
         saGyUx7ZOanUj5yGYjonJ5vJbwVzabfjLAsXpIgv2lsp/Yt2ZnXHEf1rN0dJaq97bD1B
         rb96SyGcPVfHlCXZiP9YpRo7iyU4Q+fQ8Khjj5PDMbbvR9NO0eiQuYfUIjOO8+QzpUOE
         Sd5mSb2R8AXkwXTEq88Ff3MtABq3yEZ49rtuSp1vSIT7RYGuK3H1EGPBVANLi9+d/3bj
         zg0sCYsdCjN9IhMmK6hwOoJnXkiZvrDZBp/yb6I/qDb6wQJkFfUKlD/4LoXIvgaggb5c
         FySw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=lTz57oIbDoqLeHnWKHJxRenng3YXT0XKq15ddYdluKo=;
        b=e941JaXaSzl253C0RV47NTa/flBZVokyzDaMbjY1WfIq9mA9aPmvglHvjbX6AkUnt9
         L/wI0QKwOJ/p1VN5sdNK3lrE/kyvt3tzTpzJAkb4qW5U44CeExcOKjX8zTZTUIPPtOOf
         MDYVOYtuddyLwTtcRgMn86CuIjSV5gadu2t7zfhmFabQZVduvLvm9LZlXa+V4rB7xFgu
         7RvSYX/ckySlKkKUncMO8g3LigEIX76DnI7nljskN2LwyWWCaAT2PkWErOmyZOf2oqaJ
         g93NmoCxwwZYPdpVexKwKtr+k/NN+EPvFXc7XPXiofw2H9p2yM04mgQI/NfQ9xTLKVZ5
         gwiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=XuVo5r1R;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id h17si674022qtu.2.2020.09.14.21.22.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:22:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4MUXA017392;
	Mon, 14 Sep 2020 23:22:30 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4MUeS009251;
	Mon, 14 Sep 2020 23:22:30 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:22:30 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:22:30 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMp028615;
	Mon, 14 Sep 2020 23:22:25 -0500
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
Subject: [PATCH v4 09/17] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
Date: Tue, 15 Sep 2020 09:51:02 +0530
Message-ID: <20200915042110.3015-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=XuVo5r1R;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-10-kishon%40ti.com.

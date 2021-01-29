Return-Path: <linux-ntb+bncBCOOP4VF5IDRBI4G2CAAMGQEZM5C4TY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8977E308920
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:44:20 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id h17sf2255243uar.22
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:44:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924259; cv=pass;
        d=google.com; s=arc-20160816;
        b=Sla5EvF8haBy4uRO676w0TV/6Ybz+P+0d8to9lEcqYDnXf4uoPsoxRFBQcaFt/en8w
         EXna7XaUH46x8z7KuFj0SnJqK2IxNbMHrDkjWB/h7wSYhSz4+uQh3MiB10N3Agh+Nm30
         uctzdmoUgdO4ZKfvds1PWUBUzTVnVYCySEJsIiklWXgpY2wtgyHIyLY96QEldD6tJocH
         jvw51zrqgxKix6SV7Gi5hCH1j1+YfWGCZNS2UItg0nJ9oNVaPf9AvaLB/zfdejv57j+n
         tjNkCYjlnSpvdQqorwkmcDyUtRngyHxZ3/1V24nIxi8oDEuxvUf+buVHBZ0btGyOIwoN
         4HiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Gv32alLLAoitf9vFkX/laLXCX6ZbVgwT9ci4Bgm5Hts=;
        b=CL4xjaZ5yUsIaN7B6kI9b3a2dWh+p6MO3pn/NpcHgxRwQ0F6UI9jgyiZ/x36TeIKrY
         GlFlQIDvbIH3xW+9ue0gtXJFujUVCZ9v2MXOejgUxixwaJOKOJVvXIDPi1kVavtYbwSX
         nZJ+MHvqxCi/W101fRfN8M9GJa2O3IynZR8PBXymsUkHJ/o0YxI68f+QU6xa8I1PKUfN
         kKOQNM1CTnYEbnjVuj/qiNT30sztiDeDkcBLHj9McrBhT9z8/xN0Q8ZC0Mgtc5l3iG90
         BEGS7XAr/kOu0fmce06GpCUp7woyLqgDasoYJlo3H8oL+/ZKCHINE/i7HzDp4WJ+zvFl
         facg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=sJvfphPd;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Gv32alLLAoitf9vFkX/laLXCX6ZbVgwT9ci4Bgm5Hts=;
        b=OCdh9NIqazWiAjGxQvoSlWpCLTuUrg0abbKAhbQcP8kQiaGqlPa4DxlAlpTshXo16p
         9MrwKctBC5squ+WyLOX9+VcnHdeOAaKo4VWm/J1Fq1fGIxzxkn0Er3MFE/rt3sQ/9pWA
         sdb2QzzOVRs8QwRXZOK02sM1lNVKHil4nP0OwW1YaroSbDkksjDLvvIsmjxbxrJ7hdJc
         Cygf56k97El/alBXu26ve9jpq4NCtnys2uxZeVy8raFp5wKCPedpnXGvjp/hXAKgYBN6
         PfVQaiWdgM37SSc5IhOD/KqhQGiPFBhyh3X6Ud4BYlAtSn5n5S86jpsdEu4DBdmbyaqh
         tl7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Gv32alLLAoitf9vFkX/laLXCX6ZbVgwT9ci4Bgm5Hts=;
        b=Dlf/MIBY9+WChKPD2/lJMrsUFcbv0sNOZmnRxaAQP2IAA2s/Ys/4DpUcqVIfWeRbTx
         kKGMW8r8QXU7LEjNFStwtLpIo0ib+Dc0ME/CxWkJq5OcIgkgGjlY+GqQDPpWNpX/ge0E
         dqBbEegVWErU1Pu+r6FjxJ7Ga98ss2AP9QiE7Orq5gBP71o9ffFTreZCg4nfS597QRFE
         wrABc2h9A6quoq9XNjDiO6MXZIfX9nCLDY//zSDs7XnrJREc5IkhT3zKhUmdH/efOl3R
         ya6RVjGjti+yKvMwtoP+xsy2Goc7bpnMeAI6QNp+xboShf4lTbo6ok/TmNkf4+Z4CLOp
         40Ug==
X-Gm-Message-State: AOAM53001m8AKAsS4Wv0azfOez6JjygDpo+ta336Ge39qsRhapGEMLsz
	7I43ggv7ST+3Ibmmv4+I1T0=
X-Google-Smtp-Source: ABdhPJy3WyxPSvpkVltiYtetuQgT97LKUkHG68RS/eBJfqQ43m76m0eWBeghpdB/SCU0pcoTS0CVTA==
X-Received: by 2002:a1f:4b02:: with SMTP id y2mr2690215vka.2.1611924259639;
        Fri, 29 Jan 2021 04:44:19 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9f:30c2:: with SMTP id k2ls685803uab.8.gmail; Fri, 29 Jan
 2021 04:44:19 -0800 (PST)
X-Received: by 2002:ab0:d7:: with SMTP id 81mr2407488uaj.7.1611924259165;
        Fri, 29 Jan 2021 04:44:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924259; cv=none;
        d=google.com; s=arc-20160816;
        b=w6PVfxV6/H1zH5/lmNPo5ZcPhSy71PcpYs1if3TJKQmUQ1lRAHTbnhqXS5LMkKH1kD
         HTRxmhEUP7ANnUaRVsuBBm4vnOozLjUyIGQwoooSdGexoNWuiXTQ4R8+6koeY90t4Wq5
         ZXXpV0XFSAqVe7T10T1c/R4wkvpar71anWtKYSb5fQ5sjnLQQ2oTFqDDBP+wZnk2UgTJ
         WyvQ2q6KyLbO5uxnT4dgVl14EXxP5WxWVm4xNYLWzOYCZK1HrSS+RQF14Za2MiCT2W5E
         i9kSrIPUEryTLihVCE5pN4FZh2Ia6M61yE/YoGE7GkLMRt+EIWqN7xrbOzZzrsu+jGb2
         dneQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=lTz57oIbDoqLeHnWKHJxRenng3YXT0XKq15ddYdluKo=;
        b=RMinSwvG+PhN00ahgzzjiQDITNWCz9Cyd/FLLuNT98hpkcKcflOuFkv4q5bVHVe9uX
         04sUpa8tLxdEOzonK3B2CddpfHc31NVfaes7F+SFtiZmEIBs1cM1j1x5Ds4vRTaUqGUy
         ST91lS9EwLIgJzOhE85bdfXo/0zAZB6QvYZmsLlf5CAsv/s9Mtw+MMcVDu5jl/i9DN5V
         rtZ2ZFi794mBuGFFFAKRxr7YoQ4jKC8pRbD2H6U267Uf27GWFGNQQRUHjddaH2Y1gHCT
         16IxYli3jC89QpKC32k39dz0rZuEJSaakOYl7Po19uIGMMlUilYr7RaRFo0EzUpmqa1S
         HwyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=sJvfphPd;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id p73si427700vkp.3.2021.01.29.04.44.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:44:19 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TCiBjH024324;
	Fri, 29 Jan 2021 06:44:11 -0600
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TCiB2j013038
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:44:11 -0600
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:44:11 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:44:10 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDW8075758;
	Fri, 29 Jan 2021 06:44:05 -0600
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
Subject: [PATCH v10 09/17] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
Date: Fri, 29 Jan 2021 18:13:05 +0530
Message-ID: <20210129124313.28549-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=sJvfphPd;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-10-kishon%40ti.com.

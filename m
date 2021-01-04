Return-Path: <linux-ntb+bncBCOOP4VF5IDRBCXJZT7QKGQETIGAGAA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB462E9894
	for <lists+linux-ntb@lfdr.de>; Mon,  4 Jan 2021 16:30:19 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id t23sf11995857ioh.0
        for <lists+linux-ntb@lfdr.de>; Mon, 04 Jan 2021 07:30:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609774218; cv=pass;
        d=google.com; s=arc-20160816;
        b=MFXkCr1uNhOcuVPA04H0PjQ8Z5hee98m9MR1SiirS0TphClbRQtacTWX/Euw05zP2a
         t8oJwnyG7U732mArsHSO7SJgOEwsPwILIO+8XMi9ZF1d49UDfp2/sQNpz7wTHfbx5/6L
         PZWg0ad6eqyNyiSySriJQfs1ywIprTy62bSQTRSN83hw45SKdoWvF6YwrtQtAumycVbq
         W2FZWIBUAXirLuxt2hdjhCK0BiKKzCcYpzyF6nvmCIfB+HNSGaV9+gmhcuAMdysDIAed
         3sdAdVrdfrtWjEx1CPIUi4xZ2lXyJydCGG/Ped5zbTyZPBbTTbOoYTMdKlHe2dpNMlvD
         SDJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=/nLOqf7km4D/CJz0tQ5rwVMw6b6tI5Sygadztvl5Gyg=;
        b=fzj4hZfZX/PlQABkyiXPmvW0P557YKGAso6Y3EUbSo+bNrxMHUYN8VhJfr3PYKkxrc
         vqRf3yeztzXzQK/hm36QnH3+haKzxSyPInAI1veUSayfhRmq9+lrdO6sp+Mo0XvgMSPf
         hFvE7QxLdQ+c+1NNaDMMH/hnvIpZluzuInx8nQ7nf3YKBZ5Lq7rOREjqC93NFF0+mk49
         +mmO4p/DUweJgWPy+wrGSvAI+PQBkF7gQZI6NFz3EhETt1cvKEko50G6R6G4soyNvUCT
         NIFytceiTZeG3GC9rPSyx1SlAF5XgEUuu5ADeIeYORPK0Ok6bKP9zFleMzDaBoRq9cJQ
         /Nyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=S7PQMOqG;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/nLOqf7km4D/CJz0tQ5rwVMw6b6tI5Sygadztvl5Gyg=;
        b=AM1tsH16j9g/KwAxQ4PjXdlJxzzkqU6FCVg21GcRzYrW7gb6DoCIoeH7mpRjiKPeyg
         lupqoMygQLFpMokvd3EfSsXM/qWgktc3hso8HUFpheFyOmKxerj8qphi527jpEKGBSxY
         mcBa5VR2YaDo3x8y3htDyLj/Nar/RchyLZytr2mURe1npYJu8ndcwZq/HAHooRqrMj+4
         dG6ftLZnukPf6a/48caLSCcZXNrQOXBO7xJPOxp0LWWDGVm9QrMaHY3G//G4Sm4cv6Jn
         cXc2Q3mU5m2RDG4fem8R8vRh/CxKuqL5g1HBy05i/2w7A4bcou2lAYVSSEmkhFqr9K5c
         uJ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/nLOqf7km4D/CJz0tQ5rwVMw6b6tI5Sygadztvl5Gyg=;
        b=JKFVwfBRJKo2uHTGF7KPd78R4lUPv4RMyAySckFSZ/beG04x91qSuPoSmO7ZMLygIC
         r5mTsxU+qQP4Z5O/AaTFnqkLN5/wG1saLs0CzogYue7UFQubF8fEyIjIQ3u/c887uDvl
         i1w4QeWpRGOVsZJ90Fod8bungv3Iwma/F0MOvtcP7PIKcoyg1OsJmaKaZ6kr8RpUr2pQ
         pVmeLjorFmxq0iRpZxqse3YYZJ7p3nZMTzvaJ7mYKnN3hRcdKNp+C/LUrNn4kTK+A2P4
         ylz4lNWXs71n1HmVQ0R7AY9nMiOiXdGWcfqEF0v5RABenmG5R0uSXg88yWflYejHnk9+
         F5Bw==
X-Gm-Message-State: AOAM530MobvVOl7Clu7bXFe7egkbq/IBDrFQUFGMxRCydLG5ndkyRl65
	2QCqz0j4s/4k8mqqhxq/jfg=
X-Google-Smtp-Source: ABdhPJyyj9djUuotA5ySxRVx9GdGfrZPgNmJ7mP0MmEPZn9XiVd1zdqZMU7Nafu1xEqrnRPINtKsIg==
X-Received: by 2002:a05:6e02:10c3:: with SMTP id s3mr72596604ilj.269.1609774218215;
        Mon, 04 Jan 2021 07:30:18 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls11763136iot.1.gmail; Mon, 04 Jan
 2021 07:30:17 -0800 (PST)
X-Received: by 2002:a6b:b2cf:: with SMTP id b198mr60059942iof.19.1609774217800;
        Mon, 04 Jan 2021 07:30:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609774217; cv=none;
        d=google.com; s=arc-20160816;
        b=OvFt9HeLM1QUbtUJTQ/otVqk3nclboM7aBishNKNXEfjemXUeSsoGCsDJxN+irY5aT
         ZVg+w9TM6utr8X49amKlkrrqdmuCng1ZWnu8LHDFLsffCpzU3xg4eewr6NfPiEwuyASO
         pI20Nj6eLldXxBMdQrTAyuryKJgyyNE6upCOAwBzQkxjGzZK8vVt0m4KtJ/E7IOWfCPW
         mYE6DkJrLAVBc3xQ66NAw4qbuVXqHQkRvHTxeogu0fQb3LZqdLSxpPE2alx+a3a5c1Zw
         ENGV6MJEDgqTffZq0PA+R3TAN1i4pe2XfgQ+hEN+jtaG6MGf97hfmsCsezOgtbIldwHe
         SA7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=lTz57oIbDoqLeHnWKHJxRenng3YXT0XKq15ddYdluKo=;
        b=heF5qNSfAE4j+QPZV+QQnTlHPCnC6Ayp58WkjsTkIR81DYUUtatZH0x9JP0ecvxjn6
         Xre9kz826zEHR4okPck/RnVrC3A5u1T28D61uXGtPrxvU+TCAqeQS++Pksdqk8l4IHpf
         APU7kxM04h2kjeVvVtSBQvmoGleyWyN2+r65sebHBmBaqJJbQWOczod8hWHSTm/ocA+W
         xm7doCl4tVj9KdXkxTFwnFAxRPvah0umyqEos9GNcRbq68Z2sW8Q5Bn7Ks8/8eAYw7U9
         9WC75S5zZz2NFe1ePISoPAaoXMfQbeDulL/91gUWmcY0EH/V7yLntd+cnP5oP5ockow2
         Qjdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=S7PQMOqG;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id b8si5809709ile.1.2021.01.04.07.30.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 07:30:17 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 104FUB6j029409;
	Mon, 4 Jan 2021 09:30:11 -0600
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 104FUBfG008093
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 4 Jan 2021 09:30:11 -0600
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 4 Jan
 2021 09:30:11 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 4 Jan 2021 09:30:11 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 104FTFZF093710;
	Mon, 4 Jan 2021 09:30:06 -0600
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
Subject: [PATCH v9 09/17] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
Date: Mon, 4 Jan 2021 20:59:01 +0530
Message-ID: <20210104152909.22038-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210104152909.22038-1-kishon@ti.com>
References: <20210104152909.22038-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=S7PQMOqG;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210104152909.22038-10-kishon%40ti.com.

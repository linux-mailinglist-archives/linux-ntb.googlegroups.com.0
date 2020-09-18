Return-Path: <linux-ntb+bncBCOOP4VF5IDRBSVOSH5QKGQEL4KXE2A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5574926F623
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:44:27 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id q6sf3844393iod.21
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:44:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411466; cv=pass;
        d=google.com; s=arc-20160816;
        b=0OhcSthGwOGdz9PCg8TZUeUYUcplD/dP3VNu198f3ckbiZ+m9cc/6oQZ5NqBGgBT6U
         I8hnzsqnn5oLyp0QCU+ErxbhmFqfAYxEwwssPXpDunvcsmP9ENlx1QKBVeqqb4Mjx2j1
         UD0zRsn44N5KzXIJUWuWk0Z1bF4ElYNUsXuOa6EoMZBE735E5hMN9Qt3s0ysuPTl/ir9
         /TXBrq0oZujot+0Zxy6yeeGjNq5AmNhh9iToVM186pzwjmoYWwE64QUIqCiHdPFSyMP5
         eRg/yUfRkV4dIRl/uFW9XURyOvWiL3JWFEgOU0eg9HVh0FrrMir1Sp7GqQI9Feb+xY0m
         a34g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=wJPq3qAVFFFdr2lle/JX+ql/F71Dp2vo5gQyIGccBng=;
        b=l7mvVijjjU+OwHTvvkwPAtvqVOfE8xdR+q3Y3DphrBZaP+2dKqDGKktVJ0Bn0DEh2f
         895ipY5vdtEwCctem4wx/R9fNA2UAdbEIHhsrxoP7BAldZpRG3aRDc265zcocqPS5wd1
         MP0UL5tQ9gM+sQSGnOXB80l5F51JfGNRZk/aQeLgroljFmFCDTbOfDWEgsMEyIE4bKBz
         KhP/jQyzDEIT1Kms+8XAHv8lVHSeeE0d/KlWijotoa6Vp8Wapm2huTL/0jlJ5EQI8hE5
         /SGJsfqoAk+ZTkACYfM+jJDYvM0WlfNvz9TaXVweW8TJM3Q3e2J22AmBQQy4QohgE+55
         NSLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vU2U7VDH;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wJPq3qAVFFFdr2lle/JX+ql/F71Dp2vo5gQyIGccBng=;
        b=kFwfEq6m+IRwvr7oWkceQ6DnqeED5QGU2TeSpqJ1wv0v+7KMKP9GFV8zLzfJJ/8LKx
         aEw7CCdOPI1z7QYHYEy7hJFpBlOAYO4YsLqjIlwgaPTCJ+18u7GxUaz70ITt25ZsKhi6
         kT4aeSER8XIh33usVY9xsj9m8ngy4MO5lRqAmNdEi+Vfq/O7fTZBGP0n7wMjekB3bDVW
         vKP43woJ9Q3QLlpV6udvCttIZF2F8hfgd0fdXYxPXY5hjHF/f7qicsp9IqAAI/iOcDC7
         WtWJWuvG6An88JIqsuQjutTkngCru5yDpU/KgNHLDAuWoWYCDpEOZCQYEHyvqQNBbTB1
         E27g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wJPq3qAVFFFdr2lle/JX+ql/F71Dp2vo5gQyIGccBng=;
        b=pRN61QTiUWwBz8X8H91j4CAZxWtGmzPC9RgJeaqzDibtJPgF/+m+bC1yPgEcG1rYd8
         BLvzlfxVrqoLH0/ElPglyMAnwxuCNnHdwbftv5xbvhJK8x5/K3vodoGQnxcTzqKuagv/
         qMhIlIYUmdFTJEMWLBll69uqAeGTAL+n/zDfJISMb1Qy5KaU4PA+/vd0sW62xuzUrtCB
         EC2MXIqPdne0RLhEoQGC7OtCfF7aSE98OiWGQnQgkmHS0qimlNNP+ouua5PRu6cY3+oH
         3yPOSxh0P08+vav4xHu1JbQehN49bOyGjvk454OcuSoUVoGUuig53T9BENkR94UN2d/n
         CiGg==
X-Gm-Message-State: AOAM531/9JX/tmOEHs8dRakQTA/a3DSVcs7LJF2NO7eSub6xrKpDAW+7
	qBnbpvuNOWCg4oI+jElfpms=
X-Google-Smtp-Source: ABdhPJylidNufdmuXh2QHni/vKh8zMdsPLATQ5vyckwXFRCl3oi/B13WBcj4rH5p0WrH8NBZkW6Mbg==
X-Received: by 2002:a05:6602:2a45:: with SMTP id k5mr25336291iov.1.1600411466331;
        Thu, 17 Sep 2020 23:44:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:84ea:: with SMTP id f97ls592111jai.0.gmail; Thu, 17 Sep
 2020 23:44:26 -0700 (PDT)
X-Received: by 2002:a02:887:: with SMTP id 129mr30091490jac.130.1600411465973;
        Thu, 17 Sep 2020 23:44:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411465; cv=none;
        d=google.com; s=arc-20160816;
        b=UxiHesbXP6Jr9/dyrASNTz5iku+ma/JRTA5yHASu4c3/E/lXgxqjP4MdqBv8TaM6jE
         TK+RwKkby0daididrtuh8TO/Fb5S642/aiYQcLLn1bvXXqWeWI6tqrEXW6d843cDUSe2
         x3rnpG0C9N5icgDMeUSJsGNnncT7Qytkw2LamVqtLWLD9bx3qEmA1sS0EIPWcYFVy+rQ
         kSlaB47FTLRqzUFXc5eT3b2ybBvz9owVPqIruTUhkHv1tdFzM8B2j1Gt3Qetz/vLgEBL
         Vnx7ahAJ4UtTsFSKfJhWFwN+4jzRSFNuKoigEemxrcyslaZyIYvwdkNEKYR0xRI6p97E
         6GmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=lTz57oIbDoqLeHnWKHJxRenng3YXT0XKq15ddYdluKo=;
        b=sbqD3ZDiAk/wQ+zNKFhXaEctQBCemJxyhvyEW58StW4/Qpg7ULo9Sg2lj6xpSP7NSF
         fbtXMrlqX5xAc7QYjGzM9Fq9HcpTXTO0L7fApLPp6bHcJiqMqdE6aDaW5bEhT/rUbIzk
         VUaAfuh0r5H3UftREC0xKJKr2K/emgD82YfjeiTZK3BfTkmsApf2i8c/dgYAsGtd4ugb
         wvdiMufq+6jVUiwIq2+RtVNeNbdMaqN+2Mi1BUqyg/C9MCNkzGrR+FC15Sdbx+C8D6aH
         CIfqQlzZMx3ZnXtxcO/hPWYm8EQZdgteyVD75KChZEWf9RdAacoFKSS8QMKCOU2kQMJi
         zmrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=vU2U7VDH;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id m2si121841ill.5.2020.09.17.23.44.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:44:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6iJZD015728;
	Fri, 18 Sep 2020 01:44:19 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6iJbI125148
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:44:19 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:44:19 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:44:19 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCT094595;
	Fri, 18 Sep 2020 01:44:14 -0500
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
Subject: [PATCH v5 09/17] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
Date: Fri, 18 Sep 2020 12:12:19 +0530
Message-ID: <20200918064227.1463-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=vU2U7VDH;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-10-kishon%40ti.com.

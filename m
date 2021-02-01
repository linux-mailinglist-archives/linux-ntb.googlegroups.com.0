Return-Path: <linux-ntb+bncBCOOP4VF5IDRBEN34GAAMGQE7PY6ECI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 3849630B101
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:59:15 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id p15sf7842196oth.20
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:59:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209554; cv=pass;
        d=google.com; s=arc-20160816;
        b=GaH5jt7C4T6oAz4OaSOElkUnZXqIznrJhSK6BXlklpelcPy8GQ4JhVBAQ3P/h1jr9y
         FIvj6iNKbpT7/7qmiXRbukaToeToaJaSeURd6uV3kEKu3S9+zL/m4dIw+p2KnYfQx2XQ
         mquQi5O9anaWSRKlyF1GgEkQw0qitSi5WiPHJmx5reww+4agrPZb1HGaFr3m2oRC591O
         LmlIdcsne0KXA4aeBYTEK+QiBfCPCSHhdfNbNdxP7Iof7JAVJSteBEQ0htQVr9AsZhIi
         QoE/e/2KfuXFHLm+p/xT8uolm4EhQkX4YEzUq4fjosBJ5SVXpvMSl7Xcq8KvvqfEhthI
         I+6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=Bt1YzBGWw8/YtbRR0cTRdbZtlLOOWiqcexi/svrIY+0=;
        b=JTbHEFshFG0p6Stx3E24KPaAPYehtRxbVlBllkBr1W12IBdvjUnF7Gp653QB51YY4i
         mw92Hn7yXJxNcCJL1lhpg4mug1w1RaQ+BESLC182H1ucYiII89Jb0qeaoFiwlVNT0vmJ
         Zblv7E3Vf2Gu1XhqmfLr0JCx4bMEQ9BHqUXAmhW0p4mS4WI0gLNOBmVl6ZHxoSFsZ9bm
         di3OBoW3vWfjSzcnax9X3dD0YxPvFBNwLrXNA2/pzOM7Or3waGt6cWEhTrDiFa5lrmkY
         YF5FO133/LMrMbCuXSxeRDzpHtKQANdyN2Wyyn1dx+nixgJ05vvbOgAAx1bu0MsyV29U
         +UEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=PDDyciFe;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bt1YzBGWw8/YtbRR0cTRdbZtlLOOWiqcexi/svrIY+0=;
        b=N3uo/2KqlUKmrFaVD2cSxtevCZnIAdDBoqMSMg9Kz+aZf53NjIYT+nAmZLGpx8vIyo
         DMmJzs/f+zzuyDopNMf+HDApCxueFvJDsR1qt52ZaJQ+0YQml2bRJONShhi+EU6J9Hqx
         HvVZHttgpDp66JPEvQC1Y0FtOTQU63W4sfz6ZZ3PGm8iY9nKEg9pBrJb07GMjGRfXQkN
         2UI7tVxaZqaCgNUzpo7E7TWM0hg4/CIA5IDma9YL8mY0H4cjQIrvgcpWykVpe73W7NIn
         n0HBaXohoe7m7CPBtBMziKqoxW2acKxZDPW7gZzLnLbsNXUpvtnhrgJcFLJeVuNLT4xd
         mrtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Bt1YzBGWw8/YtbRR0cTRdbZtlLOOWiqcexi/svrIY+0=;
        b=Mjb91VkuonBy4UJtYFrPopW0AgxGVAdG8722M/h/cDTY8nSMJQLP9iNXrsmJ/7LgDi
         utljyUqsj/v0BjVWViCdex5keJSby42K8DNmxL/xi1uO1mshF5j4WgIem37x5qurn25b
         zX9ZBCW+gdOV5+X7j5j/cwNmmPZ36l805olvfAT2U60/ferQ0oXDCn7gqEO37B7uZ9GH
         V9IAm7OVswxDqK+iivommHvtOCHDZgHHsEhCvNOXSS/avt4ohkKSj7Rb/cFyyZaVqFTT
         sQpGOkM+Q8zTEfEa3P76xBlKexM1qrRi/a67bPP9UK6y44EpbxLdtxGqeukRpaP3ZjOV
         NMEA==
X-Gm-Message-State: AOAM530VVDLRnvSphKs0v3F5TdfVejd1DzlqC7uHQn7D75haTpNSwU5W
	mNvM43wtZAY1oHQhHNO4Jf8=
X-Google-Smtp-Source: ABdhPJxwBYoEoFI5vEfNMOHYkmkwaotFm/oim+kAmSpikMqdFZAWgrclOfsqDHpMUmAiOEf55/UsPg==
X-Received: by 2002:a4a:11c2:: with SMTP id 185mr13162345ooc.85.1612209553990;
        Mon, 01 Feb 2021 11:59:13 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:5786:: with SMTP id l128ls4314978oib.1.gmail; Mon, 01
 Feb 2021 11:59:13 -0800 (PST)
X-Received: by 2002:aca:fc03:: with SMTP id a3mr382492oii.22.1612209553699;
        Mon, 01 Feb 2021 11:59:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209553; cv=none;
        d=google.com; s=arc-20160816;
        b=Tv5n95VK3nMlKoPa4XfeZw3G7Fq5FUScZvzdH+OFKyx3+rdXhjMimYffYUrtJc3dxL
         9DRMPWxU8XLQy/6WlvfSxw0LpqAbrsBn0aR8XS4axzNc5bUM6oW+9yRdV418H6E6DtiP
         mqjdzZj0BwmRKw0F1zoxaAD/49E0S8YUss239tiTBtrshS4md8XEl29/+4G5zmWZaWJO
         zfZH5T+S9x4TadNqxjphC9tn7uGQj6WXRnJ2CyBkP907E9inIsq0G5lOO4jvkmNkYgBT
         aaaDTLoyQLfx+mMvvv04/EeBy47buWhXnvp/CiyubaQ0rPeQHqE+bFPCJtR5YO884Xmv
         rpSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=lTz57oIbDoqLeHnWKHJxRenng3YXT0XKq15ddYdluKo=;
        b=kHTT1B5wQ+IY4dokgB5Bpj27aDggPMcOWt/gesm92iWMmrWCAbq05yIjnuVaN9MUns
         BCOlygf9mr/E2TcfSnh5zDEDIN8vuKaUtqQ1EXxEk6MQwZPI+unVEdh2iwCrryiWjIqD
         wCtLYHaMjfG7p4w0ZTVoIUDFpJlIslsClpy0TOAzyWdolOleRo8TaMFnuV8GLFXDTbep
         OJSkD9yClNOa7sT1EWXyvHhoLyJysPPhUm1mJbRhBGfKsQiyz2/8jeqxOJ2uix/Gf19B
         05X5v3ntcj86VBobtMaa6c5AK3UQJWFaSZABuX+qyjptX3bIG4QCq8/95CDjFxwxgExc
         Dclw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=PDDyciFe;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id e184si1450985oif.0.2021.02.01.11.59.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:59:13 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111Jx6mB023954;
	Mon, 1 Feb 2021 13:59:06 -0600
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111Jx67I042894
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:59:06 -0600
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:59:05 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:59:05 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQg085814;
	Mon, 1 Feb 2021 13:59:00 -0600
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
Subject: [PATCH v11 09/17] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
Date: Tue, 2 Feb 2021 01:28:01 +0530
Message-ID: <20210201195809.7342-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=PDDyciFe;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-10-kishon%40ti.com.

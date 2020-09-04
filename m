Return-Path: <linux-ntb+bncBCOOP4VF5IDRBG7EY75AKGQEZHBMWEA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 588C025D2C8
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Sep 2020 09:51:57 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id x3sf3221976pga.4
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Sep 2020 00:51:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599205916; cv=pass;
        d=google.com; s=arc-20160816;
        b=EgNfj47GKQQVtO9XdYBRW/9XvR0+fPV1cKV4z3VNrlK6hdwA/EqKzlBiKqbS8fVcNW
         P81RDAFqrdU2B/X+iEcfODI2xN/iyfAkkcDbfvy2EPMTMCJdP8bAz36rqmFPvNXB+64N
         SIbazAt1Az/XT0TU6d/DzpCRryqIbmkOmRdZTmZgQvW18YUuTwH3I7AuB+Gijwy27rOm
         N1pi2OmcSsdutKfPq6BGTPtWeuxM5qKPtsDyJ/rX5yup0kAKovfhWsnzzsTcC+71hLFi
         ECP6uJSI4OX1BjTTko7uyCOXYhJ3yIOJ39jfvjA8m7mjVP8MNgxjUwBp+e0UI/7LXZ3Q
         GLgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=T+adaYp5tfIPj3ayNFdks7z8XNI26nX1av6CFxZNTfM=;
        b=nCthCeS1gVaLxw969+c2vGVwSR6RDo65pwsfnB/zQe7fIvHaqEWd3L0HskVXkEBaLB
         RcmkZSGFyssVlhurAn1hqE7ZyFbokWyK2FcT5XSVNOoEnGL1zDO7MGJkGrL77ziP6bpK
         El8p0NsKnJOne5iw2YKgw+3rGFX+Nr4HDs4XWdaTkj+0EZhJl/4vRPgM92rRqu5FBi4B
         ctDua0wvbuYm/NOx6ewE4k0ByI4Px+v+gqFdUdogWNQL/SFb1Lt5Kwejls6I2cfx9WR5
         XPP5p1Epok9dHYtMuXn2h+3wzj5R9v4jGZcgcHGMdQVFgTKqy1XL02aen0mDCrjiXKIY
         ZFUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=DaUPYH+2;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T+adaYp5tfIPj3ayNFdks7z8XNI26nX1av6CFxZNTfM=;
        b=KWLHoCy2gVoYU3iL/KvmeD6iAY490Fj+oFR7nsnc/IaVI9roXbQyHaZrst97h1uu90
         opDebsrqLcuHBnvT3e9W20Uby4pQqHab23dnrtO1N9FGSuufkVRnr5lzd4S1iUD08VDb
         8VbYqUNW+8wRIsfYB7EkFOto9J0AQjjbtcTZ06eWKB7jcNXRG/S/YwnLuJ05DMAGZ2bf
         XMdu2KnD5yPOSxVeiuEcI53P9spTtYAyoOVtnIKbCuvjgpgjvswhnYmmpHOCBJUtmeOi
         356OftAQxeOqdtWCf8j/w9cXYpBmMuonMgCTXhV2nN5n9sQ/4AIRiJC3taRO14kqLfQA
         I1eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T+adaYp5tfIPj3ayNFdks7z8XNI26nX1av6CFxZNTfM=;
        b=WjYoiD70gCAiASKlo3rqocbZKlrBFYC+OqbATq8BwaQdZ27+lM/Sp/bobg/dIfJR/1
         IeVfAshQvUHVq8xV4TSMYuBXp+PB7Fpat5kh53d/PGtk4kLcdxQYmlFNx93PyGpBkRXL
         IqvpB9kuI3U3YqGvIgblL7Orm97euPSFj25icnAhfWyeq4DEUXsrufltbZlIQSMQ4/rV
         OuSiXtUIVW2/ouAmE+74qCqhu1IKK1YEEN7cF/ttbpVySDHOtdWWHIkvpXXdWr0OQmtI
         ufUY/gXeI27v8+qxqgQg11Dmq32Ks4hCk5DEhc+cYxwUjclTROM9KGi/MTF7yP4sJyHz
         jO+g==
X-Gm-Message-State: AOAM532mT7O5tYnUMtl2dwgu4RJRHs45BAg5RDcAURuAaO7D4Ii9qVnX
	/g5KYXxfS5poS75/XrtWpGI=
X-Google-Smtp-Source: ABdhPJyveFkCZqDZCllmiji75uQ/DBQtM3LZoQ0V3IQjDgyi/RJ1+fc1Qu5a4209eM2jjRRJANVkpA==
X-Received: by 2002:a17:90b:fc4:: with SMTP id gd4mr492059pjb.129.1599205916069;
        Fri, 04 Sep 2020 00:51:56 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a65:620d:: with SMTP id d13ls2657436pgv.0.gmail; Fri, 04 Sep
 2020 00:51:55 -0700 (PDT)
X-Received: by 2002:aa7:9910:: with SMTP id z16mr7542757pff.120.1599205915589;
        Fri, 04 Sep 2020 00:51:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599205915; cv=none;
        d=google.com; s=arc-20160816;
        b=X6iD1w7wReMWk5wrS6L96YeywlbjoPFQr3+W/SepHmAi99h/Rx8re+DNTPdRMUo/+e
         cczMyN4eA3Eoa//LFtfm6J7RA8IJtiTnBTQ3jqvhfqZgH2L3r96zAU7W04KYyO3e0VJm
         qhqgos2p+EO3QDPSCrzlhjccQrHFb13zDaKhTiwmZNzj6DdcZRlPXgY4aeX3JUA1kNoX
         dBZpR27O+b0zavSCzdPO1fipq7MtmDAgSEK5nAuBLV/H0SFlWw6F+JgrhHZdiHSS9bGo
         Q5ysu/UBjSDNFcn772qIS/38vTOcaYQ1ZHZnrRkOqLcF/2IbWLM0+UkPI8MyHRuD4Nw3
         JDWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=lTz57oIbDoqLeHnWKHJxRenng3YXT0XKq15ddYdluKo=;
        b=axU/Y0RgBsIyHNaMdAnGdYrpKsGqBxjFwh5E4OmI1PrYP7QTSvozUveZ7GDJ0GJ6DC
         2Ydz3xdq/tp7I9/d/qCwMZEU2ifGdnsq/JVmyX2kZ1AOBoqrhGUnQt5+Jogn7WIK2iO2
         YCBxYX26b5Gjcirh6Y2AEmtiNlxZtwoLzcbhv+2QgKWs/QMUAFZwnIGm9v6/4EYa2AmI
         6V7wMqJ7wcp5fhbUMlpbudbscHfo5HeJVT9FHRFHTXK+KLuv2DDPDN+7ZFwyPMMyaIyC
         nALXpOCn27ZOvdeFkIjxuFtVFTY10R8Oh5ZHA0b7GEnVPhlEWO884FWttPCsaX/CjIQ3
         pIqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=DaUPYH+2;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id l26si416519pfe.2.2020.09.04.00.51.55
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 04 Sep 2020 00:51:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0847plBw017998;
	Fri, 4 Sep 2020 02:51:47 -0500
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0847plda003469
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 4 Sep 2020 02:51:47 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 4 Sep
 2020 02:51:46 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 4 Sep 2020 02:51:46 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0847osNA058796;
	Fri, 4 Sep 2020 02:51:42 -0500
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
Subject: [PATCH v3 09/17] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
Date: Fri, 4 Sep 2020 13:20:44 +0530
Message-ID: <20200904075052.8911-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200904075052.8911-1-kishon@ti.com>
References: <20200904075052.8911-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=DaUPYH+2;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200904075052.8911-10-kishon%40ti.com.

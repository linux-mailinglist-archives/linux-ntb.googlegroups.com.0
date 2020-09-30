Return-Path: <linux-ntb+bncBCOOP4VF5IDRBA6M2L5QKGQE76VJTAQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D32527ED39
	for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 17:36:37 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id h15sf1287117pfr.3
        for <lists+linux-ntb@lfdr.de>; Wed, 30 Sep 2020 08:36:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601480196; cv=pass;
        d=google.com; s=arc-20160816;
        b=jqZFPGoqTlNp1VuOccKM+aEqoVLE7jhpKNplfFpm7nPsSSOV9bAj1BB2bkNIFDwWX0
         uuZgv2lKYDl2BcSv4OcP9gLVBCHIAP2Qd184pIaMfjbM0/nLRNZfqNEpofgOBn7rtxCG
         T2IiN8CCxgDhVMRIP0RPC//C5epyIbg0bd5aAKLDnC3EvX1F2TcKNRgkKPADP7LqA7Tm
         qAx44Jztkm60fyeSZo1AprjTIaZufWdxnkMsyaffMyWXajJ2XpH3xdBjB6TfjaMb91vS
         lCvfmhqdkgP+lEtwItLUIg+TVa9pw24qHDmSI4t+Pa0hRhXE7NtkjQkxUw0l64mCEGa0
         wEmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=rwJOwRxlBnXCIQ+fGnTRv4VfljCMkJdOLEZaFvHBbYs=;
        b=PmAOGX8lGol9xyL8I+BWGD96SUY9oKYmvmdia1z48z0Cp4RutCv1iuEAsd4VJV2UVl
         z+X5jBwbXMRttcXMM7cAhvfcbTU4nJXUimBbigHum5Zovsgp4agTJ8NiMV0X7S4L1sre
         z/YIFQN9GjbodbfYc0rDHoguJumGXGXgBvoC/2QyC1GjSWSypC6hW5D6eH5bfZ+HVnL1
         G/zwDL7Yhx51+zC+gL2pHUHap2vPGNLIFwq1t2BA1Tm5GJRIx80LnKqZXs4vOV83Vq7W
         BH6KCfEiZUUMAYgKUpOChNl1bDkiUI2iS10ghmDt0t+vjcb+ahTZgCscSSlxVJIUh/1b
         50rg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=iOK6cbWo;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rwJOwRxlBnXCIQ+fGnTRv4VfljCMkJdOLEZaFvHBbYs=;
        b=Nxix6rmdJPI6SGYFdpWRJsTxhi9EcG8EQWtF8syL0mHZNQ+rc+eKvug92dKJfnb8xV
         CANr3moLSlsL7+2WMoW2kNwalhzi/G1M2o/7LHZFs5Ykqu5bt0v3RDlYiXIsKL3Jgdqi
         jZElNuruvs53IQJPNFI99rVbId3VjtcbDlKiav4t/l62YuWEyip7MGGhIxd5RNE1KACU
         SxMPyT6W2PoS4oDB4nNJKwc2YeqDgwQtipPM5XICE5dwdhO6CDiKk3IQvNNoOTBGNRK9
         royxsoWp7TaE/OvZ78y/+pjulQ94ZClwJ8KP5QbJQ4mXVAETRhoExseA3CTbE2YOJxcZ
         Ji0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rwJOwRxlBnXCIQ+fGnTRv4VfljCMkJdOLEZaFvHBbYs=;
        b=DT9oJYEC8OPDGLILSNuuHNE/adHZdYF9HXU0vs3EqwUSttvz6juOJwkx+GI6SlmHPx
         97L6R8GO/4r2EgHUpPWLFnBZTQdXwGLqBQHBwtUbQ4HqFWy8fU8sRmlriXxAa9oT/pY6
         CfYBI0eEMk+02KLDn/dG1+KD3Q2/8wd+zTPL4XZVrVIUDMHojl3sGQGAGTOLp7z0nx18
         t7KBR3OhoqmPcJwtWbrzN2faar5cOhrm5Atwo/AqsSkS7Ek2fWrK6WKpO49QKrhYWaJA
         MqAKHEEWURC2aVyWED8J/jAuof7lOUjR1J5oRo1mMpPEIRt3bjVQE1nGFxYPPWhyOz+w
         GFwA==
X-Gm-Message-State: AOAM530cYjvZnWLsmP6N0TucowaGS7CELv+Zv/FbeLVnW5d/uNkl1D/K
	y37qgWzDywqarGQk5CBtOxc=
X-Google-Smtp-Source: ABdhPJxOlSkj4Mkx2vFrU1TKSLx8tHWMBiD/5wsSft36dwxNOHbxGOfQCCntXKVOqRuVdNrZNQYNAg==
X-Received: by 2002:a17:902:d686:b029:d3:803f:1c55 with SMTP id v6-20020a170902d686b02900d3803f1c55mr1198728ply.60.1601480195911;
        Wed, 30 Sep 2020 08:36:35 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:3855:: with SMTP id f82ls994616pfa.10.gmail; Wed, 30 Sep
 2020 08:36:35 -0700 (PDT)
X-Received: by 2002:aa7:8812:0:b029:13c:1611:6537 with SMTP id c18-20020aa788120000b029013c16116537mr3373200pfo.9.1601480195294;
        Wed, 30 Sep 2020 08:36:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601480195; cv=none;
        d=google.com; s=arc-20160816;
        b=BzAdrNzwj151K5lEi/LiNuveQsQ89q2snKregmRfFnYVUGSjOW6T02PEDHdTCO66Tk
         eFaUKf4sqt/SvCS0V+l5MGyBo5/igpbfndgan221KUBlklNOB76Vo1fpVdyAb1OvPz/m
         5pbjx6sOWqaOCPoS1SwcwwKR4pRKDzQSv6rj5azA6vpbMLmyK9/CyfejhOp/00/PLW7b
         cZgK5E2yT/6vXWAG5r4TCSdOpzoNy8CBabRal6Pwlk2jTg1IIL3YAxrixkTodNRv59LU
         /b5yPS7xNWpxF96cd5NMCcXYkvLZA7bf3WfTAWxM+n345aGUTyvL+8DPBQ9uEaACMACC
         ++tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=lTz57oIbDoqLeHnWKHJxRenng3YXT0XKq15ddYdluKo=;
        b=J+y3MHYGbwo9E+KUc4r3xMyHkOwagLhAP0P71amEZRsa0DV9JbxxqlhsVxCoIkmUO7
         J1rOCvSUqHeeEwbRH6zCVdz1AcuRQ4wB54u9iC3e5wxySdjsItQupARu0gHJM36wz5dW
         e72S3TSdSpthjZYmgv6ADhjiD89Do2Pvm8Ic+F5sbNccQzB/W0p9uGVOcJW4Up515ti3
         +kZ6+7Xpjtu86DETb3p5bwY2k5LXqEP0Z7Jljng9zQWq8sjl3wARAjsIySJoc7GkOu7r
         HUVAGQ1wDpE2Mdbs+TKxo/Fw4c7/CTT0Vx5UHdt/++DQwdY6cQEz6HskKruQyj2jxkqD
         rUEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=iOK6cbWo;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id j16si123442pgj.1.2020.09.30.08.36.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2020 08:36:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08UFaSwB076644;
	Wed, 30 Sep 2020 10:36:28 -0500
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08UFaSED024588
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 30 Sep 2020 10:36:28 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 30
 Sep 2020 10:36:28 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 30 Sep 2020 10:36:28 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08UFZLZY033254;
	Wed, 30 Sep 2020 10:36:23 -0500
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
Subject: [PATCH v7 09/18] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
Date: Wed, 30 Sep 2020 21:05:10 +0530
Message-ID: <20200930153519.7282-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200930153519.7282-1-kishon@ti.com>
References: <20200930153519.7282-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=iOK6cbWo;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200930153519.7282-10-kishon%40ti.com.

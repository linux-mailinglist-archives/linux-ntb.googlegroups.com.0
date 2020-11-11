Return-Path: <linux-ntb+bncBCOOP4VF5IDRBNMKWD6QKGQEHY6EDUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id B861B2AF4FB
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:37:26 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id p17sf1618734ilj.0
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:37:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605109045; cv=pass;
        d=google.com; s=arc-20160816;
        b=yGcJOFFUsZNNhq3BGBxT3hfth7iL36FKdd8Gp8rtPl7Wife0+vMNhDH0hjIkN2XmEY
         YVfxLo/cGzVHfnpwAEZC435Tn/OZiyG6dS0xdmVfFYjtQoHxUasn/ERSH5QkDThQOKln
         e36w2GbXI303jyXWX2C4lJfyvnJD7NzoxUcP+3ihMYhxmKMHIhQ/nHcwxBEZFNVCIFd8
         dbodeW7UBQWwHN4hwgvhuFToxORGaZ+t+IvhXbLFWYuVWXTSNjtKdM/oF370aeG34K53
         5gQ+BzuT9T0w2JM6rHSTHY0ojttQG4GAUxCpVa/RnqUY/g4Zo7D0wByvNQyxkOKOraLL
         LFdg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=8AZ/1cmbVyzXC2ryx/YYEPlC8WEZVcOwMob2+WInDHM=;
        b=Pq67tXwxaGN1kie764ksjU9rW8dufit3Z0onb1qjepJHZedGe9AMWI7lxnNS/Lv9Vf
         8lFj27cvJRMm+fnQKH/93qbszkl4UtffVpqMIu8UC4ovc0rE4lgVWYgUgqTURPbN/R/z
         xpFRhmCZuAN6hiZ+9JtFL76qn/xfK4oR/2M96YZbPGWWV6h/xxG54y7feFoSIhrs0t92
         bKsxl2Wv+kEgAhx56QV1yiNJDktesY5k5hfI0a7f3Vw4UPX6D2U/KPSk/GjAq7ytP1mH
         vEYg9latm4IBlRQtryZnLjJfPE1sTO0DorS6AdUBBEZXHWdQ4ZXrP6ZBM9i77HUBQ3HS
         yj7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=nefWn8YA;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8AZ/1cmbVyzXC2ryx/YYEPlC8WEZVcOwMob2+WInDHM=;
        b=lEosDgioX9RzXAwlk+9bBQknpqLdJY6pA0xPDgFq+xdfNEyE11ctTXitPsaou+oFTl
         RDsU3mXcnaVK374C6we0eOoTqKFCmyB9mPk0SvRaTGI+mSLIuy5eY90PfofV6/UNDvfS
         QEwaByCJotI2PMHZpssr8SflOU8OA+yrVHObq/lF7o4Z4FvsSw+7gbrT2iT7JLqtiUOS
         FfKyXTgAMfIoO/+DvYPCi1Ll5p2GH79nfNLNaNSeo+Rzw7k9Xir8P5jc/CBbSN8yimUb
         ZgCESyWNoFlCtG73+XggBN2L4trUYKsbKQd91JsfstCBmRqWnnUJ9Z0GvveYkGXAWBHa
         nO6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8AZ/1cmbVyzXC2ryx/YYEPlC8WEZVcOwMob2+WInDHM=;
        b=kSfNp6VBm4U9/xbzvbPL/f7oJUCvAZ6DFcsNK84oL5pv0xv/A/m94bWy2NQPdEBt8C
         jpQlKVaC9zCRXmLDT0OcuzIRDBOl3L+NKyCaEKCFNLQWaXNQc5hfjYR2GSAvzSPWPlJP
         7iLL+3xklGxcIluJrSG2Qf2LrVZWR65W+AsJe3AcLPsEPMNjDHCxe/2YdJJSmn5UQS1v
         8b6um/uJXuF8abUERSj3DzYQbccDBJysjBQ5CDsAtQ1nIAStcFhATT8X1O/vsX/fMjXH
         S/l0Et1edKLZRrecIO0jiC+r0Ekw6/HpaTm571VBs9V6pztjl/cyr+AoR+cHS/83r/Un
         lEXA==
X-Gm-Message-State: AOAM532lbkkEmKFuyTCbVf8g5PSjkdwjaZVVFuuCEkUB9G2O+UIn19s0
	AXPPDuSvzaIOufvgTaV+93E=
X-Google-Smtp-Source: ABdhPJxtYyYZVi6rBVtWYKUEfu+fNot1wMQyBKhAcwTQ67hZ+NgOaQsgDWWkKw4Cj/Jl18PsnOI83Q==
X-Received: by 2002:a92:4850:: with SMTP id v77mr3479487ila.229.1605109045638;
        Wed, 11 Nov 2020 07:37:25 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:d247:: with SMTP id v7ls55703ilg.0.gmail; Wed, 11 Nov
 2020 07:37:25 -0800 (PST)
X-Received: by 2002:a92:5a46:: with SMTP id o67mr20039919ilb.26.1605109045197;
        Wed, 11 Nov 2020 07:37:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605109045; cv=none;
        d=google.com; s=arc-20160816;
        b=Fv1PLViSMAQfdYCmcIbv42kzXIF0yo49RZvYLD7+Bo5P0y+4izRW5y1lu4Wsa0nfqB
         dMMRdnN9dPHVIPXBgV7W9v00p5kSo55O880I5KQ9CLrmseIK/qsfA7bHTRtMp3cY9TKC
         tztzMMhwGvYZjYtisoxKR/MsaLZeC61ZhMMGOPZCDhwTtA+9m4ReAOPlg8hnvvMIXNjD
         lrWAeKK35SupXF+1NY3OGAhzTVsFYZ64ZJGkqUTIknd4+FDAynGqoFtu9BQ0ikj1Cbyf
         DprKq9S6+8VNA4ToM1NmLk7tEmjv1VjnProTu1U2s+KNwgyMq+3mnNHFgAleVws378Zq
         345w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=lTz57oIbDoqLeHnWKHJxRenng3YXT0XKq15ddYdluKo=;
        b=b6N0N4ue4+sxsL5vNT9BXczHmg60PFg75wh10dRFJcBtG/ctbymIxMPU1SJXgKjy0E
         NbwuvzG40rm2GsBKSuTwHkr4VEQ8k2k9tD9E6oKBoMhIpbWfbWETrKDu9Qi/tpZsFxMB
         GHzkKB4l6M2y87YXg0DuxHqMq6eSQT1FNm2Vs+j2o8s4n0yD9EmW6zc/j0k08h4wDS82
         yPb/Kx/Mb8N7r3ZQNs4Z7tJBpvB+1Qlf40Tg+Qe73EcoxQjXsfAcrERfs5jkKypvQtAr
         yzQouv5f9RYza/5fv0+qY9gT0DsAM7zpSDgYQ5DRQ3Mo8NoapDfMZrE2lwPvqYiaCeR7
         QXog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=nefWn8YA;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id n9si92982iom.3.2020.11.11.07.37.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:37:25 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFbHBj125098;
	Wed, 11 Nov 2020 09:37:17 -0600
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFbH9Q113556
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:37:17 -0600
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:37:17 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:37:17 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa040042109;
	Wed, 11 Nov 2020 09:37:12 -0600
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
Subject: [PATCH v8 09/18] PCI: endpoint: Add pci_epf_ops for epf drivers to expose function specific attrs
Date: Wed, 11 Nov 2020 21:05:50 +0530
Message-ID: <20201111153559.19050-10-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=nefWn8YA;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-10-kishon%40ti.com.

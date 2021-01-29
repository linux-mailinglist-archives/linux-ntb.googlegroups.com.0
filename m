Return-Path: <linux-ntb+bncBCOOP4VF5IDRBF4G2CAAMGQEKXTNJOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3f.google.com (mail-qv1-xf3f.google.com [IPv6:2607:f8b0:4864:20::f3f])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF8330891E
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:44:08 +0100 (CET)
Received: by mail-qv1-xf3f.google.com with SMTP id u8sf6072495qvm.5
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:44:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924247; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZAxFn2RzKiHBFYpNcEBbwkbCj6zZxdMjAs7ZplEMV1CyzG1DlCu8MYA/R8WNqyGhId
         mgn5jgJ98/rQt23TqoCbyhniQ4SHODAsME6DWJNuWVNUSxPTjkgL3veJIlxve8/wTENX
         084uerdH5kd66qDIID0Id8HAWTRrxGCMt9ZNCecviEUYpjbgXlAmMEu2HNLcErReVcl2
         SQ/0/dk+bKwFYpBbNlA/hNcAAGnO4nfCrNzZRGCinJAoKVYsSUHPhvJ8LzRsqnjbmjVP
         elhWzIFw46tlvcKjT/hDW1Ot1q/UpScOop9k26NSVH/v+cHXw304O4Tb/D+hZoHafRVY
         0uvw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=VmPMTHxwdaPxO5bdiyP/1Cp4WQcngLb0c/uJVaQgryw=;
        b=Dok0f9k4X18ejf86Uh2OmOTSrscJ8EN1AihrmbUMMYi0Tzil4J4o1pVqT4qyTdy4L7
         kj5gr90OyOnUapRdLQ9rlqDD+m4xSyxovvg48nehx/xdRYwD+LvfnHmONnaMpm8oeP1g
         VyHnNiqivyieQcX1bWHRU0Nt1ZvRUt78c9VnlN9XzgHSRiHstrSjLxVasAasN4BL+3NJ
         w+fyMkF25QV83wnuqXrWmpZuLcDA8imG+PgoqK5+Ba9iqlbR2oKYoVai7QDxB/YXRV8L
         yQSK+zxDQmL4om9c59DHdj/bi4BszsO0wGLzZsyDOIzjVUKgKdriqkUw4lY+UnZHvoDC
         WHaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=AkQXcVyb;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VmPMTHxwdaPxO5bdiyP/1Cp4WQcngLb0c/uJVaQgryw=;
        b=SN0eRW5vz1Crs7wwaEcz+1VJ5aZnTp2+nla1OiouwLpgrLXj1sSbULhPbsG8o+NC2S
         lfbwx8dIIvBM023IAKy6r8P3bALLWnSNTskDlUtJSak6kwGQulIZ0eAF4tWK+M/MiRzs
         UZQfIb1wvDVCVkfN53d7S4flwyBp8tmgumMTD1gJfuKmDoS2EviVlnuMsWIFaWSHbaR5
         Xgo4CCcQqvQJXnBbakjDC33Jwq8x0WL71HzpqEmt7FOH4KZyUaSWsTux5gqtR1F8qgxV
         oHmcNsyelZ8grA4toynSmNGBWXRgKPt3mQALFoOpIlFRIN4SLMcXzRlqSpHiD4KAtwqP
         OkCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VmPMTHxwdaPxO5bdiyP/1Cp4WQcngLb0c/uJVaQgryw=;
        b=DBhof/x2b+2hME/9ktKSazEfk+Nbd/Q3De/Qrkn11LiZ55e+CGTcUzzHIorX699iqV
         4LKMAv+XEibBOLODgPrvXv8Ey717hculgERGeUgWvJPUW4A2bUQCjnOgAXFJUPkTJasv
         4AVj/436c+y5bXagLpoSrVeuEvqRC+Fj2Pt073SaKNJ5kQ72YtiGf9yHGMXxvGn53brO
         lbHa/6RQeoO17w4E8jVqS8kjS6qGQ9N6cz851gYClid13x6OxyXleM0VT5Bz5i0SCj+g
         lkXzsCi4cOLRXRyKOmZB36LpaaVyjRlYqZT5ek0yWsecqdcDaFICa/x1GsDT5R2WzxYU
         ssYw==
X-Gm-Message-State: AOAM531KNmPKsFaphFx5cbGwpDcFrSHkwAuuuUd1GirVTnxVEs1QkCGw
	kZtq0O3wKuMcc49lBRmHvbM=
X-Google-Smtp-Source: ABdhPJz+to1HQrEPS9amC+GD8KU4bT0fLurZ15si+B6ytvfhGV36ycFgbCHOYaXdGcHeDK2QNuXckA==
X-Received: by 2002:a0c:fcca:: with SMTP id i10mr4048645qvq.38.1611924247825;
        Fri, 29 Jan 2021 04:44:07 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:758a:: with SMTP id s10ls3350669qtq.2.gmail; Fri, 29 Jan
 2021 04:44:07 -0800 (PST)
X-Received: by 2002:ac8:100b:: with SMTP id z11mr4053757qti.60.1611924247375;
        Fri, 29 Jan 2021 04:44:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924247; cv=none;
        d=google.com; s=arc-20160816;
        b=ufKSQNwwcf/D7/EhEuRt4eHyFtR4XlYJ4XLAHwMKVl4feZpI106cB4kgfl4g2ypGgO
         yI9bEFwca8joN7Js/K5P5U8VLOpJhJbwwfvbbbM8D0/61UGhgAYn/IY2aIlJN0cuLSmn
         d5+2oMR65q+DBWHJlsouclOvkmYvsS2CrkuOrrFnIXPb3a2BCi5Qj/F2cF0y9/Q+YAJx
         QLKMkrWb1vivCKEj17XpEpokOWjp5r1ygkjJFqMHZ8LrMA7n0UmtQQihVECpEor4tQS4
         RyNk/nxKJHL1cbf/qOEzycHGgpQ8Unwic8SwQO4/S3/13ww75cNUQC1jKRUQeJteaDRe
         /yKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=z3Tw9eXfcOK90ruy3aMeRyVdcSzDrEL/G+eXeTQ/vG0=;
        b=u902AKafNAK4CIS/v9xhrsFGLNUhwyl0aJCTXLcxE14ict3gJoVfzHdk546pAWp3cl
         R1XCQEWnlNgnRBysPRYnm+lse96siYgok62ifBPTa+CAp/eiO2JwmZfuib4FxGZri+Gu
         zJiVY/zezi/kSy2IH9eEol1W+zSwhDW4xgT+Vnsv8tKRH8+A9Cro70HOmHyegGx+zRC+
         akLrYrsJJx9C3Qa7yuNWUVg9LbDTWOR5Px6nSVNF64+qY4GhLiIQHprmt47hG8U+lx/z
         c53izvcHfvtXj3SSwep5QyNihQczbb6cC2Et+atFok3a5/2hFijdh6C7peCbGn0WuQZ5
         ctRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=AkQXcVyb;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id j40si816665qtk.2.2021.01.29.04.44.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:44:07 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TCi0JB024240;
	Fri, 29 Jan 2021 06:44:00 -0600
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TCi0lV078611
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:44:00 -0600
Received: from DLEE104.ent.ti.com (157.170.170.34) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:43:59 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:43:59 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDW6075758;
	Fri, 29 Jan 2021 06:43:54 -0600
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
Subject: [PATCH v10 07/17] PCI: endpoint: Add support in configfs to associate two EPCs with EPF
Date: Fri, 29 Jan 2021 18:13:03 +0530
Message-ID: <20210129124313.28549-8-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=AkQXcVyb;       spf=pass
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

Now that PCI endpoint core supports to add secondary endpoint
controller (EPC) with endpoint function (EPF), Add support in configfs
to associate two EPCs with EPF. This creates "primary" and "secondary"
directory inside the directory created by users for EPF device. Users
have to add a symlink of endpoint controller (pci_ep/controllers/) to
"primary" or "secondary" directory to bind EPF to primary and secondary
EPF interfaces respectively. Existing method of linking directory
representing EPF device to directory representing EPC device to
associate a single EPC device with a EPF device will continue to work.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../PCI/endpoint/pci-endpoint-cfs.rst         |  10 ++
 drivers/pci/endpoint/pci-ep-cfs.c             | 147 ++++++++++++++++++
 2 files changed, 157 insertions(+)

diff --git a/Documentation/PCI/endpoint/pci-endpoint-cfs.rst b/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
index 1bbd81ed06c8..696f8eeb4738 100644
--- a/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
+++ b/Documentation/PCI/endpoint/pci-endpoint-cfs.rst
@@ -68,6 +68,16 @@ created)
 				... subsys_vendor_id
 				... subsys_id
 				... interrupt_pin
+                                ... primary/
+			                ... <Symlink EPC Device1>/
+                                ... secondary/
+			                ... <Symlink EPC Device2>/
+
+If an EPF device has to be associated with 2 EPCs (like in the case of
+Non-transparent bridge), symlink of endpoint controller connected to primary
+interface should be added in 'primary' directory and symlink of endpoint
+controller connected to secondary interface should be added in 'secondary'
+directory.
 
 EPC Device
 ==========
diff --git a/drivers/pci/endpoint/pci-ep-cfs.c b/drivers/pci/endpoint/pci-ep-cfs.c
index 6ca9e2f92460..8f750961d6ab 100644
--- a/drivers/pci/endpoint/pci-ep-cfs.c
+++ b/drivers/pci/endpoint/pci-ep-cfs.c
@@ -21,6 +21,9 @@ static struct config_group *controllers_group;
 
 struct pci_epf_group {
 	struct config_group group;
+	struct config_group primary_epc_group;
+	struct config_group secondary_epc_group;
+	struct delayed_work cfs_work;
 	struct pci_epf *epf;
 	int index;
 };
@@ -41,6 +44,127 @@ static inline struct pci_epc_group *to_pci_epc_group(struct config_item *item)
 	return container_of(to_config_group(item), struct pci_epc_group, group);
 }
 
+static int pci_secondary_epc_epf_link(struct config_item *epf_item,
+				      struct config_item *epc_item)
+{
+	int ret;
+	struct pci_epf_group *epf_group = to_pci_epf_group(epf_item->ci_parent);
+	struct pci_epc_group *epc_group = to_pci_epc_group(epc_item);
+	struct pci_epc *epc = epc_group->epc;
+	struct pci_epf *epf = epf_group->epf;
+
+	ret = pci_epc_add_epf(epc, epf, SECONDARY_INTERFACE);
+	if (ret)
+		return ret;
+
+	ret = pci_epf_bind(epf);
+	if (ret) {
+		pci_epc_remove_epf(epc, epf, SECONDARY_INTERFACE);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void pci_secondary_epc_epf_unlink(struct config_item *epc_item,
+					 struct config_item *epf_item)
+{
+	struct pci_epf_group *epf_group = to_pci_epf_group(epf_item->ci_parent);
+	struct pci_epc_group *epc_group = to_pci_epc_group(epc_item);
+	struct pci_epc *epc;
+	struct pci_epf *epf;
+
+	WARN_ON_ONCE(epc_group->start);
+
+	epc = epc_group->epc;
+	epf = epf_group->epf;
+	pci_epf_unbind(epf);
+	pci_epc_remove_epf(epc, epf, SECONDARY_INTERFACE);
+}
+
+static struct configfs_item_operations pci_secondary_epc_item_ops = {
+	.allow_link	= pci_secondary_epc_epf_link,
+	.drop_link	= pci_secondary_epc_epf_unlink,
+};
+
+static const struct config_item_type pci_secondary_epc_type = {
+	.ct_item_ops	= &pci_secondary_epc_item_ops,
+	.ct_owner	= THIS_MODULE,
+};
+
+static struct config_group
+*pci_ep_cfs_add_secondary_group(struct pci_epf_group *epf_group)
+{
+	struct config_group *secondary_epc_group;
+
+	secondary_epc_group = &epf_group->secondary_epc_group;
+	config_group_init_type_name(secondary_epc_group, "secondary",
+				    &pci_secondary_epc_type);
+	configfs_register_group(&epf_group->group, secondary_epc_group);
+
+	return secondary_epc_group;
+}
+
+static int pci_primary_epc_epf_link(struct config_item *epf_item,
+				    struct config_item *epc_item)
+{
+	int ret;
+	struct pci_epf_group *epf_group = to_pci_epf_group(epf_item->ci_parent);
+	struct pci_epc_group *epc_group = to_pci_epc_group(epc_item);
+	struct pci_epc *epc = epc_group->epc;
+	struct pci_epf *epf = epf_group->epf;
+
+	ret = pci_epc_add_epf(epc, epf, PRIMARY_INTERFACE);
+	if (ret)
+		return ret;
+
+	ret = pci_epf_bind(epf);
+	if (ret) {
+		pci_epc_remove_epf(epc, epf, PRIMARY_INTERFACE);
+		return ret;
+	}
+
+	return 0;
+}
+
+static void pci_primary_epc_epf_unlink(struct config_item *epc_item,
+				       struct config_item *epf_item)
+{
+	struct pci_epf_group *epf_group = to_pci_epf_group(epf_item->ci_parent);
+	struct pci_epc_group *epc_group = to_pci_epc_group(epc_item);
+	struct pci_epc *epc;
+	struct pci_epf *epf;
+
+	WARN_ON_ONCE(epc_group->start);
+
+	epc = epc_group->epc;
+	epf = epf_group->epf;
+	pci_epf_unbind(epf);
+	pci_epc_remove_epf(epc, epf, PRIMARY_INTERFACE);
+}
+
+static struct configfs_item_operations pci_primary_epc_item_ops = {
+	.allow_link	= pci_primary_epc_epf_link,
+	.drop_link	= pci_primary_epc_epf_unlink,
+};
+
+static const struct config_item_type pci_primary_epc_type = {
+	.ct_item_ops	= &pci_primary_epc_item_ops,
+	.ct_owner	= THIS_MODULE,
+};
+
+static struct config_group
+*pci_ep_cfs_add_primary_group(struct pci_epf_group *epf_group)
+{
+	struct config_group *primary_epc_group = &epf_group->primary_epc_group;
+
+	config_group_init_type_name(primary_epc_group, "primary",
+				    &pci_primary_epc_type);
+	configfs_register_group(&epf_group->group, primary_epc_group);
+
+	return primary_epc_group;
+}
+
 static ssize_t pci_epc_start_store(struct config_item *item, const char *page,
 				   size_t len)
 {
@@ -372,6 +496,25 @@ static const struct config_item_type pci_epf_type = {
 	.ct_owner	= THIS_MODULE,
 };
 
+static void pci_epf_cfs_work(struct work_struct *work)
+{
+	struct pci_epf_group *epf_group;
+	struct config_group *group;
+
+	epf_group = container_of(work, struct pci_epf_group, cfs_work.work);
+	group = pci_ep_cfs_add_primary_group(epf_group);
+	if (IS_ERR(group)) {
+		pr_err("failed to create 'primary' EPC interface\n");
+		return;
+	}
+
+	group = pci_ep_cfs_add_secondary_group(epf_group);
+	if (IS_ERR(group)) {
+		pr_err("failed to create 'secondary' EPC interface\n");
+		return;
+	}
+}
+
 static struct config_group *pci_epf_make(struct config_group *group,
 					 const char *name)
 {
@@ -414,6 +557,10 @@ static struct config_group *pci_epf_make(struct config_group *group,
 
 	kfree(epf_name);
 
+	INIT_DELAYED_WORK(&epf_group->cfs_work, pci_epf_cfs_work);
+	queue_delayed_work(system_wq, &epf_group->cfs_work,
+			   msecs_to_jiffies(1));
+
 	return &epf_group->group;
 
 free_name:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-8-kishon%40ti.com.

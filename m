Return-Path: <linux-ntb+bncBCOOP4VF5IDRBAUDQH5QKGQE7LJDCJQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43c.google.com (mail-pf1-x43c.google.com [IPv6:2607:f8b0:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D63D269D03
	for <lists+linux-ntb@lfdr.de>; Tue, 15 Sep 2020 06:22:27 +0200 (CEST)
Received: by mail-pf1-x43c.google.com with SMTP id o184sf1129176pfb.12
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Sep 2020 21:22:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600143746; cv=pass;
        d=google.com; s=arc-20160816;
        b=LKmWEIKoYb9+kYbFcX4wqzDsmugVd4iQLLFk9l5DqI70tp3ppmP4S5lSBy/D1dlZPo
         p2vc3nGFGEvFYHnKcmWrHqwiqvK5LxrlL+trdAHLsAU4d+pcq+uRvCckpFTuYTgLgx5D
         RFsCEOJYZGCCzpRfzQZSsLeOiREuqKzyFf9vfmvJfbCHqJtM5D7c6vKWXdDcCmKa1ZZo
         VTN3pVT5B6GIuhID/6Vl21mq9FHqTQyWdhnq/hqL6iiU3gX9OCCBBZ/VFjvd69gEYmcl
         lqRdHyDkuGezQeytTQsogy3me+rLTSoZoZ2syRzmi2zwfzorSEn1jg6uVRMJOVr48XOG
         4D8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9TbLlYmwL4wShVAsmkmb5UHSvAAHA57R0BcaYV9y+eY=;
        b=ihengodp0C4e7DQoSAecSfRSdWFf0T2fbqW+Nxf1UJ3lXyuZC0KMZcoI1xLOZWg271
         qK35fycaUaeBkkb93C1kSjDCS4kigMiMi0U03NsmieScSY5OkpXWxWGTBO4yplt2kqJ/
         wU+oSGs5Z0EeQsGZnfJ3YDQHAa/boweL4JxMSd60lFVx6a6c3GHCv/U5zUZgeLSRmRh6
         GAc9JG/NV9/QnBBXgxFKKQ3tQOgFnEWSPlrLswMtNPA+6i8DGEOWewyGDD3dA3pmKKLg
         vAaEqwt9aq7X4hSUiQhQw5/N3feYtTzMoXZhEM/OMnV0ZsPnFu3TYZx0EAymIjP0hJci
         wyqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=tPzDAZ7k;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9TbLlYmwL4wShVAsmkmb5UHSvAAHA57R0BcaYV9y+eY=;
        b=oWtJWQSpieZv63BSKY6o90pdsWko0SiSEi6pZX7e80d5xDtDb/aHhLTmuy6c+0Qj+P
         +xcvhAeFOlsSwjXnVvFLZXjt+5inqZLXt4GbhAXiuhO30n5RSlIozNVYXE03rujbdlYC
         FdG3hjxJW814bK+m5/sRmxwWW/CriVH4vyiC6xGfzEKBJQxrlGzyUAaBZU0MIDVzGw31
         ocAIm6OhI512AU7bldZscsUh1knnc9saZVRjQrmj5eHaDlvZGTTQKKl794N7PbFW5fM8
         uvrJJ+go4y2F3YEtt81ivRpztxMWF9UNSmD30fdvM+8jbFGmr79r0WXbiFq++QTetW9d
         PWmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9TbLlYmwL4wShVAsmkmb5UHSvAAHA57R0BcaYV9y+eY=;
        b=KaFzaHsVaGZdu2e/b3/43i3jiTT0m1SdJQFDyy+oGZHIKwQbMNo9vmLV7JZBDyKT8G
         4P6F0DntTSbIE9M6O78XgTqKW1IRjE757r8b0lWDWqQPaTnlwv/tp6mZgU5s7KIua5M/
         N8/NB+hk0DTh60RkwNuqTFCKwXHv58AJ/Wadp5yZdnV3yPKnqAsNPj1j1KMrodrigHA1
         F/R4CiwlCtrZrBsY1cDWqhNsKLUyG0mflvelCpjqnXBBf5fFhxRhGEmA63nkuKSLV+9z
         3cMgsnzAS/hTQQzsjI1WgvE1oOpQLW1TUxB2zP3u0o5+gErQ3aBiOJBXXi9YIPHB/DuH
         4KGg==
X-Gm-Message-State: AOAM533OuB9f/QaIDDhHiIfhg8vIGMLz+f++kDQ1Zcpn9KUPa2XOQS2i
	WlTNKb2yGkCc3eEb+JnVYH0=
X-Google-Smtp-Source: ABdhPJwO4mCBJ6wD8cFS2jjqyuSVWS5/YLb5o/l/+fKhtK2Ir6tZhpSl8p/3dR8ez9hIk6IGwS3UWA==
X-Received: by 2002:a63:2250:: with SMTP id t16mr13218014pgm.303.1600143746353;
        Mon, 14 Sep 2020 21:22:26 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:79c6:: with SMTP id u189ls3484670pgc.9.gmail; Mon, 14
 Sep 2020 21:22:25 -0700 (PDT)
X-Received: by 2002:a63:342:: with SMTP id 63mr13754478pgd.134.1600143745785;
        Mon, 14 Sep 2020 21:22:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600143745; cv=none;
        d=google.com; s=arc-20160816;
        b=Gfn/glJnrM5g6gjhnQyMoVPhZwI7wgonlpLrk6ZPDp7chCscmH2TSy05CJHr/2HBSZ
         kXk+kKPmRdHF8xjpK3pzvnpljAJjwlSQgroA6JG71sWH6d1xoYo7OiPzGy7gunieZtlq
         oHUMz87a6AnwulbKsbEUj+oH7wMzvq7C/dCH5yW9yD5coSLX7QEccRm2DsqsLR4KE7vI
         4CxcT6F84ZXDqmKY+VXTd81n2euHvkZVU7Zi3JGbhWR/AeGsB/fBJfrLwSrtoaazI2Jp
         Ip7BsvTs5+p4pM4h6OM67UYAdFqWfCFI06x0p6QCGQeJT6yQQuqvdEIAUJdERrXRm13q
         nnGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WCJiTCBYarku1p+J3FGwyc0AS5UhsiZgThHHJxu9xzA=;
        b=loPEtZPoqRfqqxRdhHgKev38A2OTkJMeM2R/h5S9hSx1M+tuxfxOxlHPxV48TXsTFA
         PUr7B402B71nchKk4UAvnXaSlp0N8KJ7RqsUdF/yNKj+GJGdu24P4wVKrtshOxMG/KGd
         kRhyhMvfrHZUX4LnbMP7QYWJ6GSFoh1fgQ6epbQdDVtFoB4T7fa/oG5e6Tczx3+koHVc
         q2AGPW7SL+k4p+wVCgZDJaCgBoTlozaANczbmktbwJKZ/RiWYJfL2Gzn5BvVvbJMpw8Z
         JteddVFnPOJgqZpbd6I49nbj68VBHL1qa0+VUwx7nZqKLIcEIYlo+cXY7cUONegY8uIe
         GB6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=tPzDAZ7k;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0143.ext.ti.com (lelv0143.ext.ti.com. [198.47.23.248])
        by gmr-mx.google.com with ESMTPS id mj1si593109pjb.3.2020.09.14.21.22.25
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 21:22:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.248 as permitted sender) client-ip=198.47.23.248;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08F4MAul001484;
	Mon, 14 Sep 2020 23:22:10 -0500
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08F4MAUr058124
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 14 Sep 2020 23:22:10 -0500
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 14
 Sep 2020 23:22:09 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 14 Sep 2020 23:22:09 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08F4LDMl028615;
	Mon, 14 Sep 2020 23:22:05 -0500
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
Subject: [PATCH v4 05/17] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Tue, 15 Sep 2020 09:50:58 +0530
Message-ID: <20200915042110.3015-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200915042110.3015-1-kishon@ti.com>
References: <20200915042110.3015-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=tPzDAZ7k;       spf=pass
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

Remove unused pci_epf_match_device() function added in pci-epf-core.c

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epf-core.c | 16 ----------------
 include/linux/pci-epf.h             |  2 --
 2 files changed, 18 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index c977cf9dce56..e44a317a2a2a 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -282,22 +282,6 @@ struct pci_epf *pci_epf_create(const char *name)
 }
 EXPORT_SYMBOL_GPL(pci_epf_create);
 
-const struct pci_epf_device_id *
-pci_epf_match_device(const struct pci_epf_device_id *id, struct pci_epf *epf)
-{
-	if (!id || !epf)
-		return NULL;
-
-	while (*id->name) {
-		if (strcmp(epf->name, id->name) == 0)
-			return id;
-		id++;
-	}
-
-	return NULL;
-}
-EXPORT_SYMBOL_GPL(pci_epf_match_device);
-
 static void pci_epf_dev_release(struct device *dev)
 {
 	struct pci_epf *epf = to_pci_epf(dev);
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index fa3aca43eb19..f373a134ac04 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -165,8 +165,6 @@ static inline void *epf_get_drvdata(struct pci_epf *epf)
 	return dev_get_drvdata(&epf->dev);
 }
 
-const struct pci_epf_device_id *
-pci_epf_match_device(const struct pci_epf_device_id *id, struct pci_epf *epf);
 struct pci_epf *pci_epf_create(const char *name);
 void pci_epf_destroy(struct pci_epf *epf);
 int __pci_epf_register_driver(struct pci_epf_driver *driver,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200915042110.3015-6-kishon%40ti.com.

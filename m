Return-Path: <linux-ntb+bncBCOOP4VF5IDRBOGYRD3QKGQEWKEZFTI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D1C1F6894
	for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 15:06:01 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id t13sf841968vst.9
        for <lists+linux-ntb@lfdr.de>; Thu, 11 Jun 2020 06:06:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591880761; cv=pass;
        d=google.com; s=arc-20160816;
        b=GN7rYxsj6M0EX+CnmOM8XXncr9iDyXgBVl7VX2FnaqWCKTQR9O+lJVJ8Wx60XO6gdn
         tKKakUgoavrH/299iHkIVveAKMczSYnRpHqcfujVmYpCdBLrTlFT0d/nrrcCSOQ94Qh8
         alYWfKSY97x//0XrVM9fmtgWN8/ivh7GDblOPArU9VT/meGdPX0CGHaA+ejqGfdTzN7Y
         SvWWsaZqmsesbUFPz381ggR61ZyOByOMwe9ZkBoKMGigRRyeX2q/OwTm/xXRQs9KRapG
         EPk/XIrFZLBoCMqW4Zq01Ipsdipn4lvjtGhu4pQHbR6xeuiQ8UZAl1M0kCu6FKZ9zRA2
         w/iw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=E+aOV2I7Ta8PjykO0rZjijmbSiHIlBnuPZ0boOPS3jY=;
        b=DrQMkcnnsQ0w9W/d3AOeKqAj/N7QNd2mrSKHBTnX4i2i4ikiyICaQ64jDPFTNW9jdm
         ZB4n/v/0cbj7G0LOa57WDxaM4NP+2Ol6uIaQ0IYxamx4YLUNnJi2WrjnwVx00Gy2pv0n
         rZFcNWlKrPCbBfbuLde40O0csH1Pr3XgiNhFprnjXcVJCXAWMibNvGOoNJ8zis5K+dcn
         439JpFlutJxoAiceE9GeFAHy+UasUIYG7pM4yMwb4savp+qDoUg7NZRObqs2gWz1l1Yd
         zr/avuINYA84euhqdJLY6b5/QE9dsev80qh8tEHlH4bvrmU7tHD5gfXT09AQC/2roS2N
         RNJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=n2zsdpJB;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=E+aOV2I7Ta8PjykO0rZjijmbSiHIlBnuPZ0boOPS3jY=;
        b=kYzTZppiQw4LtKGkr5/7BFgJwek7eS7KGKxVP/l1z79GPgNR2qJyEjhK357loLegjm
         AhAkENWGxKzSKZOH+2o38mFMYFmqowwRcKf5IbgboMYdzTxXHtqMTbjZjc6e++8wLo3G
         9rS5r1RF1tRKgZy79qwgJqD0u+s6fgQbhENZEVtYHrDf80L3kUxWNmVya50CCSeDuZHD
         oYYdszJYCdH4y9kstuj6KQq0TJIP+Wk0hpmAIoa+zDhNuoS8ZZKeGXab0d9minaFONDn
         tFE1as15l7YQYFXzr+jhFgxNMu1V30rnecgzvO5ltO+W/3I08Fo7ZC2So+Cz639zTkee
         Wf7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E+aOV2I7Ta8PjykO0rZjijmbSiHIlBnuPZ0boOPS3jY=;
        b=KR98NBXu8/NmemCo0nDNceA2XdKJj3kErGuC0y7AaOPtLINuCBtG56NK4fOcKGuuUr
         Ccwl1+ZErq/rrfcSYpEorcCsUEa1X9SqAHztI6zw6kTybsSkhFB5yCfO11HaF0j4uVWK
         XmQ+frL4A+U0yO7GgWCvYBKHF8qzV7+3sDXqrz0Sble7R9jdun5OdIjuF5f1hfyVlklM
         aBS4uzoJIz41049GvFgBGhj42421bfYcwJAsAMvetZjs1zQvHM0gjWOngKoLMjn+Jk8d
         hkVjLW1FgPn2GY+VuZ/0zZ1ra0q7aoe1bwMA1I1Mb9Nbzq8fxtc4ArKPOi6acDN6JMpB
         HLLQ==
X-Gm-Message-State: AOAM5312MoBGJDlELuIZePAKaFfyAPVKePF986xYWYAZIaa7Vou6yS7Q
	d4YPY5afF+zxXcUyxuJbNdg=
X-Google-Smtp-Source: ABdhPJwEjho8l3Cbe8hS0+SQ7mc81TrT3EKrUi4C1KQAqAkqWcNQgwXt1e4L4DldRjmdgTZtBsraeQ==
X-Received: by 2002:a05:6102:22ca:: with SMTP id a10mr6280773vsh.152.1591880760861;
        Thu, 11 Jun 2020 06:06:00 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:fc91:: with SMTP id x17ls249733vsp.10.gmail; Thu, 11 Jun
 2020 06:06:00 -0700 (PDT)
X-Received: by 2002:a67:7c54:: with SMTP id x81mr6210213vsc.129.1591880760495;
        Thu, 11 Jun 2020 06:06:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591880760; cv=none;
        d=google.com; s=arc-20160816;
        b=gvlP/CKNDlj9+haEN8UOoVRc+e3Hv9W43mMytbcXHGRWyI2gXA9iCQ/QZhWQ1rCx2n
         /bToSLLslzui+auSyGYwQX5X6P8OIO5+htUh+bmGapLXfsWkJVawlF/l5mIRWLbpQ5bF
         WCp71Tkrm9S08TMite4qD0ufIWsOpuJqM7yd4oPfhGOQKJK9PS0l7/sAJ1SPQ8SXcGY3
         pNiDunpyfkOu9vjWFMecqky0mrDlJAZxuVily+Hs1hUY5zyKGSa0xvde0GOagy3KPTVs
         tNQthI6f1btPHu0lYg2a46hYY99dQiifiA05it0ikbn8M+C/Cz9ggDooZ9WHRP+p3Aq6
         eDoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=ae77PbtcSpRcjDZyiKtqNhsEyYftIhGJH6RlSc2v9dY=;
        b=iWxaUSsCMIr4w361z+sdd3njtvzqe7IkCYEuIFWKNTtZE9cLp+zBZruBO3wjIL+VdV
         T2guypF6MF2QqYmiUD9ihYX0nh6md2pUd1rh+bMvK+AZB7BPw7UMdlcq18SWQKejAzY0
         11yxiOJGokJe1vAuw4o+CofQTRuBORm2b1/szn8CKX19hlWIBG4x5mwRS8Dtv4yUE1YM
         JiHMvgzjrCcGrpjQ38Tc93lT8rtK58ur+aa7r6OBOJJV3ZPF67bPXJQg8+QVuUtY/gOT
         jcJCmrsrtE/PzyJFMECSaNv6h+iaoR1Sl1TBpI993eUDr7UMAvVHdtYHIExhc/ZRMuhT
         ghoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=n2zsdpJB;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id q20si291870uas.1.2020.06.11.06.06.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Jun 2020 06:06:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5rvb083640;
	Thu, 11 Jun 2020 08:05:53 -0500
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05BD5rrC121663
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 11 Jun 2020 08:05:53 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 11
 Jun 2020 08:05:53 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 11 Jun 2020 08:05:53 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05BD5PZ6082585;
	Thu, 11 Jun 2020 08:05:49 -0500
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
Subject: [PATCH v2 05/14] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Thu, 11 Jun 2020 18:35:16 +0530
Message-ID: <20200611130525.22746-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200611130525.22746-1-kishon@ti.com>
References: <20200611130525.22746-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=n2zsdpJB;       spf=pass
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

Remove unused pci_epf_match_device() function added in pci-epf-core.c

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epf-core.c | 16 ----------------
 include/linux/pci-epf.h             |  2 --
 2 files changed, 18 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index 244e00f48c5c..70e78ebd053d 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -280,22 +280,6 @@ struct pci_epf *pci_epf_create(const char *name)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200611130525.22746-6-kishon%40ti.com.

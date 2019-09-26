Return-Path: <linux-ntb+bncBCOOP4VF5IDRBHODWLWAKGQEU2LUFEQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FFB8BF183
	for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 13:31:42 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id b18sf1233056pgg.8
        for <lists+linux-ntb@lfdr.de>; Thu, 26 Sep 2019 04:31:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569497501; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jq61SvS+C7clAtCrskc6pLOtHYd0PmZldwGL/ThRLjqN8OhJxwXM0/L/FXq95r8wSK
         AL5urSkMlRIy9Haq4/gSSsPHjS2uRptoMUv9AhLkIRMcrk5kWJ9dlOgNJROBAdctQXaE
         bE1Vd/+w2FUdfw7HZWQnZjrgXtxp4GKGNpn/FfqKoqfCYkQcfKvZDPWeCj4eQaUghhZy
         b1mVWb4rKRFprQ7Y3hgl8tKhCnZW5ESEAPr6INFR3fM15V65AUcphRJGpqabD5YgXy7E
         zMwuUKe6TPu4q6NyEQwEMpUQuHgURLWdTnluzWukz+Fbu214/mPe5j7kJJ5jPDMLQFkj
         y9pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=9MBRItfpxzDzrGrxIVUwONR98P4t+jfHanLL4nnJONg=;
        b=qQXdezvERMc4VhkL8IJ+nJ9/rByh9ojfezoFX2ZBTLKvXBywx4V0iXPi7y7PEEDrHN
         z5ms4yiVJH/w44Tryqx2mE3bzLmOECiQLVKxI3VZJXQQ+LRpBySI3TkDK5iAlMG+R7XN
         yyY9PsfFsvfZWuP68Rw+2eo6qerTQr11RXyIbetOZ5nRuchJwsgxc9Oy1QL2M9AfkbBF
         CreN2yLqDEd9MQGPxeBDf9hMgMVJ5NV+L1TTs+GgZHUud1obKBkxLX6ftO8RPA4K2OwS
         bqnkdNzbJtGLhlZA7LS33Pj4b3UWt7FKkfBTqSFCOUep1NvmDOhAfJJzXlY14fJfe0Z3
         20/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=q0MxyEK3;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9MBRItfpxzDzrGrxIVUwONR98P4t+jfHanLL4nnJONg=;
        b=fFRH0HZMfKfRY6wo5YM7/9OMZEVbhjiILzYA5uR9l0hNxG6P3UM8zUVurqJYtK9snj
         Um41kvkC518PC3fAbLaqpIhRYAdXvPaMuWsV98G/Ej7M1BHZ4ZZr/C7dHDma+ZRQY6FW
         S8TCDoSA5awOFsvMBdw4u9BA1+JvZkRNfO0rzxzx/FLdERnw7eE7RdIdFV11FqDKO4Gi
         x2ZTUjCUwAL6G+NbDtRgJtLrX8Xc1tVoS42dRoXqtFasbkrw8tq9apwJcwx3S3vT7I7O
         u8c/Gs1F8JtW5en8cvR2kYUPiJMbUgvXy1Zr5HQ6IeNOQK8KxPxxNdFNw0n5HfNks8He
         UKtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9MBRItfpxzDzrGrxIVUwONR98P4t+jfHanLL4nnJONg=;
        b=fuRaoLdxUgYPqLQwAC2FLfe92Rx7vAuHpZn5K3P6xCNECEQBG0Wyt//8SCtZybHu7J
         hZyBY0XKocCJSICJVkqV0MSDRqujtwhCDDhCdno9TAkOFtpOEnaawNRfZCvC+2khk53u
         EWyRDtJQFZASyLhntJg3FtLKImvNnI82BCHdJC9yVN8jy2aoldfDg7srtMnEqLyEe7cE
         xmZTCwQtT60s4Eakoni4CmcLVnSKrX3wPIjnD2W9OcGGy+jsN+geIW7tIuIrGkNXg88X
         Vt79kny8qXFv/ap2fp46z5AXmpU2/B+O+ixQIAkcxFEij1mG5dFYaHknn8Xk4vt++U8M
         AdGg==
X-Gm-Message-State: APjAAAVMfobe6vo1kLkS8wZSENy74/nDlOhHwybSvfoMUSvddBAK3uu8
	D1VFgnd6i5ywx4SHNBdPDo4=
X-Google-Smtp-Source: APXvYqwsVtAApvRTe3JbUPJJWrP7iQdD/0UPrI52plExGzRdcqgrAvG4J7fY9vEfQc75X0fZeoRFpQ==
X-Received: by 2002:a17:90a:ad8f:: with SMTP id s15mr3068873pjq.50.1569497501348;
        Thu, 26 Sep 2019 04:31:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:ff13:: with SMTP id f19ls653553plj.4.gmail; Thu, 26
 Sep 2019 04:31:41 -0700 (PDT)
X-Received: by 2002:a17:902:6b44:: with SMTP id g4mr3375517plt.256.1569497501074;
        Thu, 26 Sep 2019 04:31:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569497501; cv=none;
        d=google.com; s=arc-20160816;
        b=LjdWq9rYJ6dvMEZd94GmPsfBSoNX2WCwHuGwmUyFveIhetqEQ+DsMSZBzAe2RuH2UG
         J+k3Y6M7NsiQRjzsEtWSBU/0lwVaz/69h61Kx3Njfe2irXOclr2XxdBsLHRS3IkVsMwx
         fv6PVWVnZw83g89eYCtqsEUocnRVeMZncmp7cZOaj60/yvxqq0P20IFL2Sma19rd7yQR
         Ou8N73DuAY1WIceTC9oFtBXPlT7fim/ffbZurFYQAxyju53Ujb46T42sGoj2U0YPFHws
         VgiH5q8WHH+kqKu7lGhxzq98N3DBetQi7aZ2n/Ig3k09Ivy5pUMtDl++jpc4fNAiy7bD
         altg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=zjdKeRfFg26NOLGmk6yPz1vY8BAAv5jWqap9n0vA/hI=;
        b=KA14MATF87LZzGw8jlag6AoEEX6g4uqqIJPwsL/4UklwbnsGs2hxL1APtKZau6uVSs
         A8tfW/msKFGq0p3z9s4leySzEP9y6EHUDJGHyUVzyOIv1cglyv9xC4tEl5tNqq4vSLLW
         vZJAkt+UKkrQywmo7MZoTDHGo+LQUKkeUC9wXZ3wAvO/hDb5Z/iJhQukM1MZtJZyu9+/
         0cRVNSO2L2wYC1ePz+jZQGxnBfFYfM5D7GjTKyPEwFey/O0IHGmRp/y3tH0n3spRNfgL
         4t1DNL4gNfsnUNyPg5mmiUdUqvn0fnmniEC1pd4auH5Cg8rJBg19lnQHRInrZkP3AA/b
         SqbQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=q0MxyEK3;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id c6si102997pls.5.2019.09.26.04.31.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Sep 2019 04:31:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0034.itg.ti.com ([10.64.40.246])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8QBVad7016253;
	Thu, 26 Sep 2019 06:31:36 -0500
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
	by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8QBVaT4092245
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 26 Sep 2019 06:31:36 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 06:31:36 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 06:31:29 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8QBUTk8069017;
	Thu, 26 Sep 2019 06:31:32 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Bjorn Helgaas <bhelgaas@google.com>, Jonathan Corbet <corbet@lwn.net>,
        Rob
 Herring <robh+dt@kernel.org>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Lorenzo Pieralisi
	<lorenzo.pieralisi@arm.com>
CC: Mark Rutland <mark.rutland@arm.com>, <kishon@ti.com>,
        <linux-pci@vger.kernel.org>, <linux-doc@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-ntb@googlegroups.com>
Subject: [RFC PATCH 15/21] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Thu, 26 Sep 2019 16:59:27 +0530
Message-ID: <20190926112933.8922-16-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190926112933.8922-1-kishon@ti.com>
References: <20190926112933.8922-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=q0MxyEK3;       spf=pass
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

Remove unused pci_epf_match_device() function added in pci-epf-core.c

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epf-core.c | 16 ----------------
 include/linux/pci-epf.h             |  2 --
 2 files changed, 18 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci-epf-core.c
index 388966faf17a..9fa4d8d4d829 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -619,22 +619,6 @@ struct pci_epf *devm_pci_epf_of_create(struct device *dev,
 }
 EXPORT_SYMBOL_GPL(devm_pci_epf_of_create);
 
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
index b5075119f3ad..80505106c770 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -189,8 +189,6 @@ static inline void *epf_get_drvdata(struct pci_epf *epf)
 	return dev_get_drvdata(&epf->dev);
 }
 
-const struct pci_epf_device_id *
-pci_epf_match_device(const struct pci_epf_device_id *id, struct pci_epf *epf);
 struct pci_epf *pci_epf_create(const char *name);
 struct pci_epf *pci_epf_of_create(struct device_node *node);
 struct pci_epf *devm_pci_epf_of_create(struct device *dev,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190926112933.8922-16-kishon%40ti.com.

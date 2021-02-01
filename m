Return-Path: <linux-ntb+bncBCOOP4VF5IDRB7N24GAAMGQEEEEMPCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13c.google.com (mail-il1-x13c.google.com [IPv6:2607:f8b0:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED7C30B0FD
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:58:54 +0100 (CET)
Received: by mail-il1-x13c.google.com with SMTP id c16sf14834778ile.1
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:58:54 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209533; cv=pass;
        d=google.com; s=arc-20160816;
        b=hAN3r8CrhPllFFHVMWJpi504YpbG/ldnH5c0TbqjoCL/fF6Xxkaf2RAsJaJc3GOHj4
         vdTuN18w+fC1KJamOgcBLFaeViW2CfkiPOIFGwzliuhgVo83xBLSvlr63+LEKOjcPLpJ
         MWMvmUXtZEEsC2Pv3oz6iPuKUZKQsFI1JrCWFUM4V7829oJoouTWZ69vGpan1YUvSytE
         bZoqwsufrFHDOKuEgugylrMcfTJUav+Uj/c8MUInoVbqTySVvVYT/Dj1OHK7yl49vFE8
         DPw37dkEjMsgcc6bSQLc2OphdG5WrDCkgpA2WrDv2M+06w7ZCcnKPvw3ho+MDkH2CXB8
         5Ypw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=+zIeOF1te8nC8Hf9iyOW9Rx8BIyvL1+eZcyIGDSSUqw=;
        b=b5JbPgY5vprLoJ6fCsjRYeQcmclZmY1vUQyR1QgbcDwoqAydUspqZSPkLazchEW3+E
         q4NRpp0ftTIJdnl7fhNLq9e5GqFw4ezgHD8ms2j3EpTAmQ9hV4wpTkCl9qlVdWMCZpbL
         5EMuMDREpjdVLcfXfSCw1zTeq3ydew+8YglpPG0JJTZMqbaXnO1yFrf7llJ7mnDDbT/B
         rtfcM6u2jJ37SBl+IfRop5h6prrn4mPsNTejKk+FT7Hjz5L4ju2wZzfPK+MJuTTyW48z
         ZmB/Uw8C1pMKCaxDVxcBLUMldSArTdD9ldrMUtb9TQVis6VgP4bc6bXTngZwyyw646tJ
         1xOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=VuxLylqp;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=+zIeOF1te8nC8Hf9iyOW9Rx8BIyvL1+eZcyIGDSSUqw=;
        b=W0DBtdl3M1EYRsmoEPXJX0dSe5MOeJThRzjwKS9gZ2sqZ9NOeOnr4jinrPaBtdLuC8
         SaGNY9YiHZ5aNr7l8kcWaHDAJaadpMHCWe7pRsgqH1x1haWdRlpjM3QTXtzftTzZZBbF
         lWWx7mxxwnPysVewf/q0Q/1hm840vefM+7sxfaqZz1BcFuxlCjkjgPsqQXo59c7z5YmG
         WHXueR6TjaA3jsWC2WMDeEe0Dwj27VYzjoJBuKxqiF+viK43Hg1RBGIsytzvn4epHa9f
         1CFhtWEAKVYCmdmLxoHLtcZtfiTNJG7AOCa6MGx4qFArmZefliFDOdQou3AKghMt9rgh
         MSWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+zIeOF1te8nC8Hf9iyOW9Rx8BIyvL1+eZcyIGDSSUqw=;
        b=Jx/OBsDCqU9uldH17YjajivHMsnnpV3Q3fZNVr7fn32aQkgepGVGqHy4ILn1Fo04vR
         J3noVJqEPod2m3V3V0N7Jqg+DCoGDA8R6bAeZphiKLx6zL8Zm+VlyFUMYdJFgV3jT4lw
         YR3O7JCFkAKA0izWmLdaZYObT3zGUVX6xYGGPnbmY4V/jMVaoRwHc4zyDEjRfq9Jqt72
         inxJCkHKsJltyU+IXf/6kBXPE4Lo+GJno+Xh5x82khlmzyO25kpfUlMxLCz2YWbEq44d
         xaRNZ/QqnTL+QmEJ+1//GJFNeh6gteBdHFDC5xdQb3Ychz+Jn+uMxg6/tntiIyIaiXqh
         /i2g==
X-Gm-Message-State: AOAM532L+Ayty+QXHeU9jvzvMAr6rVrgGKZvwzf23SMQ9ESBKI1r7AmX
	GKGhuslpEl7+LYQmdpSEl5k=
X-Google-Smtp-Source: ABdhPJwhm3dTyISUgKzsZbpfDYdDC7qLuo2TmCPHnVPO0QRLhiEQEtQc+xzvaryG2sCTTf+24NpuFg==
X-Received: by 2002:a92:650b:: with SMTP id z11mr14272686ilb.84.1612209533583;
        Mon, 01 Feb 2021 11:58:53 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:3606:: with SMTP id d6ls1560391ila.3.gmail; Mon, 01 Feb
 2021 11:58:53 -0800 (PST)
X-Received: by 2002:a92:c269:: with SMTP id h9mr9279709ild.239.1612209533159;
        Mon, 01 Feb 2021 11:58:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209533; cv=none;
        d=google.com; s=arc-20160816;
        b=fHuL0esr3QNYgL7XT9ohJBajMkWlgWToKNMHXFwXC1ypcoYSI0M2X1ab3cp+6Y4gUB
         PB7hMQrjeVUuRX7jW9yT6J+TMdozSPgP/iW4oY+Hf/PFLbxU0DqNIWYZpHz0a/EgxzIy
         E/hMIP+f4WjPA0LLdl+HR4FVL5fDWJGOK9gd4/2w0Yx3BovDfvyk7O4GbHF+b903reHR
         JkpfROAxIKNvSh8NCzzMfAeKg0YJw5Bv5HLcRIIZ2Ethxzq76EYrUzNUBT0SyRNpphjS
         bYwhhWe7WnxFSQVCbMAKvsIR4IwXuzlu9Ga4nuE3YZwELBYa7Hf6FhOrJXxbKBZM4pu/
         4u0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=WCJiTCBYarku1p+J3FGwyc0AS5UhsiZgThHHJxu9xzA=;
        b=K9Lhg8eMNjN+9EJzq1yL5oM+NFkbzafNmHhzHzkNySTif3pXNTaNYTlWTQ+ri9yx71
         qfaoBVUfKLnyO1D34A1kzYAh4rPC87l1ETExt7j/Y4vKLuJNMR7CLW0GhSrOnpHgPPmc
         he8hitnhPmm2FA0yg0M20DhlHTH9pKa/gvvnzBX6FUij0mIQZmt7msXd7YRuUy7vMV6k
         ugZrOX0WFTlf9x3aS/IgNNZxAhCZXLwi07ml9iljLVbEZWLugZreHA23pKt2FEECF1Ly
         n0c3rXyOWLjAQN69j33lze+Odka37gWV4xn7s1JtD0mqNl1haCMBDqkqJJQTDzxuU+Ko
         DddA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=VuxLylqp;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id j17si283431ilg.5.2021.02.01.11.58.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:58:53 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111Jwiki037119;
	Mon, 1 Feb 2021 13:58:44 -0600
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111JwigK042372
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:58:44 -0600
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:58:43 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:58:44 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQc085814;
	Mon, 1 Feb 2021 13:58:38 -0600
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
Subject: [PATCH v11 05/17] PCI: endpoint: Remove unused pci_epf_match_device()
Date: Tue, 2 Feb 2021 01:27:57 +0530
Message-ID: <20210201195809.7342-6-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=VuxLylqp;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-6-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBB4KWD6QKGQEOAAHQRI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B3F02AF4DC
	for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 16:36:40 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id c184sf1150756ooc.4
        for <lists+linux-ntb@lfdr.de>; Wed, 11 Nov 2020 07:36:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605108999; cv=pass;
        d=google.com; s=arc-20160816;
        b=L8x42PWShfdiEipO21LSdLOqlxMtNGOLibMarHl+8+mMHuQmoUFK53pM+4S+s1TDCX
         5eOLBOs/BH1GPO7Db4yr7q1v9vdI/tJ+E1DiQ2+l8quhDrm3XSx2lMM0sbTZnYBdtM00
         WZJo1nSQ6evjQVEweLZTvTEAK+/w59x1DQfabiP29oniuxQQDyf8Ke8kzsU+02CLwM5X
         kstXA+PhE9SdL6kBHbs3FEhnTErYzVnKoa78csZXuhLpV6PHt84EZNqIWNsZ53aDutDY
         j0sWhfykXtLFRvspfM0NAqQWUnPSnwi5JrFTbiXOcPlx3ibGnyoia14jhL2+8DfwUXsA
         S6+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=kEsVEFhu8nAu5gpDhzJtlHwfYu8pcYmWmWjiJph91/c=;
        b=lcCxkGJtMmziNcRHd1EPtUtG4erWtRt2I1f/7CClsZUjGnh5DSOtm1NDZgnxQCelzo
         ryt9oyguzvMp7Bx+hL8LzcqmT8ZggAnbDO62NfX2+DAgXFNY1h+3+RYxExHJbudPx9ZU
         DLnw1+Ffvrjnd5ZEFj5EClQ3vuQLiYBjYU0kfLzell9XKDrYk8lX10UFITbOp+vidNVK
         xNNsXbBdBWKEQ776Ga/BS2RmQLSi3s7oRgWZadDaX5heIg8Scm3JwRa3ANZ5RtA9Ty5X
         AU2gXVR6SuLUre4n5CSc/oqrCGszoxZg/hJgaqfxsK7bYDTI1J14l4SyeZWlT0aVEhay
         /h5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=wWhZQQ4V;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kEsVEFhu8nAu5gpDhzJtlHwfYu8pcYmWmWjiJph91/c=;
        b=PGCWyiDgb2B5WY3K+TLtsBXsUVfEi1WvF9vbRnsbWdt9riGur0fZESoN3+b0bDAxRJ
         hvrd3bqZ2Fhp7doMl11lS9AVXUOyxo9h3eeRs7oobtcuTiWkYCmB2EWKOg8qrKvywm03
         aqpLthkDJewN7Z/uC1IF8BmieFXJpz/JWyENlk3V5kDsKIDi92UB/y4lAr2iivGp/l8T
         2Z+3UP8xgOZIUW3aeEYDkAvfH/Ya6ZJ0fSn0ZBd3/FZ/1kjdnThXrzGzdNIKTYFVG2mv
         +tzL/GL3+xeMrUbfMLv0AUQrVo226m24ZJRHsEClA3lFid53MuV8gF34ZTx3PykU7cZm
         NxPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kEsVEFhu8nAu5gpDhzJtlHwfYu8pcYmWmWjiJph91/c=;
        b=Db2oUwikGSnUy8spUs/sQwhTfRFZdGDsQfOHRq59xiJnh7VvUNtFMS+f7MnHu0gdRY
         n9duK3NQ004R3UQyBE277+0eX4OmQES1uRIqFPEMRpNgz0jQxVtApo7Yhf7xFZ2JHH5R
         TEFrMX+xpnNw7J6GU0PJPKBHUV4bGlxF/hp47FEWUq/O5G6bzR6hVHWGAOimQNrlgFPt
         ehq4BX0j6zci4FYw2xYta+q505ncYeiE82shs6liSoiZ1V/Nu2li4o7QLPR+D5l91n2n
         ESTEX3JL/KewnM6ZhMR20qRiOTuLlgRz5RXhJSAjq9OXuhw0UkBpQVUdMCm+9IdlSLC9
         yhfQ==
X-Gm-Message-State: AOAM530LlbfW1YT2qQfrLgjbH/mf4KJI/ShuoUHUJ/hf10DFd0Ui1mYp
	EeVE4Pog0JcPAIMbRcb6eN4=
X-Google-Smtp-Source: ABdhPJwxCwjr2XdOwN4QV72JRWDNgHBNoxV+yf/6Boov59uNjX0nRsr92nb1b1fES4FjnuYQRhceEw==
X-Received: by 2002:a05:6808:1cb:: with SMTP id x11mr721215oic.81.1605108999152;
        Wed, 11 Nov 2020 07:36:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:7994:: with SMTP id h20ls1203751otm.2.gmail; Wed, 11 Nov
 2020 07:36:38 -0800 (PST)
X-Received: by 2002:a9d:5910:: with SMTP id t16mr19305050oth.155.1605108998834;
        Wed, 11 Nov 2020 07:36:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605108998; cv=none;
        d=google.com; s=arc-20160816;
        b=wRCu6x9N+SuqiT7//JO1nUkckpXUdlTWk/XSy3ul6Cj8us8T0ltbSAaWmZ/INOtmqe
         DLuEVIdeE52kVJaLVQf2KOo2OhN5P4MXA7miy7RoKty3D5pf83hWOq/z9yhU92DU6wTa
         hN39AUzjwLoVgIszNpzzpGEzVdg6ub2l8UgrIou50qxPcad8JtAT4LTPYV2/ASjKqVdX
         p86d36gTAvzEsSb7j8r8mxGHjFRbisXkJE6rEG6Qqme/+fDXtU3RLAY9hpPzo9cwBZ81
         b3gljEX2Cm44v+vpe/ZaVYNZROoMs+82HVO9ope5bIdDb+4hJ6HglqhZIHtziO1usDDQ
         jLhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3vpCkC7uFlZ+YibeWVFAIXOSzm64dBgudr4jQOKgpzg=;
        b=0n6zzgfnmvndNW+SGy83bn04toeUyIzrJZ5pz7lRNdguYA+0g9DLJR8sSMuKZuHvJM
         LRfjVQc8VZq54eY9VMmDxPqGlnOAUT3z04eUjV/cklD2IElObIRhVg4CcEby/HSeXGx2
         nAiElvlh5JlICJqauPaJ0JC6Kqe/kxcM2nMup6WcmQIlRifSPKdGHBLWQWrJsMQ8Hry+
         KaBtqtZxwehxf0tX/sizwYaPtrycZ4eucyXpuLI1BF4hzGSjBgAe4Ivn+ZKiRX6AZo+1
         AlRaJcdmFRzLDrn2qm9hdAE93IM/8O3mj+UEohQ6r4wqwYmHFSIrERjjYYZCNAdO0Ycd
         jirg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=wWhZQQ4V;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id e206si213923oob.2.2020.11.11.07.36.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 07:36:38 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFaWpJ097263;
	Wed, 11 Nov 2020 09:36:32 -0600
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0ABFaWHK121691
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Wed, 11 Nov 2020 09:36:32 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Wed, 11
 Nov 2020 09:36:31 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Wed, 11 Nov 2020 09:36:31 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0ABFa03t042109;
	Wed, 11 Nov 2020 09:36:26 -0600
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
Subject: [PATCH v8 04/18] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Wed, 11 Nov 2020 21:05:45 +0530
Message-ID: <20201111153559.19050-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201111153559.19050-1-kishon@ti.com>
References: <20201111153559.19050-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=wWhZQQ4V;       spf=pass
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

Modify pci_epc_get_next_free_bar() and pci_epc_get_first_free_bar() to
return error values if there are no free BARs available.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/functions/pci-epf-test.c |  2 ++
 drivers/pci/endpoint/pci-epc-core.c           | 12 ++++++------
 include/linux/pci-epc.h                       |  8 ++++----
 include/linux/pci-epf.h                       |  1 +
 4 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/pci/endpoint/functions/pci-epf-test.c b/drivers/pci/endpoint/functions/pci-epf-test.c
index e4e51d884553..7a1f3abfde48 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -834,6 +834,8 @@ static int pci_epf_test_bind(struct pci_epf *epf)
 		linkup_notifier = epc_features->linkup_notifier;
 		core_init_notifier = epc_features->core_init_notifier;
 		test_reg_bar = pci_epc_get_first_free_bar(epc_features);
+		if (test_reg_bar < 0)
+			return -EINVAL;
 		pci_epf_configure_bar(epf, epc_features);
 	}
 
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 1afe5d9afb0d..ea7e7465ce7a 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -90,8 +90,8 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
  * Invoke to get the first unreserved BAR that can be used by the endpoint
  * function. For any incorrect value in reserved_bar return '0'.
  */
-unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
-					*epc_features)
+enum pci_barno
+pci_epc_get_first_free_bar(const struct pci_epc_features *epc_features)
 {
 	return pci_epc_get_next_free_bar(epc_features, BAR_0);
 }
@@ -105,13 +105,13 @@ EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
  * Invoke to get the next unreserved BAR starting from @bar that can be used
  * for endpoint function. For any incorrect value in reserved_bar return '0'.
  */
-unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
-				       *epc_features, enum pci_barno bar)
+enum pci_barno pci_epc_get_next_free_bar(const struct pci_epc_features
+					 *epc_features, enum pci_barno bar)
 {
 	unsigned long free_bar;
 
 	if (!epc_features)
-		return 0;
+		return BAR_0;
 
 	/* If 'bar - 1' is a 64-bit BAR, move to the next BAR */
 	if ((epc_features->bar_fixed_64bit << 1) & 1 << bar)
@@ -126,7 +126,7 @@ unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
 
 	free_bar = find_next_zero_bit(&free_bar, 6, bar);
 	if (free_bar > 5)
-		return 0;
+		return NO_BAR;
 
 	return free_bar;
 }
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index cfe9b427e6b7..88d311bad984 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -201,10 +201,10 @@ int pci_epc_start(struct pci_epc *epc);
 void pci_epc_stop(struct pci_epc *epc);
 const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 						    u8 func_no);
-unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
-					*epc_features);
-unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
-				       *epc_features, enum pci_barno bar);
+enum pci_barno
+pci_epc_get_first_free_bar(const struct pci_epc_features *epc_features);
+enum pci_barno pci_epc_get_next_free_bar(const struct pci_epc_features
+					 *epc_features, enum pci_barno bar);
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 
diff --git a/include/linux/pci-epf.h b/include/linux/pci-epf.h
index 6644ff3b0702..fa3aca43eb19 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -21,6 +21,7 @@ enum pci_notify_event {
 };
 
 enum pci_barno {
+	NO_BAR = -1,
 	BAR_0,
 	BAR_1,
 	BAR_2,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201111153559.19050-5-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRBCMG2CAAMGQEFOSC3NI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 538D230891B
	for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 13:43:55 +0100 (CET)
Received: by mail-pf1-x43e.google.com with SMTP id t13sf5831156pfg.13
        for <lists+linux-ntb@lfdr.de>; Fri, 29 Jan 2021 04:43:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611924234; cv=pass;
        d=google.com; s=arc-20160816;
        b=qonUXEBLqgwseHU+GaVe5u8aTj1OgTniZ2xqUCm+n6txZGfXM9v0pKxxLobtQM8uX6
         cprVP4QB4KpD4NcHpxKibnhc/zIB5iiInveOrOKPVKyhC2XJHax2EwB9DTmYl+Vi4g+I
         oobUpUx+Y3ZdhZcz2eq9DIoAmtF/wdZ27YOTwVbrw+6HU8jD9vS/UVYBYt/JgDjJ0zYu
         zJ+EM5R3BmUhO8wrvIIltQX/3BMt4D8Pqs1/jgoG/F+x0Tao0FxK2bsa9nBUh2xz2tt0
         KHl7XP3Onb8Kj8qz+CLlVZDrFiAJ78ltUBvV6IkfiuFsS+vWG2GqAok5nmGWmOMwKuhs
         haRA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=xXkPNnK54Jhg9dzcyDGzAE8pqz7h/xsTu4/Akztif7k=;
        b=Li7vlK5hVptd6Wgg/gWNHGIdZFx2Kx0XWV08RAzfirb2Xv842kfHK+pbpkXoDUvoeV
         dyA4qpuUV8v+TITknA1/wYmLUvmxZNDaOe6vBeKoSg4HWv9ztV1JQTM3oKJ4Ud7Knkbc
         i7p7mXZAYJzueAeoK+9AXrlHhOOG1HoafHOCSSqPgD1daWNz/CA2KraRtrEl7JDYwiON
         GRyoAZAr1O5onjkdZTM7eqm0Kn1T16ikkMDV3eNuZU+dREfmOnZGC+xJpmPKdr+LTAxi
         CnDcu2YIcIQNXvXGPHXcbxPHGgPb2LlVLfZhc8RiC1IP2iAPbKrv/TaJrRe5Cx3bMtPo
         o3Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=LSDY4vcs;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xXkPNnK54Jhg9dzcyDGzAE8pqz7h/xsTu4/Akztif7k=;
        b=D9xokWFu98r34C5IE5NRZMMTRoQDP871iubxNCz/REuSWAMcNfjfDLLbldHT3koM43
         U3rKZKrzbPAjwl3X+p+epiAZ88tSb8Le/AEEMwB0i58nbmvpMhw8T5qSnbl5HZAVP/em
         bMdEs1A7fhR4u+59MP/iXMOH7pFImhv9YPBF2P+R1pio1+HCutwPO7ZWPSHWNAoAby/f
         zIZ+rWQSagGNBhaGTqhn+159KlNohnP4pespZeyel6O6DbRZjZDDeoqCi8aJhpafrF9L
         /bIRBhuGKXvWxVZFa57kb0VGBqdzZJ3os5enS7p1JkKyAgWNdVNtq91Qa86ra83PYAIN
         A06g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xXkPNnK54Jhg9dzcyDGzAE8pqz7h/xsTu4/Akztif7k=;
        b=uj3/z32qNqF4Lap5hTcSXiKp7lZ1mqKORraajbRDnBgDGX3nz9yLLMA/z2C1Xqp8RD
         Xp+XjYdJpnc2Cdn1PQtr6sTE537RKKDiL54qXrRkkf8dconheYXp7AYTYLlzma8RSrs7
         YVQT0QiWvp8FvG/YTa6x3Gtm8xE3FL62SsXXYJa3+j2iHm+cjyLW+eO45Nnjr0cQFiqv
         IJrc0UVHSUE9Lk6dOsIfztwrSxXdREIq7/s+h2egLx8s3tTOEbHg6EFCIfNQPubaykb9
         8ZKlfLqXeJHqbXfuSi9+g5o5EzJfKmMXmTPd+K2iH8BQXkvSYIW25gB67snYoMsjz7r6
         stsA==
X-Gm-Message-State: AOAM533QL4k//Atx0V6tmNROGqgzfbK1xBgn07No05jXmTK6ungMB8fT
	WjWIXjzNwWjdAPF/UFQzsU8=
X-Google-Smtp-Source: ABdhPJwW06yChJV9Xt4LehMbIXdZ4tDslYx3jyt7TucMfzRnVk4L8bZRX9tdJVfFoDmqV+wv7HByTA==
X-Received: by 2002:a63:720c:: with SMTP id n12mr4596193pgc.97.1611924233847;
        Fri, 29 Jan 2021 04:43:53 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:5290:: with SMTP id w16ls4683674pjh.2.canary-gmail;
 Fri, 29 Jan 2021 04:43:53 -0800 (PST)
X-Received: by 2002:a17:90a:c404:: with SMTP id i4mr4392961pjt.57.1611924233315;
        Fri, 29 Jan 2021 04:43:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611924233; cv=none;
        d=google.com; s=arc-20160816;
        b=isMM5bfDgY9v4QOsobNdpU5kqeIecXrBr78WF6IF/jh5mkbICyV5c1PdTZ1+IS294J
         AXDGWSzblf1/+UnUsIsLSX26+JfbNUWgo/s0zfOpHkcHTUHa1SpZD3zwWXjDq+aA5D/r
         eMbZxiQzHoYuajfiMvfCL3CzXfxTNy6fM7Q1uEQHSQXPPxEcWsb/Vt8yDrLISACxkvHm
         /8T+ZIizdVqjPPQkoWgpqLa7lcMTq4AjN/VQMe3nMH7VymyiKw+NxKazwjupWcnooZKI
         M7ql7ZFHOS/WQWQ6cyfpo60r1p4dsu2/sWUt+b0Y8X6mUoQJGEV7flDaz4FersHwYPAf
         fSjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3vpCkC7uFlZ+YibeWVFAIXOSzm64dBgudr4jQOKgpzg=;
        b=Scnaw84xR0jGWkQsZ3H95WHmCFFWnI0lw/xxq97uML5dBqf4Wjm1zLmZlHpQFC6aAw
         TU57dYWoazycpyfBOnsr67MovqeltmeohsmQVsbxPEGy78/AgbFhVacTmZ0likzCcc9t
         Ev0d6mxv1TYaSFUz0o3Q2xO8KVilq8/oiAu5vvQa+Ivns/pl8MzhDNF6h/kzY7W1IFCV
         ZkUkHNCtfBOXZSFMCq8fIr4kw7dI8GVqGPZZeUWkhbr9TX8GnZKQ3nEiW3m5atdGpGn8
         Pa84XBiZOTMynQeCqCQpuP80nwHlUk9tAk8GvHZvxRR/NuRkudYn/79GiPdV8hAhZDXz
         +ugA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=LSDY4vcs;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id 13si512759pgf.0.2021.01.29.04.43.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 04:43:53 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 10TChhpB029730;
	Fri, 29 Jan 2021 06:43:43 -0600
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 10TChh5u011267
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 29 Jan 2021 06:43:43 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 29
 Jan 2021 06:43:42 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 29 Jan 2021 06:43:43 -0600
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 10TChDW3075758;
	Fri, 29 Jan 2021 06:43:37 -0600
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
Subject: [PATCH v10 04/17] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Fri, 29 Jan 2021 18:13:00 +0530
Message-ID: <20210129124313.28549-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210129124313.28549-1-kishon@ti.com>
References: <20210129124313.28549-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=LSDY4vcs;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210129124313.28549-5-kishon%40ti.com.

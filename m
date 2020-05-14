Return-Path: <linux-ntb+bncBCOOP4VF5IDRBMN26X2QKGQEYNEQ64Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F091D33DF
	for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 17:01:06 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id 9sf26637202pjz.6
        for <lists+linux-ntb@lfdr.de>; Thu, 14 May 2020 08:01:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589468465; cv=pass;
        d=google.com; s=arc-20160816;
        b=oxSqNxq73Xa32BHkGunYSDSK/9bjjaJJCKBdTeHy8IHG3zVCUj1qGaOQao12289/lH
         8DeTHNFhTDcQLo0M/t7A8phOvlFBcpOu5RxPGwVo2O5JpilMRUdvOscGlF5Ltc5DYcqM
         XBSdKvKDh2tsTc9JWwfxZ5HIG/Vd01DdLl8qB6thqJBvsYR9Mm0oPlxZTyfYC3SIWjHX
         q8uP5e9flzidR1sJi8MxS6aOSeZMIv8lUBCJ8K+vgSc4S3Cln/XFELrJAPcvx4DFR5DH
         KGBL3o0R0sr+ZRybmYS2j59igrKbRLNM/e/FDyr8TVP/Lay+udAAUtVMEdgVlsQUAOHR
         2aQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=1fBsFEG91+bJD8sx97M4uglsVLi5DcxGXg+OBKwAyHg=;
        b=hCGdjGy7y4Xex0TjHDTESk5eltZUmMekumi0oxCa2eYLegtdyUT0VxtwRmYzzjXUIX
         RL4HQ2hleLWmwGZxAly6tmgP7FPW8xNxc67A4Xr8kOLlPMhuXo90ClCgOOavzpGSfefn
         WSi8GjLIYaNZYJ0hljKMJ4IWaV2GLw1HlbQ46wf+XVyu4A6P4qAhzPfvM1paGasrEjdd
         RBgoGBPaXt4L4gX58Q4XqlL8QrfvZBmjPB4F3rbHtBpOkBvjolcj6hy2evxoMklNZJgF
         3TSKc61uRsyKUscZSTq9IY+Q++w+Dafswx5VeupG++hcWwtmOTPXJ7Z4d9KTb5K5lukE
         1/sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=oNLXtvgO;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1fBsFEG91+bJD8sx97M4uglsVLi5DcxGXg+OBKwAyHg=;
        b=LEepvSioo8LrE9luA8l5SQqrX2i3L0YNO/nuQZbcm4FqiGpbOCHK8BylgoqPJmkE/t
         ttOFF3mu1cWBAYXHO/cIK1HOeajEdOZq2FZl7u+odf32Vz2E4DWGZqe6Fo5IJCtSXP2s
         CPo4r4aYIL/aJX9Zg4hq+Is+hoCPFRtcegbT38rOJqRnXfRSjz7xux5FN7iFgSjpzG7U
         Idj9uQw0luUnhi9ZcjA1EGg1zX3nqLy5GlBqwIAorJhVqWVxFBvtr0+Cq4wC+c47+WYJ
         AE2sPSXhH5p6xBCuV9jWnFvKO7WyCuyP6hCQ13aKaMr2/+WomM67PNQymgWtmZoxTcAJ
         VZdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1fBsFEG91+bJD8sx97M4uglsVLi5DcxGXg+OBKwAyHg=;
        b=RJXnvtUoDXzXvwW2o3xrGAtJ0Kx/6JQILM8eySQzHZXm8NLwpyG3Yg8y6Ak733VmL9
         AcTQXeaao8uvwJ2t8Ea1mb5E/ttp0qDkHc0m1T2EtFiLMlZbPn8c3fPAHwzDKk/j//iR
         8kaDbJl8aWnhRu2UDuw9p2arsEKq/W0awJym/EXSTyNSFBqQjBSnhG+stydVlXwPgPnf
         njVkQEUAx8fZJAnZaN65bVmRtaYMOC/7TeIh/BrXG9ExCv2PK/R8X18yOPvh/kGlXXIY
         eUIJFArD8eg/kRLEOiTfyA8ymVf4a0CApH2xVv9weteKZqvcjyn8I625Pm7GadCmyTsl
         oFOQ==
X-Gm-Message-State: AOAM532uaM6NaJJFGOVIn7IXuMZl3KiLzjzk+sRZ9J5CywC5ubXrbHRB
	cpm587Oq1eqEs8516G2kqTk=
X-Google-Smtp-Source: ABdhPJxQwDm3OR3R7mJGsV/T52RkMaoZKqnvlTRhQIktSzVpHIiy0xcHmt6x5C0ealkzXQb3eTPCtw==
X-Received: by 2002:a17:90a:246d:: with SMTP id h100mr3752947pje.21.1589468465440;
        Thu, 14 May 2020 08:01:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:1703:: with SMTP id 3ls1055264pfx.8.gmail; Thu, 14 May
 2020 08:01:05 -0700 (PDT)
X-Received: by 2002:a65:6703:: with SMTP id u3mr4275983pgf.179.1589468464890;
        Thu, 14 May 2020 08:01:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589468464; cv=none;
        d=google.com; s=arc-20160816;
        b=pnUZ6XggfWWR56AR7h9oiVb5b7Pwvp2vVnBnBstxVonG/ziiYmu+ceTdV1UW+Dc5lD
         7uQ4AM26sKk9g20Yv+kqz0jpk1H/dp47NPFOjwCqmf60UUL3wtSdGKBARByWWeDtFct1
         2IxXco6JBQdPGKyf1podXijXpsOSjzspCRMpW3j2qBEoMD9dK1HHAg82tuCWzFijDw3Z
         Mvav3kKWdgPDZ0KxGrmByl8hNtr3+TUbnzqiWy/eebOE+NvRf/P5w5Uayjr3KrMRYxxi
         n10R6VCiurMAnDPoc5UsHV8vBS2B2S039PsP1Tr9y4lwlIFSPLWk2Pwx2RNyqcE+TXqT
         foTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=d0fOtFl25Y4cCZ7iJrJTiA5KGVWfErtqvxcwYo2KWNQ=;
        b=Mk6o1++gDiLPa6ThJ/kXJihpZ0q3SEny37LxTKIoK3iteRM3MgTan9wC8lPEAZKfeY
         x++lNeQKian1RJaqqH8P3phJLqAQFS9gVAWkihfTqkCAbetrKR0pKGF7kqeJoKIhphj2
         2Gy9iba+bmHyOB6y3/rwlSGeSRRKPyif3camlG2u5wNcBvoSJ6aA+ng5/ZL9NIYPg8G3
         5SVFydQxgGAVf3s2Mxv2kjcGBBpsfAbUTgzbkCfelX+5P5i4FD6CUBu8Cf+ABqLZnZb6
         unE6jce6bzaULQLZNPVuV47PR4+rh6nCGLm/1AiOyXsQBu/W3aL2ZvxsKfnKQrLFEOFg
         cOiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=oNLXtvgO;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from lelv0142.ext.ti.com (lelv0142.ext.ti.com. [198.47.23.249])
        by gmr-mx.google.com with ESMTPS id my14si128652pjb.2.2020.05.14.08.01.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 14 May 2020 08:01:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted sender) client-ip=198.47.23.249;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04EF0Phg032575;
	Thu, 14 May 2020 10:00:25 -0500
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04EF0P3r103450
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Thu, 14 May 2020 10:00:25 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 14
 May 2020 10:00:25 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 14 May 2020 10:00:25 -0500
Received: from a0393678ub.india.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04EExgAq019279;
	Thu, 14 May 2020 10:00:21 -0500
From: "'Kishon Vijay Abraham I' via linux-ntb" <linux-ntb@googlegroups.com>
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        Arnd Bergmann
	<arnd@arndb.de>, Jon Mason <jdmason@kudzu.us>,
        Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
        Tom Joseph
	<tjoseph@cadence.com>, Bjorn Helgaas <bhelgaas@google.com>,
        Rob Herring
	<robh+dt@kernel.org>
CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Jonathan Corbet
	<corbet@lwn.net>, <linux-pci@vger.kernel.org>,
        <linux-doc@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-ntb@googlegroups.com>,
        Kishon Vijay Abraham I <kishon@ti.com>
Subject: [PATCH 08/19] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Thu, 14 May 2020 20:29:16 +0530
Message-ID: <20200514145927.17555-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200514145927.17555-1-kishon@ti.com>
References: <20200514145927.17555-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=oNLXtvgO;       spf=pass
 (google.com: domain of kishon@ti.com designates 198.47.23.249 as permitted
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
index 60330f3e3751..ba43e1e05958 100644
--- a/drivers/pci/endpoint/functions/pci-epf-test.c
+++ b/drivers/pci/endpoint/functions/pci-epf-test.c
@@ -831,6 +831,8 @@ static int pci_epf_test_bind(struct pci_epf *epf)
 		linkup_notifier = epc_features->linkup_notifier;
 		core_init_notifier = epc_features->core_init_notifier;
 		test_reg_bar = pci_epc_get_first_free_bar(epc_features);
+		if (test_reg_bar < 0)
+			return -EINVAL;
 		pci_epf_configure_bar(epf, epc_features);
 	}
 
diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 85e542aae617..df8789fee01e 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -150,8 +150,8 @@ EXPORT_SYMBOL_GPL(of_pci_epc_get_by_name);
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
@@ -165,13 +165,13 @@ EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
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
@@ -186,7 +186,7 @@ unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
 
 	free_bar = find_next_zero_bit(&free_bar, 6, bar);
 	if (free_bar > 5)
-		return 0;
+		return NO_BAR;
 
 	return free_bar;
 }
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index 68f7c0d81442..463586889453 100644
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
index 8fb77ab1968f..e51f3070bcc4 100644
--- a/include/linux/pci-epf.h
+++ b/include/linux/pci-epf.h
@@ -22,6 +22,7 @@ enum pci_notify_event {
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200514145927.17555-9-kishon%40ti.com.

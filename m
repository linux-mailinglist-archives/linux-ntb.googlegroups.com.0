Return-Path: <linux-ntb+bncBCOOP4VF5IDRB7VNSH5QKGQERGT2PSY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id D307F26F610
	for <lists+linux-ntb@lfdr.de>; Fri, 18 Sep 2020 08:43:12 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id g1sf2842156plo.3
        for <lists+linux-ntb@lfdr.de>; Thu, 17 Sep 2020 23:43:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600411391; cv=pass;
        d=google.com; s=arc-20160816;
        b=HC+DdVJq7RksH6kZzlCAzcAUysv97/CaIofIPViItLuZV2AlLcudNzwmz76onQ7k1a
         9eX4Cf2XWBnvSkB5wnVp5EU8gKHQmsm6BLQBlCzkPe+DBGGs833NhIpELBnqqCv7UD/K
         bTARw8ZFNIcRbrIQKKMAW4StxPm3govHrJiAGGys1gph1miHPkkjufFTI/WNSXkTgKkv
         Khdt/BALNKZxFHBaBhSwcjQIbkqotVq8VAzhvCafLRx1AZSlx+oe9ijYY9MHzphVRt3p
         +9tsPEoxP6G9fTU1Xyq/rEsR0xZAEy0jvkgMED1v/JBYH/z919We8yqGgJR/8/AznYez
         mi7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=43kmqOt9WeNJEuXLzN76gz6nvUBAYSNm1UB48Mpi3DA=;
        b=uAPihQ1nTgyhYwuWmQ1ntVgOPY5VtCciAzTpPCS+i5stXQX6DNIb4b+QRdFQLaQ4v7
         QcVJlHHa5YWEmgkrAkYgQDXKzy4DIqtfVuxVRhxD9gUfpe8q46+B+1PmqMKzwCBLtWKN
         GzqMmUW8kfNVT97mU73oOiBlTtguEBDctoBwJo5CqHUL4/5tbdMKB0hzYK73Q+mk3oRJ
         QDOIy0m6sjttCF9oyY5Rw2v08MAUWp75TYAcmGtVvFTf1rJWUoGL5zlUhhGBVZ52URld
         FSOqLcZSo1IFWjmWtK6K+wvUSQXrlOXjN8iuYusU0iB317qziHK1VP5UU3qzWsnrDnnO
         10+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=FNZXZbK8;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=43kmqOt9WeNJEuXLzN76gz6nvUBAYSNm1UB48Mpi3DA=;
        b=V+HEhQa9ZQpYZH2kG+1Z8DgV08weoLXhbE2HB0IurGLK6rVKN/vJGuSEBub8zfdyea
         uxAP71YoZ3+IBSIaYkRt2oP4pq5qSMnqa9nCz4kIb8c44qvSPXjnB5ywXRfDUqXfFfbX
         YyNuyvR+JjuqklMyPLM/3oJkQ7h2wUCp7tVnMFHlixspD63L6kE+PjiR4BGHdeNEJtRA
         3S8LXekSFhOxVzHDrzNi9hE8sniArEmQ9DEaneLPScZGP+/OB0MdHER+SYBIDLVqLkU3
         jMI5tXLH/YZ6CLjlcv52KnyWtGMr5m6+TzfefL22Oz5gROXSeJ/gtTX5QL7W6Qy55VKs
         DFMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=43kmqOt9WeNJEuXLzN76gz6nvUBAYSNm1UB48Mpi3DA=;
        b=cWj6HhnZne/rt3xg092twacFXhbHw7G683Bq1ENws2j/FPAUf7Nq9g+hU3sqQ3khLJ
         SCCPznMEVAk1kdlnv5fEJqumPlELqgyYMdOPnF8t0k4S6AVDZvbelvOIE6+uZ0NHk6fR
         4E9BF/wRiOjD8yHG45sTNlOysJ1ozlUnbYPaIT7PN3XCjqk/WEaeTX/FWsYBxXydf8MH
         I4Yli2WNaVOY3nzEB9/Re2Ex8lWY+uonorfEfk3zG2keuLzguTcRYKEHNYgqoVX/dtsX
         oq4p2+tIBT6FT4IwPgDwCvfPkRqt0H79AukZs1h53EayCmo5xDNe5jVS49GfKjlWJqIe
         4vsA==
X-Gm-Message-State: AOAM5318PA9rllAxFUxrYIf2j/EmQijC7Mtpvx8XotMDpPzwBlbk2Ymc
	sFfNnwcOu3PetDHstWw4I40=
X-Google-Smtp-Source: ABdhPJyR9bEi+KbCTRVb8tN/JhX6uOek1VGKK+bTEi1EUh4iRZOt+BMr7N3tdYxz8Unz+Mj/R3s1mw==
X-Received: by 2002:a05:6a00:1481:b029:142:2501:35d7 with SMTP id v1-20020a056a001481b0290142250135d7mr14713830pfu.55.1600411391019;
        Thu, 17 Sep 2020 23:43:11 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:bc89:: with SMTP id x9ls2120888pjr.1.canary-gmail;
 Thu, 17 Sep 2020 23:43:10 -0700 (PDT)
X-Received: by 2002:a17:90a:ac2:: with SMTP id r2mr12128979pje.71.1600411390401;
        Thu, 17 Sep 2020 23:43:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600411390; cv=none;
        d=google.com; s=arc-20160816;
        b=ncST6arOZlhP1HaIs1y9gY4h25uFE9zcgnqUjzvgG1wVvyuWh/JdNxBjm61jv5wZat
         /+sxUYU+gW4OFiBr5KfnA1ho/zsD6UOUwZVEGnWMN33cPyK+Q0EnnaQrWMVBeiz5UvWc
         UcFm0lWvbWFJ+dQzOWiYdn2/gktlJSjES31y88+W5feo36f9PXI0DVO6DVorhxdk0WWc
         0VEXuv/SIKDwKIlVnd3y9ynPDT3Os5+rY526eB2O3g76GyhvLT1wzdE/fq+vu7pAMu1C
         Jh0rou7d5v4VBqXH9xQQjbI3hj0y2w8+S8YLh9Nl/SF94iL+yjUD8ADzsqXdhLsPfNgL
         SkVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=3vpCkC7uFlZ+YibeWVFAIXOSzm64dBgudr4jQOKgpzg=;
        b=Z0JSceWzlgG5Z/3FxOB41hRN5Fzz9uA6k7AEoQimhY5aJniC2Cllnou0QKt6jDLBk/
         j3zMZaVRw6jrk+qdq39xZwpPcZmuGPFrpZwzhD4B82esFEoW4n+aKhOMBQ98arzXNTK7
         2dQfuWEWICL63CinmYSyw7ruc7r4fiqsXkzAGIaLjc9QL/nLJxrRR1FrkEwWKlCfhvxF
         AFfv4jYpnE7Z93at9UQzzTG7i6VIn/+Uo9KjWRKKcDyeLhgxP3xYoWR0JN2I4SpqLcE4
         gRLXfDWaq6npIXmuIDw05hQbaTioF3ug4jnnfU2c7Sjj7gS5Mt1tI5xLYQvh3TNaDj91
         zt9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=FNZXZbK8;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id t15si125551pjq.1.2020.09.17.23.43.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 23:43:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08I6h2TY015323;
	Fri, 18 Sep 2020 01:43:02 -0500
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 08I6h2Vw082291
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Fri, 18 Sep 2020 01:43:02 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 18
 Sep 2020 01:43:01 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 18 Sep 2020 01:43:01 -0500
Received: from a0393678-ssd.ent.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08I6gUCO094595;
	Fri, 18 Sep 2020 01:42:56 -0500
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
Subject: [PATCH v5 04/17] PCI: endpoint: Make *_free_bar() to return error codes on failure
Date: Fri, 18 Sep 2020 12:12:14 +0530
Message-ID: <20200918064227.1463-5-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200918064227.1463-1-kishon@ti.com>
References: <20200918064227.1463-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=FNZXZbK8;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200918064227.1463-5-kishon%40ti.com.

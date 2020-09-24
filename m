Return-Path: <linux-ntb+bncBCOOP4VF5IDRBIWMWH5QKGQEQMYADCA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 01619276D08
	for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 11:25:56 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id c26sf1713730pgl.9
        for <lists+linux-ntb@lfdr.de>; Thu, 24 Sep 2020 02:25:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600939554; cv=pass;
        d=google.com; s=arc-20160816;
        b=mXHnaVXDX1KJ1Xs9tlsNxfsrlQ9r0mkU29LrxuYEcbq3g8tC5JI8DvF1H5AWlyboBV
         Zv27UPksEEZiyVyLC9F414OUgaGaVc2v7EDl+GE9PG/eFp1eS62dDimSJ7ZTKE8kmcIL
         Cv+M1PaY8iLwBUNVh55FmkEFqXtuO86fXzVtnm1MSpd6vCb+RpVhzZ6Fwt+EnfnvryTK
         pbzMvbln1Lq1WF50ODjg3OM3N9tCursB4IeZGXR1bZ0qH5FmRr4dNnGjXqJXpF5WlMqQ
         jB3QJKngdMCFcYt60MnTimRK0gVV9i55VFqp4tLagZl1izuvOPaeqqypQzWMm0ysv0OJ
         FQOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=jj3kCNECutPlM8+TLZtfRqfsQ7hF3+472ovGLQSw4W8=;
        b=zPEYaM0ruUxOkcC4tVIhGi7FpNjW16H7/PbdGgcCAi1PL2R/V0s3lcoT2LXPNAe8cK
         M5z8SnCSOK6a5CqkeVMIcbzgfRIeXEYCykv3+DqmdCupTlvITg2BdhFZqwMtez2sMDsR
         3s4ijDj8Pc+YKJ6121jdL6CvpnK7vTqPGqpf6HAA0CvFu+QgHCd9BlDnSeEB3VdQ0HUe
         AfDvsQF4XegzMT1+6MEBNWvY3kEepJiXLu8sKkQ9ZEcQj/hbFD5q+ifOMFj4UM4nQryv
         Oyy47g/UJsav7qrB9FvPpHrvDW/WtBovfvgp0MQ05dT/9pTXPHWAkK2qy3dEPsntApUu
         yirw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Wr5/V5Kq";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jj3kCNECutPlM8+TLZtfRqfsQ7hF3+472ovGLQSw4W8=;
        b=MGQ0oBtt4u6VOXzKKGUKnbVm4E8cvSbgnJTAR3NuAocXpsJu68BOXFA+/G1ASN+FyH
         nyjRA/E3yO3LVjmetcsaYt5n326OTtB1cUXv+Qmma5jZ/Q251eJO/4tjnl0u9cw1oW4i
         KgA1JaqMH95GUdTApU1oXFuECtkgAyvF1GMDS0XgBg70Yj1ex6jhazT/O9a+4PjNP81u
         lNcJDkn8okqGpuoy4kgs8JCboOp/p80fRZiflhfbuS1lip3WlQFVxYG9i1TJIRqM88iP
         RZcsn1IJaF+WqfZZmfRb5h1H1NxJYDS/1kV5jJ+G0x/1DPb9yg7Bmy336SJUylBllPYx
         26iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jj3kCNECutPlM8+TLZtfRqfsQ7hF3+472ovGLQSw4W8=;
        b=N0dzaQpBL7EEE7tXB5uiMhjQQaLg0POxjrh0FoVd6s4LtWhowg+CS4G/pgsBUiu0Pb
         pZSy0+XCB3nVEqRT6uHPIsb9TPoIs4FcUG+uUn6rp52jm5z6/MPmFjcn1qYKbDxu9Fl+
         vqfzQIXX51OIBWABjAEV3GZAfyd21PmYE4J3RH7HIyGn4Iqx96o7F75dw5tNeB92XKyv
         BjL9rdMJz58yoPsN3Vv2B0rkcHK2QiOn5qBAAgPveA44Rz/RGjEzJshhSg2yahLJ1l5q
         SbYx+nUFHL3e1THuG0vKn5xtSlmrZQESFZMFznEtNs5E3ENNz0ouNp5ZBhfO5vRqyQts
         D7tw==
X-Gm-Message-State: AOAM530z7F3O+T/+ZfDXnBcqzJGlerrvJ4PwGWZloYr4GsEpde69+mQc
	eXbLMc8xU6YdAqnz0mwkjvI=
X-Google-Smtp-Source: ABdhPJxjMI/amjWfQCiq89wz/odep879zLeOHaN0TnKuTsG/wWlsSTg5sYOE3DSnCtFZgRU2ZJKwsw==
X-Received: by 2002:a17:90a:6a0d:: with SMTP id t13mr3405231pjj.208.1600939554233;
        Thu, 24 Sep 2020 02:25:54 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:7449:: with SMTP id e9ls1242391plt.0.gmail; Thu, 24
 Sep 2020 02:25:53 -0700 (PDT)
X-Received: by 2002:a17:902:bc8a:b029:d2:2a0b:f09e with SMTP id bb10-20020a170902bc8ab02900d22a0bf09emr3778225plb.33.1600939553673;
        Thu, 24 Sep 2020 02:25:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600939553; cv=none;
        d=google.com; s=arc-20160816;
        b=KtpcDpkwCEP3TqTCvcZDjaAKwVtsjzim9qSv5UNUtatZjgD/cnSpIRk1ZSD+j2zOH4
         MzeNbZHybbJCxBbWaSKYZWgAHaxaz0MQ/OyZb3XxAjAbcDZXyZWgrHMG4DzpiCOx0/qj
         Qw5tskKeXX4TmF75W+E/ah/D5uB/idQDqhkzLky6LAQ6P5uT2KWc6oKISQMukEA5mzCN
         /tkMsry9Bicy2fd8nDDqlzI1iTjGci7by8AEGhdTa4Wn0pQSXqdQdenHtzKLBg2rDqXh
         p2DB8T/HxFw9cCanBRNkNkF50XuZXdTKAP56YOx+bay6L+JkF/K+jit5LHnfwaBUkieo
         uZPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=7qF2OVbWDyaTlnP441W+A6WtQychKbyb9MpcDopQVLo=;
        b=jZTTJq53RnO+tBKf5XW2PpIG/wX8m2xZYzu6ZAAoWyropzRJU02DeutfNFs3E/IJ2e
         bQ6PxhtbSRropv3gKmEDssAHgoiKjtqCKiVQYpLIshg4An/sI2x6enMCfEsN8gwiYXQX
         DMrZyvgHiWSsQSQSoFitLecPsY8sv1KBGNIrsx9iHF5qtLhydpGzyEGQh6TCE9iSvFEt
         ZILvQZMG53Jadmw3qtwpsR7G09VMRJuV5/U+OAtxy8t7BiS4q8NeZzc8Pu4ETyWhZ1Z9
         89g/FQnmda8GY1ZKaijjLW0CzAiYu9uZOLEJmKKhpHv16DrCAfRLEasMOTFZshpiQ2Xl
         9lpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b="Wr5/V5Kq";
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id b20si155669pls.0.2020.09.24.02.25.53
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 02:25:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 08O9PjA0117030;
	Thu, 24 Sep 2020 04:25:45 -0500
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9PjrS017681;
	Thu, 24 Sep 2020 04:25:45 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Thu, 24
 Sep 2020 04:25:45 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Thu, 24 Sep 2020 04:25:45 -0500
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 08O9POYq011000;
	Thu, 24 Sep 2020 04:25:40 -0500
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
Subject: [PATCH v6 03/17] PCI: endpoint: Add helper API to get the 'next' unreserved BAR
Date: Thu, 24 Sep 2020 14:55:05 +0530
Message-ID: <20200924092519.17082-4-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200924092519.17082-1-kishon@ti.com>
References: <20200924092519.17082-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b="Wr5/V5Kq";       spf=pass
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

Add an API to get the next unreserved BAR starting from a given BAR
number that can be used by the endpoint function.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 26 ++++++++++++++++++++++----
 include/linux/pci-epc.h             |  2 ++
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index 25e57672e1a1..1afe5d9afb0d 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -87,17 +87,36 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
  * pci_epc_get_first_free_bar() - helper to get first unreserved BAR
  * @epc_features: pci_epc_features structure that holds the reserved bar bitmap
  *
- * Invoke to get the first unreserved BAR that can be used for endpoint
+ * Invoke to get the first unreserved BAR that can be used by the endpoint
  * function. For any incorrect value in reserved_bar return '0'.
  */
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features)
+{
+	return pci_epc_get_next_free_bar(epc_features, BAR_0);
+}
+EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
+
+/**
+ * pci_epc_get_next_free_bar() - helper to get unreserved BAR starting from @bar
+ * @epc_features: pci_epc_features structure that holds the reserved bar bitmap
+ * @bar: the starting BAR number from where unreserved BAR should be searched
+ *
+ * Invoke to get the next unreserved BAR starting from @bar that can be used
+ * for endpoint function. For any incorrect value in reserved_bar return '0'.
+ */
+unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
+				       *epc_features, enum pci_barno bar)
 {
 	unsigned long free_bar;
 
 	if (!epc_features)
 		return 0;
 
+	/* If 'bar - 1' is a 64-bit BAR, move to the next BAR */
+	if ((epc_features->bar_fixed_64bit << 1) & 1 << bar)
+		bar++;
+
 	/* Find if the reserved BAR is also a 64-bit BAR */
 	free_bar = epc_features->reserved_bar & epc_features->bar_fixed_64bit;
 
@@ -105,14 +124,13 @@ unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 	free_bar <<= 1;
 	free_bar |= epc_features->reserved_bar;
 
-	/* Now find the free BAR */
-	free_bar = ffz(free_bar);
+	free_bar = find_next_zero_bit(&free_bar, 6, bar);
 	if (free_bar > 5)
 		return 0;
 
 	return free_bar;
 }
-EXPORT_SYMBOL_GPL(pci_epc_get_first_free_bar);
+EXPORT_SYMBOL_GPL(pci_epc_get_next_free_bar);
 
 /**
  * pci_epc_get_features() - get the features supported by EPC
diff --git a/include/linux/pci-epc.h b/include/linux/pci-epc.h
index cc66bec8be90..cfe9b427e6b7 100644
--- a/include/linux/pci-epc.h
+++ b/include/linux/pci-epc.h
@@ -203,6 +203,8 @@ const struct pci_epc_features *pci_epc_get_features(struct pci_epc *epc,
 						    u8 func_no);
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features);
+unsigned int pci_epc_get_next_free_bar(const struct pci_epc_features
+				       *epc_features, enum pci_barno bar);
 struct pci_epc *pci_epc_get(const char *epc_name);
 void pci_epc_put(struct pci_epc *epc);
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200924092519.17082-4-kishon%40ti.com.

Return-Path: <linux-ntb+bncBCOOP4VF5IDRB3N24GAAMGQEAHOSX7Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4683930B0F8
	for <lists+linux-ntb@lfdr.de>; Mon,  1 Feb 2021 20:58:39 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id c18sf10204100pls.8
        for <lists+linux-ntb@lfdr.de>; Mon, 01 Feb 2021 11:58:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612209518; cv=pass;
        d=google.com; s=arc-20160816;
        b=VTHNPV9SVtm2adD8P60X3Cs4Jtsnc6SBX8yx2AMEOFGlZJ+Azft9alFedX3v05pAd/
         mlA6x7rpaRu2bxBiA6kJcHmGY1bWnAQtSPZhXqD7CFvhPJDeWU6YoM2JpJZdoCueE9IE
         F1KnNR5x3VJe287Mdx0fj2Ul4+Sflvr/GlOtWi/3lrMtkpcHCqqN30Pn+WW813xkHD7Y
         8lwu0N/1+jyJbzReZGxWL/4RF6G1u3/mbSv3NY+i1DIEaq6o4XrnGI5akAcgP1t1XfC0
         5B/EQXFiFK5yHzqNxMBYNxDh3sO/npV7fSFpWulsDlvtr3CAWrASJBax+JoX1cR4ZMRB
         yoAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=++Y/cFdoxspOweMTcM4tKHmgfImq5bZLma9jCdEAehE=;
        b=z1sDT34vVAsFZAfmbTpPvPtE0Oxdx6oehySlZl6AIeeHPXkYhBORL7wveEcmrrAh2Z
         7M2OH8ljsdnOgL88DtZYcrZVFeJxZbuaPoQdc5KhQz6PO9fEDI2jFmFhpuiBRYvTZqpJ
         kbkNguF3WyCxnEkpTY248vypBQhyBrR/PqNQ6Zoh37F/YBsUW84s+Tu3U4qjZEruMS9o
         N1jm26wfHEBA0Lm9+PCfn2jZ/6VMhPDVayg7h+KbnT7pHQcy3j08zVVaAcORzN71p/XJ
         lmtzjNO4h9q/PpPu+5U/PUUM+v9JitcU3UJ/sJyVxTMUNp8/+rKhJjlQNx0O9DJTmGcQ
         APLA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=RvD4q44q;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=++Y/cFdoxspOweMTcM4tKHmgfImq5bZLma9jCdEAehE=;
        b=VOTxNx0Nj+to+H3mAkYrDCgepNj+3l9rKIE9y5kVWDKSU9MdPhKyZopCxB3LuYolw7
         u99WV+FbA7DenXOrAyHGO7KFZ5scDgGBKx9C3nuYV2Kgs88iNnhH8iT3jcOj5wCg49QR
         PLwUT+Wg/taL1gVOv3lljmPlLT7EPSFmNbzOr0+Me8VIVpqOevCohvkbfpKgwc01sgxM
         pHMm+tpNbvE8T66T4Gp0G9YWZtMqzrXXCM3LCmnL3+gVxvXcBaMT+H8ScHjMva1xpGJ0
         cnhnG/90Tgdah5YhrW97rK1PG2vY/ZMArtX0DYfM6l0POH/s3MgPUPs7e0eKCL7ImQyz
         jTeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=++Y/cFdoxspOweMTcM4tKHmgfImq5bZLma9jCdEAehE=;
        b=g1ZYJ3XsdmWgwuPIqKVyYSjI+ZaDB7dgLzeHBCN0uE/+w7x+HsJqwjcMNOeeHblB7B
         ELDh4Nbzs+U6bqKwrUUCLmVL7JFDBVlIXX5ejgIwJKYEB1tDV29KXamrU7eIfkpgNDYc
         wFEhN1zUYe6Ldr6AAw+c7mfgAoz487BiTaIlqo8cE15km3tWZtAnaTa+AsDv4bz6kt7u
         DJNGqywaMtS7e2JgKrtk7nC8zGlJ1xHu/HhJYA1l4vb1JZgfx2wGcXVFWV/C9VIANdlo
         7u7pSNAR4LRGW09aw4Y/Evqja4e1GEHATb5bYFTeUzMG3U7jC6Of5MqNZGxP6UlyEEaN
         gWpA==
X-Gm-Message-State: AOAM531j03e7Xl6jYMk2ly/QDdFWyYnR3/9sGHAIFyv+el+jnBe7OoD8
	9kZaZZ8TC9EkBS4m1HNjAxo=
X-Google-Smtp-Source: ABdhPJybUMB6f0ZJHpgen0LazC7CBP4A8xVUbuWn5FQStYuuFIMwNA+wm9iXeTHnL/rLpNTH9m1dEw==
X-Received: by 2002:a17:90a:fc4:: with SMTP id 62mr514736pjz.181.1612209517947;
        Mon, 01 Feb 2021 11:58:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:e8c8:: with SMTP id v8ls8802915plg.1.gmail; Mon, 01
 Feb 2021 11:58:37 -0800 (PST)
X-Received: by 2002:a17:902:c106:b029:de:af88:80ed with SMTP id 6-20020a170902c106b02900deaf8880edmr18672118pli.35.1612209517333;
        Mon, 01 Feb 2021 11:58:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612209517; cv=none;
        d=google.com; s=arc-20160816;
        b=dE9My7IIvshF2oEGPQKi3Zvii+aU62zEq6o9Fh+13KEGdEjEebonF79Wij81Tg3/k2
         EmNKbDBDZc5g2vxw2jexIVm+dqth3r0O8nEFj+a4UfUnENPZhFB7PW0pSEfDVEE6Hko/
         Nicv4EAoZaK0Gx1wydlx1XGZtfO16cubaXVWmBATQsDzfiEDSmN9KIbwqY8fKHyHC/F4
         w/4AP7asYVg+EsYDLiyQFPjn7rOuRaj8P3ehaxnsKoewl6YPsOKCcbWmYDUgDgd0cTCp
         R1TtK3+We+VvMLVN1pqrQosw1CIXpsrxqfwjQ44nYtB8KTBkJTJQSAH3TryfqWlDie0Q
         MK2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:date:subject:cc:to
         :from:dkim-signature;
        bh=re6MIOXxybv+Yv493YnPwG3dJx5wl6L6fPllpFd+bzs=;
        b=oA50+mJfQzvGQYAxz2SRyKqnLJaJeXGd/mCYwekbsKzF5dVKX4Z4zI99ob3GrQFqy1
         6/zBm9oAnhSkaKKdFCBQGpHhUCVKPzYoTgGZ50ecRlec8WDtzMXLYOzf2mHCOqXSPPCt
         gYlO1BxlGHNC+xiunr9mbjlfMeUjdcquszFrum/X4wm6EXm6jGsB5GZ8jUI62CT0gI3t
         vuE0z6cVRsw4wpdSqwZ/+7h75qZUw35i1u/eAfeAAyfq4LLKsIZLqUZJ/uvsWL2EElnm
         Pe5y9eZ2sZ6sY29XkUqNt+KnhSssNU5Z8682w8W6kT+KBBCAFcfJDRE/GA6GB3tG7R1u
         wfew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=RvD4q44q;
       spf=pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) smtp.mailfrom=kishon@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0015.ext.ti.com (fllv0015.ext.ti.com. [198.47.19.141])
        by gmr-mx.google.com with ESMTPS id d13si1181809pgm.5.2021.02.01.11.58.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Feb 2021 11:58:37 -0800 (PST)
Received-SPF: pass (google.com: domain of kishon@ti.com designates 198.47.19.141 as permitted sender) client-ip=198.47.19.141;
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 111JwR1H037066;
	Mon, 1 Feb 2021 13:58:27 -0600
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 111JwRkv036460
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Mon, 1 Feb 2021 13:58:27 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 1 Feb
 2021 13:58:27 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 1 Feb 2021 13:58:27 -0600
Received: from a0393678-ssd.dal.design.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 111JwAQZ085814;
	Mon, 1 Feb 2021 13:58:22 -0600
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
Subject: [PATCH v11 02/17] PCI: endpoint: Make *_get_first_free_bar() take into account 64 bit BAR
Date: Tue, 2 Feb 2021 01:27:54 +0530
Message-ID: <20210201195809.7342-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210201195809.7342-1-kishon@ti.com>
References: <20210201195809.7342-1-kishon@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: kishon@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=RvD4q44q;       spf=pass
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

pci_epc_get_first_free_bar() uses only "reserved_bar" member in
epc_features to get the first unreserved BAR. However if the
reserved BAR is also a 64-bit BAR, then the next BAR shouldn't be
returned (since 64-bit BAR uses two BARs).

Make pci_epc_get_first_free_bar() take into account 64 bit BAR while
returning the first free unreserved BAR.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index cadd3db0cbb0..25e57672e1a1 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -93,12 +93,20 @@ EXPORT_SYMBOL_GPL(pci_epc_get);
 unsigned int pci_epc_get_first_free_bar(const struct pci_epc_features
 					*epc_features)
 {
-	int free_bar;
+	unsigned long free_bar;
 
 	if (!epc_features)
 		return 0;
 
-	free_bar = ffz(epc_features->reserved_bar);
+	/* Find if the reserved BAR is also a 64-bit BAR */
+	free_bar = epc_features->reserved_bar & epc_features->bar_fixed_64bit;
+
+	/* Set the adjacent bit if the reserved BAR is also a 64-bit BAR */
+	free_bar <<= 1;
+	free_bar |= epc_features->reserved_bar;
+
+	/* Now find the free BAR */
+	free_bar = ffz(free_bar);
 	if (free_bar > 5)
 		return 0;
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210201195809.7342-3-kishon%40ti.com.

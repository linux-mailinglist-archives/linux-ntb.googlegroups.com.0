Return-Path: <linux-ntb+bncBDAMN6NI5EERBG4RQ2GQMGQEI7JLM6A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E47145F936
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:40 +0100 (CET)
Received: by mail-pl1-x638.google.com with SMTP id j6-20020a17090276c600b0014377d8ede3sf4680782plt.21
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976219; cv=pass;
        d=google.com; s=arc-20160816;
        b=AyHw5UQHi7MaqC8IzD43GurufALPgdo32ujDGvNCz8BYEunMYQNf7O1z7eUzPiykwo
         /tHzWq9jSSlABt0eMmtBYGkzV4MtFrtNz6fxLn7V7UC3/yCHU3+H8urYfF7cGmZ2UuMF
         jy6TLbO6lbNBrlFHlNl2Jsuxmur+xYQ/dTvp9ywtVv7HrHZOPnNk6jWtbwlPLjLKYTRi
         gJeMB6a5D8CJZSz7j5Avg1M+IPRrevE1xs1SiaTAG7sT9yb8A+bYnHlVyxz19fP9hnjF
         euLCbQWzIlIVuB1BNjYbCRqczL0GhyH6CQA3tjD51SwdUtqT6jlI7X6/+rEXP8HaCwEy
         fpnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=5LVwfEGl4nvEqSKrMIcooXrYz6S9RS9DUsSEzvpmSNk=;
        b=NltvHKmYT5xerSixDETkyEIM49hAtxJQnoYG14xao/ahSC3PoYVoHFrMEdjGf9ihKD
         7GRrt8VT+4HeJJxKqqXuwfIac1xEzZ6ib83onS+YL3Q/cfSnCP7oRZQ3SJjvrgfUiYpu
         +Lzxpe/w9AmDe++R0jHcOCwqJmgYViXrOw1il3M4lChMRwojs5Lx7ms+u7pQNo/q6+tu
         7MU3LkrhtD9ZdntB6lI+bTYTs5TkmS9uAEiALACsMGdTokcok2E2IksBVSwiyp/tlrmA
         sJx15ENsI90XVFTrRe+orOGEKCpWf7viJoF0oXmWqL9gLAbZQrk+TONrNUX6LOuj2r9v
         pdVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cblDiOLn;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=UmNw8Mgp;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LVwfEGl4nvEqSKrMIcooXrYz6S9RS9DUsSEzvpmSNk=;
        b=pZ6UU4AhtZsFgfj3Eh07gpNZmRLRaYTNMFmAbkg31Mdr9GbM8eMdpIsbHZCTwL229g
         5sSdlJY4nRcrPscyvCia/0Iit67XteIRBYzsOHpEGTdYH37gGAA2Pfd2dHPEkakQ26AI
         mJfzrqU3qXHUYCtKC+4YsJ4IPA0ND3TagHbhqKpiODDL1nKCaiWFhzhNf8OZ+21rTORD
         WswsfoHj8/gL9J3Esxykh9Js3cpQtcODUB+2S3mG09sn3+zxGFoWuj5ukPG4E2CrU/zf
         A+Keg7ClYDlYZeYA4KxQkTWo8YfzHnwpbDmADuYaqDIO30A6po+XmvVBgOPojltBNJgi
         5buA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LVwfEGl4nvEqSKrMIcooXrYz6S9RS9DUsSEzvpmSNk=;
        b=7dGjnAhCyKmAJ27FsxG/Q9ibodrWtovZIPFsirje3GulpUJpQh3qFE1oGINN8hbcCp
         ACmVeBET+lfY5J4CFMswGEZrKJrd6gSXge++jnd2zXw92B0KWrHunu0xMnq1R3Ug4Fqr
         vDslibYryGC/IKUL3tV8876nO/aOrvjMEjyLAZei5jnPh12Qpt5fKE2HoNNPVc89HPzi
         lV9y2E+PJhi6geyth+ancgWbflujwsy9XtJ6S5rE0e6FuCQ99aS4us/b83MPRUOvzvEo
         f45Sw0lyuuGf4Z7v/eWU3dBlUZvJTUUi/teKDIgvnok6qGl74OJSywStKPx+LEL2cwCp
         8P/g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533vhK+/t9uw1RNR5RGK+SiEY90bud48hlqfYrEpUrddWyAIYpsI
	K1zHo33rpEcAguP8S7MjRI0=
X-Google-Smtp-Source: ABdhPJyRdqFHOb/tYH1myi4nyLqYv/wz33UOZ1JDMWdejDfNBwjfv9GA5DPVuOwQ3wGv02q/Z3B4pg==
X-Received: by 2002:a17:90b:1b4b:: with SMTP id nv11mr19913486pjb.131.1637976219239;
        Fri, 26 Nov 2021 17:23:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:6002:: with SMTP id y2ls3318652pji.1.gmail; Fri, 26
 Nov 2021 17:23:38 -0800 (PST)
X-Received: by 2002:a17:90b:4c8b:: with SMTP id my11mr19878168pjb.96.1637976218694;
        Fri, 26 Nov 2021 17:23:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976218; cv=none;
        d=google.com; s=arc-20160816;
        b=ojn+rbvJkKj5Z/GamDGpo1oxSfjFl5yfqiwBEhMvGoEDZ92ebY9jJH5nXl3/iz9hO1
         EVPMDCFv3HH98L1cx38iNJWD1lyh4/UWAcA1pHeEkheVVKlGtl41GSq0XG/vKBiROsXn
         oJEv78/5LJG6JVa9mgiD6v2t/DQlZyPHGAVDVSTh7WkTSPcjzVbwGBgiMNkNhFf7XeiD
         CM5ClyZgSWMB6Fa+koJeKMPzfHTvX2me4IYI3hH0SUAfirvvhP3D8rL2vQ7868O61pg/
         jY+3YiuVWE/2IrFk05iL+fZWtctfnOy2mO1DUnbJkvxFuja1ykUFfE0H2ZgF69oJccae
         MgGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=AY9W+ny/WXY3VHtZbRLezKFnSFUN+7Vnt3UP4+pA62o=;
        b=XwO/ICbL6y5BewHfhDIp8EBo7Gqm1hNuWwLNs6pqNsAKO1q39GTq05VGpxCZ9muCAP
         XNgvxhLIUg3x7sQNqr/7LNN5bmzTX7uAPT1DEj7HyM0W4o6HfZbYhmtHwlr2W3lkV90W
         U42AKT1IX4GcvdlUICVcOHsM+HaRLhgRba1Da+QeF2SUOm9UVtnm9kIxei8QqgW+qXbg
         s3Fl4kQz/iAfGKHcTDsGa8OFZkzxW0yVu/J6FWJ7+KRmsVBqxztW9R17WYU39t1WA3dg
         2zxrYk1Jc49wBf/09bsIQLn5t6T3Wnz+ZQB/Q266My+jXGsoxhnd7SVOrKcnZQJ4+k6J
         xCkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cblDiOLn;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=UmNw8Mgp;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id f21si740661pfc.3.2021.11.26.17.23.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:38 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232734.590073487@linutronix.de>
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Bjorn Helgaas <helgaas@kernel.org>,
 Marc Zygnier <maz@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 Kevin Tian <kevin.tian@intel.com>,
 Jason Gunthorpe <jgg@nvidia.com>,
 Megha Dey <megha.dey@intel.com>,
 Ashok Raj <ashok.raj@intel.com>,
 linux-pci@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch 05/32] genirq/msi: Provide msi_alloc_msi_desc() and a simple allocator
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:36 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=cblDiOLn;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=UmNw8Mgp;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Provide msi_alloc_msi_desc() which takes a template MSI descriptor for
initializing a newly allocated descriptor. This allows to simplify various
usage sites of alloc_msi_entry() and moves the storage handling into the
core code.

For simple cases where only a linear vector space is required provide
msi_add_simple_msi_descs() which just allocates a linear range of MSI
descriptors and fills msi_desc::msi_index accordingly.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |    2 +
 kernel/irq/msi.c    |   59 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 61 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -302,6 +302,8 @@ static inline void pci_write_msi_msg(uns
 }
 #endif /* CONFIG_PCI_MSI */
 
+int msi_add_msi_desc(struct device *dev, struct msi_desc *init_desc);
+
 struct msi_desc *alloc_msi_entry(struct device *dev, int nvec,
 				 const struct irq_affinity_desc *affinity);
 void free_msi_entry(struct msi_desc *entry);
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -61,6 +61,65 @@ void free_msi_entry(struct msi_desc *ent
 }
 
 /**
+ * msi_add_msi_desc - Allocate and initialize a MSI descriptor
+ * @dev:	Pointer to the device for which the descriptor is allocated
+ * @init_desc:	Pointer to an MSI descriptor to initialize the new descriptor
+ *
+ * Return: 0 on success or an appropriate failure code.
+ */
+int msi_add_msi_desc(struct device *dev, struct msi_desc *init_desc)
+{
+	struct msi_desc *desc;
+
+	lockdep_assert_held(&dev->msi.data->mutex);
+
+	desc = alloc_msi_entry(dev, init_desc->nvec_used, init_desc->affinity);
+	if (!desc)
+		return -ENOMEM;
+
+	/* Copy the MSI index and type specific data to the new descriptor. */
+	desc->msi_index = init_desc->msi_index;
+	desc->pci = init_desc->pci;
+
+	list_add_tail(&desc->list, &dev->msi.data->list);
+	return 0;
+}
+
+/**
+ * msi_add_simple_msi_descs - Allocate and initialize MSI descriptors
+ * @dev:	Pointer to the device for which the descriptors are allocated
+ * @index:	Index for the first MSI descriptor
+ * @ndesc:	Number of descriptors to allocate
+ *
+ * Return: 0 on success or an appropriate failure code.
+ */
+static int msi_add_simple_msi_descs(struct device *dev, unsigned int index, unsigned int ndesc)
+{
+	struct msi_desc *desc, *tmp;
+	LIST_HEAD(list);
+	unsigned int i;
+
+	lockdep_assert_held(&dev->msi.data->mutex);
+
+	for (i = 0; i < ndesc; i++) {
+		desc = alloc_msi_entry(dev, 1, NULL);
+		if (!desc)
+			goto fail;
+		desc->msi_index = index + i;
+		list_add_tail(&desc->list, &list);
+	}
+	list_splice_tail(&list, &dev->msi.data->list);
+	return 0;
+
+fail:
+	list_for_each_entry_safe(desc, tmp, &list, list) {
+		list_del(&desc->list);
+		free_msi_entry(desc);
+	}
+	return -ENOMEM;
+}
+
+/**
  * msi_device_has_property - Check whether a device has a specific MSI property
  * @dev:	Pointer to the device which is queried
  * @prop:	Property to check for

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.590073487%40linutronix.de.

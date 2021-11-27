Return-Path: <linux-ntb+bncBDAMN6NI5EERBXUQQ2GQMGQEWS3HYSQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3E245F8D4
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:39 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id z5-20020a631905000000b002e79413f1casf4353569pgl.8
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976158; cv=pass;
        d=google.com; s=arc-20160816;
        b=03WEgVb2d73ZNuDmL4P5+XtqFWAO3FdAsrPHdc7hTHvRCE/DnbL9sHjnGwDorfyFWP
         jIz3BKqg2h/JW7k666FNN8W8qAKcROSj72oI/Od74fxaUzC1ClkDUobUQvoK3OYtE9jI
         nmhwlUfc/kovlTH7fw+Zk7gNluO5P0VZhYzwcdFW10LMLajgUFQ25UfpDbqWxBDvrTla
         49fOTlfAIK2LUjxlgNh2FEozrsGVpKiHEQpMUEuYO+blsi11DH4T/AdMdtKTiyLlgiK9
         RtQdT9ZWLKPy1WwpMuKtp7vLHysC39DXsHeupzmuG61dCsBbvEXI/sr8fhbg7uXnNNKS
         wCpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=5LVwfEGl4nvEqSKrMIcooXrYz6S9RS9DUsSEzvpmSNk=;
        b=YNrfoOWgYYdm5SRGGX+L6F8ZAPOhFOUwrBZqRdSpzYFbcEyuEXeZ8214nfi5HMJfE6
         Mn1VYIPpVDkVNQVoS2iX7OSnn2JJ1iLaeNebAb6Ox34prcnw236lN2GMs6myRXyXw6vl
         AZk1INIrPZw4ws5eSjkInY0fZ6A8mgqOlMpzXObKlU+u0nro2wcs2pT7kdGN1tR0X7Ps
         eUkGjK7GOWy5zAoKI3Nxq/P1BJ4vZHeMYiIX7cHR7Ddi5CmqyCpRGVtyczSYj/kxOrdd
         CUT6gLfSiw9pjNNSCeXtRtMaoUjyNJ6i/7nVF12SfSxMZWHjMyxL0AyKRjSpV9JI37ci
         JbQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=pzXJVPFc;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LVwfEGl4nvEqSKrMIcooXrYz6S9RS9DUsSEzvpmSNk=;
        b=BlIDWduhc79Nc/HeRKodo0zkIy0xD9wR8MbpNWgot/+lSw0l41WFkZFXVyP+beIjVe
         0gcGFMjHEIwPo4NsdOCCmrctwzRX4ul2c3jm6dfgkUmfap0l2M8/WAYBsTaXYa7I3LfF
         7SlSh01nB5Q8qXxD0837nSVQPPpHexG0wZVb/UeJ19Cv8CQ3GtVY/ZRTwJ6eckMRtCyd
         neIqbXlZfd4u15K5QDUq+1KMPFOqTLs/tFtAxDk8xh3xpvparplTzzp1wP58J/sWBKNN
         sFO+QlIvlL3Wxm2QvgsPyx2v+nswNw3nHS7mWnbprMUYbSAM4cdf+fJp6uVtRux1GPb7
         RlBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5LVwfEGl4nvEqSKrMIcooXrYz6S9RS9DUsSEzvpmSNk=;
        b=WcRFna5jEYjVLgwzZBetFTiqWx7H19xIW95xeqMT56FYkAhGEfozlQlgmiDR07Khzv
         ew5S1RO3KlB9xewfSo4T3w4H4YGpeYFsGRgZR/WZEQSRarF26/T0LbJ2sED/S2JUOXAc
         HOXZG3Sai7tJyfYGU2xpu1ecmpinx24YAd1SFwM0B+Lot8Y9YSoaEDhQ9cfvgK+wNrU2
         CV9CzJLLRkxNHXflX7hKAqNYZFavjZXTj0hwMeKZbaVFOYnLBTNS7M1rY5XKQsfluNhP
         OR9Jw1DKTxmV5QeA1dpIyKe24sxKz5MW08+VXZjCvnCk83cZbqiAMxdhvZroZi7R8acm
         AxEA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530yYmAx9NfTZPxJ68KNVqcZ60AooUCWVXq8Ng46GFPHdzBYsj/X
	hmXjkxFjltSRNXvYpT/+9Nc=
X-Google-Smtp-Source: ABdhPJy8YzGPDG0sbuAn2M5L7k13auz78R9FicZxofMJg41k7kSCsC0ysDuBx4x3VzxIq9ZgI1dQgA==
X-Received: by 2002:a17:902:c145:b0:142:50c3:c2a with SMTP id 5-20020a170902c14500b0014250c30c2amr41732015plj.32.1637976158084;
        Fri, 26 Nov 2021 17:22:38 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:1946:: with SMTP id s6ls2971384pfk.5.gmail; Fri, 26
 Nov 2021 17:22:37 -0800 (PST)
X-Received: by 2002:a05:6a00:10c5:b0:49f:de2c:1b23 with SMTP id d5-20020a056a0010c500b0049fde2c1b23mr24642427pfu.41.1637976157460;
        Fri, 26 Nov 2021 17:22:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976157; cv=none;
        d=google.com; s=arc-20160816;
        b=hgDmXzN5rSIgrY5nZ3NxXdKvbo0RK2MDK4U0rzU3gZbUT6U3abveX4ygqQqMcmzXF+
         VAh5z5LJ79hDliT0jPIAo8KkOSYHjZS+KC+KkAgfK9IxhSp9o0W0TEnGLUszwrsCPkA7
         gv67Y0daccpBib/zrgAQ90Iw6NydAFJ5kbQluFm0C4R10RpqKTh3PQPMaPQXnwFW3ueH
         YEL7Uf2WVpt2OTp/v1/+8zBeLlbucFaFdOFsZfNkYqBjEn+SEHk/IqIP4P+hZgs2m0Ar
         obRxp7db7dLRIcuMTCGKdFxn/NfYjP3cdA8Hl6oi3IhZiS/MLfSZctb9aJb54fnWdv1g
         nH5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=AY9W+ny/WXY3VHtZbRLezKFnSFUN+7Vnt3UP4+pA62o=;
        b=eCpWOxKtksEWavDHzJBfBAdZVKqKYShzlIW2eQsUGbmj2sJDqpfa+HyHBRYvMu4tYW
         bpGmCrVC8Hrnb/feeSEOY9T7ZYR0PxI+u5Q4zJWx2/35hmfVkWFzQ/VSrj8CDQhiWfyJ
         DHLjrFu8nly29YTpzmQRgwLFwDhgf7RS3bpRtGK3SFVEfMV6MjWpcyPchQxElBSP25c6
         NFUriDcXYSPM77qalBZ/SiJdSiQgvx1RdxgpvjKspocw4kpgzpz75VRjFde+lDWZYx0w
         EqB20jLLIORDxNvD8SXejz0jtwDr0+4m+LQE7twYNa2qYeV8fzp9SkD3DwAvaMvCLxPB
         1a9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=pzXJVPFc;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id ls15si1646444pjb.1.2021.11.26.17.22.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:37 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
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
Date: Sat, 27 Nov 2021 02:22:35 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=pzXJVPFc;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

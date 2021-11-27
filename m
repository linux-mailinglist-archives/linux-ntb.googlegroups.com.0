Return-Path: <linux-ntb+bncBDAMN6NI5EERBM4RQ2GQMGQENSPTPZI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C9ED45F96E
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:04 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id i27-20020a4a929b000000b002c672a291dfsf6547765ooh.23
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976243; cv=pass;
        d=google.com; s=arc-20160816;
        b=SMxH/C0nQZgVVojhQH5H1B82a1s/pnYNSSoRqxm5pzk5fBiLPpErMOZGbyjkp25+vl
         u2QtQBbsdFsb6QIjFsQ98EfNFQOkiMfXd62Si+07hsBUxgot+KgPJbmCLSzEaaaDdc3K
         7J6L4Yl0FhKYyZXHMlQTjdxemNd4Bfjr1zWUzBs6EhB1M19LbBJuWi1k7Hx41/unzrCt
         W/Nyg5ZyOWmmDB5HG0UEvR8S86ikqj8ZsJj0k3uFYdYM3MiDOMgrP8eYxvxSbLJPatja
         XdUq/IMVMsUJMpbmfckZCx/HXiPcOmqYtWfPdKGeKHkSuy91CrvNWsGUy4jRjs/82yp5
         sx+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=+++YFRo8D8g/ydi7ZUSjlwyr8RUUYFooS9Y1xRv0jmg=;
        b=kopDUhFkLImbvLUZBAEJMtvBGlq700+2coH9qbrZwxLxaDVAs6NIEQCVLq+c3U4zKm
         eNqJnljhU9zx+2fyuvcnHHHOl4CPK7FzswvC5PCO2fMjq3qe1v+mafE1m5PjLk7zCy0u
         HyIUA7SvuUJG6jk+QOH2JYbKZ0eutiRlKZR87aBtNFVa6Dmvbm/adw2BkpyN2I/4Mka6
         cDcxFWHqE2s8i9Ar3vGkulWwbDeMM0JO/+0MjjRhcS+XVB1a2XNwxCDILnoteqUd6sMx
         jdO3AhMA+bN1qtpteBlJCzysmn2q8+ppek++b7BWJIbxiI0YYNCO/ZwKOK+vfW73Sdkx
         yQPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=pBZgXb5s;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+++YFRo8D8g/ydi7ZUSjlwyr8RUUYFooS9Y1xRv0jmg=;
        b=AM2fUEaXFlZadtRwmNEMjeTHNoCHI+eMMFOJY5g4AWzU1UaWe3mKf9CSKHiDIh0RAy
         BN+J1k8k3LWxsyV3BOYtoJCgzXxiRFBnXg/r6VJw3YLdYlSc9YwR4Z6ivyBFLlDzXmhX
         GN3NPAUNGV9H4X1u5V1reZ6gIx3PJsf2qQTh47dTwOYcjpuy34xf+yp0ZwzTMYJRzSe+
         yzam+XgLdIlBE7NzHhKr8tu0AH+epWgzoFcDQRxWqhgo7Omm64II/cyVwc1lSayMUpLy
         OH8H9ekD36WCniJR06iP/Zu3/4zO1mprs5CxqLBXhGGJyO3MnmJ+mtOwiQOzZ3/Y2Yqp
         Kd5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+++YFRo8D8g/ydi7ZUSjlwyr8RUUYFooS9Y1xRv0jmg=;
        b=J9JKGhR0+bsQ191ihVQcQ7n9BBrHlCCIwtAkGoPDfhpyy2StZvhazjBS9k6op4BiQ0
         UOoro1YjUOBAcusB0NN6c+v6sVo98sLZLqU1VhLMj8l5+YMeQvFyE8iVmtzwifMRuDTv
         gAXUwUlskP8v85OlAuR0vWAslpilbba1LCDh6sboqpwutqQLvmU1lOGPKSiw1iUTgR3n
         4DClECu+iw+6FXtJOFQLDktl8VCdn9ACPL8XRk4g7a6Zup1/eL3bz9MGaWyna4j3JQ+t
         A8S3gP4ED5ZTEUzfcYl9YLrjUoU/qW1gxwMDQxzk7vWnfsHHOPXaRJHkQ7fgI0nG6OoN
         fNhA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531QFkbz6k0ptHrZlhhKQuYEmLb2KwLN4VQQTzj5lUZcsTxmSa8F
	0f2YZ32POUwlMPke6in2tn8=
X-Google-Smtp-Source: ABdhPJwCRRGd/ZHb3rBp0spBAAP72Ndsc4R4xko66z+z9C2olJF8rUhm7NweGnp5BQ9caZq0MQxUVA==
X-Received: by 2002:a05:6808:3c2:: with SMTP id o2mr28067495oie.112.1637976243069;
        Fri, 26 Nov 2021 17:24:03 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:bca:: with SMTP id 68ls2620469oth.8.gmail; Fri, 26 Nov
 2021 17:24:01 -0800 (PST)
X-Received: by 2002:a05:6830:1e13:: with SMTP id s19mr31869335otr.358.1637976241646;
        Fri, 26 Nov 2021 17:24:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976241; cv=none;
        d=google.com; s=arc-20160816;
        b=TLP8jQGX2lhYWAaDh5cItyufkHQvd6m/6H4buxmXKxOdqFieMfITjcu/+WMflEx4eE
         KjwLtLptZJOndtAsJ+zJHuQ+w9QIx9JMwhQl/bJ7dQc36b53wTJwIKBovL6OQNYQInip
         7hT9K0kmdmacIvQE77XTHcv3hKloetV+bCb3PAlNkBUCt0IWEvk/yFfq8WRKL2lPI7Tw
         OSK//06CAPBGsotWVWTM1c4nqr1YllHxfGKI98iPfpqz2D4q6gmADWsNqm4udG1EJMXN
         38ek5HHZqTu17v/GSKg0ZJVpBZSnp2opQeDUVj7IcbNr7de+YqSZ5Csb+YXvu50Q02n3
         s9ZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=D1PGUTvbMCo12qSm9MpHyC/iszyAeQMlmvbSI9Ov2K8=;
        b=GwXgeOconF8WJ0VIavZKfcjpKUYqmU26e8HyTMvwmgZDMEc9KZxdCHan1DInqxQ0lV
         vjzIr1GwvjN+rMQ5AyyiKSmm1NzceS1vJQGysQI/xxItgWhNqIxCP6yJ2eSKBMA1NazF
         bFDRgdQrQ5KRfhUDqXvt87b+gF2IEZ6bwDNbQZezk081xeQ0oomvMbAtrSelOu3VFyBI
         ryI4xLtdJt99xWtqxjNHiS51QNaHVWznN4Q+8JBYoKVc/Zv8uFAQSNLxuLztDJEY0VZw
         Dqrl87oOxwVUhdoscXdhn/yiC3Jh7HA/TnHD8v0EpnhcIn6b9EuOaEiOkmZsuOWTBWnW
         hI9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=pBZgXb5s;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id p6si517952ots.0.2021.11.26.17.24.01
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:01 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.489750235@linutronix.de>
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
Subject: [patch 20/32] PCI: hv: Rework MSI handling
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:00 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=pBZgXb5s;       dkim=neutral
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

Replace the about to vanish iterators and make use of the filtering. Take
the descriptor lock around the iterators.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/pci/controller/pci-hyperv.c |   15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

--- a/drivers/pci/controller/pci-hyperv.c
+++ b/drivers/pci/controller/pci-hyperv.c
@@ -3445,18 +3445,23 @@ static int hv_pci_suspend(struct hv_devi
 
 static int hv_pci_restore_msi_msg(struct pci_dev *pdev, void *arg)
 {
-	struct msi_desc *entry;
 	struct irq_data *irq_data;
+	struct msi_desc *entry;
+	int ret = 0;
 
-	for_each_pci_msi_entry(entry, pdev) {
+	msi_lock_descs(&pdev->dev);
+	msi_for_each_desc(entry, &pdev->dev, MSI_DESC_ASSOCIATED) {
 		irq_data = irq_get_irq_data(entry->irq);
-		if (WARN_ON_ONCE(!irq_data))
-			return -EINVAL;
+		if (WARN_ON_ONCE(!irq_data)) {
+			ret = -EINVAL;
+			break;
+		}
 
 		hv_compose_msi_msg(irq_data, &entry->msg);
 	}
+	msi_unlock_descs(&pdev->dev);
 
-	return 0;
+	return ret;
 }
 
 /*

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.489750235%40linutronix.de.

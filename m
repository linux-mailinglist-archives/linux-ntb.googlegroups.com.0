Return-Path: <linux-ntb+bncBDAMN6NI5EERBNURQ2GQMGQEECJCUQA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id DB55545F978
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:24:07 +0100 (CET)
Received: by mail-ua1-x939.google.com with SMTP id t22-20020ab02696000000b002e970ec14a3sf7361942uao.19
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:24:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976247; cv=pass;
        d=google.com; s=arc-20160816;
        b=SOU4/Z7Q6dGuaW+DVwyMUJ/vNUA5JtoNMyeGyhcrQHWi5A2q3LXG5ZljyZKtx4/+tA
         a5NdEB+liXjGyPMPZQ+KxQvehjTJDwT9skvN32Hn2PtLkFdw3kNYwnkPvy46IyV4/ZUI
         PuLVSjbJVFzOe/da7sbvUxKWWXV9SiCNd+Z4LksVfnVeSK6MaK93wTmq4B+mX6Eo0UWE
         qMlvgfcC+Vl5Mm4gfcH0xADURtzyLlZo3FVa3A56OJIf+buSb3gS8d+M9VyhWXYxBhGv
         2/43RkFB+jD7IDpVA//m9ig+K8AYn58Na70/PqKKuur+6a+u/DgJgREwnCk7RpixylpV
         QeQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=kfsY6e8h0n9mOO6XN94+/VHOFQu/F4LUk/eHT9NO70M=;
        b=svfxJnJNEvz8vpXWvb59KhH1h7TDP1BVo5My/rOzsR34wQt3mvMucYr2tvcbWRbsvF
         OkOPccD4AQ9pUNo/mYMC9/pA2mP3bf0xElwRvlGEdPC021lPiiqtfcq3NSYprgORNbF1
         4PgAyEqhO3ov0OwGR/K46txZdFxfDs7dT4kjjS3OpL/+btl0ikYgHY6C7DK9O7UhXmEt
         NoGD0GsPQjA9/Ga73fiaVg/6wAOtLPhwy46ZZyg6gUwo5CkPdAvQtUBMcH/Q84g3fkhC
         x3CAOBssXpJndyz4BEDP/vk2fD001Av4zKTJg2UfdfjYoqldCgI7rDfM7VqMRr4k0BbS
         1SYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cKgLO4a4;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kfsY6e8h0n9mOO6XN94+/VHOFQu/F4LUk/eHT9NO70M=;
        b=rdeJOU4F+XSIcMMZ6P6Ml8mdLSKjkuHN3qTP8y9TwoiIKPf/IGdA+JRe7KVPs5zlW3
         fcT9ow1ty6OKWW1TWnInHw/uejoRhN9ApaWawJdlB7Z7djz4nhCUsd5TzPsWxKpcZv3X
         oXXn8tXaVFu65lPyJo1jW7cPsGlC47/D7uNAppU4TqMHVkL2UR98zXq6kI08CySSJytS
         7YeRcwM0Aw+Pa9c/briwaB6yhaESO8J4ullgFLtwU6VzXFZ0Rhn3dyJai4wnS1/oQiUo
         kvxFvxeHabujE7AoJuTvNQkYoR6Vwc8wUAbTdLkwtcj12DDBNcosDVDtJNFqgjciXNB1
         58jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kfsY6e8h0n9mOO6XN94+/VHOFQu/F4LUk/eHT9NO70M=;
        b=kBjYmefR1mhy+hoRqSxRuSuvpnsw5vRikjIKhrgBG6WDda8ORscHZCCQ6d95ITTw+O
         MgRj83hlxLwbvUUcVAq26DHfs59BXYnVGKov7IHgdSv2cBnLozZ7W7mXaRBuasSbcH5U
         RoWs1aj8k4w4czhFExSzM1e2f7TNkTWTrOhJ3PjC8146RFm55uLvIRRSqOTFD7VnB4RF
         AtAZJ6Xh2DA7Ipq9iYXbTvJLZzGEuTQmmeeQw7cfMtvWyRGGerxNPyNXds3l1IuKSC7b
         QZ+Z4lF1kbrjzu6SiYLeupAVX1bEd6nCgYd3O8bYyBE6dsDO20Jm9gcrc6a6GLQV+7ec
         PNpg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531TGLdWqg0nfzlFlGGwdNn7tnCcB3Gwhh0ONsL8ANXPRg9gQ4nj
	AUPAS1AqgZfbc/Acv+u527Y=
X-Google-Smtp-Source: ABdhPJw4M8osxv1YyQ/PgVHa/O/aM+8dVP9lNM/nhcNZJJY3D68Kc3OdF5EfoVYDTNpxmdWkh5cLlQ==
X-Received: by 2002:a1f:2b4a:: with SMTP id r71mr18992360vkr.37.1637976246919;
        Fri, 26 Nov 2021 17:24:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:5e0a:: with SMTP id s10ls1408254vkb.7.gmail; Fri, 26 Nov
 2021 17:24:06 -0800 (PST)
X-Received: by 2002:a1f:fe0b:: with SMTP id l11mr23791672vki.34.1637976246498;
        Fri, 26 Nov 2021 17:24:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976246; cv=none;
        d=google.com; s=arc-20160816;
        b=mamPGSZoMwD0vtYwA3Skf/YuyhGqxGh3yLaca7H+bXhPbTRCmyNVKmhaoWK05ivJYJ
         xeS6mQCkZMDqY7sIItqTtyeDqo8Nu262Bzws8PbCuRm7gx7Zo7Gatsv6wSQwWjOygm4w
         DXxErxM3ncZWQBVzwXzO7KVuFCJBCHlYD6xdjcXtYAKEF8vThm+EWNpDn/GI4e3NB/BF
         +9EJMuhx11FIIF8Scg9Xqjj7cc4jfAQZolVCSb2mBoBO8kpE1/ZOGW3a7fJnK4H2Gxnt
         fJGMT6ebcd06SChwAjaR1oukigX1YR5jNAAHQqwYFx0ZCfedqeDkNoZkzSc+b++ru3N/
         9fTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=GUR2OxklGtF7nIOBqOyJrqx9CLAOqYt69MVFmzr2xdI=;
        b=k4wn5RNqeSUO5QRPripnw11K17pOWlN6xJQOAs5NF9tRMlnQHPPOVJidS6IB9gr10k
         amaAZgnBHuL3JFlltbWsHEp0lQx2MNM898pqoHx1w8X0Rk0erxztmVwDgjhnVrgd7Kp6
         V8plnK/dW1Qp8GLnt6XhXEFsLihcH0CdCofQa8PMr0HlH4vpRQz06s9lWo/BMV++7e/Z
         Ghdh4ttdlQHKonL/apU02aZGZHfNZzSVI82brntqrx6VVbG7EOUlgzh1hq2hrPSoAJCR
         B5MR2Fhxoet7aFhB9DgleC0KGzSed4TYLl3RGb9UPu03wjnoW5pD0mSqWvqM+pc4k6h6
         MN9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=cKgLO4a4;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id x19si434778vke.2.2021.11.26.17.24.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:24:06 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232735.667572131@linutronix.de>
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
Subject: [patch 23/32] soc: ti: ti_sci_inta_msi: Remove
 ti_sci_inta_msi_domain_free_irqs()
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:24:04 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=cKgLO4a4;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

The function has no users and is pointless now that the core frees the MSI
descriptors, which means potential users can just use msi_domain_free_irqs().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/soc/ti/ti_sci_inta_msi.c       |    6 ------
 include/linux/soc/ti/ti_sci_inta_msi.h |    1 -
 2 files changed, 7 deletions(-)

--- a/drivers/soc/ti/ti_sci_inta_msi.c
+++ b/drivers/soc/ti/ti_sci_inta_msi.c
@@ -121,9 +121,3 @@ int ti_sci_inta_msi_domain_alloc_irqs(st
 	return ret;
 }
 EXPORT_SYMBOL_GPL(ti_sci_inta_msi_domain_alloc_irqs);
-
-void ti_sci_inta_msi_domain_free_irqs(struct device *dev)
-{
-	msi_domain_free_irqs(dev->msi.domain, dev);
-}
-EXPORT_SYMBOL_GPL(ti_sci_inta_msi_domain_free_irqs);
--- a/include/linux/soc/ti/ti_sci_inta_msi.h
+++ b/include/linux/soc/ti/ti_sci_inta_msi.h
@@ -18,5 +18,4 @@ struct irq_domain
 				   struct irq_domain *parent);
 int ti_sci_inta_msi_domain_alloc_irqs(struct device *dev,
 				      struct ti_sci_resource *res);
-void ti_sci_inta_msi_domain_free_irqs(struct device *dev);
 #endif /* __INCLUDE_LINUX_IRQCHIP_TI_SCI_INTA_H */

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232735.667572131%40linutronix.de.

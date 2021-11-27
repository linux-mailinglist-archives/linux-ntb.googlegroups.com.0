Return-Path: <linux-ntb+bncBDAMN6NI5EERB6MQQ2GQMGQEX7M5KQI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 408DC45F8EE
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:06 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id q9-20020ad45749000000b003bdeb0612c5sf11994728qvx.8
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976185; cv=pass;
        d=google.com; s=arc-20160816;
        b=gqfxzlwBIML058Sh5AJKtMOaeFZzE0UGnqaOemCBnm/juLJ41LTB2KfRHGmWOfK+Bj
         gB2lYNtvpPpkmn+q+KRBprpA0MujIs0u33lBJk9pNdmwMz1aJT1vXaG59rgq6LPGFMjB
         wafCOAGtkCRXyvziaP6dF4EHUWSos+B9JB4BiceXzGmcPMywWvPvD+B+Vd8kQBkFKA3e
         irh+t9ake3ZOwu2KbV+NDX30C5rSGCvkfHrwh4ogO4MpPrO5W/co6qEK4JJNWGHn3Qaf
         Zj+b+WmN22h8VUhwJJFta1oBGV231Hp2rStfILltxfOW7uOnBMbz9M5ts8ReXRf9cpH/
         WAyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=kfsY6e8h0n9mOO6XN94+/VHOFQu/F4LUk/eHT9NO70M=;
        b=SB/BA4TtwnbPxR/rMhDwqpjoYDO111/QU6EwbD5/5xTkySgaUIGtQK4hgjLsRESYcK
         f0RG00eID9zCEIGcOJxViKyUOaD3LkH90dIvb8H74GRSUJM9pS9M9MoNGu/WammQmw4k
         guZE7OtiTh5SltKBZVUITykx0CtT3VXZJ+tKoW4f5x/4NsPhZY3tm1UsNoDXC+ff9wEY
         nWt8az5wYSoA3GH2yyC+zCZovxKol4mhIELBJyxSWfw97Oow99F0gCS1OSj5Rdl//kK8
         EpeW1U3453vwd/021boHo/cAAqIqXgbNp80sXmiCkjhqkr9DzusLoNjqGfpLMwkcm0Ob
         avqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=4KWu3t1s;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kfsY6e8h0n9mOO6XN94+/VHOFQu/F4LUk/eHT9NO70M=;
        b=OHlgZYQ5pDXGa6N36QWieANM3xbqif2Sx1SIsn6XaiWTL3AaJkdn0dk7PxTQWEIEie
         WnTbOSaH1/M5eSY9d2DEdtZrTlVme+xW9fwzWsvg2wKQty2VwpGtUT3xbUW3MHDf6pS/
         XKlLF/KyZxyty5mIJOC/nFfBKnlW1A3P8Zray7ptp0dHKoaAmzGzM6hR2BCbhi6ZKuqi
         N4RIZxi6MPc8wZZkMAaNNQ7A4fkJ3bGpsXvY6xKFpYtAoT0K66XqYHORzjZNUNpILmJ8
         aRSeGl/Wp/xp3GOQEjAzbab64FaEx5LK+Ler76hUxhoQa4xnm8i2HAXqR5ICb75StL/9
         FddQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kfsY6e8h0n9mOO6XN94+/VHOFQu/F4LUk/eHT9NO70M=;
        b=GsgOhWsvPiZqZP8Zkv0ESsM0kXZx9GXxKUahP5RXINr7tNDkp1tCRC+5l9LeUnM7Fe
         TWPgcchQqiTj5Fy8HeC3vlX/e4b2mUHLDDan5a3/Q2UBD2Wa41xT1A2petXRwn72LKAL
         EO5MYal4QvPlHuxxYn9a07+KJCF3QF5mTxAvMKBbvYwI7qUX74hJJIKcKRmO4MnL+tqj
         B59dvmljskyxqdUW6SmuBnqlMiUDDDSzHBmQyrUOlyh9phg/cFFunZIGalorYyQda8Xv
         BdQetpyya/lG3IECCKO4J93a8JDiM+/9b2ViT2Q+Y/n4Qp82kpD/60AS7ULYARHpgT++
         aPQA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530FOsRxsIZvQA8hQG9524c6sIF1KE2r6LFD1biQXTfdS571Cryz
	dVxsntCQ26ea46RZlHHv0n0=
X-Google-Smtp-Source: ABdhPJydUV+0owktEhceiSz+e4xVGSkPSstjzvZ94HQ+m28NVQQQ4wRczmwYL7klxGX7IyL/0IFClw==
X-Received: by 2002:ac8:7fc5:: with SMTP id b5mr28332060qtk.351.1637976185428;
        Fri, 26 Nov 2021 17:23:05 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:9d41:: with SMTP id n1ls633452qvf.8.gmail; Fri, 26 Nov
 2021 17:23:05 -0800 (PST)
X-Received: by 2002:ad4:5bc4:: with SMTP id t4mr27746944qvt.3.1637976185085;
        Fri, 26 Nov 2021 17:23:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976185; cv=none;
        d=google.com; s=arc-20160816;
        b=hQduBu7m1MwdriRqmofwYIEg0mJ1Z2LlTUwAjp/64TsIwlHW1lYf1VrJrxO42oty3H
         NUaeMuMDnbWMyjWdE6F5JGq/esLWcGBgZjEaN8kwEGJ3smuIEVvqMp+xbRufWBSM7N+0
         /JDcCLudmKER9jB7ZV6+Bcn79RWxrc0WHJNNl+MPR7gYwI4zZ970WxCRIEG+8uHbqZf5
         jPH9PddFeJcHjzmwplv3xafFX4p4iyijED1Fhjpvq8HK3e8x1bNGB+0bIvVxxpqOxb65
         EWJL/qTKhdol8+MyH3tpadViztRV7XcWSKpHaQW0W2aCZkJhhsdjJWUxfCrwyTq6RuZQ
         3CsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=GUR2OxklGtF7nIOBqOyJrqx9CLAOqYt69MVFmzr2xdI=;
        b=edjYjAZciG/E3lZS5rSCbkLp2VhobKMdWg8CLSAXgzF0fY/WQkcCOcw02ULsC4JvP2
         rVuSZpgUCiXn3GpG0Z637ULL2jLkLKKjg9OUZCEUuzjkM0wmQrSonvN2AffxZuY85kAe
         we9fXzb5kDsIn4KuaeyGCNZ8IgCCkQEGcY2l1R9rrnDTC8EghfUtId3NsmrDkETPtier
         7eIcsLx2smMmDopwbo8n2XJH/B0W0Vjlk6hNft9BBIARs5lHpGS+6Ak+ug+l27GTAwwD
         Kb6Fw9xmYLbu3cJ17jxDwt+siWnRqTcNIIaZIf15gDmKOVIScMpQX5gaw5SQlocq3ipX
         xN6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=4KWu3t1s;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id u7si895476qki.5.2021.11.26.17.23.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:04 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
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
Date: Sat, 27 Nov 2021 02:23:03 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=4KWu3t1s;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

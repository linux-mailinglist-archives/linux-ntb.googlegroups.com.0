Return-Path: <linux-ntb+bncBDAMN6NI5EERBHMRQ2GQMGQEPFBTJEQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F5245F93D
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:42 +0100 (CET)
Received: by mail-oi1-x238.google.com with SMTP id j85-20020acaeb58000000b002a815919bb4sf7113459oih.13
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976221; cv=pass;
        d=google.com; s=arc-20160816;
        b=HSOSzr85rKXx7kK4bhE+smWtqB1R+LhX1/GsrwOhFJfx63E2Sl8n9nfqOG2yjd8mJr
         iAQtMpSv5EtfsecRB2s1G3WDM+0BzdxwAmMUOPhbDxtG7f+/dKU8vNEe0n8XmwMI5Ali
         TIE94PiAAwyXfvM0C/TNVSsXD7hTTQnYvYvBE80CiBiFRZhEuMvt5hP4XTAun+HxqCtp
         QNGGNlLtf72rg6ZrlwnRmZZy0Bu7m8OYq2aNb1/7IsIFiSh5R9yGbFx5xx4leoM28iP0
         VdB5WVe/K+xM/OH1kfzqK2N78opqDQejyTsrbULWyeWvkuLL8GyueNXx9lrkCX1YhrdW
         V9oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=d0WhfOJjM2uOBGjclq59WyGHnXoT97cQjSj1G0syqlY=;
        b=Ct2eXbU/kEsDg5IKO9HKYyBTb6CYg+hb/XMXunhdc+hI3KnUeP0NDRU7z7ZKnRL6So
         F96eUa1IbKEPRShO9KE5IvWK+Y2LYI1MgGZl+0hQvCJ0Q0yGq0GvqyJvLpxef+0ww5Go
         bSW5+ITcZ28UGUiUjZ0ZLAJ28pq+R6dxUoHF6TVx7J83JJQVIsleuuwkz6AxVH1AheJo
         41z1RPipBNrbCYIulXlBTt0L8J+6NFAjpF1m3LA+1ybuh1YCCWyLRek1lU42WLd6IXRd
         RnlkIEmMP/CuWy5oVgIRe/wKa5tprfQRIcKDkCvmiZSFbTNdXhNyJlSR7pfGUhLm9V6Q
         fEjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=vjZxQ5LV;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d0WhfOJjM2uOBGjclq59WyGHnXoT97cQjSj1G0syqlY=;
        b=MurPE5s0x0pneM364lA4rofINRS4OqxzRkvGRxxSsjsiHui3cx0AbwH38rfNqMg2jd
         uur3DeQM/CHNTGk2IkAvQKUmG8QBZ7L3UtRAYUttsBRlAT3/Njj1WxHyDJ4rRebv1kwb
         VGSX1+YFCEFv6J17xPaAFJjDBbulN4vp6MTV5ENVXYifNH1XEF5MUW+6FkNkoft6EzET
         B3CmvzlWbhrFvNYEiDlKcMfEOsIECmdiYGDQaPsNogixZXuh7hAVgORYUmmokPh2JzBF
         G7hQgVTgcyTBJYsn71NQJbqx4RwwWOd7WNT5AAnVG0SbXJ+i2OpksUymbktjFqD0g7kf
         WkUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d0WhfOJjM2uOBGjclq59WyGHnXoT97cQjSj1G0syqlY=;
        b=ljWE1BXk+GbKhi3BaZxS6CkhYN79WnxyfURrv09m1c50HBpGY0Mp0GfWAFNQtpdqm6
         Xw25j7HGR0klNfDYQiqkl8gscAgTuL1GPnkWGpOzRzK/pMElJzznxYF+XEZ6jmDYTnGh
         LdDKkjNHZAwD1Ng3lIY2Ly0zrfdCPW1pDeUMhRwDMRGi2+LP+9eXPFY4UCAV7cqGweGN
         /fRvtd69yES6zgYthFd9LWYdqgzdke71dqsFEmBuYZ50y/2e/YCEM9SBwx9hzeZSNy9C
         VgAIibAugNStqay6M0WpASa1PBPVKUQtkhsQh6XI7RP34vOQF273QIfgxj/Hb1PB3GGa
         Fb/w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533nTlOA3f0mgRu2FrC+0CLxGW7bbRIXoOdy/Rb4bmG1R2kZ9Tz7
	2etfnYVZTah1DHRiyZmOMxU=
X-Google-Smtp-Source: ABdhPJw+h14hnXVqYEMYgzH9qvHOPu0mL6FZBfjhfjb8H6Yy3OcDhkTWrNrgpriKs/koi1LVdaq/KQ==
X-Received: by 2002:a05:6830:1da:: with SMTP id r26mr31382370ota.73.1637976221692;
        Fri, 26 Nov 2021 17:23:41 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:4110:: with SMTP id w16ls2623592ott.6.gmail; Fri,
 26 Nov 2021 17:23:41 -0800 (PST)
X-Received: by 2002:a05:6830:1107:: with SMTP id w7mr31503658otq.20.1637976221419;
        Fri, 26 Nov 2021 17:23:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976221; cv=none;
        d=google.com; s=arc-20160816;
        b=Kcypd90quPLri3huEnzwSTdu4J/b8dx5bkWlnTiy0xDxdCikAixSCGx0EGppR6huqt
         UlSGim3DlrO0sjdoongVc0WFvOfE0uy7y3CoB006v0u7/gTSZs2XdSQ5pXX6Cc6Qcr4q
         wRX0iyCmfeOHuvS2H/g3BDa4wautKQzX/wOp4WdIH0QPROaNWWVaAU5oDTSr0qD8/UPd
         AdbQXn0x+sQ9BEas2qSarOayoM8+KIYo4Tu5tk4ApQp4NT4UE0DSeY6ziXQtw46lYI3L
         DI/0zWbB77W2YtSjlp9o0jyC9oOBOPAnSrSWSHtLuPHezHGH7RQt3/cogGHn/FaGDvEk
         01Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=Crjr7H36J9Lf+jrInVyv901m9c+NySD9gCdemdb2Zhs=;
        b=RgmlD2gO2UD+7RlSHw0LLKPvYiUHe3nFnmD9rLyDJvT+yuUjfEZxmJp+1ySIVZJoJ8
         Dcnj7Q1iiFFPJSvX9kjGNP2JI3DqsdZ38WutF2+Z1CcOLjvD9mNRoGFcfCE0305tkL4o
         4rwcFtV8uJS1mB+0l6noLiu3dK9l6rOUK4QiCYgLBSB6exrJEj3u2uS6xnvipj7GG7uE
         TLwA0vvjGrqPIEoPwG9ffUUbUVnbcJu+H07367q2Z16NFyKhADIe5JEXxQbQsIEi25nY
         KWE3Ji71KxcotQMgKtHkFhDFTNCCEkuzQUP2s5DfymOrnvp6GbMxiBXapUfTJblYcDMk
         /SjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=vjZxQ5LV;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id n6si745386otj.5.2021.11.26.17.23.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:41 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211126232734.708730446@linutronix.de>
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
Subject: [patch 07/32] genirq/msi: Count the allocated MSI descriptors
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:39 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=vjZxQ5LV;       dkim=neutral
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

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |    3 +++
 kernel/irq/msi.c    |   18 ++++++++++++++++++
 2 files changed, 21 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -156,6 +156,7 @@ enum msi_desc_filter {
  * msi_device_data - MSI per device data
  * @lock:		Spinlock to protect register access
  * @properties:		MSI properties which are interesting to drivers
+ * @num_descs:		The number of allocated MSI descriptors for the device
  * @attrs:		Pointer to the sysfs attribute group
  * @platform_data:	Platform-MSI specific data
  * @list:		List of MSI descriptors associated to the device
@@ -166,6 +167,7 @@ enum msi_desc_filter {
 struct msi_device_data {
 	raw_spinlock_t			lock;
 	unsigned long			properties;
+	unsigned int			num_descs;
 	const struct attribute_group    **attrs;
 	struct platform_msi_priv_data	*platform_data;
 	struct list_head		list;
@@ -208,6 +210,7 @@ static inline unsigned int msi_get_virq(
 
 void msi_lock_descs(struct device *dev);
 void msi_unlock_descs(struct device *dev);
+unsigned int msi_device_num_descs(struct device *dev);
 
 struct msi_desc *__msi_first_desc(struct device *dev, enum msi_desc_filter filter, unsigned int base_index);
 struct msi_desc *msi_next_desc(struct device *dev);
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -82,6 +82,7 @@ int msi_add_msi_desc(struct device *dev,
 	desc->pci = init_desc->pci;
 
 	list_add_tail(&desc->list, &dev->msi.data->list);
+	dev->msi.data->num_descs++;
 	return 0;
 }
 
@@ -109,6 +110,7 @@ int msi_add_simple_msi_descs(struct devi
 		list_add_tail(&desc->list, &list);
 	}
 	list_splice_tail(&list, &dev->msi.data->list);
+	dev->msi.data->num_descs += ndesc;
 	return 0;
 
 fail:
@@ -142,6 +144,7 @@ void msi_free_msi_descs_range(struct dev
 			continue;
 		list_del(&desc->list);
 		free_msi_entry(desc);
+		dev->msi.data->num_descs--;
 	}
 }
 
@@ -157,6 +160,21 @@ bool msi_device_has_property(struct devi
 	return !!(dev->msi.data->properties & prop);
 }
 
+/**
+ * msi_device_num_descs - Query the number of allocated MSI descriptors of a device
+ * @dev:	The device to read from
+ *
+ * Note: This is a lockless snapshot of msi_device_data::num_descs
+ *
+ * Returns the number of MSI descriptors which are allocated for @dev
+ */
+unsigned int msi_device_num_descs(struct device *dev)
+{
+	if (dev->msi.data)
+		return dev->msi.data->num_descs;
+	return 0;
+}
+
 void __get_cached_msi_msg(struct msi_desc *entry, struct msi_msg *msg)
 {
 	*msg = entry->msg;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.708730446%40linutronix.de.

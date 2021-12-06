Return-Path: <linux-ntb+bncBDAMN6NI5EERBW5HXKGQMGQEKGJQHWY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F66846AD33
	for <lists+linux-ntb@lfdr.de>; Mon,  6 Dec 2021 23:51:07 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id y9-20020aa7c249000000b003e7bf7a1579sf9636069edo.5
        for <lists+linux-ntb@lfdr.de>; Mon, 06 Dec 2021 14:51:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1638831067; cv=pass;
        d=google.com; s=arc-20160816;
        b=D5M9T/2tGQt9DMsNpb2PFLojJYQAGPA0O4ExkvwqkCFxXQJduDHNPPXyg3rurpWvYD
         zFmTScA2LPBs+KfGIN1IEVL4/FabBmtnCwZh2p+uWJuQPpH/r3Et/vNjChJa97qXwnlr
         FjSxrR90oUe1yDfZSQluL8D7keS24uar1G0KX6oSUQwxv3p5QKv0nyPDTGb9X4mqw7uF
         qRy7Y1pldohhhETdWdE8h0ARE241mqxRuUD4GZagtPoKeZ/XpCRvSqh55sYNGLsl7tY8
         SfWIExQAYxJcdDHa8rSk15bjiXD4GsR/s/JWoug/vqFE7b3Mtoe4cvMG5oOQqJIcJD8U
         29aA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=TXm4ogVRwoiOqn5d+xvSuxX5Jral/FnP5fbjOZn03Ss=;
        b=mmEDYTgWOB05TsvjGRfa5RdIV6gb/p8xbPDXzNHXCfYZb59xRC5WrCS6WCnc9OfC/W
         wr0y3b41117I454yBoEETAyaxlmjVkWZkQ4Vb7N0oeyyMNpq1aweGwJEjY81iyh1ZzNy
         eF3njAvvMdQsPcdHqPa6HF8Gk+SLldqM1j5WU8dKC4CdFu0I+wY0jsa6HE4W5Q+WEdjH
         +ar4HB8LKpHSApGr36EzIkH3ILnj+h0l66F56/Od2j88/gAwDiGNjswS1d5CoSmn5cvJ
         SZvWtek/mRggsi8QUuroymvEKVcgDPNfpPflq/nY8UVhRLKHoHLiUV6oAfduv8y3iZGU
         GSFw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=h7zs3HhL;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TXm4ogVRwoiOqn5d+xvSuxX5Jral/FnP5fbjOZn03Ss=;
        b=FE8EXb1M+pRLTRnHi3aSyIlUBPl7L4X6jkWJTwsio+ZhE8qDEEjUU8k2+qVzjqo43P
         LTbHPC9FfJYP3eT5tLWDrsbilyXE1eh211Tis1E6RVPF6kwphPKd6RNco53kcQhdGl4w
         vtpXCqvQcCqbzqaCMUvOk35+9i63mvs9ocK5GFTOUV21og4+VN1ePHff4wnYCtEczq6l
         g1MTA1e8chpAbNxWOpdS70nRt/u3ZRCvzSBVLh8tWnMkWgsTxsuWvTk1SH9kfPwGD7YJ
         fRvGDTHfI2loOxHsn67JO+US/3PMO8OBFiEjngqq/af62yUfvlMEdkI8uXbiWrzVkrA1
         y4YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TXm4ogVRwoiOqn5d+xvSuxX5Jral/FnP5fbjOZn03Ss=;
        b=5MHExAmvGSvVMofE8k6DjdSvhM1CVakCAkoFWpucv1JJkCq65vSOhSJqXpv3e660AB
         CEiYi4ReVXSkJnVo54oQTgE+vw4962b8GqGrD8bdDWLnq68X0J3J16xESgYejPe/6d73
         iaBahe9F6Y4vgjdLs7JYsO9nQ3SPoLBej15K+yr+q9DFFRDaNohNtvzFVsjDy5naeBAZ
         VhAJMlpUw//GZdrcdHhZCndtmzv8uI5JBBllOe0eNHy58ljFNSo6PhWmM3k1/RvfjX53
         aUyAp43zGOFzrOxin050jZ686m1cysVEZf+pVqGAohtc/NpS+rzvRACYK/MpZ6HfAm34
         w50g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533uv38Xr1dRq2uEojxymN4ny/7X9pLjYnvtrAd33qwVZd3370JQ
	9ZUi+qgL0bfkPTwVSAsuRp8=
X-Google-Smtp-Source: ABdhPJzIRgfZLEzKerNGMm2Jmcqj650fp/tg+iaIYk5tAJQnmfYgtA6nKDp4Hum2TnI/qKAMDZnYhw==
X-Received: by 2002:a17:907:608b:: with SMTP id ht11mr49710195ejc.80.1638831067316;
        Mon, 06 Dec 2021 14:51:07 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:907:6da0:: with SMTP id sb32ls6361477ejc.8.gmail; Mon,
 06 Dec 2021 14:51:06 -0800 (PST)
X-Received: by 2002:a17:907:2da2:: with SMTP id gt34mr45760310ejc.372.1638831066491;
        Mon, 06 Dec 2021 14:51:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1638831066; cv=none;
        d=google.com; s=arc-20160816;
        b=eF2pQUzSwGfCT9/KrDz+vstzanE7WVeb+H6swMbtB7XC42j8is6rANYYTp47nCaxHz
         xjMB4UXSBAjeiarSGW9jgYG0AVcFHg4DnPSBcArVqUi8KmWqTj2h9DTOuN/5qY9SEyDm
         X2ld1yrsnt5AefHuKTXVuwJCQ54oarDIgb2RlTneotAm6VIQeuE4FcemBpCmXwHvy/4c
         R/ZeT0t9/jUryfKtem2nB5SO6g6xOFklB6nVkjtxDQxswGSkdFn8trOM0/NigNiFY5b+
         Sgm7dR2+EN5wWwxdCzvZlWwAFFdzxABVFF25T+3rh0Y4z/D41liCr1iViozlmxmyoCYB
         ulsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=bFF1yyGEjmfqWVKF8xO+FdVcOtASH/zVcW6F8m2ztk8=;
        b=Ktn/4h7tZrVfv6u4LxazW8M4kU7wqrb5MB5rL/atPoPh3QfS6y480A1SWaiuRdzcgO
         Gi5TBLrMfpMmtK3J1ZwvnbZD+xBRg/TyBcMdfVEOTtMCQUGDZK6/OGhR7So4l1HA8gOW
         tIOqDNrF0YBlwAzdS/EDu2NmpFMgcMdUVZrk+FtzG/9vzwfnRc/99s3N5Di/sy2mHnPR
         lhY5ekDqqXQg9HkFIoDee4TMFP4x/R2u81sNB34zR+K5DRj3xwlWRggBjeSL5wh0Qq4o
         azPVPOrUGjtq6UZdrwiYiuxoLTR6ibYf9cGVQxUjLaPhiq/S5XkSA5S7B/cy/sP3Ni9Q
         Bqqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=h7zs3HhL;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id e10si970619edz.5.2021.12.06.14.51.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 14:51:06 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-ID: <20211206210747.708877269@linutronix.de>
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
 Cedric Le Goater <clg@kaod.org>,
 xen-devel@lists.xenproject.org,
 Juergen Gross <jgross@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Niklas Schnelle <schnelle@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Heiko Carstens <hca@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Logan Gunthorpe <logang@deltatee.com>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com
Subject: [patch V2 02/31] genirq/msi: Add mutex for MSI list protection
References: <20211206210600.123171746@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Mon,  6 Dec 2021 23:51:05 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=h7zs3HhL;       dkim=neutral
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

For upcoming runtime extensions of MSI-X interrupts it's required to
protect the MSI descriptor list. Add a mutex to struct msi_device_data and
provide lock/unlock functions.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |    5 +++++
 kernel/irq/msi.c    |   25 +++++++++++++++++++++++++
 2 files changed, 30 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -3,6 +3,7 @@
 #define LINUX_MSI_H
 
 #include <linux/cpumask.h>
+#include <linux/mutex.h>
 #include <linux/list.h>
 #include <linux/bits.h>
 #include <asm/msi.h>
@@ -146,12 +147,14 @@ struct msi_desc {
  * @attrs:		Pointer to the sysfs attribute group
  * @platform_data:	Platform-MSI specific data
  * @list:		List of MSI descriptors associated to the device
+ * @mutex:		Mutex protecting the MSI list
  */
 struct msi_device_data {
 	unsigned long			properties;
 	const struct attribute_group    **attrs;
 	struct platform_msi_priv_data	*platform_data;
 	struct list_head		list;
+	struct mutex			mutex;
 };
 
 int msi_setup_device_data(struct device *dev);
@@ -173,6 +176,8 @@ static inline void msi_device_set_proper
 #endif
 
 unsigned int msi_get_virq(struct device *dev, unsigned int index);
+void msi_lock_descs(struct device *dev);
+void msi_unlock_descs(struct device *dev);
 
 /* Helpers to hide struct msi_desc implementation details */
 #define msi_desc_to_dev(desc)		((desc)->dev)
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -127,12 +127,37 @@ int msi_setup_device_data(struct device
 		return -ENOMEM;
 
 	INIT_LIST_HEAD(&md->list);
+	mutex_init(&md->mutex);
 	dev->msi.data = md;
 	devres_add(dev, md);
 	return 0;
 }
 
 /**
+ * msi_lock_descs - Lock the MSI descriptor storage of a device
+ * @dev:	Device to operate on
+ */
+void msi_lock_descs(struct device *dev)
+{
+	if (WARN_ON_ONCE(!dev->msi.data))
+		return;
+	mutex_lock(&dev->msi.data->mutex);
+}
+EXPORT_SYMBOL_GPL(msi_lock_descs);
+
+/**
+ * msi_unlock_descs - Unlock the MSI descriptor storage of a device
+ * @dev:	Device to operate on
+ */
+void msi_unlock_descs(struct device *dev)
+{
+	if (WARN_ON_ONCE(!dev->msi.data))
+		return;
+	mutex_unlock(&dev->msi.data->mutex);
+}
+EXPORT_SYMBOL_GPL(msi_unlock_descs);
+
+/**
  * msi_get_virq - Return Linux interrupt number of a MSI interrupt
  * @dev:	Device to operate on
  * @index:	MSI interrupt index to look for (0-based)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211206210747.708877269%40linutronix.de.

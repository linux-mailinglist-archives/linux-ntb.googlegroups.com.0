Return-Path: <linux-ntb+bncBDAMN6NI5EERBFMRQ2GQMGQEYDCLKFQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B7045F92A
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:23:34 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id w16-20020a5d8a10000000b005e241c13c7bsf13306444iod.3
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:23:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976214; cv=pass;
        d=google.com; s=arc-20160816;
        b=UcO1D+qvMcQ3G/LCgGP0E25sh1a4E+CLR1TWD4h/j2A+nW3H0x9dXxNv0rqiYW4avz
         hdEdLptq7O+oQm3n3mRIYtireblRw1ZC0uOMIL7zGYlo+seXVIJ01aVCw9AFYM6wzO7r
         48aWheSCMiL7rt7toStsasUFnjzzvkxmMPRWN0ijE4xd3hBU9FB5IAluEiN+SJK1XHAU
         AX8HJ29coAo2vX0HwB54TJQPseaWaypRRSTIxC30epLqgm40T7KcsXueQpnMpemLWEEH
         zNBzxY7gT1GkDOBTHsfk17ZfLVbHG6nKMlGlXPNryj5A1pzT9jOwpy+r/qLtXK4kLWmm
         jklQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=uRwZCtbVxv1JhlxK+oKLSnr43ZXa985/Pz8MilUNPCc=;
        b=lQXvffnTD/0d+kpDd0RbQa6FQqOXrgHgsP6ZiKFGxbwmFmj9zdXjn0We2xcBILFbB5
         lKYURWtqGUPRJf2XLns4hMYnKnxdmlTPwKiV57V/ZbkbPHd+WgLJZUx4M3s47TFnr+wR
         plpxBlQPdl8BKBRr8Olx9q3WAlmndzsXgKqivJh9oBhR2z7/UIRDHEJBQKiOj71LdQkY
         z1hA+DG2e7JdLLmgKCGJ35B4vAxtsize97KU8LJrgMYr8tJ27V9j8ZBbyWdrVitLMYCZ
         ebEWGkiiXVdx0uBAL52/TdU4LkEPIH4B2q0D3r37rwRFMbCgrGTJCmnqZHBZTJIQDEUv
         l+eQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ErFEn9JA;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=UXoJTaH8;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uRwZCtbVxv1JhlxK+oKLSnr43ZXa985/Pz8MilUNPCc=;
        b=tD6Wd2ae6ft72gLtoQF/dU6UjgQUJMaUONf0MVwr2+HduVHxmZg9kgC9EpIO4nxx62
         NpvojsMjx65LQM6odoVbau9qzQ8wF1Fkcujsb6WPAXNC5eOdk1jD85dqDMoVh+PBB9lt
         8DwWmEmezrCwwX5mAMpuIsWO4mNwytJzVOPHUDCYGq1H/m0rtXsD/SzsDPHxPerq79IC
         +KyG2sh9qTGhvH5fqPscvBM1RYkGzXYhQ6uxaizo4SCSq1WDZzPEiGzZhN7IHql6kQR3
         V+ETzHMpBHDzVfZtokDveY2N/NThBov/Pgy+xDz6qPg57NF4/DLjO5qpiekPuxF2iEY+
         Gh0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uRwZCtbVxv1JhlxK+oKLSnr43ZXa985/Pz8MilUNPCc=;
        b=azglIGN+yzTL4+wPZMDDqOyqytLy9WtDiX88Bns89pVUJ3oY8xGkHpG/DqucjCqN/E
         ryt6AJKEYrSMfkkGYZ11xfSr9Qa9ayRUBtZZqBDtfyTDYGrSMgMfnAAuaQzpA88vp0X5
         L/CZElpCZoNgO99fzTSDREeblpoEO8HHDzhXjXlvDJ9ndsSb2fNQwurct/6ahfuqc5QX
         AFxTspdnebqwparF9Eno2FzXoLExZxBoE3nkpVPNe82HFS+64dqD+Nw1fWD2ELsTowvK
         jbXm+qou464enb+rY9uZgN3EndCCJinEKf4PC+wcrqrFoma3Ea7xD0MYbUf3ji9PkTfI
         4GHg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531mIMpIcr/ztELuj6Eaot0Ocnim4/Ihrui6AYrIvwEVAk4N/czV
	p90V0muWy///HQDvn1zGvqs=
X-Google-Smtp-Source: ABdhPJy2Wjepc/Fk9ZcaIDah5y9CZ3Bjkg9TvumHDr/0MgUQSyX4feLzgxYY5MeqRSG7KG90dRw9Wg==
X-Received: by 2002:a05:6638:d84:: with SMTP id l4mr47046114jaj.18.1637976213916;
        Fri, 26 Nov 2021 17:23:33 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6e02:1a67:: with SMTP id w7ls1086425ilv.8.gmail; Fri, 26
 Nov 2021 17:23:33 -0800 (PST)
X-Received: by 2002:a92:cda5:: with SMTP id g5mr42473809ild.97.1637976213644;
        Fri, 26 Nov 2021 17:23:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976213; cv=none;
        d=google.com; s=arc-20160816;
        b=SPW+5ICAyOm3p1dyoSJiXsZ6cIDVZaOouGv9CyEV1NtYtv/bE30IKHtCQ2iwT1mOv2
         Ck27N1YGcGeduEymwRHlumEAkW45bNtF7jDKlWI3Y9CN2khmUW+zqEhbqJjmNMOtxr/2
         sJOdNCqO7GEl5v8VjoScO1Oo+mbqoL4nR0qv+C8ogxqAxll5zHnfDZyrHAdMX9ksECjZ
         nB5ZwrubQ1EIs2rIyJwpQ5FZ5T9RJw2lNkTrjTRdD1Qrw5H0ZnlAFx1GMKeu5n99oWVq
         pBrNP14jkJILUNDoWV0/jT5ynuKeplefpBUg5BupBcHZ6RmULGFGJ2dmKXbcwMdXwEKS
         yUFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=dWlRgqR+0drt9PwtC3seDhr2BnCncrRnkVfFxsvT5DI=;
        b=CzGlyyi/Fko3DYvFKAT+ar1RH7jrmDAHMjfC4xx2k3a5fcX5+49OzA7DdzP0ZSMSdC
         VBkBpZEzVY23UVdB+syCG2SeDYle1D167UG4cV+RHjkKzazoXfJRk/Hr5AT3f2NoNAFw
         FQ57hzewb9X7AcoSdFZjWKxSDLuQF9XGlmBJiExUbQ7uI3jsWiP1PacXp62lF2XeJYTw
         snaJugksqQhZI/KR5E8K0PEkcJLlPVrWRxhGx0B5bwsbce2I2ruxQKyWQzqVneC1Ovwn
         h1DXlh2bemAX17xjhwQrFGC4KvE9k0jmWtQwgxzj1yy389CxoESne8iXZ+Gfi0DCUfTa
         B3Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ErFEn9JA;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=UXoJTaH8;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id x11si1106697ilu.5.2021.11.26.17.23.33
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:23:33 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-ID: <20211126232734.411769132@linutronix.de>
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
Subject: [patch 02/32] genirq/msi: Add mutex for MSI list protection
References: <20211126230957.239391799@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Sat, 27 Nov 2021 02:23:31 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=ErFEn9JA;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=UXoJTaH8;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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

For upcoming runtime extensions of MSI-X interrupts it's required to
protect the MSI descriptor list. Add a mutex to struct msi_device_data and
provide lock/unlock functions.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 include/linux/msi.h |    6 ++++++
 kernel/irq/msi.c    |   25 +++++++++++++++++++++++++
 2 files changed, 31 insertions(+)

--- a/include/linux/msi.h
+++ b/include/linux/msi.h
@@ -3,6 +3,7 @@
 #define LINUX_MSI_H
 
 #include <linux/spinlock.h>
+#include <linux/mutex.h>
 #include <linux/list.h>
 #include <linux/bits.h>
 #include <asm/msi.h>
@@ -146,6 +147,7 @@ struct msi_desc {
  * @attrs:		Pointer to the sysfs attribute group
  * @platform_data:	Platform-MSI specific data
  * @list:		List of MSI descriptors associated to the device
+ * @mutex:		Mutex protecting the MSI list
  */
 struct msi_device_data {
 	raw_spinlock_t			lock;
@@ -153,6 +155,7 @@ struct msi_device_data {
 	const struct attribute_group    **attrs;
 	struct platform_msi_priv_data	*platform_data;
 	struct list_head		list;
+	struct mutex			mutex;
 };
 
 int msi_setup_device_data(struct device *dev);
@@ -187,6 +190,9 @@ static inline unsigned int msi_get_virq(
 	return ret < 0 ? 0 : ret;
 }
 
+void msi_lock_descs(struct device *dev);
+void msi_unlock_descs(struct device *dev);
+
 /* Helpers to hide struct msi_desc implementation details */
 #define msi_desc_to_dev(desc)		((desc)->dev)
 #define dev_to_msi_list(dev)		(&(dev)->msi.data->list)
--- a/kernel/irq/msi.c
+++ b/kernel/irq/msi.c
@@ -116,12 +116,37 @@ int msi_setup_device_data(struct device
 
 	raw_spin_lock_init(&md->lock);
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
  * __msi_get_virq - Return Linux interrupt number of a MSI interrupt
  * @dev:	Device to operate on
  * @index:	MSI interrupt index to look for (0-based)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211126232734.411769132%40linutronix.de.

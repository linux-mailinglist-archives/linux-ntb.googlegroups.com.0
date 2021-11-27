Return-Path: <linux-ntb+bncBDAMN6NI5EERBYEQQ2GQMGQETJ7AH5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id D3ADF45F8DB
	for <lists+linux-ntb@lfdr.de>; Sat, 27 Nov 2021 02:22:41 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id z13-20020a627e0d000000b004a2849e589asf6224170pfc.0
        for <lists+linux-ntb@lfdr.de>; Fri, 26 Nov 2021 17:22:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1637976160; cv=pass;
        d=google.com; s=arc-20160816;
        b=dCwPlC9xepKN65D6n3hELtq3Q/KYbqMgiWLE2UucgmgB/Ccy1ZjU+9pEWFDkcl5xiW
         9m/D0hjDYUjzlugc5tFmtzqOP2CsiaZW4ViHZ6zdO1iWEGiAFvlRcqxsTukYDL8QLDRr
         yOn+8Px98JPjV4xCfqklO0r541mihU1vgsXDvIrUyerNxqKzU0RWJbhwHLCWyJCZVDer
         PuGGmNBXCpohnf2rBSPIVzHH2ek4sWk3jsUdNiUOvTV8Lyrwd9R+aPaGZLTlK+jZOzOg
         ObOpeul03+IRaZ/pnOKfqjSaZGG2PD/WjOrxNjfN63v7b/GeB3kR7qOO0WMqw7Vje0AT
         4/Ng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:date:mime-version:references
         :subject:cc:to:from:message-id:sender:dkim-signature;
        bh=d0WhfOJjM2uOBGjclq59WyGHnXoT97cQjSj1G0syqlY=;
        b=TIL3Q3tI9pLZAW0Ex8ILIc0o2ZU4mPs+EMU7snonVzAF71aPuCPRsqWz26+2526vqc
         +Uo204wRRJ3uOZZXV+iDLCS2zs1HAEzTdUF/miuX5xW7/oTP3APl8usXmRAbPRM17vWy
         HFuBMNOh/Ue3AwLZ3XAIS/63l+DVcVlzNxk7t7NEnxVrrGc3aNBD6rb4LlzGzCFo/Zyu
         Axw4KU/lufsI4C7Y8ZyeqglAVU6DrsIAQaBtKOUnH0av2rxXFchoX4mTEHnYXFCacs9K
         GuvVSszQvkE5d1FEYIgUsglhJNHCubLF8dWZ/YLDN+lPEevNUowY71OCuov38q7JwExZ
         coIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=KpCQ3oWS;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=Jts3Efi0;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:message-id:from:to:cc:subject:references:mime-version:date
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d0WhfOJjM2uOBGjclq59WyGHnXoT97cQjSj1G0syqlY=;
        b=VzHTBszZtWTpOv+9nYwwOZDoRbH5vMitcoeK511o6pYLfoTadb0UpAsb+qawY+zdir
         3vBsw/m+Lrj82hY9XdHisgwa5br4N0Y7qTj+3WBSzV7wYkRsW+LDGsHI/guEcJBvs5rs
         4v3kE8TsDT2Hddof5k4eBXkv+gIXO5SW7up3FkK5xyiO90hS0Bv0V0xLvf283SMBNy2V
         uwpYPLrY0TnJ02uJhksBO08Hy5+jl27z/86WmLUhMf3uGvD/TDLK/EsBvH3E7h6/GOdc
         iUp4e+SQxJRL8+VfBAXxg+rnj+/lnzJ1E0RTWHMCyg4lmu7IJyiOLuDpxBInQuHSbxcA
         jDeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:message-id:from:to:cc:subject:references
         :mime-version:date:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=d0WhfOJjM2uOBGjclq59WyGHnXoT97cQjSj1G0syqlY=;
        b=rsB9+bdlMRH9mgU1HPRzFCSF5Gd8T9kc/EOkGfMSv/olVHi65afUsXCo7v8h8Ga59O
         HTcf+lrYxsul3r5ivXGq3pQAIzAyX8CklSppMskqF5LH+nO/Eysmn8jQ8EWFm8I+9UEm
         5Y39e8+M4hQGGLbS/xIIoKC62/OkJA1sEbH4pI1juJs8G4RFzodV/fuIF1/+UmQuJVfY
         YVa1RWebo+Tbdg0FL8EbZSTzoytamZy27oj7tWAIqadxiKjI1hDz55gfb8e+WYAR7vLI
         U6os1H95+VU5FwXY99QzhqztritbU3H52TEBndSOs2eeg8MYHYvkHMlM1qQiBIeSFk5Y
         f2tQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530Xmj7Plif6E1ngiJsZF09SDftI3WzuAuYX7ixvPbSB75P8VbVL
	PAPwEbQE/PhH+mV1ItEmzxc=
X-Google-Smtp-Source: ABdhPJx2WffFkFLqOG+iaOU9oQqCaXZ5UECnMvHmzWw8DOh0P2aLbOqrx6mh0iyolthrm/V9gP3zvA==
X-Received: by 2002:a17:90b:2409:: with SMTP id nr9mr19482579pjb.244.1637976160625;
        Fri, 26 Nov 2021 17:22:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:138d:: with SMTP id t13ls2963882pfg.10.gmail; Fri,
 26 Nov 2021 17:22:40 -0800 (PST)
X-Received: by 2002:a63:2cd1:: with SMTP id s200mr9874460pgs.489.1637976160122;
        Fri, 26 Nov 2021 17:22:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1637976160; cv=none;
        d=google.com; s=arc-20160816;
        b=DKCCH73ik4QHjxvCK7k/FguPdbeDBhkELwhY0hkhAxTytUKI5CMqtUbxE0sZSLMAhY
         UdW+rUekOwU4HzgGVqCGz1vZVU+nEiKYgbf+Kx791JXjkXCLrYOrgUO9s6BUwX0aRsI+
         AbWcVjWMD+S+ahdbqMGxIZ5KJL2a8KCc8wyKV9iITf3GqJXKWKTw7zAXI+8QXUdPl/eY
         DBPxi4fIp7uGi4RI/OhLBjmfhn/eMQuigtM3opCjF4r/JOg7IZj3Z3UWG9CP5c6TZlcz
         9+hB7guAyS3dsLmRHBOFbVG/l/hsIq7cNOCX9Hx55BL+anUoae+NY9um+e9JguTGxK2f
         ZSBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=date:mime-version:references:subject:cc:to:from:dkim-signature
         :dkim-signature:message-id;
        bh=Crjr7H36J9Lf+jrInVyv901m9c+NySD9gCdemdb2Zhs=;
        b=ObioWxNPKz4ekNKQk0T+lO1Sczxng5FUDEmjoCEvjlc0Ok4WKZyIJ8yMvqh20/a6Z7
         RKHy4MVa6LYVu2Ax5tgqK6NB0Hg/FhWGqVw0MTnWmqRTPNyiXo6Mw2iyIh2EP2v5PLa8
         9YTNiT7fyd2oFamwQ03oyh0HDrbthlGYbkxe3/550AbkNubAygeFe0WOpdS2GPL+dHFB
         v3/CahqZmJCVWwmYuZZxPwp2CV3a/+c5b/ajemEt8s8Omutet9xdazKDDqCuYeNeAODd
         0N4u1pjReGrXSJhhc3pLyOlOJeAXKuar0S+hQqLJ7vHsOhN7PWd+iQ/jrr7e0pLyu/8M
         DGOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=KpCQ3oWS;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=Jts3Efi0;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id f21si740422pfc.3.2021.11.26.17.22.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 17:22:40 -0800 (PST)
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
Date: Sat, 27 Nov 2021 02:22:38 +0100 (CET)
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=KpCQ3oWS;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=Jts3Efi0;
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

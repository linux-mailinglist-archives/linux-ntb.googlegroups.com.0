Return-Path: <linux-ntb+bncBCI4JMU65IPRBEELRKHAMGQELTZXQ3A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 62EBE47CB27
	for <lists+linux-ntb@lfdr.de>; Wed, 22 Dec 2021 02:55:29 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id fn12-20020ad45d6c000000b003bd9c921c0esf853699qvb.21
        for <lists+linux-ntb@lfdr.de>; Tue, 21 Dec 2021 17:55:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640138128; cv=pass;
        d=google.com; s=arc-20160816;
        b=Yfq1CU5egDvdnakmIKT7oUssU3kpySXPF5jRZ2cP/dlYPMEWZ1ptH8SkoyYXlF25p0
         c3tDglnURcXXG6gzru4ERyjYzWejSpPkjA+CxH5+7YzmTiK7FUKeyUWYiRcgBmVtYVrL
         ajaULWDnUWgB4WcO15yvnGukXnbvBJS9v6rEb99QEfe9C5VkFBLdh0evTfZSKuabDrgW
         aeOzzK5uiFrectD0WtWqJBAN+QOZbnT9EgM9gnXZYTwuY8eYWkhZX/3Ab8zAL4oOdFGJ
         gLwYIjpm8CaJxrw+wG/a14/Ffs9dLu1dp4iHJRw37pKIfkGUBSEsWcIDfAcIEXSgspDU
         GRFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=p68Xwnu0DM+wELlekXaxMfzUL/ttwaTmwqL6FJGJ74E=;
        b=gSfuJ9UIdgnznH+iBz8O6/oVkVAzvIPN6q0cvyua5SBbnOLobfdIuPZvq+r0kcBiB/
         hsChfAF9cPpc+LML34/G8KlcAWtUOEQ6AW7qyEes7ev2oWKRWKtkJfUFRGKRj9lctUc2
         5G7QH7feRkHHGeoDW1rGdiwPEQRuJkIxbfzzwCb3JZO5BpOwfP2otwg/iNqp4B+BR5Rg
         Ma7nDJnZsDcQbmKPTlCdlliB0YlZ6J22vZPESBP7Zzd7k0btLEn/PrgVB1Y3ZICiTv10
         8Op+jBWonAbB+HfrbQeF3L/KnahnkaZ+4Di6/+w8jL5N8e8ufkX+pMDuEI7KlF5S0Mhy
         b2sQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p68Xwnu0DM+wELlekXaxMfzUL/ttwaTmwqL6FJGJ74E=;
        b=M1vUR4KX0AdSab0N6HAdMqdBe1yvzF4OCUZ+LR+ZIKhnNXPLLT6OdE+rW/bmXNVSpv
         NegkdbJVdhHVr5SOcX/RhHuLE1U61PSOw+XMK4R4QnRNt1+S3zAbI60/1A5TuoEy0PoQ
         YNvJe82erso7wNosZTv8F3odcfZNVoGXEITNg0yNkebvsvVJvYJ3REBHUQGalluQ/dBw
         SlNj2b3eSf9hN1DWC7Iuznxt+B4Iw0fgi4GxbdnnD/UZT4YRx3MHrwkWtoQ48WrmKYcg
         kIM43c6eoK8Rngsu9I9XfWTN2xifGF8Npmj1X6GW2eV/c9skI4tFC2Du9kuEolDN57kR
         g4XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p68Xwnu0DM+wELlekXaxMfzUL/ttwaTmwqL6FJGJ74E=;
        b=uuVI/BYTfUQku2eJKaBz97Im/902e2K+kgDmXgDWW8deKzcGJ77QZqsU7WhjLD6p6q
         OzJWdu9EZsuVo7Y1B8y6oCCr47/4nnDLXdGKGAph1wb0dyFgYaChQxJfsypFTm1MdOq/
         6rV6yHrryaPxVt+sgPOh7lQJ7ojqHkt2CKkGNtf7Lc5mon+Jsy6oVVRzRd133+7oKI+K
         zMAVR04kSYiffTdrFrjxSuJTYaCA6tO143RkuYfSacHmvYKqDQoylhB1yPpRothwz5VI
         j1mn2/BH0Qj+dAKO+YXhbdftTy7vgvCfXPhuymd1WdbAMj3a+5/FYZmyB1zDgDAOYStd
         A+EA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530F/xy6eLVfJU4mmeDUSeovr7m9pFVv1qVhr9Er7hOn2NWii29O
	wA8+uKChktR2FyJV74rCgyU=
X-Google-Smtp-Source: ABdhPJwPrRv4HsO11mK3S3UicZNYBCyRAHE3XUd6bnZ9C1vIIykX1/i8Ur7q6xvGKkwRgaMz4NryHA==
X-Received: by 2002:a37:aa89:: with SMTP id t131mr783281qke.337.1640138128144;
        Tue, 21 Dec 2021 17:55:28 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:db8e:: with SMTP id m14ls269038qvk.3.gmail; Tue, 21 Dec
 2021 17:55:27 -0800 (PST)
X-Received: by 2002:a05:6214:518b:: with SMTP id kl11mr885934qvb.43.1640138127815;
        Tue, 21 Dec 2021 17:55:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640138127; cv=none;
        d=google.com; s=arc-20160816;
        b=u76cVPCdLfqbi8Np1nk4rai+jxzgO8CIcO8DyYuOz+r3Z8R7v9zzCD+sJaYg+mBRZ1
         MafyWusviHycJxAFm3fB8L7d/46R9H0JPvdWPKfnSoOjJfbWW+xIZUca93lSlGqtOsJn
         yxv7xX+GTBasv+bds1uwE3bhrqLi5KAhStpg/Db8uwtkEyxivJWpi76WE+ice+ZReNHg
         q+t8jUH/L2nUcsVrfakifDZ/p5ZVtuzpWnVs1K36/FrICoaacMaInJcHT13I7Dmxd5gZ
         nnNdiI9l7OOPlCV2QRr5StgLpbbxIGBE4S9tfyYtnaxPqKFpg9FIdI7TRwDOnaAtqvvT
         ygFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=5DJJSsWW9UOCh/+psQuAgPUKmb1hB3nfBhHQcE5nqwU=;
        b=h4q0R+MPjyTLniWPlr88Y8FsEWv7GGQsfSo8ace705lRPFoTzboy/zzLFdbFjSwMt1
         hM3S9PbL4RGbxbRWjjgFoDyS66zsu62W6Yvyq6FFUSh94+isb//Kl1J8ISYZrqKjMWK1
         wDEWWgWUWwtMfZUBu3wkL01GbsYzds8Dyk2n9/XD27gt9gDyCleTCbwc7qyfPtT+6eZh
         TtUtHmIsx7OdiBlGN9ZdWLX5gp9BwNlWoP3o1oVBwUoTg6JUfOIddnnDYT+T1vn7ahfX
         IWcVo2d8jEyJlFdKpLDIXSmQ05j3RXIojK4ecOcD0pR9WTV2acHp7u3Y+GXDCjvwpKZB
         fKVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-56.freemail.mail.aliyun.com (out30-56.freemail.mail.aliyun.com. [115.124.30.56])
        by gmr-mx.google.com with ESMTPS id k10si143046qko.0.2021.12.21.17.55.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Dec 2021 17:55:27 -0800 (PST)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) client-ip=115.124.30.56;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R591e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04407;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=7;SR=0;TI=SMTPD_---0V.Na7RS_1640138116;
Received: from localhost(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0V.Na7RS_1640138116)
          by smtp.aliyun-inc.com(127.0.0.1);
          Wed, 22 Dec 2021 09:55:16 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: jdmason@kudzu.us
Cc: dave.jiang@intel.com,
	allenbh@gmail.com,
	linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>
Subject: [PATCH next] NTB/msi: Fix ntbm_msi_request_threaded_irq() kernel-doc comment
Date: Wed, 22 Dec 2021 09:55:13 +0800
Message-Id: <20211222015513.23106-1-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 2.20.1.7.g153144c
MIME-Version: 1.0
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Content-Type: text/plain; charset="UTF-8"
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

Add the description of @msi_desc and change the @devname to @name
in ntbm_msi_request_threaded_irq() kernel-doc comment to remove
some warnings found by running scripts/kernel-doc, which is caused
by using 'make W=1'.
drivers/ntb/msi.c:285: warning: Function parameter or member 'name' not
described in 'ntbm_msi_request_threaded_irq'
drivers/ntb/msi.c:285: warning: Function parameter or member 'msi_desc'
not described in 'ntbm_msi_request_threaded_irq'
drivers/ntb/msi.c:285: warning: Excess function parameter 'devname'
description in 'ntbm_msi_request_threaded_irq'

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/ntb/msi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/ntb/msi.c b/drivers/ntb/msi.c
index 2818bfcf4031..dd683cb58d09 100644
--- a/drivers/ntb/msi.c
+++ b/drivers/ntb/msi.c
@@ -262,8 +262,9 @@ static int ntbm_msi_setup_callback(struct ntb_dev *ntb, struct msi_desc *entry,
  * @handler:	Function to be called when the IRQ occurs
  * @thread_fn:  Function to be called in a threaded interrupt context. NULL
  *              for clients which handle everything in @handler
- * @devname:    An ascii name for the claiming device, dev_name(dev) if NULL
+ * @name:    An ascii name for the claiming device, dev_name(dev) if NULL
  * @dev_id:     A cookie passed back to the handler function
+ * @msi_desc:	MSI descriptor data which triggers the interrupt
  *
  * This function assigns an interrupt handler to an unused
  * MSI interrupt and returns the descriptor used to trigger
-- 
2.20.1.7.g153144c

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211222015513.23106-1-yang.lee%40linux.alibaba.com.

Return-Path: <linux-ntb+bncBDAMN6NI5EERBOXUZH7AKGQEIGJ4M4Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D8462D66FE
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:51 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id j5sf2323248wro.12
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629371; cv=pass;
        d=google.com; s=arc-20160816;
        b=sT4kIhB0UMR7r5JwH52z0etpEO5D0Cq4L+XZGUv3wFYfqaGdXzVfSLOWIMayoq6vG8
         MKWSdI/+4MjjmrcVU+bS8GxaB6JxuyuQ2kfePltrFLl27TcAFY7PDCDwrzkW6/A+JahB
         BY4rcYd1/YLDE+N7uPQhVL6YjXTvvuB8PvRMHxgeH+o48G04LTBHsG+Mx3rjCPnoYSB6
         Bjef/SILA0K4T8OfWYLCuNnB4mNwsuaRUFtYEyXN+EszKEQvQB0YTVq+MynjXVGWSNEJ
         JzaKdrgKFg9cALI7ykk0itnVcToCh1bOJRdTzM3nvfXtXyogMUHVxrJH+7hq1rQ/KdWS
         TAQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=P9TWPaqpwZUpKvSYmfGmazV1/fwPF60bykxMEWDZf7w=;
        b=KVh193ioniDSSR1X2zTdv1VSnxhimOiw6RBTKPHW9Tv3+1w0nfCk1MPdV/U6psh4uw
         oihb6BusGR1JiofBthyq++fsl+mjBUXc72vYLIrvIk15tym7mmexN+LVg0Xax0hWBBEK
         vkNQe/X3OW4Y84yFB9oowTVFQiCn7QZMqDnu34wtrJ78u7zxfBehAu4JfxCyzVrg9gBt
         kQgLRz+A7K//m8uEMsMEmIW412YTzpzTP2WbrH3EPrFyr0guV1liStYZLeKCUkbQzq/D
         zWL+kpaVp77TEnDM3grKjRqpOEKgEVRWUnI+f3DKjpdzD7gw5+JcL9yhb94ZuyMiuhXF
         yjXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=K1DERQLL;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P9TWPaqpwZUpKvSYmfGmazV1/fwPF60bykxMEWDZf7w=;
        b=M5q56P36ZCpiEvHAWMkBttWNSl0fywrjifae90Mn71yt7f/orK+WwKd/7d0VHhQEJO
         /DB7Jtv7An1tKIStizpDnB7k1k++B3VDXlC7pZsa6zN+lo8TbKX4gFGpvWoFa72L/R9V
         4a3A4Y4aYufX52TaQPDMy4j+vGtKDXNWccl//ejYfgUxFNTdTFPhj1Ltp0CsCkJn8uyA
         Fbf2FX1ngGCQqWxxVZaF3V/SGPRR8LsBB9f9U762A0hTdZ5ez1xc/BeAmo5dL86bo/+D
         ynbyI+PU0qLuEjD8waDNtjLhQpYDYh8Yu8Pak0n036vQT8zrQMUp7HmrgtOFALXjP1DO
         e0Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=P9TWPaqpwZUpKvSYmfGmazV1/fwPF60bykxMEWDZf7w=;
        b=Y9yyjtqmLm7i5RGNirXXkjE6kdRCgNRtNQ48BdfpM8luHmfUMCYPear8YD6Ly1e96k
         M9H+zGZr7O+g1CD+4EXEkszHFyTq3i2T0d0Ogyawzh/belq2easzPZeZImOVR7DEqvO5
         lH5enXo3Gp2fcv2uzoZqX7FYVfxr6S0sotHFgFlu6YEOhZYi6/nbu46vjPHjdm6ZFRdK
         XPH+dUCaZTXRFpv9B0JTQytSZyUr0dFN4ShKGJX2XIhVOW9wKg4TeBgO5F1QfMoq+4oV
         s/cmTxlqzgqtPBNKlY96pVXAPqulLd/NKJgOofsW65te27CQQnhDrs+N85uE+AY4Azcc
         O+tQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5332bCZRi5POee/etWBZW2PS58PmT+6O2L026RAUYzdyX+FtoSry
	phROwdxsN3ejxEEOr14oet0=
X-Google-Smtp-Source: ABdhPJxQvlhkqW7IN+uiKElWonRgDcstCdCqrF9VDy/yI7SZeqWLjSn0jtyRhFuTASYkZey3mAJqVw==
X-Received: by 2002:adf:db51:: with SMTP id f17mr10244773wrj.83.1607629371118;
        Thu, 10 Dec 2020 11:42:51 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls393484wrw.0.gmail; Thu, 10 Dec
 2020 11:42:50 -0800 (PST)
X-Received: by 2002:a5d:6944:: with SMTP id r4mr3986502wrw.134.1607629370322;
        Thu, 10 Dec 2020 11:42:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629370; cv=none;
        d=google.com; s=arc-20160816;
        b=MIiAerKzgX1N+HPUs8FV0GTgLev24AXVq1KDShwpQN6Gjjp2kamTvlcErmZI5EMwV/
         y8QniHIk59LIVBrPZkAkjeqbmUEUXO0q9XPYjPsfCXcGmuQRfv2uX9BMucm84lkSntIe
         XWz6lt0qqC7GzG4lSTeMu0asR4bDEC7tntxXmD3hP4tEomQbmQOLE5abFPBCFceUdr54
         2TAe7olijHIkdOV+BLbOu3O/SHc0wQVDadMahR6nTQ5BZblRwFNDGWWmZI1SADmTOPAo
         ZhM2iYcHy9BxkfxCz07HBqIHzc9KQ9tkpU84MvALxBqsRLZuZwbj88IA+Xkr+299OdR5
         lt7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=ZlPg9sxtWavWNstOnduWAE0LJ88d0safrspZWU+Bxkw=;
        b=1IkjVuK7GW8m9tbbxy4XTYbZgh/To5y27B+eepQWdup3zFqrIP26TZXyQYBTpwIeco
         aBI/qb1lFq4+xpPhC8LNpnfjEkpiNzM58kby3kvQHNMS/MflJ7bol+AV/S7t5d6cnxb7
         UMRROca8kwP9IWzAjUyx6U1Xlx3xAfnp3j2tcGWG3ELveW4BRSXpywWczGtqCtCsM1Dl
         JU8kT4t/upHXnbiJvR57Pvbcu8RLEceBpgOFFpr8VfeyFPjcm8vhfV8XESsrcaBwB/eS
         LbnIPhz6bayRNdnGAoUoyv73LCQfVF2zHEDnMpZGkP5XBbrUVs2XtYi2GFokU1T0c0vQ
         bB4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=K1DERQLL;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id y187si140441wmd.1.2020.12.10.11.42.50
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:50 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194045.360198201@linutronix.de>
Date: Thu, 10 Dec 2020 20:26:04 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-gpio@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-pci@vger.kernel.org,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>
Subject: [patch 28/30] xen/events: Reduce irq_info::spurious_cnt storage size
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=K1DERQLL;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

To prepare for interrupt spreading reduce the storage size of
irq_info::spurious_cnt to u8 so the required flag for the spreading logic
will not increase the storage size.

Protect the usage site against overruns.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: Stefano Stabellini <sstabellini@kernel.org>
Cc: xen-devel@lists.xenproject.org
---
 drivers/xen/events/events_base.c |    8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

--- a/drivers/xen/events/events_base.c
+++ b/drivers/xen/events/events_base.c
@@ -95,7 +95,7 @@ struct irq_info {
 	struct list_head list;
 	struct list_head eoi_list;
 	short refcnt;
-	short spurious_cnt;
+	u8 spurious_cnt;
 	enum xen_irq_type type; /* type */
 	unsigned irq;
 	evtchn_port_t evtchn;   /* event channel */
@@ -528,8 +528,10 @@ static void xen_irq_lateeoi_locked(struc
 		return;
 
 	if (spurious) {
-		if ((1 << info->spurious_cnt) < (HZ << 2))
-			info->spurious_cnt++;
+		if ((1 << info->spurious_cnt) < (HZ << 2)) {
+			if (info->spurious_cnt != 0xFF)
+				info->spurious_cnt++;
+		}
 		if (info->spurious_cnt > 1) {
 			delay = 1 << (info->spurious_cnt - 2);
 			if (delay > HZ)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194045.360198201%40linutronix.de.

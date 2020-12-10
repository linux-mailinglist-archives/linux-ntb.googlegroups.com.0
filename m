Return-Path: <linux-ntb+bncBDAMN6NI5EERBOHUZH7AKGQE6B37ZSA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 747522D66F9
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:49 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id u17sf3730053lja.10
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:49 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629369; cv=pass;
        d=google.com; s=arc-20160816;
        b=A++VBMCxYuuLIqx12UHvYj9yFa5ajW0ND2KrYdFVwzwRc3MwkOCJQi92pINSPh9h+4
         4W6hqo2q3cc1/hMGzNqGN4m22ySi0/25iSOvm0U87M4uwCS8WeaoYEF4BTDw8bfWwp6a
         aNFuIo48HnALwgsyTajxCvMpZXYQgPXjlc5uT7RjWWIP60YrDhHnRJwSSnAz8MSxBO7U
         ZN15RjlmLA14zZZjepqOp6TdzHXQYz07z7XMMI2c9wvdQVNXaCo89QL7zyVM/dCWLmIt
         fQc1s4EvQVltgzmNLo+HdLzx58wCICpMPRCTLpHU41as35lRTlfvXvcgtH5PNsV4M5Hr
         u0JQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=UxCiP29V451mwQbEvHC6VUNZBQlaxkYD+C/HesacxqE=;
        b=l5nZ6cboRffP6RdFMjCncgnDR7EbNfh94qlUNrdiwFW1mbwAPlv1LTZ0+EwO7xZuRA
         9JLxistlbXjKbbU7NzT6SX7TxN4X9ZIBuWKyW44hzN4seldbeuEvOKAJOFKaNg5YpVda
         uvQgWij6WkSB8jiQunzMsSDjoTZMYSTEWio9DpuqvpCSGANrw+c23lKkvJwelQ689jY0
         IRuXy4+kqKb7bJjBPN8PLUrQABDtWdiyrye3AvyfepmZ2RHWG8iMn66Ti0Z7Maa1Oa+b
         GWzeSZVZL1LMbyEDa1wO0o4ws0eAntubFMIOKjjXulHpisvFKffBUu6G2Uep5kjylOKj
         EaMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=AhYGZMH5;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="XdjqOHU/";
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UxCiP29V451mwQbEvHC6VUNZBQlaxkYD+C/HesacxqE=;
        b=fC6c771+liF5d7rM4jT5pxzmbSeurwWJD950Nc28Tsz+pz5tjEcWwUlbGedGytubj0
         hd766ai2ipj3PWh2ZWxuZVUe4Junc+x6Ixmpf8nbsOjS9F/o3DVjwBcyZTA8NGSizVU4
         FnTgBr/6yRVkFeHrL7aOqI51Uv9HJKknwssWsbaEW6bDXTQinN8U4nSFgCOp55A92154
         ldN/rHFULSlxKmCFZfeIEJ6pXxyldMdcR7BEy7kZcLZYWChhOLyRjm8ye+kBfl2i0Kxq
         c/pb2r1WCuPw1FJ/c8zM+2xHHWLW2ycEuMNM+TW1PW7R+WnKODu6uEBdzrd+2XfFYPcG
         qp9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UxCiP29V451mwQbEvHC6VUNZBQlaxkYD+C/HesacxqE=;
        b=FXh42EaVjg6Xx49LPCTSYwDnmRVB/+ZSn2ErNK26lm0RCgBzz4APteEt8p7Pd5hUc1
         5yYVS0GwM0YzrbMXMqAtOqmzGj/TzeWlXxo3WFilQju0g/lW+U0q/A31Eb5u34C7+pMC
         eJ+AGB9ssWAkimpe9NpQL7XiOupfdRVVasCtUlUvHDy5z3D0Lg32m/X77gW+2hJ/SFA0
         GpdwR8F1iwu9rFSGLoU4QfhvDllh+k8aaUS2vDwxiRK9HklJQADYEd7SQIC9gPL8++1a
         953umdEMe3sC9WtmYyAugMBY34PXptnZOurtrhA6nA57wQD4iH3AEHBYniD2syNnnU4W
         qxxw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531qPO46oh+3W7XwDHfFLMnk72LwahdCwQxWSjDpxBRu6qv7oE0s
	PPAsj05/Fn7WF6xeQaawcB4=
X-Google-Smtp-Source: ABdhPJxCNHIIL8v+Cf4f/Fm9uUQCKBEBZHB58O4JqK513pQgn8qhW8IWHvmjEUfIGBGLbyeHdcsj/w==
X-Received: by 2002:a2e:9611:: with SMTP id v17mr3655953ljh.69.1607629369025;
        Thu, 10 Dec 2020 11:42:49 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c1cd:: with SMTP id r196ls197728lff.1.gmail; Thu, 10 Dec
 2020 11:42:48 -0800 (PST)
X-Received: by 2002:a05:6512:504:: with SMTP id o4mr3701170lfb.398.1607629368119;
        Thu, 10 Dec 2020 11:42:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629368; cv=none;
        d=google.com; s=arc-20160816;
        b=iMYV3KnImdN62Qrj9WCM//JjGQYqQo/7NpDuEeRfQ20p03CTd+vXaIPqU2gXxLhkUq
         zC1zHqrfC4/jS+1A5LOltmDNn3sEJO76oPfccUBkcRCMfsUgKf8xGCSpcajG1n1EGU5p
         6fIu1Fz0lplJJXtFojPa1a5xIFz2xGyrlUzh3uLMMKILHatNXla+B+7WghpQfazYtG3E
         r8ZXvcseVCQnwpBTBgAbfood5/WS5tGArEiVUzf9pauiCIGjwv2jr2Ko4uX9tvf1Z4Sw
         gHhM7bEs572xQwz7vwOUEApK0JjthdEjtPvkAm8G6f7xz/lZ3EeIn3xzS7Eu8QpN8kfF
         OB8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=RU1bu/2cEIaQZD4XBTa1ORm36AT2+9xoAT9okJ4RH1c=;
        b=qpTPAhy9bI5V6yCbiumgV7jFuaMwb6y7dmVuV+hddEgWi2YyzxDzynoWxAK8pgDHWM
         1EwPggNgVCaEhf2UX45MaTg+MQVWBuC+tq4VgzCeGIy54FzF/8G9b9/wF8gCBZjKfuTd
         +wv3B3SfP3cbmYUZa6Ys7jhX7Ranq89SRVioJjjxpkJoFhJjAx4XBn4TlAPpInLB8ufx
         Bi9asaAJhORk1f1NMHggQaNgXaMWiSgH75QJeuGwCiOWaOKOSAUohGPz22Ai6ayU5mGE
         i8dP1wMO6RkU0MAS9ja3/o3G7MgeZHmJm6dwzBy42UeSpzFZczFiQRF8zxV4T0pm9w6W
         QU9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=AhYGZMH5;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b="XdjqOHU/";
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id l8si227074ljc.2.2020.12.10.11.42.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:48 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194045.157601122@linutronix.de>
Date: Thu, 10 Dec 2020 20:26:02 +0100
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
Subject: [patch 26/30] xen/events: Use immediate affinity setting
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=AhYGZMH5;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b="XdjqOHU/";
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

There is absolutely no reason to mimic the x86 deferred affinity
setting. This mechanism is required to handle the hardware induced issues
of IO/APIC and MSI and is not in use when the interrupts are remapped.

XEN does not need this and can simply change the affinity from the calling
context. The core code invokes this with the interrupt descriptor lock held
so it is fully serialized against any other operation.

Mark the interrupts with IRQ_MOVE_PCNTXT to disable the deferred affinity
setting. The conditional mask/unmask operation is already handled in
xen_rebind_evtchn_to_cpu().

This makes XEN on x86 use the same mechanics as on e.g. ARM64 where
deferred affinity setting is not required and not implemented and the code
path in the ack functions is compiled out.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: Stefano Stabellini <sstabellini@kernel.org>
Cc: xen-devel@lists.xenproject.org
---
 drivers/xen/events/events_base.c |   35 +++++++++--------------------------
 1 file changed, 9 insertions(+), 26 deletions(-)

--- a/drivers/xen/events/events_base.c
+++ b/drivers/xen/events/events_base.c
@@ -628,6 +628,11 @@ static void xen_irq_init(unsigned irq)
 	info->refcnt = -1;
 
 	set_info_for_irq(irq, info);
+	/*
+	 * Interrupt affinity setting can be immediate. No point
+	 * in delaying it until an interrupt is handled.
+	 */
+	irq_set_status_flags(irq, IRQ_MOVE_PCNTXT);
 
 	INIT_LIST_HEAD(&info->eoi_list);
 	list_add_tail(&info->list, &xen_irq_list_head);
@@ -739,18 +744,7 @@ static void eoi_pirq(struct irq_data *da
 	if (!VALID_EVTCHN(evtchn))
 		return;
 
-	if (unlikely(irqd_is_setaffinity_pending(data)) &&
-	    likely(!irqd_irq_disabled(data))) {
-		int masked = test_and_set_mask(evtchn);
-
-		clear_evtchn(evtchn);
-
-		irq_move_masked_irq(data);
-
-		if (!masked)
-			unmask_evtchn(evtchn);
-	} else
-		clear_evtchn(evtchn);
+	clear_evtchn(evtchn);
 
 	if (pirq_needs_eoi(data->irq)) {
 		rc = HYPERVISOR_physdev_op(PHYSDEVOP_eoi, &eoi);
@@ -1641,7 +1635,6 @@ void rebind_evtchn_irq(evtchn_port_t evt
 	mutex_unlock(&irq_mapping_update_lock);
 
         bind_evtchn_to_cpu(evtchn, info->cpu);
-	/* This will be deferred until interrupt is processed */
 	irq_set_affinity(irq, cpumask_of(info->cpu));
 
 	/* Unmask the event channel. */
@@ -1688,8 +1681,9 @@ static int set_affinity_irq(struct irq_d
 			    bool force)
 {
 	unsigned tcpu = cpumask_first_and(dest, cpu_online_mask);
-	int ret = xen_rebind_evtchn_to_cpu(evtchn_from_irq(data->irq), tcpu);
+	int ret;
 
+	ret = xen_rebind_evtchn_to_cpu(evtchn_from_irq(data->irq), tcpu);
 	if (!ret)
 		irq_data_update_effective_affinity(data, cpumask_of(tcpu));
 
@@ -1719,18 +1713,7 @@ static void ack_dynirq(struct irq_data *
 	if (!VALID_EVTCHN(evtchn))
 		return;
 
-	if (unlikely(irqd_is_setaffinity_pending(data)) &&
-	    likely(!irqd_irq_disabled(data))) {
-		int masked = test_and_set_mask(evtchn);
-
-		clear_evtchn(evtchn);
-
-		irq_move_masked_irq(data);
-
-		if (!masked)
-			unmask_evtchn(evtchn);
-	} else
-		clear_evtchn(evtchn);
+	clear_evtchn(evtchn);
 }
 
 static void mask_ack_dynirq(struct irq_data *data)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194045.157601122%40linutronix.de.

Return-Path: <linux-ntb+bncBDAMN6NI5EERBN7UZH7AKGQEMGSC6KQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 304292D66F6
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:48 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id n13sf395773lji.6
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629367; cv=pass;
        d=google.com; s=arc-20160816;
        b=xG8Yr1GL4F5ZQx8ER5i2aUxLZ0idocsATAgL2IRVtZNepyfBFIRL+VT+kejfvO/YL2
         +byFiIbKkbCULoWFz0MHROGyuv7ck83c+VjpyerlK55Vb5+XvWSFfyKRXxgY0SlrD00v
         2pJhg0/K0mjD7JzheRFgLhSEfv2qW6ibUrKTME6byjgkYZIRB3zEFaPzGwABgaPPU65f
         ghOSJ+shN3p8KTadv+lPUSciu9t8KPhkOkvtCckffsBcQwdH9FRalOAzslVyqFiLgHd1
         snfGoUyyf2PmPTqaJV1PDXTjeF9dQlMuZL/+Vfh2wQzsIJNizVTB8k4wHM7n1qfjp8I9
         X6NA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=l1ikKROQ89REKQ4ZG6ojy54Nq4XVbjT1mPOz79ApsRo=;
        b=0I8upR9KJn6Xw2ND0C1tqsjpboaQNKNEdSV2ErHQTgj8gDm3hyytSeh91hi4fWpn8E
         GWo3kVEc85Fe1nxU1L1jpRputL/AYuHiyka7jNnOy+Br13EIf4AoxOzxOAsXrfZgDREN
         jYoDlgToFdRTyF6QTSt7FngLTyciLiMRaCE8r48S5hs+qGH+7lLcQIqfOalA3gJ9MqaZ
         XaeENmC+1NQYSLFZLg7A3Xc/vMKpb+BEJhbAG/TRSo2KjdjCsPIfndgIJD8XWapTmESR
         EkU4CRr66q4Nz8S/j1NR5hi776t6AsNxLpsyhXPVYGzBuRMUdx0iGajHG89OpiaVGSMO
         uUNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=bwVQ7gaQ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=oavywJTH;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l1ikKROQ89REKQ4ZG6ojy54Nq4XVbjT1mPOz79ApsRo=;
        b=p/wr1TPgD6xhQtpmok+paFZdHO2LrAfZYaoN4nJc38TUKuD7i/XRa9dAhD9aQaHakg
         yv6xvBmKxe0dEVoWZ1Dm4IUADBg6daDtiPTHPUOL4YZy8uRqFLHH6JIQcnf2Ugy2g4lF
         eiooW+FtfJ4gyMiYx8ix72/auTnOG2ToKqJksnOU4MBWsvEmRlgIGroiJYogVnm+jMY/
         kKB1cL+5745p033jJFAjB7NxW/wYm8QrJL8PvLUm3Ij23lOiUP4+F7XNAzJs9XWuBYFs
         B56QZ/yVtkqvHyiRrs0j6/Ep9kn6O2Cdl7zbI1OIi1Dbl5LHOczmr8Z6BXwOQ+KwPVGE
         fa0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l1ikKROQ89REKQ4ZG6ojy54Nq4XVbjT1mPOz79ApsRo=;
        b=lPuP6EA0ClhdXc0jX0Ey7qlgeR91Xl40yibEaZ/6Qdg6kii8Hh0p+MaFI+3kFQW1jH
         8tAcE2NA/IgYZyoZbEXvzcWp/sQppnMjMfQEg8yzfxDaiiXaeT6bXdCkTyRTpc2h4/Yj
         3qhkRsmeb81S+xzXuT3wiDqB/pHGC8IQRPX3LpDutayDcX8w2XETei4MJAzsSJC+ZUxE
         2+PNYjPJT4vIeF0/5DIaXe4AN48xTueIBizWLnmmFGqegX+BVtLg3rANHUQw+FdEPhPM
         NLbH2H50NWDcUuUoM8uc6ItBFv2NbpzJQgFqMey9ciajVoKzOwivwmMY5VH4ps6WLy25
         /e3g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5336RyOplp2hnDRPS5GhMcpKadzshvn2AnrX1V9hqg2hxpt2b34Y
	78IQuB7+2qV5GC7ikyB1JYU=
X-Google-Smtp-Source: ABdhPJw48o6OvUiAUZK2EYjw23yqFOiKJI/b6d7IzWEeyktZJ2AoBnLQUH0qYCFk9CjXm3t2OmIqCw==
X-Received: by 2002:a2e:88d2:: with SMTP id a18mr3640718ljk.42.1607629367777;
        Thu, 10 Dec 2020 11:42:47 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c1cd:: with SMTP id r196ls197699lff.1.gmail; Thu, 10 Dec
 2020 11:42:47 -0800 (PST)
X-Received: by 2002:a05:6512:11cb:: with SMTP id h11mr3347915lfr.400.1607629366879;
        Thu, 10 Dec 2020 11:42:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629366; cv=none;
        d=google.com; s=arc-20160816;
        b=pBrM2v9f2D0tqhJQohQgTtWlv0SNDTwOSFO6vxgKRcqlxvELmCMrOtm4T4FcMlWdLc
         tsnLaRIm7Jw/Migg2E4iJQrFHZN3sdO1YbRnVH1hyQLEZLI3cSROz3xSBaW4DOPkgc0q
         LXVHWEmnLc86Plti5FM3lnbqjSiT0Ef9dp/KNfhUKVSQqJp1m3jozqnzACVrLtwyF6lz
         AGD74izwq6Nq9OBMKwqFJBIegy+HkwRjVppURFWuZVf475i6p+j5rLrHkYIjPrZZZgAC
         tgLc8Bfy9n0AyCDQkj6bL4skUegOHiqkNV95k4YIZf7MzasTytMkjhHmGntPLfEJThVe
         +lJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=tEVls3jI8V5LtEBTs0cm0Szr6SDBh3GYqdx/X7n2UZY=;
        b=d6meWPTYp5AjHZkevzVtHUkiqYj0L9Zyf7WX0zx5m5NaBo0HhZMgF+nlpEsUv14oAO
         ldbkkbstgXIbJK2yj5Sx1Grf7i5THg8jpi7JtE1eijbwdxsKBIbhJDHh7nAiYFFINbfI
         pQK9+Lib5V9YRftIaxdADYbdOkhDXd/k/10sKIhg8PWjik90WuEQGVRGmxYaT5p63Fcn
         EAKoDb/ousK3YPUQHAR/409d+FE3mjokPKOIB9HdRsTPRKGHzmHsTxidhQpJR/WX3SsO
         bzFWcQVzzKHLivQ7SK2gu7i9NYdIcwbNWjdVLX8OzyYGkPbfY3po6LAFlceLlDPNDOxW
         KccQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=bwVQ7gaQ;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=oavywJTH;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id f5si232881ljc.0.2020.12.10.11.42.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:46 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194045.065115500@linutronix.de>
Date: Thu, 10 Dec 2020 20:26:01 +0100
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
Subject: [patch 25/30] xen/events: Remove disfunct affinity spreading
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=bwVQ7gaQ;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=oavywJTH;
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

This function can only ever work when the event channels:

  - are already established
  - interrupts assigned to them
  - the affinity has been set by user space already

because any newly set up event channel is forced to be bound to CPU0 and
the affinity mask of the interrupt is forced to contain cpumask_of(0).

As the CPU0 enforcement was in place _before_ this was implemented it's
entirely unclear how that can ever have worked at all.

Remove it as preparation for doing it proper.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: Stefano Stabellini <sstabellini@kernel.org>
Cc: xen-devel@lists.xenproject.org
---
 drivers/xen/events/events_base.c |    9 ---------
 drivers/xen/evtchn.c             |   34 +---------------------------------
 2 files changed, 1 insertion(+), 42 deletions(-)

--- a/drivers/xen/events/events_base.c
+++ b/drivers/xen/events/events_base.c
@@ -1696,15 +1696,6 @@ static int set_affinity_irq(struct irq_d
 	return ret;
 }
 
-/* To be called with desc->lock held. */
-int xen_set_affinity_evtchn(struct irq_desc *desc, unsigned int tcpu)
-{
-	struct irq_data *d = irq_desc_get_irq_data(desc);
-
-	return set_affinity_irq(d, cpumask_of(tcpu), false);
-}
-EXPORT_SYMBOL_GPL(xen_set_affinity_evtchn);
-
 static void enable_dynirq(struct irq_data *data)
 {
 	evtchn_port_t evtchn = evtchn_from_irq(data->irq);
--- a/drivers/xen/evtchn.c
+++ b/drivers/xen/evtchn.c
@@ -421,36 +421,6 @@ static void evtchn_unbind_from_user(stru
 	del_evtchn(u, evtchn);
 }
 
-static DEFINE_PER_CPU(int, bind_last_selected_cpu);
-
-static void evtchn_bind_interdom_next_vcpu(evtchn_port_t evtchn)
-{
-	unsigned int selected_cpu, irq;
-	struct irq_desc *desc;
-	unsigned long flags;
-
-	irq = irq_from_evtchn(evtchn);
-	desc = irq_to_desc(irq);
-
-	if (!desc)
-		return;
-
-	raw_spin_lock_irqsave(&desc->lock, flags);
-	selected_cpu = this_cpu_read(bind_last_selected_cpu);
-	selected_cpu = cpumask_next_and(selected_cpu,
-			desc->irq_common_data.affinity, cpu_online_mask);
-
-	if (unlikely(selected_cpu >= nr_cpu_ids))
-		selected_cpu = cpumask_first_and(desc->irq_common_data.affinity,
-				cpu_online_mask);
-
-	this_cpu_write(bind_last_selected_cpu, selected_cpu);
-
-	/* unmask expects irqs to be disabled */
-	xen_set_affinity_evtchn(desc, selected_cpu);
-	raw_spin_unlock_irqrestore(&desc->lock, flags);
-}
-
 static long evtchn_ioctl(struct file *file,
 			 unsigned int cmd, unsigned long arg)
 {
@@ -508,10 +478,8 @@ static long evtchn_ioctl(struct file *fi
 			break;
 
 		rc = evtchn_bind_to_user(u, bind_interdomain.local_port);
-		if (rc == 0) {
+		if (rc == 0)
 			rc = bind_interdomain.local_port;
-			evtchn_bind_interdom_next_vcpu(rc);
-		}
 		break;
 	}
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194045.065115500%40linutronix.de.

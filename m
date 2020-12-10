Return-Path: <linux-ntb+bncBDAMN6NI5EERBLHUZH7AKGQELMFICKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x63b.google.com (mail-ej1-x63b.google.com [IPv6:2a00:1450:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id 82BA82D66E5
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:36 +0100 (CET)
Received: by mail-ej1-x63b.google.com with SMTP id lw15sf1996590ejb.7
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629356; cv=pass;
        d=google.com; s=arc-20160816;
        b=csm2mkXRQ+fGp0x/EDYYdK/0Ji+MqmFOeYCFDxoByetRykAwYE7IkeloZr5C1mE5xw
         9OPqsWS105qkhqvKNjlJUiwIxpWqHuMl1U0J3ACXzebhslLVm5aXadVOzLW+aBp1njRD
         ZL2CNj86IHI6RcKnmj1Sm5Yqgod8bMxOKfoP+KYRkDRkznzoCp/LoRoNZQU5TMo0/x3g
         C831MaBxpHd3B7hzZEz/vRqNvWogJlup+OGSSl5+AHVYB8GyU9KO4FEAfwA2D/Zdw/z8
         gq0o2jR9HBfXPZPFh2bN85LPLH7p5k0ByvEnYpp6DW0xiKS7dH47CdxNnOfimuafv1o/
         MjZw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=32nSohzn407xhPOmxNy7+WaFx/RwQd38ZcEPpM7/T58=;
        b=bleSLPez/0v3LvcKJHSnKKFltUQOaI0RBK9j8cbW3fO7UWRUNKjJvSLW3qoU7NYM3M
         mU33zxpXIGIyI6Pc5rA7uJ04f2iKvjtvFPm9nlWcwC1QPcA9fDJKcQPFHwPppdsGuZNW
         ANDKys7bhdcKsm9jpDMFCHPE8vDC1nWNYnyDOf1O69UGs3JZ9pkLMLqJkBA2EaaqkI3S
         Be0w8KhYJndzRIaTcbVyFdEo9xPS26qFDF92ESU0mfalmSZec7A+Ws3wvxwFHpbKWsLc
         p9W2GY8R8giTWFmpMI6RHL4DeRfwerfr0gcX2qvAByhrFvHNuOU6DB53fimb5fJWCtf5
         OWvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=dopfjz4h;
       dkim=neutral (no key) header.i=@linutronix.de header.b=K3Wur5e2;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=32nSohzn407xhPOmxNy7+WaFx/RwQd38ZcEPpM7/T58=;
        b=c7880T+/Ub2I6Tp5WbaZnjsmYF52AGR1tvmJzUDzJoVvSI/JX/j1KP7Pk/2vY64aGd
         8EkCV7HUEfxGgHPxB7vsSt5Oj+hOM3SQYH2MLy6hGCstnExO9DFKzhIv/ozyegxf7tUv
         idAN8Xe27luZxFWPzm+AVbcsv4NM1vByedOM5Ge8K0qe/fQ/cIDFNT+fnKM942o+vsgm
         4g4jxD93Jd8AvLYnZ0elAQQpyHJlFdLRHsncoIyXVD98if+Z2LnpaUNFObXpd1lWv6gv
         p3eUOfp0Wak0QmePCQMya7A8Gh10sMkdhu4uivEzvA4fRVN+xjuidntW5gVNCrgBimk8
         ZZXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=32nSohzn407xhPOmxNy7+WaFx/RwQd38ZcEPpM7/T58=;
        b=M2BQySgUqK12Ox/8uN0xuFWjyupiHQpBG/hbwVmIKXFonUDFXGaslx6S05SSh+YEvW
         VaiS7btegBmkkYcetkE4XOfQzmb4pA1WG1bmLUODnpsGn5l59VmPl8aTX/UznffKHAts
         dPt9iryY5lwULPoh7dHQsqvr2AE3MKzNCIuOoyQsfNcR8VU9gnzHTFXh3w6NnVsQo6+/
         BSferm3gHLALiYjju3fZPTMBh0sqP/iqzLxWSxwtlO+doLWscxcKbGhokJp+Xphj/Vco
         QOaPu+WNvLNHMrWQM5NtEY0FYklsdfNKTYdTb6fVyZ47kSseT4FJZ+SaLX6leavr/lWh
         9iTw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531HTyoP1RhTbetEAd0iuNS2ql9EN1Wr23MqxcxEuvnjTJi/1SU9
	BEwVaxDc9ZpZ4Q0ZSZetbxs=
X-Google-Smtp-Source: ABdhPJzG7uZVhTaCQukWL74yw9kQ0V920wiMtJvSR8EDGQp70xTfx7SL2tj+jCPcSTsy0C71rLwvYw==
X-Received: by 2002:a50:e846:: with SMTP id k6mr8585477edn.245.1607629356256;
        Thu, 10 Dec 2020 11:42:36 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a50:fd15:: with SMTP id i21ls1366014eds.1.gmail; Thu, 10 Dec
 2020 11:42:35 -0800 (PST)
X-Received: by 2002:a50:b002:: with SMTP id i2mr8356807edd.99.1607629355384;
        Thu, 10 Dec 2020 11:42:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629355; cv=none;
        d=google.com; s=arc-20160816;
        b=nf39cFi3HCxbYBS3aMwApQTlcRQAS3axlJ2a5eK0kTKgg2l+GwpFClGsdUQvfMEHO3
         0WbY3TvE3b6FgmEuffWhVoMgOBfZxgDhDynZ4MWXTiuS2NR1dAkjsjRFd47QFh4bj7XN
         oHnoPQh2ivaLVxuynQAfH7PwdfSXBvft1Nim0CxdZJ8SJK8nnVg7XrgkFRxWky/5czHG
         xt8HhebIZxictYnLC1hXXrCmrquqo1Nv2B7WFddWvY6aMFCwTH6L04YgKe6DAlY9emXd
         j3UGZMHQ/1AGghkDFhqvJMF1Rf8vtwJxpj0hWt145IApcdnoh/J/ZArNH12gJdWJ6lMU
         Mocw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=4K6qItYlSe7EBUp3WfMEzcI2y69yZ4OdOhSokF1HvFw=;
        b=K3dRgRtLVtNEwyxm6cAkJ6NNV+DN/P9tGZNXfwlJcp2K25ItzlXtCN2DX3Jgr30rwn
         9h1bjyrTNPk0vwVW3l2sPZAwwc2kKHFCcpmfL99zttKMgHV+YIeMShFWGbKX9eaIz+Qa
         LpuU+H2OiqZuT/gW0IGfT80n2xmYSLfzj5I7PIRPLUAfIbPH9lvoYTaCNKe8nP3SKrZx
         lZrqJIeBUFL1K1bH4ludAnvik0S1u6f4BnOEx8/s0LKvhjBObdeR2GvfoSq4Ox1LmYZz
         P4+M1T2NdsE/dHNf+u6iaTlw0wyR2124l0in7P27K+MCt97WLhuEJruw02qK3151OayS
         vXwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=dopfjz4h;
       dkim=neutral (no key) header.i=@linutronix.de header.b=K3Wur5e2;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id cc25si209296edb.2.2020.12.10.11.42.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:35 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194044.157283633@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:52 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
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
 linux-gpio@vger.kernel.org,
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
 Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
Subject: [patch 16/30] mfd: ab8500-debugfs: Remove the racy fiddling with irq_desc
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=dopfjz4h;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=K3Wur5e2;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as
 permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

First of all drivers have absolutely no business to dig into the internals
of an irq descriptor. That's core code and subject to change. All of this
information is readily available to /proc/interrupts in a safe and race
free way.

Remove the inspection code which is a blatant violation of subsystem
boundaries and racy against concurrent modifications of the interrupt
descriptor.

Print the irq line instead so the information can be looked up in a sane
way in /proc/interrupts.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
---
 drivers/mfd/ab8500-debugfs.c |   16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

--- a/drivers/mfd/ab8500-debugfs.c
+++ b/drivers/mfd/ab8500-debugfs.c
@@ -1513,24 +1513,14 @@ static int ab8500_interrupts_show(struct
 {
 	int line;
 
-	seq_puts(s, "name: number:  number of: wake:\n");
+	seq_puts(s, "name: number: irq: number of: wake:\n");
 
 	for (line = 0; line < num_interrupt_lines; line++) {
-		struct irq_desc *desc = irq_to_desc(line + irq_first);
-
-		seq_printf(s, "%3i:  %6i %4i",
+		seq_printf(s, "%3i:  %6i %4i %4i\n",
 			   line,
+			   line + irq_first,
 			   num_interrupts[line],
 			   num_wake_interrupts[line]);
-
-		if (desc && desc->name)
-			seq_printf(s, "-%-8s", desc->name);
-		if (desc && desc->action) {
-			struct irqaction *action = desc->action;
-
-			seq_printf(s, "  %s", action->name);
-			while ((action = action->next) != NULL)
-				seq_printf(s, ", %s", action->name);
 		}
 		seq_putc(s, '\n');
 	}

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194044.157283633%40linutronix.de.

Return-Path: <linux-ntb+bncBDAMN6NI5EERBGPUZH7AKGQEDJLJ75A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9BB2D66C3
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:18 +0100 (CET)
Received: by mail-lf1-x13e.google.com with SMTP id t194sf2329074lff.15
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629338; cv=pass;
        d=google.com; s=arc-20160816;
        b=c36Xo4xaPek5NSfi/C2yfYPznt3yNulwL+c1cUqe8l6ST/pbCMxLLZxq4VH29IOlOm
         751sax9KnofTNpO8R75BvwGNoMH1EjZHIKoXAihlnbi1THDHVtzZos5Fg8mo9+5B7uh8
         wZcN25QgVEtbGghYJ1PACRvCrD4Tc6+BJTmTb10OjNh4TUx9G/nLhDKfANgAE4Kiu9dM
         H+Gp+Yu9n6OiWdkr+Uwx/B5Ul2FTbvljJlxn8vOTPgiZ0xkBFNyEYNyokQxmXaNdVQoq
         gsMSI5NcW3WDAr53E8b9VkmVECm9oCy1lhyrpWBCoKWP3dvTEMMZYIN1di7633gBpQPq
         8Emw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=crd4Ap0cCKqaDec2rysEdw7DloilhWElbGyOiTzma5M=;
        b=JaKnMY8mZuWZWTdlEMunpswvrJ4NmU1W9IDfUBE7IWqHwN3zQOC7hSYev2AlveCVJh
         RFGrmQ7Db9ZPiYB5rX2lEhp49+BxfPluMX84TXvxju14zTav9n7qlliai5hfKSP220tz
         5fFcZYfMLZFKweiPbKK4HeRGMwxKRUYfFXjDYwt5n3qLqK0yMRLCXZJEQVd5ZwYrlO35
         Gpct7zn2+435ywY/XzhYOYP6zrw+ZimvFxEX8SXcjPM6Bd8+Gwv73Zj30tbUyJyk7zvl
         3aKo785jnFaf3CVhx460pVP+FPOVPw4yqE9xhAKcBN6dRg4xcMGX6fu8NtCXVk9IBHqY
         Pacg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=2Z0Q8lbq;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=crd4Ap0cCKqaDec2rysEdw7DloilhWElbGyOiTzma5M=;
        b=qelUTrNZrWkGS2jFot0qSmWY8g0t+Xxz7+WeDFDjjRjqOoZIRckbQU8uinCldAIDYO
         Zj46frDwPM5/SCUCptnh+sKGZ2sKwgs7M2MfYM//AFPFq90nFLZbt2kKkYjILwQ/yJVK
         T9syXVE/KfnTk00b+6I9n+hckoRHdVqIiizWB+2AOa4eR12Kb669x0zUAT+Bp0L/dcGX
         QeGTYvwMnYIeGziXBBuC9gVKDYGa0UhrUshUbZpmlG/kNLsj9uXJ5BcFF9jjJ7gKnzk4
         lL4f2WacHfmeZWrb3U8UhNR8LgJXLkcLohA3E7D7kXGl9O7RIAFbUQ8ZEXm7HCdW6dCe
         6zBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=crd4Ap0cCKqaDec2rysEdw7DloilhWElbGyOiTzma5M=;
        b=aoqoUdjmtwgFCM83OyIo5z2owv49FV8VgE/QQRiCsRQQyyqSDEUkjxtI7CdTdEFaGm
         xKcSeCG3QlsPVd1N/CrjQa0bdpe5Xr2Frgo6H1iFhoZhzxdeq33CDJ+DMfLDoXCXfzws
         h7AVAjJJBWESK0EtquKUtm50kF7MIqTIqpB3/7Afm1a2LvF99RO824joZiIsxRDtGQcn
         8hc+TeeHFz0G7rwCHIaWSECF5J5dD+Cw5sLzrek9ZkLouw5QuVxEVGmiYuMWImsUqW9M
         FjrSGtLLuTnpZ9K3Bg0jUAo7VX6nl7c0MjaFoqREsSdACNpF7HUWKysCvzN29iK9cVi2
         vBPQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532pLIuxgnTg3+09rV7+MyrIPVmpkoqGhaOwc5VitofiCuZit040
	ZorACeyysu3UVYa3rX/lZbY=
X-Google-Smtp-Source: ABdhPJz+mKYCt5Z4DzlQCJgMEjSU2WU0vv+IB1rGdCqHlmlXgmOqTKcmxVhmt3YktBCOutw0a7hzjw==
X-Received: by 2002:ac2:5e7a:: with SMTP id a26mr2015560lfr.425.1607629337905;
        Thu, 10 Dec 2020 11:42:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3608:: with SMTP id f8ls1980283lfs.2.gmail; Thu, 10
 Dec 2020 11:42:16 -0800 (PST)
X-Received: by 2002:a19:ecb:: with SMTP id 194mr2478178lfo.70.1607629336881;
        Thu, 10 Dec 2020 11:42:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629336; cv=none;
        d=google.com; s=arc-20160816;
        b=FF7uvvUBuJtRofXaWVRuj75geoey4O/macezPSfVKniJn43UHSUTfsvoI3V5ppBpOq
         oXKAVx8ijxaSaEMMt/KFdXHemnvyaXPnIT7yCasH/9r9crlLOtEFWG5tsOsXbYJTguj6
         B4TyJCP/YPaqgK6U8V9gI6o924D6JqxwheKuInlZyLavDVieCK/smbRk8ts6r67v6nXY
         NEWIArlEABMY2qFLt5lDIx8VtvvFyZvLeRHLCFQDTQEghuYsubRLF2BW4bgehgqcB3IE
         9PhToxi1C9isGgjyRRjVDFk4QkUZOblh7fXjY5XSmINLlj8mH3bVccL63VQ6lgB5/Xcn
         cijw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=wCqGjbHBcSlcHWGOV/dAhxvR97JcFGNX9psmcROoCq0=;
        b=B9cn2qiUZ98liw3lm+kGaaxDx1rHVy8dwQqfnEp3Fy1uAcViV36yDZQHQqYoVsJ8yp
         eWsuaMHOkecJbQDoZ6sKWhMN0lUbQOofGHrMhmalKxVfozP14s9K+WYUng3KRd6i9fCP
         UF9AmEr3cgoiEyQialQDZXCjIse4vOzirsC0AWCvMJGUZpNur0TZ2hgWNiA8sbfU31En
         bnBulKDRlZiTndVOWpAPu4Y073tbGqMAolJjB/Scq+Mng9fqRi0ZFwLqyFuqyIqWsVjp
         TttsTyQIErzMdsMn9DDlzduqsJBRLC2CC96xDTYYEqPw08rFG9HOccTZvnTssdMaQWkU
         vmHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=2Z0Q8lbq;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id u25si116780lfd.11.2020.12.10.11.42.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:16 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194042.548936472@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:37 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
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
 Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
Subject: [patch 01/30] genirq: Move irq_has_action() into core code
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=2Z0Q8lbq;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted
 sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE
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

This function uses irq_to_desc() and is going to be used by modules to
replace the open coded irq_to_desc() (ab)usage. The final goal is to remove
the export of irq_to_desc() so driver cannot fiddle with it anymore.

Move it into the core code and fixup the usage sites to include the proper
header.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 arch/alpha/kernel/sys_jensen.c |    2 +-
 arch/x86/kernel/topology.c     |    1 +
 include/linux/interrupt.h      |    1 +
 include/linux/irqdesc.h        |    7 +------
 kernel/irq/manage.c            |   17 +++++++++++++++++
 5 files changed, 21 insertions(+), 7 deletions(-)

--- a/arch/alpha/kernel/sys_jensen.c
+++ b/arch/alpha/kernel/sys_jensen.c
@@ -7,7 +7,7 @@
  *
  * Code supporting the Jensen.
  */
-
+#include <linux/interrupt.h>
 #include <linux/kernel.h>
 #include <linux/types.h>
 #include <linux/mm.h>
--- a/arch/x86/kernel/topology.c
+++ b/arch/x86/kernel/topology.c
@@ -25,6 +25,7 @@
  *
  * Send feedback to <colpatch@us.ibm.com>
  */
+#include <linux/interrupt.h>
 #include <linux/nodemask.h>
 #include <linux/export.h>
 #include <linux/mmzone.h>
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -232,6 +232,7 @@ extern void devm_free_irq(struct device
 # define local_irq_enable_in_hardirq()	local_irq_enable()
 #endif
 
+bool irq_has_action(unsigned int irq);
 extern void disable_irq_nosync(unsigned int irq);
 extern bool disable_hardirq(unsigned int irq);
 extern void disable_irq(unsigned int irq);
--- a/include/linux/irqdesc.h
+++ b/include/linux/irqdesc.h
@@ -179,12 +179,7 @@ int handle_domain_nmi(struct irq_domain
 /* Test to see if a driver has successfully requested an irq */
 static inline int irq_desc_has_action(struct irq_desc *desc)
 {
-	return desc->action != NULL;
-}
-
-static inline int irq_has_action(unsigned int irq)
-{
-	return irq_desc_has_action(irq_to_desc(irq));
+	return desc && desc->action != NULL;
 }
 
 /**
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -2752,3 +2752,20 @@ int irq_set_irqchip_state(unsigned int i
 	return err;
 }
 EXPORT_SYMBOL_GPL(irq_set_irqchip_state);
+
+/**
+ * irq_has_action - Check whether an interrupt is requested
+ * @irq:	The linux irq number
+ *
+ * Returns: A snapshot of the current state
+ */
+bool irq_has_action(unsigned int irq)
+{
+	bool res;
+
+	rcu_read_lock();
+	res = irq_desc_has_action(irq_to_desc(irq));
+	rcu_read_unlock();
+	return res;
+}
+EXPORT_SYMBOL_GPL(irq_has_action);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194042.548936472%40linutronix.de.

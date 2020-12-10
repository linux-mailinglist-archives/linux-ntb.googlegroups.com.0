Return-Path: <linux-ntb+bncBDAMN6NI5EERBJHUZH7AKGQEZEOA5RI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 468922D66DA
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:29 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id a10sf2336345lfg.13
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629348; cv=pass;
        d=google.com; s=arc-20160816;
        b=1Jce7ncQ/fIobRHpI5gH755LCC/lKkZnsay7s4uZKjP01ENxWZ/cAqNzxc59wODah+
         UCe1eeWqXJ+TVq/i/8m9uXcSDIBBh6ER7LSwtXfuXZsQyZDfrLC1nWQXxsVpvruDezxl
         I/5x1gETWeDO9PFcdZGaUSTB290weQrmqkoSyviQjfbEKnRzQDRYxbOG7i81hEP/LkHM
         AqUtEe6V7lM9MPff0Fn1tNrc8CDWFC8sZkM7f6NpKy7N+gQb2KxYLS3tUYWQN/cPxO1I
         QDp+XXBoPlw1b7M1GR/Fb0PWUZzYTjp0KTzLY7F60WcpsAjx3sHIrI9Uqfh0vscIGYLH
         22zQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=1bt8xAvSfFrElLeT5S+FK/71ZVf+y0QjRmkXaY4pouE=;
        b=y2pr06Ky1hJhiASqqDG9lhGUAtaOZP5qwt4O7dQuhgz5mx9LXeRZLXa2a5pQYqa30p
         7SuJMWjeauAjz+DWcYCQqLZaDH+vlOSjDAj7JRs6YL2Qu3cGXBHUjbdRW/5809IxsxVB
         iBPeJcQDorIMvz+u6tBFLKFJmPtH4E9zAmkvO0B/0oxYrpcXNKkMMOT8EkjipFBu9iFT
         bERMXWm3FRAH/VzA5CMQ9uz5KaNU4q4TgN5P8DXWHWUxRPPNRdK9KqEpG4Yl2OcOOJ05
         xrKJdNmV+BZZzSULX6WftNO92+h3+fOfeynxgp64Anb3dBaPCMacQ533hliUHD9tjXKz
         10Qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=MSBX3shB;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1bt8xAvSfFrElLeT5S+FK/71ZVf+y0QjRmkXaY4pouE=;
        b=USizUb1h6W5k9qikEd0+iZb+s8Oa+g7x4jn+J2+SmuQDW/kdO4KUN61d0Kke1skZXm
         hXUTQsBARPW3LsJnszVRk+hLcP342av6JC9oZ/M6CFmHNx24b73r8XrsPUIEQuRxRMr4
         zBKsHW9sSXp3cfXwb5pocmBXHhW5nVhu46PPybL+2+sQ6MUR4vdNiseMdOSaq897dgUj
         l6tWrMCL4ivh8czdf7O03kjtkL9LS8ItGk2LBqQOzvNzuSTnac7Po0wjS4uTQnu8x7Fv
         A65KYSLVj0xkHWC5vtLvvH3VQAF6IXZHDn2Vk6X1w3TPJKNTDmBBlKT+Jtcu3YZM1mb8
         +emg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1bt8xAvSfFrElLeT5S+FK/71ZVf+y0QjRmkXaY4pouE=;
        b=nhVpKYU8f17v9mdxoMDXtrtyy8NVCTDsV2SpqVvv9BwRyUvBVekFbd25UnFjp2f+lV
         PlJ5yqF/TaDSMw9U6UN6J4gD9FRJV5Tf+u1DS+zb+FT9xsP2tRLSOqqAoC/nKIy6vPjf
         7oOigAtHOKMLXHR+Lpw/MaArCzTaPswZ8F8I7KrVn9s8qUYunGF0/kWdmeiUbGeKvL14
         8pH4uwJ1qm9MVMjkBJ0G9tgz05xV7sOuBEvNDIkB1IVAn8h01YhE69nYHodizk5V7x5B
         gHZWW8wZfQZziz+HWiAFwtu9nGBmiZQMDi5AE09mAOMJBfbaf/3ZAqxnjFM6YXp83tZP
         98/g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531nlAJcdZcziWZG4L1ghJ7CLw0JEYZvhQ7HEBjkennSVIiF94qk
	uXrdBsS222/oKQ+CO5tRXeY=
X-Google-Smtp-Source: ABdhPJw2pEFuaY6J7dtoHooKi9G9JeiiniEvTREbQS62wl1qFWovOqer6LgB0TCaXymAfhRH+otmpg==
X-Received: by 2002:ac2:528e:: with SMTP id q14mr3546059lfm.34.1607629348826;
        Thu, 10 Dec 2020 11:42:28 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c886:: with SMTP id y128ls197573lff.0.gmail; Thu, 10 Dec
 2020 11:42:27 -0800 (PST)
X-Received: by 2002:a19:7e01:: with SMTP id z1mr3349244lfc.450.1607629347789;
        Thu, 10 Dec 2020 11:42:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629347; cv=none;
        d=google.com; s=arc-20160816;
        b=Cp1A42k/zuCT9BKtJ+Ny4p14NMQCk5ARA11qamJIEA1pQmqrjkVUDJPwDJiDazAJSo
         aTQs4jl+eVZfikarG1BoI3J70Kh8tWPeGBebBQScH4T0j9cAP3w1KyGhZZd8TfmlaQ+P
         FXhidIFl6YonE05RCMFDSe5F0YA0WiTCfjE84TNNb+BF8ox38uNpXZHhy3Hmow60euex
         6pAMVCby60gZNA2FDhAbJWpeygApAwv16nDRyxiIeItHxtsmuIxsIVxyZlOSoHZgJ5rT
         XzF+2Wio8UXouvQm4pKZSz+NCLBQzB4wVaVA4Btg+42XgkCFhMQIp2M7ioJ4W1VZzhgq
         HBKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=d6ZnDp1ZYVpzy4fVKUFFFULYmpUUlcl5sebpJ1aGphc=;
        b=Xa5q8gT9desfkHZF+E9NnuZXEiLQI2Keay7ebRYJcK45n1WNeIYfJScExllI4p6zAu
         9EX0sIMHV/ZXINLra8i8Jg9NWyKPS4wRPxHciopeyDQjg9MXPCHi1OZxX/VfzeIGvNIz
         FLAnUKdg+8vCJnwpgp+mCu1GfAGJnNNgfV5vhqnrf3jAwadCpZmJiMPCoY2CRHVnHsAO
         iQg2H/RZ+uOnB/5SSbw6AcBgJTvGtnK3xOSsVo5ZevTfXfYKEOBIlASYOfdQmU2W0PTM
         V8Oa1XFbDad0qk7Q1pyV5cg1tgHjsYvCvcimuNCJwT9pvQ49EX59Hfhj41JNWED6QcX8
         YqCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=MSBX3shB;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id d3si205509ljj.4.2020.12.10.11.42.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:26 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194043.454288890@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:45 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
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
Subject: [patch 09/30] ARM: smp: Use irq_desc_kstat_cpu() in show_ipi_list()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=MSBX3shB;       dkim=neutral
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

The irq descriptor is already there, no need to look it up again.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm/kernel/smp.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -550,7 +550,7 @@ void show_ipi_list(struct seq_file *p, i
 		seq_printf(p, "%*s%u: ", prec - 1, "IPI", i);
 
 		for_each_online_cpu(cpu)
-			seq_printf(p, "%10u ", kstat_irqs_cpu(irq, cpu));
+			seq_printf(p, "%10u ", irq_desc_kstat_cpu(ipi_desc[i], cpu));
 
 		seq_printf(p, " %s\n", ipi_types[i]);
 	}

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194043.454288890%40linutronix.de.

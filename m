Return-Path: <linux-ntb+bncBDAMN6NI5EERBPHUZH7AKGQECQZBAPQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F14B2D66FF
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:52 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id d2sf2336219wrr.5
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629372; cv=pass;
        d=google.com; s=arc-20160816;
        b=b+04aAUPExCX6g2KWnAuN4QaWOqt2Fe4+2ksKZEt1930YyZX2dadxOBjrsvrd1Nc1L
         KtAKE1ukRxGqdaZ0G9cdrvaUb1IDF/lvwINy2nl0zqtEawUWJHkv3o2VOrNBx2BOhODq
         K2r/curEIZOozuYQcCX9BlDJYZbp4u+cOl20uSur3QLuo77YLHprTpZ8/R5D7G21/WP8
         ABqwlNGGA9RpcP2dKs6IGV+5DliBhLB+vJcMxk9UNU2uxAzRGcdEijBoYY5NwI8EPUYV
         wAG/AEPc4w3PU411i7XxsHkowDoU+cffd/g9sdaFc6IHWfRkxjioSxpx6qnoIS3gUnh/
         gr+w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=9XFeJenUu6ADGXpF2qHdkI3CZ1ZCLrBJRTBf6IUv/xA=;
        b=I94GLKPbQUWeE4C9DO4uw/KwiEkihQnGnUgm/LbDrsFiFdA0bkjHOTAEFw7bAZYKAX
         Pj2ojtFXklo13+yhjERiHPXOaL6ELAXEQXqe4jDvhMup7zF7uRVuB6dPpFnKW04abUyd
         QTC7aDHbEsvfQUhtbIyvrT0S1riWzY0g6uJdYkxOct8n6wQwpVXiLpnnf8bVhCsj2JhQ
         XmcOchAQw64WLTLpFCcATc1/jd6jzYpx7ygQ+rnov3NPL+FPGRW3eri/TfPXZC4gh+Wo
         13m//dp35LXMWY+uF1eg4TJE+zGkDEz0NfqTyJNLTIbcEigRM/inT4tebyh+JfiH09PA
         l+ZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=1ftX1Nuj;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9XFeJenUu6ADGXpF2qHdkI3CZ1ZCLrBJRTBf6IUv/xA=;
        b=PoCpavhzSCZ7VIdK5Um2tki6Qs+Qvd+lGOypLHAaPHTtAOgLE6roNcYUsM8gH1sLXv
         BpP20VfYriYBvT055hF0knVOGPrNveaQ+3+LgwwWcbPHsDBKz8tAE3b76+KB5BYen6Jo
         TOyLomlqHdIHQem9SXoWNl4qTc5tsDGyjnxI3EK7BRzKvBlNvtSa4f3OauNTnV5cFfoN
         ODK75/71TTkfkdMuajGWW5/x5soPpbdZ/YJDj6brWkJFcKBOHqauVcay8tfc+9b3uRS/
         uRYVcRsr3KPepjOuxplCQdrn75cLzvL6JQKCz4DDEDobqsBE12iI5QF+EKCMRUOBeWag
         k+6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9XFeJenUu6ADGXpF2qHdkI3CZ1ZCLrBJRTBf6IUv/xA=;
        b=OOMMTrDgBihlZYkXeSyNmpUNUqVOGecdAaLshZALCuDPIwHSY0m1qLgwAxGQw2X4yz
         Fo/+3pV7qvQgP2UUMQW+klTLOIz3vQNChw/f9xM5uyyBGPjZl9+dPAMlRBRe2216N7Rl
         2Em2QZmN6enwCRlk6UnjlhP2+2gRgCZNiU+a2hnZQi2SjXyG03rdFFGIWerddMi8fezf
         LFlnSefKp79GEVwA4EFojAK5coAilM+gtyhtyoJDTe1GWwuptUDfSVSky2Sxcn0x8eR0
         d60dnLbWzNZ3SYmrl0MymyEjQU6b88WHpskEDERGjl3NjcAfVImDHAf/uaQ7K47nzV3y
         G+Rw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532Pa1+/0xu/OY36vfdj40QodT8fkgIfH/r355s3iDiKqGEHcA1A
	9WFfl9CCWebm4LSq/jjGDNg=
X-Google-Smtp-Source: ABdhPJy6ZmViM+mQ1x9Jn11QVrmZS/1IkJajmxfOZ2SCXBPEk5B3x1QifZkJ/XYpUgTXVRx4C3gaog==
X-Received: by 2002:a1c:4684:: with SMTP id t126mr9910356wma.165.1607629372402;
        Thu, 10 Dec 2020 11:42:52 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:1fc7:: with SMTP id f190ls3543890wmf.1.gmail; Thu, 10
 Dec 2020 11:42:51 -0800 (PST)
X-Received: by 2002:a1c:b657:: with SMTP id g84mr9916442wmf.181.1607629371660;
        Thu, 10 Dec 2020 11:42:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629371; cv=none;
        d=google.com; s=arc-20160816;
        b=hHVE+XhZwGYgcOuZE8S5IALtJyp8KNyHwGoWKvpEkU206BVrwRpJ8j7JNUbhRYvT8G
         hoLvEJo33YBAzH1+mcUqcEthYJrpoNBJA8f5z9HiQqCTFiI8NYJe5Yaj8UyqIOdOpH1j
         Vpu+cc970xeMivEzWNBYNHtAXiP2gvLLjOXe0aXiErMX1ovhKzUwXBCzJ3oqZTSWsKcz
         60ZGi9Aljji5Jgfu168rSUWTxlNFIyeXQAONunlcpV1x2hKHp/BF0H+YUWvRaa7Si40l
         jTK01NnVdnyvDmOwPp2u3a2nlu9wT9KNwspxzbLK2h397DLPBRZBUxcduDncDqMg9Wzc
         TYvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=DeAXpsHXHZePk9yJlBEnvP07GAeQwVu3hbsEAC1KvV4=;
        b=XznDiczMH/HosiYrXYWJBwKtseQ7I9sP5+gwYeQ0gpHSYwBygABlYQTbR25/xMsCkH
         kjSsQz5Z7iLarpKiqjHtozICejkMCFOqUHQil4oWV/WF1DRkTZAfevBLXUCjXRzHosd5
         nUBbvmA0sxr4m+gkBwxtMUBD6DC0bLOTgg/OcbTv8Ra8XkVpeNwEjp4XFr6KW/1LZ2o8
         H7ayZoMA00SRe0laEeEGBZ2EKpG2CFmNSd83b2/nLRNhVkzREulUK0mJMTwxsFnkc7WU
         3ag0WevgN5wDVPz5UyPPqgxT+o1Slqt0ujWKh/yO/ebTA0Fw+OPujkKGRIvl5XuelrQk
         WlFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=1ftX1Nuj;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id x12si276172wmk.1.2020.12.10.11.42.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:51 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194045.457218278@linutronix.de>
Date: Thu, 10 Dec 2020 20:26:05 +0100
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
Subject: [patch 29/30] xen/events: Implement irq distribution
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=1ftX1Nuj;       dkim=neutral
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

Keep track of the assignments of event channels to CPUs and select the
online CPU with the least assigned channels in the affinity mask which is
handed to irq_chip::irq_set_affinity() from the core code.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Boris Ostrovsky <boris.ostrovsky@oracle.com>
Cc: Juergen Gross <jgross@suse.com>
Cc: Stefano Stabellini <sstabellini@kernel.org>
Cc: xen-devel@lists.xenproject.org
---
 drivers/xen/events/events_base.c |   72 ++++++++++++++++++++++++++++++++++-----
 1 file changed, 64 insertions(+), 8 deletions(-)

--- a/drivers/xen/events/events_base.c
+++ b/drivers/xen/events/events_base.c
@@ -96,6 +96,7 @@ struct irq_info {
 	struct list_head eoi_list;
 	short refcnt;
 	u8 spurious_cnt;
+	u8 is_accounted;
 	enum xen_irq_type type; /* type */
 	unsigned irq;
 	evtchn_port_t evtchn;   /* event channel */
@@ -161,6 +162,9 @@ static DEFINE_PER_CPU(int [NR_VIRQS], vi
 /* IRQ <-> IPI mapping */
 static DEFINE_PER_CPU(int [XEN_NR_IPIS], ipi_to_irq) = {[0 ... XEN_NR_IPIS-1] = -1};
 
+/* Event channel distribution data */
+static atomic_t channels_on_cpu[NR_CPUS];
+
 static int **evtchn_to_irq;
 #ifdef CONFIG_X86
 static unsigned long *pirq_eoi_map;
@@ -257,6 +261,32 @@ static void set_info_for_irq(unsigned in
 		irq_set_chip_data(irq, info);
 }
 
+/* Per CPU channel accounting */
+static void channels_on_cpu_dec(struct irq_info *info)
+{
+	if (!info->is_accounted)
+		return;
+
+	info->is_accounted = 0;
+
+	if (WARN_ON_ONCE(info->cpu >= nr_cpu_ids))
+		return;
+
+	WARN_ON_ONCE(!atomic_add_unless(&channels_on_cpu[info->cpu], -1 , 0));
+}
+
+static void channels_on_cpu_inc(struct irq_info *info)
+{
+	if (WARN_ON_ONCE(info->cpu >= nr_cpu_ids))
+		return;
+
+	if (WARN_ON_ONCE(!atomic_add_unless(&channels_on_cpu[info->cpu], 1,
+					    INT_MAX)))
+		return;
+
+	info->is_accounted = 1;
+}
+
 /* Constructors for packed IRQ information. */
 static int xen_irq_info_common_setup(struct irq_info *info,
 				     unsigned irq,
@@ -339,6 +369,7 @@ static void xen_irq_info_cleanup(struct
 {
 	set_evtchn_to_irq(info->evtchn, -1);
 	info->evtchn = 0;
+	channels_on_cpu_dec(info);
 }
 
 /*
@@ -449,7 +480,9 @@ static void bind_evtchn_to_cpu(evtchn_po
 
 	xen_evtchn_port_bind_to_cpu(evtchn, cpu, info->cpu);
 
+	channels_on_cpu_dec(info);
 	info->cpu = cpu;
+	channels_on_cpu_inc(info);
 }
 
 /**
@@ -622,11 +655,6 @@ static void xen_irq_init(unsigned irq)
 {
 	struct irq_info *info;
 
-#ifdef CONFIG_SMP
-	/* By default all event channels notify CPU#0. */
-	cpumask_copy(irq_get_affinity_mask(irq), cpumask_of(0));
-#endif
-
 	info = kzalloc(sizeof(*info), GFP_KERNEL);
 	if (info == NULL)
 		panic("Unable to allocate metadata for IRQ%d\n", irq);
@@ -1691,10 +1719,34 @@ static int xen_rebind_evtchn_to_cpu(evtc
 	return 0;
 }
 
+/*
+ * Find the CPU within @dest mask which has the least number of channels
+ * assigned. This is not precise as the per cpu counts can be modified
+ * concurrently.
+ */
+static unsigned int select_target_cpu(const struct cpumask *dest)
+{
+	unsigned int cpu, best_cpu = UINT_MAX, minch = UINT_MAX;
+
+	for_each_cpu_and(cpu, dest, cpu_online_mask) {
+		unsigned int curch = atomic_read(&channels_on_cpu[cpu]);
+
+		if (curch < minch) {
+			minch = curch;
+			best_cpu = cpu;
+		}
+	}
+
+	/* If this happens accounting is screwed up */
+	if (WARN_ON_ONCE(best_cpu == UINT_MAX))
+		best_cpu = cpumask_first(dest);
+	return best_cpu;
+}
+
 static int set_affinity_irq(struct irq_data *data, const struct cpumask *dest,
 			    bool force)
 {
-	unsigned tcpu = cpumask_first_and(dest, cpu_online_mask);
+	unsigned int tcpu = select_target_cpu(dest);
 	int ret;
 
 	ret = xen_rebind_evtchn_to_cpu(evtchn_from_irq(data->irq), tcpu);
@@ -1922,8 +1974,12 @@ void xen_irq_resume(void)
 	xen_evtchn_resume();
 
 	/* No IRQ <-> event-channel mappings. */
-	list_for_each_entry(info, &xen_irq_list_head, list)
-		info->evtchn = 0; /* zap event-channel binding */
+	list_for_each_entry(info, &xen_irq_list_head, list) {
+		/* Zap event-channel binding */
+		info->evtchn = 0;
+		/* Adjust accounting */
+		channels_on_cpu_dec(info);
+	}
 
 	clear_evtchn_to_irq_all();
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194045.457218278%40linutronix.de.

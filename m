Return-Path: <linux-ntb+bncBDAMN6NI5EERBH7UZH7AKGQEFNLCZBA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6BB2D66CA
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:24 +0100 (CET)
Received: by mail-ej1-x63a.google.com with SMTP id ny19sf1979202ejb.10
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629343; cv=pass;
        d=google.com; s=arc-20160816;
        b=S1LNhQuHWdfQIK0wf7px0kCG1/WGMOs+XI8sqRcIpHD2lGvxI7stbs5MTu/Xml1rC4
         ByDIacccE8vkVh1k9J5MTba91naFHSjuDuS6h4eX+Ypuh0IIbuAH2aD4kiasrZjZ+c1o
         NSeBU/a+ispkRE8KHLj7SLTS9/KjhyXLLZkTT/LVrlZMR85c+T+g+opQ8j0DXbgwi4hd
         bIhsr83V6wY/OgyQ0Q7EzdJd8oiLEFkeOgTLcUlYynbJPg1hAhea4lFlgHaFqjN/arb8
         hvafOEp3iTzUwYFyawYwArvsB5ZtQiSINVepqBSohLLu9f1HBx7tpbkotJDsu9Pzzvct
         94Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=rB8yjX8HPx06mJo1kniILjpnD8suTaJsy1OBLOO+BZQ=;
        b=CJRG3id+CLO9qLvZtsP6r9NwGGrdn4P0f78aM78Bswv7xRSy9h/JK66KJX9tLHc4jS
         ma/dmZcNnICvycPKHEvm7jhc4He7BBl20b4fcZcZC7bf4HCWeamXRPKZhlvvL4SQ66o3
         uTajBAHBpzHO3vgE79iKGBYiGwlYfyVnuKIV2IHckDcbgbbV+J+oA1JZphTF/nDVF/3s
         aXmNQBIXeMF/vNpgcKQcTQeQAhPZgkBzIFJHZIUYUwqyIy3VSuWbWQydwJYROp8OIF7E
         KDo+XqeECK35iYiOkilbMtA09qNft/h2rnIxKzPKjAyGRC/vscR2W/f538qohtGYnJP3
         AQ7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Mmus8yMH;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=rqJf3IS+;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rB8yjX8HPx06mJo1kniILjpnD8suTaJsy1OBLOO+BZQ=;
        b=cKg0q1F17gJyiLotFDFEx8O7/1mNXzdTmS9z7atjNQW+GvOuFg0HvcSgmIGO0NfI55
         4SWN35POi9NmUiT9deGi/F3HG2fcuG3QVg7FOAr/1tcXTLr8dcdbalpvq5tbwk1S/Hry
         XrIUzgKEHEP33MTw/Uxz0AwuA6UeYcDsYPOmhzzEWe/xbwW7Pgsvm3+7M4M9Teir5GIS
         p1em6jfJNWzU2bBVC0JrtjXX8FhiE3MBPXIA33h5pG04clRWJOksSlfp4bu2dkz2aGIL
         DVEnlBfZOVpgeIusGO9862fXSGxKuXzfUK8maKgNPu8BUm+kTIzOuqDB0G0uxxMkUIex
         MiUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rB8yjX8HPx06mJo1kniILjpnD8suTaJsy1OBLOO+BZQ=;
        b=EmD6vPCMt49ZaVnjONlbsIi5+0dDGA31HdwsLHNvME+EgDz2IerbMw9NwcklGylBkP
         Z1vwZ8UXURn5VtCUR1Z76YRebULnSunGowGfC9k1cgRudQGmbSWL4Hi06v3Ol953eQUw
         NqIT39bjNTgrXSFTBETzkaXP81VCD/9d/7DPXt7iGtq6yNlQnIfR8rRSt7cYntJ0yh/7
         Q7V4t2dQr2JDHENX7Yk2STkY61yMubzo1uolFZnmzIQpHOUaVKTr0ekD98wE2lryLzVi
         CB45Q/pn9PblBlpC/oKEh40Sq1eiB9VF9fKW0fjH2sSWtdB+77mCUeZZA9PjLT+AKc1Y
         B+/Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531LbJw/0n5j1QIP1T9v2cAJF51X1i6EU4HKjdBvsrZHmQ46bKhd
	xXWG9Z5Hk8xdH5DU4cRSM4A=
X-Google-Smtp-Source: ABdhPJz5RPyguFGC7HUuBemNWJt2nxi9K99wkeijqVjYnkZavMRhwPIiifFiMgySn3HqWB8LPqzndA==
X-Received: by 2002:a17:906:7090:: with SMTP id b16mr8072823ejk.76.1607629343762;
        Thu, 10 Dec 2020 11:42:23 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:c1d9:: with SMTP id bw25ls576261ejb.4.gmail; Thu, 10
 Dec 2020 11:42:22 -0800 (PST)
X-Received: by 2002:a17:906:400a:: with SMTP id v10mr7883363ejj.302.1607629342919;
        Thu, 10 Dec 2020 11:42:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629342; cv=none;
        d=google.com; s=arc-20160816;
        b=Jq7xcnSkHI87asvGzpJO59+ADtiOi9QAiQTikSZDT0qWyTzibpyQgCGidMfi5c/0Fp
         4U7XFXmxhYh0XP5gFfC9neIldYpJ4OLUkSvQhFFukfsZSbAHHHPINbl/12AVCls51xOA
         mgmO28VtHJHN2bLUD2+hO5lPovWajMwNHfQfxFS8y69XG7+P6EtJ5eB5OP/hZ6pX6WRN
         mNLHKR7KOo5qNUywXFt7ES35CJwP/DyWaEz+qHXDENoJkLGTTeblGURxpTcBOWZrU5w4
         wUayVhTpyG2TCVIgli844ZbX5HAb0k8QeMKYGaNi/5IK3KYebCdBdlrV2JGEeFeTA5R6
         JiJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=H6DxzomRopFmkit4/4R6NYU2nMIU3VEhxNUq8xSIzZg=;
        b=J9LQlrD2MlvLaGFMCcUb6RhkoF6pbpHliZlCoH0VH+wN1a8fccEUrW8AoGhnmllDCC
         tKdKyNqeBfwj8y0Ed1g3+kWc5YwGz94B95ouUx3mm1SEKrMU3sPPTRTcdp/YLpsnp83p
         HYG2lYCQMOyx2ga0f/EAjApMdfbAuM5+vItwkmt4VHmnITivhY3V26fSu7ZZElb8T+HT
         5F40SJZdXrZMQ2dkbVmxYwCNN3302ledABVUHb1lC4OLV2On5ebGO9yPdJVun63ruPIT
         fn57anyUUYpzuGAzVFmFdBGHut5hndCAVGkysxezlnQTf0CfevD5eJ0sf8wIlJjpfy+n
         YscQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=Mmus8yMH;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=rqJf3IS+;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id v7si353508edj.5.2020.12.10.11.42.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:22 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194043.172893840@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:42 +0100
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
Subject: [patch 06/30] parisc/irq: Simplify irq count output for /proc/interrupts
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=Mmus8yMH;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=rqJf3IS+;
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

The SMP variant works perfectly fine on UP as well.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
Cc: Helge Deller <deller@gmx.de>
Cc: afzal mohammed <afzal.mohd.ma@gmail.com>
Cc: linux-parisc@vger.kernel.org
---
 arch/parisc/kernel/irq.c |    5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

--- a/arch/parisc/kernel/irq.c
+++ b/arch/parisc/kernel/irq.c
@@ -216,12 +216,9 @@ int show_interrupts(struct seq_file *p,
 		if (!action)
 			goto skip;
 		seq_printf(p, "%3d: ", i);
-#ifdef CONFIG_SMP
+
 		for_each_online_cpu(j)
 			seq_printf(p, "%10u ", kstat_irqs_cpu(i, j));
-#else
-		seq_printf(p, "%10u ", kstat_irqs(i));
-#endif
 
 		seq_printf(p, " %14s", irq_desc_get_chip(desc)->name);
 #ifndef PARISC_IRQ_CR16_COUNTS

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194043.172893840%40linutronix.de.

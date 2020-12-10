Return-Path: <linux-ntb+bncBDAMN6NI5EERBJPUZH7AKGQEUCWBCDA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F742D66DB
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:29 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id o4sf2297425wrw.19
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629349; cv=pass;
        d=google.com; s=arc-20160816;
        b=eQB6N4OXQG/oO1HnRT4TZsuT6jWaOwTigFIWXwLqxBZdD5OGYpa09JHP/pM9fwVYWZ
         bVY0p0cK0ogYvnCMDdCkOvo6Ar6K2vaGvQbZdUcrzx9jmkqtYwb42maBhD7Aqh3vEOBs
         +poFO3NHJtEeNhzobfYcqRcfp5LVK2tgo8bwSRF5BCTMtHnzMxAGwCn6ZB3ZmWK6gWVb
         mKd1otTq9Bgxr/2eNDycDGnhaaLnIt5QouT6QGSmqGvrnSeel+9uSIpV8bXimSonboq4
         hbJK37YZ0ifPBTKK0SG+qW+XcbQqHn9jqsg+PIJDSo7L0zN3fa0Jj/6zgzeZl4cf9TS4
         59+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=bfPsNVdIU/Y3kDAZnEWVsWk3nQ3ZPhLNWsEbRicuswI=;
        b=ODjTLFZEQI+D8J3nvEUaBn6gj/21E5I0FvbKyKZ9KOCpsLYKRUwjMkasuJgaVzMAdb
         hQ5+X6vkYrmSqGkdNqRCYtbVtw/SoyTzbHsYlSLFnUc8xz0YqR3NEkLcn46jBrDPuYCK
         fj0pcrL7p2t82fnWURiTiGIRR3HbCrNn2kNWgHXaLXvZBJo4r7sR59yKDE2DhEaiOH96
         zR6p+OGqOIG27WMygRqjLegJrNgbWt8adZGKjbuAL/VBAghYmttJeUYsocCxsM0wYHK8
         HnwB1yBlmzpTVcNshZNE7d26FTdmdmtLAm0b3uFvroMstTWho3t8N9N4/6GThuM+QiVg
         rHQw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=XVTknQmD;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfPsNVdIU/Y3kDAZnEWVsWk3nQ3ZPhLNWsEbRicuswI=;
        b=bSfDh7/lIbjFT1AhDPo2xo48HEAvDrevaToLqpE2gkoS3bBFjcvnTdP+WFMjPDPAGJ
         VpEDUMROSGVFwuGt/F0gXH9I0vfzv9/7HPBHb2YLoHBOeSb391DLyveoCXHed7p4deu6
         rkMfHV6UmmCJih6mJioaOXBuTelagSdmvBB2LMsOVe+EqJ+7umxEdN6O8egpGdWjidqn
         ffw7sFTAAR2ihP3aDdCHPUtUHQPNY/hIkR1fVjsNIpFSV4Jbsu3qMyW5C05SdbKtYXnp
         XABT5PT2eP+J5C4UMfj8S+ufF8KVaBPGMsfDw65w4JCylP/BYP/sXPvUHiriRIAyo/s0
         +bQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bfPsNVdIU/Y3kDAZnEWVsWk3nQ3ZPhLNWsEbRicuswI=;
        b=DGk3Q8+F2+2aTgF1R2Q4KnkJuIQbrNArfQX58FynjJwUgWhBNz9JK9yAkvxzkmsAXF
         GRo7NcsmgQibWvdoud19egoPqiIiCiXSsX9/Sy6l64CK++5sDkSyNtkEepHUy+RjpTSf
         fzBHNGOSt0b+Mqr/YWeDatggqZw5kkjpByH+HJYXa3O4SobtNHXcnIfPGFr/Oy8PduL5
         62C5m75/WsgsAY8d7udqviHFaNy6hUZQidauI5NyfT7DhRfHzvoX3uGUGLdh4lVewDjL
         fniRcGSOm0f/nPy/gDt2npFMgWMdTl20pxlE+QpSoCDyx2MfU+xLqt93C81FRocFarQL
         /ysg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532ZgOQv5eC/wJCaH1EFSU5idG1VttNXygXvRF8p4st6DyWJBjtX
	d7uo+QE0Ypy5wb5fUU6sZWw=
X-Google-Smtp-Source: ABdhPJzpXCRZPmT+UVrPP9IdPf+B9vB+AfYiteXh/P+oYexbg3/AY+5GugKUYGLi2oFxjzanQh331g==
X-Received: by 2002:a1c:b742:: with SMTP id h63mr9814954wmf.122.1607629349579;
        Thu, 10 Dec 2020 11:42:29 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:1fc7:: with SMTP id f190ls3543553wmf.1.gmail; Thu, 10
 Dec 2020 11:42:28 -0800 (PST)
X-Received: by 2002:a7b:c385:: with SMTP id s5mr9808970wmj.170.1607629348885;
        Thu, 10 Dec 2020 11:42:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629348; cv=none;
        d=google.com; s=arc-20160816;
        b=qsjLndWsYxLG5+zOYRzogWjHFSilzJnRZOxOsyviPPtsnhmSBfI1hbE9BCbg9CIYbx
         T22DlIinZsQQ5eOq7mOpMMvjT25fqsg9Sdbdq0JPlJMDdiwOaV0j8eTwCyS5rblDG90u
         HhaBezjVer57zRZFpYqC2BYU9Cdkp8Z+rxcStMIe+RARr6xrgSUT8IBeJX6NVyLC1Ne6
         CHpF97Emn5p2+ofEJR9FUak1qUpLK3GQVTLHovWtE+oDWfRm6MRN/YmBjQAsjwl0OefF
         QBLEeYrjjZM1xn1cLnU/btSTJOtt+oLb0ntzgxv60Gvk1mlNWVlzuW/cziPhur8UpPIx
         71Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=b1npAX3rdKpi0zxYsfY5Z+OgET1V6fz47IjXP2N2S30=;
        b=XZN52Dlla5wDqBTQo76Vy3IFGureHBoLxXoyFP0JhSbcuGhk94hlo/zcWXhTwcTl+0
         mr7lnPfAdP22w3LKawmrqJyzxeDHIH8HLZhoeX+5ZIbdXeHucKDMsy7JjeyJudQQSPXZ
         DmCDNdFd66b7xOOvnyVIOzayp9mJRGtqZ1MbSdVZuJADKPL5RnhPg9sB4Wcg5tQNuP70
         rdkCA1q6vX7E3HKoowRP1UGcdu2ZzC/rBC8inUmafB9XjTk24C6MmFr6JJGb8i0ld5Tf
         XijuvVBqMgZTF0wpdQuwIr9d78vtgVeHgobiyYGXlvTtsepkVH56+zvGlE01yHrGJOL7
         /njA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=XVTknQmD;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id v15si228329wrg.5.2020.12.10.11.42.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:28 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194043.659522455@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:47 +0100
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
Subject: [patch 11/30] parisc/irq: Use irq_desc_kstat_cpu() in show_interrupts()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=XVTknQmD;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
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
Cc: "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>
Cc: Helge Deller <deller@gmx.de>
Cc: afzal mohammed <afzal.mohd.ma@gmail.com>
Cc: linux-parisc@vger.kernel.org
---
 arch/parisc/kernel/irq.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/arch/parisc/kernel/irq.c
+++ b/arch/parisc/kernel/irq.c
@@ -218,7 +218,7 @@ int show_interrupts(struct seq_file *p,
 		seq_printf(p, "%3d: ", i);
 
 		for_each_online_cpu(j)
-			seq_printf(p, "%10u ", kstat_irqs_cpu(i, j));
+			seq_printf(p, "%10u ", irq_desc_kstat_cpu(desc, j));
 
 		seq_printf(p, " %14s", irq_desc_get_chip(desc)->name);
 #ifndef PARISC_IRQ_CR16_COUNTS

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194043.659522455%40linutronix.de.

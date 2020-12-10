Return-Path: <linux-ntb+bncBDAMN6NI5EERBHXUZH7AKGQEHOHHL7A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23a.google.com (mail-lj1-x23a.google.com [IPv6:2a00:1450:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 256D92D66C9
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:23 +0100 (CET)
Received: by mail-lj1-x23a.google.com with SMTP id n10sf3771268ljj.0
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629342; cv=pass;
        d=google.com; s=arc-20160816;
        b=SX+zUBR3vw2WxDYyyWbF05c2+/n/9oST6rtdC8/1h3r60jCaDwj37ffdH9GjlbTLXF
         6su8cXfPZddy34fV6vQcBxtiMzHB6jS4td0/025THOAmovPHoVVsEKFNt3n8ZZ8P3WJG
         hmK3y5GaWeRt3anQ9vCvs5Fd2fXJdRyfzVjYIJbmvvUSXK87Cno8qQvVUXBitTDtnlKe
         lnGwsyoHNluzRUoZ4a5vRRhv5BVzk0Jf2KSVP4dZIbAFzMvr2A6FUJEDoE2HlzcFwSFh
         ku5W8+e4H+IUoELQI9xJWsr9DMIGd7etTbJqTNolXLDoz/1C0A6M2RHhIppaEjmfbslY
         Y7sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=zjwMGDcUIsYXklwCiX68gHvPNWXoYm6XHWd7Jxi+Bgk=;
        b=lQo3Jt2EfPFHn2pVx1inU2zC4CXSnu3x9o0TE6t1z5cNE24+YtvhIXFRj5lEWxSLy9
         yXjzoH5pjGmG3uU/CNPRAdSzEywemqXjLka71Ky7fzhvBTTib1pTM5B7uLShlsft5dKA
         Ig4il1XbWMVRT3oBRrSbbPT+JezMamIkP0/8V0PQcZdvtxJPq/7gbIBcOgxga0EKn108
         OhTzkD90icG7nx50RZAwMWpy471qfPJeN6UbiA+wr5RcHqQ1BIazLb/1DB6s0XZRyr7t
         5+WVKbbfJvDsFo3tqDP6PU4ZYIVIF2d75KoBdJ8+pxAGIMabYfbWJRsidbgJLPt02GsR
         P/rw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=4P4kE5RT;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zjwMGDcUIsYXklwCiX68gHvPNWXoYm6XHWd7Jxi+Bgk=;
        b=EntFJyYlprvhNojZbK69SxQ6mw9Gygo3VRKR7Rbexksn54rRZ4sKGh/KRtwHBUAfip
         VfQEWqjYq0cMOTUBP93H0cA3jgv5cp6tSXdbUNerL1Z14G0g9v6P72hJUuRXxOMbZwSG
         ANZmt45ut5u4xma5AbFqXihR1CUjiNpDTUIIYxhaaYzffBo13wLcDiLtBsc1wZyQ1Eg1
         7SgMIzmPfVmnfhIzyMGIWD//wJsfxMsgTJwM3I1sXP1EeK2v0aBtfWAOxWikoWZu69NB
         eUYr5l5gQn8ggkPSRYnfRuU2cjNZCBAcW3eWnR8b/L1ZPRbmV6krolADJKdQa1LniomU
         7ClQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zjwMGDcUIsYXklwCiX68gHvPNWXoYm6XHWd7Jxi+Bgk=;
        b=BhGHpQw4gALm9ii5SLd9CLCgf1DV6bMZgP/tKBH4CfYdFjFKybj0EZ6bNBos2jQd5E
         jmjtUU3Q77vxc6o9w8yilTi8N/iUFTpTDobOzM7m6Q5K4EQQO+kiAFbf5fSIFhxylizl
         6xnEn9cYseBdCRBWhsrkW4rzM3k59ckJSfeh5qYfVKUDBFpNU8D4Mxi5jGIjYd0xx98s
         jz8kI1Z77EPBrdcqlM7ZulsBWGVAaqszgsnTsIGfrdXrn+GBGNblxtlZDHMx/ldMxinL
         x7lCw8mRP2iBhU/0VlbKlJX4OOHWLNRM1j8J897G0rv/yVNEiiechg9On/Ak6ybueKny
         BejQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533+mY6/lZnZgQgCNHtY71+Sa2v7KQ+4vpPDHa9vP23RsbVsKB5X
	fLUL7QpNclSfPznrpO9I15w=
X-Google-Smtp-Source: ABdhPJwe/5tTrvkoqhf+xzLCDgWpHcacu1N70+l7W1EwVNvnIXUXai0lsQqapZ39oALl0VRVDvDzSA==
X-Received: by 2002:a2e:82ce:: with SMTP id n14mr3505145ljh.356.1607629342754;
        Thu, 10 Dec 2020 11:42:22 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c1cd:: with SMTP id r196ls197104lff.1.gmail; Thu, 10 Dec
 2020 11:42:21 -0800 (PST)
X-Received: by 2002:a19:a57:: with SMTP id 84mr3383286lfk.327.1607629341851;
        Thu, 10 Dec 2020 11:42:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629341; cv=none;
        d=google.com; s=arc-20160816;
        b=joyRhGhnjFfHuvexPn4SGN2uFSeAyurNH1q411xSsGGawiGoV1N1o4qqB0m4eqzADe
         YgU2xPt8che0KEIKrWQHhnKELr2rShoX5vsObWd7Znt9iyD1c9ITM/+m4ICEYjrmR8xm
         DuWQomU/OLHZpJC/53kQKBkLc5DsUY7L74luYtGTQWAIdkzoEoIO7AGSTGfplsRJJNTN
         USfj1ssOXyL+etq7Q9JLMuH8/HjCFEO34P/54ThKVxL741o6LJJr65JPGzw7bDTlmTj0
         JxItrRxUiEuZG1oWTwi+BBRomCww8SY/3TwDXDWjkoGKlOSWO7AAC3SUqzyTB4iE4wXb
         Wuag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=an/0SlT10gC/rfGB9cofMBAbBc2y8gDRMVN0GHlSQuQ=;
        b=VLsJkFrT1bwOHHiYEZ9YwI8eP+qyF8MyAd1bUSdA0UP2kaDEmPsNMcYuFCIe0+mvnZ
         sFBL/neSgKBJgythtptIMMDDtkNX/g0cdesyrFuEur4bVRU5xzJVq7HAC5o/xozZVUoK
         HACF/2o8ftgDlt6csKksJhyD1ggqsUi11pTZeOSKkDJ1MblFqc/1UqPaBSX26tTIj0SO
         vHqc4FGKiO2zs2WSV2RxbQRn8A8TrlE4QvsjVZ3rbYynzszThFr7ewr6VdTLmo55jjow
         b3aPd74FNiiipgtCpjS4LbTOGdTyxrlD6jJYyk6S1Ah4qAuHEsg4S3twNmsSYY4R0r5J
         aXdg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=4P4kE5RT;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id q28si217508lfb.10.2020.12.10.11.42.21
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:21 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194043.067097663@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:41 +0100
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
Subject: [patch 05/30] genirq: Annotate irq stats data races
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=4P4kE5RT;       dkim=neutral
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

Both the per cpu stats and the accumulated count are accessed lockless and
can be concurrently modified. That's intentional and the stats are a rough
estimate anyway. Annotate them with data_race().

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 kernel/irq/irqdesc.c |    4 ++--
 kernel/irq/proc.c    |    5 +++--
 2 files changed, 5 insertions(+), 4 deletions(-)

--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -943,10 +943,10 @@ unsigned int kstat_irqs(unsigned int irq
 	if (!irq_settings_is_per_cpu_devid(desc) &&
 	    !irq_settings_is_per_cpu(desc) &&
 	    !irq_is_nmi(desc))
-	    return desc->tot_count;
+		return data_race(desc->tot_count);
 
 	for_each_possible_cpu(cpu)
-		sum += *per_cpu_ptr(desc->kstat_irqs, cpu);
+		sum += data_race(*per_cpu_ptr(desc->kstat_irqs, cpu));
 	return sum;
 }
 
--- a/kernel/irq/proc.c
+++ b/kernel/irq/proc.c
@@ -488,9 +488,10 @@ int show_interrupts(struct seq_file *p,
 	if (!desc || irq_settings_is_hidden(desc))
 		goto outsparse;
 
-	if (desc->kstat_irqs)
+	if (desc->kstat_irqs) {
 		for_each_online_cpu(j)
-			any_count |= *per_cpu_ptr(desc->kstat_irqs, j);
+			any_count |= data_race(*per_cpu_ptr(desc->kstat_irqs, j));
+	}
 
 	if ((!desc->action || irq_desc_is_chained(desc)) && !any_count)
 		goto outsparse;

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194043.067097663%40linutronix.de.

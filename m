Return-Path: <linux-ntb+bncBDAMN6NI5EERBJHUZH7AKGQEZEOA5RI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id C41492D66D8
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:28 +0100 (CET)
Received: by mail-ej1-x63a.google.com with SMTP id d19sf31660ejo.18
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629348; cv=pass;
        d=google.com; s=arc-20160816;
        b=GN0fhvCLibMNcQEQ589PGlNDwhY9umFCLUXES/lMDYOdN1wvT9bZmWLkhgYa8XtDvX
         FyOWcjOBU5zBPs+l5bmtC95w8KaC4YwFRt8UEJ2vlcsY/4nYdt+ggp5GILI6CIESI9vh
         Yvik5HrxMaiZmFdvphKq3IGRZKp+pFwnjc9GHjHHBQpgERDpsnWqX7uc6TpTZeQYb80T
         okorJHgTe4zRNzth7udyOoeElI4PXw0xzsW6jZeFQ8ZbPWzDm1cTAiFtvkBwFDsNq03c
         2K8XYtw1j0YkVIh6BHsDL2t6cw/L44/pkIZBG9cIaHau7EmztpP7J/FhVICyEhi6nTqj
         G5FQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=ZqlvZ8uZFug97JN55fffi1qJCQqNizCHCbeQL2bH3SA=;
        b=xRFU7llDIHCC1iwMpbC1q5vZo2pKXpdqy1z3beyr2u/aTBMGJ4ol/raEBjsJZ8PzzH
         K5tBKUsgG35mehVphu6opAQza6Y1AKvYYGUwkIvUw1M5leHtdWvpkP9XtNVhKredRXS1
         KIZliy3TUB1SxSHrO+sZu3cl4JoLlmuYprt2Jr3MoS9/3YthGZHMRKm8fHNFH2nWoPeW
         yul0IAZALgR1b8Brzxxlu4cC/eNgin/wWezE9Bb5Y0NToOyZmy2uy0p7TqgMsC4LQ1Cq
         M/hDJE071suCNMG7sInuWmcN4kLOtP5nS4nCz7Pk83hiGTEVSTf/qZOTrnbbJ0lLzydN
         bOyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=QPllCmzo;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZqlvZ8uZFug97JN55fffi1qJCQqNizCHCbeQL2bH3SA=;
        b=AJBS1oYfndWNgVJlEFpaJMtW9kZrN16islhXkSqASuF0kuGUkFV9yw19NPcU/P+FUZ
         ThM1sJ5Q+iauvHV8EoQUIsTxFmHtgXNa5fmR1EbgrdhbscT3wL/lGqjJFLuaJgVqmepl
         ZSxAi4S73atdxcn87fl4a2zO0WyQ3xsNIF5uyz7dgv5aV6KAX3toUuGBsq1lRQOwK+f+
         tNlHIkTHABNRrFDkxl//U01MMSvkA3WwfYzMQAXI/6ljIhox3fqLZ9DkgDEpbwzeIa0N
         asc6mV8/UPsY4tYh7Gm5bR4/hcVsQ/cfMZBTckWO+qUwOybpGIm7GM2iBxCYPpQiqbN9
         7RFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZqlvZ8uZFug97JN55fffi1qJCQqNizCHCbeQL2bH3SA=;
        b=PKUHBXItoRZ06AnsTWNo+acPlMI1C8XipVyFLPPAkN7RY+ku7ZAuouIJp6xDwDaU9r
         BMy/keW0tiPwD31iYuMevVywc2BOPh866GCFaIuY374wjL6azOIpKkwSTopas5QgEp37
         AA2z2q/eauJZNRxUhFhh0X0uBryn69vJLp3hyE1Z9eIt9P6StAzgJK1N7mwZKsS36/Ne
         LPlPiBOQTzYNQzzqDoDMRzr4oLt6m8mFTlLz2leq0MTbFivWIxqDN5cnH1abL5A7FyTr
         FHUDpfudopOj+TvKLijypWWJpiwPVrPjtM2yFGnqiYCqISG+M8uvojF+3UEDv2zyxnWy
         eKcA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533vfI5KBRZZdT8TWFeripNcqxDjy3ffwP5PlY2OWDREzondUbdf
	faTbg/TxmowiIR64bIEC8mE=
X-Google-Smtp-Source: ABdhPJy8xp4zyJZ0l4ANjyn2RLnSmWZz8IicRZec+FYZGxnY86XmZSxTdqxLSajo6lJo0mHfJ3hJRQ==
X-Received: by 2002:a50:b944:: with SMTP id m62mr8368319ede.182.1607629348614;
        Thu, 10 Dec 2020 11:42:28 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:82d1:: with SMTP id a17ls578726ejy.1.gmail; Thu, 10
 Dec 2020 11:42:27 -0800 (PST)
X-Received: by 2002:a17:906:2582:: with SMTP id m2mr7646154ejb.271.1607629347723;
        Thu, 10 Dec 2020 11:42:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629347; cv=none;
        d=google.com; s=arc-20160816;
        b=gtSgQ8jV4BNjAAmPJiQV95VS/viOqF+Jmf312CKCU2kluVGiEAD+N9/SI0n1WiUvyt
         F1FpUzJpJzWI8Sf2KhbrEobaTLjICv3NRzDb/zdJA8lbt1aq8yGTBDn9rQkayrKvrsU4
         0zOnLoLu+UPJSSgo5s2Y800unJLCbKaqJ6Tw2iPgHuAZoCPjEmXJBwKMOdERc3pgAaSs
         eW6VmR3p0qksVQNPhwy4PeAL87jQxopOxsYMH2AN483UQL8AEQgDOkgVD/03hKZL7Ppa
         EiG8BQOYhM7KYUt9gI/tApio2f02ciirWelFm9gOEnmm8PJndwofPyM8qTWidCnW4ovt
         TGSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=5nQTlSWs0aM1JwskkO++sgVx3e7r1A0iUoENDct9w0g=;
        b=l6XOOfMMW2HLdjKh7FnWBYI7hNlbhlir1mkyy2dhKY3G3XFlnRka6cUb84fEVv1Ga1
         KUE11+c2V+XD5Bqtb4DkoQSr14kJtxzkyCr+QeNrYu9o0p0nTlgXt/V6kZDBwSoLbr23
         T8KI9LJxV5JnFDvmUIg4nXsj4KSJx2E8cKbMPm+IYxZqT5d1Jvhk6E3rrIWh9coeBpI4
         jxfERnDs++icugiAj3jDg7MJFNN2+5CoJmzPEQeFZKpnqSTMODkgacLPNQ/RaasiAENo
         PqG+FS0WefCLya7gO6HOm1mEb4MI5k6/M7ut33/t9r4SgfED0SP/sji36Y2Vv6/s7OEg
         Ir7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=QPllCmzo;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id i3si188840edy.3.2020.12.10.11.42.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:27 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194043.546326568@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:46 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
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
Subject: [patch 10/30] arm64/smp: Use irq_desc_kstat_cpu() in arch_show_interrupts()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=QPllCmzo;       dkim=neutral
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

The irq descriptor is already there, no need to look it up again.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
---
 arch/arm64/kernel/smp.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/arch/arm64/kernel/smp.c
+++ b/arch/arm64/kernel/smp.c
@@ -809,7 +809,7 @@ int arch_show_interrupts(struct seq_file
 		seq_printf(p, "%*s%u:%s", prec - 1, "IPI", i,
 			   prec >= 4 ? " " : "");
 		for_each_online_cpu(cpu)
-			seq_printf(p, "%10u ", kstat_irqs_cpu(irq, cpu));
+			seq_printf(p, "%10u ", irq_desc_kstat_cpu(ipi_desc[i], cpu));
 		seq_printf(p, "      %s\n", ipi_types[i]);
 	}
 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194043.546326568%40linutronix.de.

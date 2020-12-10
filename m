Return-Path: <linux-ntb+bncBDAMN6NI5EERBKHUZH7AKGQEQGFC6EA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id D78462D66E0
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:32 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id g198sf1377346wme.7
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629352; cv=pass;
        d=google.com; s=arc-20160816;
        b=uedb04lKJitmrtF+hxcxmrsR2gE/wKX2fElFIn/KrNeMIww5eUJ2ZI1TCCfuJRndwL
         DtjzqYc6up3vTxWAYmfEgyEF4nDAgRNlzMg+CRlw92NJTLLzxa8/30sriIGI0ijktEwO
         y5UT7VudgikuuRjsbTCWjrWNORAPDQ6qpOUBQALyLzKBLjtQNr6GIvmBev3apzAQ5A9q
         T4iW/CVKf6TGylcDzv8VIDrmCFvrglWDBJxEGKJMjojll25WgieADLtQQnu0Rx4I5/BT
         oGQMDuwQxMcR3yODIywz7WxYsnR23nCs2/Y2rEMucM2H/5w3iqXiH24jYMVmTJFu2nHT
         ZgLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=odRmYakzy4JGcK2HuVmuHlQjIYp/sro8iVddOj2FoDg=;
        b=tohUp1J8JZi4tLRE44CgBvCYshqTAPsWoIYoUmSF06RaJzhZ67e7+toGo8DWR2T+SS
         MVOqhT56e/jOXO8qZsZ8FGhrSlCcMdh/9NiKxIdwUimtP5BGs7wdBc4z31gU99ZpqlIT
         6zDbtSEU22KHCfIhDrkg8dUlT5rOfoPdjEH1PesdhFBvWjDybIgtVAHcA3ByxfEy8uqB
         qKzZi0cWp0aM+Ls0zdQd9f1XwTVPOi4IE4U9DmLJyi6jxfuLMAQdxietg/Et+dSXfRwm
         ZwPH6tYYK6Xg1GcV2qLAxssBul2M16ctJXfTj5g2Yuida/NSzZXtTsk8nEubjwEUCbVZ
         xyKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=kakkmibZ;
       dkim=neutral (no key) header.i=@linutronix.de header.b=plOxIMbV;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=odRmYakzy4JGcK2HuVmuHlQjIYp/sro8iVddOj2FoDg=;
        b=QjdCnn2NZH5/l5qGTAqujoFJczCpB7YBKypGcATppiOUdQ5gaJyWr73+vOVcqVNwQ5
         XtwFdVJfXLV/D/S5z0048XexyPJC9nGxn0ThIKWcRYP1g1B1i+avl8l9t39hn3Q3wbBw
         LcsmeMuUokB8oF04Meic0daoO+NvDHu1evMLlESLhNAcNV4rgyCRZKcrOiRKuHb06TXa
         0gh0LLS7OcwKKtoJP/jFCBFbqpQsQIzO6RWKugPwAp5zCTJzOW3l6JgyQ45TkqlvCxXm
         HRUhJ/QiuVNkUrTkmGxV+3eRuuKMLgGQGfaIE+7cVEhAnnEJXdJWyFHxy/JepjwCfHOf
         VrQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=odRmYakzy4JGcK2HuVmuHlQjIYp/sro8iVddOj2FoDg=;
        b=ogFhUXUa7PzkgCJ48IcrzYQDWMN8JgI7DM+evZy4rqePKtYeDiIgV12EnSc2bhN1oL
         eiskM1tD2MXjx40Ibh1v2cHwtdkZMRb0hhXbRQgkM/wjYSrU0t1vtdxx9TXNYS32Tnst
         TEZ+IPW+4lSceDSF9fSfnI4tBOlV5nGhoQWMb4P3G2g10akdWxqUTVVh6OtcyoP5ubf1
         3yCKkHXHtnZJnRR/R8OSmV0+EK4ZW/8YEb+wdWT8YtFm4mqzmwTkQwZd8zqNGaPg59rH
         Ws1wIQxGPpfrHwslsBWGO/y1Roj1Jy1biaoVNlPg1mzDkvW9tPC+CuIAwVvwZCPJ/PVk
         wPcQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533S+Iz28ZISLj9imj+C+4RmkvSsgB8HuEXvu49MpodLH7xiX8PR
	RpOSW7IWLduZ17dkMmJHMgI=
X-Google-Smtp-Source: ABdhPJzrOlEywmr2+7VWLAIMAvoi03SV+ChnNcyGWfqKdJDaQ1trjrJIGsQ9ZhYhmM0r5IdIsCwtCA==
X-Received: by 2002:a1c:35c2:: with SMTP id c185mr10063850wma.74.1607629352559;
        Thu, 10 Dec 2020 11:42:32 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:a781:: with SMTP id q123ls3540395wme.1.canary-gmail;
 Thu, 10 Dec 2020 11:42:31 -0800 (PST)
X-Received: by 2002:a05:600c:2306:: with SMTP id 6mr10008179wmo.53.1607629351680;
        Thu, 10 Dec 2020 11:42:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629351; cv=none;
        d=google.com; s=arc-20160816;
        b=uvedXoRQxbsWdmMLdvOFJ2dNnyTswZ+wWtVzAWEJTzCM0wHibJKScPY/IDei73fe/F
         ZyGp0JJKV4vNhJLi4ciGz8lUuCtSyhxknKFDp7EfgxmHHNhLOSuHjT4dE0YK6xWQw+Qy
         XZXgcxQC9uxBzHKOJ8O8TiR+Ch02pUhx9RE7QTFUlK9aAqnLDKfa+fYNOxzc39kVxc1E
         ms7VaS4gM47YB8Hv+An1sIm5VLVUfq9bp0i04ueRCvtO2hygxZkb2PBFlTntVOX5TN3Y
         20dYVgHZIci9Ak789T8gEtBTLiiqXKDS92ThG3J6rif245VwqEB4gnTQSGNijmXcdWQO
         zjXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=JhTeD+U5tH7aZNj19fhxsRS/YgkGW74hooJZTJtUYG8=;
        b=Fwxnay9B9Zd7bwjCMoOO/qPX9kNARsEWAw4vGjwKiKQzm4CJFiHWHM+OU9idgXt04c
         zEIM2YQ2/BHHP+aV6EPSr19ANhoJkeROAzdS+lIQJbGsYr586vAzYE/n6ZastZ3zYJPW
         K4l3Ig+EQerefe2ehXUIvDc4h76gNBNXB+3/yvt5Pyc4fYoqy4PuI/1x/YE5fmEIR/9I
         wljVUyQruIykGXR+J6SZktMfQi/j7jcyKYz8lPlY0Re5BHpSoSMY3gUGgTLYMtbZghSc
         RgwufZdZWcXtiX9tpe88mmnfkScXeq1BsA6ZUsXGfg83y3efLX36iOOJp7uwoWwO+zwR
         /0Fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=kakkmibZ;
       dkim=neutral (no key) header.i=@linutronix.de header.b=plOxIMbV;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id d17si222810wma.4.2020.12.10.11.42.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:31 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194043.862572239@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:49 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
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
Subject: [patch 13/30] drm/i915/lpe_audio: Remove pointless irq_to_desc() usage
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=kakkmibZ;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=plOxIMbV;       spf=pass
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

Nothing uses the result and nothing should ever use it in driver code.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Wambui Karuga <wambui.karugax@gmail.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org
---
 drivers/gpu/drm/i915/display/intel_lpe_audio.c |    4 ----
 1 file changed, 4 deletions(-)

--- a/drivers/gpu/drm/i915/display/intel_lpe_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_lpe_audio.c
@@ -297,13 +297,9 @@ int intel_lpe_audio_init(struct drm_i915
  */
 void intel_lpe_audio_teardown(struct drm_i915_private *dev_priv)
 {
-	struct irq_desc *desc;
-
 	if (!HAS_LPE_AUDIO(dev_priv))
 		return;
 
-	desc = irq_to_desc(dev_priv->lpe_audio.irq);
-
 	lpe_audio_platdev_destroy(dev_priv);
 
 	irq_free_desc(dev_priv->lpe_audio.irq);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194043.862572239%40linutronix.de.

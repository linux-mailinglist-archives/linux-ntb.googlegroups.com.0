Return-Path: <linux-ntb+bncBDAMN6NI5EERBF7PZL7AKGQE4FQIVFA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FDF2D6C03
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 01:04:39 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id w17sf2549738wrp.11
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 16:04:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607645079; cv=pass;
        d=google.com; s=arc-20160816;
        b=O+9mUAp91lLkwiv8hZLrvhsK+DW8k/iqTlckrR4wH+vjNNJaDd26HXkmfqUuiFtCwB
         CzdjREdVbPdQ4RpMiQlvPttDDuILiPDGcO5CJc59XyvFIWAlVDzjWGBa6DEH4Vhk0bpT
         uIu0NSmw3NbkoKJKMxrXUlwbFV2+9dHx81YBKNFfKMKZDI4PuXcyeDCxcKryVWowSGs/
         dfoUo96JEwSIP/JMwhoufaxXGyC7ejPtE/KPgsL6AXIIkJTHt5S5Nz+WuPIC3E84ju74
         hUsuW/Zn7MzYmgbSBURCuN+HmDDbmak5dQ+gT8CZnNNeygovGrgG/yT2YcvH+8CPbMed
         CyHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=tkQpgjomBAntq7lhq8JG7jvHnk9TiJvFTWrycGEjroI=;
        b=BjrZv8ys6wmExt8jMMT6kxoXO776MRWDypdhq4p9B5hwayxz1L3KJmo/tYNJY4pMLJ
         Nn0aTiPDKuoavq6bDvUQ1gAS5QHwewXxtMqQIgjulDnR7n1d4cnt/aa1YJlWaX9ew4CF
         G38nHmhN4j4pKrOC/CcOipCYsmJaZJYQAdcyuhsEo0an5GlzwaOXG/WrdfoEps0cs+dV
         x2rjGvm8UE/HlDzT47ltWGpgY2fXyopk+Ou0mnLSXZGuOzRsoS9RmEuX8pPiEP5ENqim
         nUnGNI7RSrqXesNA0FPC0Bm1YZHwt+D31w63NnuFpyOPjn185DzF4oS9tSQmhgb18wiH
         pfeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=eJe5C3lG;
       dkim=neutral (no key) header.i=@linutronix.de header.b=z8XrxSbQ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkQpgjomBAntq7lhq8JG7jvHnk9TiJvFTWrycGEjroI=;
        b=G2xUphewMOSVSDEwRGnTfcndJvt/OvjaKzHiBoArr+61Cegv9LNni2WquiCcwqulRh
         StV1+eeTUWhsQ51IQP+CpEhCxizL5nvzBtq+4nV83N5qztixYQjlyvyLToRazDKMXrJE
         ra7ErbUHxv9RuOELlp1TlGLugm8CsBP+whTtfxfjjSiBp/qALGCWAa1jjli7wk5Z+55v
         MYHMOr2uBUpARQ6zsSxS6Kj41ekKdUCML6WrrLWjKPhSlWYe8iFPvu0sCuJBck4UsCxt
         YU1UGesGwaIKZDC51ZnNoc8SZQ8mHfupCXI2Gj06wbb0i/LEXOXON8TEwYWYsFM7INLR
         TcsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tkQpgjomBAntq7lhq8JG7jvHnk9TiJvFTWrycGEjroI=;
        b=KAX2jjmSsApTy37jqFBFxJKQijd9MLYZFPhDwX00vMNaBVJ/Pz3RSNyFy28nC7rYDj
         Qb5+oY+7Jh+to1o0mgYVTDOPlGiLILUUj2VWXrHnZ68bw6nCNDutXMWsfNuj9wFo++Dw
         9NYI4UiPDt6dZyZ4okSEvoNUGekLLtyqiJ7ZPAEEuwSaN0obtHoHOLV7aJL19TcHHVtB
         q8rqoThEs730OiYpaUpaPJCJVzg+ZnjQ/t9nFtkrQy7O6IpNE76KUTdbo5DMz0j5PHeB
         aEkG/fmz1924ofQ5TZCI6nTgMskJygtDQ8JOk2fXPQRwUr0LSUzZ26WYMKoWzTxcQPtG
         /ovQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532mLth3vwmKBHeqMvYvz4apKJ3yki1okJlTXUOmYL3gAnfe2616
	WrxzvbIliSfesf5eIPvNsnA=
X-Google-Smtp-Source: ABdhPJzQPBqZKdt1v7NzKg3JN1bReGr7uY+sb1bnesdW+ftHaZTmoLR12cgtTzNaWh7oV+mxkKtoGw==
X-Received: by 2002:adf:f60b:: with SMTP id t11mr7580530wrp.401.1607645079336;
        Thu, 10 Dec 2020 16:04:39 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:1f8e:: with SMTP id f136ls2362928wmf.0.canary-gmail;
 Thu, 10 Dec 2020 16:04:38 -0800 (PST)
X-Received: by 2002:a1c:c254:: with SMTP id s81mr10775612wmf.132.1607645078449;
        Thu, 10 Dec 2020 16:04:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607645078; cv=none;
        d=google.com; s=arc-20160816;
        b=vJBghbJ6Pi6wlAWxDJliCzgshBhypYQqwvQUliFlwWA+n2alAyyB8hp/+j7B2F8S25
         8GGE+u9AYH7n/rlFf0eTiMQt+DQx6Ory5C+ooOIDylWyK4VXV58ktN9QtvcEF+QClJeC
         wqiYiNI3HlA0wRSzV/DsJvILe/mES7xocajByfomPtCfjrkiH6u0pvE6KW02FEl00bL/
         SqYcRB8HvuCT/AOuoD5RHUe2i8U122uWBoZEfZqV1mVJsz0kO/7RWWB3hugImg/CbyuL
         OMolg/SgpHxtamJN/Vp+yTw+wadE3WztE9c1rka4xzFkBXYaiG4PQ7w5BxCZ5kR8Lc3c
         qIgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :dkim-signature:dkim-signature:from;
        bh=u4caiGj9t4ml+Fg2/LjvRAStceu1HqnXy5JxnlwmdFA=;
        b=YE0Uwo2mSlxet7gGzgj/UeYPpC0EJU6nOYfuxseBzMRNup0EQ7vv4m2PRFG4vy/GkT
         0bM0MQoigPoZHyNK10uGXGamJuI2YpItRhrUXrBbxJ3EqMpZAU3C8v9ok8FnG1JagIso
         8V6eIeUpZ82o8taKlUvwmgesGDF02U2YfScJdVYIJZChwfjdqL4R1J1d++eCsOCB25hS
         r3F4nIGp5JmX0+XtXOevIwVZqDuII2Hi/v/SShA8j11rHfSc8qTZ2ztaFqkHoxxuKjWK
         wHVafcYPGDkjWGn90CDan/yms6RgI8rZMI7aEXORtnaZ1bhoW1L1HO2LrlYaFaROaftC
         Nf3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=eJe5C3lG;
       dkim=neutral (no key) header.i=@linutronix.de header.b=z8XrxSbQ;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id x12si299849wmk.1.2020.12.10.16.04.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 16:04:38 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: boris.ostrovsky@oracle.com, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Juergen Gross <jgross@suse.com>, Stefano Stabellini
 <sstabellini@kernel.org>, xen-devel@lists.xenproject.org, "James E.J.
 Bottomley" <James.Bottomley@HansenPartnership.com>, Helge Deller
 <deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens
 <hca@linux.ibm.com>, linux-s390@vger.kernel.org, Jani Nikula
 <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Pankaj
 Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Tvrtko
 Ursulin <tvrtko.ursulin@linux.intel.com>, Linus Walleij
 <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org, Lee Jones
 <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Michal
 Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org, Karthikeyan
 Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang
 <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>, "David S.
 Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org, linux-rdma@vger.kernel.org, Saeed Mahameed
 <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>
Subject: Re: [patch 24/30] xen/events: Remove unused bind_evtchn_to_irq_lateeoi()
In-Reply-To: <748d8d81-ac0f-aee2-1a56-ba9c40fee52f@oracle.com>
References: <20201210192536.118432146@linutronix.de> <20201210194044.972064156@linutronix.de> <748d8d81-ac0f-aee2-1a56-ba9c40fee52f@oracle.com>
Date: Fri, 11 Dec 2020 01:04:37 +0100
Message-ID: <87im99i4x6.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=eJe5C3lG;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=z8XrxSbQ;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

On Thu, Dec 10 2020 at 18:19, boris ostrovsky wrote:
> On 12/10/20 2:26 PM, Thomas Gleixner wrote:
>> -EXPORT_SYMBOL_GPL(bind_evtchn_to_irq_lateeoi);
>
> include/xen/events.h also needs to be updated (and in the next patch for xen_set_affinity_evtchn() as well).

Darn, I lost that.

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/87im99i4x6.fsf%40nanos.tec.linutronix.de.

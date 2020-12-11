Return-Path: <linux-ntb+bncBDAMN6NI5EERBUOIZ77AKGQELTUSALA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id D91252D8117
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 22:27:45 +0100 (CET)
Received: by mail-wr1-x43f.google.com with SMTP id d2sf3818882wrr.5
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 13:27:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607722065; cv=pass;
        d=google.com; s=arc-20160816;
        b=yRDgpvCUdZD6k/vkqqYJRtFPZO1SKCIMZTgs8SqyULCtSUFAokA5pOGHgvkaCkjob7
         dyGdfNctSkhBw4eA+X/sbY8LhuZd5pOBfGIYQ6tfH1wk4Me+YDF3MU+TxPERpw+UJ4lR
         qlC3uwP5OOPJD+JmyZmEcsfe/5E0O2A1lGeqmI0rannAf3GCLN68c7CD59na3Ok5q6Ft
         vzo92aO10DXYNbMeaIcVkfH95ImsSeECEsAY3l/L/Cdwb4v0W9KG6n4nK5CP1vBZsOJT
         USWQglkA+kE1Ap79H6cpW77QiJWRp6c8SKv7O0udrIliEni5RAuhQY5P4gmw7bztOHP+
         wQ/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=R6E/6NTrcgr1VRvuzLsCoTtlveurVj/orPPyc1VaAys=;
        b=i5aSv1N0UsF0W6EONs6sQkpC3rpF82yme1XGDmvhsnBoitipimQwwAj92Drm2tKwow
         c/CkuIhxhk/oEXgrwWFC773gDjw/nMnSwIW1KWHsVUgsEtpk7b39ToKP3FVXxtJaMzRD
         06CKQ41iJzPQa3YsCRuOAtr8IMWEbo/83l6neTOgQHCku8TF7h+9SrjubvzoCHYI6K8M
         tOtKY+hwB4YxTAc9gYlC6NenukVChAMSHTzybohYHtkd+knodrJJtf7pn+0tKbZj90b8
         oFpWsp3pTwExxJwWLM2jFaBMS03BRaTlUOB1aboHIjxrl7NQRzLm/MXcaSnScqsOz7UQ
         /OmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="Kc/FVw++";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=R6E/6NTrcgr1VRvuzLsCoTtlveurVj/orPPyc1VaAys=;
        b=aDLH48LMlkOBhDFmskBb2Qg9syck3VqoVDB3WRL7Qzzf7XnAzx2aTYSS4oub4iswcP
         XQtxYRsE6BMrom5mfW4wGpeUSbV/8bdOjMGdiEQyKMv/vcQvbXt9pO47WDinkmypv19d
         wr6cXDE8vZiIw+Z0vYhp/qsbZSEx2wsJ30aKIBqwHImrHl6+5Lpg6ZOG1oIJqSnsegOD
         dgNdcAfY97sGiK4AQZQLAAkh9uGumP0UoK/D669W5yJO8RuZYUTVqMR+jbaXkckxi9er
         hThB0jDfd+Lk3K09PxxPz+5CbQDiEFxpy0c8+bRCeyLo98gWn2GtXEx+Mk6lse6xPmde
         rhTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=R6E/6NTrcgr1VRvuzLsCoTtlveurVj/orPPyc1VaAys=;
        b=L8u69QVfQ+Q1ZSUeuXCDjZdUc8nP6BxVpvzHow2FD2jFHAbeQaYrgWgOGQyuTQdbkB
         iNd55ikleguXqF2ibza07/lM4c0em60SXlwJ/v1Vh8L8+aizdAQKwpj6hOQR4OBXlNli
         QBy2rNZq9SMoU3eD70u4ODIlOSzXJjFEcyrb++/tff45kHLtDUUaIxR8YG9UQ45drDdq
         xyU1aiZVpe9fZzVxb0DMjKtfvuWPyLridoeW1Ei2UHnMWZHEHeqZpfJ6wDtjcAJTfmH1
         rPKanquk7fk3z1egnyccpmv4PWxh6K0CXtoT79JsHrsmossLaMz72CokQm0b7BJfObtA
         B/2w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533xTze9ADqerZ94WkrucK7GzuzMIP92OhM1FDTl6alywqTuSPVZ
	40KDqls26jd6X/qPFVP+h/k=
X-Google-Smtp-Source: ABdhPJyxZXyV6EefdaFEBhGi9/4+jgswhPjEC+3tnC5ffvAvfj/B/BqnZDS/S7T5CPPR5QCR1xTwRw==
X-Received: by 2002:a5d:6888:: with SMTP id h8mr16147561wru.268.1607722065649;
        Fri, 11 Dec 2020 13:27:45 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:eb0e:: with SMTP id s14ls4924586wrn.2.gmail; Fri, 11 Dec
 2020 13:27:44 -0800 (PST)
X-Received: by 2002:a5d:528a:: with SMTP id c10mr15515889wrv.270.1607722064776;
        Fri, 11 Dec 2020 13:27:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607722064; cv=none;
        d=google.com; s=arc-20160816;
        b=mgCyTIBR804SRh8UhW+0vy+Y0yE0yNoWJXl5U4vTyNwV1WvXu5l9Whdfl5ZRwy0G6o
         YG+0LwwWSLfRAtY+4RMLyrsu5eDIAZS4HkFDOmZLGxFGyz9cU0PaM6/kNtlX7lWw/zbs
         nCfGudDvO+RXzvdbSc2mgAEZ29AfRGgexn+nw5tRCZGcralWzv9gJGQ4blLhpBvocZ1r
         +B92iqkuHx0o0jZoMbUe99sXKYsbRCKEpu7246SMvsXP1wU8IHEPB2/iUvIXH4CeKRfO
         uDES7vJEB0yvus/Na384FnE9tULS2t9kVgXsjFLhRPqrklVqQYKIafyw76aSh1LFe60x
         JA5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:dkim-signature:dkim-signature:from;
        bh=RPMMCIZpTkbwn/vpPbbWIvtIfsdUJZbFWGvj4XBXX/8=;
        b=wV19KQimKWnbEt3stqF0Ht85qbRvr+4QNIdgGRWI7IZxH5wxo8GIWFstxxN50ejcM2
         83kljWn1WLm+4HrYrTl8fq+7Gp5g/1pzP2tNbeqT2saaN7toAbOOMWlvChiSrynFTLsP
         CZ7gJPoMom1oj9XauGgEtD1JWUBBVtBDmhvd9CRjg8MSJPUgLLanp42KUzzce1wad3g1
         HGN0AXLRPueZjg7y5k/bQAPgNZn76QlB6ZBYYc2Bh2o1L7EzjOzjfGolEL61xIzgsJgs
         FVyounIPCP+Vux7Dtq0brcQzNmMiWRrmqemFfiMnA++m1gXJdOuYXpeKJroBuL4puBbA
         U7wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="Kc/FVw++";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id 10si390512wml.0.2020.12.11.13.27.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 13:27:44 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
From: Thomas Gleixner <tglx@linutronix.de>
To: boris.ostrovsky@oracle.com, =?utf-8?B?SsO8cmdlbiBHcm/Dnw==?=
 <jgross@suse.com>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org, "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
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
Subject: Re: [patch 27/30] xen/events: Only force affinity mask for percpu interrupts
In-Reply-To: <9806692f-24a3-4b6f-ae55-86bd66481271@oracle.com>
References: <20201210192536.118432146@linutronix.de> <20201210194045.250321315@linutronix.de> <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com> <2164a0ce-0e0d-c7dc-ac97-87c8f384ad82@suse.com> <871rfwiknd.fsf@nanos.tec.linutronix.de> <9806692f-24a3-4b6f-ae55-86bd66481271@oracle.com>
Date: Fri, 11 Dec 2020 22:27:43 +0100
Message-ID: <877dpoghio.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="Kc/FVw++";       dkim=neutral
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

On Fri, Dec 11 2020 at 09:29, boris ostrovsky wrote:

> On 12/11/20 7:37 AM, Thomas Gleixner wrote:
>> On Fri, Dec 11 2020 at 13:10, J=C3=BCrgen Gro=C3=9F wrote:
>>> On 11.12.20 00:20, boris.ostrovsky@oracle.com wrote:
>>>> On 12/10/20 2:26 PM, Thomas Gleixner wrote:
>>>>> Change the implementation so that the channel is bound to CPU0 at the=
 XEN
>>>>> level and leave the affinity mask alone. At startup of the interrupt
>>>>> affinity will be assigned out of the affinity mask and the XEN bindin=
g will
>>>>> be updated.
>>>>
>>>> If that's the case then I wonder whether we need this call at all and =
instead bind at startup time.
>>> After some discussion with Thomas on IRC and xen-devel archaeology the
>>> result is: this will be needed especially for systems running on a
>>> single vcpu (e.g. small guests), as the .irq_set_affinity() callback
>>> won't be called in this case when starting the irq.
>
> On UP are we not then going to end up with an empty affinity mask? Or
> are we guaranteed to have it set to 1 by interrupt generic code?

An UP kernel does not ever look on the affinity mask. The
chip::irq_set_affinity() callback is not invoked so the mask is
irrelevant.

A SMP kernel on a UP machine sets CPU0 in the mask so all is good.

> This is actually why I brought this up in the first place --- a
> potential mismatch between the affinity mask and Xen-specific data
> (e.g. info->cpu and then protocol-specific data in event channel
> code). Even if they are re-synchronized later, at startup time (for
> SMP).

Which is not a problem either. The affinity mask is only relevant for
setting the affinity, but it's not relevant for delivery and never can
be.

> I don't see anything that would cause a problem right now but I worry
> that this inconsistency may come up at some point.

As long as the affinity mask becomes not part of the event channel magic
this should never matter.

Look at it from hardware:

interrupt is affine to CPU0

     CPU0 runs:
    =20
     set_affinity(CPU0 -> CPU1)
        local_irq_disable()
       =20
 --> interrupt is raised in hardware and pending on CPU0

        irq hardware is reconfigured to be affine to CPU1

        local_irq_enable()

 --> interrupt is handled on CPU0

the next interrupt will be raised on CPU1

So info->cpu which is registered via the hypercall binds the 'hardware
delivery' and whenever the new affinity is written it is rebound to some
other CPU and the next interrupt is then raised on this other CPU.

It's not any different from the hardware example at least not as far as
I understood the code.

Thanks,

        tglx

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/877dpoghio.fsf%40nanos.tec.linutronix.de.

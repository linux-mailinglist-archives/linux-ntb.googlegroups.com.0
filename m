Return-Path: <linux-ntb+bncBDAMN6NI5EERB6GPZX7AKGQEJ5ZJ75Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7B92D75B7
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 13:37:13 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id u17sf4736465lja.10
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 04:37:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607690233; cv=pass;
        d=google.com; s=arc-20160816;
        b=USs/k+INGilcKbdpS+iUi4GJX90Rdl5LEFuEyD7dmrd59b3MzQHF8S15HiwnxlYoz9
         00s2gYDyL1xjlWo8wrmRzwYi/E1rSkzzdCzSovvgiY1RdschPdCsSjs056hIkEpr8e6Y
         Z3I15Ty13pKeuxEe95d4End/O07A94acCdoVD9UH8ySBjihwmFSRukU1/gbXRnJt2v2F
         OVtEY337M74QQ71Ee1MSa03je0+NCTDFJthPFZ51514wEhdg8XQjmSde3x+oX+zhW7xJ
         b4mMFAmeajYeP7dNvKkTVBG7p58S4ksR73yGKUwsfyZ/4XOMBVof9boX6t4Xd/C1n9HN
         +7LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=FrGT1ahn9u3K/GM3/n55P30N8wmOcM/VI+9eHKF21v4=;
        b=AMgEGxTGZYnp1dujM9VcewFhPttyIFiLasW/aDvQm/KURmbyf45aXmkmYcRdxbiy9U
         ciqSYhaU7YPDZKwwmjoiGhb/pZ/0SRLA0ZDun//yrbO4Wulsc35j3n1aQetZha4YpYRN
         QSEwHh8ht9OTjRbjLjsu55edZSIeul+6XUusKtViQZVVy4c99kAzayUDzIDClmiLe9Tm
         KEoqrh+e3bQAfybgAO/fpS1f+MN3zFWboWNJciknNoRvWD1BbD8KoFyLsQt38zQeQRNN
         p5DqU05XhHuHw/snUXj3cM/6ucchW98w/qWxJk6ZT/mKHv9jF+AASrBct73U02lFASQD
         qnng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=3520JJ+c;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=BclOyliY;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FrGT1ahn9u3K/GM3/n55P30N8wmOcM/VI+9eHKF21v4=;
        b=H7OCzUn19ugcfnLPSkXXaR7uQ/c+L/k6nuA1lEoCm/Cw9qnNSsHdanAONDvpsP0kSd
         AnhILg/mXXg110UnM76+ueDgnGtYHef3cpduB5HmrAt1bbZkLODed705OgwhfEOTS+jh
         SuKRu84NPViKwzYb+dTTP6fr2EX7ZZ21dAJ5XCch2uPcg1A9zbQPcCYHQcLJ6jaWLFs2
         b0GHVjcfXDBJslDR3Pjua59rHZiSimVhsqx9ut9fnEtDQHwme4I8cXLTgGtzVr1Rv4Rs
         ybaVVfQiYSHyr+QIgdYbA+0c69Y8Ek6dR4Mv506+3dOy9AIm5h3aoOJHi13cH9SJkZS/
         r6/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FrGT1ahn9u3K/GM3/n55P30N8wmOcM/VI+9eHKF21v4=;
        b=iE/16Vxfiw1J4L5KlQlgNIOuDuehXL/kfHHj3sQlgI78SFUAbe0ggye1X7+DmECIIS
         aBcV2clQ2ZB6cdFtTHDRW2/qCexusRGV6Y8oHc6P+m5mOf/Rtnn2cEmLbAQaQgzYGJda
         5dAYBs04LJvwwCwgjCMTcUz0kSYR36cWS9Z5SKiB9mXK8LQx+++F2/R5r1sbQDZVpzgb
         K5D9bo3SnZx073f1eAvSPP57sTtoCVa+vwy6vHy8KQ1pwjP9IYThkUfTCUhlwcu/3oxH
         KvnCleU9Ut4MbZaLXPOZIaQtSQtFc9S31Et8MG9Jg0QfEM1MtJM2+YKBXUWHE8EpfQQV
         lRZA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5306TtipOO5dWEfAIGoZXpPg113Tc7yh57xAgB0NyD4zqt+No97O
	SnyrpbvfXsBe9mAbdG+4LPg=
X-Google-Smtp-Source: ABdhPJzRGwSvh9vfBeluEGWXYv0iqMG7sVlBvAUY5K3WqgGSEO346kNKXXG2I3Bt4lg6k7AfUetVNQ==
X-Received: by 2002:a2e:8e94:: with SMTP id z20mr1817559ljk.450.1607690232868;
        Fri, 11 Dec 2020 04:37:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c1cd:: with SMTP id r196ls1644680lff.1.gmail; Fri, 11
 Dec 2020 04:37:11 -0800 (PST)
X-Received: by 2002:a19:5e52:: with SMTP id z18mr4435211lfi.340.1607690231782;
        Fri, 11 Dec 2020 04:37:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607690231; cv=none;
        d=google.com; s=arc-20160816;
        b=hwvtGzdLCxG4sfeWDRczA7QYqmzcJbKOV1ASpHoAirvLjBsLAsalZPy0kI/Qoh4rku
         Nj2Lu0HmwwGUwAX3pmfl6RR/e1znZdWZffj94ZxOm5RJrsGfyIJXdC3VPjXolPr8AbAH
         8t8pr8H/BHEnr7qIL0NgvkrSuPBF+9kIb/IaUJkcfCtzlEGZhq7xsdVZ3SCnXwQiunKH
         CB+3ycn7nud12lc4dC+0tJMdH3UetaOi63Q7wBSBEhX44eK7StBwX1S7PTe9zCMXX071
         yIqc2HXUIn7xlg8aWnd3DgZ3DnHdHiAb1yJbMoF6hCsrP/nGdXDcPsq3UEBqxSq8EFOE
         gXHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:dkim-signature:dkim-signature:from;
        bh=xeKMIUUY7UN7nseclqb6capkWQKCLYLlFPvEsM/avAA=;
        b=ErkhBH8ZXBVABILwKmx4JFgMJLNL761gwd+mmrkZrqT2fTb3lj4zfIEZCbsLByeJOS
         Gh0JKYraYrLFppxOb3iKPiZ35e/UByw5eRT0hiBz4MmMwWblkHo/OsbJsig6c4ARzOAU
         oSth7lNDKoBh8TKLWw5o66rZq3hmhriYGs8Xo3Z8oWXWq9J25cZDUkQ6wESOzO6xBvt9
         c4PxCaOnm8gSp6RXwhwHBo+CYZoF4WeztntyJVvTstOWEbwkIQk6vA5BXqTXnNXb3wv/
         EBOvfSWJFfzjMud+z33bsLKRsafszPJBz4ktKbgFSfDyTvzzchZsZyeN8sDUnAi0r+Ke
         QMIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=3520JJ+c;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=BclOyliY;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id c24si69024ljk.7.2020.12.11.04.37.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 04:37:11 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
From: Thomas Gleixner <tglx@linutronix.de>
To: =?utf-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>,
 boris.ostrovsky@oracle.com, LKML <linux-kernel@vger.kernel.org>
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
In-Reply-To: <2164a0ce-0e0d-c7dc-ac97-87c8f384ad82@suse.com>
References: <20201210192536.118432146@linutronix.de> <20201210194045.250321315@linutronix.de> <7f7af60f-567f-cdef-f8db-8062a44758ce@oracle.com> <2164a0ce-0e0d-c7dc-ac97-87c8f384ad82@suse.com>
Date: Fri, 11 Dec 2020 13:37:10 +0100
Message-ID: <871rfwiknd.fsf@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=3520JJ+c;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=BclOyliY;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
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

On Fri, Dec 11 2020 at 13:10, J=C3=BCrgen Gro=C3=9F wrote:
> On 11.12.20 00:20, boris.ostrovsky@oracle.com wrote:
>>=20
>> On 12/10/20 2:26 PM, Thomas Gleixner wrote:
>>> All event channel setups bind the interrupt on CPU0 or the target CPU f=
or
>>> percpu interrupts and overwrite the affinity mask with the correspondin=
g
>>> cpumask. That does not make sense.
>>>
>>> The XEN implementation of irqchip::irq_set_affinity() already picks a
>>> single target CPU out of the affinity mask and the actual target is sto=
red
>>> in the effective CPU mask, so destroying the user chosen affinity mask
>>> which might contain more than one CPU is wrong.
>>>
>>> Change the implementation so that the channel is bound to CPU0 at the X=
EN
>>> level and leave the affinity mask alone. At startup of the interrupt
>>> affinity will be assigned out of the affinity mask and the XEN binding =
will
>>> be updated.
>>=20
>>=20
>> If that's the case then I wonder whether we need this call at all and in=
stead bind at startup time.
>
> After some discussion with Thomas on IRC and xen-devel archaeology the
> result is: this will be needed especially for systems running on a
> single vcpu (e.g. small guests), as the .irq_set_affinity() callback
> won't be called in this case when starting the irq.

That's right, but not limited to ARM. The same problem exists on x86 UP.
So yes, the call makes sense, but the changelog is not really useful.
Let me add a comment to this.

Thanks,

        tglx

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/871rfwiknd.fsf%40nanos.tec.linutronix.de.

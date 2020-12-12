Return-Path: <linux-ntb+bncBCT4VV5O2QKBBF4I2P7AKGQENBFAW2Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 047AC2D86D8
	for <lists+linux-ntb@lfdr.de>; Sat, 12 Dec 2020 14:22:32 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id c72sf9423671ila.1
        for <lists+linux-ntb@lfdr.de>; Sat, 12 Dec 2020 05:22:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607779352; cv=pass;
        d=google.com; s=arc-20160816;
        b=PF04Rf4LoxoUpCPpTuy9F6GLKaj+i5dcLZVlDFonpV8DI0zPuwY3Zld4U3IhiPcffv
         rQTeCJhTfz+00HrRiOS/EW7D/oL+2x9hKSyTqjANdXO5ugcMiT1hu8nSX4Sw5A/3EJHe
         k7Tg+B5ym5TCBscj3XMyURR5a98gdkY09x9jNkcgt1X9Oxr2HcPOAayXc/PpMaQSqDTU
         FxS1g6aO5Xl94XsqJkRa+NSL+yqpB2wONWMUJmS9Kzrkr+EH+nVl1p06cEs7mMb5Jbqp
         J6+fySbERn++Is//Or/wSRFojy/9z7Be9dT81RPyYOSbIPbeUBScTXHEVEmjW+zNIN/W
         7Qqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=je4GfO6z48jfRsjYjeMhxmDSSvA4q5NvyY6vdcDyo74=;
        b=mDnQnbT550ZtpQRRMWIxJbpSEjRdRBP9rWLpJMd8U+v85B9UyB6gZVNRn72bj3R5qL
         LxndMlC+rwlsGpmQi6EHvCqicWp1I91HaA6jnsu/FyxPfPUkgduRjhj0N+NaXtdffUFB
         olLqJmVzAQIDdCurfaU5q1ox+pOTvq5q/LfAX3owInge3h9mtH6BEmLGxMEYH7ncmohp
         RfZ0Hq5K03gLtRZ40dn8HdNE5hm+hUtq4qAFCsKGCUtoI6uE80Bl5KpKFgSjtBcAva3c
         Ez33XkWvGencIpPjyGjJnMRi6Ky/J17hjF36XopbgsU4FPNtVJ80Tw6fHRLgBoetd34p
         tMTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gs+DafSa;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=je4GfO6z48jfRsjYjeMhxmDSSvA4q5NvyY6vdcDyo74=;
        b=V7z/yonHqINhZd/cwL/NHmIiRxau3ciONnQYdaJyYUDOuPyjjiI1i8Q7Y/1UVkbiZe
         sLN5COcABF+WlMq+z3oA0EN10xxYCD/NWs38l9HQJPvPHR9A7/htARbxC6nlFmsbwWZq
         o2U69rfzzbhY1U6lcOKCuS2sAEM8c591N3mXz2WP/tZLT4lsoOoRq8bqu04eyzquOFNR
         qUbMNlOKmxeCR5ycbulfd9hhzk2Dmi26DTbk3cg3dKmqnmn8Vor0IrBxeRmdc9Yq0qc9
         uOhtHhQXllQHC5nyJe8EJk06UouovVOXIAjd4s0Bvs5ytqQAxfFYKtFs1/YkLM9W33xr
         95JA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=je4GfO6z48jfRsjYjeMhxmDSSvA4q5NvyY6vdcDyo74=;
        b=iou3NI1OnkBbtnsRDPgSrYQeckyDZL+T4Vp2FUcPMqAqGCFDcizi69YEn8aNGhZVKn
         UEIFRBrKzyhjJxZywDCmStCDlX5JKtx/zerZfho+HSbADV6v6I0Q8DDJ4W5P+e5RE/Al
         LiZuxG0ewKdxhj6zcASEFw0OXnSu9PV3EsXCsjgah+v1NZZuCx1ar5CGihE/1SU4Apur
         OsiO+4pzgxzbxgSEpwQrDvO1n/NzA4wwNvdyhE3zQf3s4AMypykZJlhplFtDhZxE+Bdz
         BnlbXdBj8J46z9PPsc9S6EcEfJI7g/8hoSBBaAGeVvF60uXKseth8eNdyOQ2jU4fVnUw
         OjZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=je4GfO6z48jfRsjYjeMhxmDSSvA4q5NvyY6vdcDyo74=;
        b=NFm5d5UGyitX6prTWcD4qV5JQgF13hwZN/QOO5vBFyuoDJ4FkN96rrEDre9mHwpXeY
         4fZwKU+cl6Dw3LHRa39qJikt61i1Pj3GR2hoepvqG7hk7zjNb8AJrQ5SjWciA5QJ0Z/2
         UDujkHfrCKdDdyu5GnduEni3kkfCoeA1VHyGaajdxCMz2ldEEE17jwPt4A9B2CSoZLAI
         CcQWDQ+/MG6yrpKcMqVx1fklvNv621HPLSGBKzUESo3HWodEWZUMY8aAG5JccjykhgSd
         swfY6g2oniPRRK0T3TuVQzIcH47cVKHAr96+Yf3Be9uxzH50xDH9N7lYHl1FlHZxWu0U
         VjiQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530GmThRJSONjY/PPttx/pUcRSlIBjSmO/pLK+G6K/61vzb0j8jP
	NLZ9qd25pJr8mabEyArxNkA=
X-Google-Smtp-Source: ABdhPJwyVO8a2hPw1HNvsxx0Cq5OQG8Ylxzv140vNnKfBQMyoeMDhgVgoRzjeFGNWnx1f8ZMnsI5GQ==
X-Received: by 2002:a92:680b:: with SMTP id d11mr21280754ilc.287.1607779351755;
        Sat, 12 Dec 2020 05:22:31 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:3609:: with SMTP id d9ls3030644ila.4.gmail; Sat, 12 Dec
 2020 05:22:31 -0800 (PST)
X-Received: by 2002:a92:c50d:: with SMTP id r13mr22687631ilg.160.1607779351406;
        Sat, 12 Dec 2020 05:22:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607779351; cv=none;
        d=google.com; s=arc-20160816;
        b=TbGwchJT15En0tnj07guVFPibRRspZ8JI0WGxsD/s9Mib2IN2RRwoKf+wnB6ICydwk
         ngcrjdeBw/HRHkxu0vrtVFUNB0nZzRVOIL0PGbfGM4uiL2TWUtw8ETSYTkIrx6EzD/lk
         stm6lSeZP8TgWxBc6UGsfv1j1AN9KeyZD2ZdXhmVuCf9BdQs0Ga6eMVFyXHvBB6P8GCm
         7tclVVEKvb0xgeGd1/PP1B++jBmfXCkOIfhgyubsy8zSlTyrosbaXpu5ctrMXqJXkOGH
         NltrY3JGItUKf47Ik7saeFV25ZdX+5Vj9jRLNwmF/bsloi3b0R6ckDjOXsg7jJywrc2v
         VJlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=VTZpp0n/Om/Jf11Mz+DqRKpiaIjN4mJ897+taVy59Ug=;
        b=qAgqXZdDqhC4oPQYXBdFlv/968E2hMkdd9SMCpHu81P+jI79ewxf2UPVGm7zcP7Vf1
         DV30jEUskOiFIS7yrUPjaeVGo92/Eza/khxSKHeQHq+UZwZHlHfZyjY6GenqJyG+JSz3
         ocrgrl1QsAOFNbhHEpvU9MzDEnQZ1W/eOqhbtlvuvzPCJaEuvrQ+4bsSVDJ/JBMWIwv7
         EXu0eRhQTSAvHc9Flau7AkWJyNBo/C5172t3Y6jdOCOnrj5GfZXzb0PseH/y/R6zehZB
         0/aOdxaV3Erotz6suyIVjpOX0K8Z5pb9sJnTyFVpb39ErGR6Vq6AyAeGYCkNBa3cmpyI
         p1XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gs+DafSa;
       spf=pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id i5si660174ilu.5.2020.12.12.05.22.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 12 Dec 2020 05:22:31 -0800 (PST)
Received-SPF: pass (google.com: domain of andy.shevchenko@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Received: by mail-pg1-x535.google.com with SMTP id w5so8470974pgj.3
        for <linux-ntb@googlegroups.com>; Sat, 12 Dec 2020 05:22:31 -0800 (PST)
X-Received: by 2002:a05:6a00:170a:b029:19d:afca:4704 with SMTP id
 h10-20020a056a00170ab029019dafca4704mr15887538pfc.7.1607779350726; Sat, 12
 Dec 2020 05:22:30 -0800 (PST)
MIME-Version: 1.0
References: <20201210192536.118432146@linutronix.de> <20201210194042.860029489@linutronix.de>
 <CAHp75Vc-2OjE2uwvNRiyLMQ8GSN3P7SehKD-yf229_7ocaktiw@mail.gmail.com>
 <87h7osgifc.fsf@nanos.tec.linutronix.de> <87360cgfol.fsf@nanos.tec.linutronix.de>
In-Reply-To: <87360cgfol.fsf@nanos.tec.linutronix.de>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sat, 12 Dec 2020 15:22:14 +0200
Message-ID: <CAHp75Ve5zzeQw8P2wD083WW5+KGehETTy810wksfpXbj+3GBug@mail.gmail.com>
Subject: Re: [patch 03/30] genirq: Move irq_set_lockdep_class() to core
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Marc Zyngier <maz@kernel.org>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	afzal mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, 
	linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org, 
	Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, 
	Chris Wilson <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>, 
	intel-gfx <intel-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>, 
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Michal Simek <michal.simek@xilinx.com>, linux-pci <linux-pci@vger.kernel.org>, 
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, 
	Tariq Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>, 
	"open list:HFI1 DRIVER" <linux-rdma@vger.kernel.org>, Saeed Mahameed <saeedm@nvidia.com>, 
	Leon Romanovsky <leon@kernel.org>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: andy.shevchenko@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=gs+DafSa;       spf=pass
 (google.com: domain of andy.shevchenko@gmail.com designates
 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=andy.shevchenko@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Dec 12, 2020 at 12:07 AM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> On Fri, Dec 11 2020 at 22:08, Thomas Gleixner wrote:
>
> > On Fri, Dec 11 2020 at 19:53, Andy Shevchenko wrote:
> >
> >> On Thu, Dec 10, 2020 at 10:14 PM Thomas Gleixner <tglx@linutronix.de> wrote:
> >>>
> >>> irq_set_lockdep_class() is used from modules and requires irq_to_desc() to
> >>> be exported. Move it into the core code which lifts another requirement for
> >>> the export.
> >>
> >> ...
> >>
> >>> +       if (IS_ENABLED(CONFIG_LOCKDEP))
> >>> +               __irq_set_lockdep_class(irq, lock_class, request_class);
> >
> > You are right. Let me fix that.
>
> No. I have to correct myself. You're wrong.
>
> The inline is evaluated in the compilation units which include that
> header and because the function declaration is unconditional it is
> happy.
>
> Now the optimizer stage makes the whole thing a NOOP if CONFIG_LOCKDEP=n
> and thereby drops the reference to the function which makes it not
> required for linking.
>
> So in the file where the function is implemented:
>
> #ifdef CONFIG_LOCKDEP
> void __irq_set_lockdep_class(....)
> {
> }
> #endif
>
> The whole block is either discarded because CONFIG_LOCKDEP is not
> defined or compile if it is defined which makes it available for the
> linker.
>
> And in the latter case the optimizer keeps the call in the inline (it
> optimizes the condition away because it's always true).
>
> So in both cases the compiler and the linker are happy and everything
> works as expected.
>
> It would fail if the header file had the following:
>
> #ifdef CONFIG_LOCKDEP
> void __irq_set_lockdep_class(....);
> #endif
>
> Because then it would complain about the missing function prototype when
> it evaluates the inline.

I understand that (that's why I put "if even no warning") and what I'm
talking about is the purpose of IS_ENABLED(). It's usually good for
compile testing !CONFIG_FOO cases. But here it seems inconsistent.

The pattern I usually see in the cases like this is

 #ifdef CONFIG_LOCKDEP
 void __irq_set_lockdep_class(....);
 #else
 static inline void ... {}
 #endif

and call it directly in the caller.

It's not a big deal, so up to you.

-- 
With Best Regards,
Andy Shevchenko

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAHp75Ve5zzeQw8P2wD083WW5%2BKGehETTy810wksfpXbj%2B3GBug%40mail.gmail.com.

Return-Path: <linux-ntb+bncBC6JD5V23ENBBWNX23YAKGQEU56D63I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EF72133DD4
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 10:07:38 +0100 (CET)
Received: by mail-lf1-x137.google.com with SMTP id y21sf691974lfl.11
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 01:07:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578474457; cv=pass;
        d=google.com; s=arc-20160816;
        b=wC0rLFOJHxvnip0xawEJKHdvmZqGYDWZKCIyvvgNaMhxrDOeiMeA6eS0A6T+vosFCQ
         BIrNTOsDp5AEKob0CSNOEQgo3QuhUm6lXslqWepxl1aAqQtFL9rxUFBpKMErs6B0cJrV
         9VnS5B10POd9wt4e8zPvEbf7jjkBFta19OiXbVsbovz18UjPGGlIGV5LJEPBFz2nes+E
         Wpd12JvfpTtOZ/G7j9405BnqAlVjOyIIxm0xUv5aAOVc96EVYVOd3/Xr4g3D9U0TCPoM
         wymY/11PicLdm13XZCrSUcHpSmB0wIBfVJz1a7fpwlvGQkyGQYTRoXbbOapyTzQPO605
         Qvlw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Q7d9om4cCfYCpKdXXGroc+9oKJTz2/KSygaJyC/NHcQ=;
        b=t1Hk4R2T4vYSwEYMU8puDFnHXvYYb0gaWqtu00agml4lFUrHMNjI0DlD0U9pqxuvn1
         u7xBzoqGOHsrAUjXzmoXcXs/etgqCBaDdqANkRjKtWg2bLhSNBuwrm6ZtSbnd5Eq3o2a
         eCjkNsf3SJdMMjD53J8vgPeKssgA0SW2bYRJHRxRG+2VbcCe1z2RChXpobzERs9mtqmW
         HATRvEK/z4tmmGxauBO4lpy7As6aOey4woE0Lq2teA5RMomwVTSx/5ovh9LvtCjI8obQ
         LDMqRytnPhHTfohIoSe8ykf9s2LvJZRawvtXkKrsaToMGoZH6FWkn95IFFsFoRWXRYP6
         823g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.67 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q7d9om4cCfYCpKdXXGroc+9oKJTz2/KSygaJyC/NHcQ=;
        b=VXWYRVhdJvPCwodu/9FPcaEFX03u+JFzcRIW4wIlEteUQoiaOjyxljm/qBecSRBbQP
         A9rBlWmJQxvpN5Ne77i6AtIgQidIuyn3u1WegZUB1zHAZ1UmMuWOavn9xh/FeKfTmhbZ
         g82KhATQiJPxB4tuqxnKHenG23+aXFAQOdb8PVaVuVLzGzB0ijveEWw69lhfOWdkgLNu
         2XW3y97AQesWRiHy+mzQx4As9SiUx5G0WMEt98xzCmF+x1i5pg1yare9lXSHGz+IL61c
         XFXLhJYZ75WfLY5KvLWClSTMLcYuoyCMG05oDidyiqUC9+QAhFl5kOtOoIODmg9JugOE
         6nyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Q7d9om4cCfYCpKdXXGroc+9oKJTz2/KSygaJyC/NHcQ=;
        b=JNGPX6jLUnsEk2a0ZW+ycLXKIyEpVJHqQ1Uw6RkK+c9n792zqpxsC+ocyud6N8ehwz
         nSEkrEgJ2ZCHyS/U2ZVZKMhqbS4BqqHApMt/0r9kuVPB1wgTHbJbKCLGqZEq80rf5+eX
         YMn+3F1l3sJRTFZ0iIJARpaHWKIc8sHfVC3H/zqVs1ErPrIyj/dTRm0brUlzeM/3w8Mh
         rbnh4oEq6QBRD2YxsIPoWYDNP7WU2B5yJmH2VY/IXnhkG8Fa6m+PBSjjumAEOoglSJjw
         RJDEYhMBw35468xdadURSgWJCKiiXbM//yfkVpMnEcOU3E42lSoMI0ofug5zMUemUEs6
         YloA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXyLcBWyARqFXVvCWAsJA7LU6DT5yRuTagHjStrk+Wg2SL5XDjn
	JAOfCG3BiPO6DGy/BjacNb0=
X-Google-Smtp-Source: APXvYqwTIqnW3apukzCBCD3Ny9IgnEEfYM4HqlQtbBzFPQNCh3OPDWhBdo9sv/+Wl027Q73y2tkq2w==
X-Received: by 2002:a2e:80cc:: with SMTP id r12mr2302093ljg.154.1578474457654;
        Wed, 08 Jan 2020 01:07:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:8488:: with SMTP id g130ls186978lfd.11.gmail; Wed, 08
 Jan 2020 01:07:36 -0800 (PST)
X-Received: by 2002:a19:4a:: with SMTP id 71mr2288753lfa.50.1578474456843;
        Wed, 08 Jan 2020 01:07:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578474456; cv=none;
        d=google.com; s=arc-20160816;
        b=DPtLJdSyVfe+1ztlMUXjvMI3uhi75BvsSeil/vAkSrjCTnZWdinjeKzambp+IMNqwY
         f0TNKm5o311qbc3ayuUQxnf/Y/RUXveLEj2d2oa/0eGbPT2RS9rErD/+YGqr28BHjF/L
         DgBgXgnuD7R5KPEmQXSufNePdYM1FMBBVBkLkKRS71nn9f1k+bb9cWFaiuxV+ukR+6+N
         ejPzPxvc5SsMVVihW5KyDAUy2st/g4xTi8BUHde3Xe+43TzCwHSp6K1N/b3+iSpOmu/O
         oXYskCbO9TfSVrelzALbC3kjIXRaUCHUQJviSVa5C9m/1nE9AmnAPxAM+ZrhqjDOLtf1
         xL5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=0jRYcccy+K8+wcIcmevpt3CSwH1FRXDhvGLKKsO8/R8=;
        b=GCORg5zRMCeKKeRHxwgS36BwPhGNnmi62JdE7MLtEOzFzdKi0ar9drObDi7U26NiF2
         8DR4t2B7+DoTFrczUm2wXo5RGCzV69uKwSsKvxej53QPZnGP3qEA7sWc6JSenHBs/dz9
         D0jpDCgp8xERqsJu4F/59fE09sRyYJ94LF0UbW3RMY6VkBz86BqtE8htDnQ2I3lXmROp
         DlrosNice4ZazhGtVv8QrCllQsR8CWaTs+kMxi7Z7PrByBO62ApMvuzvKi5qeaWycq/t
         I6pPEinVmnoDIsxXC7txe5N5TSvceRyENom6Nm7fFlgBsfQxg+q4nLPk4xl6QCwWtXlr
         yfSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.67 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com. [209.85.208.67])
        by gmr-mx.google.com with ESMTPS id v16si102558lfd.2.2020.01.08.01.07.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 01:07:36 -0800 (PST)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.67 as permitted sender) client-ip=209.85.208.67;
Received: by mail-ed1-f67.google.com with SMTP id c26so1935916eds.8
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 01:07:36 -0800 (PST)
X-Received: by 2002:a17:906:404:: with SMTP id d4mr3768395eja.326.1578474456276;
        Wed, 08 Jan 2020 01:07:36 -0800 (PST)
Received: from pi3 ([194.230.155.149])
        by smtp.googlemail.com with ESMTPSA id j3sm53121edb.50.2020.01.08.01.07.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 01:07:35 -0800 (PST)
Date: Wed, 8 Jan 2020 10:07:32 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Alexey Brodkin <abrodkin@synopsys.com>,
	Vineet Gupta <vgupta@synopsys.com>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	Helge Deller <deller@gmx.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>, Dave Airlie <airlied@redhat.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Ben Skeggs <bskeggs@redhat.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jiri Slaby <jirislaby@gmail.com>,
	Nick Kossifidis <mickflemm@gmail.com>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Dave Jiang <dave.jiang@intel.com>, Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	alpha <linux-alpha@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	arcml <linux-snps-arc@lists.infradead.org>,
	Parisc List <linux-parisc@vger.kernel.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	Linux-sh list <linux-sh@vger.kernel.org>,
	DRI Development <dri-devel@lists.freedesktop.org>,
	nouveau@lists.freedesktop.org,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	linux-wireless <linux-wireless@vger.kernel.org>,
	netdev <netdev@vger.kernel.org>, linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	Linux-Arch <linux-arch@vger.kernel.org>
Subject: Re: [RFT 02/13] alpha: Constify ioreadX() iomem argument (as in
 generic implementation)
Message-ID: <20200108090732.GA10145@pi3>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
 <1578415992-24054-3-git-send-email-krzk@kernel.org>
 <CAMuHMdXHhF6GhS1W8qS4j7Jv5YnxXjcRopT5QSA=+trc8qwFng@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMuHMdXHhF6GhS1W8qS4j7Jv5YnxXjcRopT5QSA=+trc8qwFng@mail.gmail.com>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.67 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jan 08, 2020 at 09:10:06AM +0100, Geert Uytterhoeven wrote:
> Hi Krzysztof,
> 
> On Tue, Jan 7, 2020 at 5:53 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > The ioreadX() helpers have inconsistent interface.  On some architectures
> > void *__iomem address argument is a pointer to const, on some not.
> >
> > Implementations of ioreadX() do not modify the memory under the address
> > so they can be converted to a "const" version for const-safety and
> > consistency among architectures.
> >
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> > --- a/arch/alpha/include/asm/io.h
> > +++ b/arch/alpha/include/asm/io.h
> > @@ -151,9 +151,9 @@ static inline void generic_##NAME(TYPE b, QUAL void __iomem *addr)  \
> >         alpha_mv.mv_##NAME(b, addr);                                    \
> >  }
> >
> > -REMAP1(unsigned int, ioread8, /**/)
> > -REMAP1(unsigned int, ioread16, /**/)
> > -REMAP1(unsigned int, ioread32, /**/)
> > +REMAP1(unsigned int, ioread8, const)
> > +REMAP1(unsigned int, ioread16, const)
> > +REMAP1(unsigned int, ioread32, const)
> 
> If these would become "const volatile", there would no longer be a need
> for the last parameter of the REMAP1() macro.
> 
> >  REMAP1(u8, readb, const volatile)
> >  REMAP1(u16, readw, const volatile)
> >  REMAP1(u32, readl, const volatile)
> 
> Same for REMAP2() macro below, for iowrite*().

Good point, thanks!

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200108090732.GA10145%40pi3.

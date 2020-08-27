Return-Path: <linux-ntb+bncBD2YD3N55IFRB6E4TT5AKGQEH4HS5PA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4AC253B7B
	for <lists+linux-ntb@lfdr.de>; Thu, 27 Aug 2020 03:38:01 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id m16sf2714635pgl.16
        for <lists+linux-ntb@lfdr.de>; Wed, 26 Aug 2020 18:38:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598492280; cv=pass;
        d=google.com; s=arc-20160816;
        b=ozQ3LCbD53BJjg/I7TfBMSDCZdMj+uS85OtRooeuGaX5uNtlkWZ8Us12SlmHeGeufy
         gZ0n6qgtk+9UsPsTmPNxQifZObqgf0SZyHnZOfz0NAdxC71WZC8rErqfpnRQbMRRM+jp
         Qd9X57t9IOShs564dtNoFXPrdpWKgVsDHwy9PEVSAKLA8csmhKEzUwfb4QfErlLJXl65
         0vD49gl7K2eCGeYs9aABfYrmBjMbzItf36mRKtuvs79WuHGFoIBxJfvFam6+piG+bN8d
         d/H1/0e6k8a6y4NiiBdD6F2FKZJAUAmfTEfUQ0ADcygLJ46GEHY198gR9mGbGCcnVTjE
         3SrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=0V1jLTy9ZMEdxumbK3VqbXBb/uCqlDF13vuWIuuC3TM=;
        b=UCsGr1kd4lU9TFXtd5HDyyIYCxOhJuNf7HtD/IzI+moCn1KKrg4bWmZevZcvnimMuq
         CcfRDSZ8ZGlk5Jxv8o5mjkQKAGlVSPwvwWzr6EltNDzloMaOr2wZY+3o35rAaFeF+pGR
         etEj6xe9jjdK8AOyrQCG4tNXKHd3DGYXslZZ3eMb/y0AlLd5EEYtuuB0yN0KN2dO2gPp
         p7+gWFdu8kdRYYewAk2FmC0ua4A5B5GZOG6YwKjz2hA6DZaNUF1tBkN2Oh5LL6WnX0CW
         zp84k0gZC7eO7EpPr7xsSdAw4kKvffTZkdjxAQGAKkl6A2LB/wqDMOByVmJSsEuHMFP3
         O9pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I80xaBRJ;
       spf=pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0V1jLTy9ZMEdxumbK3VqbXBb/uCqlDF13vuWIuuC3TM=;
        b=nku8vxrFNYJ5UR9+f41+FfkeLY+RPYKUNb5cwJhyYjpAEulY7N5Etj5d7ffoXxhYrw
         wK1AJkXss4gsOKeOyJIHX+e6n+vE/3npGqZj+/3wZK/5rFnI4uiNxOy2ujAfKc0CT8XK
         QO9JR4XH1kLWu6TeCOJUxuwk99oUdqZ+5LcqLDYFGRpXQQxBq46NJRgh9WNGD6eWC+z7
         CJpcz1xqOJxitzgqIYu0rlZFmnqw9xU70TSVd9Hrc0iXnPaz2YxTkBV0VdZNjdylbT0r
         +Tkj4Kf5HR3IYNVb0Tirq0PiJPMvhUgZSPs1Ab+bi/TfbPO1oD4mIREeuQyf7/dWfZNQ
         gSnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0V1jLTy9ZMEdxumbK3VqbXBb/uCqlDF13vuWIuuC3TM=;
        b=TbcpFLUnc3qdTcSjDMqTJG1VqLwzEfOqctpRKt0Ez1kUgoHEC3maTPeWeyKoPv7vam
         /+4v3ZqoNuNcxBi/Xe/21nIJicHiysOcVWaTn2UT4xiq/EnnjPJm/Ks8GPDRmrMlVvHR
         xAkFYNWTp2yh1ILdEz7aZMVxwpmb43uuGAfYUqYP9EjfKUIVDjhByItt3aV2ycFMqyV3
         iRG8So7I/yuvOAwnjB7sZ40YUs+7A6IB9cWGB5BiK/tng1eO8osOsFzalIUPnqPnu3YD
         mQXKozerYcpmmGRJTFqmRl391fQcA8wTcFpXWQORiMPd6jyr18wIfipLfihZgFcVfShc
         hFnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0V1jLTy9ZMEdxumbK3VqbXBb/uCqlDF13vuWIuuC3TM=;
        b=RlXqfeCndW3qag4Y6tBPzki8deYpnxwAotQcpFpVNpHlXUZ0fJ4w6/3ets9po//n8E
         jRChOUcoKHwK1ryKrj6ptsJ8e1sJCmOpuemHZLhuo+F4GPEpCcE18IybauWRvmvEyWMb
         gsi4Gi5XXZc+Z85e6eJ9JIWw77x9xd0d/8E705NXTUgwrES/xk0kO1wLcdKpYerv52yH
         y3DogzsQH50S1W9lyL0DTmdTGYJnMeoFAXmPTHblSoOtdL+iAEm5gLzdre5iiEvf08Cz
         +FSCYu0TiYYzE35HeUcqX+2aiFEbmOV/sA7TCG6gXWA1iP95E5hvmkdHHvSRSFI1IFba
         n8rw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532IEJTIDrCK730bbTYiEzzFX8h5UizrITAhTnt7WsDe4PtcuaVZ
	IRqw7s6JzbvmDHG5gv0G3Ps=
X-Google-Smtp-Source: ABdhPJzbxtbHl6xJOsXcWlhwJeKWj+LAY/0Wuwx/1pi6AFa9+nk4IC3S6tKHhiQC7WFYTmVai587mA==
X-Received: by 2002:a17:90a:5884:: with SMTP id j4mr8663417pji.217.1598492280383;
        Wed, 26 Aug 2020 18:38:00 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:358b:: with SMTP id mm11ls258449pjb.2.gmail; Wed, 26
 Aug 2020 18:37:59 -0700 (PDT)
X-Received: by 2002:a17:902:a584:: with SMTP id az4mr13915005plb.165.1598492279869;
        Wed, 26 Aug 2020 18:37:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598492279; cv=none;
        d=google.com; s=arc-20160816;
        b=IUHdylYuVyK/6Mcbwy5fMfNOfGFiE4HeUa1EPx7kKlwCS+NaTr0IaN6EWjyHRtBFUv
         xwFSpTIEdKKMxdunWqamLhoJAqvDCGTjdp9k7PGTYain7e2NROetG0sr7U2cF4VvnM7N
         4pG4BBDZ2VMDVASeD9i+MB2psjfogrWNB90fAIyTBCgaCvu7u8ImZrjFqixB9Hlfsspi
         QxGh/vNn+z8wA6x/gfv4cIAFFxry0tyO1qMtHf+AiQBd9ANmmV7GiNG4ljRg77JW8x5J
         DPKvNr+4ENd2A7jZpxOsoH8rFnzaAG1lfkrWUaVZZN8mraUHW638Srpyz9OFNa2P2dOK
         1Bwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Rsb5LLd+wEYl5+11BE05ItDTZCXQhjeMW019xM5KW9w=;
        b=fBWD9Vf7/brYJNdw+e3UOjCQnIK3ZGcmlzgi70Ix0W5C/YaHHvFzljghlgLLnE8LrJ
         TU10wrGs5JRwQz2Emol3HkLHM0DWhdRjq5TBs7D7Ms69tFc+iUbmbQ+Rl7Ilu4BHwgMz
         VtATOVq5dbgbQO+ZX491U5oZuJXvxryE+2bbgUesOYHvy9fQOsh/9XKsTVV6c/F6LxsK
         mnJ2iTbkNHptCFM9744ce7i9O4wDjiKOxne0vqs1GuScmqH9VTpKPQVuANR6Qbug28I2
         Pi8QjqzVKG3h1tO75T/HYg+Z7yL74uzPRCdCkFrDVP+WcUyT/bE/VkRUUrQlw2DOOK6w
         9Tiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I80xaBRJ;
       spf=pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id y204si48006pfc.3.2020.08.26.18.37.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 18:37:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Received: by mail-oi1-x243.google.com with SMTP id n128so3324491oif.0
        for <linux-ntb@googlegroups.com>; Wed, 26 Aug 2020 18:37:59 -0700 (PDT)
X-Received: by 2002:aca:ec95:: with SMTP id k143mr5299041oih.76.1598492278869;
 Wed, 26 Aug 2020 18:37:58 -0700 (PDT)
MIME-Version: 1.0
References: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook> <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com> <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com> <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
 <1597873172.4030.2.camel@HansenPartnership.com> <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
 <20200826095528.GX1793@kadam> <202008260811.1CE425B5C2@keescook>
In-Reply-To: <202008260811.1CE425B5C2@keescook>
From: Allen <allen.lkml@gmail.com>
Date: Thu, 27 Aug 2020 07:07:47 +0530
Message-ID: <CAOMdWSLyacdeoqnZBuLu6z1B6cY-WbtUJQm6+8=WHyE49tVaEg@mail.gmail.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: Kees Cook <keescook@chromium.org>
Cc: Dan Carpenter <dan.carpenter@oracle.com>, Allen Pais <allen.cryptic@gmail.com>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, linux-atm-general@lists.sourceforge.net, 
	manohar.vanga@gmail.com, airlied@linux.ie, linux-hyperv@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, sre@kernel.org, 
	anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org, 
	linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net, 
	maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de, 
	jassisinghbrar@gmail.com, linux-spi@vger.kernel.org, 3chas3@gmail.com, 
	intel-gfx@lists.freedesktop.org, Jakub Kicinski <kuba@kernel.org>, 
	mporter@kernel.crashing.org, jdike@addtoit.com, oakad@yahoo.com, 
	s.hauer@pengutronix.de, linux-input@vger.kernel.org, 
	linux-um@lists.infradead.org, linux-block@vger.kernel.org, 
	Mark Brown <broonie@kernel.org>, openipmi-developer@lists.sourceforge.net, 
	mitch@sfgoth.com, linux-arm-kernel@lists.infradead.org, 
	Jens Axboe <axboe@kernel.dk>, linux-parisc@vger.kernel.org, netdev@vger.kernel.org, 
	martyn@welchs.me.uk, dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, alex.bou9@gmail.com, stefanr@s5r6.in-berlin.de, 
	Daniel Vetter <daniel@ffwll.ch>, linux-ntb@googlegroups.com, 
	Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org, 
	David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: allen.lkml@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=I80xaBRJ;       spf=pass
 (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::243
 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Aug 26, 2020 at 8:43 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Aug 26, 2020 at 12:55:28PM +0300, Dan Carpenter wrote:
> > On Wed, Aug 26, 2020 at 07:21:35AM +0530, Allen Pais wrote:
> > > On Thu, Aug 20, 2020 at 3:09 AM James Bottomley
> > > <James.Bottomley@hansenpartnership.com> wrote:
> > > >
> > > > On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > > > > > [...]
> > > > > > > > Since both threads seem to have petered out, let me suggest in
> > > > > > > > kernel.h:
> > > > > > > >
> > > > > > > > #define cast_out(ptr, container, member) \
> > > > > > > >     container_of(ptr, typeof(*container), member)
> > > > > > > >
> > > > > > > > It does what you want, the argument order is the same as
> > > > > > > > container_of with the only difference being you name the
> > > > > > > > containing structure instead of having to specify its type.
> > > > > > >
> > > > > > > Not to incessantly bike shed on the naming, but I don't like
> > > > > > > cast_out, it's not very descriptive. And it has connotations of
> > > > > > > getting rid of something, which isn't really true.
> > > > > >
> > > > > > Um, I thought it was exactly descriptive: you're casting to the
> > > > > > outer container.  I thought about following the C++ dynamic casting
> > > > > > style, so out_cast(), but that seemed a bit pejorative.  What about
> > > > > > outer_cast()?
> > > > > >
> > > > > > > FWIW, I like the from_ part of the original naming, as it has
> > > > > > > some clues as to what is being done here. Why not just
> > > > > > > from_container()? That should immediately tell people what it
> > > > > > > does without having to look up the implementation, even before
> > > > > > > this becomes a part of the accepted coding norm.
> > > > > >
> > > > > > I'm not opposed to container_from() but it seems a little less
> > > > > > descriptive than outer_cast() but I don't really care.  I always
> > > > > > have to look up container_of() when I'm using it so this would just
> > > > > > be another macro of that type ...
> > > > > >
> > > > >
> > > > >  So far we have a few which have been suggested as replacement
> > > > > for from_tasklet()
> > > > >
> > > > > - out_cast() or outer_cast()
> > > > > - from_member().
> > > > > - container_from() or from_container()
> > > > >
> > > > > from_container() sounds fine, would trimming it a bit work? like
> > > > > from_cont().
> > > >
> > > > I'm fine with container_from().  It's the same form as container_of()
> > > > and I think we need urgent agreement to not stall everything else so
> > > > the most innocuous name is likely to get the widest acceptance.
> > >
> > > Kees,
> > >
> > >   Will you be  sending the newly proposed API to Linus? I have V2
> > > which uses container_from()
> > > ready to be sent out.
> >
> > I liked that James swapped the first two arguments so that it matches
> > container_of().  Plus it's nice that when you have:
> >
> >       struct whatever *foo = container_from(ptr, foo, member);
> >
> > Then it means that "ptr == &foo->member".
>
> I'm a bit stalled right now -- the merge window was keeping me busy, and
> this week is the Linux Plumbers Conference. This is on my list, but I
> haven't gotten back around to it. If you want, feel free to send the
> container_from() patch; you might be able to unblock this faster than me
> right now. :)
>

Sure, Thanks.



-- 
       - Allen

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAOMdWSLyacdeoqnZBuLu6z1B6cY-WbtUJQm6%2B8%3DWHyE49tVaEg%40mail.gmail.com.

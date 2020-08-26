Return-Path: <linux-ntb+bncBCF5XGNWYQBRBHPYTH5AKGQEUORIV5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2B3253324
	for <lists+linux-ntb@lfdr.de>; Wed, 26 Aug 2020 17:13:34 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id p138sf3177445yba.12
        for <lists+linux-ntb@lfdr.de>; Wed, 26 Aug 2020 08:13:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598454813; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dt/9brsPNvufmw/17kFSzgSG9dLJqy2/Qd2kl+sP9pjFXGrX14GTnMFitvfmeckoKZ
         /azscvF7ZfLUZLW0Q83sp+1/PfuiyYUFaT2KWAG7nq/YxtMGhN5BXcebH0sKyZOvoBTz
         mJGqPkjjOqlG8Lv3AFIkPNnua4RMspmndEhzp2Zk7/sA/v4I66Ja++1CLs0Mrok3+heI
         Aqp0+PdTafuYYmMy4d+WIKnSFcZULNqi7g+LaWRAKSEWOnVgNBiIc7CX0utfDO8CljHD
         ZlybtM/jPKhqxcIr918b0sJVfXXQ1idfr2e5dcX5OF5TqRKPC+h/KcwFTfOuVsSo3OYE
         oRIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=dh4vMr5adRPZbvoh8iQSdkzIThnUxPdk4iWZORt80Eg=;
        b=AsXR4Q4fc4YgcOYKdAReX7tEANZPlOAZz58owIOf7zoZqCrjQ81DrwCEAAJqE0/5EH
         N7ZjBD2pP2W7iMHnP6NhQq5rtsqfU/YLBVruK63gv6s+Wq46G7J2IdXhGydLpyzX/V1H
         rTKeEuJZjvsCAyIkYQWwA3FO2+6qZNGRDVMrbr5FFtZuzqDmHnn88wOulh+jZT6BrMg4
         pVG9Kn2uylehq33qoRyiaraTqBsYy5+VhSPKtnPkTJci5zZMYKKM+uvgZAZAtJOnCu1o
         d0WxiFpQlMXslqdyFOFVGUZImyQfYP4G8OaILtw0yXte8bvwuZl6iO65ounDLK30Y7na
         +xvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZqQGx8lC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dh4vMr5adRPZbvoh8iQSdkzIThnUxPdk4iWZORt80Eg=;
        b=RHxBtKfX3uh8RIJaepJlYiayJMHyP4usose360Rkw87bckbdMvnpRIWAZyavcPTSsa
         tmrCHQNTfzhOTLNzg4a6nm7YLfCyjxw/PRpHds926fKyci2gwyBq6zh1WfNtib9rfB8H
         vwl0vk4cBw5Fc2lDah/pM9i8JTQ6D09d3NT9Ws+hGFMvCAT88mVkB98iXXHs0PoXKfNd
         xjLOrRGBu4fRtQqlRvqbp5frndOWVf0ZquXYapM9JnlYfx2zpA/6fMsmtjbY9jC6jaQQ
         9EHjLk7G4CtXM312PgaiD+s72min9UTS5NHopz3ZXk9YulnINIyhh5KycWKSGsEHHoyB
         dN+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dh4vMr5adRPZbvoh8iQSdkzIThnUxPdk4iWZORt80Eg=;
        b=cA5qNXs33JkLIsg1MDgQFM7Hp2CDueMJzrG8jGma72YZeUkwKVmSJ7l1M0DIFDEGGK
         rzuzN+mdgFE+Hy8wyBKtXd3hacV94HgmJWSN8o4JfmQ5iVDfWs66y9/xWdZOhI3H3RXA
         ZoPkE5sFmJRqmLoEJNJ3xUZXjJ8muI2ulTSt/4hLBOWXjwO/Vc2jrgIwLFBHRSXf+lAx
         dP1B94YXQ6UYxn2F679hPsVxW9knAvX6JeT8EnILxf07HSmakr6Zp81E9A2pXh4mleu7
         gQ/qcFhzXf+uGHJAKeodBMsmgaxsN2MvId+fjOYjLYKe9ZWG4neS5oQHzgvwdCUVWnld
         wxtA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530lZpBsQf54mh/QhZP+rhhcJZoEGd7GyAqkjasl650HSRNnr52J
	/nIw49tLb26WaRilVTCTEWc=
X-Google-Smtp-Source: ABdhPJw2yrlu4d7+YWX9DQJAppDmKgU/40tsWsajOJsYQir56HuTngkDNTw8WPSiiP0igqgxbJ4adQ==
X-Received: by 2002:a25:e00e:: with SMTP id x14mr21799921ybg.263.1598454813400;
        Wed, 26 Aug 2020 08:13:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:ab50:: with SMTP id u74ls462495ybi.6.gmail; Wed, 26 Aug
 2020 08:13:33 -0700 (PDT)
X-Received: by 2002:a5b:f4e:: with SMTP id y14mr23912702ybr.71.1598454812981;
        Wed, 26 Aug 2020 08:13:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598454812; cv=none;
        d=google.com; s=arc-20160816;
        b=slTRHeQFpY6Gr166eA9mqZJ1Y6JcV9xxe5Q0LS1SeDi1hIkX3EJTYW4CluHsOn+HWi
         HhcZizRwxg9bKSQMisPHClCHR2GXLH2ud6NiJZcAs3RmIOedunC+s2RcujAc4GqBz0/f
         LUwr8XfLmHRBpqxyYmawWRDW0KkI6372gU9Bz0gdOY+le31QRYvmvX1ninRW+udW/TX8
         miNLmkWSbx0vtocfwFIFnXF9/VsyxoNBVR5fhY44Mun3KUDN41ZIWuN+/r/5tFD0Xmku
         bO9aKd76b4CoAvVN5A/QA5MbJpkQRSXQb1cfehE55hfsmCjL4jrx0LwS9UJeOHw2ckHs
         AP9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CmlsOBKmXTTcSfq5zGubBNNUb0gupInXkPP8EnZ3d+A=;
        b=H5nj8nVEFHzHwvBU2L1e3u9biZFY8V4MlCNLm57E680VCAf3TWsZY1pXiLouG1Z8Qp
         6mfnS1x07dQ7vI6e/T5+rsUiMd35vvmHMG0y1SQZ3Ay4qHq/aERbrONpJvxtXNsO5hOt
         Gor9Za4MHvY87vChsLfxbNemGXg3QERxmTm8W9kIrG35bZfgO3X1o48vxxnSBttqnBoC
         keqt/MGMIlSVpH/C/xXh3Krs7+4pT1J9+nILMpQHHV17+I+89YJqzOv3Oqmf1heIUPc2
         W03c9o2Kx8BeHEAP4QdhlnHt6MmCaBkgsN0QZCBacDUMXQXhraY2sQ4w3v09hd9Dczyb
         fQEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=ZqQGx8lC;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id p14si12060ybl.4.2020.08.26.08.13.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 08:13:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id i10so1187367pgk.1
        for <linux-ntb@googlegroups.com>; Wed, 26 Aug 2020 08:13:32 -0700 (PDT)
X-Received: by 2002:a63:f909:: with SMTP id h9mr10562477pgi.250.1598454811989;
        Wed, 26 Aug 2020 08:13:31 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d127sm3380122pfc.175.2020.08.26.08.13.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Aug 2020 08:13:30 -0700 (PDT)
Date: Wed, 26 Aug 2020 08:13:29 -0700
From: Kees Cook <keescook@chromium.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Allen Pais <allen.cryptic@gmail.com>,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
	airlied@linux.ie, linux-hyperv@vger.kernel.org,
	dri-devel@lists.freedesktop.org, sre@kernel.org,
	anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
	linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
	jassisinghbrar@gmail.com, linux-spi@vger.kernel.org,
	3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
	Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
	jdike@addtoit.com, oakad@yahoo.com, s.hauer@pengutronix.de,
	linux-input@vger.kernel.org, linux-um@lists.infradead.org,
	linux-block@vger.kernel.org, broonie@kernel.org,
	openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
	linux-arm-kernel@lists.infradead.org, Jens Axboe <axboe@kernel.dk>,
	linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
	martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
	linux-mmc@vger.kernel.org, Allen <allen.lkml@gmail.com>,
	linux-kernel@vger.kernel.org, alex.bou9@gmail.com,
	stefanr@s5r6.in-berlin.de, Daniel Vetter <daniel@ffwll.ch>,
	linux-ntb@googlegroups.com, Romain Perier <romain.perier@gmail.com>,
	shawnguo@kernel.org, David Miller <davem@davemloft.net>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
Message-ID: <202008260811.1CE425B5C2@keescook>
References: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
 <1597873172.4030.2.camel@HansenPartnership.com>
 <CAEogwTCH8qqjAnSpT0GDn+NuAps8dNbfcPVQ9h8kfOWNbzrD0w@mail.gmail.com>
 <20200826095528.GX1793@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200826095528.GX1793@kadam>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=ZqQGx8lC;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Wed, Aug 26, 2020 at 12:55:28PM +0300, Dan Carpenter wrote:
> On Wed, Aug 26, 2020 at 07:21:35AM +0530, Allen Pais wrote:
> > On Thu, Aug 20, 2020 at 3:09 AM James Bottomley
> > <James.Bottomley@hansenpartnership.com> wrote:
> > >
> > > On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > > > > [...]
> > > > > > > Since both threads seem to have petered out, let me suggest in
> > > > > > > kernel.h:
> > > > > > >
> > > > > > > #define cast_out(ptr, container, member) \
> > > > > > >     container_of(ptr, typeof(*container), member)
> > > > > > >
> > > > > > > It does what you want, the argument order is the same as
> > > > > > > container_of with the only difference being you name the
> > > > > > > containing structure instead of having to specify its type.
> > > > > >
> > > > > > Not to incessantly bike shed on the naming, but I don't like
> > > > > > cast_out, it's not very descriptive. And it has connotations of
> > > > > > getting rid of something, which isn't really true.
> > > > >
> > > > > Um, I thought it was exactly descriptive: you're casting to the
> > > > > outer container.  I thought about following the C++ dynamic casting
> > > > > style, so out_cast(), but that seemed a bit pejorative.  What about
> > > > > outer_cast()?
> > > > >
> > > > > > FWIW, I like the from_ part of the original naming, as it has
> > > > > > some clues as to what is being done here. Why not just
> > > > > > from_container()? That should immediately tell people what it
> > > > > > does without having to look up the implementation, even before
> > > > > > this becomes a part of the accepted coding norm.
> > > > >
> > > > > I'm not opposed to container_from() but it seems a little less
> > > > > descriptive than outer_cast() but I don't really care.  I always
> > > > > have to look up container_of() when I'm using it so this would just
> > > > > be another macro of that type ...
> > > > >
> > > >
> > > >  So far we have a few which have been suggested as replacement
> > > > for from_tasklet()
> > > >
> > > > - out_cast() or outer_cast()
> > > > - from_member().
> > > > - container_from() or from_container()
> > > >
> > > > from_container() sounds fine, would trimming it a bit work? like
> > > > from_cont().
> > >
> > > I'm fine with container_from().  It's the same form as container_of()
> > > and I think we need urgent agreement to not stall everything else so
> > > the most innocuous name is likely to get the widest acceptance.
> > 
> > Kees,
> > 
> >   Will you be  sending the newly proposed API to Linus? I have V2
> > which uses container_from()
> > ready to be sent out.
> 
> I liked that James swapped the first two arguments so that it matches
> container_of().  Plus it's nice that when you have:
> 
> 	struct whatever *foo = container_from(ptr, foo, member);
> 
> Then it means that "ptr == &foo->member".

I'm a bit stalled right now -- the merge window was keeping me busy, and
this week is the Linux Plumbers Conference. This is on my list, but I
haven't gotten back around to it. If you want, feel free to send the
container_from() patch; you might be able to unblock this faster than me
right now. :)

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202008260811.1CE425B5C2%40keescook.

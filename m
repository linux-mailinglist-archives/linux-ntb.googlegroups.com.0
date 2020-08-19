Return-Path: <linux-ntb+bncBCUJ7YGL3QFBB2WS6T4QKGQE3DHXUMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 505C4249FE5
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 15:30:20 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id n32sf14161280pgb.22
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 06:30:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597843819; cv=pass;
        d=google.com; s=arc-20160816;
        b=CtgAsQk/Xs937gMP6kHO6jUFaZORPrW2HLkXrca+CgwBoVTZ5vwD1oD2lgvSd5VwnF
         Qz2ZXkfG9O1mR7sJUH2pey8wCjCxoIebrugVWUby+ZUC146hF98/un4tVamiqyUcrs3w
         p5V8wMcFgf7maxmbRG8jRlj1sF/fJ3qcFjUzZ2UqUkC2dHIWbV7AkeGfv6S1ThaWPJAX
         tbC12G2QwQU6xpS8ZEuT2H2mxW8vRckLPNCM864vfg+7fEU1+DwUv9H2L5FshHWA2JXA
         uUTw1F6AsV4IEIyyj+EHQXhElTfpaj6Fh/wMmTEXcnPsRz+Epl/bmVbQRX1noM0cNoUQ
         d9Sg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=mUIqYYCA/8tat2t0bhfyTXXUbuUbITdTv23c1HvbzP0=;
        b=a3RuMeHHg9+NKUR585ssFm7z20xRnMrZY39D3t9ETlZivxCUdd1YM85Sl+XVu+D33k
         3Gai5kQP20Qgz5sDxARujJHoIMQ0F4j1igSsIDb36nc157OwopYhSAg1aJXCkf1JFpg6
         OTJcCnvo8/8D2OI6RYf8oHQV5NoHOhIJ07peCRZrFJz+KXowOd2sfWRpODklmY9Re0l7
         jC6IXgPFKxkhTJPGLJDmw2NJ8HTtErHLM6YUWGXUdFpSBcO6f0UHdn4zA7np1EC9yKNF
         Vo1tdlnuLoga6EgwqGGM6/KYsIsVtm1S5n72AfglTc7LrrGvUM/5+udZo8VNdlBNmpbE
         Hu7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ybzJlclj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mUIqYYCA/8tat2t0bhfyTXXUbuUbITdTv23c1HvbzP0=;
        b=pAi7JKQI5Y+ubZGCr06HKmlJpLrNk9CaLIg/lyVA+hxQQu/yrDOIPS46G+uhc2q5hm
         Lt7zZxEejqI+7Q+Yszubp/IuSOTAZlLtJOm5CNbY5VLvEOXUJ6BwrIzLVY0ZgtA1n3Eh
         FfHZAnrjgfwC3YEbAoQOJ6Q4Cdsg7hPckwoTRSVcG7A5J5DKDtoDUWcdMaQyIdGyKNn/
         ItI+DoMr1SBG8oudzU+2WVSQ3c9i3ojkpbxkadfMlUDH+Ke/X1u8JyzCwR/z5kLccxfP
         TUe02J/VZpW4sZVQ5fUK735JF+cjYaVsHOtBH6QuSR57oiQA4TC+0BmQEcer0x/4xgCY
         3uSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mUIqYYCA/8tat2t0bhfyTXXUbuUbITdTv23c1HvbzP0=;
        b=ZFz7PZaTY4+91m2GEIr2iWKlLvhMImAZXk+CtBrs8Sf00n6szWwduKlUGgz8EyJTKM
         j6xA/AgBm229u3DPDFAZdpGaWgSZKOIoGSnDTCJwEkaQpDo6svBQNUjxVmAqSQeqvxyB
         pnj8LxsDB0m0viR8JlvEAZBuPQV3KJjWp6c6WUlel42chzdR9lcpjFXArPK3GOFZx4He
         gu0wykm1sSTNyfDJLP4yOsw8MraXcB823TsFTzZ1dM0N6Q2zTgraHWy1+dg/Ac1Rnbih
         pCyIUpcmaF3hKDL5xcPdCQIogofd0uNM+r91ZXtDHxHjuFAMF98ylqPEugvbZFLjMrwo
         8Hiw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532qzK0nKCVzQJ+I9qhilOxQ2XWLaMIM9mR0NmDpqpVZxDkDWwHi
	Luh/az8W2nd7yUXEBl72voY=
X-Google-Smtp-Source: ABdhPJy8Ix0TD0SDNZPoeuYheHvwjpI393oHNTODdJsoTjIPeL+Jxrl5MTufcxbXKvxgRbyFOUlU3A==
X-Received: by 2002:a17:902:b7c1:: with SMTP id v1mr19645219plz.171.1597843818827;
        Wed, 19 Aug 2020 06:30:18 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:d303:: with SMTP id b3ls10238225plc.2.gmail; Wed, 19
 Aug 2020 06:30:18 -0700 (PDT)
X-Received: by 2002:a17:902:bb90:: with SMTP id m16mr13475816pls.144.1597843818384;
        Wed, 19 Aug 2020 06:30:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597843818; cv=none;
        d=google.com; s=arc-20160816;
        b=IWKlTy4RzeqBFPskhb5WJGZKY0doJknfXTf2Qmi1hyxaAYIwlaTu5Ld0iApIieH/QL
         mr/6XPLLNMyJOezdTP+zgFIzBzvOyxq4tIwlp4J+8yeF/2ky7Wdn0Um5iPHlsgEXyfii
         WwZqWfyESTYFeroPRNX27f48F/6/IXlnKaM3E8iL4Bgw34T/HBxuiC4+09/ftpxVl5Uo
         hToGjKguJbnEO5GWlQXgVaswPXRyfO5DLqP5x6GXG0HyfkY3nlgF2Qw4V8tQgQJWf8OF
         GgmyI+iEWSU9bVAN2cnjFDVrUok4k9i0rUS8mXU0XDtoR5I8vNsSOnaFnw17Qo2ZWd1F
         Bc/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Vl37xWXt/ZfoQR80hkwKdqE3y+oWaf5GPKKgwu8kD28=;
        b=jELMeIdRlAAZcG/z2zRb3yJQdYGJzKgS5bR57hIu3IL3tQ+RVsiCSNYycO0aVP3fjA
         XinL3TBIi/SGNF8SCEDISHiwCLCDVrVn6MTLR267P7U4jKDP7ANa+9MngF+f44Ie8qYK
         Beh1+MkzCpeuW/LICtWRUJAyrrItamYu/lx/JhS1OujPx3KswsKB4yFkRz/Vy7eaRyxu
         0U5AgvCHuPQdW4V2kcSXKohOX6fTH2WqsuHWxtJ/0O6snEJuLPJpUHPnQuw+L14Mb04M
         wrywspB8CtWyrbZ88K3trPx7EK5OKLnUCjm4LmzplU5mL6Z934fKAocR7iJQhOCkFBDJ
         5zzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ybzJlclj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s2si1394427pgh.4.2020.08.19.06.30.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Aug 2020 06:30:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 42672205CB;
	Wed, 19 Aug 2020 13:30:17 +0000 (UTC)
Date: Wed, 19 Aug 2020 15:30:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jens Axboe <axboe@kernel.dk>
Cc: ulf.hansson@linaro.org, jassisinghbrar@gmail.com,
	s.hauer@pengutronix.de, manohar.vanga@gmail.com, airlied@linux.ie,
	linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	James Bottomley <James.Bottomley@hansenpartnership.com>,
	linux1394-devel@lists.sourceforge.net,
	anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
	linux-s390@vger.kernel.org, maximlevitsky@gmail.com, richard@nod.at,
	deller@gmx.de, linux-atm-general@lists.sourceforge.net,
	3chas3@gmail.com, linux-input@vger.kernel.org, kuba@kernel.org,
	mporter@kernel.crashing.org, jdike@addtoit.com,
	Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
	intel-gfx@lists.freedesktop.org, linux-um@lists.infradead.org,
	linux-block@vger.kernel.org, broonie@kernel.org,
	openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
	linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
	netdev@vger.kernel.org, martyn@welchs.me.uk,
	dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org,
	Allen Pais <allen.lkml@gmail.com>, linux-spi@vger.kernel.org,
	alex.bou9@gmail.com, Allen Pais <allen.cryptic@gmail.com>,
	stefanr@s5r6.in-berlin.de, daniel@ffwll.ch, sre@kernel.org,
	linux-ntb@googlegroups.com, Romain Perier <romain.perier@gmail.com>,
	shawnguo@kernel.org, davem@davemloft.net
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
Message-ID: <20200819133039.GA3192753@kroah.com>
References: <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <20200819131158.GA2591006@kroah.com>
 <4f5a225d-460f-978f-e3cf-3f505140a515@kernel.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <4f5a225d-460f-978f-e3cf-3f505140a515@kernel.dk>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ybzJlclj;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Wed, Aug 19, 2020 at 07:17:19AM -0600, Jens Axboe wrote:
> On 8/19/20 6:11 AM, Greg KH wrote:
> > On Wed, Aug 19, 2020 at 07:00:53AM -0600, Jens Axboe wrote:
> >> On 8/18/20 1:00 PM, James Bottomley wrote:
> >>> On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
> >>>> On 8/17/20 12:48 PM, Kees Cook wrote:
> >>>>> On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> >>>>>> On 8/17/20 12:29 PM, Kees Cook wrote:
> >>>>>>> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> >>>>>>>> On 8/17/20 2:15 AM, Allen Pais wrote:
> >>>>>>>>> From: Allen Pais <allen.lkml@gmail.com>
> >>>>>>>>>
> >>>>>>>>> In preparation for unconditionally passing the
> >>>>>>>>> struct tasklet_struct pointer to all tasklet
> >>>>>>>>> callbacks, switch to using the new tasklet_setup()
> >>>>>>>>> and from_tasklet() to pass the tasklet pointer explicitly.
> >>>>>>>>
> >>>>>>>> Who came up with the idea to add a macro 'from_tasklet' that
> >>>>>>>> is just container_of? container_of in the code would be
> >>>>>>>> _much_ more readable, and not leave anyone guessing wtf
> >>>>>>>> from_tasklet is doing.
> >>>>>>>>
> >>>>>>>> I'd fix that up now before everything else goes in...
> >>>>>>>
> >>>>>>> As I mentioned in the other thread, I think this makes things
> >>>>>>> much more readable. It's the same thing that the timer_struct
> >>>>>>> conversion did (added a container_of wrapper) to avoid the
> >>>>>>> ever-repeating use of typeof(), long lines, etc.
> >>>>>>
> >>>>>> But then it should use a generic name, instead of each sub-system 
> >>>>>> using some random name that makes people look up exactly what it
> >>>>>> does. I'm not huge fan of the container_of() redundancy, but
> >>>>>> adding private variants of this doesn't seem like the best way
> >>>>>> forward. Let's have a generic helper that does this, and use it
> >>>>>> everywhere.
> >>>>>
> >>>>> I'm open to suggestions, but as things stand, these kinds of
> >>>>> treewide
> >>>>
> >>>> On naming? Implementation is just as it stands, from_tasklet() is
> >>>> totally generic which is why I objected to it. from_member()? Not
> >>>> great with naming... But I can see this going further and then we'll
> >>>> suddenly have tons of these. It's not good for readability.
> >>>
> >>> Since both threads seem to have petered out, let me suggest in
> >>> kernel.h:
> >>>
> >>> #define cast_out(ptr, container, member) \
> >>> 	container_of(ptr, typeof(*container), member)
> >>>
> >>> It does what you want, the argument order is the same as container_of
> >>> with the only difference being you name the containing structure
> >>> instead of having to specify its type.
> >>
> >> Not to incessantly bike shed on the naming, but I don't like cast_out,
> >> it's not very descriptive. And it has connotations of getting rid of
> >> something, which isn't really true.
> > 
> > I agree, if we want to bike shed, I don't like this color either.
> > 
> >> FWIW, I like the from_ part of the original naming, as it has some clues
> >> as to what is being done here. Why not just from_container()? That
> >> should immediately tell people what it does without having to look up
> >> the implementation, even before this becomes a part of the accepted
> >> coding norm.
> > 
> > Why are people hating on the well-known and used container_of()?
> > 
> > If you really hate to type the type and want a new macro, what about
> > 'container_from()'?  (noun/verb is nicer to sort symbols by...)
> > 
> > But really, why is this even needed?
> 
> container_from() or from_container(), either works just fine for me
> in terms of naming.
> 
> I think people are hating on it because it makes for _really_ long
> lines, and it's arguably cleaner/simpler to just pass in the pointer
> type instead. Then you end up with lines like this:
> 
> 	struct request_queue *q =                                               
> 		container_of(work, struct request_queue, requeue_work.work);  
> 
> But I'm not the one that started this addition of from_tasklet(), my
> objection was adding a private macro for something that should be
> generic functionality.

Agreed.

> Hence I think we either need to provide that, or
> tell the from_tasklet() folks that they should just use container_of().

Also agreed, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200819133039.GA3192753%40kroah.com.

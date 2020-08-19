Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBCGK6T4QKGQEMYGWIWI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 4499B249F40
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 15:11:38 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id 187sf6244353pgb.12
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 06:11:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597842697; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ya0DiLuPDaTfh5EKUOtSZwKcSpp2K9xsf/6akrRYFZLC1pV9ESDP2dKOl1ooMHJK8w
         CCnlbL+9zYW8evMyH80ZtQpoTG6qmXFH8Ys9XyvOn7cqKnsaxnvP+BAC98ugn4C579Er
         rrpN06/vpLXlEO5Lq9Zt3gBVo70lxwh8TER9bku9EATeNa35I6ikgNRkfX/fyN4swynK
         58OTKwg05PEXOh62xl7ovZDLF+j+NmLGT/ZdnkF+ZfiE5aRediDbwdyWtbvG/q0mh06s
         YcnhPt8Pyw9elD1FY2+UfaN/tiWIMB5V14kCyGs8iKRi0Yfn4J/GIS3+v5Q7RTy685VY
         s49w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JdAdgN57W+eL52BORzk8suXBBcLvrq5H6F7syKq5RSM=;
        b=ZS8sEqi57gLf598F+/X8/03PT2EOytV1GcMVfcaDwnRmZ7sHNuDWI2mSq8iqmP4459
         CzC92SoYv3eDo1qouIgjuOuBJzpRQCs2ZyyW9AdpEADPEtAdhSpfukL1A6lMOgxxHOh3
         Qp5u9EzM0FD77cJ6Tfx2QAdhyUeJuNIbfngo1F2iqMvhLV1Vxlv40ZneJ1/oEJG2Bw76
         2k/8OHrEW99UAis1Cb3p70Gh7Ks8tG+sGBqEyKcc+zXfxXzRcAFnXqwpFnXhx1rOlYi2
         K26G5GsiyNsfPOIpbwHu/O13fsV81VsFgNvt74r7qoPTWCXFxIM2uwm5i453Ce5eP2L6
         hRXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=skOvnyoi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JdAdgN57W+eL52BORzk8suXBBcLvrq5H6F7syKq5RSM=;
        b=S2rUq6xVqjJLs034T/JAG39y452RzmALXJwFCPR4ft46KuekNc3VijAqSpYOlDo9Eh
         DbV5HA66nX/RnVsLBChLLh93zszIEXcDgD1N2vOc2UwhsMl5DxnSALiQVbl1fsDXlVOR
         KxKFzUIsFOHOuWaQ68DQBsZ0Yv7HIP6XZd7bRUZvBzYtCV4Mu3YK4TnQRqeZua6qAs+s
         RvZuh1JVgic4PeUx2pH/ZbonLxevioONo7eZ5FmxDy7YOx+qyzrlalK/1sU0AiwNdT+W
         nVVV2Eqtmw9AHz6w9dfRNc4N1Aml+xyp49JTFCTUZuuzZCxQaF1B/gbjZHDsAwmE4Dyj
         cN/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JdAdgN57W+eL52BORzk8suXBBcLvrq5H6F7syKq5RSM=;
        b=M2tK2fT5g5xbPTOP5xFjgp0jujWZEjPONCidRz+ixR9W090jslrX4xLNa98+0HWC/c
         biBTp7hF+P/Fg16E4SSgPzDCYeZGEK2gFw9K0118OEIDLI14o6h5OLBaabwm+uuU25jY
         PogPlr2A42CNFmM07VF5gfB5E99JKE7omhpWJvwtMWeif/osMeyOYv5/7hWHZgpeZA1H
         J8MqnLuh3jK/Z6dI+L52E4cifykkFFD9T079oRAIjYiBcnIGS5OhBr9zcFMXHKV/+V/H
         lnjirupyoU9pex71LKveFTHoMQO6MJ65lC/8y2MRyo/K80xK6HMsXyygwOn6Voukli8Y
         s2qw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533njT3TNSDlgdfoNkkyaICfif1oXfGUwy59ro8Irq6voLZy9N8P
	8NduNsE2yzeTi8rKoS96hdA=
X-Google-Smtp-Source: ABdhPJzDrcg0XmM/Sd2TLYrA2MXn/q0EpNEDnmT23/HpSpGRH4BqjXh+UZ4dBkNEp/E+deQs1Mu2Nw==
X-Received: by 2002:a17:902:d883:: with SMTP id b3mr19391831plz.154.1597842696816;
        Wed, 19 Aug 2020 06:11:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:fe08:: with SMTP id g8ls10219310plj.1.gmail; Wed, 19
 Aug 2020 06:11:36 -0700 (PDT)
X-Received: by 2002:a17:902:a9cb:: with SMTP id b11mr19366471plr.1.1597842696337;
        Wed, 19 Aug 2020 06:11:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597842696; cv=none;
        d=google.com; s=arc-20160816;
        b=oDa02ooBzNQkuGSdUqVZkGHTWnCvVH09VEh07qNsOa6bvIDOcVBqTxucMDkUffdqs4
         DtynTA3/Me4jmFsPkMiG0guBgZyTfMwA5gSVuM02+X1ArGyPkIbcn7vog9BmgJhcTRJc
         ++1/OIwiNN8TAEsSHl65fx4Qv95w5xNqotqUU5OOnIVB9nbndHUI+Wd0+Itso4NOIgng
         Fibo28GMKF+2uqh2wWxqGT1DngLDsg4XJDmb8LDxPSQRlVlSb7k6K5B7qKB4SzVI7IgR
         StjUmGbzS8G0yT+KOd+vxltjs+OTrwYqeWR6WHMQDzXBxg4uOxmnUpAmJAQmJkzDpnBI
         U6Fg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=xWNkZUVc08OQd8APLa1KfMU6OxGe0KusE9mCpbb8YpY=;
        b=g0fRD7A58rrNELqOCy2tyKh40PBeWIPGmIgh6is/eC3gLV9cNi6Ry9IBQ0JASKAnbL
         rxmgy1XwrOiLk16ex29XokAP6QOERzWvpmvQ3+oFvGU1Q1XAz60zYiSso2Z/VEfApo4D
         v8HqYu9gNRvqijM1kHye7DgcrP92W4ENUYG87hyZqrOaQTbR+jSuYCFrEDyQ3RbbPVOs
         /coWXyxU51zW+c8biv2ywfs1P/FAhi0myydTHSb3iABSqenP61sua5NGSZUoL6LvW2Ex
         L/sFKDl9MamWGPDQct2nYWVY4TXTw0//E3dLjHS0ffxkE3EMio8VEwY1ZzzxARMJBDT1
         MZYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=skOvnyoi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v12si1142356plz.3.2020.08.19.06.11.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Aug 2020 06:11:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6BC432065F;
	Wed, 19 Aug 2020 13:11:35 +0000 (UTC)
Date: Wed, 19 Aug 2020 15:11:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Jens Axboe <axboe@kernel.dk>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	Kees Cook <keescook@chromium.org>, ulf.hansson@linaro.org,
	linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
	airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
	linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, anton.ivanov@cambridgegreys.com,
	devel@driverdev.osuosl.org, linux-s390@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net, maximlevitsky@gmail.com,
	richard@nod.at, deller@gmx.de, jassisinghbrar@gmail.com,
	3chas3@gmail.com, intel-gfx@lists.freedesktop.org, kuba@kernel.org,
	mporter@kernel.crashing.org, jdike@addtoit.com, oakad@yahoo.com,
	s.hauer@pengutronix.de, linux-input@vger.kernel.org,
	linux-um@lists.infradead.org, linux-block@vger.kernel.org,
	broonie@kernel.org, openipmi-developer@lists.sourceforge.net,
	mitch@sfgoth.com, linux-arm-kernel@lists.infradead.org,
	linux-parisc@vger.kernel.org, netdev@vger.kernel.org,
	martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
	linux-mmc@vger.kernel.org, sre@kernel.org,
	linux-spi@vger.kernel.org, alex.bou9@gmail.com,
	Allen Pais <allen.cryptic@gmail.com>, stefanr@s5r6.in-berlin.de,
	daniel@ffwll.ch, linux-ntb@googlegroups.com,
	Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
	davem@davemloft.net
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
Message-ID: <20200819131158.GA2591006@kroah.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=skOvnyoi;       spf=pass
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

On Wed, Aug 19, 2020 at 07:00:53AM -0600, Jens Axboe wrote:
> On 8/18/20 1:00 PM, James Bottomley wrote:
> > On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
> >> On 8/17/20 12:48 PM, Kees Cook wrote:
> >>> On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> >>>> On 8/17/20 12:29 PM, Kees Cook wrote:
> >>>>> On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> >>>>>> On 8/17/20 2:15 AM, Allen Pais wrote:
> >>>>>>> From: Allen Pais <allen.lkml@gmail.com>
> >>>>>>>
> >>>>>>> In preparation for unconditionally passing the
> >>>>>>> struct tasklet_struct pointer to all tasklet
> >>>>>>> callbacks, switch to using the new tasklet_setup()
> >>>>>>> and from_tasklet() to pass the tasklet pointer explicitly.
> >>>>>>
> >>>>>> Who came up with the idea to add a macro 'from_tasklet' that
> >>>>>> is just container_of? container_of in the code would be
> >>>>>> _much_ more readable, and not leave anyone guessing wtf
> >>>>>> from_tasklet is doing.
> >>>>>>
> >>>>>> I'd fix that up now before everything else goes in...
> >>>>>
> >>>>> As I mentioned in the other thread, I think this makes things
> >>>>> much more readable. It's the same thing that the timer_struct
> >>>>> conversion did (added a container_of wrapper) to avoid the
> >>>>> ever-repeating use of typeof(), long lines, etc.
> >>>>
> >>>> But then it should use a generic name, instead of each sub-system 
> >>>> using some random name that makes people look up exactly what it
> >>>> does. I'm not huge fan of the container_of() redundancy, but
> >>>> adding private variants of this doesn't seem like the best way
> >>>> forward. Let's have a generic helper that does this, and use it
> >>>> everywhere.
> >>>
> >>> I'm open to suggestions, but as things stand, these kinds of
> >>> treewide
> >>
> >> On naming? Implementation is just as it stands, from_tasklet() is
> >> totally generic which is why I objected to it. from_member()? Not
> >> great with naming... But I can see this going further and then we'll
> >> suddenly have tons of these. It's not good for readability.
> > 
> > Since both threads seem to have petered out, let me suggest in
> > kernel.h:
> > 
> > #define cast_out(ptr, container, member) \
> > 	container_of(ptr, typeof(*container), member)
> > 
> > It does what you want, the argument order is the same as container_of
> > with the only difference being you name the containing structure
> > instead of having to specify its type.
> 
> Not to incessantly bike shed on the naming, but I don't like cast_out,
> it's not very descriptive. And it has connotations of getting rid of
> something, which isn't really true.

I agree, if we want to bike shed, I don't like this color either.

> FWIW, I like the from_ part of the original naming, as it has some clues
> as to what is being done here. Why not just from_container()? That
> should immediately tell people what it does without having to look up
> the implementation, even before this becomes a part of the accepted
> coding norm.

Why are people hating on the well-known and used container_of()?

If you really hate to type the type and want a new macro, what about
'container_from()'?  (noun/verb is nicer to sort symbols by...)

But really, why is this even needed?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200819131158.GA2591006%40kroah.com.

Return-Path: <linux-ntb+bncBD2YD3N55IFRBPNE6X4QKGQEDIY42OI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 98D5A24A3F7
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 18:24:30 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id j11sf9458686plj.6
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 09:24:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597854269; cv=pass;
        d=google.com; s=arc-20160816;
        b=KWg1fGeYzsBsW44O8PZjzthmhj2OZsbQAJB4p5aFODXmArxFfkCWNC8CgetwkqlDoD
         QZ3+BxOOwByDy5B4tUWCd1c3qMCxySZLcXHDK5c4dcuNVyw8/5J1/ROTLJz/bzFxjeD0
         6djejVnoI1rhvgwybptLG3zzqIKa7XEGtSOZndLX8O5HFptxwOacs96G6vtQ7D2hjji7
         D3NyNaBKfl25YLfymE6boDD2eBGw05Nt3mPjZab+eBgJOpprtD8Fk7CKycvFbgc+BOkN
         0ORzB6J5vxplGnYbSpw7tLo0OdBsgRFDMWX/sgSw0n7OzU1RLKfdkgFaWt4V5MoIDrDc
         TyMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=x8xrDKO5rogwtK4phI+AqqbKhf8vWQ8pQbG2ILqSKkI=;
        b=lF36mmJfSYsfkVjbi+ZuXuom05mWoZVwTGMLFxlFJhthAPG/VAyKxztAYSprS+rTeo
         qc4AT8En/Pk86pyDMaSFbU7xONOLmBieZ5DuAezDpV7qPXyQdrPSfOlYAsb3Hbuq9rP6
         5vJ/sBD5DgxOcI3/tVhW5QTKmQaFMWT9BSihlII8RwX7ZzNA06vU8qlRLncNUfv4srTX
         NUmJdscKMyifimyFFrFeqQRN5KCvs23sD+ALemAZTQ/idyGultx8EuOxnH3WgHH1jiYF
         9JybmIPo1Dv529fbFznwfgzgZmZ+rFpJmXqt1eQGL+FQYaXEZJdK51N+RtWd0yotrgB/
         g93g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Do1SU13c;
       spf=pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x8xrDKO5rogwtK4phI+AqqbKhf8vWQ8pQbG2ILqSKkI=;
        b=mvn8y031mnF8/F9/qTZrt8jOD7peY5BEJBxH/kg7MlI+/HJxHFgzzvY2ujTc72vnFv
         Un0lxS5P09mn2CrlOg/uhfVYcjOG3c9gVW+627xMnVHD+DErn9zY9EKjFVhYVBBV8CXS
         hJiO8mRrGnWY5+mgxHd824RXgiivHSQlVfE1HXJiyWuvpcad1fiqFE1mKVt3KMTxk0uY
         GHchDcG2hPbkz5SGKCi3p7ZwjhRQD4kMrxocKz0ET6ylJzVP/4iPvJKARoWGFWOmQNTx
         hBU+D8qp4oMtszdObIQ+4IymKael3RU8V+ntRRxhrneeaP3W1zGYhwZGgBppgLjDctaO
         IcYQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x8xrDKO5rogwtK4phI+AqqbKhf8vWQ8pQbG2ILqSKkI=;
        b=GF+GTsr/JbxZNUcxBvxNv9vwAP1EbHBYMeaMtGCom0TNPYQxEbUxZmOlt2Vt7T89dX
         1sJ0aTJ2IvcYuAP6IimOQ7Da0XrS9T27EXxD0kW5nle7h18pE82RRa9vmr2CRB1/1slH
         bct/eP+nivCJWwTl2gBr5lxhWZW3FXZe2Z04xON9m23aseMSUFiQSHNz3zYnkmEHM7Ay
         CVOM+BnSfYet/6uXi53h4vMM5C84TQrA18O/eZ5uXlZZGx+08275+pgzqozuIT7j0pnN
         4meITprpMj5ZSHy1eWjjbinXAoz80JwKlfjmm9KXoussiE1B6ZqunysSMfCMa0aSK0PH
         HDSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x8xrDKO5rogwtK4phI+AqqbKhf8vWQ8pQbG2ILqSKkI=;
        b=jU8KKLI9v56iWLDyOrnNgdlE5D5x1ysPQUV4ET/lA14RyJ18aSeDsUChoOBXPRhcR+
         SXqMjgBWH4YVfiK8LOM/wkdwq3h8telx2wNKIaslk7QXiCb7WUHfT0CRSSp3xkYLHaEP
         zLTsNuxAcSRDND1QV2/YyJaXpIHQr16jemTwziKqGZgXF6CMTM+KYy1qr4TT+9vQ8Wff
         QzVJKVJXmWW3hswYeI/ySVutcROvqeu3vsV4NXB8BzfSuDLMUMrcyPosmaxpSNf1hx5t
         28LUYXeh/eAGZ9nEozf79CbWI06H8xfCRU9/DFDY36sgzq5BR269IOeKac5QCc3cbTJr
         4dYw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533rSoqqNbUltWrK93cS7EAdyW8MpRoXFblIXC3mUn282yw1GCzu
	ConHHkOrchmUqi+7yFsFYGI=
X-Google-Smtp-Source: ABdhPJxof38rSarEV+aMyW9AettcRd6u8hjGzkXdwwZy9GpQ+oTHLBDBO7v1iUeDuZXqSfuYgZb6dw==
X-Received: by 2002:a17:90a:c682:: with SMTP id n2mr4688851pjt.72.1597854269324;
        Wed, 19 Aug 2020 09:24:29 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:c244:: with SMTP id l4ls1713594pgg.9.gmail; Wed, 19 Aug
 2020 09:24:28 -0700 (PDT)
X-Received: by 2002:a05:6a00:1515:: with SMTP id q21mr19943044pfu.126.1597854268768;
        Wed, 19 Aug 2020 09:24:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597854268; cv=none;
        d=google.com; s=arc-20160816;
        b=XmcqIpA2cZuIqsNPSdsxdLO5INmMNvfWD1WZA9e6Gz/YJLalQlWoZM4k91z4KH79yx
         7JMrqJ6+RU9jGHYE61iaOVvOjhRSQtXyMprLiuKIyW2rNPQvO8qrtPsHGpxD4xVVh3Ic
         wg04y7VQqsTMtIf3hifD7ljSFsjt6JwORVzp/AxsGXaJRh32EBzoHRkHt1ysbcJLsx7V
         n4RFgFX5Z5hVJTqzEFI1xrutUin3S2pZVoCzcaLXRyf+uPEdNmaQOxSas6sU+tUJVlkd
         1B/2OuHRCaoMuXRTYB25PwMTgwoGkSgbp++4E32YsTsgN1Iw4sr0FjPkr78MlpDGgoWN
         euyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HU4eQwextT3u0Vy8pHWyNShnAd/EOsS2z1U17KkaX1w=;
        b=s8cYS+AUzrY0Pw0RldkyCYLfOH1T33OylZFHmP4gAsxoL2v45jJ+xWxPgTnu5Q9LFx
         ctmSnzLct8lpdnIIY/e2fw1F7Td/r8dFG/gUxEnBIPZxl5zKvMb7znJ5x18BJOh+1tBO
         gcTLrIVzXHQCDIFIlFy3X7gj/b3jiSaJ1B6LEg6fHSJEut/t3UYFDX8XpZfUthMCNhXz
         IaLfeHoWu6FdNR8JgWat0WvUosN3ij18WhNBcUsIkFVucGrq6APm6Fak108FkPISYMxn
         QV0Q74o4wsHM6ENO7pdijoqYWNF4p0dKQVxLs+0aOAv4sI9CwpdGeFxNbrcXX5sTHucR
         ez0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Do1SU13c;
       spf=pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id l26si1457874pfe.2.2020.08.19.09.24.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 09:24:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id l204so21505059oib.3
        for <linux-ntb@googlegroups.com>; Wed, 19 Aug 2020 09:24:28 -0700 (PDT)
X-Received: by 2002:a05:6808:4c5:: with SMTP id a5mr3863067oie.175.1597854268104;
 Wed, 19 Aug 2020 09:24:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com> <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook> <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook> <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com> <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
In-Reply-To: <1597849185.3875.7.camel@HansenPartnership.com>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 19 Aug 2020 21:54:16 +0530
Message-ID: <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Jens Axboe <axboe@kernel.dk>, Kees Cook <keescook@chromium.org>, 
	Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at, 
	anton.ivanov@cambridgegreys.com, 3chas3@gmail.com, stefanr@s5r6.in-berlin.de, 
	airlied@linux.ie, Daniel Vetter <daniel@ffwll.ch>, sre@kernel.org, kys@microsoft.com, 
	deller@gmx.de, dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, maximlevitsky@gmail.com, 
	oakad@yahoo.com, Ulf Hansson <ulf.hansson@linaro.org>, mporter@kernel.crashing.org, 
	alex.bou9@gmail.com, broonie@kernel.org, martyn@welchs.me.uk, 
	manohar.vanga@gmail.com, mitch@sfgoth.com, David Miller <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, linux-um@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-atm-general@lists.sourceforge.net, 
	netdev@vger.kernel.org, linux-block@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	openipmi-developer@lists.sourceforge.net, 
	linux1394-devel@lists.sourceforge.net, intel-gfx@lists.freedesktop.org, 
	dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org, 
	linux-parisc@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-ntb@googlegroups.com, 
	linux-s390@vger.kernel.org, linux-spi@vger.kernel.org, 
	devel@driverdev.osuosl.org, Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: allen.lkml@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Do1SU13c;       spf=pass
 (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::242
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

> [...]
> > > Since both threads seem to have petered out, let me suggest in
> > > kernel.h:
> > >
> > > #define cast_out(ptr, container, member) \
> > >     container_of(ptr, typeof(*container), member)
> > >
> > > It does what you want, the argument order is the same as
> > > container_of with the only difference being you name the containing
> > > structure instead of having to specify its type.
> >
> > Not to incessantly bike shed on the naming, but I don't like
> > cast_out, it's not very descriptive. And it has connotations of
> > getting rid of something, which isn't really true.
>
> Um, I thought it was exactly descriptive: you're casting to the outer
> container.  I thought about following the C++ dynamic casting style, so
> out_cast(), but that seemed a bit pejorative.  What about outer_cast()?
>
> > FWIW, I like the from_ part of the original naming, as it has some
> > clues as to what is being done here. Why not just from_container()?
> > That should immediately tell people what it does without having to
> > look up the implementation, even before this becomes a part of the
> > accepted coding norm.
>
> I'm not opposed to container_from() but it seems a little less
> descriptive than outer_cast() but I don't really care.  I always have
> to look up container_of() when I'm using it so this would just be
> another macro of that type ...
>

 So far we have a few which have been suggested as replacement
for from_tasklet()

- out_cast() or outer_cast()
- from_member().
- container_from() or from_container()

from_container() sounds fine, would trimming it a bit work? like from_cont().

-- 
       - Allen

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q%40mail.gmail.com.

Return-Path: <linux-ntb+bncBDXO746SYYBRBG5Y634QKGQEI4NQAXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 6267624A89E
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 23:39:40 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id y13sf6413348uan.14
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 14:39:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597873179; cv=pass;
        d=google.com; s=arc-20160816;
        b=firts1Aq1bmFIOE5Sg0bJk82ZIObrlc68Hv5WeeEkFELh677gPaVfB4zlJcC5FIZc8
         s+fBw0+SR+toDNi3N6SDbQ6NEaFwUQ197G9yMNVxQKd3oYgTKML/PVjN1k7Ad0oSZXTN
         9LRfE1XeQBt6ycMvVmFbaL33ZR0hkfjKruzP2VonoVQqtcz2GMTaczJj6Y4wVd+IiR29
         fbwAoZHXBzaUZTqf6idDQkOuw1/w0dEloIY+H0bnr3x49AmoYyPW5a6ipEj5AsS8n2wl
         TLCw4BLClD7hu39qqSyiLeBvbJycD9CIqDFKvkyCAXdsiG8N+F1kzVlb77Zo9IaApNnn
         vOFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=Us9LFo91GbUkimU6HQdeKNME1LfkjO4pqlaPPGDQIKE=;
        b=fuKwt4g+4/t51fUDBjypkEkNFzYaz47SjuJqlwOYn9AhrmIV8d4prxQUFd7uspKBlv
         h8HIks7pa7cfMZC4NLsW5GUx4x1vXT+rB5eL4QINQxDf8OkQFZab+iAdfXMFMBtVZOQO
         EQ7pv0GcxsQ9pHPCLx4EKeNq1IHqSlK6uA3Twm4YgcMkBjVY50sxuCJN2mnOkzj9pOfT
         vpXIWxkamG730HSt8Ig+3W3eild9mtAQRYi6sPvnDJofMi9Wcjr7586rTaYnppiPaNlm
         KqQ0S5w2zZLiPDUmEvT/ibzM/y1tg04hr0eAM2SjweTxmCGlC8a0aCitW9ymPOCTRxwz
         0nTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b="QZWzNY/R";
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b="QZWzNY/R";
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Us9LFo91GbUkimU6HQdeKNME1LfkjO4pqlaPPGDQIKE=;
        b=ZFFOUBLctyiXOPDXEhi1yPN0XAfr4u3AzDZcBn3Y1FiJMfReAV1MVZzJgbQsJhc4x7
         6vNokQAfk88q9spEDyopWWX9fW8FUxqLpRwsTk46jZv92eKF0FaFu+1ZZN+ilzdTGnK0
         00zI5ytOjI34O367ejtY0+os3PKhdqw3CtEkgvg+z1Yh7eCDVJjWDz5WY5y6PhFTG88m
         C7uMYN5JPe16f3gIOMtncv0y3PLVTDtfmvFbXNoELDvXqL/ik+I7gR+uy51um9MQLqxd
         vaNPQ1vlK7AfZ3sKNMxtHCpAgKOpT32kbaouPkIdWckUERI2oPv7I5O5N4Ys9iNySneK
         L0lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Us9LFo91GbUkimU6HQdeKNME1LfkjO4pqlaPPGDQIKE=;
        b=cP28RKLKnowSzTM0YZ+5pnUU3iFw17ciVKaKCQOBAncO/OnL76zbZTzldHLWhabDlg
         9BOQfvUSvLNnAPsGIa9j+uvr54yWPcMudSjshhCgG3kZl0SQX+0gc5yD2vvtCnoXORwI
         HX94mnobBAwiFMB3f9UI8qsZj09QaQj696zn3bPdqXawonLrAF9iSgqn0uejn8qZD7iU
         e5XH1W28WxcZ03/jkF/ocSRkhjMDB0R5GYrirKdRdLz9+e+sYz7IzKuvuMYO4QL+HH3o
         3xVrZPGUIzMtipF0PFIn/Adjlu74oY2e573qLCD5BG4n1w1Uv0fymT7il3bpuDPXeoVR
         hDKg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532pmPPxQDScunDCGxDF/tp3vvtgXax9/yIn7h8Ui5rqSlAC/A4F
	MZZOIqO+TuXGJMYC0hjj31s=
X-Google-Smtp-Source: ABdhPJzxU6ZC78pEQZihO+4ViCC/Dd0Qj7kHhFpi4O86NGsUSbnSU1c3FF2GiYe7Scs6bm6iora6bA==
X-Received: by 2002:a67:8807:: with SMTP id k7mr200592vsd.153.1597873179412;
        Wed, 19 Aug 2020 14:39:39 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:2bd7:: with SMTP id s23ls23998uar.8.gmail; Wed, 19 Aug
 2020 14:39:39 -0700 (PDT)
X-Received: by 2002:ab0:6341:: with SMTP id f1mr14870796uap.19.1597873179041;
        Wed, 19 Aug 2020 14:39:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597873179; cv=none;
        d=google.com; s=arc-20160816;
        b=uHLwmFWU/zjCpzOnRC6q2/rPYWXarfsdWEazBwZNYWmwdmlcbV9uHgx4Z8ntWwTWgM
         lYg9KW+YnWNmlfRjaxSN4/1iZAPEXF9q5Ay00wHNnkHV04oUR8x5CXfK0L7nES8qQrFM
         wAyA0wAv7NAD1xeLhnvvBJG3yXfVh4xDuCokaUib/zY6VJDHuGoIjxDPyGnJaz81K2Gm
         VLqQWioy+iOwwNoLMuyUIYAIhhk6K8r9ZsfMTAZk+5eY40RP8ZaFyPmBY+UDCUDKJ1oe
         Ic8TSCI75j1NitVTpEAIi07lgvstztb9qX+L/20tcO5NCXP8eL/fCev9f++mqLYTcNeW
         ibRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature:dkim-signature;
        bh=xsQuvl+8rzi4bJFQULVc+r3+CYAqe7KwQ94krNrYXcE=;
        b=mYszSrnwwRls7GszEGsd2yjVhkoME0QmJCItv8W0hHB3+k8q3WxOocfCuq4zTAAn4K
         sAQgM2lBhZ7Md+Uk4OkG81M/BlOL5evOwIqXoNGDoeAr7j+bQCXfkHUAB7CcWVliPCvP
         UHLjOIplBio6UD4LntLUJ5Wwsu6OlyfrFdDhD2GJJNDk/K0Ik2HsqpDGjesCUPF3/9FB
         JZOobR00lM2psSRx8MBwYgo6pSxhXGHfH1x+rcGatiue274Tpx1ch8SwbbTPFFqgXvYr
         CeIhYh5mVzbdFUZ/ymaLipXCGClA0LBchaQtpzvcV26eBO0NOQFon1z1NE7YIk6KjI9Y
         7VMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b="QZWzNY/R";
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b="QZWzNY/R";
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [66.63.167.143])
        by gmr-mx.google.com with ESMTPS id p197si13357vkp.0.2020.08.19.14.39.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 19 Aug 2020 14:39:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) client-ip=66.63.167.143;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id 770738EE1F3;
	Wed, 19 Aug 2020 14:39:36 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bHKZiEX-QbYl; Wed, 19 Aug 2020 14:39:36 -0700 (PDT)
Received: from [153.66.254.174] (c-73-35-198-56.hsd1.wa.comcast.net [73.35.198.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 07F3F8EE0E9;
	Wed, 19 Aug 2020 14:39:33 -0700 (PDT)
Message-ID: <1597873172.4030.2.camel@HansenPartnership.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Allen <allen.lkml@gmail.com>
Cc: Jens Axboe <axboe@kernel.dk>, Kees Cook <keescook@chromium.org>, Allen
 Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at, 
 anton.ivanov@cambridgegreys.com, 3chas3@gmail.com,
 stefanr@s5r6.in-berlin.de,  airlied@linux.ie, Daniel Vetter
 <daniel@ffwll.ch>, sre@kernel.org,  kys@microsoft.com, deller@gmx.de,
 dmitry.torokhov@gmail.com,  jassisinghbrar@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  maximlevitsky@gmail.com, oakad@yahoo.com, Ulf
 Hansson <ulf.hansson@linaro.org>,  mporter@kernel.crashing.org,
 alex.bou9@gmail.com, broonie@kernel.org,  martyn@welchs.me.uk,
 manohar.vanga@gmail.com, mitch@sfgoth.com, David Miller
 <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, 
 linux-block@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 openipmi-developer@lists.sourceforge.net, 
 linux1394-devel@lists.sourceforge.net, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org, 
 linux-parisc@vger.kernel.org, linux-input@vger.kernel.org, 
 linux-mmc@vger.kernel.org, linux-ntb@googlegroups.com, 
 linux-s390@vger.kernel.org, linux-spi@vger.kernel.org, 
 devel@driverdev.osuosl.org, Romain Perier <romain.perier@gmail.com>
Date: Wed, 19 Aug 2020 14:39:32 -0700
In-Reply-To: <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
	 <20200817091617.28119-2-allen.cryptic@gmail.com>
	 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
	 <202008171228.29E6B3BB@keescook>
	 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
	 <202008171246.80287CDCA@keescook>
	 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
	 <1597780833.3978.3.camel@HansenPartnership.com>
	 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
	 <1597849185.3875.7.camel@HansenPartnership.com>
	 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b="QZWzNY/R";
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b="QZWzNY/R";       spf=pass (google.com: domain of
 james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted
 sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Wed, 2020-08-19 at 21:54 +0530, Allen wrote:
> > [...]
> > > > Since both threads seem to have petered out, let me suggest in
> > > > kernel.h:
> > > > 
> > > > #define cast_out(ptr, container, member) \
> > > >     container_of(ptr, typeof(*container), member)
> > > > 
> > > > It does what you want, the argument order is the same as
> > > > container_of with the only difference being you name the
> > > > containing structure instead of having to specify its type.
> > > 
> > > Not to incessantly bike shed on the naming, but I don't like
> > > cast_out, it's not very descriptive. And it has connotations of
> > > getting rid of something, which isn't really true.
> > 
> > Um, I thought it was exactly descriptive: you're casting to the
> > outer container.  I thought about following the C++ dynamic casting
> > style, so out_cast(), but that seemed a bit pejorative.  What about
> > outer_cast()?
> > 
> > > FWIW, I like the from_ part of the original naming, as it has
> > > some clues as to what is being done here. Why not just
> > > from_container()? That should immediately tell people what it
> > > does without having to look up the implementation, even before
> > > this becomes a part of the accepted coding norm.
> > 
> > I'm not opposed to container_from() but it seems a little less
> > descriptive than outer_cast() but I don't really care.  I always
> > have to look up container_of() when I'm using it so this would just
> > be another macro of that type ...
> > 
> 
>  So far we have a few which have been suggested as replacement
> for from_tasklet()
> 
> - out_cast() or outer_cast()
> - from_member().
> - container_from() or from_container()
> 
> from_container() sounds fine, would trimming it a bit work? like
> from_cont().

I'm fine with container_from().  It's the same form as container_of()
and I think we need urgent agreement to not stall everything else so
the most innocuous name is likely to get the widest acceptance.

James

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1597873172.4030.2.camel%40HansenPartnership.com.

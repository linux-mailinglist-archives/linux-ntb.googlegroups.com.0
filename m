Return-Path: <linux-ntb+bncBDXO746SYYBRBAED6H4QKGQEVNWGCMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id E193D248FC5
	for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 23:00:49 +0200 (CEST)
Received: by mail-oo1-xc38.google.com with SMTP id z2sf10357994ooi.18
        for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 14:00:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597784449; cv=pass;
        d=google.com; s=arc-20160816;
        b=xL9K8w0o0INWgMWQE5S+dZt8AhRoRWqVyCEoFaqC46jk1r8PUEpLxr699Gys1Yg9Fd
         QDwTB7/6tSbyWv49jATq01+EvifWSGjnwWgZrTVs27GPCfgoa8+asSnBeDVwCRS+y2hy
         F4EIKuVyV+MEaECm82epjYiVFjBYsJzbm2IilPu/LWuuEXyOyB0j3nVN9kL7gNIyYtyz
         2/lFht2ngwCPTfBbkkmE/IF/FIKz1EFNDrlfo43B7HEGHxM7mE5UoWgAWJYwK+EE+CwV
         AIq03UUtktIni4eRBgdjVsZwDwOFxNamE3BRf+id2XscXG2ASwSCrU+zdGSUE1yl3JC2
         wOQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=txH1XP0+uLUq0KUpaCS2oiAlEkb/dv4LmQZxtZmngTI=;
        b=zluAHJrMGK050Lf5xlsn74z/kePape97t72LKWpyzFWPP6k+GQH/iVkj5J1mEhOSQl
         sUpL7tWpslQnMuVE7BQ1EqJR1Iq5lAwejaoQh3tZL2Uy8+FVxHCQoCHTpdkBaYU7VaBc
         BBVrPGHfkf50YVDpMP+rgXvVdQmlhMMKXrhqIGWmlfXJxZocnzGpMMgYATdTECu1Lnng
         Y8U5A/QPSDU6Y1Z24DS5VfoLvsl98k3I8SV+TKPQQRKcKVHoOnvhkM+RrvE+QXVzDdmo
         E28XnevxU9Ba+VH8+a0Cyaart8mizmgGVkDC3tQuz8JIIQx1Z+Zjp45F5/zgPfrOCR5K
         QO5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Qrj9DcFV;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b="D+8/Cr58";
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txH1XP0+uLUq0KUpaCS2oiAlEkb/dv4LmQZxtZmngTI=;
        b=DOuLs+EiqbEUQm5hLHHitjgKawxLrgvkN+WtlJIlur945BwEvW7HRrxSyDXT7QG1fm
         kNggA9rVXy2VTNJZbBJYnuK0JDnTfnt9P3/ljcEfU0uPRBrSO8tvxK/D6aYmW/EbiO/b
         4RhQDOA/Hy4xQDU6d64mgbL5VzP276tLexDU7ZY8J7PqGmzZW0R0LIzEd2u0PbrOauVI
         BBGTJIqwp7wpYpLRJHXpnbYSNKz6kvEISt9wT/vgI47Mli5iiNfvaRPY9PvimEt1RusC
         Qv7mMHaPx40jttSiLdUMsOHp3XxkF2lRsQ7Vvct6KdjNt4EwTzJK/qA9vbElbTtXVsnB
         qgyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=txH1XP0+uLUq0KUpaCS2oiAlEkb/dv4LmQZxtZmngTI=;
        b=Fo14jYrdvuTFItQswNguGYIRFLlpRHLIHMR14jqP1PbjynEgKvngRlY1aGO3cr0Cdb
         eFNyE7wTVee1kUl+Fu3/cq8rB//rFvkA8pN7aIJe6AOf4SimV3qAWmt9HvFVzD2QhW5h
         zDdomx5y58Ev7uLDsq4YcegyQGj8RcnIltiiviZjT2TYBzIysIXz+LDuDDpmaaJfg763
         xV4Ic1Zh2HeoDrLvWllQxwM/JgDaiF0rlmPcf3o3UqFRf5fLuzI/uSkj3baFCxoG6HK3
         NLKiZ4aTGCDIUzPxerQdSOQcLO14xokqJk5IAek3GvLiDMQd2TKYpBpuSBv4V8gJKeqh
         u2TQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533fhbAuwPLNGzBUT6JcTWEtHifCglWDgMEcw91p3VkwvLNQdWi/
	NqkA+slvTZbA273+HdLo4Ew=
X-Google-Smtp-Source: ABdhPJzJP8i1bDZ/VQ+fF0Qz/79OM9PmLQEP+S2pyE+oCk+5vUU6yMVkPwuFLUQbQjML9lxbyDZi9A==
X-Received: by 2002:aca:f207:: with SMTP id q7mr1314683oih.51.1597784448792;
        Tue, 18 Aug 2020 14:00:48 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:181:: with SMTP id w1ls4398328oic.9.gmail; Tue, 18
 Aug 2020 14:00:48 -0700 (PDT)
X-Received: by 2002:aca:f009:: with SMTP id o9mr1407840oih.34.1597784448385;
        Tue, 18 Aug 2020 14:00:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597784448; cv=none;
        d=google.com; s=arc-20160816;
        b=POjgecZmMPWJ4nSviE+QusgQyULjOx0jLpTVgt7D9mDpZSFnSNT+nbuIkCWrPTnp+S
         X38gX46R/f4Sv0YfsZrmeZygk6EvOAXJIDhtHC/WWe3DiVQ/7IiGumBruDc8uy9d/Q1R
         vi5mbROUGNNPgVsZ32hpVLI3RfNeRC4buhkv/hHgzx9A8/w1Si62TRVQRaAXlI1sDzZW
         Pqo8FR+YRqmVDaDrxN1LPF3MgFPCwCCj9tmAZiitYc9bttpWoNF9FL29NJPKB0/KsZQU
         daO3NePA0o7QjXmVPGVaKg47vIblVvukLbZO3BXTW7lCtIDAXXW0cFaPTC/zs7z4oBsP
         VOlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature:dkim-signature;
        bh=eD9QK5p2ENxtGralCkJZll210SXnn3jEzjkOtHOpGns=;
        b=bpbJqQYxM2Xg2JKACfwSCW8bF8ctHjMPXpr1W9OtiHKIXKEQ1H6hNd3b+NxT99R/vc
         lv2a1WE9ap0E+zjKnd9eaPrGALa8knjGe/hDboDrBsn62MjbOeBYOA/67K8Q2U7tGpyR
         8eTQMC8PrWw67ziSpSAhhdQn4oIeykubEQSVftrEEB56smncY/CuVfQh6seIu5U+K5RM
         dIJTuk3sKDHJcP+Uq1V00xa79mISnNprIouUEq7DihZrtIKU0o2vOKwQQBtLY/Wxljyp
         zSQMcERP+8s03RAZI+LTQnq/8Rry58mcgTFOvvLlXSuuG1qZNR4aUyIFjHblV3z97eI0
         Y9Kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=Qrj9DcFV;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b="D+8/Cr58";
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [66.63.167.143])
        by gmr-mx.google.com with ESMTPS id c5si14977ots.0.2020.08.18.14.00.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 18 Aug 2020 14:00:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 66.63.167.143 as permitted sender) client-ip=66.63.167.143;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id E76FB8EE1A9;
	Tue, 18 Aug 2020 14:00:43 -0700 (PDT)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yxTvzG0VvDFx; Tue, 18 Aug 2020 14:00:43 -0700 (PDT)
Received: from [153.66.254.174] (c-73-35-198-56.hsd1.wa.comcast.net [73.35.198.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 3908A8EE17F;
	Tue, 18 Aug 2020 14:00:40 -0700 (PDT)
Message-ID: <1597784438.3978.6.camel@HansenPartnership.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Kees Cook <keescook@chromium.org>
Cc: Jens Axboe <axboe@kernel.dk>, Allen Pais <allen.cryptic@gmail.com>, 
 jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com, 
 3chas3@gmail.com, stefanr@s5r6.in-berlin.de, airlied@linux.ie,
 daniel@ffwll.ch,  sre@kernel.org, kys@microsoft.com, deller@gmx.de,
 dmitry.torokhov@gmail.com,  jassisinghbrar@gmail.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de,  maximlevitsky@gmail.com, oakad@yahoo.com,
 ulf.hansson@linaro.org,  mporter@kernel.crashing.org, alex.bou9@gmail.com,
 broonie@kernel.org,  martyn@welchs.me.uk, manohar.vanga@gmail.com,
 mitch@sfgoth.com,  davem@davemloft.net, kuba@kernel.org,
 linux-um@lists.infradead.org,  linux-kernel@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net,  netdev@vger.kernel.org,
 linux-block@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, 
 linux1394-devel@lists.sourceforge.net, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-hyperv@vger.kernel.org, 
 linux-parisc@vger.kernel.org, linux-input@vger.kernel.org, 
 linux-mmc@vger.kernel.org, linux-ntb@googlegroups.com, 
 linux-s390@vger.kernel.org, linux-spi@vger.kernel.org, 
 devel@driverdev.osuosl.org, Allen Pais <allen.lkml@gmail.com>, Romain
 Perier <romain.perier@gmail.com>
Date: Tue, 18 Aug 2020 14:00:38 -0700
In-Reply-To: <202008181309.FD3940A2D5@keescook>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
	 <20200817091617.28119-2-allen.cryptic@gmail.com>
	 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
	 <202008171228.29E6B3BB@keescook>
	 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
	 <202008171246.80287CDCA@keescook>
	 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
	 <1597780833.3978.3.camel@HansenPartnership.com>
	 <202008181309.FD3940A2D5@keescook>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.26.6
Mime-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=Qrj9DcFV;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b="D+8/Cr58";       spf=pass (google.com: domain of
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

On Tue, 2020-08-18 at 13:10 -0700, Kees Cook wrote:
> On Tue, Aug 18, 2020 at 01:00:33PM -0700, James Bottomley wrote:
> > On Mon, 2020-08-17 at 13:02 -0700, Jens Axboe wrote:
> > > On 8/17/20 12:48 PM, Kees Cook wrote:
> > > > On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> > > > > On 8/17/20 12:29 PM, Kees Cook wrote:
> > > > > > On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> > > > > > > On 8/17/20 2:15 AM, Allen Pais wrote:
> > > > > > > > From: Allen Pais <allen.lkml@gmail.com>
> > > > > > > > 
> > > > > > > > In preparation for unconditionally passing the
> > > > > > > > struct tasklet_struct pointer to all tasklet
> > > > > > > > callbacks, switch to using the new tasklet_setup()
> > > > > > > > and from_tasklet() to pass the tasklet pointer
> > > > > > > > explicitly.
> > > > > > > 
> > > > > > > Who came up with the idea to add a macro 'from_tasklet'
> > > > > > > that
> > > > > > > is just container_of? container_of in the code would be
> > > > > > > _much_ more readable, and not leave anyone guessing wtf
> > > > > > > from_tasklet is doing.
> > > > > > > 
> > > > > > > I'd fix that up now before everything else goes in...
> > > > > > 
> > > > > > As I mentioned in the other thread, I think this makes
> > > > > > things
> > > > > > much more readable. It's the same thing that the
> > > > > > timer_struct
> > > > > > conversion did (added a container_of wrapper) to avoid the
> > > > > > ever-repeating use of typeof(), long lines, etc.
> > > > > 
> > > > > But then it should use a generic name, instead of each sub-
> > > > > system 
> > > > > using some random name that makes people look up exactly what
> > > > > it
> > > > > does. I'm not huge fan of the container_of() redundancy, but
> > > > > adding private variants of this doesn't seem like the best
> > > > > way
> > > > > forward. Let's have a generic helper that does this, and use
> > > > > it
> > > > > everywhere.
> > > > 
> > > > I'm open to suggestions, but as things stand, these kinds of
> > > > treewide
> > > 
> > > On naming? Implementation is just as it stands, from_tasklet() is
> > > totally generic which is why I objected to it. from_member()? Not
> > > great with naming... But I can see this going further and then
> > > we'll
> > > suddenly have tons of these. It's not good for readability.
> > 
> > Since both threads seem to have petered out, let me suggest in
> > kernel.h:
> > 
> > #define cast_out(ptr, container, member) \
> > 	container_of(ptr, typeof(*container), member)
> > 
> > It does what you want, the argument order is the same as
> > container_of with the only difference being you name the containing
> > structure instead of having to specify its type.
> 
> I like this! Shall I send this to Linus to see if this can land in
> -rc2 for use going forward?

Sure ... he's probably been lurking on this thread anyway ... it's
about time he got off his arse^Wthe fence and made an executive
decision ...

James

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1597784438.3978.6.camel%40HansenPartnership.com.

Return-Path: <linux-ntb+bncBD2YD3N55IFRB7EG6T4QKGQEAGPO45I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id E22C9249ACB
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 12:48:30 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id jm22sf1191873pjb.5
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Aug 2020 03:48:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597834109; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nbb7RQxoHuVuLXqRMB81f53zsxT8lpdTBj5Wa1tMQo6yxfoCIkJ6+9QY5cp/xBlsaQ
         I0uSuHICcPbS6+V+zf/HgMiopveIprWC3jX28hSwZjNVgFir+JiJMUCQXKE6DrcTyIY+
         bsGsVRlhB4g/vqqdv0hoJJf8VtizCt5AheG8pEiX0p6OnP6fVYSUVONZjKVQ0ip9lMj5
         fEFWNsPK6B4WVdpQLUmUvQmDclXW+plrwT68AtXRZlB9CiTl3nHYk2iIeKq0aU63Xel5
         CIZekC1Wp/YZtKMjQIyAnMU7DT6eXUeAwKRrUz/5pstyk0XwNKp8j6/eoL8a8Sz+RYyd
         vdbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=HlJgkpZ3MOA73jsDln1NdgrlPsqJAPu+MEOeAdKjKNQ=;
        b=kx0PEw+QuLjCWGpeNJSYNlqmBB59LkCq+0uAvJxEtYkMRFE7ntwKVXe0jTa/6+LL0c
         hYRhliB+QC5CgYmJOIcklKxsYm3/8yBlJowa7VIqGrJ88wyK/pNp2mdQG/0M7Hfgf4YB
         wYNBVARUtC0GuJUjWcrfYWKbb2si9Aou5PyuylmgtqPNQu4JKG/D4emPFfeIFGRFL+q4
         a6l40YV6/jciFTAiQ2n20dTtvRb4VmX+XJ47djdXjBWLNdjgCukgcJu4kS5N6ZqKep2H
         auaraOFVvtfl8hxQ83WIRf68ZnXWtZugWNrW5Ih4PRvKF7j+I/jubWKwQQA60ni6RBh1
         rrgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SAlnLFGs;
       spf=pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HlJgkpZ3MOA73jsDln1NdgrlPsqJAPu+MEOeAdKjKNQ=;
        b=kFeZmR4i6F9xGZsvuk9xVi97iGw6fP6jx96yaY7S+a5HjcWETMXsIZGsZoSYzqEra5
         PQKfXaAR630Btoa1Ebj/Jx6NY6L4cEskAFQckbFyVz16edwMaHYSmfp++viODSpPuIDx
         I+3GRxTasWHcoMp7JaumN8za4DHOlxO3JOBY7XNHisCzjPr2rQ5B632B9gVzHJc/5Ird
         KsOpGQNDuhKVcfOCM9XPrhmeLFdp/MIfW1sPevcyICuvpinNBLjjtwMlVg+NwS2ek+hw
         Z51O50h/Ti+ciia5FsuJAm/0GNeORopQ7MSoH/v3lwxjsMgmRcY/jE5qTGEcaLobtgPb
         6/8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HlJgkpZ3MOA73jsDln1NdgrlPsqJAPu+MEOeAdKjKNQ=;
        b=X3F4bptTtO+jVKxjqBGLOrhMoi2z2BlVT/encNT2rcb+/i5N7hE5venyjlpMEeDaW2
         i4ul1EuqPrrsT4BPtIVP7Ejw+bics/whbtosp8N1j9K9Vonupke1F0jlAacePpZw95SF
         SRanhXZT8mmRQ+UK4y9ecFVWJchMNC6qeMC/w7MawVGdRhMp7n74Jz7UEING06NtfNKJ
         L/iUGNu1lJXlt6eDD/xptO6j+2Cpfh3y5ARoM7c5YYhAyqrKtUcubL2SYHar6rqUgtfC
         0LKac6RGfUbhyMsYt4oehwOcxXi0javmgOP809armpNHUKZRhfvZrwkfneCvgQmIVIUa
         du6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HlJgkpZ3MOA73jsDln1NdgrlPsqJAPu+MEOeAdKjKNQ=;
        b=sFn0zgxYB2Mu2q9srluccNKN0AYQIvECmYo2N+mYURlrF01hg4AbkYsioyQoBFZwZw
         yfG523xqnVir5GRmAOUdXpU70teczbPrlAqPvbAcaDfhWhSnv1eQQgtjNmAdQ3qEnCf+
         gaAgz/TyPsYr7koYVhX1iXAqXEUYD1HRWWwuPAaEF60l+eBTZnS/8HoydSyJLS1MH5Zg
         W3PhFHwR2VVKRsK3JnXdwPWwy4Xnc1BO+KNQ3maRFOtAdXwvQlTxpwRpjkhKsjgpGEXd
         wcFGL090NDyR7UdLkmUI2NB7nGo35yPoSeJ4amFdPv6pRrOruRn90QsF03kzn3LqrFWr
         VWAg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5307l0/A3sQA4NOh+Ki4d2C+HpbRKr4ZegwiDa+5iuiVgSLpa7Hv
	Dt9EBWn0mP/Bnzq3r+e87to=
X-Google-Smtp-Source: ABdhPJwYmxqK0kdPCjqYh6RTzZus+g7b5NzdSDK9GdzNFvmYh/7YC3W7RuThZxn613nToGiDa9OTnQ==
X-Received: by 2002:a17:902:323:: with SMTP id 32mr11374269pld.59.1597834109054;
        Wed, 19 Aug 2020 03:48:29 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:fe08:: with SMTP id g8ls10072891plj.1.gmail; Wed, 19
 Aug 2020 03:48:28 -0700 (PDT)
X-Received: by 2002:a17:90b:241:: with SMTP id fz1mr3782119pjb.213.1597834108611;
        Wed, 19 Aug 2020 03:48:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597834108; cv=none;
        d=google.com; s=arc-20160816;
        b=JSSiE3c+8cYSwByLGGquvYdL3fHeCyOxihmcQFvfBomJjpWkzyGHr+YM0Sb7iqBfFs
         Qv+cZnsI5di70aUn3iLxISRY2s4xDWV/blNhO3yoM8nuFNiB8MEa7F3EcM6QpZy7WBOM
         KL6DMRIZvPCqG0OW01jdZu66Jdnk3PRliL6PbPNBSDgvebtP1VmeZ8U7a9tyx7NGoxVu
         dDKzaA0KzDwRoDTUbXOE6+ZzXjM0eG+1t8MTk8XkqZgzqnLoG+57+UPcuiSVsIVEMOPF
         qpP+OEVqtDWWqQU+jZkNi5GpXGmjDt5qw/d+RuQm2U9ROl5tprRQwoEh5Rnzvue+NQam
         heSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JFCS1wWCaky01GdCrS5KhBNLCXiKvx8eu/9Q1CWY57o=;
        b=FMp/F08O/2pyUHQUi1JtlyCTm5v0RvnRJ7ii6N45+N6PMIwwBsh2ZF8u95mHWB5eEY
         eL28eS9cjRYHrt82KdBN5Y8NrxAUoFSYrmyYSLLufEj73u3+R/Hbu4oWtuh28UdrWyKw
         JFkj0+CkBF2sc+6lJEMJKcd44BVMiQbdQ8ImymqHIn9KQ6POwiaHwwXC1szpLW5hybWr
         NiUStwQRgBweQwW7tTzJeePHC3z8Vs7YyDKPB6iDH8DqA6dqbffFC17v9cOv+GS273vW
         kYjVV/Ojw+zGMA/wskZ4wcp5GRJLt80boaHTOvuMyMAARo+42Cjk91we2u2uni2oWVTp
         1Fig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SAlnLFGs;
       spf=pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id c11si139516pjn.0.2020.08.19.03.48.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Aug 2020 03:48:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Received: by mail-ot1-x342.google.com with SMTP id x24so18701107otp.3
        for <linux-ntb@googlegroups.com>; Wed, 19 Aug 2020 03:48:28 -0700 (PDT)
X-Received: by 2002:a9d:128c:: with SMTP id g12mr17527086otg.242.1597834108000;
 Wed, 19 Aug 2020 03:48:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com> <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook> <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook> <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com> <202008181309.FD3940A2D5@keescook>
In-Reply-To: <202008181309.FD3940A2D5@keescook>
From: Allen <allen.lkml@gmail.com>
Date: Wed, 19 Aug 2020 16:18:16 +0530
Message-ID: <CAOMdWSLi-aUeKDN8Xn-X2uW_LmWsp2n=NL3dPGiUbQKm_MxcAg@mail.gmail.com>
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
To: Kees Cook <keescook@chromium.org>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>, Jens Axboe <axboe@kernel.dk>, 
	Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at, 
	anton.ivanov@cambridgegreys.com, 3chas3@gmail.com, stefanr@s5r6.in-berlin.de, 
	airlied@linux.ie, daniel@ffwll.ch, sre@kernel.org, kys@microsoft.com, 
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
 header.i=@gmail.com header.s=20161025 header.b=SAlnLFGs;       spf=pass
 (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::342
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

> > > > > > > >
> > > > > > > > In preparation for unconditionally passing the
> > > > > > > > struct tasklet_struct pointer to all tasklet
> > > > > > > > callbacks, switch to using the new tasklet_setup()
> > > > > > > > and from_tasklet() to pass the tasklet pointer explicitly.
> > > > > > >
> > > > > > > Who came up with the idea to add a macro 'from_tasklet' that
> > > > > > > is just container_of? container_of in the code would be
> > > > > > > _much_ more readable, and not leave anyone guessing wtf
> > > > > > > from_tasklet is doing.
> > > > > > >
> > > > > > > I'd fix that up now before everything else goes in...
> > > > > >
> > > > > > As I mentioned in the other thread, I think this makes things
> > > > > > much more readable. It's the same thing that the timer_struct
> > > > > > conversion did (added a container_of wrapper) to avoid the
> > > > > > ever-repeating use of typeof(), long lines, etc.
> > > > >
> > > > > But then it should use a generic name, instead of each sub-system
> > > > > using some random name that makes people look up exactly what it
> > > > > does. I'm not huge fan of the container_of() redundancy, but
> > > > > adding private variants of this doesn't seem like the best way
> > > > > forward. Let's have a generic helper that does this, and use it
> > > > > everywhere.
> > > >
> > > > I'm open to suggestions, but as things stand, these kinds of
> > > > treewide
> > >
> > > On naming? Implementation is just as it stands, from_tasklet() is
> > > totally generic which is why I objected to it. from_member()? Not
> > > great with naming... But I can see this going further and then we'll
> > > suddenly have tons of these. It's not good for readability.
> >
> > Since both threads seem to have petered out, let me suggest in
> > kernel.h:
> >
> > #define cast_out(ptr, container, member) \
> >       container_of(ptr, typeof(*container), member)
> >
> > It does what you want, the argument order is the same as container_of
> > with the only difference being you name the containing structure
> > instead of having to specify its type.
>
> I like this! Shall I send this to Linus to see if this can land in -rc2
> for use going forward?
>

Cool, I shall wait for it to be accepted and then spin out V2 with cast_out()

-- 
       - Allen

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAOMdWSLi-aUeKDN8Xn-X2uW_LmWsp2n%3DNL3dPGiUbQKm_MxcAg%40mail.gmail.com.

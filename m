Return-Path: <linux-ntb+bncBD2YD3N55IFRB45Y534QKGQEY4W66MQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2F42481AC
	for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 11:16:36 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id e12sf21470698ybc.18
        for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 02:16:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597742195; cv=pass;
        d=google.com; s=arc-20160816;
        b=y01WQvjPBk2aG7CTrOd3h44tykQ+u15pwb0rX3V5+/Pe8M6Btg9nAuwrd6fTXNUzre
         d/7C7WGgsvCEhhexpwybOmxcAqTzfl+IgMgSotffUIN1EP0jcjIMWdDZCyupUbta9MEP
         ErlmvNvKTChcd1lAv699X2UVjQ2h9fe7U9b2BsQEmDJMnpXHhSOXkefGeXBe+X4yt0lB
         xhr9DotdBmv4+m3+vZSsfKLBjRlVAgX18lfs90o6mgCzEONA+w7v3krSR3kveGIDRFoe
         yfye+Tdk8RFNmiHH4Q1nzaRWDxup9Y0eDJYittWiu20cMOgC9x06S1Txtm+NrEg28P0k
         j4qg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=X+o4mdZ7BRvqPb8N8vrfRN6ibRfVNmIM6DwbIoo15YQ=;
        b=Hx7kkxuPkkDDfU6qlFGC3wtOhA1cR0JTjhQz2yf6foaL/z+jEcgaw2E9svCQc5N1xq
         t2IAH+5AmOGspGFJ5kWihiVTkPGLw0Xjcbx4QX04OYSFo/Tp26Z30HX/H2xHmhxvJZAG
         eAFXfFu1e+XSVfXnGpgnZkZlBSW4skDQBh9Z7ePfOkbMYKrgA/adMsHk0NoN/K4K2yZq
         TSWrUdG1JaK4GvjnMwIqqGFjXe0CQwueuDoLqCcOuFX217MbLBzG3mhp5AU9A0VJfPA4
         CkczBDSqJ7aeK8qwDXQ7sryW6JFLEEINxMg1PaSNRA2rv8cVtssq/ZkUjPuWVf6s4002
         R2tw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oAk9KLz4;
       spf=pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X+o4mdZ7BRvqPb8N8vrfRN6ibRfVNmIM6DwbIoo15YQ=;
        b=gooTRTiMH2t9zeMLRy38ghtl1ZXg5BV9NACQiMbXCrdojqcGDjIs/uPWVVt2DxtGEG
         dK3MV7pZzOMcOdEHvor3v5mEZYCoObpMVoCbuHiHc4/BuVlE+9h1M8KGxTsaRo7YreL6
         y9N7jJcPGyTy82wUgK8GFaN9qKSUPT+YsRCZB3ip9qsaPQoX2S/KPX5HNo8thumLeNN/
         hbidB6DKFuwDx3gxOwRPAWP2MJlLJAsJXHQYyiONPQm4RJOdsEn/dZ1U4gs/fLEPitTI
         pqN7PF+6h0040x9ky/aIIreo4iawxdBLMwske4ozgOKbWodLraYvfO/rJycI0YtXrWDI
         EkSQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X+o4mdZ7BRvqPb8N8vrfRN6ibRfVNmIM6DwbIoo15YQ=;
        b=AwI8OZgaNrSQgOYO0oTCbmu2Uyr77c1GdrV7sLWIY/wKSUsjuLczuf+ujvSV0jtqIQ
         I6gSNQXiPXh80gqn2Kn6dDY3QStm6QOG2QfCvri7zOQtURLlysUAiyLTu+YZzNmNd3yU
         D5ILvGkoi2gdj4vXAh1qTtWSPcAA3lQdUVqElp1CS/QUlDIvFS71Pap4tBbOHmOhOYyC
         YD++Bai0Y2uqHcYy7xT7B20Y8YCKHPDs04PFisq5mzIp3qzM3vNlCt2JZentF4vk1np1
         bN0j+Vdfy0ELDcZV3HqM0YamFD4+zlcn8hIg/F+gaVaJZeHPxVU/l5eGQHRFGWTpN/hQ
         olhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X+o4mdZ7BRvqPb8N8vrfRN6ibRfVNmIM6DwbIoo15YQ=;
        b=a8E7HsXDKhlPazFOwqIPP0RhCjVK4A8BUUxbIfZBE9O55bv2ayEFwMRvQGmYSXsxtD
         05Omcdga0uQ0O/b4dId7JGD43h6RXgl4VDdFn8fpbsJFK/Yjl4YBVFkBkXqAMUK27bFE
         IMVimmouWw8OlTdDJOf9gCG+tXlZjaOZmj1gCARY6SCjiK3Ybx8gDZ4qPbLJxH4Yv85P
         85m519u6g1UHsIsj/7oOH6P/6bQf4uhoI6J9t0yzn8AUsZlzrdPqzHQhARbCDLCRsVS1
         QEE5oGAM/2ggEFwHtjBpeDTPwcmxZ9ARQJhbyh4Vfx1/YJ8EG6dD8dlki2BSaVoCFTJL
         wwjg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532TEtWUk5c6fbIekFNoLmauj//WNtyzE2KBxPgLQ0NZAFIkjnxu
	mA9nE0CIavDOnrfrLc/Nkew=
X-Google-Smtp-Source: ABdhPJz7QNfACpZhn2C/m8cunwqYuXFCcbWo451oRyB/IntB36+5Q0f3HNyIIPQaT1fV4GczD+tKOA==
X-Received: by 2002:a25:ca0f:: with SMTP id a15mr25612893ybg.256.1597742195417;
        Tue, 18 Aug 2020 02:16:35 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:40c:: with SMTP id 12ls7949306ybe.7.gmail; Tue, 18 Aug
 2020 02:16:35 -0700 (PDT)
X-Received: by 2002:a25:fc06:: with SMTP id v6mr27520143ybd.478.1597742195084;
        Tue, 18 Aug 2020 02:16:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597742195; cv=none;
        d=google.com; s=arc-20160816;
        b=jqCZd2S1WmuE0SdeQPt/7oZNhgzc6K5dQPtW/a5+tg5y4kCtRcX6fxkC6D2grNmplT
         ws96giwWcVukkjpnqMKzUxyvjQFqii4+TbpkmDv46rh/wnSDNMUo2lVZS1U9YMv/I+tQ
         iK8a5UTducskxv0BWn1yJtbIpqp54wDq125hqEUBaOU5qqPi6HxYcbB5DF8a5ZOImq0K
         OQQT+ioLyc6dwKBJn7uJ2IR3wzNs/jyGd3ar5HemD1RvL7jnoLihyiRfrKIvmta8tNIC
         9lmc5SIbLgalEbl3lo9HiGlt3G4zmfUSyAlCan1dTpJID0lCzntQL6eV+qXq92SpWCPr
         Zlzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=XZ5gSn6/zxDXq0JbeRnX/CK1QRoCv2dl+iqkeCW1pS8=;
        b=Sb2KBFO82HJ+JMP9GZTtNlV769XR4PKS0REX1Az0d4eQTJks/AwVWamy5m4D8RMwN1
         WfgKHDUK2egNNL50YuJpOzuHQ4w0u4TaQL4ILMfKbtncFkbp3BAabOPAaoKg9W8TGOPf
         r4cMtwKOkkQ1jnSltVW5JeYNCbjD3M7cadRDdn4+azIfnbK2nG6rGaHhvb+uQzbHFOUf
         WZXxGt22X8f87YT15aMX2MLF0Tid5ewwOYYJko7+EQzcsKBifle9SpTTb5cTnqjYtQaD
         M28Z9ZF6QkZhg14Zida2Wd4thcirAdsUfarVT2detEMAAmDpDKdh5k50yeEVyXI7rV3j
         vqsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oAk9KLz4;
       spf=pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=allen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id m193si1455669ybf.1.2020.08.18.02.16.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 02:16:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Received: by mail-oi1-x244.google.com with SMTP id z22so17369720oid.1
        for <linux-ntb@googlegroups.com>; Tue, 18 Aug 2020 02:16:35 -0700 (PDT)
X-Received: by 2002:aca:6c6:: with SMTP id 189mr11628018oig.134.1597742194718;
 Tue, 18 Aug 2020 02:16:34 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-3-allen.cryptic@gmail.com> <20200817121514.GE2865@minyard.net>
In-Reply-To: <20200817121514.GE2865@minyard.net>
From: Allen <allen.lkml@gmail.com>
Date: Tue, 18 Aug 2020 14:46:23 +0530
Message-ID: <CAOMdWSJXCn5KYHen4kynH1A5Oixo+yPzs3oathsfa8gtKZGkjg@mail.gmail.com>
Subject: Re: [PATCH] char: ipmi: convert tasklets to use new tasklet_setup() API
To: minyard@acm.org
Cc: Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at, 
	anton.ivanov@cambridgegreys.com, 3chas3@gmail.com, axboe@kernel.dk, 
	stefanr@s5r6.in-berlin.de, airlied@linux.ie, daniel@ffwll.ch, sre@kernel.org, 
	James.Bottomley@hansenpartnership.com, kys@microsoft.com, deller@gmx.de, 
	dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, maximlevitsky@gmail.com, oakad@yahoo.com, 
	Ulf Hansson <ulf.hansson@linaro.org>, mporter@kernel.crashing.org, alex.bou9@gmail.com, 
	broonie@kernel.org, martyn@welchs.me.uk, manohar.vanga@gmail.com, 
	mitch@sfgoth.com, David Miller <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, 
	Kees Cook <keescook@chromium.org>, linux-um@lists.infradead.org, 
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
 header.i=@gmail.com header.s=20161025 header.b=oAk9KLz4;       spf=pass
 (google.com: domain of allen.lkml@gmail.com designates 2607:f8b0:4864:20::244
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

> >
> > Signed-off-by: Romain Perier <romain.perier@gmail.com>
> > Signed-off-by: Allen Pais <allen.lkml@gmail.com>
>
> This looks good to me.
>
> Reviewed-by: Corey Minyard <cminyard@mvista.com>
>
> Are you planning to push this, or do you want me to take it?  If you
> want me to take it, what is the urgency?

 Thanks. Well, not hurry, as long as it goes into 5.9 with all other
changes.


>
> -corey
>
> > ---
> >  drivers/char/ipmi/ipmi_msghandler.c | 13 ++++++-------
> >  1 file changed, 6 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > index 737c0b6b24ea..e1814b6a1225 100644
> > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > @@ -39,7 +39,7 @@
> >
> >  static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
> >  static int ipmi_init_msghandler(void);
> > -static void smi_recv_tasklet(unsigned long);
> > +static void smi_recv_tasklet(struct tasklet_struct *t);
> >  static void handle_new_recv_msgs(struct ipmi_smi *intf);
> >  static void need_waiter(struct ipmi_smi *intf);
> >  static int handle_one_recv_msg(struct ipmi_smi *intf,
> > @@ -3430,9 +3430,8 @@ int ipmi_add_smi(struct module         *owner,
> >       intf->curr_seq = 0;
> >       spin_lock_init(&intf->waiting_rcv_msgs_lock);
> >       INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
> > -     tasklet_init(&intf->recv_tasklet,
> > -                  smi_recv_tasklet,
> > -                  (unsigned long) intf);
> > +     tasklet_setup(&intf->recv_tasklet,
> > +                  smi_recv_tasklet);
> >       atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
> >       spin_lock_init(&intf->xmit_msgs_lock);
> >       INIT_LIST_HEAD(&intf->xmit_msgs);
> > @@ -4467,10 +4466,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
> >       }
> >  }
> >
> > -static void smi_recv_tasklet(unsigned long val)
> > +static void smi_recv_tasklet(struct tasklet_struct *t)
> >  {
> >       unsigned long flags = 0; /* keep us warning-free. */
> > -     struct ipmi_smi *intf = (struct ipmi_smi *) val;
> > +     struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
> >       int run_to_completion = intf->run_to_completion;
> >       struct ipmi_smi_msg *newmsg = NULL;
> >
> > @@ -4542,7 +4541,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
> >               spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
> >
> >       if (run_to_completion)
> > -             smi_recv_tasklet((unsigned long) intf);
> > +             smi_recv_tasklet(&intf->recv_tasklet);
> >       else
> >               tasklet_schedule(&intf->recv_tasklet);
> >  }
> > --
> > 2.17.1
> >



-- 
       - Allen

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAOMdWSJXCn5KYHen4kynH1A5Oixo%2ByPzs3oathsfa8gtKZGkjg%40mail.gmail.com.

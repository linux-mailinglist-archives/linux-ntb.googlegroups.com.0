Return-Path: <linux-ntb+bncBCNLTYGKMIIMJ6HO7ECRUBBWCFALY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0242483DF
	for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 13:32:22 +0200 (CEST)
Received: by mail-ot1-x337.google.com with SMTP id z10sf9101628oto.11
        for <lists+linux-ntb@lfdr.de>; Tue, 18 Aug 2020 04:32:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597750341; cv=pass;
        d=google.com; s=arc-20160816;
        b=iQaDfgfXAk4lRaRuCC49MBiGFltgSvkh8Gh4mR6Gyq73djj0oC6RXVsXUAbkNbaAGB
         JzSLUQIxfgORgqahGit0GpGNf9W5OBnsZFX/zhs5bL6DyaFb6prZkygoQqcDFqwwdD8/
         W5ViebFqNnPMevBIMrcxLU59kiymC4Hy3blUKqbONFJD0D/ovxVxHFsOxA/OZVprc7LK
         NM42HPQ9yEmRYZEMG5tbb+3e+OHZYkEHSdtKK7Hi665q+UPye+De6QNnqIq9fLyjpbCr
         k9j7q/ynEKGcDt0k2OK6lGrAGkXcaFT/UMo7bCzHkF9ETq0J8s2UH53onnSZV64Stm/+
         xMxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=SvPBRHZXZ2rQULKJEpn24IMCcs6FR9slZWY0CFcth0Q=;
        b=RQ02DTTzPwXFAFsmb6u4RNjW6nny4O+7gQQunZ0jhsjnIrMzAvaW55FPxHr8lOI4Ud
         Wza9HYZijQa/LhHQSuQcktliNJZ3IKc7onPWRaRDDTlqBn/K/62LR5o5lS2tcbzKdZNv
         RuRIl3ZmyBsUxtiBiSRYcDQwxmcb9ZUIW369Pp5hru4aXVzdyHXu6hpsayDio5lPd6zq
         Ix/gCiO0W/v16E48OAyom/pUqy+CJqVubgYDlDzy4ja9nns/xDxiCeGk9yf6ohtTDmCK
         KuULbHaRN0G0s/SLaCha5WyORE8rUx14T24gvC1dJ8vbveub+NoGoB38a5V4ByQlqD1m
         efAw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lpcmiZRC;
       spf=pass (google.com: domain of tcminyard@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=tcminyard@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SvPBRHZXZ2rQULKJEpn24IMCcs6FR9slZWY0CFcth0Q=;
        b=HJLnsr6nFdWLzZrSKcY9Py8zq7HaMzqthdrNwnzE8aVqKky9FmbYAAa1wDnyxiMb3E
         pFEbZmuMr5fOnGDzGq2BlkpCk1RTI1fbGfPkqLnn62+pGMaveyq2vfy0YZtaxE5jSGru
         Sbq8elBYn/+W0XJL38CwSZvKdRNu31JvsQ+WBNiOOjaNvE5Joqyy5VWDXF4lmf1tAbIJ
         8CmSiI3ODrLedvogwv7I+tKdCJvE+2wA3+edY8zXMQeIbl/8kod/TFMZpcj+iy5mEcc7
         /evaI0ghAn5sJ+m9Qispyaxf0+oW7eEtuAqHRVHbyDnLbfvyrqmVRaBYnB8109qv25EY
         RPdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SvPBRHZXZ2rQULKJEpn24IMCcs6FR9slZWY0CFcth0Q=;
        b=tnoLPIiITOtepHHe1cRBulqrzI40bdWdEShPKjM0VUFD1psgXC9N8AeXqJy9Qs3o6h
         f6JDPvRbu/lxk8QCCEn07BDJSX+dfZsIn7xUpuKyCAKwzpHNrzAIeymN6aBM0l3LlEw6
         fWy430dA8T5GwsdUR4fCplXB4Z7dt2witosgZXTz5LrGOzKD7qEZcnhCM/4+4IUfcTfu
         NTSNDYYIWCyjwwcQflLQerXcWXChjGtH/yVjkGTJzg4ParMNhSizY92v7wB8p3rSABek
         pVj/0Qf1110vYMqEvvP8j9cOFkx/EIIRqKXeNHAh1cHla5O1tjJwFGeMkKy1C64TP/aX
         kJAQ==
X-Gm-Message-State: AOAM532GUVLPygpgjmW9jITgaie/4/wjvBJp2k9Vatzd1o9ViqA+a0Es
	ldUqkALeA8rn7c9EXGHlHNs=
X-Google-Smtp-Source: ABdhPJyMA2v0Hcr5pX3vfYOEZkH5Y2wgQWDniQp2386oLooeolfH/z+ldYP2kPS+1yw1xaLLt0uN4Q==
X-Received: by 2002:a4a:ea06:: with SMTP id x6mr14545755ood.14.1597750341040;
        Tue, 18 Aug 2020 04:32:21 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:20cc:: with SMTP id z12ls1046653otq.4.gmail; Tue,
 18 Aug 2020 04:32:20 -0700 (PDT)
X-Received: by 2002:a9d:2f23:: with SMTP id h32mr15147810otb.334.1597750340509;
        Tue, 18 Aug 2020 04:32:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597750340; cv=none;
        d=google.com; s=arc-20160816;
        b=ySHEk0rwx7FC4VAyHwngW3mBwN9ncnGH/Rc9pUeKWAPT+MwqpHbylxBYUHyFsKBtCe
         FHg0VenK2Tpcpd1ERMxKCZn0BUN4goSFCvTgKLQaNwPYC92Ppv6nR8dodMmz5r7zJs3k
         CpOGMjY/9BZYYBNFpdLnLizqkAi3Sz1Trz+Bmlbos05ry7FbPOyaAJc7sqn3t452oxS6
         FA5775J4z1GrEIiifYX7pA06gXKNlYgTm1H342IlobWiJBIAeFqBB1vfJwYR0YmE3ZOA
         hF2EctG2CX1GqNnxMI6D0sOLPrAi4BN+JGQQgLx9q3x6xyx0nIEjBYsK82vs91oT5B5m
         ee6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ExSCm02y3qpUSj/p3vHeizuT1G9r/WCp9sMwgc77Xhw=;
        b=JTtqG9Nz73OILsWY1NdvN6uNGf+i51m9xOQs6NMt99rC3kNOim5sEyep684yO0R093
         GTKL54BKgOPCdfOo9eV60h1vzELdsudIUIkQ4kwl6MgwcYsC2gvk/8zVMqpBBJlTYO5U
         eHIhR0Sg2AgL6af+vNGv5VsjXn95J8PhZyOh1PUhoY9vZJgJVo/evrK68UuiwTo8qjrL
         3+jnEnmQRjngLAMbHz1f3LD+HAERuHkPCezaDuyP33C/NU+L74QI2tU1IeW9eycxHJg/
         dtwXKgAJQ0Om+2xx7Q+X+r+h0tBT0li2CMLvEdMZmG7Ax9VCR6rZScwLt2LW9j0gRNjL
         txTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lpcmiZRC;
       spf=pass (google.com: domain of tcminyard@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=tcminyard@gmail.com
Received: from mail-oo1-xc44.google.com (mail-oo1-xc44.google.com. [2607:f8b0:4864:20::c44])
        by gmr-mx.google.com with ESMTPS id d11si1141498oti.2.2020.08.18.04.32.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 04:32:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of tcminyard@gmail.com designates 2607:f8b0:4864:20::c44 as permitted sender) client-ip=2607:f8b0:4864:20::c44;
Received: by mail-oo1-xc44.google.com with SMTP id x1so4066161oox.6
        for <linux-ntb@googlegroups.com>; Tue, 18 Aug 2020 04:32:20 -0700 (PDT)
X-Received: by 2002:a4a:7241:: with SMTP id r1mr14426630ooe.48.1597750340029;
        Tue, 18 Aug 2020 04:32:20 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
        by smtp.gmail.com with ESMTPSA id v35sm3862490otb.32.2020.08.18.04.32.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Aug 2020 04:32:18 -0700 (PDT)
Sender: Corey Minyard <tcminyard@gmail.com>
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
	by serve.minyard.net (Postfix) with ESMTPSA id 4AF641800D4;
	Tue, 18 Aug 2020 11:32:17 +0000 (UTC)
Date: Tue, 18 Aug 2020 06:32:16 -0500
From: Corey Minyard <minyard@acm.org>
To: Allen <allen.lkml@gmail.com>
Cc: Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at,
	anton.ivanov@cambridgegreys.com, 3chas3@gmail.com, axboe@kernel.dk,
	stefanr@s5r6.in-berlin.de, airlied@linux.ie, daniel@ffwll.ch,
	sre@kernel.org, James.Bottomley@hansenpartnership.com,
	kys@microsoft.com, deller@gmx.de, dmitry.torokhov@gmail.com,
	jassisinghbrar@gmail.com, shawnguo@kernel.org,
	s.hauer@pengutronix.de, maximlevitsky@gmail.com, oakad@yahoo.com,
	Ulf Hansson <ulf.hansson@linaro.org>, mporter@kernel.crashing.org,
	alex.bou9@gmail.com, broonie@kernel.org, martyn@welchs.me.uk,
	manohar.vanga@gmail.com, mitch@sfgoth.com,
	David Miller <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, Kees Cook <keescook@chromium.org>,
	linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org,
	linux-block@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	openipmi-developer@lists.sourceforge.net,
	linux1394-devel@lists.sourceforge.net,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-hyperv@vger.kernel.org, linux-parisc@vger.kernel.org,
	linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-ntb@googlegroups.com, linux-s390@vger.kernel.org,
	linux-spi@vger.kernel.org, devel@driverdev.osuosl.org,
	Romain Perier <romain.perier@gmail.com>
Subject: Re: [PATCH] char: ipmi: convert tasklets to use new tasklet_setup()
 API
Message-ID: <20200818113216.GD2842@minyard.net>
Reply-To: minyard@acm.org
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-3-allen.cryptic@gmail.com>
 <20200817121514.GE2865@minyard.net>
 <CAOMdWSJXCn5KYHen4kynH1A5Oixo+yPzs3oathsfa8gtKZGkjg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAOMdWSJXCn5KYHen4kynH1A5Oixo+yPzs3oathsfa8gtKZGkjg@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: minyard@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lpcmiZRC;       spf=pass
 (google.com: domain of tcminyard@gmail.com designates 2607:f8b0:4864:20::c44
 as permitted sender) smtp.mailfrom=tcminyard@gmail.com
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

On Tue, Aug 18, 2020 at 02:46:23PM +0530, Allen wrote:
> > >
> > > Signed-off-by: Romain Perier <romain.perier@gmail.com>
> > > Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> >
> > This looks good to me.
> >
> > Reviewed-by: Corey Minyard <cminyard@mvista.com>
> >
> > Are you planning to push this, or do you want me to take it?  If you
> > want me to take it, what is the urgency?
> 
>  Thanks. Well, not hurry, as long as it goes into 5.9 with all other
> changes.

Ok, this is queued in my for-next branch.

-corey

> 
> 
> >
> > -corey
> >
> > > ---
> > >  drivers/char/ipmi/ipmi_msghandler.c | 13 ++++++-------
> > >  1 file changed, 6 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> > > index 737c0b6b24ea..e1814b6a1225 100644
> > > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > > @@ -39,7 +39,7 @@
> > >
> > >  static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
> > >  static int ipmi_init_msghandler(void);
> > > -static void smi_recv_tasklet(unsigned long);
> > > +static void smi_recv_tasklet(struct tasklet_struct *t);
> > >  static void handle_new_recv_msgs(struct ipmi_smi *intf);
> > >  static void need_waiter(struct ipmi_smi *intf);
> > >  static int handle_one_recv_msg(struct ipmi_smi *intf,
> > > @@ -3430,9 +3430,8 @@ int ipmi_add_smi(struct module         *owner,
> > >       intf->curr_seq = 0;
> > >       spin_lock_init(&intf->waiting_rcv_msgs_lock);
> > >       INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
> > > -     tasklet_init(&intf->recv_tasklet,
> > > -                  smi_recv_tasklet,
> > > -                  (unsigned long) intf);
> > > +     tasklet_setup(&intf->recv_tasklet,
> > > +                  smi_recv_tasklet);
> > >       atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
> > >       spin_lock_init(&intf->xmit_msgs_lock);
> > >       INIT_LIST_HEAD(&intf->xmit_msgs);
> > > @@ -4467,10 +4466,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
> > >       }
> > >  }
> > >
> > > -static void smi_recv_tasklet(unsigned long val)
> > > +static void smi_recv_tasklet(struct tasklet_struct *t)
> > >  {
> > >       unsigned long flags = 0; /* keep us warning-free. */
> > > -     struct ipmi_smi *intf = (struct ipmi_smi *) val;
> > > +     struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
> > >       int run_to_completion = intf->run_to_completion;
> > >       struct ipmi_smi_msg *newmsg = NULL;
> > >
> > > @@ -4542,7 +4541,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
> > >               spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
> > >
> > >       if (run_to_completion)
> > > -             smi_recv_tasklet((unsigned long) intf);
> > > +             smi_recv_tasklet(&intf->recv_tasklet);
> > >       else
> > >               tasklet_schedule(&intf->recv_tasklet);
> > >  }
> > > --
> > > 2.17.1
> > >
> 
> 
> 
> -- 
>        - Allen

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200818113216.GD2842%40minyard.net.

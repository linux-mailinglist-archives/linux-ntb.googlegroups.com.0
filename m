Return-Path: <linux-ntb+bncBCNLTYGKMIINN2PJ7ECRUBDUKXX2O@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9B224661F
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 14:15:19 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id a14sf18051912ybm.13
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 05:15:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597666518; cv=pass;
        d=google.com; s=arc-20160816;
        b=uIrKL3sHqKfeqDV5+fa/jUzDJLvTTt9LGP2Ddt4CKDrV8znk313dOzADyH3NvpemFk
         1f7OoQpxVaAN+N2Jczk1Ycgv5A91rw3w7c3biOvwhP/zrPnBdRejerThTEJnoXePHmv3
         fvcapAockE8svSiizgnyFX7dk/7qvbN7ZJu/kGmr+fwvvgHxmAFNOba0ujEPS/b2xt0L
         c/pqmrlFHkFWOMJWWPjWpzDHBVggi9oyToL27F2uZLRTbI9Pt4cVmHsnBqprWofvTikr
         lsrA/XZGFmefwkWsdVyfSsCQBpyrKhdzbWYEeMRJBpNS+lQKKyCot7pSdOnTphyzDhte
         VfgA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=Wbzuh0paj9py/q6Pyk6s3G2bwJ26aB0fRYpg7/tbz18=;
        b=jLM6fwiR8VfGfi/pJhHkCBYrtb3PjZw05ibyIXLFHyTWLIHWYqmoaEhlNqgd7dCbM7
         iTUJP9XBHr9pAcbtXTVulm7UxvtQCO+Gi+MbJk29wGbNdqWXD9SkrzbI6DAGdWJE8lDZ
         fosz3fpbs0Ec5BmOXs6rpObz7PB6LvG8JcRqIRxyJiZDBFGpFMyxGUY7BpsxtTM4v2b3
         SlJmk+oanrjEYmPtDTA0yBNh3S6mq8S9gUR691ZGWtyK+iyfOwJ3qIUhyyAMOh47oYlL
         WZfCXKcynbHUwCLPHUAgzzW7eHOCf0F2JWezJjyaRFpRGdzcqM3zc0dQLysJ95Ycj0PZ
         wL/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KQ04CZsR;
       spf=pass (google.com: domain of tcminyard@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=tcminyard@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wbzuh0paj9py/q6Pyk6s3G2bwJ26aB0fRYpg7/tbz18=;
        b=LuJx0/RiaX2/L/yWNf86/LmMGBt+jybph5K40FGPoDX6jspGvi4C5h5Mr84CIjZ4Ny
         cT11TS6PtKw8KggqkxKh28fyKPk0ZrF3dEHKUOcZq8jTDk9slPesJ3NrmzdCh9aDEHYX
         YA/35dP0ifFHCTpCMU8eyy7d2q5f2v2bRLoe/KzudW8PMhQr/oa0P2b7uAV/DFqifxIJ
         1IRRvzdAqjRf7niifq84m0CYeLOx1XIo5fHNGQPlmb3ns9FUHsxlT2/LD33GXBOSRuMy
         HuWhQD9m1eWiOXQFyXhHRa3f2Yi9XecH9zT5Kh2O22DPlczbb3CpAsjIPlqzSoAMt2+b
         jGcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Wbzuh0paj9py/q6Pyk6s3G2bwJ26aB0fRYpg7/tbz18=;
        b=YylNQC3Zl+vwRMRxMuN1u/qbaODj7nm2hvQq77Uma1nKKKYZerC9LGqUWQ5ZSrdIUi
         hdC2pBufN9/aB0QHVQIyKQM5ZVyhfSwOoH+05JaGlTsXI/gfuJmRALw96xdMJLOizowJ
         LBTkkxS/Vi6J0suuIQ2pwqwiC1F4qpvIGN+kYmu0yQq0tjV89lpVCnQBhAazoDRstRS4
         bwxc79ERjTdZNvIWXHd2D9+uRUDtnMh6FQ9Zwse9+9vLqvhGTSXA9j0LsRFilcC/ib1D
         akKDLEDfdZHSaTUBdpS6qh8AuFH6YnOtijxlBZXE8aTLxIlxuCAxQ11Rsi0O0S0ndhSz
         ieJg==
X-Gm-Message-State: AOAM531DbPKpyOotsuriXlIF5L8BZ4usyOpl4f50CmwgqcIwng+k1bMe
	LNoBRfU3gZZ+v6wLkvHQ/ug=
X-Google-Smtp-Source: ABdhPJw4A8ui4P9ejGOYyBfVY5CNCsE32U36J0qtodQ8fFmQlWmjyNbUGyqCLPf/QWEVpJD5pUrpuQ==
X-Received: by 2002:a25:42d6:: with SMTP id p205mr19911605yba.284.1597666518231;
        Mon, 17 Aug 2020 05:15:18 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5b:b0d:: with SMTP id z13ls6627625ybp.8.gmail; Mon, 17 Aug
 2020 05:15:17 -0700 (PDT)
X-Received: by 2002:a25:ab2c:: with SMTP id u41mr20117750ybi.399.1597666517867;
        Mon, 17 Aug 2020 05:15:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597666517; cv=none;
        d=google.com; s=arc-20160816;
        b=YlPbsE627o+Mr1yMM6UnNzE0KLJ+6f7FeenmctF+qQ8o8BAlNVh/4aJasT7364roTs
         6AJ7mNQFzIRGx3dBL7/BK8flYxxLpB5oPQfhrmobv5h6Szw3smeiYEZhy2n0NKvgk9MN
         0y+DJalj0hE4YSFU3v81T/50ZX0L7PUF+6/kfy7NrV16zYAUQVGAN66VVW0Yqu/1bqps
         PQtLb+Ef9wKtUHAZQcD4Fgha36czxsbKBN5p/6EBkqGaXeNJdhpZWcfXIq1EH4xmn5E/
         bwYB1j1MX+R+MsqJzv3wt+oFVBJfXDd0v7/+b51uyTyeuo5TvvV8akoLSUOLrzJH4VLX
         peHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=HJ0m+miDorhqglJ9JrK44iTq3d9R15TmbjC29old1f8=;
        b=OUcj4TbjiaALtfk8m6Q0ITqat/f2YaRYJ+oN/MidqL6tbIwYTXosXwsd/MAYuKuwah
         9n7BcqWfUJB0yZvZ2L+4QCIpKlZybJrzHYng8wnScIPCI7EvLkU7hX2Shh6SvLfUysLF
         7TMhGrqWnpFJQM804jclUaRC0a20dQ5hammOy+FoRrzV8pk6G+EVZXMAbYxGQ/MxF2it
         CSx4xIFTZGvhIeAxdBPHACw0li+neXCDcitcfQiqFQwL7TnBS3PiMk+MOY44+b0jJZeH
         HbJhnIkclqO2epyfiGBTmFb153pdGH1BMwHsFVneXwbMJ3D8/7GmP0j6B5c0w2/N8oXr
         GCSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=KQ04CZsR;
       spf=pass (google.com: domain of tcminyard@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) smtp.mailfrom=tcminyard@gmail.com
Received: from mail-ot1-x341.google.com (mail-ot1-x341.google.com. [2607:f8b0:4864:20::341])
        by gmr-mx.google.com with ESMTPS id p67si847927ybg.2.2020.08.17.05.15.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 05:15:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of tcminyard@gmail.com designates 2607:f8b0:4864:20::341 as permitted sender) client-ip=2607:f8b0:4864:20::341;
Received: by mail-ot1-x341.google.com with SMTP id h16so13200108oti.7
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 05:15:17 -0700 (PDT)
X-Received: by 2002:a05:6830:1346:: with SMTP id r6mr11152982otq.325.1597666517323;
        Mon, 17 Aug 2020 05:15:17 -0700 (PDT)
Received: from serve.minyard.net ([47.184.146.204])
        by smtp.gmail.com with ESMTPSA id l17sm3384049otn.2.2020.08.17.05.15.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 05:15:16 -0700 (PDT)
Sender: Corey Minyard <tcminyard@gmail.com>
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
	by serve.minyard.net (Postfix) with ESMTPSA id 846E11800D4;
	Mon, 17 Aug 2020 12:15:15 +0000 (UTC)
Date: Mon, 17 Aug 2020 07:15:14 -0500
From: Corey Minyard <minyard@acm.org>
To: Allen Pais <allen.cryptic@gmail.com>
Cc: jdike@addtoit.com, richard@nod.at, anton.ivanov@cambridgegreys.com,
	3chas3@gmail.com, axboe@kernel.dk, stefanr@s5r6.in-berlin.de,
	airlied@linux.ie, daniel@ffwll.ch, sre@kernel.org,
	James.Bottomley@HansenPartnership.com, kys@microsoft.com,
	deller@gmx.de, dmitry.torokhov@gmail.com, jassisinghbrar@gmail.com,
	shawnguo@kernel.org, s.hauer@pengutronix.de,
	maximlevitsky@gmail.com, oakad@yahoo.com, ulf.hansson@linaro.org,
	mporter@kernel.crashing.org, alex.bou9@gmail.com,
	broonie@kernel.org, martyn@welchs.me.uk, manohar.vanga@gmail.com,
	mitch@sfgoth.com, davem@davemloft.net, kuba@kernel.org,
	keescook@chromium.org, linux-um@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org,
	linux-block@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	openipmi-developer@lists.sourceforge.net,
	linux1394-devel@lists.sourceforge.net,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-hyperv@vger.kernel.org, linux-parisc@vger.kernel.org,
	linux-input@vger.kernel.org, linux-mmc@vger.kernel.org,
	linux-ntb@googlegroups.com, linux-s390@vger.kernel.org,
	linux-spi@vger.kernel.org, devel@driverdev.osuosl.org,
	Allen Pais <allen.lkml@gmail.com>,
	Romain Perier <romain.perier@gmail.com>
Subject: Re: [PATCH] char: ipmi: convert tasklets to use new tasklet_setup()
 API
Message-ID: <20200817121514.GE2865@minyard.net>
Reply-To: minyard@acm.org
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-3-allen.cryptic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200817091617.28119-3-allen.cryptic@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: minyard@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=KQ04CZsR;       spf=pass
 (google.com: domain of tcminyard@gmail.com designates 2607:f8b0:4864:20::341
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

On Mon, Aug 17, 2020 at 02:45:57PM +0530, Allen Pais wrote:
> From: Allen Pais <allen.lkml@gmail.com>
> 
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
> 
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>

This looks good to me.

Reviewed-by: Corey Minyard <cminyard@mvista.com>

Are you planning to push this, or do you want me to take it?  If you
want me to take it, what is the urgency?

-corey

> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 737c0b6b24ea..e1814b6a1225 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -39,7 +39,7 @@
>  
>  static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
>  static int ipmi_init_msghandler(void);
> -static void smi_recv_tasklet(unsigned long);
> +static void smi_recv_tasklet(struct tasklet_struct *t);
>  static void handle_new_recv_msgs(struct ipmi_smi *intf);
>  static void need_waiter(struct ipmi_smi *intf);
>  static int handle_one_recv_msg(struct ipmi_smi *intf,
> @@ -3430,9 +3430,8 @@ int ipmi_add_smi(struct module         *owner,
>  	intf->curr_seq = 0;
>  	spin_lock_init(&intf->waiting_rcv_msgs_lock);
>  	INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
> -	tasklet_init(&intf->recv_tasklet,
> -		     smi_recv_tasklet,
> -		     (unsigned long) intf);
> +	tasklet_setup(&intf->recv_tasklet,
> +		     smi_recv_tasklet);
>  	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
>  	spin_lock_init(&intf->xmit_msgs_lock);
>  	INIT_LIST_HEAD(&intf->xmit_msgs);
> @@ -4467,10 +4466,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
>  	}
>  }
>  
> -static void smi_recv_tasklet(unsigned long val)
> +static void smi_recv_tasklet(struct tasklet_struct *t)
>  {
>  	unsigned long flags = 0; /* keep us warning-free. */
> -	struct ipmi_smi *intf = (struct ipmi_smi *) val;
> +	struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
>  	int run_to_completion = intf->run_to_completion;
>  	struct ipmi_smi_msg *newmsg = NULL;
>  
> @@ -4542,7 +4541,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>  		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
>  
>  	if (run_to_completion)
> -		smi_recv_tasklet((unsigned long) intf);
> +		smi_recv_tasklet(&intf->recv_tasklet);
>  	else
>  		tasklet_schedule(&intf->recv_tasklet);
>  }
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817121514.GE2865%40minyard.net.

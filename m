Return-Path: <linux-ntb+bncBCF5XGNWYQBRBFN65P4QKGQE7GOLIMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 65C80247754
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 21:48:38 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id 39sf1007084uau.9
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 12:48:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597693717; cv=pass;
        d=google.com; s=arc-20160816;
        b=NrfTbMXOD/dAn7WravFG0rWOnJxLkqAe5vpTx0SXInoIylxBWghIZ/3CNQrmPSY6qM
         Obl24EH1sRPbZgm1KXi/I7LRzFLwYafd+56hghhEtz62FJbRHuIuDd3lrS4B5wuuSuwq
         ET9iKvDCXmjzM+u3f6hSR7/XGEF5wyDGPFMLB/ZdfHQXwk7oGW7VtGWj5yG04LqpBqty
         Ju+Ynfe8A4Q5BL4yh2OyLMuDWljuaIiQDINuLmXmBoWVsFqK2PyX9L7pjEk/pO2S+Z+9
         qPEroGpfR2v9Dtp2tMmNJVV4pnYFgekBA1qDO5Z02m5YhlT1yVIzGooB6izQgjdI9sYq
         5w9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kqLE4pxBc5WSpSeaw9BA1vp0mg5cRyOUuTFpb3s/g1A=;
        b=yDEBLwWOtXPnUSo7Foxm2TXN/Cnygzozt6dIizxyoy5ImTFt9AMIxbYfp9lKL2bW2f
         Fo9mM9Cff7kRcLGCL3aCUrhGonFQMrcLfdilW2AV3Q3xnf5mIzCEyMx0dA7dszNIEkuV
         VQbSSCk0p9ykzHD5gjs3/yUT654W8bwGSVWNNyLBD71M+Pk9bURDw2M0rM4oYZTIhdwe
         ARmgvmyHx688lprDkn7k2IumVKed9G01tHYq/MP+aYMIC/TCA+WcpGLKGT8msv+j5ton
         mgUd71LHFiuaPW7dYnNxAuhMP5Rn3eJxYJ5Yk/YKFzZ1N5bEIYZB2efml8l7WAr+023F
         MPbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UZMS8z7l;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kqLE4pxBc5WSpSeaw9BA1vp0mg5cRyOUuTFpb3s/g1A=;
        b=NI0PiR0Nh9U8KpyZMfg0IbN8++i3ezgG2cmznV3ouxK8Q0cUA7Mt+KR/xgSFUt4NZu
         lQA87hMPrLAWnW+cUYf7RsEXNKGSfm9vY13OP5KfMPOmCC8+BhRfU4NIi3ONBLA/adQF
         Tk6CCMAIg/99/N3omjr1THhmhQq2F3YCfeVovyyTrnJ/UGcAaJk25YAtzRIIBYPnUH+1
         /Vmb+l2l6QFiAeTPFJyQsQPWeB+wo5lbuR7UER8rpHKVIsSK28qJPiUT0fRUA8mwIpup
         w6h23P2Z9xWajs6eKlXBNbj6xJWgTlBZC3wU4pZIDLLe0zsikI45qhxlsJ4xczkISbnA
         yHAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kqLE4pxBc5WSpSeaw9BA1vp0mg5cRyOUuTFpb3s/g1A=;
        b=uOE8AHJTHNWchb+dOwbRQ+BOiFguB7jE1hIfibQoh+MhR/qxlCGVMFn0kZudG4LowK
         2XPeOEvKhejPZ5f+sbmzEtb4Q2Yf5tdc+ICUUnUs3KITaCbRtD/EbdNnMwYIvh2ywbnZ
         3kzyjnKN2o7zsvq9c8O956Zs7KL8tbgu04N0Jp/jBLPrXYNHJm1cJZKyPVe/wAzdGz9+
         d0KqETHcX4M1yXvO05Y1bgeXRzqcoNoDL3RxKbjX/7Vyl5K5nxd9rBMlGt5lkXbSel5E
         TP7jpwR6meZHY397Aphun3jy7Z2HVADYxy/EX4HdapTo6qxow4Uko52aHgwmdaE/GsWM
         0AWA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533AG332fdXgY1gbubcDiYIjObJOThdNhoIxSI6dzD+5CRp2roPk
	c4R8PRcjV14JCKrCH8847tQ=
X-Google-Smtp-Source: ABdhPJwY/TJGid6qfcjzj5eIGRj9X6b4b/XK+U6ujsG7hZK10LFnP9MhN0N0tc8nn53rsgBhe+fmFA==
X-Received: by 2002:a1f:2490:: with SMTP id k138mr9189034vkk.98.1597693717422;
        Mon, 17 Aug 2020 12:48:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:2254:: with SMTP id i81ls854904vki.6.gmail; Mon, 17 Aug
 2020 12:48:37 -0700 (PDT)
X-Received: by 2002:a05:6122:1353:: with SMTP id f19mr9913082vkp.38.1597693717059;
        Mon, 17 Aug 2020 12:48:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597693717; cv=none;
        d=google.com; s=arc-20160816;
        b=Qj8bAZAWC7rkSEYfiN60Aj8KX4IRpUCjaAoH9hvOtMOnbTlSCLO86w6IaoyfuWyRdm
         zodP4jYTCTMoS/3VJZxZyWMnCJa2pEvZEx9OMErtnf1bYnJzbnXJO0kvyPrAiOPZi+RB
         uF5UAe+qO318SUAuLlU/dFgk4T0G+h7oV+158JEaobuzSBkqNPhsheNvh8aX0YxQSLKr
         8uVoYeYs8StsvgVJ/g2stm1QYEYQ7FagINtiwCxHi60VuKsbGu8CVrd4Tng0LvUZ5wpY
         90nBA0qIY11LKW1GHzh79D1VuTF2Aq+zeyFCKxB7Q3zB6OS2WPjW6GC/mR22DW9rwVeo
         x0Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=W/QCwiSnTEO13wgX75lDPlG5RmKP/R2S9uafXZLpRO0=;
        b=Xs3Xyo2Yy0wmPSXHs5t3Ac+NjJc+SYIw11rmubQ/vRTmM+CKYZe8GRpFj5fm8Zf8X5
         MJM8OMwa/B6loOlh4KdrE8jbpV5iPp9OtzhoRwylqJEy52ykk3PVz+ytJIcg0ZWc2e58
         DBKgOyV8ImUDa12A3EIwuBF9TfYJB08NNSDnJqsiD3J0m7F5T5rPusl/0sgiuETtX2ek
         JQHDCKrUQkspTSNObfVCpIZK2nDZpRfrVVKHWspOT7EmDap95xGzdeq/XUvkDWmLo2Nx
         Ar/GtkdgLVOwrGIyAR44GTwQ2ItqXHkstyuD23vg4CJPUSLz+Jz5Ckp4V99/WEbZqeQS
         mAcw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=UZMS8z7l;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id p197si983330vkp.0.2020.08.17.12.48.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 12:48:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id r4so8065605pls.2
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 12:48:36 -0700 (PDT)
X-Received: by 2002:a17:902:246:: with SMTP id 64mr12417474plc.70.1597693716088;
        Mon, 17 Aug 2020 12:48:36 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s8sm21663342pfc.122.2020.08.17.12.48.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 12:48:35 -0700 (PDT)
Date: Mon, 17 Aug 2020 12:48:34 -0700
From: Kees Cook <keescook@chromium.org>
To: Jens Axboe <axboe@kernel.dk>
Cc: Allen Pais <allen.cryptic@gmail.com>, jdike@addtoit.com, richard@nod.at,
	anton.ivanov@cambridgegreys.com, 3chas3@gmail.com,
	stefanr@s5r6.in-berlin.de, airlied@linux.ie, daniel@ffwll.ch,
	sre@kernel.org, James.Bottomley@HansenPartnership.com,
	kys@microsoft.com, deller@gmx.de, dmitry.torokhov@gmail.com,
	jassisinghbrar@gmail.com, shawnguo@kernel.org,
	s.hauer@pengutronix.de, maximlevitsky@gmail.com, oakad@yahoo.com,
	ulf.hansson@linaro.org, mporter@kernel.crashing.org,
	alex.bou9@gmail.com, broonie@kernel.org, martyn@welchs.me.uk,
	manohar.vanga@gmail.com, mitch@sfgoth.com, davem@davemloft.net,
	kuba@kernel.org, linux-um@lists.infradead.org,
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
Subject: Re: [PATCH] block: convert tasklets to use new tasklet_setup() API
Message-ID: <202008171246.80287CDCA@keescook>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=UZMS8z7l;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::641
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

On Mon, Aug 17, 2020 at 12:44:34PM -0700, Jens Axboe wrote:
> On 8/17/20 12:29 PM, Kees Cook wrote:
> > On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> >> On 8/17/20 2:15 AM, Allen Pais wrote:
> >>> From: Allen Pais <allen.lkml@gmail.com>
> >>>
> >>> In preparation for unconditionally passing the
> >>> struct tasklet_struct pointer to all tasklet
> >>> callbacks, switch to using the new tasklet_setup()
> >>> and from_tasklet() to pass the tasklet pointer explicitly.
> >>
> >> Who came up with the idea to add a macro 'from_tasklet' that is just
> >> container_of? container_of in the code would be _much_ more readable,
> >> and not leave anyone guessing wtf from_tasklet is doing.
> >>
> >> I'd fix that up now before everything else goes in...
> > 
> > As I mentioned in the other thread, I think this makes things much more
> > readable. It's the same thing that the timer_struct conversion did
> > (added a container_of wrapper) to avoid the ever-repeating use of
> > typeof(), long lines, etc.
> 
> But then it should use a generic name, instead of each sub-system using
> some random name that makes people look up exactly what it does. I'm not
> huge fan of the container_of() redundancy, but adding private variants
> of this doesn't seem like the best way forward. Let's have a generic
> helper that does this, and use it everywhere.

I'm open to suggestions, but as things stand, these kinds of treewide
changes end up getting whole-release delays because of the need to have
the API in place for everyone before patches to do the changes can be
sent to multiple maintainers, etc.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202008171246.80287CDCA%40keescook.

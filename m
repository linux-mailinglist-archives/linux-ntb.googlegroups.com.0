Return-Path: <linux-ntb+bncBCF5XGNWYQBRBLVV5P4QKGQEYREGPKY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id 304972475DB
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 21:29:51 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id f13sf6555776oij.8
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 12:29:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597692590; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rf8jwKpYzNkl65Jcgo+u4D2ZGLt5ZXa2f6f2GBwxbFsqmpi2P/pPFT9nNmdaXfylZe
         9cxnJbI4IZ2orcEkl6FDlWZK4qQFLrWi45HhvhoTXvEwAhqm70DSn4YjB4fuhKcGfwxE
         cY27WXWF/7jxiMcegb414hkgf5xcdeJ/FVa3aJEygDGIdtNzvxNbpqDfmzZV0oQm/3uU
         gWkybjsyCxQZ5H6u2XHxziq5XcFv+E6rGlr5Gb8hakkFhVCo+xXeLjJzi82XeV8gH5+R
         jHN67Gbc2S/4Hq/EMXEtaqqAWVJaNurIVB9Gi8sLBfF8rln4woRRNdVcqeNyG6YChuT8
         snIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=GpaZt01pBEmMppuFsDzVhZoStR5+QxPPp6JRaZ+sQjU=;
        b=VJaZjmgDtzzASS/or8gIFjNACPlBaP7G+W7vOWRVYh6gilFHJX8qRDVfvpXqWP7rk2
         GA5iDV9oI+6LODCQBgi9sEMdxAVE1Xg7nafLRUC8A2+MpZpG0q9nFAevDgfmh3Erchsw
         TDAnZLL/JhqkrVZI2ZS9BfbUThYzENS8R3ud3hR1DIKtiqyl1hNRWA+nga3LKMc7p7mp
         D1iP9CJ70Y09PtiqX4Z3QV2bEbIE/WrIuaY4UiVDIesT90JX4qr7z8ExPOLtNUDLQL+D
         m8Py1BOMTTL5vdkMLb+/RUl8J/3MFnHojlYsRWVkJzm2iVu8INRx5a+YWp4XglC+3/K9
         EnRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Il4/WYWW";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GpaZt01pBEmMppuFsDzVhZoStR5+QxPPp6JRaZ+sQjU=;
        b=dQvUzKI/vXMUD7j/ld92C/xtU7grZU3nAacYWUJjzMsdS+nKhSoLPIwf38IHQHAApz
         UvaLkGtS8UDSAZW0EP4pvnnUUYKgWIZYSxmM0x5ZuEeJLGJFAEcFdzi6uqgAIjtdcvYS
         gXdFD8mX1U4sA2SCF/vAkMWKMOIfYHaQaf0nWDi2mGi1D6wcE7iuyO6M1ifVCGmwbRo3
         awY7bs8E01c/QLEpgZDxsuR3EBUmodYBv2iqcFjKwyRn8DtYcyf40mPSDCBzX/3HSbL4
         +jieC2gmbB9pdYOJUooQtneLDWZhT5uN4JcF/BwXHTa/xG4fXHc+WjNASqejOm6LrwHE
         uyFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=GpaZt01pBEmMppuFsDzVhZoStR5+QxPPp6JRaZ+sQjU=;
        b=TpXBEew+i1q1klrIURxlNz04TGCB/0CgC3k8LaaXBIh13yJCQUEZyveQ4bo/wjSuJh
         s5DUEpRrFfk45t1YD0LMQFCZ0FdOLhox1AfwybyLk/UIqQWtRxI/Pw9LWvCW0XPkypJ5
         BtwuETInUx+uvJbNkmn4fl4USb4wGJtrFklX7SmOCu19R/DZCSTsSPkvBXsGFH03+Jha
         V1h9HvlKTWyeJkPuuaOp3HjCL3xppGEQmzJ9CIgZ2i3Bsmo9ncIBYIyLK7Z3AfsKQOv4
         e7z5y/fhojM0qDy5VE5UXm2xf/PHUMCCMoW1Sf3ehcszuJColAozspnYZ2h/KK66yh9v
         TF2A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533l06AiBE5CktmQTt3+gQMKD39FrvnwiNK5XoeGPpObJBYSAg55
	kEmqjjRoYFi9ULvetJKPmpA=
X-Google-Smtp-Source: ABdhPJzj/ywXkGBjn09GAQeswbHwY0M4umm2d+jmvXjmo2X/etEU74JPN9u3kVv2c807O9pkE7wLPQ==
X-Received: by 2002:a4a:2f4b:: with SMTP id p72mr12349512oop.39.1597692590134;
        Mon, 17 Aug 2020 12:29:50 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1d90:: with SMTP id y16ls3849300oti.10.gmail; Mon,
 17 Aug 2020 12:29:49 -0700 (PDT)
X-Received: by 2002:a05:6830:3196:: with SMTP id p22mr13187957ots.102.1597692589798;
        Mon, 17 Aug 2020 12:29:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597692589; cv=none;
        d=google.com; s=arc-20160816;
        b=rngWydKrvFSvVTxnmp2es+5gmYMMG12Ivj/JWCUlUfOM9+bxUX3sFYkuvIq86wObi8
         H+kcB9YJAXOxShX55efpBrqvCOZyNvCi09R+gIv9Kv2cPo6lPNzH/5hW6CRiFacqZe5Z
         OhRNji8KDOtxipcye3ulIAoCYcjkjziiH0ZGHm/Q/uQFuvbiKHHHTTEc2Is6eb7YtyyH
         hzV8i9839NABjMozybNhF8AV08wbjdCOn31PYBxme/5uv/JebrFCJush9miHyWy0P6eV
         181hiclQ183xyw+iz4e1vaQKKsq6XuVCJPAIUgS0waQ9baXWKAbWxILE1y70BoqVnsRM
         VBpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=IQEFM5eDrlk4uN0cUulgaoouXT3z+FbkNrUscxGEwfY=;
        b=rCg45Kx4ZwiroaWxKISc/ObEzCZPzQbUnTYnZ6BOLRTXfV1DupzESIXjvddLpPNKnz
         h1P1bL3BOW1cgF5kxOrOgjBQLuCJjNOXoLgPq31GhSoSOi3AQwO+zaHxcNuC/R8Ht6os
         Hq7siTRcXImh6zZ4rL8bG0/ssRMK4eXxKZH4UJLTrV9sQc+Ug2TgrTA7uJAfrkRK+Evy
         Mw+nNJA5vsnpBFjLvCdwmYZKxhnZeDkTS0KsZfO2BfjKVdMKmZ4pwPDegZwCt8HBikLV
         XUYPYfwh+Xzja49tUk8wO4xdPabU6lIMZ1hD525MYo54ocmqtVrL0XdwPcjKVFyBgBvG
         J6aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Il4/WYWW";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c199si801008oob.1.2020.08.17.12.29.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 12:29:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id m34so8574948pgl.11
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 12:29:49 -0700 (PDT)
X-Received: by 2002:a63:2e87:: with SMTP id u129mr11009060pgu.347.1597692589083;
        Mon, 17 Aug 2020 12:29:49 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h19sm18737765pjv.41.2020.08.17.12.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 12:29:47 -0700 (PDT)
Date: Mon, 17 Aug 2020 12:29:46 -0700
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
Message-ID: <202008171228.29E6B3BB@keescook>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Il4/WYWW";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::541
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

On Mon, Aug 17, 2020 at 06:56:47AM -0700, Jens Axboe wrote:
> On 8/17/20 2:15 AM, Allen Pais wrote:
> > From: Allen Pais <allen.lkml@gmail.com>
> > 
> > In preparation for unconditionally passing the
> > struct tasklet_struct pointer to all tasklet
> > callbacks, switch to using the new tasklet_setup()
> > and from_tasklet() to pass the tasklet pointer explicitly.
> 
> Who came up with the idea to add a macro 'from_tasklet' that is just
> container_of? container_of in the code would be _much_ more readable,
> and not leave anyone guessing wtf from_tasklet is doing.
> 
> I'd fix that up now before everything else goes in...

As I mentioned in the other thread, I think this makes things much more
readable. It's the same thing that the timer_struct conversion did
(added a container_of wrapper) to avoid the ever-repeating use of
typeof(), long lines, etc.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/202008171228.29E6B3BB%40keescook.

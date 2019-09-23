Return-Path: <linux-ntb+bncBCS4BDN7YUCRBWUGUXWAKGQEBGEX5AY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 50662BBE5B
	for <lists+linux-ntb@lfdr.de>; Tue, 24 Sep 2019 00:12:43 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id c15sf1988199vse.16
        for <lists+linux-ntb@lfdr.de>; Mon, 23 Sep 2019 15:12:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569276762; cv=pass;
        d=google.com; s=arc-20160816;
        b=KW2qBe1CDALzod8T1fBC0fNXTnIt3R/ck6mbuZQz+aA92ryVYXlmpw5Ct+dQjeV9lL
         oTjJOYGf+LTv5DlloFvlLa2oKoNEgiUenCjoJY/Y1U1iW+YodjH33L0AyNQwzt5re2vu
         idOyHyw+cKYDrX+d67wb8PMmLeg5k7y165govrze8yeVjpZJawizKykyU22XFb8ZQvfw
         80K25BkH34VwRUBL7mX8Lams3wUd5mUG/VjB56QTjyZmPcGtgPI5NIBFRC5tvhGFZUyp
         J08zCAzCowqcibNSfmFS4SZdg7RH47XZt3mFWdSFl/cF/VVXps3QE7i/K8ZfivUcjfCt
         vqkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7sN/Xt6NhOYyBHn65+6GCWGpNuN2LMzchE1TLmirgQk=;
        b=025kcMa+TdyxrFhrtj9e979j6Uv9dhpTuIZ7osxG57UvSLAzmDoV6uxgGN5bKmdYKw
         bYoj+KJx9y92U9qIUqORRSBmA7RIauAAV77GygDGThwhVeqTKNvcdr1QY+izwxmoMBSx
         N6cLoniR4s90sS5UgE8No9ccjyuyqDeExCXJZK2yvop48V9IMM1vg7+9qEOV/zLJs1E5
         mJsb4vuY9NX5xqy0RPnaJFkMpNz/4dx2N+z5bZuH+dGGUriXBhQvAgUcrnj81CUrhOwU
         8Kv4t6RC68pUgdnAE4QLQ1ML0fbXo9lRm6HyQLbCL0tfefJvNgR0OB6Wc7CG3rJ8xDl3
         dxnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=F8ctJGLe;
       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7sN/Xt6NhOYyBHn65+6GCWGpNuN2LMzchE1TLmirgQk=;
        b=c8uJHtIeHxe4bz2NDb+m3NIGp9sdHUEX3fu/3ZuBjDt4GHwjiMfy1CH2IUdO0whene
         m/Pvfn56dpuhY8eAOqJ8wfJcVvn9EGvk6QLa6FnG7RUjIwR6Hz1qAhhh3qWmQGNVIfOj
         8aC8argwkJwey/Dzn+ndf1JFAAJ2vupmQQDAoilACzaNImF0mWa6nK5dBrj9CVeckBDS
         AHLjGxMn9pp5rsoJU1x5Lfw7Q/Tg0MdaW1gYvoRM8zuujpauFAB0s9Z5Le7Q0aj1jcI8
         FhobZB35ndj7OYtoKMP+tzQve55BZFdp3h1tOM2eoo16U5/DTBnr8naxhyyTBwQ7wKFN
         RdMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7sN/Xt6NhOYyBHn65+6GCWGpNuN2LMzchE1TLmirgQk=;
        b=IjFxRcZd5QpFjh8+8xzRp+p7Ve83R3ZicmaR99/VkMtWoKddF6PrVPS9iLgozJb7z/
         lVXWZlVoywZDbHtf00JzGhxj+oIqzLq/wMOQOTW8Gbr4rWlj+85us28lbCbWdUq7O1+P
         Crxctp9wLTrN/iqOq/LKE7P44s9ORPYCV1IcKIMsJ2rbkMcn756eVuwwGG4grLzfu105
         sNohvoZ6XrTmZqowwO9tz7LjfWudd4+X6nB8HqTOE2VEzeTZjaQG8UslYBgSqG05UYYX
         UC7cOj0wv6veFGKLIDlHHIWoArMFkPfh80oXpWNVIwtR1lsBBSXs8gRXJABZcP8p8zIb
         ME3A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXPbA6mXt3QTqO3B7ajihgSf415iZb6e+YhBolpJzpc/3v1NKrX
	3ITnC/OKiDzubf3lRdcGFeE=
X-Google-Smtp-Source: APXvYqzvvesO8LYAnr0cxBzVNjbxJL2ZS5QFKt5sELKiK5DRVomFlwsutRKPl7bUBRIkI5ayGVoG+g==
X-Received: by 2002:a67:f6d3:: with SMTP id v19mr909426vso.57.1569276762344;
        Mon, 23 Sep 2019 15:12:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:9e8f:: with SMTP id h137ls531615vke.2.gmail; Mon, 23 Sep
 2019 15:12:42 -0700 (PDT)
X-Received: by 2002:a1f:2343:: with SMTP id j64mr1299631vkj.84.1569276762053;
        Mon, 23 Sep 2019 15:12:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569276762; cv=none;
        d=google.com; s=arc-20160816;
        b=grwnoO8h79yKwAjLm6sLY9xqcbmE+mhEo+JwiCMDpg3adQX0UkKQ8CZ5qZsi8H8Zna
         Bwr8JW/0Ni73WQBQmt8rRomLL74NZrEeS4ucKZURL4uV9QyPpejlo7OaY2Kadx4FhTwd
         bboKH3bdD3fkC87mEr0OlszCjpSIxeobVjDWQiJXaFDe1dCkwg6REPD9hcE75w43niHn
         k0V+lPfUeiJoaDgzmc0O0cR+jb9WykEyCmEElGQdJ2eroufiU0PRk9Qlhhli1eX9p9q4
         fTgmnhVE2gXQY0pbuBBz+4FoO0ElF/cvlQWCHH+ykqSCsoyx/vc/7uSQipazgW+rdjqZ
         sjEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=BxQAioENvWKeyWX2UgPIsVXz8z9Ck2G/PQ6H2v2Nkt4=;
        b=PN7hndmDoUYRZQD6BiZxiszEN3kfoermZkZ6ztZjmvj31pWtanQ/gLbB/J/+iITlmS
         LLkFR/v4Nw2cu6/D3hSuO72jaJlS7PcSnCAVrvYCaEcYR033R9zq7UvzjEyY6qZ9NZrs
         g5F5xQcCGGWwiFT6o4J5L74KWtGEf9Q0Qh3Cd1psHRQTMbTfwc/83FPHXSU2MR831MUw
         rMbuP6fNuCNmoiMyyGnHXAJlzFxyIunQ/WL2et5Ib160bKtGu3ijNcfV2z2n0GLjGnOS
         4qrYW0tmqBKfFOcB1B83169i0jC46vVawuZqpecytvSSSZywQAy/a1H3InkqUcWzIC6j
         3r8g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623 header.b=F8ctJGLe;
       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id h184si869123vka.3.2019.09.23.15.12.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Sep 2019 15:12:41 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::d42 is neither permitted nor denied by best guess record for domain of jdmason@kudzu.us) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id n197so37412149iod.9
        for <linux-ntb@googlegroups.com>; Mon, 23 Sep 2019 15:12:41 -0700 (PDT)
X-Received: by 2002:a6b:da06:: with SMTP id x6mr1956758iob.42.1569276761401;
 Mon, 23 Sep 2019 15:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <55f2fb85-9d4d-f78d-e6dd-70b09d7667e4@infradead.org>
In-Reply-To: <55f2fb85-9d4d-f78d-e6dd-70b09d7667e4@infradead.org>
From: Jon Mason <jdmason@kudzu.us>
Date: Mon, 23 Sep 2019 15:12:30 -0700
Message-ID: <CAPoiz9zWo+LuzWG29kSYCrs9FdwvzDycWBEmg_GHL3W5c3QRuQ@mail.gmail.com>
Subject: Re: [PATCH] NTB: fix IDT Kconfig typos/spellos
To: Randy Dunlap <rdunlap@infradead.org>
Cc: LKML <linux-kernel@vger.kernel.org>, linux-ntb <linux-ntb@googlegroups.com>, 
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	Serge Semin <fancer.lancer@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdmason@kudzu.us
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kudzu-us.20150623.gappssmtp.com header.s=20150623
 header.b=F8ctJGLe;       spf=neutral (google.com: 2607:f8b0:4864:20::d42 is
 neither permitted nor denied by best guess record for domain of
 jdmason@kudzu.us) smtp.mailfrom=jdmason@kudzu.us
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

On Wed, Sep 18, 2019 at 1:58 PM Randy Dunlap <rdunlap@infradead.org> wrote:
>
> From: Randy Dunlap <rdunlap@infradead.org>
>
> Fix typos in drivers/ntb/hw/idt/Kconfig.
> Use consistent spelling and capitalization.
>
> Fixes: bf2a952d31d2 ("NTB: Add IDT 89HPESxNTx PCIe-switches support")
> Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
> Cc: Jon Mason <jdmason@kudzu.us>
> Cc: Dave Jiang <dave.jiang@intel.com>
> Cc: Allen Hubbe <allenbh@gmail.com>
> Cc: Serge Semin <fancer.lancer@gmail.com>
> Cc: linux-ntb@googlegroups.com

Pulled into the ntb branch.

Thanks,
Jon

> ---
>  drivers/ntb/hw/idt/Kconfig |    6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> --- lnx-53.orig/drivers/ntb/hw/idt/Kconfig
> +++ lnx-53/drivers/ntb/hw/idt/Kconfig
> @@ -4,11 +4,11 @@ config NTB_IDT
>         depends on PCI
>         select HWMON
>         help
> -        This driver supports NTB of cappable IDT PCIe-switches.
> +        This driver supports NTB of capable IDT PCIe-switches.
>
>          Some of the pre-initializations must be made before IDT PCIe-switch
> -        exposes it NT-functions correctly. It should be done by either proper
> -        initialisation of EEPROM connected to master smbus of the switch or
> +        exposes its NT-functions correctly. It should be done by either proper
> +        initialization of EEPROM connected to master SMbus of the switch or
>          by BIOS using slave-SMBus interface changing corresponding registers
>          value. Evidently it must be done before PCI bus enumeration is
>          finished in Linux kernel.
>
>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAPoiz9zWo%2BLuzWG29kSYCrs9FdwvzDycWBEmg_GHL3W5c3QRuQ%40mail.gmail.com.

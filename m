Return-Path: <linux-ntb+bncBDDYJV4J2MORBFPRWL6AKGQEIWUL6QI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id C0C5A29204A
	for <lists+linux-ntb@lfdr.de>; Sun, 18 Oct 2020 23:50:14 +0200 (CEST)
Received: by mail-pf1-x43b.google.com with SMTP id f15sf4536550pfj.19
        for <lists+linux-ntb@lfdr.de>; Sun, 18 Oct 2020 14:50:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603057813; cv=pass;
        d=google.com; s=arc-20160816;
        b=cXDzAf3tGft1qy6basPmbS4v2MFTVR2Ok1iGxlpLbM4q2/x0H/Zh4x21wBaEhNHDJn
         dBNbMKbCgWt6faBmK9Gv3yT6hX+/BrGdykRfFlri3V1dvGTTtRr4jH+QkW2CE5g+XF2K
         r46yxuoBPNvmzIW7aAxcFB4tWYvvSH74k7UlmjpD8/HTcZlQ/5so1xa5NYNMcEbgNP1a
         X76JGtmCmq8uLg1BEo2hg0DZpEx8huJGaLyBNjfc+zpY/DmRyV7RUsmQ3VSKaYjxFcyc
         00GsHxOlKDjBOTcoxfH4wrISY6nEo0A7jTfS5eEiFfbmpqE6D1sBYlW5XzHT+stoxw8R
         gkPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=SD5SzJKBTM5oOlJ0ImwP+oVh0YE3zyfes4t9FJes/90=;
        b=BiWRg3w2wcW8FsEmgmOuFxq7meuOeVX2E17vJ8NrHehhFdAE/XafO8ppTA6pt1n5pS
         Oji85y/KFNqkA86h95XmCw9y2ZdSYJU6SVWQwrotopNEiGhCHYmGWqQtpXrI1wrRtS3s
         ssC5L944AKQgtMx7CDgeA5lttzk+6xocjp6MIZKjPpcbBEdFyo+Bz1CfiIXdH8nlwC8V
         BskoNd3+954SqAhcIgNd+N93UlbBgfF1pMrZaZVC1uqLBwGNzOxAKKhE0DDBmeE+3DRS
         67igJQTkRLgXivT6Gbb/skiD5TI1rdUy62OVkkUDvb+/RIs7pcElS9zYJ/Moan4o0M6H
         8KTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BT6sX70H;
       spf=pass (google.com: domain of richard.weinberger@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=richard.weinberger@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SD5SzJKBTM5oOlJ0ImwP+oVh0YE3zyfes4t9FJes/90=;
        b=SJHd/qEw+MxTX41+6s2lfd3PzIeCjIFWbXLuEEQvjt6n22aGObTBc8ksVnY7vNclog
         A8eGKEreuSr364R9HPPQ0zeQS5FgQkzcKs5ueSwfk8FNlt0MT58DlyM8MH+bQThXHtQ5
         1axL1NDyZtH6+cWPxgL2V8JcAlNm0tY/reR82fPlnmqmlwc31w03cta6JhatpETv/cPj
         UJ8Ss9cDWLFnFqjlSNW7+VnyVLiin6WuaInLsd22AR8rQfDVj4UG+xhcedumIUcFpZEg
         JA72HTOWGczr+Lb20k5/1i5facsDLX/ZY+oQhkbUGSwXi8r76IKj1E8oWvVvXbjHV/ZS
         z4sA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SD5SzJKBTM5oOlJ0ImwP+oVh0YE3zyfes4t9FJes/90=;
        b=XyjoxM5ozBulGkZZWucCjC1I7I8kSa/mVkh2xfl1YPkdz9LgVE2DN7ni/DOW7bLnZf
         qOWG8t8U0II6JZnPx2UtBqkanz+uqYu3mYdLMEmmp4d7xP1B7ZPew18X2pGOxwAilVQt
         tljM3bOtmkzOdWUP4DWOy0k1E5yr+t+2NzvTorfdAUUeq0438KgG1U/8F/xFpnsoEe9w
         plX1oWcFobc6+U+ws32SL6uc8w/D2yIrMfxvKh48ESVLasGPzgrXcytibHhv48PY+kCc
         Flkd/xQp7x2gOPiLe7MFMjfcUhZFakWeoKpE4RGbEyM4iKnLizGhoWim8xtWU4GcXJ0g
         vVgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SD5SzJKBTM5oOlJ0ImwP+oVh0YE3zyfes4t9FJes/90=;
        b=S3hOT9/7LXNRduvL6gOBtrD8pXJK1Pe71bgtouT2UOnb1mgkB0GfNITHbBxz4E6Sio
         Snp9dt7jgupN5kTRe8DsI9zrgL/OoH4kgt6gdOcokIPA52E77k+L7U9zq7pPjFz7VYen
         Ajp/DECu8jooPg7PIyWivHM5BH5bUkcIlklTclxawIE6gHsLKa4d1mYIn7+wiPLkaCuG
         GGkT+KLs7cZcmUdCu74EPVihzVLoIkc50/YkCM0RzEbMi/IxnHowXsGp8aSYd+MQeyez
         0EjY8exrjX0aPalZVnE/sgAh/3F6GJJ/YNlBoVX/0Q/9e1Y0E2zZb1XiOjWd80jN9GaO
         IyQw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530+z/2ENUDc13XpRKCh7x8EqCxuLHULucX0DphL0vgAApDKm883
	iXKmvxDRauxBRhu7WIiIe7k=
X-Google-Smtp-Source: ABdhPJyXZlgahn9O+h+MBpMQPr5CK5EXuGeiiSViUykaP1a/2isvunZBxAu9W93ioJF4XdxQBELRyw==
X-Received: by 2002:a17:902:b604:b029:d3:7919:bb39 with SMTP id b4-20020a170902b604b02900d37919bb39mr14365784pls.78.1603057813404;
        Sun, 18 Oct 2020 14:50:13 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:5064:: with SMTP id q36ls2643412pgl.0.gmail; Sun, 18 Oct
 2020 14:50:12 -0700 (PDT)
X-Received: by 2002:a65:5c86:: with SMTP id a6mr11806613pgt.227.1603057812872;
        Sun, 18 Oct 2020 14:50:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603057812; cv=none;
        d=google.com; s=arc-20160816;
        b=RPyUNMBfJNxdbsTcD80EeeNYQCpjCYziHfOrKPHr9Cnh14bdKH1FX1Z86/0dEC3AoL
         TOGYNGJwEvzv5OtKDmvJzYb8qER23BN2OV83GnqEqsFVaEW/uTd+hows/ATbJAZPak7H
         2IV43JRyeyGvG3lqLd15ZAg8hmVAglrtJ16GVkpwWuy2vkYZS/vsTBHkxIsN4FhSb6Vv
         HvsU/0TFqtqt82l58Wqm3O6YzvCwVMpqpX9J6rCEQLih7YgyeUKTcMhuLbLXEfkI8pBh
         IgHfqm3MaWVkGUdWw+uKY/Cb8aLtScdrrNWUL1ovFjTfu6md60bJPgfXK4xpYrL3nHWe
         pLYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LW7NtPMGJ2R8VOhKgzw6sjc10vh2YbY8kQEEkfju8fA=;
        b=twRNrs6y8VxncYKBFGrxyb2alirJxMmewpoeGWm087RwrydrEPdRThRx1GhYiLLnJB
         EtEcPDo1tpje9C37fiFcyw9WNNXVPzAREy51pL/KqJfuygwDOZkCAwIqKBKUgLOMiBux
         XaChn5RcnVfPJ5cEF1gHI+3y2cIOWgOjXqmFgB4ybdrnrw5vn1PI4gz09Tputs7ZGR6S
         XkBcEUEY969LMxvOjDD6c88IycXhN9XBAkE2WArHGyBD+WDNE1udSTUDJblDTlSLfojZ
         P4y5WQmT0Yz/ftGvm3OkXnjYKvkd1utuHLU/oVp7C5GH7QHhEBLJCQCvBRCcR8HVYLx6
         29hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BT6sX70H;
       spf=pass (google.com: domain of richard.weinberger@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=richard.weinberger@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id u192si497619pfc.6.2020.10.18.14.50.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Oct 2020 14:50:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of richard.weinberger@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id m9so4993578qth.7
        for <linux-ntb@googlegroups.com>; Sun, 18 Oct 2020 14:50:12 -0700 (PDT)
X-Received: by 2002:aed:2983:: with SMTP id o3mr12423656qtd.285.1603057812125;
 Sun, 18 Oct 2020 14:50:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 18 Oct 2020 23:50:00 +0200
Message-ID: <CAFLxGvxsHD6zvTJSHeo2gaoRQfjUPZ6M=5BirOObHFjGqnzfew@mail.gmail.com>
Subject: Re: [PATCH] arch: um: convert tasklets to use new tasklet_setup() API
To: Allen Pais <allen.cryptic@gmail.com>
Cc: Jeff Dike <jdike@addtoit.com>, Richard Weinberger <richard@nod.at>, 
	Anton Ivanov <anton.ivanov@cambridgegreys.com>, 3chas3@gmail.com, 
	Jens Axboe <axboe@kernel.dk>, stefanr@s5r6.in-berlin.de, Dave Airlie <airlied@linux.ie>, 
	Daniel Vetter <daniel@ffwll.ch>, Sebastian Reichel <sre@kernel.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"K. Y. Srinivasan" <kys@microsoft.com>, Helge Deller <deller@gmx.de>, dmitry.torokhov@gmail.com, 
	jassisinghbrar@gmail.com, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Maxim Levitsky <maximlevitsky@gmail.com>, 
	Alex Dubov <oakad@yahoo.com>, Ulf Hansson <ulf.hansson@linaro.org>, mporter@kernel.crashing.org, 
	alex.bou9@gmail.com, Mark Brown <broonie@kernel.org>, martyn@welchs.me.uk, 
	manohar.vanga@gmail.com, mitch@sfgoth.com, 
	"David S. Miller" <davem@davemloft.net>, kuba@kernel.org, Kees Cook <keescook@chromium.org>, 
	linux-um <linux-um@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-atm-general@lists.sourceforge.net, netdev@vger.kernel.org, 
	linux-block@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	openipmi-developer@lists.sourceforge.net, 
	linux1394-devel@lists.sourceforge.net, intel-gfx@lists.freedesktop.org, 
	DRI mailing list <dri-devel@lists.freedesktop.org>, linux-hyperv@vger.kernel.org, 
	linux-parisc@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-ntb@googlegroups.com, 
	linux-s390@vger.kernel.org, 
	"open list:SPI SUBSYSTEM" <linux-spi@vger.kernel.org>, devel@driverdev.osuosl.org, 
	Allen Pais <allen.lkml@gmail.com>, Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: richard.weinberger@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BT6sX70H;       spf=pass
 (google.com: domain of richard.weinberger@gmail.com designates
 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=richard.weinberger@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Mon, Aug 17, 2020 at 11:17 AM Allen Pais <allen.cryptic@gmail.com> wrote:
>
> From: Allen Pais <allen.lkml@gmail.com>
>
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
>
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  arch/um/drivers/vector_kern.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Anton, can you please review this patch?

-- 
Thanks,
//richard

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAFLxGvxsHD6zvTJSHeo2gaoRQfjUPZ6M%3D5BirOObHFjGqnzfew%40mail.gmail.com.

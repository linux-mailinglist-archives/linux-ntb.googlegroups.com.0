Return-Path: <linux-ntb+bncBCQJP74GSUDRBZU323YAKGQEX6RTJJA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1852E133CA3
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 09:08:08 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id m7sf1256882oim.14
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 00:08:08 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578470886; cv=pass;
        d=google.com; s=arc-20160816;
        b=aHMBMWy8n1gU3MGg6TUmb3gQPudHVoWo7mS1w5w1XfTVMp8UFhq7DFFQRfuGNjB2hf
         vHGIiHV8Bi20uZ6OKTgIpbxvVVCSLuZ+GmLTvhteWdcxFOhimsFtanDsPamyUVb/PyAI
         5dwu6CvZXMzOSh5VdIG0LWdGLSSCKvGgnIWHek9k+MvX8VmVOX3ZQ3kX/6y5N7+nw2YC
         un2GbfFsbEfF35oMrZeo/P+Yt6TblYOr21CvondQD1G5meQvGc5LhEEhVLlUuOXkyG9r
         jZ0DDYaryMXb8qd0V0FJvG+itYo01O4/IvEEHGkhSbugICzkRPzWhZLuRi3qRUxPeI2q
         wPjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nm8xZoSNXchrYmT4usGQgPQK7Q3Q9iR2WvOXtPov3ho=;
        b=tQQHVKjSQHjdRn6Cwt0g+W+d31yYmbJftZgI/rSf5qrTsVV3YikOy4L0chZ061/tWN
         dsG6mZB1297ITNBhJZ7/nLZ535XQ8zxPCTFxWG7cYooaTiZx2WR9VO3crZ5qoOjHOs6+
         8e8kOMmxRhsAX7yGPLkn6Ch0i40zSIfWDpkHqIHQgHzyTK4SNs3tVNIymspZAXMz+YtO
         Uhtuw72+BY9voY3jSw5MeyH+Dg7VxayNT6no7lj3AizxXNXVDCtwQ95bDndHYGF+jjGA
         1UJegClWTBJOAEIoWr3FVOopiot+y8PyoSQgf5ZXCMpnMdiiwzLlssmHfUrqeJfEakZl
         oWVA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nm8xZoSNXchrYmT4usGQgPQK7Q3Q9iR2WvOXtPov3ho=;
        b=faGroU9pBvERaGyQ5tCaNE3B1ZwG8lcE57Lr258tlQHF7SRi7XsVGSrAJCwkdCjYjq
         s7PeTAHCIffiIUpa/ChA/MeipwLkJuVBjSz403boIaWgeEDyXxgrfvlWdcn6hq4kL9Ec
         a2UX40kKSkoCYEiM104Sva4vAIIfRxtQa5du+pGKJNkMRYMlB5BJ4SR9RUhOVoWsfQHS
         UHfqokEd5Pu6bRMQ4mKR76qpWDfd8Mnj5I8XsbMBGxQ2yKyAObmOe4pBnCOjerkCl0kd
         CVugBdHygdXnXZvMhIX58Tzfqe31X7FSMZUMQBYaojas+w5y7oyKHRC6B6s4nrqOGaBf
         Z7Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nm8xZoSNXchrYmT4usGQgPQK7Q3Q9iR2WvOXtPov3ho=;
        b=RrILEo2C568Ly14PE0ecUvz/WrrKCc4kKbAv1vqrL7Yj9Z5byB9ZgkmmlPTGyCoCv/
         N52ar3JqE3PRnTFYnvBbl64kx8XIhQXed2Fk/bDxmH7UUHRool1MZfUV+yKKsdwPKzkq
         a2s/U4Eescm9M1952+eqyxv0jkQmWio/SBynVDy7OkKfj+jxIC29ztXV5XvnkmFme6K8
         AZGwjCbt6+fukbcysuDTR8j1z1MnIsPALt+ENXXr251H32XzUz2pRQRvVfIr65hbxlOc
         f6QodXDHlCR88JKWdd9MCZgolcyOhkwZjycqVJ4FMMDVTXgCHPS73RyZZy8qP+Ety/Ib
         gdIQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVYWNFxH5niroa0qmMC1mdYYKBo47Oh21QzQLUiNA9uJ8+IK7+v
	FA/he4hNck1QuB19Zcu9WYw=
X-Google-Smtp-Source: APXvYqy50KJjVaduOEYFTbD3Mogpf4MLR/v+863WCPPVOURMfOFv6TcTzovcyh9zBbb9qDqx+rjC/A==
X-Received: by 2002:a05:6808:8d0:: with SMTP id k16mr2123819oij.68.1578470886785;
        Wed, 08 Jan 2020 00:08:06 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:c694:: with SMTP id w142ls400933oif.6.gmail; Wed, 08 Jan
 2020 00:08:06 -0800 (PST)
X-Received: by 2002:aca:d15:: with SMTP id 21mr2127084oin.127.1578470886313;
        Wed, 08 Jan 2020 00:08:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578470886; cv=none;
        d=google.com; s=arc-20160816;
        b=IbswOFq7BQB697dL85mxP5nDMESKG5w8xNYTptaqPWWzLuGPyqOktEH5qNZsecXZF4
         R4iGhdT/WQtnehgIH87G2BLbmWVkSO+47ebSm2q+rkz6hSMLvarUQlDpGk9BIdKV+cgl
         jIiOmhvBdHXJTWbZsIIti6JJsV3YEb6X8+gz7U1gaoZWGunxVVzl/3oDz9nwDjd81b1T
         yzeILunSp02Jt88MdgOnRyvf27kKL+ZiiRQxdzR7ICwzgNOzVm/JCLv+XXbLA1ci9OcR
         p8zKxIGhH69eBLf5L2MpNOKZ6+g47rHFS0lPa5kohUdLdFz0/Kg0hNPK4RYkVazs8zUs
         iiGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=X9lAK3bszh6tWp/dVwz4gJZ7NIZBKvl8mgEWhJz1N9U=;
        b=fcE303S5AWR3X6oTTL3IvhyBUVq9DXo09t9KFs0n2F9H+Rnu55gad9E5edFtC4bSCo
         wPQH57P8eXWL6z9JftzMSwDsFddYsXwA3iqVLGSDeLCto8EdfBAwj9HRCTSUheIVT06G
         yf+o/d9TAndMwDxWIxSTXnqbdqZW5sKbd0H1mTl6J4JztgUAOkwMj/B1m8uwqc8/BG3v
         6A4Pvo8vSeR1Ydv/7h2KLj5+tluXWQiYPvTKl8uXk2kciKzw3Kmtltx8lqGin+BCalWL
         UsNAQNtbqLURAweoEN1GpEV04b7AaMAqIga/l/HR72WmVngPGecrNbEme5CRHTdcE4ME
         ZlqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com. [209.85.167.193])
        by gmr-mx.google.com with ESMTPS id e14si161676otr.1.2020.01.08.00.08.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 00:08:06 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) client-ip=209.85.167.193;
Received: by mail-oi1-f193.google.com with SMTP id l136so1912335oig.1
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 00:08:06 -0800 (PST)
X-Received: by 2002:aca:1a06:: with SMTP id a6mr1987025oia.148.1578470885935;
 Wed, 08 Jan 2020 00:08:05 -0800 (PST)
MIME-Version: 1.0
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
In-Reply-To: <1578415992-24054-1-git-send-email-krzk@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Jan 2020 09:07:54 +0100
Message-ID: <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
Subject: Re: [RFT 00/13] iomap: Constify ioreadX() iomem argument
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Richard Henderson <rth@twiddle.net>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>, 
	Matt Turner <mattst88@gmail.com>, Alexey Brodkin <abrodkin@synopsys.com>, 
	Vineet Gupta <vgupta@synopsys.com>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	Rich Felker <dalias@libc.org>, Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>, 
	Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Jiri Slaby <jirislaby@gmail.com>, 
	Nick Kossifidis <mickflemm@gmail.com>, Luis Chamberlain <mcgrof@kernel.org>, 
	Kalle Valo <kvalo@codeaurora.org>, "David S. Miller" <davem@davemloft.net>, 
	Dave Jiang <dave.jiang@intel.com>, Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>, 
	"Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Thomas Gleixner <tglx@linutronix.de>, 
	alpha <linux-alpha@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, arcml <linux-snps-arc@lists.infradead.org>, 
	Parisc List <linux-parisc@vger.kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Linux-sh list <linux-sh@vger.kernel.org>, 
	DRI Development <dri-devel@lists.freedesktop.org>, nouveau@lists.freedesktop.org, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, netdev <netdev@vger.kernel.org>, 
	linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org, 
	Linux-Arch <linux-arch@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

Hi Krzysztof,

On Tue, Jan 7, 2020 at 5:53 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> The ioread8/16/32() and others have inconsistent interface among the
> architectures: some taking address as const, some not.
>
> It seems there is nothing really stopping all of them to take
> pointer to const.

Shouldn't all of them take const volatile __iomem pointers?
It seems the "volatile" is missing from all but the implementations in
include/asm-generic/io.h.

> Patchset was really tested on all affected architectures.
> Build testing is in progress - I hope auto-builders will point any issues.
>
>
> Todo
> ====
> Convert also string versions (ioread16_rep() etc) if this aproach looks OK.
>
>
> Merging
> =======
> The first 5 patches - iomap, alpha, sh, parisc and powerpc - should probably go
> via one tree, or even squashed into one.

Yes, they should be squashed, cfr. Arnd's comment.
I also wouldn't bother doing the updates in patches 6-10.

The rest looks good to me.
Thanks a lot!

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU%3DPQM9qA%40mail.gmail.com.

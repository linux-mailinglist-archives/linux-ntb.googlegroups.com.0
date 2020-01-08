Return-Path: <linux-ntb+bncBDEKVJM7XAHRBT4G27YAKGQEXOJYPFI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2F7134143
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 12:55:59 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id v1sf285110lja.21
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 03:55:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578484559; cv=pass;
        d=google.com; s=arc-20160816;
        b=g0ow1E4KK1Y6pfRsVNV9E1BWgZn88+qCJuBcnDGy8Vhx9ST7Eammmh6IlJq2EHxdNQ
         U7sNcm1oFo/pTQrLfrgdd3zdrcXhPUeHAUulh7fu3ep1YjfSPWgtj/q2wfHQACKWWOIg
         c2xvfFhwrycN8EvHdlgjjmI9CzWRaPvZT1ihen3KrD49anMCHAUjBN4C2Uz1n7kbsLAC
         caZC7Whg8r7yaO5LqEwobEInDIyuGvfWBcTqNC5JjsQ8dc/iPjfgzpbipVjzZ/qEq8jm
         ftOMEHGPdg8/CjCBQiffXp8CYsl7DqXx7I6u94wGs9SzyaGrK9L0/sjZ4zA70Z9iLNte
         Je6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=9QSbaLd7ODy+ba9Hh9VEUb+DLORoKQAxq7KwaXnXbgs=;
        b=v7wWjb/rbn6t4Lbth+RjNRgweBdtASQBZdOl+709BifPtFd4tTXFkks0p9soZdQIIA
         e2C6Cz66mtjuFo4rOKLzkS6j3VBVjb4c4ZzT64VZvH+y69c2GsuDO7ETGP1lRf5YNYYS
         HhzjyBnEkTp3u1GkqLZz6XV8aHKBm+jdGjShLqJ8pODzT5ER4FBcSc5iY7Yjq1jSPYGD
         7ohi1Hz+JG9ZwZwB4+BXszWa+HS1OZJbWTlO7Lf5OtoxwP6OJsXMbbW+tLZShZ3mjpGg
         OQ7InZUjIVFrgNDQKF9GYt2Knd2t+5niiozpzbVhnu48Jm8KLc8rM8FKMqBI1I8S/gtO
         /U7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9QSbaLd7ODy+ba9Hh9VEUb+DLORoKQAxq7KwaXnXbgs=;
        b=HMeEwfICNqxNERc1TGvvHTCBgx1I08nomIGW/2U9j9z3Ptb2GXoBOqcxGWii5jOakp
         I2qISOA/jo0P5g7e0ZDVifNn39YXyb0ydTdfkr928In++OmrYnJdG7bJ/V9mh+OBeZrN
         ZLVtAlwc1QuvCijNFRcHSjQIhsIcw0QqtdN3Fe7NzRqWEgdsADiqUU0wW3A7tcIN3tG2
         Fo09zipNJGJZIEpQRv0pWxkWEK/ZBIGftVT5SY/8VeSpWg3ggXrniDBXH+sTgpP6VRWU
         rW43RZZ8OHVncgUmhPYcLMAJM92cRE3WZoIVK8I3/v1vtKJKdANPES74M1kxGYVbWqR8
         tZBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9QSbaLd7ODy+ba9Hh9VEUb+DLORoKQAxq7KwaXnXbgs=;
        b=I11mowo8RQ83MYTpe1hf/XDJ+8Vix+UybScTQ4XS+Pesuz4PwU0xRqJD59/o4FQCUm
         kTdmahno3bxJAe2MIrZ0b4pKhFmM405OqlB8vN1AQb3r+GyAc4O9cU2iRxs4zojpYCAk
         Y0D9wapu6sERzlw8dp8UTuH97aoWXHsvGM5TJZOJMETAGbhyXolnMCF7vsAr4iKvUKWh
         xBhhBP2ddNChzuzJclFcnV1dL57T2QlHiqJDypUClQ6eIsLUCQBFUtPR9KIHGG5y+8Wo
         3qJ5AQm4Zi/hcmuSeafQ0VQr2HIBF0lBSpR5OUZ9njmvY1XNkiyzSOxl7vXln8eHHgUx
         nwbg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX3nKvNXkDlxFwFkbWBCW61Ih4ZTtxCBG6JGCVF+r1+YDHeFGYX
	7WJsF3vKQfa2++T/40v2LKE=
X-Google-Smtp-Source: APXvYqwv1jLusBFywUQAhnRyAynnum6HORP6tCXirXbKVi45TPZkfnCIxT5B8VDVHwZKIFMnb0KL1Q==
X-Received: by 2002:ac2:44d9:: with SMTP id d25mr2753951lfm.15.1578484559298;
        Wed, 08 Jan 2020 03:55:59 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:4acf:: with SMTP id m15ls232461lfp.13.gmail; Wed, 08 Jan
 2020 03:55:58 -0800 (PST)
X-Received: by 2002:ac2:5287:: with SMTP id q7mr2791765lfm.66.1578484558833;
        Wed, 08 Jan 2020 03:55:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578484558; cv=none;
        d=google.com; s=arc-20160816;
        b=co8CzsQ2jm6dOlIb+717hRI09WyE+fajXpYkMvJAqy8IHoKWRIgoTMRFdAuPKeTSja
         A/jWbAl1feOnXnxafXVrWKEIf3/81vV6eH/ITXh9nkCKQbt5zxGIxA3p74iGautiiWrH
         fPU1gDM3PM8x/THWEifOCVGCVt/6R+Zre4cDRG7SyKntwlVzFx89sKzV8epAjWtjgxlD
         cRo1Wxp8BAjIR7ltl4m2qlpYABVJ++Ye2kMfgzE4Ir5NbFkXC6jTqxL8G8CpS5U5jPdj
         IrppWWmEzMLd3/dJ1f5Ph9Ai36XL9dFgVSqU68Rn0mOstH8DTQ6g/QY1vVEiXIfb92jL
         fxkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=4zD3W/SyfPdQd0gAmEpncIZRIEEMAxIPEieIe+1t9VE=;
        b=KSHlnDC51OR3VZtq4pPB2AJXwelqSBjk26ZsuvtQcZ5NMXpOZMsfzV8Ulvex1iIm5m
         ZAmbRE75AHQLBG0FnpX5+rIq6si6BvC64aEGYHaI/+MhKZwpMbOX/1+16MqIpViGtHKH
         yZWZgUHmrWeCQrnL+abpJbe6jVp778NR3Rff/C8oR1XuYrelk0PiGs5otOAmg2qubc06
         LbbvK8uO1r4t5MRiVanwlHVS9tI2hlNSURey4wftNZHisaVdYiekklkNxIJWYlMfr7Cc
         xUiyH+1cQKci43wSSIj+VodH0ImQcvMmcfROdAlbPVXaKzcSVnXZ2EXn+HlvVGjrqLQK
         YvWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id v16si124925lfd.2.2020.01.08.03.55.58
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 03:55:58 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from mail-lj1-f173.google.com ([209.85.208.173]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MiJhQ-1jJI1z47Ak-00fSqW for <linux-ntb@googlegroups.com>; Wed, 08 Jan
 2020 12:55:58 +0100
Received: by mail-lj1-f173.google.com with SMTP id y4so2995150ljj.9
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 03:55:57 -0800 (PST)
X-Received: by 2002:a2e:9095:: with SMTP id l21mr2608508ljg.175.1578484556968;
 Wed, 08 Jan 2020 03:55:56 -0800 (PST)
MIME-Version: 1.0
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
 <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
 <CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA@mail.gmail.com>
 <CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ@mail.gmail.com>
 <2355489c-a207-1927-54cf-85c04b62f18f@c-s.fr> <CAK8P3a21yPrmp4ik3Ei1BZfeqZNf0wL5NZNF3uXqb4FLRDyUPw@mail.gmail.com>
 <20200108091549.GB10145@pi3>
In-Reply-To: <20200108091549.GB10145@pi3>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 8 Jan 2020 12:55:39 +0100
X-Gmail-Original-Message-ID: <CAK8P3a19ZgLhKJ016Mt_FyZrqnKaWwJyiaauMiUDAHV=DB9_2w@mail.gmail.com>
Message-ID: <CAK8P3a19ZgLhKJ016Mt_FyZrqnKaWwJyiaauMiUDAHV=DB9_2w@mail.gmail.com>
Subject: Re: [RFT 00/13] iomap: Constify ioreadX() iomem argument
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Geert Uytterhoeven <geert@linux-m68k.org>, 
	Rich Felker <dalias@libc.org>, Jiri Slaby <jirislaby@gmail.com>, 
	"Michael S. Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>, Jason Wang <jasowang@redhat.com>, 
	DRI Development <dri-devel@lists.freedesktop.org>, virtualization@lists.linux-foundation.org, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, netdev <netdev@vger.kernel.org>, 
	Paul Mackerras <paulus@samba.org>, Linux-Arch <linux-arch@vger.kernel.org>, 
	Dave Jiang <dave.jiang@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	Helge Deller <deller@gmx.de>, Linux-sh list <linux-sh@vger.kernel.org>, 
	Alexey Brodkin <abrodkin@synopsys.com>, Ben Skeggs <bskeggs@redhat.com>, 
	ML nouveau <nouveau@lists.freedesktop.org>, Dave Airlie <airlied@redhat.com>, 
	Matt Turner <mattst88@gmail.com>, arcml <linux-snps-arc@lists.infradead.org>, 
	Nick Kossifidis <mickflemm@gmail.com>, Allen Hubbe <allenbh@gmail.com>, 
	alpha <linux-alpha@vger.kernel.org>, Ivan Kokshaysky <ink@jurassic.park.msu.ru>, 
	Thomas Gleixner <tglx@linutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Kalle Valo <kvalo@codeaurora.org>, Richard Henderson <rth@twiddle.net>, 
	Parisc List <linux-parisc@vger.kernel.org>, Vineet Gupta <vgupta@synopsys.com>, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Luis Chamberlain <mcgrof@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, Jon Mason <jdmason@kudzu.us>, linux-ntb@googlegroups.com, 
	Andrew Morton <akpm@linux-foundation.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	"David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:txbhiIxLkrpp4uMicSiGF+EWWHCB4yqCLZQtE8FqSBioHt5IGQj
 tolA/fhFMvCxe/h0fI2ZTjZRXwb+pLRuej/8yhnxSCX4kNwon2oBY6l7RN/qqgTfg5Y2UE2
 5rj2zAl1aVNo//JKdtWe2a2omMcY17jTM3PkSceer4OYqne4FvCWH9NGMAIgGMtOp/uJSSe
 O0VXuUjK0AmHGv90nz5yQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GfITsNftqM0=:HJqpHI2Mxnyt0ZVd+6LZER
 goVNzWfUaBmtZ2nsiuzRL0omg6U2Z6DoiXG9LQLmswFOkMEqHdpZmf+afbmJc7/FdPmf1pK9n
 vWdDt9druCb4gk9xqSPmcgfWMVot6ARH+1CgYB/o9Kuja7fkBJa8Yn2suCVYMUY+MTR0MlEDa
 a3w4b4mu6d/UanjjDehvwTlDa3lMGV/0O6nWUWQlG9iOHJtoTqeLUhp+f2juedtddJFj+OW+L
 OE6OIGXnIdbDOdRbYGJfrXyzExqUrNtJpdq7St3VPkXTw4MqX6J5Bog1aYL8CfV/uQW/xrDGU
 7qDy9CltLgDSFr15JhefZvai585c8A6Z0UWtdJhhmrq1tDYOiyoeqty1mR9L+sAvg2m60ahqB
 9rkS7zmFOyevBbgqhYXd8xLq9Q5LamzBh+JZZw8ELUhhJCPvBA+ynuVZHRt5DqWzG6lRC/P4P
 XZWRQb0RxHGIsk8wvOkhWUKQmLldfDb8TE/ZdgDxUcReP5jzRK9KEmMQ2LwFrZmibZcVgBka8
 b75ua/UtwxIPsHqXDMl9ZC3grDmLTYf1qaPrwFuK/2o0DWeEDCufgP5wLa4vu8CbAfw+YbeZP
 39+0f0qiXF/8zHDHBIfvIRwA5owS4BkYmzcmhfDqgentr3E5huDy2sabMSzjkME6gqn8HQrmJ
 9XvbmDf1X+7qR+50v8o2bqpFao+4+R6MXPHmMIzif8woeQHchUVEA+fwtQSUZVJuUqBjIE1f8
 a3wMeTuoYDYfTTO2++lvMHiUhWhaegOY3Qo3apO3mXk7bpXaI7NcXcXQHxprXLFOxq1Civ4b8
 1G8OJa24pKbJEPdyrU6WtrPYWCtmjbCS65wyhpo0/lP/ivHtQp3x2CcSArrhbTVLmXh2SB+4l
 P9fGEHvKyNV8I/oIJokA==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 212.227.17.24 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Wed, Jan 8, 2020 at 10:15 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> > The __force-cast that removes the __iomem here also means that
> > the 'volatile' keyword could be dropped from the argument list,
> > as it has no real effect any more, but then there are a few drivers
> > that mark their iomem pointers as either 'volatile void __iomem*' or
> > (worse) 'volatile void *', so we keep it in the argument list to not
> > add warnings for those drivers.
> >
> > It may be time to change these drivers to not use volatile for __iomem
> > pointers, but that seems out of scope for what Krzysztof is trying
> > to do. Ideally we would be consistent here though, either using volatile
> > all the time or never.
>
> Indeed. I guess there are no objections around const so let me send v2
> for const only.

Ok, sounds good. Maybe mention in the changelog then that the
'volatile' in the interface is intentionally left out, and that only users
of readl/writel still have it to deal with existing drivers.

    Arnd

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAK8P3a19ZgLhKJ016Mt_FyZrqnKaWwJyiaauMiUDAHV%3DDB9_2w%40mail.gmail.com.

Return-Path: <linux-ntb+bncBCQJP74GSUDRBJFM23YAKGQEGNAGJ5Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id ADF7B133D63
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 09:43:18 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id i21sf1383095pgm.21
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 00:43:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578472997; cv=pass;
        d=google.com; s=arc-20160816;
        b=sS0+tGvi58lzcCMBg2/oYhznXSh2//LiM4MsSf7oZ1FhBpdSucCfdFfmOeLT5PJLJ/
         /ulL+yKlsNKZF5KYAmsz+FVsUgGN7D9pXpMuKzrn9VS1v8ojJkowqOzVAZX5IKdEhrBW
         12SOnGDnusEfbThn9FouhOlZdHA2kyyCbYYDA3P3sv/JJ+BUMbEz7CMv/irMHkjWhBn3
         0f7L7WT2mOGxO9Vf953EKsOhJKuoiepAvzR1cMQ6h+LiQw9I9yJsjhaJ+3GZvtTUYF7p
         0ST3hGPpTbpFX53XG7ZunbPvXExRKWJOwM1UvR6Z5/payd4cODfd0M7VKhrp5ed6y3GR
         Wg1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=si5OzybqrC6FEu3t7lrgiL7X3A0oggm9VFjQZUT5We0=;
        b=j7uS3f/hkNrX+PM8r0/bbfG16IjNgCO4HsLWG8QNnYLHSVyrOF5anA2IVkm1/qYi10
         nI/YGU5bjKt7LdrW2eNrVZ/1yPlKWe0uNMEae5r/tmm8lBVND4PGCHRUyb5ON7LE1jQd
         OAhC6eh75rKxWh6oHZ52VqtWIBeWfSKGYNLf55LA8lFyYXbdyKbzUz+Y1BWRJJZmu8k+
         2MyvqYuYNRtd0+uMO3ECbI8qBoftssiZoabGpxxK/QMQ6NW5itBqjU5mvWBqemc6STIb
         fd/MrGaxA45Yjm0x4w3o1+y0nNL8wggA2PxOYoemVx7HTT1gefwfjUa/4YgeOgcURC5g
         0ckg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=si5OzybqrC6FEu3t7lrgiL7X3A0oggm9VFjQZUT5We0=;
        b=jaPV3EMZ46hIYj1e36uEm2KuRZICJpodxdenRdnGRcEZs5vyG6IHOpnsQybYSnRFKm
         lvc0t3dXuI+v+ONzoxncGKBP10O3pUCViSg/qVh1jfm0RRnmUQV7dV7a69LjPwsFHAgZ
         7BEQknhldTgMwSfTnV8o3D2xFEjZABaaEpmIN4rElVxNU+zjX3IL1VHQtXRgqWHW6wYO
         tRw+qHJ1JVtPwKSqruG4MAJd+L2EGnRlvDJ4zPJ4WNC40fwFF5cqoP57QIlEEboP+n89
         cuTbSxgbIuFGEn6zb4Vf5FyTEsgmlJNnrSzj1jE4f0YWQbAtN8FlM3L9Qh9EDJnRmH1u
         rhqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=si5OzybqrC6FEu3t7lrgiL7X3A0oggm9VFjQZUT5We0=;
        b=C3sqPGpbcUjhx0dnj/74dtiNCN02pp2+3XEJ7bMpg479KHztuV36qRxg8fuuz6Pb7T
         2getw+61rKy5y5YwjjBTYGirKVqWLOOLUjKwJxMEEg/B3Y7jPWNEjDnY2iMh+axgFMMc
         krcnKv/mypwSFUdAWt7d1Wj1P0jLMXAose4dnydygRxCkdPxkao/6WQKEaL4Nyt5ldvy
         +KeYptM4JIrzKZ1r0y4jeuakpkXt0Z5kCfukhr77FNbaDtB9tBVwDHe4gKmH3ho6Y4q0
         XygafhXSNmoAW3BnGWb3IuVR7yGW3P6Bh/zP23N2mYG9BtHO9RJuWadpx0WqGNWDPJOp
         lFJw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVTgI8ln4IRIkKIMNRn6h60B1lCbc2l/vRp7VF8mPBnnvKTSqtt
	rVxz++aRVV/sar3hiNDZn1E=
X-Google-Smtp-Source: APXvYqy+H3iJVWnd9GIXCpgYA0++aOUwerEU/emus7UtEEYsGHvpixtRWOE1ILZ0frgXzBm4uslYQg==
X-Received: by 2002:a65:4c06:: with SMTP id u6mr4169785pgq.412.1578472996634;
        Wed, 08 Jan 2020 00:43:16 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:864b:: with SMTP id y11ls718861plt.2.gmail; Wed, 08
 Jan 2020 00:43:16 -0800 (PST)
X-Received: by 2002:a17:902:b104:: with SMTP id q4mr4385499plr.132.1578472996117;
        Wed, 08 Jan 2020 00:43:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578472996; cv=none;
        d=google.com; s=arc-20160816;
        b=a7/gLtBU/NmWWd92CvOptwhKv3GLS7oaK4H5xKWe8AcpBqNJJb31aKa27Dtzc6x/1P
         TYfXn1VX2Nl83N8N7mzwYSIvCQPi0ZhTfCWoyQzVBdfDhky1ClVpfwpR8zKQJNDTS6+9
         r418hhqE6NJf3DahW8G0K1/GYAlL3QCjWCJUrLsc8Oxvs0hJwQJ2ovT13NtN50yr0jWm
         ydEyn67HrUL1BjOZKQMUVxscChtibaT0gsRFhqvScHNrzVZYk5vdrS9BpGhvdnvSIU8g
         wnNXZehW/2WW885VGfBJM4SxrsDnNqJl3BmZcr6pLrJdgIfaVckj+nRZez5YEAWv9wta
         c6Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=7cWBGOss6IZmXIImkX09JkN+lqirutcjNONiaHMIXk4=;
        b=MOCrFESQV28OHs4XeYUyT4/1+kk9NoCw4abTxkPsEfkLIJIRkAReKUSk+R7oAmhoiu
         l3Rw2dKjPN8fJ9gbuMb6HaGOwZ4u55xNqJQIdbrQX4QK21zFO57mX/gk5lJ31EEDajmg
         Zqvaa/k3Q/CNiFFCkUj0oMC5KqdVYxag9gCv+aOuEMsYyBbc9ax1VXEI4cviyQoYtNLS
         gDd06EqgEMH+wpR07XUAOl2+5I39AkpUo9Wq4134jzscBmEdj15R9SSxEVzaqqW8kOz6
         1DyaZ/tM61V8VCl4C0X/MyFqclikxpAoJS8q3ZyZE5JHRHxr1Lr38V/r0HDlk4GE/nK4
         TicQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com. [209.85.210.66])
        by gmr-mx.google.com with ESMTPS id s12si32797pjo.0.2020.01.08.00.43.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 00:43:15 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) client-ip=209.85.210.66;
Received: by mail-ot1-f66.google.com with SMTP id a15so2864369otf.1
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 00:43:15 -0800 (PST)
X-Received: by 2002:a9d:6a84:: with SMTP id l4mr3302303otq.145.1578472995351;
 Wed, 08 Jan 2020 00:43:15 -0800 (PST)
MIME-Version: 1.0
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
 <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
 <CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA@mail.gmail.com>
 <CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ@mail.gmail.com> <2355489c-a207-1927-54cf-85c04b62f18f@c-s.fr>
In-Reply-To: <2355489c-a207-1927-54cf-85c04b62f18f@c-s.fr>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Jan 2020 09:43:04 +0100
Message-ID: <CAMuHMdV=-m-eN4rOa=XQhk2oBDZZwgXXMU6RMVQRVsc6ALyeoA@mail.gmail.com>
Subject: Re: [RFT 00/13] iomap: Constify ioreadX() iomem argument
To: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Rich Felker <dalias@libc.org>, Jiri Slaby <jirislaby@gmail.com>, 
	"Michael S. Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>, Jason Wang <jasowang@redhat.com>, 
	DRI Development <dri-devel@lists.freedesktop.org>, virtualization@lists.linux-foundation.org, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, netdev <netdev@vger.kernel.org>, 
	Paul Mackerras <paulus@samba.org>, Linux-Arch <linux-arch@vger.kernel.org>, 
	Dave Jiang <dave.jiang@intel.com>, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	Helge Deller <deller@gmx.de>, Linux-sh list <linux-sh@vger.kernel.org>, 
	Alexey Brodkin <abrodkin@synopsys.com>, Ben Skeggs <bskeggs@redhat.com>, 
	nouveau@lists.freedesktop.org, Dave Airlie <airlied@redhat.com>, 
	Matt Turner <mattst88@gmail.com>, arcml <linux-snps-arc@lists.infradead.org>, 
	Nick Kossifidis <mickflemm@gmail.com>, Allen Hubbe <allenbh@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
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
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66
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

Hi Christophe,

On Wed, Jan 8, 2020 at 9:35 AM Christophe Leroy <christophe.leroy@c-s.fr> w=
rote:
> Le 08/01/2020 =C3=A0 09:18, Krzysztof Kozlowski a =C3=A9crit :
> > On Wed, 8 Jan 2020 at 09:13, Geert Uytterhoeven <geert@linux-m68k.org> =
wrote:
> >> On Wed, Jan 8, 2020 at 9:07 AM Geert Uytterhoeven <geert@linux-m68k.or=
g> wrote:
> >>> On Tue, Jan 7, 2020 at 5:53 PM Krzysztof Kozlowski <krzk@kernel.org> =
wrote:
> >>>> The ioread8/16/32() and others have inconsistent interface among the
> >>>> architectures: some taking address as const, some not.
> >>>>
> >>>> It seems there is nothing really stopping all of them to take
> >>>> pointer to const.
> >>>
> >>> Shouldn't all of them take const volatile __iomem pointers?
> >>> It seems the "volatile" is missing from all but the implementations i=
n
> >>> include/asm-generic/io.h.
> >>
> >> As my "volatile" comment applies to iowrite*(), too, probably that sho=
uld be
> >> done in a separate patch.
> >>
> >> Hence with patches 1-5 squashed, and for patches 11-13:
> >> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >
> > I'll add to this one also changes to ioreadX_rep() and add another
> > patch for volatile for reads and writes. I guess your review will be
> > appreciated once more because of ioreadX_rep()
>
> volatile should really only be used where deemed necessary:
>
> https://www.kernel.org/doc/html/latest/process/volatile-considered-harmfu=
l.html
>
> It is said: " ...  accessor functions might use volatile on
> architectures where direct I/O memory access does work. Essentially,
> each accessor call becomes a little critical section on its own and
> ensures that the access happens as expected by the programmer."

That is exactly the use case here: all above are accessor functions.

Why would ioreadX() not need volatile, while readY() does?

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAMuHMdV%3D-m-eN4rOa%3DXQhk2oBDZZwgXXMU6RMVQRVsc6ALyeoA%40mail.gm=
ail.com.

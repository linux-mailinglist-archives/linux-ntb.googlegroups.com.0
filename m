Return-Path: <linux-ntb+bncBCQJP74GSUDRB5EOZ7ZAKGQE7AO6MIY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B1E16A67F
	for <lists+linux-ntb@lfdr.de>; Mon, 24 Feb 2020 13:54:13 +0100 (CET)
Received: by mail-qt1-x83d.google.com with SMTP id o24sf10552145qtr.17
        for <lists+linux-ntb@lfdr.de>; Mon, 24 Feb 2020 04:54:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582548852; cv=pass;
        d=google.com; s=arc-20160816;
        b=CrUMX3GwhWvlagkfY64SEFKW9D1WguFk8OimpGsgUZ8Dc9XUBBK+AbzXFmMF+5U4G9
         Wval+NqmUEofDlJeHuo6Kx4t9uEMGLs80wCpfd/FwFmEcK0xu435MmXUzvZ14V6i2QRK
         S/npEbsakQQ1RS1SwEQpWjkKn+rEStfGtEgODsA+hODyCadXUuKV49wzikAE4jjx7k48
         L4XWC+zBT9cmOH2W+hl9S71lOZ1xa98U5doitx4smScJn8GqNJXVaqFMXoiI9pKOftXz
         diqTrvPhGPvYea421KTH5iXt4aNt5eugBTWMwEN7uSzAUvw19viVDf0p9X+LzGs08oOL
         PBKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=icrCAAOR3n2FNCp3FyZEWwWPp84T4GtGWglJCqRFbRU=;
        b=NfpUeaITFFIGRvOcYLKo5qi0Kod6cVRwqjRudTKoFy2AbwnGi59U0Q/NEatEfNUZ7D
         CGORrhTv/jO2Jr7JyAfz9J96NImgVJkIpfuGCx1Z0OVhWLy6Dbn2YPBNy9DV/7BJz1j+
         CbrJvwDMjJfyV1iWCaJdGnGscGt06fzJv/INSKWdWfaWXfbZUU/titHK5rbTztTcSKho
         uDPdR8QahWZ1YrBGSGC8fb+GV4U34wb7Um4dhZHkbwXp7oqd2YfGG0w5Ntx4q8K5i4SW
         sA94j2PKewJgjMx1KUzME1WJRps4NhR+4WrW2WN09vWcSZHk/XxIbixAMoCLij37ltlU
         uXCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=icrCAAOR3n2FNCp3FyZEWwWPp84T4GtGWglJCqRFbRU=;
        b=BkR2IrwBTO9B9lb+CP6QPhdw+uJE35RnTMZe5b5tg1mhD93gimHMTaLDEIDMJh8WU4
         oOePok93Ll/8tU8KBSZH7MvDlpVBHTGhSzB+xwJMnBGcfWIKTFI+60lvfUZbyOHBD/ij
         v/bnC2w2V3St7jEAOK1E1ZS7GQkf8jFFMdw6a5/uaNbBmMkxT7Pn7pp1O2uJAhUsVZ57
         lEJVcLai4lStv/6Afm+4C+CxsJAkRHBhtDEPg9gdPxm/VGxyqj7GlRcuGa7nE+W13ntm
         UrahroptuQmqhFT5V6vtWCYTwp+za6peIJq00DjnCUFmeO8lmBDhEUFEUkS3ihY4jhSa
         Y/hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=icrCAAOR3n2FNCp3FyZEWwWPp84T4GtGWglJCqRFbRU=;
        b=IUcIFHZREdGUr03hHeYkuvlk4zsefg1oBGA3us5nIrHS+2b+9Dxz+3HskXrYtQmgMa
         flrwy8PSv+2ADSRh4dTlUJf75fILt5WZnjTxHrOmLrwPnpqMsY3NPfudUejrUICs73Jw
         Ce0GFpv3ULUSJQ7Jf8xAduGd4wJ32NemDpPmkdX1BejsBpEv0A9xQ2hadJMC2hQjFfnd
         QHFja6YHQJvLENiba+pQwUlZd4zAclooyhnrfayiQ+qZ65zhcAkkyDAWMM0PnhKpYWLi
         z9jSae51DxLhrTxLp4Ham+xB/NOs9TsZJ1PMGvQQh6OUDG0LOhP/9cYDPDbj0XheFyWV
         NLIA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXUGbV13+yXe+/z9TYvWAbTYt8Qui9I6qhduxBsYUCpE0onyIqr
	q/hMlT5YSkSagB743KU8npw=
X-Google-Smtp-Source: APXvYqz3MQVQLMR5Hx6MWaoYLIW+q50cIEFOaIPMt7yDO/8ZttiKYERCiObjbqeKVpksOEgo6D3N6A==
X-Received: by 2002:a05:620a:c91:: with SMTP id q17mr51271598qki.168.1582548852269;
        Mon, 24 Feb 2020 04:54:12 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:528f:: with SMTP id s15ls3659128qtn.1.gmail; Mon, 24 Feb
 2020 04:54:11 -0800 (PST)
X-Received: by 2002:ac8:7b4f:: with SMTP id m15mr48129992qtu.48.1582548851837;
        Mon, 24 Feb 2020 04:54:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582548851; cv=none;
        d=google.com; s=arc-20160816;
        b=EGw3ULauYzk1C6N+oR1T+ylNRLO3Fj36L+QrdFu0hbULr+Bzrx/bj3XLmVArAih0Ro
         h3ZLtnbhwQqet5gFHkTtzzyY7SAJ47XDg83PSJ8JiGLjuTn6IaaqzhMpE9oA1ktS8Dko
         SSuAXK2xXUyLq2tbAy76qhqWwTMK4vIFiIZjwNS0YUyDc3EYtZmrzGxhJsobM30meLNV
         DaCdDDMTVtYjVIslrMiXs+X5gz0aa09tug6MjNgPFOSV2W2SA8h3ylA/An3OegOJXNPh
         /noJOFTYPM5nWXN9wFuzbb7z6An9gvgpVxappRVMIcGBCZ19nkgDfeRbaZdXAGtXjsRD
         D0QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=KuIMkn3CNjUmXT9na5O6u952ZSxUT8pEly8T96UQHaU=;
        b=dfXbncyKp8fmox9mxMsmdegAFj8gx7b7TkbY1u7hQBKI4pJ2zxp64R7kPkwaSSrGpm
         CIprsLMDRBRjyrc4+NFJNNGB/nxGxBPf7KT3KZ6ThbLpJw4544pdXRG8iMkW7dxVLbKl
         2/XQAcTl0B4c6DdCCGtu6usK2gGMYe3/2ZeZvTJbSIA2zk8aa/E5rSOszPRO+NwHNMHW
         ItjIfUIKv8Uk79svIYqA/K3RTYMl6P4Omo3HTp4XXiUca2PpOFSYYNax7U0HWLfmBcIh
         4/++ECgjZ2r9+Rr/l2ke9P8ccB85vdjjADAQeGW98DArscE6CKdj+cgEg5tfeZPKmOGu
         hwNQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com. [209.85.210.66])
        by gmr-mx.google.com with ESMTPS id b15si635402qkh.5.2020.02.24.04.54.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Feb 2020 04:54:11 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.66 as permitted sender) client-ip=209.85.210.66;
Received: by mail-ot1-f66.google.com with SMTP id j20so8600980otq.3
        for <linux-ntb@googlegroups.com>; Mon, 24 Feb 2020 04:54:11 -0800 (PST)
X-Received: by 2002:a9d:7984:: with SMTP id h4mr40460889otm.297.1582548851139;
 Mon, 24 Feb 2020 04:54:11 -0800 (PST)
MIME-Version: 1.0
References: <20200219175007.13627-1-krzk@kernel.org> <20200219175007.13627-10-krzk@kernel.org>
 <518a9023-f802-17b3-fca5-582400bc34ae@gmail.com> <20200224124744.GA1949@pi3>
In-Reply-To: <20200224124744.GA1949@pi3>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 24 Feb 2020 13:54:00 +0100
Message-ID: <CAMuHMdVev0PLF=8bD3nHrhcU9UgM-DAgdQpXi09PgvAxdbt24A@mail.gmail.com>
Subject: Re: [RESEND PATCH v2 9/9] ath5k: Constify ioreadX() iomem argument
 (as in generic implementation)
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jiri Slaby <jirislaby@gmail.com>, Richard Henderson <rth@twiddle.net>, 
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>, Matt Turner <mattst88@gmail.com>, 
	Alexey Brodkin <abrodkin@synopsys.com>, Vineet Gupta <vgupta@synopsys.com>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	Michael Ellerman <mpe@ellerman.id.au>, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	Rich Felker <dalias@libc.org>, Dave Airlie <airlied@redhat.com>, David Airlie <airlied@linux.ie>, 
	Daniel Vetter <daniel@ffwll.ch>, Ben Skeggs <bskeggs@redhat.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Nick Kossifidis <mickflemm@gmail.com>, 
	Luis Chamberlain <mcgrof@kernel.org>, Kalle Valo <kvalo@codeaurora.org>, 
	"David S. Miller" <davem@davemloft.net>, Dave Jiang <dave.jiang@intel.com>, Jon Mason <jdmason@kudzu.us>, 
	Allen Hubbe <allenbh@gmail.com>, "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, 
	Arnd Bergmann <arnd@arndb.de>, Geert Uytterhoeven <geert+renesas@glider.be>, 
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

Hi Krzysztof,

On Mon, Feb 24, 2020 at 1:47 PM Krzysztof Kozlowski <krzk@kernel.org> wrote=
:
> On Thu, Feb 20, 2020 at 10:48:33AM +0100, Jiri Slaby wrote:
> > On 19. 02. 20, 18:50, Krzysztof Kozlowski wrote:
> > > The ioreadX() helpers have inconsistent interface.  On some architect=
ures
> > > void *__iomem address argument is a pointer to const, on some not.
> > >
> > > Implementations of ioreadX() do not modify the memory under the addre=
ss
> > > so they can be converted to a "const" version for const-safety and
> > > consistency among architectures.
> > >
> > > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > > Acked-by: Kalle Valo <kvalo@codeaurora.org>
> > > ---
> > >  drivers/net/wireless/ath/ath5k/ahb.c | 10 +++++-----
> > >  1 file changed, 5 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/net/wireless/ath/ath5k/ahb.c b/drivers/net/wirel=
ess/ath/ath5k/ahb.c
> > > index 2c9cec8b53d9..8bd01df369fb 100644
> > > --- a/drivers/net/wireless/ath/ath5k/ahb.c
> > > +++ b/drivers/net/wireless/ath/ath5k/ahb.c
> > > @@ -138,18 +138,18 @@ static int ath_ahb_probe(struct platform_device=
 *pdev)
> > >
> > >     if (bcfg->devid >=3D AR5K_SREV_AR2315_R6) {
> > >             /* Enable WMAC AHB arbitration */
> > > -           reg =3D ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_CTL=
);
> > > +           reg =3D ioread32((const void __iomem *) AR5K_AR2315_AHB_A=
RB_CTL);
> >
> > While I understand why the parameter of ioread32 should be const, I
> > don't see a reason for these casts on the users' side. What does it
> > bring except longer code to read?
>
> Because the argument is an int:
>
> drivers/net/wireless/ath/ath5k/ahb.c: In function =E2=80=98ath_ahb_probe=
=E2=80=99:
> drivers/net/wireless/ath/ath5k/ahb.c:141:18: warning: passing argument 1 =
of =E2=80=98ioread32=E2=80=99 makes pointer from integer without a cast [-W=
int-conversion]
>    reg =3D ioread32(AR5K_AR2315_AHB_ARB_CTL);

That's an argument for keeping the cast to "void __iomem *", not for
adding the "const", right?

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
linux-ntb/CAMuHMdVev0PLF%3D8bD3nHrhcU9UgM-DAgdQpXi09PgvAxdbt24A%40mail.gmai=
l.com.

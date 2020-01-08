Return-Path: <linux-ntb+bncBC6JD5V23ENBBSV323YAKGQELJIWVIQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 431C5133E16
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 10:15:55 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id l11sf3813537wmi.0
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 01:15:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578474955; cv=pass;
        d=google.com; s=arc-20160816;
        b=v0H2IwsJZipkFwYGN7dng/NihJWsc8yChTLpQgjCpj6LHt0YAJQ3nZ3/ZSNFeE4d1i
         BOJNWc/701EUQGkrCwsz+711F3vBRdM295XmTuviFMrWoo6wOus1d5mVy9lEwpFwM4L5
         L1X0TtECaT9tE7xy7r+JXU1FsXjJ8oN3QED8A/Iugt+f4l1rSsVWt7qTiyZBJxWsoUS5
         AbfgCMIQXR0nz1DYAMKI4PxkuDFZR+XlrW3I/aNdDJxnCQgP7zKYL5UjHpZrZjZk7/sN
         BwqC8DmRcZfV9xOvaYtYV0kq1ZAMCPjzYz9iDts7q9pESXm0K7Wu8CeHlc235XxRROaT
         1qVw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=JlLanfnHfBSSf0eIe7uUuyC2XkkkU+ugp62ET16TOGc=;
        b=h3RZ0hBRUvzRPfVPqA/2/yyvebOEGVVA1x2gteeqyjMAn8s7iE4scIFBN0C4caA6oi
         GyF7jSjRHyJtKGdvd/vjG/RyNkvke7oVS6ellLbBYpUnhpKF42IKiLOIeQzeSYShAvAe
         kdDGe0zSe+EhuFcEbVrGsdof5ibP0FY7cZBTCWpwL4o/FBz/V/OCMLB8wxxZz0jVdsqb
         P85sBXG5rQEJlM8kVPDC23Z9SI6dHKKDqs7dzyGpa218eOQZI4nwH8sxUFkq2lgMiKG0
         O+7SEJW572UB7wDasfc9nhnNID1eZkhAsMqJ8Bz1WOt7gsrh4ZoxV+DfOF1JiUTwFrsu
         EKgQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.65 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JlLanfnHfBSSf0eIe7uUuyC2XkkkU+ugp62ET16TOGc=;
        b=Q+8rULcKLYmA7zXkHhceOySZu7dg+uPC+CCzKHo1dfe5zcLlSC5oXod17iq7SuUktY
         clPuVXqOIlP6o146z3LXbYhtThd6iSwBxPHHlmGtM2M0OjdEPTDdkmSkduCGtBS0gOiQ
         oapquxVXyVo2JrwFGXJ76haBYt7ogSJtFR9ek84DxIPGo7IcLjaAt7gsCOQwlVikpmBe
         LsGPQPbBgC2x/A0m+8Cj4fHKCmlWfX0VXBw9f2jOG7Hpm45PcgkxP5BqBymXbNpYFhqv
         dV2S0XZaYs7IfpQa6GRzAWzTXX4+NyFuRkFFSwPIe4WDgcu4RAZzQtIyZyTeETWiZr9i
         SBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JlLanfnHfBSSf0eIe7uUuyC2XkkkU+ugp62ET16TOGc=;
        b=ienK2Nz04pkKihm+4mpolbELWiuEfN49v313NYBtYsQrMEZbw52dk3PoK7bljdGyLS
         sjTddMEQIwwbrsaDBgh8Nf5/GEfuk+gzNDoDzpwfUkForWDGf8mSe6hhJ/DSllatwgMo
         IOwl4mbpPb91XHYxesYO/xVKS7L8Ws2Xjg0NYs5Foc8UlMl38XGhektfQhxMhGXGJ2nV
         trizejZbgIMiN82Be0mNWg/QdBHsxUe5TOgIQw4z0apLUVu9i2k8vpcaSb5zLZe+zzA1
         zbV/PQZZ3f48d0eeuxPVoA6Sq7CSPHipItIPFsJIfng/fwygA6SGJ1dYhsUbfnKXhV6c
         9vlg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWnciR0FIW3hpxU6cRKavLaQavVIRQdgMhUBjUIPb4gubFYcdND
	blYf+FJYnPviETxOGKVsX3I=
X-Google-Smtp-Source: APXvYqy2RAIZ5ybck3KNowpBliL+Uxf1ovash8AOZqUeiKV9w2KoBNTHv7ZmX2Bg37+HUcGhAyb3aw==
X-Received: by 2002:adf:cf06:: with SMTP id o6mr3249066wrj.349.1578474954895;
        Wed, 08 Jan 2020 01:15:54 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:fc89:: with SMTP id g9ls559926wrr.5.gmail; Wed, 08 Jan
 2020 01:15:54 -0800 (PST)
X-Received: by 2002:a05:6000:1187:: with SMTP id g7mr3442060wrx.109.1578474954268;
        Wed, 08 Jan 2020 01:15:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578474954; cv=none;
        d=google.com; s=arc-20160816;
        b=ijH18M1ugi9mUBYQoq7f1Pa0R/+YZ5M1AoQMXyZ40A9+riS/fbe/1sjwCOhU92cpvE
         FH/JG0NSzQkKhmGw9cwQ+PZ22udOKkKqJkmghKiaWCDz5FEUtWkRHnZNqh8+vP32fhab
         1/E0N0UUGnJGNtN0gnGLxwlfF8rm0iPq0evQcCgtlGoxPKsI5XtUcu6syT2OHjUJDi0Y
         XXEF5ip3e6aEZJThuXeXbH7GcC6jdXB3M+qkRnatCvLh3SOBLZdEASRw4ciwKvS2/P/6
         ilWB4DT/640LwaZED44d9ogbv7GkLbUSaINUXWetorXc2kakHXrBUxfhbj/eNN8lDYLv
         fM1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=vfyps/IUL6/PJnjolCWEAdH26MAmNPDn2opwbDbnepg=;
        b=utbDS2rByL/5QAEPPiLOB1H1bJApjva4JohpEJirBrdKMoX+HKV+4Vx6om7oC9LNoH
         /7ZDz9I1NHvkhh04r2jk1RRDTGG2RyMEwBmeaPffP28KrC9BExP0ypGwUeKpCVCWnnVT
         DFlAGpvgfTGq+9pFo2NScjSlaUmRAR2KfZ3VcuuNJx8BQVpXvG9w1BSH5Mnn9ECgBI3E
         aV6QUP+ZeT/T4fOjP5Lg9FnR6PIXergLvOA5hzFjpRTTjbs2Sq0LySROcaAoraCXyUaK
         5NFMokhi/hogsvM9rGaNpfMuloqTwo6yNiYwLQxLoiogX7n9AGX2g4RfPgDnllT6tBYX
         ma0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.65 as permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com. [209.85.208.65])
        by gmr-mx.google.com with ESMTPS id y185si50856wmd.2.2020.01.08.01.15.54
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 01:15:54 -0800 (PST)
Received-SPF: pass (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.65 as permitted sender) client-ip=209.85.208.65;
Received: by mail-ed1-f65.google.com with SMTP id l8so1994132edw.1
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 01:15:54 -0800 (PST)
X-Received: by 2002:aa7:c4c8:: with SMTP id p8mr4353856edr.72.1578474953961;
        Wed, 08 Jan 2020 01:15:53 -0800 (PST)
Received: from pi3 ([194.230.155.149])
        by smtp.googlemail.com with ESMTPSA id y4sm54018edl.11.2020.01.08.01.15.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2020 01:15:53 -0800 (PST)
Date: Wed, 8 Jan 2020 10:15:49 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Rich Felker <dalias@libc.org>, Jiri Slaby <jirislaby@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	David Airlie <airlied@linux.ie>, Jason Wang <jasowang@redhat.com>,
	DRI Development <dri-devel@lists.freedesktop.org>,
	virtualization@lists.linux-foundation.org,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	netdev <netdev@vger.kernel.org>, Paul Mackerras <paulus@samba.org>,
	Linux-Arch <linux-arch@vger.kernel.org>,
	Dave Jiang <dave.jiang@intel.com>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Helge Deller <deller@gmx.de>,
	Linux-sh list <linux-sh@vger.kernel.org>,
	Alexey Brodkin <abrodkin@synopsys.com>,
	Ben Skeggs <bskeggs@redhat.com>,
	ML nouveau <nouveau@lists.freedesktop.org>,
	Dave Airlie <airlied@redhat.com>, Matt Turner <mattst88@gmail.com>,
	arcml <linux-snps-arc@lists.infradead.org>,
	Nick Kossifidis <mickflemm@gmail.com>,
	Allen Hubbe <allenbh@gmail.com>,
	alpha <linux-alpha@vger.kernel.org>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Thomas Gleixner <tglx@linutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	Richard Henderson <rth@twiddle.net>,
	Parisc List <linux-parisc@vger.kernel.org>,
	Vineet Gupta <vgupta@synopsys.com>,
	linux-wireless <linux-wireless@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Daniel Vetter <daniel@ffwll.ch>, Jon Mason <jdmason@kudzu.us>,
	linux-ntb@googlegroups.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Media Mailing List <linux-media@vger.kernel.org>,
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	"David S. Miller" <davem@davemloft.net>
Subject: Re: [RFT 00/13] iomap: Constify ioreadX() iomem argument
Message-ID: <20200108091549.GB10145@pi3>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
 <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
 <CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA@mail.gmail.com>
 <CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ@mail.gmail.com>
 <2355489c-a207-1927-54cf-85c04b62f18f@c-s.fr>
 <CAK8P3a21yPrmp4ik3Ei1BZfeqZNf0wL5NZNF3uXqb4FLRDyUPw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAK8P3a21yPrmp4ik3Ei1BZfeqZNf0wL5NZNF3uXqb4FLRDyUPw@mail.gmail.com>
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of k.kozlowski.k@gmail.com designates 209.85.208.65 as
 permitted sender) smtp.mailfrom=k.kozlowski.k@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jan 08, 2020 at 09:44:36AM +0100, Arnd Bergmann wrote:
> On Wed, Jan 8, 2020 at 9:36 AM Christophe Leroy <christophe.leroy@c-s.fr>=
 wrote:
> > Le 08/01/2020 =C3=A0 09:18, Krzysztof Kozlowski a =C3=A9crit :
> > > On Wed, 8 Jan 2020 at 09:13, Geert Uytterhoeven <geert@linux-m68k.org=
> wrote:
> > > I'll add to this one also changes to ioreadX_rep() and add another
> > > patch for volatile for reads and writes. I guess your review will be
> > > appreciated once more because of ioreadX_rep()
> > >
> >
> > volatile should really only be used where deemed necessary:
> >
> > https://www.kernel.org/doc/html/latest/process/volatile-considered-harm=
ful.html
> >
> > It is said: " ...  accessor functions might use volatile on
> > architectures where direct I/O memory access does work. Essentially,
> > each accessor call becomes a little critical section on its own and
> > ensures that the access happens as expected by the programmer."
>=20
> The I/O accessors are one of the few places in which 'volatile' generally
> makes sense, at least for the implementations that do a plain pointer
> dereference (probably none of the ones in question here).
>=20
> In case of readl/writel, this is what we do in asm-generic:
>=20
> static inline u32 __raw_readl(const volatile void __iomem *addr)
> {
>         return *(const volatile u32 __force *)addr;
> }

SuperH is another example:
1. ioread8_rep(void __iomem *addr, void *dst, unsigned long count)
   calls mmio_insb()

2. static inline void mmio_insb(void __iomem *addr, u8 *dst, int count)
   calls __raw_readb()

3. #define __raw_readb(a)          (__chk_io_ptr(a), *(volatile u8  __force=
 *)(a))

Even if interface was not marked as volatile, in fact its implementation
was casting to volatile.

> The __force-cast that removes the __iomem here also means that
> the 'volatile' keyword could be dropped from the argument list,
> as it has no real effect any more, but then there are a few drivers
> that mark their iomem pointers as either 'volatile void __iomem*' or
> (worse) 'volatile void *', so we keep it in the argument list to not
> add warnings for those drivers.
>=20
> It may be time to change these drivers to not use volatile for __iomem
> pointers, but that seems out of scope for what Krzysztof is trying
> to do. Ideally we would be consistent here though, either using volatile
> all the time or never.

Indeed. I guess there are no objections around const so let me send v2
for const only.

Best regards,
Krzysztof

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20200108091549.GB10145%40pi3.

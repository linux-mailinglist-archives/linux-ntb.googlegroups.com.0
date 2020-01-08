Return-Path: <linux-ntb+bncBCQJP74GSUDRBC4623YAKGQENPQVFKY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id C6FC4133CC4
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 09:13:00 +0100 (CET)
Received: by mail-io1-xd39.google.com with SMTP id p206sf1560415iod.13
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 00:13:00 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578471179; cv=pass;
        d=google.com; s=arc-20160816;
        b=r0CZIWzHdALCTWNEvYFRvh1N0CHl+nVJe2SjhLL4mEGyogdirwbJ/m6AkvayEQ8+Oz
         c3ed7pXTaIgCUFjZVRXohYr838Ue6HpaP01xvV7NMZ8xKpn1halCm6GJQJBPaxxsnFW0
         OZkmcKh1e6A2mgnvbBNap60q4SbOqDD/truaz6Cn1ENpkkQEzGFheYA8YF8uJALsk6bT
         dXv40RKiwBIyYc08GEKOxx0XJ0tIF//GKpP2VOoRV6SN+6vAoWp668QZnVp+AGtLx2/t
         aPOmxUbb3yAsyZbx7Yham5ql9c6x9wTLAR2NbQFrbw1oi8ZLwAwlnM281FA9UkKEs4z8
         p7Cw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=F6MlOQglDz+r+y6rdN1X7/iLcfiGheRr/h9TAZN+mls=;
        b=ldk0AAFdFCoUn9MmcbeBsXUOXOh39H8L88erj2WHuvGwCEHs7Qljwk8u1X6ifLmbus
         hMwM8706LOEWKbBsfiIkUC9eS9LrzyhrePeedfV3SFl3554pevuvr8Cn4w2XiZ5U323c
         Jpu4ejt73wnDz27YwFtGoX00ybvdnKsR4hTQvXCz7TVf1Z0+b3nUmKj8Gm3Ap6XhCbmd
         0+KQZ+tSm0n6aZgAcqjh3U67uB0PFeFMcFck/QM6n8DGMwKwjUFOcoP2fK1b4MWQ8fIn
         oPa8CbE2dM6R6XM71yW8XXzYC8qJ3i/3AHkhMqWtNcRbfr7Gm1Z8S727+q+SPt+2wVIC
         uz+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F6MlOQglDz+r+y6rdN1X7/iLcfiGheRr/h9TAZN+mls=;
        b=eUi92nQ455IsozJVEXzCFH6vSVqs0Zv2z9XVjyR4mRq6NxWwkKKzxC8GQAVd81gelB
         goPu4WDYGFAlFEZJrUf9sj9Ng9TlsX/ga2QTydldwWMD4PYZ6ao7P+fPRgOHMG6sIyUL
         dr2iUB6veB5M2kdPWaspmt43mcBoCohS3bYoBeRSdG5WcwSque9J93zrpaHc6wtc9p50
         5PuKhiBCNK7E0HDfZbjgaTZBpRHfXwxlu09ggh3cPSmHkKT67vdmtpf3ICS75tcbrM/M
         qKkLzzx1nkhTalb2gqtM3zC/r2q97ePEL6hwjddzgW5POWwcNvZ1fn2d1cVIpFZMcKJb
         h9Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F6MlOQglDz+r+y6rdN1X7/iLcfiGheRr/h9TAZN+mls=;
        b=B2C3exgJn2gboxn+PLr86saBZDQLMzLWulyGaERDwPVd+UCd0Q05O/tmpkxVoFEGe+
         O5pSJ5iss9g3YB+J0M+ej7Mfc2ar1diLN11UInXWhjFbAI8DaxmtiMJxoVjBMnu0ePQV
         inVhl1rnpqh50nQGUm9G1kkALrycNuO6vY3fHw5qnZejAcsq+zg2O53Vt51idjbDvsX/
         e7VN3fHqxe+ubvvw2JiAnz4HptQGMAQsvG23neCSww+2KM3eCycrzM64RTOMX2+nkYaT
         VGt//Ozi6vjQto63lOYEfays0wAoaRb7g2VmUG/o/mce+MkYyExgPTpiQm73EChUt8mK
         2uVA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXY+4Zn3XQ5sgpqGQirjbD8B2lQI2UUSWX7A/7nVSMId8YFyu0C
	xNKBHSigFXJBgHCgfsVP4Vw=
X-Google-Smtp-Source: APXvYqxb1fj6OAKfnCMXFNQCflTH0LLZop+bxbXPaJC/+jZ+cT/jngJ2gZ578ONCvLTN+AA68UqL8A==
X-Received: by 2002:a5e:920a:: with SMTP id y10mr2415332iop.292.1578471179572;
        Wed, 08 Jan 2020 00:12:59 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:1504:: with SMTP id v4ls429698ilk.16.gmail; Wed, 08 Jan
 2020 00:12:59 -0800 (PST)
X-Received: by 2002:a05:6e02:8e2:: with SMTP id n2mr2962569ilt.167.1578471179181;
        Wed, 08 Jan 2020 00:12:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578471179; cv=none;
        d=google.com; s=arc-20160816;
        b=WG8TafPDoMJ+KPl3pG3pMaBYd5xv3O3+Xd1hgQOK5UwhzELwJCPacMp1W+UCcxpgWX
         +GfxDYk00K0T8i/mat8Ww5GMc179ckqeOJHk+r85RhziBJBfKh5lSf6KK7AoLJCklq5X
         foyHUtZcnD9wgDlSebY1SGS7f0CLG10WzCrm2tG4yEZmh6kfCBa/3kEREIIcy7WKpSjj
         QSnbYerP4axW0d89tuzLfvKugql6Ct2OrJyJl1JQ4EjZ9H+Lhnn8c5CVzSt7SvwbDEvu
         5c7mGoCpDchq4lX0onH1v0WIBgItETyO1NorvK/VLmhV/wToOTdSV83Y4g2isgnBg7gz
         Ky0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=fbJJB3WrQSG/aLI6W0tp/gWGqaTYGmXXjnwzN3HgNmk=;
        b=G6pR9at/241/nyTWjC/qzBRyErJ9yTjjFl3f62Zr/nxwd34dHyG1SFx58790psMWRA
         Zjyc6lJhqq9djq34WBAh7i9YD8bR9kK/V18F4SOdvKhkalnHcE++S8rmTBXanU8iW1GH
         bO+6H3IY1VK/r3QRxgVMnaVGLp/jx+FGQ++6X7Vg/byPhfTOZob0ds55ahDDPvp47o8o
         CK2MJLY8AwJ69czfARNohsaipeXBw61yBI+yvL9wT7IMN2x6Dwc14TeUFkoHTuEnXKhE
         0J5zUBS41/3iPR3bNyqlFh+OOeAXvfRPlY/O3PIZexGtBEnNx+1Yryrbzipgv1T7YTrg
         OeUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ot1-f68.google.com (mail-ot1-f68.google.com. [209.85.210.68])
        by gmr-mx.google.com with ESMTPS id z7si157954ilz.1.2020.01.08.00.12.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 00:12:59 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68 as permitted sender) client-ip=209.85.210.68;
Received: by mail-ot1-f68.google.com with SMTP id r9so2711606otp.13
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 00:12:59 -0800 (PST)
X-Received: by 2002:a9d:dc1:: with SMTP id 59mr3308976ots.250.1578471178824;
 Wed, 08 Jan 2020 00:12:58 -0800 (PST)
MIME-Version: 1.0
References: <1578415992-24054-1-git-send-email-krzk@kernel.org> <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
In-Reply-To: <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Jan 2020 09:12:47 +0100
Message-ID: <CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA@mail.gmail.com>
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
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.210.68
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

On Wed, Jan 8, 2020 at 9:07 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Tue, Jan 7, 2020 at 5:53 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > The ioread8/16/32() and others have inconsistent interface among the
> > architectures: some taking address as const, some not.
> >
> > It seems there is nothing really stopping all of them to take
> > pointer to const.
>
> Shouldn't all of them take const volatile __iomem pointers?
> It seems the "volatile" is missing from all but the implementations in
> include/asm-generic/io.h.

As my "volatile" comment applies to iowrite*(), too, probably that should be
done in a separate patch.

Hence with patches 1-5 squashed, and for patches 11-13:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA%40mail.gmail.com.

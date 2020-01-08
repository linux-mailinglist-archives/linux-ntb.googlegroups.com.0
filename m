Return-Path: <linux-ntb+bncBDEKVJM7XAHRB54C3HYAKGQE3KROKBY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA30134E06
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:54:15 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id k18sf1923489wrw.9
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:54:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578516855; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZUvV4NBO3SvbkMBaJfcYRmV1tp5NXCjA4a9RxVG9X5tg4GFLdG7YE/OlfDaYUYqnDL
         TGFodnKh+9btg20XOuYRx92bVCgSKNiu+/V53Qd4Ru//i8smG3m1SJqLBj7Vn5Hyp8Sb
         C69u0mmf+JUd3Seb0gS/JZFyceSXJhju5eaj+nE/AIUWwpn22oRdMIb2N80Z7q6n+E0S
         h1ZQjSAlhF2jsIr+OTWzDw3qI4aJI4vHK9vAIisxGT4Ioh/04hvPrvGGOPgxmXBNQ4N3
         E9fQ4SRQDWDGAJkQ9L6VRfK44RdIHZ8eFTNEd1QzULGw8KoqCeLYr+kRbC0M0cSMHfQn
         SX5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ak4kahvl9Mmd+XpR0NiqnhmO3iU6rmyIzBisyG/VgOY=;
        b=vMsDHHmeh4WvCc2I9H5LfxxkhsNEqRzz9ZikhSU7JHyEF3+ekM9e9Id9NE0W9VQtox
         GW5HtchCxoU93k12D+ybFQtKjvXrN1zsqC4937A+UtJmMjP85iyYgXWFuZUHFhGBzAvA
         b8Z2IbR+XeqgcnHA+UfXoWKzExFmfz7mRdPL1zg9H5MMG1oZvvK21aSIxYa54qCJiU7k
         u+bmnzYEn8Hee53Dh8fUvIa7MCkMwSyPHWQ/ZHWzxjo5+864usGLdbiLJx8s1oTa0uZo
         k2INNt2ub8pa3R0PEhlbcqWjtLWavEEsq9t94eol02bV3MP+wbSZXYW4SxkYSvuCjUtw
         FREg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ak4kahvl9Mmd+XpR0NiqnhmO3iU6rmyIzBisyG/VgOY=;
        b=DY1/K3RWIbKTMMLRaJqVSWuRL5GqbPgCNEO6Ibmxj23g8K99sr+Rh7ubkvtayn9Ix7
         AsmrMAdmNjwYJqCwSZ8Cjz7+MqHMjv9Q9nqT1wlQFWS5vnmzEPwcTPTm6N8O2UDVys9l
         Q5eStbpKK8LobiHYxK0WoXcP6p1zQ0F53oa2cjdX8EtEOo6yDT7C1KwAeqyUGQ7vwS9G
         uFsHPUsGZEt6xMpj8Bzh+GMSFdyedVLBP4xso26yKrqdq1001dL0EfytyzGRas1D2bvD
         PUUfI93iR8GyDgGdeXu1O90rgGqGZV5ifvApzlAO/Fr5zotLTcl1dPx7Ah2ZNLtqof27
         OYDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ak4kahvl9Mmd+XpR0NiqnhmO3iU6rmyIzBisyG/VgOY=;
        b=hjVzFpenRYLLLFDfe62UGUJEcul4ZC7ASoRYPHnaUEm7fqLj7MDHP91CYnh3ElvqUQ
         xy2r/ax3I13FERE8iE5KpyXaokdo7kAsF5LEneww3nJ82jZD1Fy6cyj85uy431tTCTO/
         +rqaQa/1viL4Q0inVTBJOIagWwgLrqOnH+1l2TvqcKJy9C3yg20V5hsWj4JFZawOgSA4
         2gaY36IpsEVTwxnGxuRHsF/lIyZHcDV+421SCoTc51zfliYXbzEm0xSYMDmPJWmtiB6S
         9PskrHcQx1rwHaiBEr+Moq8c9bbq/vJ5+B6eG5sEpt+ZXuvYwFbPwIIXNSdI6aXEzAGN
         YBug==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAWz17pWwBh87eLgTADAc5bmvRA6ByGuYqD9Z+SoYXk20VdR5ngv
	7+jCmT+XRWbf1sPsX9k8HTQ=
X-Google-Smtp-Source: APXvYqwpfAT/1kuD9eX276rhuSHiFMFZfLb5uKjUt1riHTtepoK15nytsyX1PcSdESTZ12ONRpmtSQ==
X-Received: by 2002:a1c:3803:: with SMTP id f3mr615363wma.134.1578516855473;
        Wed, 08 Jan 2020 12:54:15 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:f403:: with SMTP id g3ls870wro.3.gmail; Wed, 08 Jan 2020
 12:54:14 -0800 (PST)
X-Received: by 2002:adf:fe07:: with SMTP id n7mr6896474wrr.286.1578516854587;
        Wed, 08 Jan 2020 12:54:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578516854; cv=none;
        d=google.com; s=arc-20160816;
        b=PwXM8ytxDKjXrSK1rOACAykjZVgbmrsQa16UEaJ6ofs+fME/dTb1TSMu8qjZDEVMvF
         mmoQfaIEgQi4pGsdI5jgTOJ2pU03Skezt8ey6ALoJmOzMylmux6wkObIJJ9HRmybV+Sa
         W1GcVRVPvGmxSOhLjWv3+Q3xnNTfxD17To7mIIjUKj5gnZgEItV967qxCnGWGxyjf8WU
         /0ipZ9miJG+DOYM7B9zm7KfT/uIVBkKKpaYbr2ujrhHoeaRca2pjroKns6xKKnrnkFnc
         xOqgmAMlvor+UkPIZHq3ZlGhh8Mfmt1Xo/pClUtEnLPrr7I7U2iZT/GArv9HlNCDpGv2
         c/0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=hVDDB+J9EiUuOKj99vrZWlaHes/HwOeT08d8uVrMAyk=;
        b=Gl0cQLXr3KbMVObY/6h77GRgZmC/1do+/GwxnXSG6Eaoe5EjzvjJxKZPOTarqb3A8s
         Mg8hmmj01aH1ZkwmqWhltGt3GvADfUmeJexbwjNEUSUOhlyAgoc1ukfo1pr418WtifHn
         aY3aiQvXfWW0OYeooaghE+k/yfmjtDGXWtGRVBGpAuk9IXpT96yH2cXMazt3AHYN0Ifw
         FuZRAiQiVdXPs7Gfa76wtSYmZs5mRpkZTXRyd8bjDW48XE+VyZ3Wsut2it60LgXD4M/L
         g6EK4KhyXrzlOZLKDeJQ8/gq/qoACx/xWoLBCaZfaPoKVdPTs167WAhstktGBu+4aLLU
         +oDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id w11si14271wmk.0.2020.01.08.12.54.14
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:54:14 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Received: from mail-pj1-f53.google.com ([209.85.216.53]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MEFnP-1ixJ5644Pd-00AJDZ for <linux-ntb@googlegroups.com>; Wed, 08 Jan
 2020 21:54:14 +0100
Received: by mail-pj1-f53.google.com with SMTP id u63so167922pjb.0
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 12:54:13 -0800 (PST)
X-Received: by 2002:a0c:bd20:: with SMTP id m32mr5946876qvg.197.1578516850954;
 Wed, 08 Jan 2020 12:54:10 -0800 (PST)
MIME-Version: 1.0
References: <20200108200528.4614-1-krzk@kernel.org> <20200108200528.4614-2-krzk@kernel.org>
In-Reply-To: <20200108200528.4614-2-krzk@kernel.org>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 8 Jan 2020 21:53:54 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2ieH2G5GJvWMev39QkmSFvWSb0sYZ_0L5McR6AZFiayA@mail.gmail.com>
Message-ID: <CAK8P3a2ieH2G5GJvWMev39QkmSFvWSb0sYZ_0L5McR6AZFiayA@mail.gmail.com>
Subject: Re: [PATCH v2 1/9] iomap: Constify ioreadX() iomem argument (as in
 generic implementation)
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
	"Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Thomas Gleixner <tglx@linutronix.de>, 
	alpha <linux-alpha@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"open list:SYNOPSYS ARC ARCHITECTURE" <linux-snps-arc@lists.infradead.org>, 
	Parisc List <linux-parisc@vger.kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	Linux-sh list <linux-sh@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, 
	ML nouveau <nouveau@lists.freedesktop.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, 
	linux-wireless <linux-wireless@vger.kernel.org>, Networking <netdev@vger.kernel.org>, 
	linux-ntb@googlegroups.com, virtualization@lists.linux-foundation.org, 
	linux-arch <linux-arch@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:TFwMFVGT3KlP3Sng+wxgZ1Sj9oTHlBVcVpl7dJ9NcIdcjSMLOCk
 a6UGBpxIFn12bfnhvMF6FR7cE14q6xnX2hwN8KKZaP0UzPjj/unwY3utYpjPmxFqgBxRyHW
 3HIF6z4DLbmAvViXtXHlU3rk6lVPkKANyo20lB/vMBxeBNaSgL7inySv2AirSPsbUz2dE3r
 bhq284XAWP9MlT3sA2Ebg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:snLYlu03ZIw=:B1YcLbzIHtvOvryDN7Jl6T
 dRVWOX01VvugzbMnIvqeBD4z66CJlGNdooamneP1lVMxY1JZxJG5WOzK9dOzjb4Mg3396tG2Y
 So6hL8WpbZXJ1zTPzPff0Yqtv/PzxEGnq23yD/PF+Ln+FPk8M6y21Cr77l6X2PhyPI8p6NrHJ
 pGclluBSFBLA4FHveZOyiyebxvx13bd//ednkx0n/rPk76JimfdrQFFsF0hSJKD4jv18d6Bof
 7RiEdyrlyx3MbRl/4B25Jbeyydpa+6jI1ceb67h7IvFNBMmf2njln5gl1wgmzgNJZEWS9XfV+
 OWKYm1p7/VLUIpzq2Na7mDdPqbW4ScgHM6arzywC2pU4Rqm9YfWIVX4UzgFMrm4TvJYCi0tn6
 KEZHEe76U/OK7N5OdjwJBMUSxThdFGba10/nJzK/bjzo70SMbc/a0bc5Hk/pUKMTlDPUsAKBp
 P98jpr/9vDZziqoMCS7wpXLbtCZ5Ad6jcY8gsLteJH6LJXHu1oVAPrWT7rxMgWy8Xqh9EdH1N
 S21Ts1VdOrW36pIRFYrFsEcBqlOXnLMETbq/+xqBrAtuq1O7L3/veue7UBYIMvPU8g6QPw6Lm
 oAhrgUhG0QR4BSk8+h063G3xE8pQam+vM5/zvKYL3m+kG8bfxhg8+e3cLRr1p63CkTtuEs6/K
 sZj0C10zQgVEnXCGu5A3mLxd2NhzJinNLb0Hm0QvXn40g85hoHaw7TgVlxHJY9cJKXTv0zYOI
 KFrFMn/rpxKjdhzRB2hVAsgSTowkd855EBWUwtBQiJaLJCBH83T90l0iCpJvftl/z5NTxMnDm
 /ClV9Xt0vVaLEcGe74tqyWBAHhfIGNIkG9ggBU62oobtXwBWClEHAdvfpZrxYap96CdFmbtcF
 eG3fCqUXCCdahbxHTMwg==
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

On Wed, Jan 8, 2020 at 9:05 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> The ioreadX() and ioreadX_rep() helpers have inconsistent interface.  On
> some architectures void *__iomem address argument is a pointer to const,
> on some not.
>
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
>
> Suggested-by: Geert Uytterhoeven <geert@linux-m68k.org>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Thanks for getting this done!

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

> Changes since v1:
> 1. Constify also ioreadX_rep() and mmio_insX(),
> 2. Squash lib+alpha+powerpc+parisc+sh into one patch for bisectability,

The alpha and parisc versions should be independent, I was thinking
you leave them as separate patches, but this work for me too.

I have no real opinion on the other 8 patches, I would have left
them out completely, but they don't hurt either.

         Arnd

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAK8P3a2ieH2G5GJvWMev39QkmSFvWSb0sYZ_0L5McR6AZFiayA%40mail.gmail.com.

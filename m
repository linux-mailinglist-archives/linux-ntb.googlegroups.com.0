Return-Path: <linux-ntb+bncBCQJP74GSUDRB2U423YAKGQEYNAE74A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id AA1F2133CA9
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 09:10:19 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id y28sf814164vkl.23
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 00:10:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578471018; cv=pass;
        d=google.com; s=arc-20160816;
        b=kC8N9M8bk8xBLy/78U/iBgwn++4PPZbH5NJl4Q+oc2FL6WD9ZiYeWFFXXFZmMbwlyW
         rmTBM0RH0B4fFgA/riXBBSYwbHzK0q51XQ1H1FLW0tisjv05nO6NXTwM1/KTerDYc1/M
         ob9rdY+RR0Q14o/7o91WnSIntn8jIXd66VivltRufyqSsn8+/VTpj0+WNtXW4gx9cGof
         l4Luvrc21WDtwcVGA4qTcSNo1ptsKu82yPAcSWRuIOMBsJzNAj18eLAK/1AYkWqUV5Pi
         w8KslpzdbzaSaDK4Ksmo4j/KeuE9UOw8B6pMfiiDjc/in07RwU9KOfYh9dXukbpUEwEb
         hFow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=FOJ2N5HsKWnOjVp7JMOYQyQiDsb/sYxRBIMqbLO421I=;
        b=cqV9Ni1WKmH5mdbt9Vydq4Qv2wtx0KkA1rf425YgwcedTQmMJ5tTdAMsF1pjeSFjYW
         ZVzlIMyQjmn6x7BnuSAeuZkSIX+FORe81FHxAEA0JWCQ/Ip2hYqG5DZmZnO1hy82FBhI
         CWtFThsIn/0OC/PSl4cJsEJRrdeYy+VF/GcVm8bv4iEZvelK088E/+v7xNgbT4g9mdYx
         xEICAwLeb7AGxc7SsDOmc9yUmWaAmuH1m71QNmHw8iXZyKqQ0Ai4cRs+hF4ZtIuWkdWq
         KbEgJ/SXHkKI+sjet3I2/WEzMF3+h8pP3fQ+wcYttXBMYV0AWIEmYFqLpcIQtaSQJTaG
         XT3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOJ2N5HsKWnOjVp7JMOYQyQiDsb/sYxRBIMqbLO421I=;
        b=qHbi7k6YXhBg/41Up+R+k2YBixwenRobvmG0+HdpIWqIir3FjX0o7yFRT76HEJNuia
         sLZSnpKyLrTgcE4HSVZjnjMvRMCp3HQgFqRhUCnm+qk/ydrNLp1lwcoc2EOkzrpI9RJ4
         BaDfX6GsKhYwIkBuygM2Dy7r4oLkZA2um9ivx2j0f+nK+r94aV6RlAClqTeC0tp+2byY
         4c7JkEwc4czvh5kKI3pdFj+K5cJz21gL2KAHkI7tn6DiIYfpU+x8utos4GSkUk0tbDZm
         X1oGNmZt4jOGaELPUjzT0X4/leAPnH+qTCgzN8JhnTRqztDGDXIN9Zf6UVAnhFasKBCx
         4W+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOJ2N5HsKWnOjVp7JMOYQyQiDsb/sYxRBIMqbLO421I=;
        b=LgZGaiKG+HnZ/0ryCrdmskhuvZQob9N0CIETMhNk2HH2QF+bLuM6C/qxznX/wsPzvj
         3Ci+8v38gsey2EL4ji5bN2vLOIgoHxUF7LrwtmSkuqMxo5yZfkC/AwW2hZNAzAdoZu/j
         wQBvUOAMVCLnXMsXCufzpIGVCV/nNUgyj1YJ6YO0T3H4nHUvoNgA7AJ1e7aTdTgO7Q40
         6+yg1ptmapYS1izs7ea+GOeB+oCZYjJVL1qeov66dPbHyXI904daFkemOzsdLer8izhS
         g/WoHnzFteZS1wcT3594vsIolItVzoCdf3mSDtLo6WRFytchO0faaGLn7t9VYdVnAknl
         is5A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXSWh2Xbe4uIA/ubZHlFxcM/MhP3Tkb3jTmqPYh/7Ez8l67Hj7z
	3dX+NDPKhxGBouMlFh9wTEg=
X-Google-Smtp-Source: APXvYqzR7QZYVSB0Uqvde07eYq+VrHQDPrSatKWtVbwQLFhm/SGZ0TzV/BefYSAxOImaTbzA8g+bYw==
X-Received: by 2002:a67:800f:: with SMTP id b15mr1992594vsd.123.1578471018477;
        Wed, 08 Jan 2020 00:10:18 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:664b:: with SMTP id b11ls144192uaq.3.gmail; Wed, 08 Jan
 2020 00:10:18 -0800 (PST)
X-Received: by 2002:ab0:6894:: with SMTP id t20mr2459323uar.100.1578471018094;
        Wed, 08 Jan 2020 00:10:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578471018; cv=none;
        d=google.com; s=arc-20160816;
        b=IY8GTRmcrmAzRlkyNCCWQPyeg4y0DO1vfjVf9gGZpHHJeCwZEYnmkzY/msdYNx4BgE
         Gje1j4ozjY/FLdAB1S7MCYi+HSzC94AvFgGc1w/2qJiFlkKKth7acmBqvA694Ti9rhRu
         ZxSRHcOkRjXGNBR3Kxqa8u466ZYD+zZmt4rot0anT+jP9BXV2xeZgWsDjSRkohZF/4aj
         NtpltzSifu37+gCddiH646tLYKSAfecMHFEXdHtWo+N64ZH/DCI9GOA2KdZ/HekTsMHK
         FC6oKSTIhjP8FZsNd99S1JEOzlm7UeGgP9A8TCrYLhPkYKORRGpzR8QVg8UDpN52gVKz
         uMcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=zSvatSaXmaDcygklTO+AiD7URC1DncR275ZO9qcviaY=;
        b=i9bhx+GNtGxNmF6MHEH/HqtCPohiFEfaJd/Qk6X8dHcoGdWCu9TNmTUqz83wjODEVR
         QxlPVXapqCAZB3ibbBaQXnC1ObAPYg7czW21oMgifXgCed04c48IAgF07Obo1/yU183P
         HRdG3+s4tZQ7IPKMlfHROr9c26NcWnWDvFx17/H00b1+50TR1YUFYtRBbH3PMq0tDO/w
         Joy/gSbfb0JVTcxem/4D1btVcrlqFj0T3uV1142yvs916RT9NxyNswMGDK53DNM5jyNH
         QWx8aNi2lkN3gugF1P6eHAk/dNPqHOKvFSh/IzgPmEG6TuMkkdA2Uz97AqHNc1TlkSOg
         q/EQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com. [209.85.167.193])
        by gmr-mx.google.com with ESMTPS id h7si151238vsm.1.2020.01.08.00.10.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2020 00:10:17 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) client-ip=209.85.167.193;
Received: by mail-oi1-f193.google.com with SMTP id i1so1880688oie.8
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 00:10:17 -0800 (PST)
X-Received: by 2002:a05:6808:292:: with SMTP id z18mr2042282oic.131.1578471017446;
 Wed, 08 Jan 2020 00:10:17 -0800 (PST)
MIME-Version: 1.0
References: <1578415992-24054-1-git-send-email-krzk@kernel.org> <1578415992-24054-3-git-send-email-krzk@kernel.org>
In-Reply-To: <1578415992-24054-3-git-send-email-krzk@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Jan 2020 09:10:06 +0100
Message-ID: <CAMuHMdXHhF6GhS1W8qS4j7Jv5YnxXjcRopT5QSA=+trc8qwFng@mail.gmail.com>
Subject: Re: [RFT 02/13] alpha: Constify ioreadX() iomem argument (as in
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
> The ioreadX() helpers have inconsistent interface.  On some architectures
> void *__iomem address argument is a pointer to const, on some not.
>
> Implementations of ioreadX() do not modify the memory under the address
> so they can be converted to a "const" version for const-safety and
> consistency among architectures.
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

> --- a/arch/alpha/include/asm/io.h
> +++ b/arch/alpha/include/asm/io.h
> @@ -151,9 +151,9 @@ static inline void generic_##NAME(TYPE b, QUAL void __iomem *addr)  \
>         alpha_mv.mv_##NAME(b, addr);                                    \
>  }
>
> -REMAP1(unsigned int, ioread8, /**/)
> -REMAP1(unsigned int, ioread16, /**/)
> -REMAP1(unsigned int, ioread32, /**/)
> +REMAP1(unsigned int, ioread8, const)
> +REMAP1(unsigned int, ioread16, const)
> +REMAP1(unsigned int, ioread32, const)

If these would become "const volatile", there would no longer be a need
for the last parameter of the REMAP1() macro.

>  REMAP1(u8, readb, const volatile)
>  REMAP1(u16, readw, const volatile)
>  REMAP1(u32, readl, const volatile)

Same for REMAP2() macro below, for iowrite*().

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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAMuHMdXHhF6GhS1W8qS4j7Jv5YnxXjcRopT5QSA%3D%2Btrc8qwFng%40mail.gmail.com.

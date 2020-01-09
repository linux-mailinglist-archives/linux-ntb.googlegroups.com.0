Return-Path: <linux-ntb+bncBCQJP74GSUDRB5FL3TYAKGQEHGFN6TI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id B5C3C1358B2
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Jan 2020 13:00:53 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id o24sf4033725qtr.17
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Jan 2020 04:00:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578571252; cv=pass;
        d=google.com; s=arc-20160816;
        b=BhEmhRvZ7CvboAAlCPS6eaN3fsLfvPJQfNPE44jSEMrj2fRD5aKdpyE31mE0lZg8mh
         LvdJqDUC5xsqgt4NRejvuZfhLMPr2cPJOwoTzvxs2xhFuAYqUFh2iU2tBQsEML3xcUZv
         UsEwf7fAcgA2pRBNmpK6khw0XJa91EfRteH7uUoxt7CrN5MWylPE9ulBV1oTf2IMKEIq
         TlBiKMRkSmMu/vYjTtha/a87XT/UbbBiV7/noOO55yA4zyR++8lbR8UF9sTfjZ/V/7nw
         Q2Vd2Or0QYWdWTRqNYLQmnFt6Tbz0rXBvn0DEdKyU2Jy2Lx+hScef946gBEEezA94hHv
         C0RA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=abBTc+y1pZVOH326ti5Prr62ThcVGojZDZaFt309MpU=;
        b=xIcAxozfqz66Ja1pGyHvipPEofrE2Lh2lC6ICo8VK1+6YG0PGrNTXc4/K8Bpa6gkyE
         TIf5qmzXFMqyTRLIzBSKW3wpcnA5aMyH8THJN6LlJW82xqb0wDTZjxCuiiiGFAaqmAcv
         1GYBlE3glzpWvNp+3kat27Hw05yamwuJVcr4ZF8fFrFtCjnB2n+dceDA1tF5OOLRZ52a
         of0Q2Mmn9Iq8aiU7Lm7BqaAFENOCq+v2CX5l9ARLLlISmNa4T2cwyzGTj9oPGLXpC56S
         UHSXgM7FkByI+wE3wSa6KUdRDBxTBohg27FOC5Rmh7+/52JPcyfIMbTTSnOgmZXtCLtf
         RGEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=abBTc+y1pZVOH326ti5Prr62ThcVGojZDZaFt309MpU=;
        b=Gx9Ej87zeZhxJdEjigCGwOog7+CfiBfeUKHfBLn+GHU0HDZPGra/YAq8oX+BN+7YOz
         XzJ6T5noIbatCf76pzixm+YnW6bridBk029uXB6WZO2mV+9UzKUsdGkngEoxAI8MJuMl
         JhyI76Bfwb4S7KwzcXiEqg48Cvon6IkIdjnZPy+dpFvcUwwF/FplQTRkoyPDnUBrB02c
         iBbccNpmjtxFCvv0QNul+6QE20UWjwjiDj0I+oY9A0t/K+CcL46iRsPZUOI4TvkRzi7S
         Tl5EK4IUW4RZNMMLddfO1eylRUBKFnwNbavOyozdhzhRBZbHONYxkJDk8RDX/i5sYyTu
         3PUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=abBTc+y1pZVOH326ti5Prr62ThcVGojZDZaFt309MpU=;
        b=SYX3hM68kQZExqM8U5zYy7UEKytBqUntzXqQ65D6/C9rPCC1TSnoH+xdJDlrz6/FKj
         UyDP8CfmLD4b1QQChd7THCLy03oFxYIuyOBIetmmw8QyrT/4k/e1C4PtxSf2T4iBFQvF
         zFTYRX8zttWG5MEnPFmMDvm6WCtnQ3FBER8zq2aGJVpD6rPCQ3ECAXpEqHq5jtSjW5E/
         QV4ML6wA6mZIlcIyWhOTzryUgOaQvQBsK5j2b7FrZhJT11Ri0mBinydqANB7BglgENwu
         nUQQw9qnSJKbfxNvFkcMphzKyYhkticSF57mQv7OJJi/kMm3cGH6bvOwW+avluPQIhJE
         npJQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAU84mn1l9Z8yUGGgB+JvEIietpNrmIaD2OaMh2A67z8LdJjDTUq
	m42xOdiMBkXp5AzvNeCYCfQ=
X-Google-Smtp-Source: APXvYqyYrhO6cNFO2z8w9a/dHcaJrsvqa8xx+zI4heA+ERM1GngMN2jIzA+zZJbHsJ/5jsx5hLJuow==
X-Received: by 2002:ad4:4250:: with SMTP id l16mr8497908qvq.143.1578571252731;
        Thu, 09 Jan 2020 04:00:52 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6214:1763:: with SMTP id et3ls302991qvb.5.gmail; Thu, 09
 Jan 2020 04:00:52 -0800 (PST)
X-Received: by 2002:a05:6214:9d2:: with SMTP id dp18mr8328096qvb.98.1578571252232;
        Thu, 09 Jan 2020 04:00:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578571252; cv=none;
        d=google.com; s=arc-20160816;
        b=o+9HOshmHh5oOw6G9KSxuQnI/KC/dLXsxgl+5WOMLrEzG5mhQokSGk2tJg+hgMO+Ne
         rUxv9dghTQ6xggQDu4wtMVC72OfaeuAmUtxIHKvxOS9ds61MM8jbfTMPncmPLzY4cUU6
         Vu64hzhLeVXIUEs0ChN5GmP3jhE4bUQMalgN5lrdZYfetOf1buhvrAxY8NAMbmKpjZMS
         HfrugN0UZPWEH7Rgm/SvOsDdYkl+IllwhbB6W15T9C1b3B1R9cF3q+VPs2rao8wlnn5N
         PvHcq6ziAyQNF+izLZyt5XFTJansNlADzVfa9cY4YHgXwJ9xtE28sdv29RSJZDiiHOEU
         NW+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=nZfyuOmXpaLxOTcihxRatR1N5b6cV8bkVUYtr9LoScQ=;
        b=wIRSCFcS5RJemabIWu7cHPe2zsN9kLp67SqgxtcQwA8x9PEoW6aK/RgJgHAu/PSoUm
         BCpkWxA0nHSxueTGU6YFmhWSu0AsBAbIrA/TbLdkq41sCEFiAp0kSyMlBItG+5TF19K1
         2UzUcNVrl9lp12Hj4YIFP3oLfNpboYlpj2w25C244tuDR6x8/+CwHIcABUV6QMnfrofg
         AQuNlLXr+adodRUzfqLcHmS4CM/79VqUYrt6ikyS3/XL0+MSgV9TbaH0dgEdS2W8XRXb
         MFJsmuxci/vhAm4dlqM53hRLH5fevqyxFUaJolGoc9Aoqe9uiKP9HQSdRx7FiI1EO0gI
         xIaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com. [209.85.167.193])
        by gmr-mx.google.com with ESMTPS id i53si302696qte.2.2020.01.09.04.00.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2020 04:00:52 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.167.193 as permitted sender) client-ip=209.85.167.193;
Received: by mail-oi1-f193.google.com with SMTP id i1so5597281oie.8
        for <linux-ntb@googlegroups.com>; Thu, 09 Jan 2020 04:00:52 -0800 (PST)
X-Received: by 2002:aca:eb83:: with SMTP id j125mr2637148oih.153.1578571251757;
 Thu, 09 Jan 2020 04:00:51 -0800 (PST)
MIME-Version: 1.0
References: <20200108200528.4614-1-krzk@kernel.org> <20200108200528.4614-2-krzk@kernel.org>
In-Reply-To: <20200108200528.4614-2-krzk@kernel.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 9 Jan 2020 13:00:40 +0100
Message-ID: <CAMuHMdV8NYiq0744EGw2zit7DZc5=rOpL7en_NeCx2GTD3F3ZQ@mail.gmail.com>
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
	"Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, Arnd Bergmann <arnd@arndb.de>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Thomas Gleixner <tglx@linutronix.de>, 
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

On Wed, Jan 8, 2020 at 9:05 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAMuHMdV8NYiq0744EGw2zit7DZc5%3DrOpL7en_NeCx2GTD3F3ZQ%40mail.gmail.com.

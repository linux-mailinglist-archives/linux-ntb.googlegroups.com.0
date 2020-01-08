Return-Path: <linux-ntb+bncBC6JD5V23ENBBSE723YAKGQERUPHMFI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8658B133CEB
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 09:16:09 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id a73sf1492098qkg.5
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 00:16:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578471368; cv=pass;
        d=google.com; s=arc-20160816;
        b=mOL8SrsIJb0Dqjwc/bTOOf7qFdvhf5yA2eQqMZkkX20N9HeAUGmH6uh5Lb+L6HZJ5z
         rZ7ut2PvyizGAlftMQjd4ncDD3P8cnl55nPuFRXq+Ww0xuxayFy1KmrFIkZE2HUBwmWd
         zzxBgJcpTiBL/KUbJ5zYtzIOrQArGYsPVzStP2rCYPy+9gj98wIIvaPZU22f0B0LHWHP
         eCEmzgwfZB31L4g2zVxYIE78w5BJDZQavRHEZJ6KeL3d6de9n3lZKpdv8OnNt4ZgLRD2
         ZEqpCKWoLUGr19O1cEYeHNiPkWM6j95FqbWgHlLODxVd729xYk/WLOUINnUffZQdVYya
         YyqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ABYf8F86OSiqpyVq/UBJWOV17EcdFaLyYaCyLNR8ewQ=;
        b=b/tLEuUjZFLiasgSOGNt3tydmfUhRzaShSnHSXQO79TVO8c3sY+B5Ovc1ROsydkBfN
         KmbOWGTG3aa5+W6R+fM80gWrTzY9lJ3nJEyRA6LKZFCOkDLducguRBoP1LDkU9ouU3nW
         TbXN1PV/YcVz9tnaGIraPUzhK9/B52V289k41KbNAF6iIxP5uFlJJZ/cxEOkIzZLMqpd
         OJCp/uEk2iWsztE/FILh1qMBJXEk5sipytP94u6s1FBuUzr0mTXeSvI3B8Vw34Eg6AzH
         K6OwRikgYoRErp3t6vH6GJUY4yh3wqFnMKxxDr7HOyykwjD5l+mFyNuiz14UBiblz/ah
         SrUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MkwH+3Hk;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ABYf8F86OSiqpyVq/UBJWOV17EcdFaLyYaCyLNR8ewQ=;
        b=NGk2NrGdMaVVZW5GjQ7eQeBJuKgt6H02q1MvfqrkNycdEgSQWtQFSVVOUqgvk86hor
         egcHgWGnVPMXk5zz2EMwHLH9VppMHIsJByFIkmit1ucN5U4HME6nhi96dwQD2MwHoTpX
         J3SBKesu7OZi623FhoRjtRzN04tmy4aewU6ZuBd5HDGIoD50a2gF+BLZJoR2OZgpW+Cq
         RQKDE06n6W0rHVDRYtUr+z5OAjAg+pW0OuCdm5+P2XpCS/7U8LiCE7FHY3bpoy1CRQwT
         wxeFP4PlhlKzgLMU9rJ1YzINAIuoUzlzjcakryPOcaDU/aVn2ehCdDg5wYVO10KelQmO
         N7uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ABYf8F86OSiqpyVq/UBJWOV17EcdFaLyYaCyLNR8ewQ=;
        b=fN2nbdcNJshA45pEzGq6HTmoJf0KYyHEH0adcHmZAD5ZPQ6hYf2dfykRfK31ZRtb46
         Vv+FmpsdwXoF19jfq5A5/1ATjOl3b8ZuyPY93LLa0R8d5TuGTVT+HQfOXHAUkjrtM9gO
         Jxt5+AWHPpTf4pEKXi+xa9IVl73G0QYAM/oc3KIBytUSC1wp2Nycbk45jLRT3W/W7onN
         9Gj5T8Bkzqo8pVEFT/GvTek8TTz2KyJOjpybDC55b6YT0jCJMQmFiq6YF25k3xuFVkDF
         FLsY4xS51UbSkcWqTLWB5qn98ng4LKzX4+eI5e/00kEZ80DncNfnJ2VnHJuPYc0Dt0v8
         HVWg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAW39ejR58su8+rKFe31lsmr6X2BAOn53pi8g0sGffKAbOdRCjwM
	8fl/mzeVpxivSbWHxk3PV6k=
X-Google-Smtp-Source: APXvYqyy8OxPHGUjuBKoNnj2BFHDcGWJCilKXEEvDU0o1cq52NR69K4hVESTVl5slNr1fUacUWLRXw==
X-Received: by 2002:aed:3044:: with SMTP id 62mr2514959qte.61.1578471368456;
        Wed, 08 Jan 2020 00:16:08 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:34c1:: with SMTP id x1ls727613qtb.12.gmail; Wed, 08 Jan
 2020 00:16:08 -0800 (PST)
X-Received: by 2002:ac8:46da:: with SMTP id h26mr2562006qto.167.1578471368170;
        Wed, 08 Jan 2020 00:16:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578471368; cv=none;
        d=google.com; s=arc-20160816;
        b=rbdQ7pzLXob4QrKAWj+NdMzaoChw/4fwgpKnkQQtz6Cju3L6DvAVpf2r5mNzUboK8G
         zncg2jsCnJMXL3TmQxjGwLG2NTx6xaczN8nA9zwCOswHbXZPMwQar0Ha4YLIp/95LWfU
         14venZcim2VYeDqPw/PShuu0APn73LQUI5iBJzSXVM5izLs016L/xNt8EF/4ELNMFMSI
         ECRhn+Jzj3ALpt6SL2CxUd7xM7QRlzlKkMrQ++FzSQYQ4BFLwG78bDP6+WNdk8xURpCT
         mkpxAAsCrp9R20ETti4feRByHS1ISJFil8SW3ANLvXw0tDmhiD3ov1HREoAe2wcUGH9E
         RX3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rJ6JYIGpzKdoDYXHO08q9UAkcS9JLwVuqyxgj7z6uFE=;
        b=vpVqXjdk1ZOHiD6pinyyBdr7CJ6fTvC2kKPP3/CXuff1jEAY/ktmykOqO5KWrS8zgV
         8SeNUUTPQXIAStGbNK22bkqOQLA7rOH2twQWekNs8JDtq77opGjxnwvnGHXE8ObRxKoS
         xb0eyyngIVsyr+p0pkNVslUxfmQnho/4Xjdq1baHvluAX5nxRkxr3sD1OB9Qh5obZHR2
         +96klHdBhB6QJWOWf9KhtpWqU/WoQpJ7fv76EjEr5Nmu3bUKJrpYiUDOGHhgIYqCmDUt
         i8c13kmcfvDrTZiyorgG0pVhJgT6LVEYBJj7wUMZp0h69DUP+b3fxh8WBog+wMkePSdV
         DJmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=MkwH+3Hk;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g2si118011qtv.3.2020.01.08.00.16.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 00:16:08 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1004D214D8
	for <linux-ntb@googlegroups.com>; Wed,  8 Jan 2020 08:16:07 +0000 (UTC)
Received: by mail-lf1-f52.google.com with SMTP id 9so1732863lfq.10
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 00:16:06 -0800 (PST)
X-Received: by 2002:ac2:5dc7:: with SMTP id x7mr2134684lfq.24.1578471362796;
 Wed, 08 Jan 2020 00:16:02 -0800 (PST)
MIME-Version: 1.0
References: <1578415992-24054-1-git-send-email-krzk@kernel.org> <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
In-Reply-To: <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 8 Jan 2020 09:15:50 +0100
X-Gmail-Original-Message-ID: <CAJKOXPffZDPz6nAf8fGc-k76KiNWc2KXKJxkWuWjeDtEm1tTHA@mail.gmail.com>
Message-ID: <CAJKOXPffZDPz6nAf8fGc-k76KiNWc2KXKJxkWuWjeDtEm1tTHA@mail.gmail.com>
Subject: Re: [RFT 00/13] iomap: Constify ioreadX() iomem argument
To: Geert Uytterhoeven <geert@linux-m68k.org>
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
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=MkwH+3Hk;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Wed, 8 Jan 2020 at 09:08, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Krzysztof,
>
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

It's kind of separate issue although I could squash it to limit
redundant changes.

> > Patchset was really tested on all affected architectures.

I just spot an error in my first message. I wanted to say:
"Patchset was NOT really tested on all affected architectures."

Obviously.


> > Build testing is in progress - I hope auto-builders will point any issues.
> >
> >
> > Todo
> > ====
> > Convert also string versions (ioread16_rep() etc) if this aproach looks OK.
> >
> >
> > Merging
> > =======
> > The first 5 patches - iomap, alpha, sh, parisc and powerpc - should probably go
> > via one tree, or even squashed into one.
>
> Yes, they should be squashed, cfr. Arnd's comment.
> I also wouldn't bother doing the updates in patches 6-10.

Indeed, thanks for comments.

Best regards,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAJKOXPffZDPz6nAf8fGc-k76KiNWc2KXKJxkWuWjeDtEm1tTHA%40mail.gmail.com.

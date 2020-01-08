Return-Path: <linux-ntb+bncBDEKVJM7XAHRBCFN23YAKGQELBZJ7FA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 50930133D74
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 09:44:57 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id x201sf676760lfa.0
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 00:44:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578473097; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwbxXEr7cIeqmq3mpzwivtmJMDUvBuaJHwS7QN+W6O2GDRy1wks+W7PHSb+RyEyEpG
         La+5cmCY/mJKlHH/y7EFT4oQ/IIgTPbFUo+p43G7vilmpe61g5sszzUdBiTznyXUAoqg
         qGn0w1qvQpq0ge0KBWxgK33mzsgLntqh5IBCydl6D5++Ym8e1Mxqvv2SxnzcybfnRBb8
         1jiGxcmPDyvb1Oqmo0NYSf8fBdfltMbmMhoto6cxwdTxyVrhboW4E6phi25b+895YDR0
         B3g1ejJwhxQpKqBXzJJ0BWLyhNXJgF5ZjVGrKrRgSC9OH1FM65Ls3qE45xUaSDJCCQa1
         J3jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=vsUIljThTm90pSaXHlh9VcLWCOEFas8kBbxQWDN7UZ0=;
        b=V6UQmhSZhaArHZyep9nz9mDkKmGFUVubydtoDHMFzfXoc4I6QeORHOHEnyiol2vLif
         aVtM+JWtu2iGJ72/Ma2rQz49tK0bBnV7fCxmjle5Srw1jv6tCRNqaPLD6TKg7ge0M2EW
         +QdLa0pE7EEwGRg+1io3DTR99b9KNfkkFHpXM6WEeKHVB8pJ/y8QWVQKZV5GsFIlUcmR
         HnuycoF91K9pGfZ9EIL51xUEtT7AItUXoemayM+PkrbK4xdQDS4VSK9+hbNKGiYCtL4W
         Nfujghx5H/uXt7QhIkRmlUVyUvmJsgbSrUo06Oy3SWy4Z+B5OUZyX2vEIATlHmQn01TQ
         ZKpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vsUIljThTm90pSaXHlh9VcLWCOEFas8kBbxQWDN7UZ0=;
        b=hdAMcnN6sHh2VEjgPC+LTnZs6VC2uJQpD+xJ3eudHnhYSKsCdCTXwPoz/UhLlv9dd9
         5ZAncDrGS7v57x3HvJKg75rBABYlJcC7ncuPnFLzi7/EoO8XA5chg12RSdBf4G8Hdvmy
         nGO5e2r6cwdwZp6jLV8md+X7rfBpbf3cYPHlt5leKIAC+1awkk1ZWatWQ3uuxwt4J66N
         8XgmSr3C/U/drieZhV6G550ziA5HA3MoAILEd5pniYEbHue19FziqhtzJJ66pqAB044Q
         B8ttAL+RSoYiN7XchdbfZzb4W621aTw7iYLfTu2sM/iwsHJXiCB0tB69+TMiWckGMNGk
         6ANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vsUIljThTm90pSaXHlh9VcLWCOEFas8kBbxQWDN7UZ0=;
        b=B4TuQ+O5KEzo32OXYgAZB3Dfb8xAw+wilBa1Cx5k5YjviH5zF4XPDJQkTKTc8bIPdW
         JE/yeCm++5rjZtsJUsEURlJOQJ264vV8l8PUxpSmaV+/b0Qpc5pjHffUebOWCk64ocCz
         FveVUSyDi0E6GpE2gOdP2GeQSRthdbzMhUhqL448FFOq0YWoaOiZ47mTkz972jXxiwgv
         x8quKRUIuwLQuKPD2dWF8WfvggCt9bnG1/MlpzO8LeUuGLwuxryl9xiCLDYhFKtDTkE0
         l5e4KAbacHgedxwx7pbAHHC+mDrKqGIX7+kgCjwAmnExu3nUJClrogCjL54hU9VpI9+c
         QHdw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXbSaU0LyAhQxKL4yYQxDmI6ABSwZUOOT9m62RK4ira3lr66b3g
	/fPh00gIUjrO6dLg3RSffeI=
X-Google-Smtp-Source: APXvYqxxIJBVSyTWRwWJi1nU46eD19VDfXbO+GUjUTEHeB9Kr03tdou5WrqD+k7jYAiz++Eklcu6/w==
X-Received: by 2002:a2e:9243:: with SMTP id v3mr2301818ljg.73.1578473096768;
        Wed, 08 Jan 2020 00:44:56 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:518f:: with SMTP id u15ls183768lfi.3.gmail; Wed, 08 Jan
 2020 00:44:56 -0800 (PST)
X-Received: by 2002:ac2:44a2:: with SMTP id c2mr2236320lfm.105.1578473096281;
        Wed, 08 Jan 2020 00:44:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578473096; cv=none;
        d=google.com; s=arc-20160816;
        b=TGpQ32+7ar1ytwjhqWaf1x8saS1axhG2TfijhhsZFyrInLDo6G6Qhanhh9hkdYrL7x
         5PmjCSuUonbjdJUhfOSBL2NOQ9xUYR61hcUPXl6N+CznbbB4K/IWuVda8CesM5BJA0AZ
         MbmlpaVkpnIhPi45VDH6oxnoCd88VmFD/2ReSW3gWCx4fjF5rXB3ElXxSCBQjcw9Z+Tr
         H33uEEkZyHFoMAqc3MQFDk46Vk2Ez2bIKXcXJSXNgC1hWcFXQGyIx+Bd+PIfX1WVllYz
         NVo7BlkOvrHL7n+kqFq5iMZPaVoj8JtGw9mqqpbb1/mwt9ideiMyyGDGKSOLKPYcVUU+
         nTKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=nwYqCYndk8oPyEOkD7w3+qmjTmc/uZXo8+PrCifQd7E=;
        b=upSZoeIXI5sjKELW1k7Kw2VWlCi51vjOGs2PVmLcxAboll+JKnbyv+DRJqbFymjXk2
         qb0cpbwotuL3xSZTAwoqRjSvvB2Bnzf/iwhLYEm5HeSBfGG7MvqCF1y/752pyolUkBK+
         qMVDqm72JryLu7FpXTPAJQK/IjimkccVyaxu7QzBemF9RkvPSz7dNLWgJhk821qGW0AR
         1EZzZCx6j8VbcYm8+Syc6/WdOeexZb3Kzd3y0fbwaEiR4bQGiaQj4tO5DW+I75yb+L4y
         BW4wWKM3cfipuaXRoYcGQITTQVnOk9+yVqtKOpBi4JQaCOjemZRwlueweQUQoTZl2Yqr
         Oclg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.75])
        by gmr-mx.google.com with ESMTPS id e3si128906ljg.2.2020.01.08.00.44.56
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 00:44:56 -0800 (PST)
Received-SPF: neutral (google.com: 217.72.192.75 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.75;
Received: from mail-qk1-f172.google.com ([209.85.222.172]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MbAUg-1jQNaR1MkK-00bZAN for <linux-ntb@googlegroups.com>; Wed, 08 Jan
 2020 09:44:55 +0100
Received: by mail-qk1-f172.google.com with SMTP id z14so1920645qkg.9
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 00:44:55 -0800 (PST)
X-Received: by 2002:a05:620a:a5b:: with SMTP id j27mr3333439qka.286.1578473093254;
 Wed, 08 Jan 2020 00:44:53 -0800 (PST)
MIME-Version: 1.0
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
 <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
 <CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA@mail.gmail.com>
 <CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ@mail.gmail.com> <2355489c-a207-1927-54cf-85c04b62f18f@c-s.fr>
In-Reply-To: <2355489c-a207-1927-54cf-85c04b62f18f@c-s.fr>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 8 Jan 2020 09:44:36 +0100
X-Gmail-Original-Message-ID: <CAK8P3a21yPrmp4ik3Ei1BZfeqZNf0wL5NZNF3uXqb4FLRDyUPw@mail.gmail.com>
Message-ID: <CAK8P3a21yPrmp4ik3Ei1BZfeqZNf0wL5NZNF3uXqb4FLRDyUPw@mail.gmail.com>
Subject: Re: [RFT 00/13] iomap: Constify ioreadX() iomem argument
To: Christophe Leroy <christophe.leroy@c-s.fr>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Geert Uytterhoeven <geert@linux-m68k.org>, Rich Felker <dalias@libc.org>, 
	Jiri Slaby <jirislaby@gmail.com>, "Michael S. Tsirkin" <mst@redhat.com>, David Airlie <airlied@linux.ie>, 
	Jason Wang <jasowang@redhat.com>, DRI Development <dri-devel@lists.freedesktop.org>, 
	virtualization@lists.linux-foundation.org, 
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
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:Tt05QrpRIPlUhsUIPedQ2Dm8jQykrkiNHCKx295/+hJxN7xAtRs
 keE3IPXUUvn2tskXXP/Vq+pChzw3HXkPXZzRbxujWdr54MQgILgLndZQrA+aM1QAv1dGJOj
 zfjtjf3uNC5QS06ZqjQ+JwIOAAw+vkIAvkoP0jAUksWlZomf4xUHrB27syi/dAhguOZcvj7
 kvOHOjAPymny8WZJjkxzA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:y6DuZkkigw0=:BWGcwe9ldP8cfDQUlVYnNZ
 NmOTapa5dF12/Hl7Hdnty5RxTtrgiQHi1rdy5GgpZM6Q4TVRJ5TDor4+mKt+Wgkjy8aua0EIs
 p62O+lDN363wW0ST2Xhe2dPWpvM8p0mz6xnq/uArycs5T1OzdQ89I0bRb5bJXAZktaQ7OW1Iu
 OWpdEoPZeudUfJDRdyPMUg+/C8LnwnFBB2anMw89jlC5TsYpL6BUFCt95RS3/ZDQ1qGhUALAL
 ooIUKZvH5yJMXDYGeFwQQWiv9uYNPixkrm4s1HOqmAd8DCRZoPQYBsRH8EJEzzVhDosEEB0Bk
 tm3PJHkKHsOJKMbrrfNDn/UPwK1sRmXAVBqn2jvY4EuGJpuMP9ehgBOL03yvJ7l12BeoiqCey
 s+MSIDZT6UMyw9RGfw8DrOmCLZIqMP7a1GV03aYjJufle8pG8bfAZ008sy8ACPFnv3XnL+emS
 YZfqPA4qMohoJe2IKpBQjbphf9R8O3/6Jjm3MT041p8LkPOmLv7Dqs6vEFgRW2SYDy69iypN4
 3bi6QlhFYoN8vGgJ2govQ/2p0ZeMCCJKgFUTvc/PXANM+MfO52qdHQv8QWU7fqYW4GTfqKtbf
 hbyOb0IHrc/wpvAdvsMcvwJjeFSnb+sVBYlTdiPu/jFCqsQn+TolHMqxQIBq68ij/iEFG4nrs
 FOUfa8ub14cLWeD5dyB7x/heI0Y9PHCv05uUNB563r10UWGYddRv+l7zpYX5BBUINSMEnMJkv
 YzE9r+ktxeCyEORdagDB3IMHKS6b9HEO91hBsNhoGWkgMrwEuxjNF/tBnS/iZHc6uvetn0VRq
 d4aRUnJdlTl048gdRtmrBqPHHYwz0qn5OfF9OuDBdJdv52dfIEamFXjNOSim5B4dTHnyQJQWR
 uEPfU5pzjWi3xiktx2hQ==
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.75 is neither permitted nor denied by best guess
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

On Wed, Jan 8, 2020 at 9:36 AM Christophe Leroy <christophe.leroy@c-s.fr> w=
rote:
> Le 08/01/2020 =C3=A0 09:18, Krzysztof Kozlowski a =C3=A9crit :
> > On Wed, 8 Jan 2020 at 09:13, Geert Uytterhoeven <geert@linux-m68k.org> =
wrote:
> > I'll add to this one also changes to ioreadX_rep() and add another
> > patch for volatile for reads and writes. I guess your review will be
> > appreciated once more because of ioreadX_rep()
> >
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

The I/O accessors are one of the few places in which 'volatile' generally
makes sense, at least for the implementations that do a plain pointer
dereference (probably none of the ones in question here).

In case of readl/writel, this is what we do in asm-generic:

static inline u32 __raw_readl(const volatile void __iomem *addr)
{
        return *(const volatile u32 __force *)addr;
}

The __force-cast that removes the __iomem here also means that
the 'volatile' keyword could be dropped from the argument list,
as it has no real effect any more, but then there are a few drivers
that mark their iomem pointers as either 'volatile void __iomem*' or
(worse) 'volatile void *', so we keep it in the argument list to not
add warnings for those drivers.

It may be time to change these drivers to not use volatile for __iomem
pointers, but that seems out of scope for what Krzysztof is trying
to do. Ideally we would be consistent here though, either using volatile
all the time or never.

        Arnd

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAK8P3a21yPrmp4ik3Ei1BZfeqZNf0wL5NZNF3uXqb4FLRDyUPw%40mail.gmail.=
com.

Return-Path: <linux-ntb+bncBC6JD5V23ENBBTFA23YAKGQEKAFQCSI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id CA57D133CF7
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 09:18:22 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id h197sf847200vka.5
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 00:18:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578471502; cv=pass;
        d=google.com; s=arc-20160816;
        b=xhKWL6ij0wvJoRF29WZNukI5i5u1w37ZrLdh+IWIUFTB8fRPPUx37urdagQ3fZbPR2
         6TMkS8Z7ZbBD7L0yliMX4fLnFicelte0C9LVhHIXUgLzuMqWNJpd0FUBjv+r+l8Cy6Wu
         IMtOOPDu0A8eI/860JwiRt+KJNoE/PAPJjukzC1Pgcr/L8V/kxRC0ojIkVurf5WMQwVx
         wDyaNjNkA2ZLl0rlawFnVzP13tlw5+hvM172Wak2+AYE7TWkSfPNWvWBhFs3E1A0rjU2
         qRCAiaWzCGEnuFA+ydWxfjv/4AhWAZbDv9AcaIJB8KrOpD2z+iTIR/rfyJ3y8XzK1sXC
         3XqA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=G3pTGXEIjo5VT5bCMcXkQzJs73jRk8PIaTYRLTv/D9Y=;
        b=o+D1piBU2tXuOss54IEk56LANvf16FhVYcHE5hq1xHq7xc4oeXGGqyXGq1cM53jLzz
         A0xe/mDn3IJHciB/wvOKuSpGkYABmO7hECA8JqTwjEtikRd7x3dBda47akjQs5GliNHm
         Btwmu+6kpfrOlez0YDzQaE1iS0m4SdrduWul12ykXROIAnHwE9giRwxvm7OfAids5dEY
         iK67e/c+k5v/544pe7y4q6LR29L+/38TzzobombKjE3JnKDEJOzbRNFOnfRknw67gXdG
         4xQjf5kjz5Cf/vQn99tvMmT3tzzZ8xd5kgWgE1eGIGqWkJZ1IPh44wDnBSzFZoV5JzZA
         KSxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ldIKJUfN;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G3pTGXEIjo5VT5bCMcXkQzJs73jRk8PIaTYRLTv/D9Y=;
        b=UmnGBWtgZOlvFbuKP97+yYFboKqDPTcBQggXTR9/9nvaTyXJlgy15zVqrvQ2Yl+u2R
         aLKIS0szDUXgnmluzlh1IBvEdBduT5C+5BouBNY6KD6fsvTQAVXrFdtt6EIyPxvTSbc5
         4gmSvLXBXiSXWbuxGuEKVPJJNTbL+I1uGLNS1Y36gqFDdOZyJTercoi2avWoE2+Ss8eo
         ZrmRfl9k1hdvCYw08I1VvvbUS4wMoIZU4BuPh793FCboy/3RmFtmmrm5Ji3YOV35Vlvr
         c8xosh2osIlC8Gm7iHQBV85PzTOTEXTBpH9A8qHzVvHTW0MwYR1KlscsHa5q5e8fv13G
         kA/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=G3pTGXEIjo5VT5bCMcXkQzJs73jRk8PIaTYRLTv/D9Y=;
        b=ll1siRq4q2pVBD/T0udLOILbea5oX+7/IRWcr+DJPYB1cdc06ycAgCdD7YW9CqIvN3
         6ImO/EdmBQZcAgOynyAFLuJgU9waTWEzQhUHGK9X4gDvlt5r5lxkw2BKFwlEMTJF3MMb
         kyAFd0WEqoF/N/3UWBdsyjqaSLB6rDSbL8MPagBDNoGyuT4F1hPDqhwyrZzip8/KHe34
         fcYLMkX5nv7zkMWcGWPg2CNYqh8Q3gnSZo+gQh21bVjIy8J8Fbz0J9JE/car8ZtlQbhF
         SK8yUYUQQCF+I8xW5FwGvRh5jrMhcoD0TqzbcGv/Bop54nYv29pnpEto6UKD3ekZBQNz
         CUZg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUHrE5Q4kbbzgNixc1J+AaIHtUHlITLWxFwNFj4heBdI1QKEpnS
	eKhn1g8yw+L8STL3SSx3HbU=
X-Google-Smtp-Source: APXvYqxs0GmFZAQk3MQKV1TPppO/2BlpqakaHK9VAqFs6z3WralfxMX4PB289yUdSgKSmMzn3mHnIw==
X-Received: by 2002:a1f:20c2:: with SMTP id g185mr2151813vkg.44.1578471500327;
        Wed, 08 Jan 2020 00:18:20 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:a642:: with SMTP id p63ls104526vke.10.gmail; Wed, 08 Jan
 2020 00:18:20 -0800 (PST)
X-Received: by 2002:a1f:db81:: with SMTP id s123mr2137960vkg.45.1578471500039;
        Wed, 08 Jan 2020 00:18:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578471500; cv=none;
        d=google.com; s=arc-20160816;
        b=J8ig5gfTl1m2glUxQf6K2sstpZb4Mocp0l5Ya/ilm6oLcvC4P69hsKSJqtD5VXafUX
         v+px0wgyb5gQZsJYj+OZ7GvRczLeIvHoYHbOMKlPfaRyhryL41i9xYjVE9JPmUYC3qn5
         uDeDdUzNXPjIDY+l32zOB3PBWf5/Z87vgE6+qfzFKO9ETc5zLLDQ7jJ5sGeNM1rtdIK5
         99P6FeLnh+rTx1xPVk1TX+oAnMBh55ElVRyBUyiMromarOag++Zr/3PRUpXSBMUAOCVw
         7gfEUhnwCp4MyCADTXmosBXQERti2VuTkGLonVBm4I3jFlu7zOhN94nOw9q/OB5YNrEU
         Zb/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Z+jGQWUGpMpq9vf6wICls0VYN115AefgvIu/HhdePHk=;
        b=ceDEbRZUmltO/g7l+OndNn4wS2U1u5Ppsib+wVZ7QyKJe/mGOHNZFswi99UCW9uvUp
         vuSDCQn6YJI5Op+On6WfYirZ4nNk/EhqnJRuAQbDrC1TVhy+9CTpqaA8DPVDMfx0UU5V
         YQ/FsjiGduLKQo70SCfNT28po6TrRL9b0wPG5B75apL/rQuIKoutExP6ROvxsxdThJD5
         gz+7yUZRzzgA1HDbhOTgSv7gTPqnC69GGuPArOJo89D94MiJFfk1Lw9yhGImoJk3Hb6n
         bWLkb/RLGa7l85J6b3NCP8yhmIxxtByY0ezO0BBiL+6/4rwv5P6FhAC+z5W3uRbMWXhD
         GeDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ldIKJUfN;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id w4si120269vse.2.2020.01.08.00.18.19
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 00:18:19 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9C90020848
	for <linux-ntb@googlegroups.com>; Wed,  8 Jan 2020 08:18:18 +0000 (UTC)
Received: by mail-lf1-f50.google.com with SMTP id l18so1780268lfc.1
        for <linux-ntb@googlegroups.com>; Wed, 08 Jan 2020 00:18:18 -0800 (PST)
X-Received: by 2002:ac2:51de:: with SMTP id u30mr2081225lfm.69.1578471494464;
 Wed, 08 Jan 2020 00:18:14 -0800 (PST)
MIME-Version: 1.0
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
 <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com> <CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA@mail.gmail.com>
In-Reply-To: <CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Date: Wed, 8 Jan 2020 09:18:03 +0100
X-Gmail-Original-Message-ID: <CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ@mail.gmail.com>
Message-ID: <CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ@mail.gmail.com>
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
 header.i=@kernel.org header.s=default header.b=ldIKJUfN;       spf=pass
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

On Wed, 8 Jan 2020 at 09:13, Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>
> Hi Krzysztof,
>
> On Wed, Jan 8, 2020 at 9:07 AM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Tue, Jan 7, 2020 at 5:53 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
> > > The ioread8/16/32() and others have inconsistent interface among the
> > > architectures: some taking address as const, some not.
> > >
> > > It seems there is nothing really stopping all of them to take
> > > pointer to const.
> >
> > Shouldn't all of them take const volatile __iomem pointers?
> > It seems the "volatile" is missing from all but the implementations in
> > include/asm-generic/io.h.
>
> As my "volatile" comment applies to iowrite*(), too, probably that should be
> done in a separate patch.
>
> Hence with patches 1-5 squashed, and for patches 11-13:
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

I'll add to this one also changes to ioreadX_rep() and add another
patch for volatile for reads and writes. I guess your review will be
appreciated once more because of ioreadX_rep()

Thanks,
Krzysztof

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ%40mail.gmail.com.

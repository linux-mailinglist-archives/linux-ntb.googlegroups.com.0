Return-Path: <linux-ntb+bncBAABBNFZZL6QKGQEOWMV7LI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3a.google.com (mail-vk1-xa3a.google.com [IPv6:2607:f8b0:4864:20::a3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C26712B4982
	for <lists+linux-ntb@lfdr.de>; Mon, 16 Nov 2020 16:37:25 +0100 (CET)
Received: by mail-vk1-xa3a.google.com with SMTP id b199sf6113790vkf.8
        for <lists+linux-ntb@lfdr.de>; Mon, 16 Nov 2020 07:37:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605541044; cv=pass;
        d=google.com; s=arc-20160816;
        b=MewaoD+PGBz4ACOQEn57990QL4qLi6lZNghjHs2srVu9FIBLsizK/NPAmjHDVhVMOM
         B5YkhCOpRs5IoLiEgt9WUbM+CUR9JeeUG5B04xBKmP8RB0iyK48eP4kb083zbYp37++J
         thW4CTaa6XmcdTUYM0BSzWvlGtg0po47emu7bYmA3gz2IFT+I7Kue62aZJrQTwUf175x
         emWoxWB6IaqoWDnJouFzP+rdje2MHFyv9czQZxT9fZnfKZzsgXf6pauI65X/Xx70Bbs2
         nBUvCg/j5PCNQns9r7yXq0TYC06ciEjN26YYljYUYRvqQiJ2CZ9W39d2+369e0tlvylQ
         k0iQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8xLkElaeDY4wCFja/um6q7M3MrEgb6iVL1uSUMLmrPU=;
        b=otMlPFJBJlAhQyuVJnbozeqtJe+NcfgJ2gv4OCjLm/mrMXVmg5hvCSGUcl+zREvcSv
         uBOgGRUfHiBLDdUpx9aY1OjOUejBUDXJky9mxQN57/qsuIVHJdB35EDBKOattBKxBDky
         5e3MncF1dpT5E+EXNIBZCEGE2RhkD4JzhXA0PBvxUtH5Fd4F9FeAwjm7LC9Mcw83eHRZ
         fuLOdB4unHEb/ERH+wQbrUW4N9fNyrhBcgUc62PmGI59OmG2SjdB0LmE9DyDNJVlnD75
         U4a349EPTnvxi2dU42NZnbMU4rm+MfFQgmhA4Te0ndi8HbSuFU1daN5Zlxrp+1q+3Hoq
         sz8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=o536oL+2;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8xLkElaeDY4wCFja/um6q7M3MrEgb6iVL1uSUMLmrPU=;
        b=eJlbnaL6yowqdFQZ6xHxcTYux3ooK0xfiGgrRkam4xplodOJAHNKQQS5SMYoD76Q5r
         XpRz8WQFVGgTXWcjEOQch+JrF1kxyW4nDVmPiylPWwvo/+6TEIAACjLHw9PkJzC9tmQF
         YEibDH350Yh5qb+UFOKQwgBkE6GNPH/v25Et0bZOrDRVkeINUuYZPsx0VpRYyVUnJQVc
         nPk5JpLdUYAwCy/wovX1Nu/qcDUp7N5/FnBBAr47P07t//aerInZnOF6t1m+pbd+MHMh
         +okmLQZgiabcq8MrhphGKbmxPVl7MF2mAxSqSoHuVg5MGlw8v8E2mDgLoiSr+HpbM9v3
         7qMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8xLkElaeDY4wCFja/um6q7M3MrEgb6iVL1uSUMLmrPU=;
        b=Fmbfp1MkZKd2xwAevK/OcGg4gsyMh9fHluH8Kxd3k3HTrb/SDrCv74tsVB0yhvJ9s/
         DEQ5qurh9HFuw4Jua8/0IR+kVXHPliZSqS3iV08a3mV1Dv0Efg7Qhej9L6lwhfwIXeld
         qeidu/cTTpKzm5eOFaXN2Kr7APISXJmKVxKoM3I3Qf4Y7gjWWh4tmMht61hv4LXU9tjY
         Xu7AqGIBlMqOjsHRnNOQL/Zhq7W4TezzcVLdPr3YSh2NDA6B6xqqpwu0dN+NZg2AHLqP
         UY3eNEOJdFHS5FfJMbuFWH+NUIUIbv9q8STVdR1RGhySky93EFmKX5G8Ihky69to16Cl
         rGRw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533yoOx/3mbwCsuVyNUHAyKAIt9Ixe09UpnPT1TaC4FQ2bKQjFtF
	Sn/E9amlFU79kdb5DMfZREM=
X-Google-Smtp-Source: ABdhPJzOapRuHjjV+C1Fi4o0yhw9Tf/1Tn3QD4u8xosit82RbiSUZ1v3d0xmbtBLIejfTgZ8OnSSLQ==
X-Received: by 2002:a05:6102:4b6:: with SMTP id r22mr8387528vsa.10.1605541044686;
        Mon, 16 Nov 2020 07:37:24 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:2a9a:: with SMTP id h26ls943604uar.7.gmail; Mon, 16 Nov
 2020 07:37:24 -0800 (PST)
X-Received: by 2002:ab0:186a:: with SMTP id j42mr6960048uag.52.1605541044131;
        Mon, 16 Nov 2020 07:37:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605541044; cv=none;
        d=google.com; s=arc-20160816;
        b=pa2CttGV/iinRuMMGG2AXXOdKdVxz1ZiudNuMRwDxDIBk/YT2r5fEE9rXKcWT34eVN
         VQ0mvOEjoEYNZVlq4K9wCKuxOHFjrxgAoiF3C8yOggwzv+Cw+SHIgQFoBtDP/1d/uIA5
         +QuuxFmxw16lOwNKA76E5blhAIKAMyT+3wvzBDkRK28BUxYhuQAvi4Ks66OgEH/+tQEj
         EnEHXDS7t8BbtufxDKa5jeKCxg0SRZ2TcLtL8KmtrdkKdHTsE0K+HsPbiDIMvLx/sRH3
         qGVc5jGdR50EyiUhrYNKhkz6txQkELgO8o6OOnBC6DGFH688KLYNVh0rcRjCcYfDKt1b
         +H4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hG++UmFKBdKt+ZeTSEb8yBdHSmKCSmHlz7LplY0Rb/Y=;
        b=DNsK1RhmCxL4msRT4yYfKESpjRaFrQZHYTCue5LEfmNRlUm2KVqNuj8YIC6Kd6AALZ
         BMaVnf7dLjuPTq40wP41vUNPo8/Cl9+1Fox3YE/upgH2y428m2nJxgAqqF/DWIpGRHvf
         1AhT+mSsmooRHb9IOAfVO7pTFPwITur0DL3d0t+OiQjvUvY+TcTdOlw+TBh8DsFlQffH
         Jp1w4bVs8RYrfxFLF87Jt1vPYuKJDBzcai6S1MnMQBzBV2u1OEnFRVDW6ZBjRDxsOsG0
         0QD6tL61QVrV02QKmz6eoYHu9a3nHmFN82DuUqF7COP99RmK4SVevgMjmCtDye/mNWyE
         TfMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=o536oL+2;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p17si1377958vki.0.2020.11.16.07.37.23
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 07:37:24 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C10CD22450
	for <linux-ntb@googlegroups.com>; Mon, 16 Nov 2020 15:37:22 +0000 (UTC)
Received: by mail-oo1-f53.google.com with SMTP id r11so3985004oos.12
        for <linux-ntb@googlegroups.com>; Mon, 16 Nov 2020 07:37:22 -0800 (PST)
X-Received: by 2002:a4a:a217:: with SMTP id m23mr10462852ool.26.1605541041921;
 Mon, 16 Nov 2020 07:37:21 -0800 (PST)
MIME-Version: 1.0
References: <20200930153519.7282-16-kishon@ti.com> <VI1PR04MB496061EAB6F249F1C394F01092EA0@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <d6d27475-3464-6772-2122-cc194b8ae022@ti.com> <VI1PR04MB49602D24F65E11FF1F14294F92E90@VI1PR04MB4960.eurprd04.prod.outlook.com>
 <30c8f7a1-baa5-1eb4-d2c2-9a13be896f0f@ti.com> <CAK8P3a38vBXbAWE09H+TSoZUTkFdYDcQmXX97foT4qXQc8t5ZQ@mail.gmail.com>
 <5a9115c8-322e-ffd4-6274-ae98c375b21d@ti.com> <CAK8P3a33XSvenqBhuQpGmtLbYydyzY2OQh73150TJtpzW24DTw@mail.gmail.com>
 <c720de5b-bf76-162f-24cb-07f6fe670bd2@ti.com>
In-Reply-To: <c720de5b-bf76-162f-24cb-07f6fe670bd2@ti.com>
From: Arnd Bergmann <arnd@kernel.org>
Date: Mon, 16 Nov 2020 16:37:05 +0100
X-Gmail-Original-Message-ID: <CAK8P3a0nTdtADPa_5jduDm5MpBiwBNgs7cYokK5qBZ=RkL1Ktg@mail.gmail.com>
Message-ID: <CAK8P3a0nTdtADPa_5jduDm5MpBiwBNgs7cYokK5qBZ=RkL1Ktg@mail.gmail.com>
Subject: Re: [PATCH v7 15/18] NTB: Add support for EPF PCI-Express
 Non-Transparent Bridge
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: Sherry Sun <sherry.sun@nxp.com>, "bhelgaas@google.com" <bhelgaas@google.com>, 
	Jonathan Corbet <corbet@lwn.net>, "lorenzo.pieralisi@arm.com" <lorenzo.pieralisi@arm.com>, 
	"arnd@arndb.de" <arnd@arndb.de>, "jdmason@kudzu.us" <jdmason@kudzu.us>, 
	"dave.jiang@intel.com" <dave.jiang@intel.com>, "allenbh@gmail.com" <allenbh@gmail.com>, 
	"tjoseph@cadence.com" <tjoseph@cadence.com>, Rob Herring <robh@kernel.org>, 
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>, 
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, 
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=o536oL+2;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Nov 16, 2020 at 6:19 AM Kishon Vijay Abraham I <kishon@ti.com> wrote:
> On 12/11/20 6:54 pm, Arnd Bergmann wrote:
> >
> > This looks very  promising indeed, I need to read up on the whole
> > discussion there. I also see your slides at [1]  that help do explain some
> > of it. I have one fundamental question that I can't figure out from
> > the description, maybe you can help me here:
> >
> > How is the configuration managed, taking the EP case as an
> > example? Your UseCase1 example sounds like the system that owns
> > the EP hardware is the one that turns the EP into a vhost device,
> > and creates a vhost-rpmsg device on top, while the RC side would
> > probe the pci-vhost and then detect a virtio-rpmsg device to talk to.
>
> That's correct. Slide no 9 in [1] should give the layering details.
>
> > Can it also do the opposite, so you end up with e.g. a virtio-net
> > device on the EP side and vhost-net on the RC?
>
> Unfortunately no. Again referring slide 9 in [1], we only have
> vhost-pci-epf on the EP side which only creates a "vhost_dev" to deal
> with vhost side of things. For doing the opposite, we'd need to create
> virtio-pci-epf for EP side that interacts with core virtio (and also the
> corresponding vhost back end on PCI host).

Ok, I see. So I think this is the opposite of drivers/misc/mic and
the bluefield driver were using, so we would probably end up
needing both.

Then again, I guess the NTB driver would give us the functionality
for free, if it shows a symmetric link?

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAK8P3a0nTdtADPa_5jduDm5MpBiwBNgs7cYokK5qBZ%3DRkL1Ktg%40mail.gmail.com.

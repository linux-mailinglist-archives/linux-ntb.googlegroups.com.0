Return-Path: <linux-ntb+bncBC27HSOJ44LBBX77ZX7AKGQEMORV5ZQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7FA2D77A2
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 15:19:12 +0100 (CET)
Received: by mail-lf1-x140.google.com with SMTP id b11sf876998lfj.21
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 06:19:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607696351; cv=pass;
        d=google.com; s=arc-20160816;
        b=B3LW/rQucg5UrUvn8kG2LZRuuvlTsc5AYR672zfDaM+xCQeo8MfIQm3XWZdBhAC6r4
         z59+vWIX+HrDNnHbemZXptEYFKwCbkSOVy43cQ1r+/WXDoqC5kFzklmCTwFv8QXxSNwz
         JJwxsn2GLpVuvULhSYJw7SFhrFzjScoBrmhbe4H1U0Y07FIxOu/yFw5ftZLmhI6v7QG6
         NbFvHkkKXxpwaFz+Gt6M2hZP504O09vprp4i39jf8ZNA2sKLFgFP0rWoJozfNi3/V6oI
         lJwzHw7TlMN+ExgsXvof0TRSyEArcKEiDV4SQYD5D8idxeifNPgxY5srmxwcaGzqIg9d
         egEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=l6wnXbSp/RO8oprIVWmnzkslQq4GUwtpE6zaTGYfpgs=;
        b=ylOavOlgWesCm0B8WsGyLWT+ku1cEBxV1fbLFD6umpZkfyYpGoGjl7RlHrXW6nOIgq
         ckgLAOAi8fVcTw+vKfNJL5s6XU5RXLOxsTegebe0N+e6HeBnDi2RsV4//MMC+BGMnhzY
         6d+MIMrd8CsnpdHwiCtrQw07UDxevX/6xNPOuEn3kwAd9X18IvdliWA8hJCpnCC3J6FY
         vOqZ92wHrkjwyRemu8nP519z886PI6KJ1WNPntz4oh25I8y8oyyeOLq6es20eqCm87Vw
         Q3zVvI3WOtbRe/UsRErcpA3sw9VxcqHLj/BDu9JiBjozLqP4Hux3qPoB49V1L7bJqRBh
         jmTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=l6wnXbSp/RO8oprIVWmnzkslQq4GUwtpE6zaTGYfpgs=;
        b=dsN+61t781DTKWEVqgzeypzTGVGxLmWVfXp1pg7CchEOfUw2olnPXC0zwNpUpuVggR
         1BbF12KsDxq9lwsNNXf4uU6lTCek656sOK/MKR+PC1dRFMtF2Ld9KP4zkBy2+G6cY25p
         eUXplz906QwYZ7ftsDmB5RaMyuhWlBDZAv8a7GY7QUv3jWiATwB+3A7zYx5OIQ/7dRA0
         41rNJ9Ty3oQ8Ec1EdJXqH6FqlArcI07Uo5GohXvivBjkVeZ/b8491Fka7VVOrVfSuQDE
         +GmwzsCXXWmLE2cx2J17D3aekmtuXImCITXe5jCsT65CXFtoS+sYxc3t+xs4PuwO2Z7X
         2s4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=l6wnXbSp/RO8oprIVWmnzkslQq4GUwtpE6zaTGYfpgs=;
        b=esw3c7x4uPz2ZoXFr+SiADXlpN7jeeeQ4zkSj8LG5cpotbXNwwGaaQ7HZOS/H+tVwE
         ZLGhrLYAS2LnzWPreuOITnhe9QAQfolqI9U+PfEfOYUd5nCwSivZfipgYerzF0Y1UpKq
         AgIQ9QJsJKrI0y8nFMA7Z0c8mFGJJyCw/yhwwD1Zz7nqwO7tfZ6ONYk7VgQdHecp7+83
         hcQC2kuzJRjI4JcuaPu8ms0ZB6CLafRUJdnw6wirS6MyD170Qb+0+MVkFsQJNP1PvWA8
         xwEQF2+vo2nYR+/MFX47HaomxctoRbgeRJ7PHFEUEEXRIQl0Sy+sijt57nlL+rvKkZb8
         HNKA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533UExej1ZUrFITNZ12WSHMhKsy2ppdvexbvAgq+nFRS9WHxdHOa
	+EkUng5yPynmMdY1g7cHdAo=
X-Google-Smtp-Source: ABdhPJyROWPmzOZM9O+f2HP+tp6DNxf7F3LaqwkT7/Ovl3UPUOvpYjxwt3j7bMxTnfzz0p09eJgciw==
X-Received: by 2002:a05:6512:31c5:: with SMTP id j5mr4907481lfe.474.1607696351785;
        Fri, 11 Dec 2020 06:19:11 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c1cd:: with SMTP id r196ls1861042lff.1.gmail; Fri, 11
 Dec 2020 06:19:10 -0800 (PST)
X-Received: by 2002:a19:8b55:: with SMTP id n82mr4807306lfd.485.1607696350724;
        Fri, 11 Dec 2020 06:19:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607696350; cv=none;
        d=google.com; s=arc-20160816;
        b=ECkmYnxe1+5iJq517sqq5Qxrt24+K3pALX5aOx7rTWzGcJEQf5/V5pzrjp7WFYbN3g
         7S22rc+0e2iBl180Om0gWK07Te2YztueQIrDAHgf7iC4rEhB04lUEE84shwEl/Dx5gRw
         mJLwZR8vnaaa8Ik2CYiAd+ZzxosU0ZtljqvP0fui98NRNN5q9Imdsx9Nq1Aj/X6Jf8cG
         l7q5NhcexAnCVdcKJY44azvqS5xCNLpgDDjq/bR9kg1qD7mNLa1KxnlGEotDbRlLBqD5
         LxwyEMp6c7p9mk7aL+YOCd6A77yZmjaI6tqtVEYGTvUq5U4YS+IJaj/p/4+xxfKxnmJE
         r4Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=fTmrhz85/1ZbEiS5+A6iT1/jxJNE6XMfxsd/8RlXb9U=;
        b=eeJ4D8GagrsQrWB/gUH8jp01M/De80cLa77IRioNznulGlfamhrlHFUK/cTi9qLVGK
         Z75tbwpbFUmg8I9eRBYxZ4T2xWAOXQK6qp8OYOLfF42Yz6XcLHxI/dtUfBT7S9LXaTu0
         Ub8NOXmuCaIpl+KAiu4hbgROEnmDEePLF3De/N5ENsl9bqZ9Yy0r6K4x3rMkJnwLn8nq
         l+fY1RCPQJghfDEJT8j1h1U6eBTTgI+9Xajq/846uT2cJxEkbA3PoypCdByoFeXUQEOH
         kctIsgkXwXzSCK/qW4Pw5aS0mzOTmu8dGrIMWWv5A8i30VTGhcvnEzYeZEzfWJL0DNca
         4yHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id c24si83006ljk.7.2020.12.11.06.19.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 06:19:10 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-53-s0AncPC_O7qxZEyLU7X13A-1; Fri, 11 Dec 2020 14:19:07 +0000
X-MC-Unique: s0AncPC_O7qxZEyLU7X13A-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 11 Dec 2020 14:19:05 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 11 Dec 2020 14:19:05 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Thomas Gleixner' <tglx@linutronix.de>, Tvrtko Ursulin
	<tvrtko.ursulin@linux.intel.com>, LKML <linux-kernel@vger.kernel.org>
CC: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>, Jani
 Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
	<joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	"intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "James
 E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Helge Deller
	<deller@gmx.de>, afzal mohammed <afzal.mohd.ma@gmail.com>,
	"linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>, Russell King
	<linux@armlinux.org.uk>, "linux-arm-kernel@lists.infradead.org"
	<linux-arm-kernel@lists.infradead.org>, Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
	Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens
	<hca@linux.ibm.com>, "linux-s390@vger.kernel.org"
	<linux-s390@vger.kernel.org>, Pankaj Bharadiya
	<pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
	<chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>, "Linus
 Walleij" <linus.walleij@linaro.org>, "linux-gpio@vger.kernel.org"
	<linux-gpio@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>, Jon Mason
	<jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe
	<allenbh@gmail.com>, "linux-ntb@googlegroups.com"
	<linux-ntb@googlegroups.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, "Michal
 Simek" <michal.simek@xilinx.com>, "linux-pci@vger.kernel.org"
	<linux-pci@vger.kernel.org>, Karthikeyan Mitran
	<m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, "Tariq
 Toukan" <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>, "Jakub
 Kicinski" <kuba@kernel.org>, "netdev@vger.kernel.org"
	<netdev@vger.kernel.org>, "linux-rdma@vger.kernel.org"
	<linux-rdma@vger.kernel.org>, Saeed Mahameed <saeedm@nvidia.com>, "Leon
 Romanovsky" <leon@kernel.org>, Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>,
	"xen-devel@lists.xenproject.org" <xen-devel@lists.xenproject.org>
Subject: RE: [patch 14/30] drm/i915/pmu: Replace open coded kstat_irqs() copy
Thread-Topic: [patch 14/30] drm/i915/pmu: Replace open coded kstat_irqs() copy
Thread-Index: AQHWz72qwjNpP0n0UkWT70W8RrLS8qnx7xrw
Date: Fri, 11 Dec 2020 14:19:05 +0000
Message-ID: <d6cbfa118490459bb0671394f00323fc@AcuMS.aculab.com>
References: <20201210192536.118432146@linutronix.de>
 <20201210194043.957046529@linutronix.de>
 <ad05af1a-5463-2a80-0887-7629721d6863@linux.intel.com>
 <87y2i4h54i.fsf@nanos.tec.linutronix.de>
In-Reply-To: <87y2i4h54i.fsf@nanos.tec.linutronix.de>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Thomas Gleixner
> Sent: 11 December 2020 12:58
..
> > After my failed hasty sketch from last night I had a different one which
> > was kind of heuristics based (re-reading the upper dword and retrying if
> > it changed on 32-bit).
> 
> The problem is that there will be two seperate modifications for the low
> and high word. Several ways how the compiler can translate this, but the
> problem is the same for all of them:
> 
> CPU 0                           CPU 1
>         load low
>         load high
>         add  low, 1
>         addc high, 0
>         store low               load high
> --> NMI                         load low
>                                 load high and compare
>         store high
> 
> You can't catch that. If this really becomes an issue you need a
> sequence counter around it.

Or just two copies of the high word.
Provided the accesses are sequenced:
writer:
	load high:low
	add small_value,high:low
	store high
	store low
	store high_copy
reader:
	load high_copy
	load low
	load high
	if (high != high_copy)
		low = 0;

The read value is always stale, so it probably doesn't
matter that the value you have is one that is between the
value when you started and that when you finished.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/d6cbfa118490459bb0671394f00323fc%40AcuMS.aculab.com.

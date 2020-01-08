Return-Path: <linux-ntb+bncBC27HSOJ44LBBYVH3DYAKGQETQLPUXQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id DF9EA13497E
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 18:39:46 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id y23sf2178565edt.2
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 09:39:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578505186; cv=pass;
        d=google.com; s=arc-20160816;
        b=lmJsct40MxWa1ptPixh7x3yPEZFdvvlDMApzmAUQhd8Xt4l2C/Ll/ty1JBOhQxvRaV
         MW6w2rpjpKR9hmJWfybC/fF6B5a25FkVR8VOtrnB9P+Vrz9EzASDJiXfH6N7nSE8cPON
         PX5vbf5t6xI3YJnzsOlSG79yfMNGsOnExAvDPJIg5WPQqq8zoX4Cg7diqcY+uQfVKnb5
         8EUMVOy63K2bwOJDYSgsMmd3Ht+MeMVCkngPRyP+QyLkWFsdSkRCzMwEqP9FqWwOUvUQ
         1DIXy7+MIBVmYqpchxrRt3i/OfKper1i+tGu4wY/TDgX8OTTuaHM00CVDnZYX6KOofrL
         vFMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=8XIXUy0FoBDQM89lJsUTX4DxD2fSvpIfdfnfsvqZjoA=;
        b=qfoIAHuOWS4niGrK9+mPr2eUQ2kzMh9+lQAz9d3q2ssG/59zGnk/9VN0Nhy19tqWbH
         jyB8Fq0D41cKVaAdlu7WXn3gNezaEbe9GaFCkp5j3MFPwCZw2pHVy+NPWGEX8E5KhzKd
         p91uWjb0cCb6kzyjI5Y6mWs6gM8Ii7vQqd7ONouM8BxR24kLW8jga/1+B2y6D/F1AKY+
         YKboSDtTseaOe2fobo12qkb/0OvKGd6DTfS/T320EgzsLu9FSDoMJhfW9DAOvmIzlqIr
         u8oPsRcT9ndnuw5RcgGJYMzacsESwTTI0epmlo1bZNyE1BNDpZiRu7nehTYHvbAE8uIL
         10kg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8XIXUy0FoBDQM89lJsUTX4DxD2fSvpIfdfnfsvqZjoA=;
        b=HHVVKEsOJ8JsTB6GURFE6FPmJJBNf/moYiC5IgrIIIJgjmFmGyD+g3qGj1GnrhyFOg
         Q3x//78OvltGmAQL+q2RDMgZNrPB8JcvLUqSS/b7xeBFkNHnSnuL8jdkcmtcGpSgntXJ
         Ceu6u9GrDTHDeHutOvBRlFSyVYDasyMV5aJn2o4MTQcta7DuXNsg1R7najNR13TuIHT7
         9BZU7wec9SW8VpjMXkv86nZHbjFHkrb0Owak6znO87I8fFIsgo5GePxC9slCaczQ/5ee
         bPbenEQIxcdZIFTMNk8d+P0ykLXtgKXLXTdKbERfK3tyZboeovE60wat4UaHKqtcxgIr
         M12A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8XIXUy0FoBDQM89lJsUTX4DxD2fSvpIfdfnfsvqZjoA=;
        b=OHOW1pQrxFaxOAQNYBNw8BjmbM2ZvoTz1WHEsRWbN2ud/N0L8+3E6xGuxRhg66DBPU
         BnqLLHd1V49k9Oyyjeojfs7xqkrFex+bnFCifZcsE/wzT13OShmmdzA0cm9JRFCEWOrN
         z0X5vMJU2+nyJGu7AzGBcDu48tGd4qdz5Pos87AYb6E9q9RP7p7pZBa0J4mXp77ahHC6
         SAHSx20grNPn7y2Af8iHBeDKzmrEebk0Jk6tNQ1Kcn0SFj6fwTpwoXt5erFr/jgwfe2b
         i9LwUGhqhRnnuYhGUMUuqO3tokY4GFak1vYTgTR2VhFQi/5Q3N1axtmlgEcs72Tyo1Ll
         3lxw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUSns578xZZ0ApBF0whNn2xiLQHTV/PqeoeEIQR3EiP5Fr1RLVe
	svJpHRyVv+yeKHiGBy0Vubw=
X-Google-Smtp-Source: APXvYqw0NKREEY3Auvpgot+E3t2CKCb5ncPmIPfr0DK7sMvmlIfONdyTBOKLkvGM/7aNaIMXXhSsEQ==
X-Received: by 2002:aa7:d2c1:: with SMTP id k1mr6723256edr.29.1578505186607;
        Wed, 08 Jan 2020 09:39:46 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aa7:d9ce:: with SMTP id v14ls963995eds.5.gmail; Wed, 08 Jan
 2020 09:39:46 -0800 (PST)
X-Received: by 2002:a50:dacd:: with SMTP id s13mr6951416edj.194.1578505186137;
        Wed, 08 Jan 2020 09:39:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578505186; cv=none;
        d=google.com; s=arc-20160816;
        b=aaUaxX0EnfCytqXXbg1LVXyVeMrxE8KTeZzZt6IUWeolwDuBZsv1Cm54NVGf/tIjXF
         fD81qfM+2ddlcXGSig90kEpjRDlDqccuFF0UrWHiWq8xxVcWPdoqc1cIxWbF1g902rPp
         Ex4SRSq/IOShMyD2XZ05k2HXtXm7CAb2qDgpq4qYWho2xFmSrnpnZhXCzyvn/I7njHPV
         B0juo3okrO5CYqj+/hQ27ZjDvcoKHK6SgDrPu+3XnE4oiGCng3Tz07gJGlWyjSosUOyd
         9Zxz12qCEvbXtMIWMT/GfeDFkp+T5vKmuXBcHMdigs2mmI57PIc820BHbdwSqK+J/rE0
         YnRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=isDE66TDzLwOPMoBB+GwF0KLMbySHhbhBl4lSkj7SXc=;
        b=Ym/nixmluQCJuU5tUQMk8AIQmN2YYCBKJ1kxlJiVjTbElZoD7NDxHGGZx/RuMKIl4a
         AXl7iZNBozi2PBVOq7I1n965rhMoM6FmBrc2cytKCefKA7XXxEItTKU5nhIPj0IYYAUZ
         fLkIZ3uyuWmNuI7vw4ZNLSE5TpYo/SQzAs+ogboOIORx/9agqLEqd10f7hyKjQjMF94P
         gvkZnKxb6LVRPyhbI5kIqksLT+oX1oK5leVS3IIebHdlVmG6NXVfKgg+n+yA0OiuQP7d
         jfKOpNalyDso+DPsyM6oVmPEwPAWVgJczDNQxT0o0mg/6P3fA3tMxznYPFZtifpmSCUb
         dMVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id ba12si165640edb.3.2020.01.08.09.39.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 09:39:46 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id uk-mta-2-XMFewsroMBqNVmL4iq_bTQ-1;
 Wed, 08 Jan 2020 17:39:44 +0000
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 8 Jan 2020 17:39:42 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 8 Jan 2020 17:39:42 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Christophe Leroy' <christophe.leroy@c-s.fr>, Geert Uytterhoeven
	<geert@linux-m68k.org>
CC: Krzysztof Kozlowski <krzk@kernel.org>, Rich Felker <dalias@libc.org>,
	"Jiri Slaby" <jirislaby@gmail.com>, "Michael S. Tsirkin" <mst@redhat.com>,
	"David Airlie" <airlied@linux.ie>, Jason Wang <jasowang@redhat.com>, DRI
 Development <dri-devel@lists.freedesktop.org>,
	"virtualization@lists.linux-foundation.org"
	<virtualization@lists.linux-foundation.org>, "James E.J. Bottomley"
	<James.Bottomley@hansenpartnership.com>, netdev <netdev@vger.kernel.org>,
	Paul Mackerras <paulus@samba.org>, Linux-Arch <linux-arch@vger.kernel.org>,
	Dave Jiang <dave.jiang@intel.com>, Yoshinori Sato
	<ysato@users.sourceforge.jp>, Helge Deller <deller@gmx.de>, Linux-sh list
	<linux-sh@vger.kernel.org>, Alexey Brodkin <abrodkin@synopsys.com>, "Ben
 Skeggs" <bskeggs@redhat.com>, "nouveau@lists.freedesktop.org"
	<nouveau@lists.freedesktop.org>, Dave Airlie <airlied@redhat.com>, "Matt
 Turner" <mattst88@gmail.com>, arcml <linux-snps-arc@lists.infradead.org>,
	"Nick Kossifidis" <mickflemm@gmail.com>, Allen Hubbe <allenbh@gmail.com>,
	"Arnd Bergmann" <arnd@arndb.de>, alpha <linux-alpha@vger.kernel.org>, "Ivan
 Kokshaysky" <ink@jurassic.park.msu.ru>, Thomas Gleixner <tglx@linutronix.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>, Kalle Valo
	<kvalo@codeaurora.org>, Richard Henderson <rth@twiddle.net>, Parisc List
	<linux-parisc@vger.kernel.org>, Vineet Gupta <vgupta@synopsys.com>,
	linux-wireless <linux-wireless@vger.kernel.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, Luis Chamberlain <mcgrof@kernel.org>, "Daniel
 Vetter" <daniel@ffwll.ch>, Jon Mason <jdmason@kudzu.us>,
	"linux-ntb@googlegroups.com" <linux-ntb@googlegroups.com>, Andrew Morton
	<akpm@linux-foundation.org>, Linux Media Mailing List
	<linux-media@vger.kernel.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
	"David S. Miller" <davem@davemloft.net>
Subject: RE: [RFT 00/13] iomap: Constify ioreadX() iomem argument
Thread-Topic: [RFT 00/13] iomap: Constify ioreadX() iomem argument
Thread-Index: AQHVxgB0oW/g95TA9k2fcgn+xgLf36fhB6DA
Date: Wed, 8 Jan 2020 17:39:42 +0000
Message-ID: <334434313e1642768995acc03a51214f@AcuMS.aculab.com>
References: <1578415992-24054-1-git-send-email-krzk@kernel.org>
 <CAMuHMdW4ek0OYQDrrbcpZjNUTTP04nSbwkmiZvBmKcU=PQM9qA@mail.gmail.com>
 <CAMuHMdUBmYtJKtSYzS_5u67hVZOqcKSgFY1rDGme6gLNRBJ_gA@mail.gmail.com>
 <CAJKOXPfq9vS4kSyx1jOPHBvi9_HjviRv0LU2A8ZwdmqgUuebHQ@mail.gmail.com>
 <2355489c-a207-1927-54cf-85c04b62f18f@c-s.fr>
 <CAMuHMdV=-m-eN4rOa=XQhk2oBDZZwgXXMU6RMVQRVsc6ALyeoA@mail.gmail.com>
 <00a43e5c-0708-d49a-9cc4-eb2ce8b4cf99@c-s.fr>
In-Reply-To: <00a43e5c-0708-d49a-9cc4-eb2ce8b4cf99@c-s.fr>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-MC-Unique: XMFewsroMBqNVmL4iq_bTQ-1
X-Mimecast-Spam-Score: 0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com
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

From: Christophe Leroy
> Sent: 08 January 2020 08:49
...
> And as pointed by Arnd, the volatile is really only necessary for the
> dereference itself, should the arch use dereferencing.

I've had trouble with some versions of gcc and reading of 'volatile unsigned char *'.
It tended to follow the memory read with an extra mask with 0xff.
(I suspect that internally the value landed into a temporary 'int' variable.)

I got better code using memory barriers.
So putting an asm barrier for the exact location of the memory read
either side of the read should have the desired effect without adding
extra instructions.
(You might think 'volatile' would mean that - but it doesn't.)

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/334434313e1642768995acc03a51214f%40AcuMS.aculab.com.

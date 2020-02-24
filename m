Return-Path: <linux-ntb+bncBC27HSOJ44LBB2VNZ7ZAKGQEWUEDFAY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6C316A7C9
	for <lists+linux-ntb@lfdr.de>; Mon, 24 Feb 2020 15:00:11 +0100 (CET)
Received: by mail-lj1-x237.google.com with SMTP id w11sf1605349ljj.20
        for <lists+linux-ntb@lfdr.de>; Mon, 24 Feb 2020 06:00:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582552811; cv=pass;
        d=google.com; s=arc-20160816;
        b=rPFgU2rwKuwn+k8x/yeFU+L9CbWAJqFINC/fW145Gw/oDFoxLZ8PVzK4pXsvDNsE31
         xMPxa19GvpmNg0H4rO/ghikJque+BGKEq7OI80xtw9UKiViXRL0zdHuu+Vkjc8YQnty2
         0Aw2t3KOpB1i+HqfrPziRrf951lFdsiHsGEG7MtnNk/NwAaFBOuA2Lp2c65PALBPwdpS
         l10bhipJ6rOp6QZqJ4Om3zTNTytAJO3N/Auv0S/gzkKaGjRkJQQ19rbV5pkMdGql2rTj
         a1YQQhG6/7ADqeu9NApz/l+LH2wH3i+Nf5rXEAd1lfmkdmb+fJVleRpgbuhSPTqdHmra
         YOJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:content-language:accept-language:in-reply-to
         :references:message-id:date:thread-index:thread-topic:subject:cc:to
         :from:sender:dkim-signature;
        bh=C6flvFTlHtcNEMpkDMk6WNBbXEWEvFXKhIVk7avJaAg=;
        b=aERlftwshpgK1gs4aCfBGoiEggiDwhiWluG1yUHqcnR1KKMyrnS5qe6rJW5KLs0rs0
         pZtsrvVrTFvc08hTn+su8CYkKnDYi91d/EYqrdjDaDTIMfY9mAU2L+E9iIlXJsrtHXca
         9nwi4ZJoJMS4TOxBYP7EWFHQXY4S6YiwKD/kfY0bVSFL73PEmn8cv1nlcpSp9Xb+kI12
         f5rrHU9p0DkF3ctj0IKMX2U9EXME1En5WTobqa7jmNPJc5abjaDuDqgOjgtKA/G0lV1t
         qbiz3td65odbwu9l4xaFqcSJ+qOZOe4z9hnhpzjsWx3BMxuW6Xi3dxz/nf2gkMXQIrkg
         V/6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C6flvFTlHtcNEMpkDMk6WNBbXEWEvFXKhIVk7avJaAg=;
        b=FoKSdri/A7a0s0rC+Q4nG7XnqgrNqYRRBHLd0RmCRn+INTrf+TbiqQkyxhXXA11QIT
         CG6Cz8wVQwJTr6ArgmP1klmyxAbl1H9Eu6zPB9UOVh+lAc9/3c2B+ZTWNh2VG/BS0bdi
         w2IAYQVgMvcoI2rNbaKadZPr+xSCI++gyeKuceSDVVqJ1y62MVQjnT9cqAlIU4nBIvKR
         JWnf0rR+Uqlx+OLH+VCe02ah1uyjUGfy+X68mDFlvZAnZKynGJb9sfuPaELc/ND8U4Vp
         i0YLM0q8HSpZnga8eR2sxtjUVlXZ+xfxJdoSmaA/+V3UmidActtHzIziEAVcikmEmEgD
         ifUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C6flvFTlHtcNEMpkDMk6WNBbXEWEvFXKhIVk7avJaAg=;
        b=nTVuLGnyDxWWbP4ph8gUmhhAer7qfs/irKSE5iHl3zddWCcxaPumstmtkkM9x1YalU
         UZ691LlCgL396Mfb3YRvBXHWbbYY7WrG1YmNdyn+yeCGhISZOFjOAdgVtzVYd8o/LK2v
         /eFZD8PFtn5WGgGnnNXElSiFlD1CONCphwiK8ymq/zfvvsHJSLodNTiEh2W2LLgWoce4
         oX6Mwyx+1le3x9sk/0gKRxxVUfG06JrWYObmpCqTGBuLhW5RSkk+BXIZ/FBKvR9CarBx
         HXM01nK9EO3I/GzdzJbYEyNB9XPSFObPiiPF6mANmRo02BExEdp2i678gVUPA8HmOiDW
         Uokw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXVwtuyNxmycjsI6+rT894me6vWXFhyMCNoktoP1llwFQzLemu7
	se2lUBPwnrDAt76LcBRJaUs=
X-Google-Smtp-Source: APXvYqzsDvq0HbHqTFZMe4z5HZvEL3hl7DLMUxTsvgRG+0NWvJZh972t1a/Cgdr9Kkj0ihqmZj77Xg==
X-Received: by 2002:ac2:5106:: with SMTP id q6mr11665014lfb.54.1582552810559;
        Mon, 24 Feb 2020 06:00:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:5096:: with SMTP id f22ls1035687lfm.2.gmail; Mon, 24 Feb
 2020 06:00:10 -0800 (PST)
X-Received: by 2002:ac2:4214:: with SMTP id y20mr27334869lfh.212.1582552809973;
        Mon, 24 Feb 2020 06:00:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582552809; cv=none;
        d=google.com; s=arc-20160816;
        b=OfOKv63QQ1u4DC+BSqeLvFYUTa7ncmtTQIE411uNkemWWi4e/wenooktzceWEVWouG
         rjUcUssPMBu4vwLUJ8FG4cEt3N78ydcJHsw6eemOf+Wdyo0KuiE6gPdiaw6UWO84HK7z
         PojRp2VwQa17aR6QAnqdfcdMCwOOJE2XQQOZvk5qgrxJzqJioPpvpbP4/CFOKPi59BzU
         DdunTeg76o+FhDps+bvOinCXJzXyLTliBtCcgE56ozxCkaNqfV3ARtacdMlhweD/sYJw
         8h902U3ITit+Y1aHh8Sfg3XLIzn15m/Ep/GEkuqhkr4YuhtEvBDznhyviv5sCXU/DYj9
         uSbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=kj6a6L6kUs2oIMdHyCrt1fz4TGr9cAcC6+6oKSfbdVk=;
        b=ZID4vsdqn94mSBnRZiXkTvLIB0Kmt7tvO6cFcCPhh4uDeAkG8Q3OnhGCy5aIg+hr8c
         r+zUNSxRLTN/zSMnCYhpzjE1jpFTXjullYwiECuPwTbR+pTz6LOUxGC7R+iJptNaOiTQ
         Om+O5eXWu1esRyVNMPIbM72vUNEmitmUxEz+nobfEi0gnsK5CPRKFi6e2cyv7RAyKdk2
         0PJyHfbqePR0zsFAFqVT/wzr8I42sfIi9szFZaZj+OqJOttwttkIdqfGqBHFuDe16+Jx
         Z9MmyESVmxqvH1hb64L+hOAzHIdbrqi+FNn4LMz161nERmdd6xJHkrH18bK/3OHY6fhW
         9N5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id d8si976727lji.0.2020.02.24.06.00.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 24 Feb 2020 06:00:09 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-190-X-jO3NgOPBOoEBZfQglW1g-1; Mon, 24 Feb 2020 14:00:07 +0000
X-MC-Unique: X-jO3NgOPBOoEBZfQglW1g-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Mon, 24 Feb 2020 14:00:06 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Mon, 24 Feb 2020 14:00:06 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Geert Uytterhoeven' <geert@linux-m68k.org>, Krzysztof Kozlowski
	<krzk@kernel.org>
CC: Rich Felker <dalias@libc.org>, Jiri Slaby <jirislaby@gmail.com>, "Geert
 Uytterhoeven" <geert+renesas@glider.be>, "Michael S. Tsirkin"
	<mst@redhat.com>, David Airlie <airlied@linux.ie>, Jason Wang
	<jasowang@redhat.com>, DRI Development <dri-devel@lists.freedesktop.org>,
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
Subject: RE: [RESEND PATCH v2 9/9] ath5k: Constify ioreadX() iomem argument
 (as in generic implementation)
Thread-Topic: [RESEND PATCH v2 9/9] ath5k: Constify ioreadX() iomem argument
 (as in generic implementation)
Thread-Index: AQHV6xHi6Is+qzzWUUeYTT3fGXH4hqgqXtwg
Date: Mon, 24 Feb 2020 14:00:06 +0000
Message-ID: <ef12bfd658504d928996681f8a9ee96f@AcuMS.aculab.com>
References: <20200219175007.13627-1-krzk@kernel.org>
 <20200219175007.13627-10-krzk@kernel.org>
 <518a9023-f802-17b3-fca5-582400bc34ae@gmail.com> <20200224124744.GA1949@pi3>
 <CAMuHMdVev0PLF=8bD3nHrhcU9UgM-DAgdQpXi09PgvAxdbt24A@mail.gmail.com>
In-Reply-To: <CAMuHMdVev0PLF=8bD3nHrhcU9UgM-DAgdQpXi09PgvAxdbt24A@mail.gmail.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
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

From: Geert Uytterhoeven
> Sent: 24 February 2020 12:54
> To: Krzysztof Kozlowski <krzk@kernel.org>
...
> > > > diff --git a/drivers/net/wireless/ath/ath5k/ahb.c b/drivers/net/wir=
eless/ath/ath5k/ahb.c
> > > > index 2c9cec8b53d9..8bd01df369fb 100644
> > > > --- a/drivers/net/wireless/ath/ath5k/ahb.c
> > > > +++ b/drivers/net/wireless/ath/ath5k/ahb.c
> > > > @@ -138,18 +138,18 @@ static int ath_ahb_probe(struct platform_devi=
ce *pdev)
> > > >
> > > >     if (bcfg->devid >=3D AR5K_SREV_AR2315_R6) {
> > > >             /* Enable WMAC AHB arbitration */
> > > > -           reg =3D ioread32((void __iomem *) AR5K_AR2315_AHB_ARB_C=
TL);
> > > > +           reg =3D ioread32((const void __iomem *) AR5K_AR2315_AHB=
_ARB_CTL);
> > >
> > > While I understand why the parameter of ioread32 should be const, I
> > > don't see a reason for these casts on the users' side. What does it
> > > bring except longer code to read?
> >
> > Because the argument is an int:
> >
> > drivers/net/wireless/ath/ath5k/ahb.c: In function =E2=80=98ath_ahb_prob=
e=E2=80=99:
> > drivers/net/wireless/ath/ath5k/ahb.c:141:18: warning: passing argument =
1 of =E2=80=98ioread32=E2=80=99 makes pointer
> from integer without a cast [-Wint-conversion]
> >    reg =3D ioread32(AR5K_AR2315_AHB_ARB_CTL);
>=20
> That's an argument for keeping the cast to "void __iomem *", not for
> adding the "const", right?

Or more likely change the definitions to use a struct for the layout.
That also stops the constants being used in the wrong place.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1=
PT, UK
Registration No: 1397386 (Wales)

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/ef12bfd658504d928996681f8a9ee96f%40AcuMS.aculab.com.

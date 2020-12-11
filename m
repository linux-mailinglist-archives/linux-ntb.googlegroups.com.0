Return-Path: <linux-ntb+bncBC27HSOJ44LBBZG2Z77AKGQEXJF2RFQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5992D8184
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 23:06:28 +0100 (CET)
Received: by mail-wm1-x339.google.com with SMTP id d16sf1532021wmd.1
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 14:06:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607724388; cv=pass;
        d=google.com; s=arc-20160816;
        b=cWLdF1rqbN+nNMlX64CEE8aBuzHdie06/g7d0T608gwsdDA8Srp4PPfCoghtCn2SwG
         0EQesrpTIGc1gNJo6z+TS6npFC0CzVdVdN+/LfytYFgkY9n8FXqpVgtb9eLRjXSg5Tal
         qq588P0wezzgJrkJziPlO18uhF3ZDm0+TE/tuV6ByicxGZYVYRzdIFYnhwf5RjuSGz1q
         1fslR0BzURc96ijhkyQGBhckzxncBqKhlnuR3zEuJiPF3fi6zjGn7rWPfHKHGZGxq43z
         59UhoaMFIToqlnWTjvVM8XqkLuiq1UkLlW62roDGH0UFcbCGTQE3S2+3dmIne8aRBvAv
         jVSA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=VRvkPVvyokUgJaiWCYjRkPVvpcilwiT8vuY2rLetWWQ=;
        b=sVvS+gHSQC79eJvU/6ilxpgm9Ut6kK6UD2aJ60rqh7fmCT+bXMst00PjJeC7DkkYRP
         UuBZCv8e1G+ICDjQscdhbGXfurMXjlwloQZBdfVaSu/ViofG3NNzKBFenDkUyA23+Bjj
         NqWnr/Q2RO+5XzB5mdJ+oI9edNKs3QYNIGop0fXA58JKxPGNMTwZlGjhur48ltsbF2Jt
         Peu37Kq/KOPEe+VsXP3J9GMJ/T9GQ9hCnIab9x1mT6ZOGwmorA4aE0e3mKJtZ7CBBVFk
         yLBMEwHjaIujAGtqjzbGhkXuSMwU8Uyv/Ue+tsrUiW2cc7hmkMZ3A4l4KH4uyiV5n3JG
         bADg==
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
        bh=VRvkPVvyokUgJaiWCYjRkPVvpcilwiT8vuY2rLetWWQ=;
        b=Sa+3oFmv0/Yyrl1YAtZ2I4q+jScSA6YClqYleVjzFaZTzaLteGfXGicRA7gvH+V74l
         UdT11e+H20dLZVK/Mpqih+6R/2eqTVAtb0d9BDzZvoY7e5pdyr2aiSDmkpjAWjYCL2y4
         3tu7MSa/21gZeZsavHuZDc5IjEAdF34ZPRW2yty4IbkP7natxBsvh4JlxBtch6GUcjyT
         OFqXFKjFfyUku01WafD9aqCCZ5Hh1Thk9bv7BFj6AefUqdQfjmVu6sQXYtPU6Uix69EV
         HUtgqsqITVz4M0VieSD8GVMYjGvlTAh7dy6+GXvKmaTD/fl/j0aF40q9SMCyi++EQMxz
         P0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VRvkPVvyokUgJaiWCYjRkPVvpcilwiT8vuY2rLetWWQ=;
        b=S6nTfH+Z3AKvTtGGCPMa5HjJC0/XKmSYI5t2AmuCwqchGsYi+dhStp4X+elAQvz6cO
         BPdAuzDsD7SSVHvJXLlGTZLKQ4eIYbpw01A+TJWlrELLKUOJUl+Y3zUSkX/6zZbuwy3m
         KJr49jZrf5eVOCs4/X+VerMtQD/pDjS8FHRgc4iEpAlWo1Bk3U0myl2LRYZHY3Kw2SW+
         HjJYsK/eQ+Vh0f/iyppNr6q9glI7zZ2xDm/lEiKAtQHQZ9+aWFcldqJddyCDSzOevBC+
         5CPEEszVpDC2q6McOXLSk2+OnbIX0c6HNfnNrVh4WbkH3JYmZGGFupSw8WLc5jKUE4Or
         MQlw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5304NzGiqP6R/SQ+1nBENg/gvwk6F5F50WM5UiBhqLif7FBKcGFw
	YiPHeKM6fujAkLgW0w4O1z4=
X-Google-Smtp-Source: ABdhPJxyc9bLTsncOcdEiSYChCf52383wv7v19HDz8Qeu4NegyDwF4o3/ih1xInzPFz+vrPH+bUCGA==
X-Received: by 2002:a1c:4c14:: with SMTP id z20mr15857031wmf.149.1607724388444;
        Fri, 11 Dec 2020 14:06:28 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls5008363wrw.0.gmail; Fri, 11 Dec
 2020 14:06:27 -0800 (PST)
X-Received: by 2002:a5d:4b4c:: with SMTP id w12mr15973735wrs.402.1607724387606;
        Fri, 11 Dec 2020 14:06:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607724387; cv=none;
        d=google.com; s=arc-20160816;
        b=p0Ijo/x9aEBTRZ2xHq9Mrrh5RBedTajp9XGOKhFtqH+jw3xxYkjRSkg6/0AeJKJfLy
         Uki9e4omc+TtxpcW7DQRxP0iCjrMEJX+QQjJmsHbzZZf0NKyMUeZvFieM3Xw0vZoEZ7b
         wSl7xBZIHvU812BJa6MCJCuSOlouRRP+kbCnnto+5FPm9rrDRLsoBE51sDYmaayhTtsL
         EfdgnlLnYcf77fn5Bxbal/epY1WxNd0q0tPljupACX7XmRoqReIGBsEqUXK9Rs3XYtxj
         ILNYxGWqNNJFJhIn8Lp3up08/JTSQOCj9bkdmA6j7LJSjXwzd6jtsXikeD0eqFm/MWtf
         gMgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=yVvWGEU6SGap3YGOvD5wxxyqw2IkD9YojmK/pJPFg9o=;
        b=mfIUpiiZKIWpWZcRa30ElbtgkpXnbFbI+mMGbU874Hjzh7Mi7MJrbG8KU3J01kml3y
         fVIrrIEaNzcwKCnGMEVUN4Axo9TOzJCx9vxJE5kEOFHhmBg39/9rZUX8CRIZYxRYqPsA
         2YMEQrkJ4gggfgg4v8Kbn13axRzIcUHHKF1UjLjHWqtRaUzJ3l6tZtJgf0eU78CWPaUy
         2YAu7Um2ZxVSxlltCKCN8F5S2QvomGxUy8xJ+0hOIbLSTnH19SFHOQ2DW69tzHKYdGuJ
         t+u20Qzd4Mh7GK0GHe3CtHr+eLCFDrrjzf3d33U0LNZ4m7U/tPOLt80e4AusIk271H7p
         e1JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.86.151])
        by gmr-mx.google.com with ESMTPS id o135si309293wme.3.2020.12.11.14.06.27
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 14:06:27 -0800 (PST)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.86.151 as permitted sender) client-ip=185.58.86.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-25-lRPy8p40M8CPiAlacIukIQ-1; Fri, 11 Dec 2020 22:06:25 +0000
X-MC-Unique: lRPy8p40M8CPiAlacIukIQ-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Fri, 11 Dec 2020 22:06:24 +0000
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Fri, 11 Dec 2020 22:06:24 +0000
From: David Laight <David.Laight@ACULAB.COM>
To: 'Thomas Gleixner' <tglx@linutronix.de>, Tvrtko Ursulin
	<tvrtko.ursulin@linux.intel.com>, LKML <linux-kernel@vger.kernel.org>
CC: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>,
	"Jani Nikula" <jani.nikula@linux.intel.com>, Joonas Lahtinen
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
Thread-Index: AQHWz72qwjNpP0n0UkWT70W8RrLS8qnx7xrwgAB1jgCAAA6ksA==
Date: Fri, 11 Dec 2020 22:06:24 +0000
Message-ID: <6dd2eb7de7ad4a5893f057b90662718f@AcuMS.aculab.com>
References: <20201210192536.118432146@linutronix.de>
 <20201210194043.957046529@linutronix.de>
 <ad05af1a-5463-2a80-0887-7629721d6863@linux.intel.com>
 <87y2i4h54i.fsf@nanos.tec.linutronix.de>
 <d6cbfa118490459bb0671394f00323fc@AcuMS.aculab.com>
 <87eejwgib7.fsf@nanos.tec.linutronix.de>
In-Reply-To: <87eejwgib7.fsf@nanos.tec.linutronix.de>
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
> Sent: 11 December 2020 21:11
> 
> On Fri, Dec 11 2020 at 14:19, David Laight wrote:
> > From: Thomas Gleixner
> >> You can't catch that. If this really becomes an issue you need a
> >> sequence counter around it.
> >
> > Or just two copies of the high word.
> > Provided the accesses are sequenced:
> > writer:
> > 	load high:low
> > 	add small_value,high:low
> > 	store high
> > 	store low
> > 	store high_copy
> > reader:
> > 	load high_copy
> > 	load low
> > 	load high
> > 	if (high != high_copy)
> > 		low = 0;
> 
> And low = 0 is solving what? You need to loop back and retry until it's
> consistent and then it's nothing else than an open coded sequence count.

If it is a counter or timestamp then the high:0 value happened
some time between when you started trying to read the value and
when you finished trying to read it.

As such it is a perfectly reasonable return value.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/6dd2eb7de7ad4a5893f057b90662718f%40AcuMS.aculab.com.

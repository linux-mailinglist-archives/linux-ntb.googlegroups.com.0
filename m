Return-Path: <linux-ntb+bncBCX3TTWUQMPRBJM7TKDQMGQEBKAFJHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 12B4D3BF53D
	for <lists+linux-ntb@lfdr.de>; Thu,  8 Jul 2021 07:39:50 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id h15-20020adffd4f0000b0290137e68ed637sf1505615wrs.22
        for <lists+linux-ntb@lfdr.de>; Wed, 07 Jul 2021 22:39:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625722789; cv=pass;
        d=google.com; s=arc-20160816;
        b=xcaq4kqGII7Pudve84X8q7NVvUWc/NPvbodNBgpZtNAb50qx0+4txgO+8wftznLU3f
         jr6pKv84jbGs+/BUVzjPw2bHI50nYaHpaeLhW9RYBv5nbjYGStvaiz6EUZgPf0cmT5SB
         7IkkksC16tmM/wbIjzBB/GfNSEPvGOd4JwlFM13c/noowTbKeH8emeQP8d/BbG9RRYEy
         ZR70Zo9wPHg7ZyjwScH3g0iXNBYGn/mqQstS7Pyi8D7TRT8IMz/rCky+DxYDoaG1ePU9
         3xnt4hO3tHSlvRIlPfklpX8AUCwnZ6Z6CNpV90YUuCNUrdHrku+CRPh4z0HLuZdtb4el
         A9OQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=sJnvGJ82RnMeIo3RrYCNht873/nM7zeMDLAkZufJvKk=;
        b=0K/KCyZYqj/04u90zin9ZOFQ5QWY4yW5FfbEUVG4a07eNA7PJ6uVXUOFPPuxhtsFUF
         3zNATbVRg8UxaVRbTD/6X6/DjH9kSvdBuqY3X1OwsqxVoMiJtWmOc8MZDFv+3W/QZcvb
         ItM9uA5ffqwa20/KgfjQpyIFLvnMu+y9n9wk4vMxyBmc3nws2irTdvzHtoX5SH29lbji
         RHsQHLkuIDh/dbPL2g3ZVLG8xKUAQjakya1R3a3GPyoLCWkOd9G6q8KCYd06hDqcYLuJ
         SK5iKG2u9er4kZkcPRiqSe+uB1QN4Ip0yS+J28pKGXK+z6zBG/9H4Fh+e9rG9LM5AzY9
         U4qw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=sJnvGJ82RnMeIo3RrYCNht873/nM7zeMDLAkZufJvKk=;
        b=LsZoY3FqzJoJfyTPLAnb9GvO3c6GGNpy7LPf4Or8G2JRhkr4gZLP6kdqrjaOPpcInS
         4RLaMhcDEe1ednlH1Kt53lr7M2UpabRl5ETxotxNjcLZMgamxuPVeNwlNmSNWwC9WoHy
         Bx1GBvShdXgZ+RY0a05Z+GBqwri8x3S6528sFnezYUqXTtbYzU22Rov0nSr21quT11pM
         RJ4HRM8ThCqodlsZ8sn7L8HuohK1QKP8T6pRR/LpWCBQMGhW/Y0cV/Id80aj6QVy9SBN
         pOI/n76MyXrtZ96Y28EMpZ9544meZd/cue2/LA24km8+VOHYwFU9qaqHyYOGC+1KRwWF
         QPQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sJnvGJ82RnMeIo3RrYCNht873/nM7zeMDLAkZufJvKk=;
        b=l3E0qjkArvyNCLYEehbHdUk+564X+G3BYW4ImNGjluogswp+6Uy9yjUVEN6MiFovd3
         oSgI9DtoWYpY1DzgxxOHgMpheZ6JMF6uwvSY5ZOBcTEaIfDQoS86/Pj+nYyKHFXXwNxF
         yipEdJ2Es10x8Dst7NnZdVWG6uB3508J2qqrMZfvwFrT6g+MVigj63CCnFKIXYVPmM6G
         Y3bMNOCvEQOylKXoqIDnwVsflqQmZnG9F8dlpHRc7w+CtMkXQbcVig5Rxnz5dVcGCg/b
         6dFWZO9qshy3SvVxzzIsGWsMQMxJN9CVb/yswNsNgdOyQRw1dcpFZbjBi53OVw/EDWor
         JkUQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532veY7/GaAd+1SIhuKQ5CJwSAzTAdjSEFMRkwEkpPcjv6xrSa7z
	ClOZ+lU/C8zVk7lUbPbDiNg=
X-Google-Smtp-Source: ABdhPJw03Z6IHmMbuiqCPndGmONyjXZEdG9KUvUr6D0j+2fOBUBUi1NsMmNwjBTSG5GyO5rjXxpvZA==
X-Received: by 2002:a5d:5388:: with SMTP id d8mr31518533wrv.423.1625722789767;
        Wed, 07 Jul 2021 22:39:49 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:600c:1c90:: with SMTP id k16ls4735800wms.2.canary-gmail;
 Wed, 07 Jul 2021 22:39:48 -0700 (PDT)
X-Received: by 2002:a1c:f016:: with SMTP id a22mr31766924wmb.65.1625722788821;
        Wed, 07 Jul 2021 22:39:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625722788; cv=none;
        d=google.com; s=arc-20160816;
        b=pO85IQQTav9d1HosAqtgxUqFZt6we3ASwrjSkEDN0SsQOr8z2q+nS+SIiTPVz3eLQV
         ym0/+fzPHzGos4SVne0tVdSu4FPLzmzmGUNVMQrNBVtySw1lF3/OPfa9ANfFxmpFy9pK
         a4CNcT7h57rgWySg9MySmMHVy9YrTUw26FJCItF7ioaTChhleR6wepRuH+e5nNG5Un4Q
         lVxPsM2dx/0CBI07eUXyZrmIFjuG45uFP69aFdxEgZID0wlhiJOv9SsOY/prPoIPCIOW
         1lYEOq2OSG42xlkD8T2sE/1dtsch+xK3xM39LBzRXYprZI11Poi7ouXlbdEsjsQJNR9d
         HHBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=GMdge2+MaizHOl4Q0cdQbkZDalYLZdur44CZcWzUnHQ=;
        b=qjLs2EkSVE0clyuodw5Ulic97I93DUY89ghHsInNdQSolYO98o/A7tI81ikYatWRVB
         FZMvARxbbvzoF6+nuBlQkv+PRgXvKXKzzRljFGVqv2bZiNTI+AGjSb58e07v1OFbHZdv
         a7aqP5vQ9mqfk5tsaxsStCSHbX2K83B3i6OeReAKk7Hjt8ShnrmGyXsPFA96T6MxJog2
         5NInvm8AiqMIqdtP3awEUXSWfmO9Sa3KETDsbwX1CUMpNZq+vS/CcHHCGzs4RJ778Q4f
         e+v7sMwgCQYLq+Jtr1DSm8A7ztSUzkS88lWgc4mGjGAJ33BcPdFNGu9iJ2bTaKFmPZG2
         oHPA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id b6si43713wro.3.2021.07.07.22.39.48
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jul 2021 22:39:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m1MkT-0006EF-FH; Thu, 08 Jul 2021 07:38:57 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m1Mk9-00030G-2j; Thu, 08 Jul 2021 07:38:37 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m1Mk8-0007Hx-U3; Thu, 08 Jul 2021 07:38:36 +0200
Date: Thu, 8 Jul 2021 07:38:13 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Sven Van Asbroeck <thesven73@gmail.com>
Cc: nvdimm@lists.linux.dev, Alexey Kardashevskiy <aik@ozlabs.ru>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Samuel Iglesias Gonsalvez <siglesias@igalia.com>,
	Jens Taprogge <jens.taprogge@taprogge.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Jaroslav Kysela <perex@perex.cz>, linux-fpga@vger.kernel.org,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	Paul Mackerras <paulus@samba.org>,
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Mike Christie <michael.christie@oracle.com>,
	Wei Liu <wei.liu@kernel.org>,
	Maxim Levitsky <maximlevitsky@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Michael Ellerman <mpe@ellerman.id.au>, linux-acpi@vger.kernel.org,
	linux-pci@vger.kernel.org, xen-devel@lists.xenproject.org,
	Tomas Winkler <tomas.winkler@intel.com>,
	Julien Grall <jgrall@amazon.com>, Ohad Ben-Cohen <ohad@wizery.com>,
	Alex Williamson <alex.williamson@redhat.com>,
	Alex Elder <elder@kernel.org>, linux-parisc@vger.kernel.org,
	Geoff Levand <geoff@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-spi <linux-spi@vger.kernel.org>,
	Thorsten Scherer <t.scherer@eckelmann.de>,
	Sascha Hauer <kernel@pengutronix.de>, Jon Mason <jdmason@kudzu.us>,
	linux-ntb@googlegroups.com, Wu Hao <hao.wu@intel.com>,
	David Woodhouse <dwmw@amazon.co.uk>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Manohar Vanga <manohar.vanga@gmail.com>,
	linux-wireless@vger.kernel.org,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	virtualization@lists.linux-foundation.org,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	target-devel@vger.kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-i2c <linux-i2c@vger.kernel.org>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Ira Weiny <ira.weiny@intel.com>, Helge Deller <deller@gmx.de>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
	industrypack-devel@lists.sourceforge.net,
	linux-mips@vger.kernel.org, Len Brown <lenb@kernel.org>,
	alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
	linux-media <linux-media@vger.kernel.org>,
	Maxime Ripard <mripard@kernel.org>, Johan Hovold <johan@kernel.org>,
	greybus-dev@lists.linaro.org, Bjorn Helgaas <bhelgaas@google.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
	Johannes Thumshirn <morbidrsa@gmail.com>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Stephen Boyd <sboyd@kernel.org>, Cornelia Huck <cohuck@redhat.com>,
	Wolfram Sang <wsa@kernel.org>, Joey Pabalan <jpabalanb@gmail.com>,
	Yehezkel Bernat <YehezkelShB@gmail.com>,
	Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>,
	Bodo Stroesser <bostroesser@gmail.com>,
	Alison Schofield <alison.schofield@intel.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Tom Rix <trix@redhat.com>, Jason Wang <jasowang@redhat.com>,
	SeongJae Park <sjpark@amazon.de>, linux-hyperv@vger.kernel.org,
	platform-driver-x86@vger.kernel.org, Frank Li <lznuaa@gmail.com>,
	netdev <netdev@vger.kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Mark Gross <mgross@linux.intel.com>, linux-staging@lists.linux.dev,
	Dexuan Cui <decui@microsoft.com>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Chen-Yu Tsai <wens@csie.org>, linux-input@vger.kernel.org,
	Matt Porter <mporter@kernel.crashing.org>,
	Allen Hubbe <allenbh@gmail.com>, Alex Dubov <oakad@yahoo.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Jiri Kosina <jikos@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
	Ben Widawsky <ben.widawsky@intel.com>,
	Moritz Fischer <mdf@kernel.org>, linux-cxl@vger.kernel.org,
	Michael Buesch <m@bues.ch>, Dan Williams <dan.j.williams@intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Martyn Welch <martyn@welchs.me.uk>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	linux-mmc@vger.kernel.org, linux-sunxi@lists.linux.dev,
	Stefan Richter <stefanr@s5r6.in-berlin.de>,
	Sudeep Holla <sudeep.holla@arm.com>,
	"David S. Miller" <davem@davemloft.net>, kvm@vger.kernel.org,
	"Michael S. Tsirkin" <mst@redhat.com>,
	linux-remoteproc@vger.kernel.org,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Kirti Wankhede <kwankhede@nvidia.com>,
	Andreas Noever <andreas.noever@gmail.com>,
	linux-i3c@lists.infradead.org,
	linux1394-devel@lists.sourceforge.net,
	Lee Jones <lee.jones@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
	linux-scsi@vger.kernel.org, Vishal Verma <vishal.l.verma@intel.com>,
	Russell King <linux@armlinux.org.uk>,
	Andy Gross <agross@kernel.org>, linux-serial@vger.kernel.org,
	Jakub Kicinski <kuba@kernel.org>,
	Michael Jamet <michael.jamet@intel.com>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	Hans de Goede <hdegoede@redhat.com>, Hannes Reinecke <hare@suse.de>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Juergen Gross <jgross@suse.com>, linuxppc-dev@lists.ozlabs.org,
	Takashi Iwai <tiwai@suse.com>,
	Alexandre Bounine <alex.bou9@gmail.com>,
	Vinod Koul <vkoul@kernel.org>, Mark Brown <broonie@kernel.org>,
	Marc Zyngier <maz@kernel.org>, dmaengine@vger.kernel.org,
	Johannes Berg <johannes@sipsolutions.net>,
	Maximilian Luz <luzmaximilian@gmail.com>
Subject: Re: [PATCH v2 0/4] bus: Make remove callback return void
Message-ID: <20210708053813.pem2ufjuwkacptv3@pengutronix.de>
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <CAGngYiWm4u27o-yy5L5tokMB5G1RUR5uYmKf2oXah2P3J=hK2A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="bpxpm3lcta7ifhrg"
Content-Disposition: inline
In-Reply-To: <CAGngYiWm4u27o-yy5L5tokMB5G1RUR5uYmKf2oXah2P3J=hK2A@mail.gmail.com>
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-ntb@googlegroups.com
X-Original-Sender: u.kleine-koenig@pengutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33
 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
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


--bpxpm3lcta7ifhrg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 07, 2021 at 10:08:53PM -0400, Sven Van Asbroeck wrote:
> On Tue, Jul 6, 2021 at 11:50 AM Uwe Kleine-K=C3=B6nig
> <u.kleine-koenig@pengutronix.de> wrote:
> >
> >  drivers/staging/fieldbus/anybuss/host.c   | 4 +---
>=20
> Awesome !
>=20
> Acked-by: Sven Van Asbroeck <TheSven73@gmail.com>

I note that as an Ack for patch 4 only, as the others don't touch this
file.

Best regards
Uwe

--=20
Pengutronix e.K.                           | Uwe Kleine-K=C3=B6nig         =
   |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20210708053813.pem2ufjuwkacptv3%40pengutronix.de.

--bpxpm3lcta7ifhrg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmDmjzsACgkQwfwUeK3K
7Alp5wf+LJkpxzkaW2ldAtFhGuqT1XfOqbe9d5vNgqvqupJS1Q+aeie0kH0038ba
uN3KDJ2V2DAmMf6OIKUFucVxBpCC92myb63zIHRJs5kGzTu41BRp3yt/I650Xzdr
+MB/xdEr/XFy2f9gDr/QdCojwh44TXqKzZPG6a7r6uQu8/AAUOdVEcfK6o01hN8W
szxNTR1qtdQMHj9Ji8fo0wADdSPEez1kGe+HEOJVWBZnhdyCqS0jh774r7GsLjqY
l8S7HhKPoY6/CCbEHKfYA15GUvexTA14O2tn6vuQPtiTTdDoh/Nl0wj0z5/WbWjX
HF/tKnNb3l18s65PbEmxEKa2XonjFQ==
=+Y+1
-----END PGP SIGNATURE-----

--bpxpm3lcta7ifhrg--

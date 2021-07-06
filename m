Return-Path: <linux-ntb+bncBDN3FGENWMIRB6W7SCDQMGQEXTIKKIA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1573BC9CE
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 12:27:07 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id r5-20020a17090aad05b02901727bad5ccasf1344784pjq.3
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 03:27:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625567226; cv=pass;
        d=google.com; s=arc-20160816;
        b=lWbplhOCr1YX7ghlV49WAMlAdX+5Kq0/94Dz8PDZfaWy52EcWy/iY60RYVO63UbWfl
         RKfcBbQBP8d9lGTOTcDOjHZ7FCgUf7yWD92H7XghG/GrkxU2xfeE93BKL1enkFkVwTlc
         IQVgqpU15gm9LDUZZMpMVZjtLBe/O09+rGfzQhXLnNwyGqpAsVRHiLY+JN+uLy1BT0Fm
         VHzSvWgmB6U2r5EEseL52nEKzSQsPpArleNgQs+gwQL6q6qA0M65wMqD5Xgs1Gghzor+
         /jl+Y0dqT1qyDVwYWvOvjOWmGzaY3jrwN4I9HeC6mxg+iVQbW7MSYMqX7PDqRoreIBeT
         WH5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:sender:dkim-signature;
        bh=RNNIBmF3nrHVQxf8dUbI5P4AtJQfmW6cESgoZDaHaXg=;
        b=ax9D/lnaQ7A7WOtDI0wjj8OiJxuK8fOgplvyR5WuNubY3QOMN4ML9+wqOH/W0fvEkV
         Kg2DIw4XviGSTwjOeuCG270pKLt0bEbTFBD9w2uf5+/9Rf2YGg2e3k8Nwjb6cOt6IOXj
         nt05UoDeBlVgQmMjXkY6N6p4uZIMu/W4kbsOLD939R/FOSQ77zlurYtTQIX6AHOqXnQb
         PhF9NYFJ9dAmzvI5cI6O4UqpGuyw9W6D7kVZZvLU63idX8+jcZpIkIwRvksNXgKakP3V
         fGoIISDXUU8xvIUVwj9+kYTSHbUT/5Qq/e0uj0TtNRcFyeqn6WXRoqvUrljqHCxuYJCF
         8sOw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MJ47WOBt;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=RNNIBmF3nrHVQxf8dUbI5P4AtJQfmW6cESgoZDaHaXg=;
        b=RRb4n6Z2V4RSsc5WNCa93BBaNT7SVEdasAzOGI4yQHL5SakYRgeWVG1gpbFmeIJV4i
         xltY0gGLeVplltGFNF9+ruSQFbrpkvzIjWKunRaf1g/Fa9pR8HSC9RNYe6tBYVpRWOht
         H7fNQq8WLrjIBNtjk3Z8rXy5zmF737KjeZoKLXKlsWAFPVVAPEJ8Lt1QUhNSLQ0qRt2V
         Fgcp5nJh4k4mvy29dU1uX7aWQMHG6f5BMnADf94PygmJMFZEfQmCu4iEFi84e8zuKkZ7
         vN4lo72XxDnoqRirelrE8JchjyEFOjmurbvIQfTf77Fp+KWKUiYES+O8w16epx4bv+V1
         xU5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=RNNIBmF3nrHVQxf8dUbI5P4AtJQfmW6cESgoZDaHaXg=;
        b=TwMJECfuxFrK/pTPMn8oop3/NWuMnFCQgiDxJyd9BXU/Iex37uQGwHBr9ZmwoqFXeW
         jfmT2oYTFRrUf8ZuLsgJJPKGPnje9UZpJOvdOXIpFxkHeJFUxUNCygdpSy42d5lSuiyC
         vEqHHbGTvqnQWR5SWTxBpUSw0rWGI31qoLVcQDDBaQudv21JuA4Yk7seqikqKiojojrD
         qdnzBKGcZ9AVovaQk5WwbLixswRZK6W6mYwXi/IWnZHMsQCeeEOCydWmAP4u/cnb2ep8
         IrF1a3h36zoPMym0QvkrX0PX8sD5uhCJVqT0LH8tdIJXYwx8z7FzeL1RAOZWB4va6M5g
         qqsQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530ihJbjG239MYz78CJPBwxdJT6WQqBjfJJPKP6logjjuu5eyZYq
	wghMPfa6jstV9Vj8VwueQ5w=
X-Google-Smtp-Source: ABdhPJzQce7gatUejLZLE6wI1D2YvXuAbOXvrUll7hLff3shOEdlWEUbTCTxko6f3c4sWSFs/lSqJA==
X-Received: by 2002:a17:90a:ead4:: with SMTP id ev20mr3774047pjb.71.1625567226121;
        Tue, 06 Jul 2021 03:27:06 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:1943:: with SMTP id 3ls10648331pgz.8.gmail; Tue, 06 Jul
 2021 03:27:05 -0700 (PDT)
X-Received: by 2002:a63:190b:: with SMTP id z11mr6986431pgl.320.1625567225604;
        Tue, 06 Jul 2021 03:27:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625567225; cv=none;
        d=google.com; s=arc-20160816;
        b=lnWe8KNerrsCTA9kYJJAYD7NbTz7uSNQgZ/N8zmxanLqWzDi2O2YmJiTt8BIUrhwIk
         PdDXrQY3v5lxqHrqCrwSgoq1XnbFgMI3rACRAH7eaS2x8QH+P3lajgrhn+nZPqNpdF43
         x54v9gGJfds6QY8lbLimV4o520dsKNOiW/9pzhnFxCurdRaVNeJTupEUYGbAKc+bBQrn
         BmbiMtj4tZQ2hNK8uXQc0Wi5roCH8+Nu0r48ppcFJgCLG7JHv7ANs+qzXKqvw2XqyMsA
         DSLrvjyv+kBkA8sHEC/VLvFSDhGE0OEZh9jGVawDkHeh9F1AXiW4tylox7PVZmRgN8ru
         FruQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lAHXogtmhAWeDRC0YJNbDlp2mSGUP6ZcifmoYNzkeyo=;
        b=LOeHKdFIzlm+lY2KJ7synhPxHqthK3+hm7dqN1GrEFeE/9efTGi9twUbyuLAd3OnVO
         O4i0y0SzMrNwiEyd1VWwwjTYotTNuLSnMHpWXKnXb3MjWzaCdsrubJYMuPjmsBIwOwNc
         A0Oycr8sU10JBK2et2CBvlzRnmKmXMuerXpiSPIkTu0pekX2eUki+dEP+3xtVFpBO5Z7
         Vyq0femaJaMXe264eA7kpBTYApUrJmu6NSBI81UT0qEPKAvXoyhY2afuZd6/ycGseOWA
         2/aBEw8godv86a3hE5drgBUXNe2Desur0Tx2kAdxqd+ENDMi3NPJQ5/y329SjO2hlE4+
         Zdzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=MJ47WOBt;
       spf=pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mchehab@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q7si1881803pgf.3.2021.07.06.03.27.05
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 03:27:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 67D94619A5;
	Tue,  6 Jul 2021 10:26:34 +0000 (UTC)
Date: Tue, 6 Jul 2021 12:26:31 +0200
From: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>, Thomas
 Bogendoerfer <tsbogend@alpha.franken.de>, "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, Helge Deller <deller@gmx.de>,
 Geoff Levand <geoff@infradead.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
 <paulus@samba.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown
 <lenb@kernel.org>, William Breathitt Gray <vilhelm.gray@gmail.com>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, Maxime Ripard
 <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Alison Schofield <alison.schofield@intel.com>,
 Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 Ben Widawsky <ben.widawsky@intel.com>, Dan Williams
 <dan.j.williams@intel.com>, Dave Jiang <dave.jiang@intel.com>, Vinod Koul
 <vkoul@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>, Sudeep
 Holla <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>,
 Wu Hao <hao.wu@intel.com>, Tom Rix <trix@redhat.com>, Moritz Fischer
 <mdf@kernel.org>, Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires
 <benjamin.tissoires@redhat.com>, Srinivas Pandruvada
 <srinivas.pandruvada@linux.intel.com>, "K. Y. Srinivasan"
 <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>, Stephen
 Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>, Dexuan
 Cui <decui@microsoft.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>, Wolfram Sang <wsa@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Samuel Iglesias Gonsalvez
 <siglesias@igalia.com>, Jens Taprogge <jens.taprogge@taprogge.org>,
 Johannes Thumshirn <morbidrsa@gmail.com>, Maxim Levitsky
 <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>, Ulf Hansson
 <ulf.hansson@linaro.org>, Lee Jones <lee.jones@linaro.org>, Tomas Winkler
 <tomas.winkler@intel.com>, Arnd Bergmann <arnd@arndb.de>, Jakub Kicinski
 <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Jon Mason
 <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Krzysztof
 =?UTF-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Dominik Brodowski <linux@dominikbrodowski.net>,
 Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede
 <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Matt Porter
 <mporter@kernel.crashing.org>, Alexandre Bounine <alex.bou9@gmail.com>,
 Ohad Ben-Cohen <ohad@wizery.com>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, Thorsten Scherer
 <t.scherer@eckelmann.de>, Srinivas Kandagatla
 <srinivas.kandagatla@linaro.org>, Andy Gross <agross@kernel.org>, Mark
 Brown <broonie@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Michael Buesch
 <m@bues.ch>, Sven Van Asbroeck <TheSven73@gmail.com>, Johan Hovold
 <johan@kernel.org>, Alex Elder <elder@kernel.org>, Andreas Noever
 <andreas.noever@gmail.com>, Michael Jamet <michael.jamet@intel.com>, Mika
 Westerberg <mika.westerberg@linux.intel.com>, Yehezkel Bernat
 <YehezkelShB@gmail.com>, Rob Herring <robh@kernel.org>, Jiri Slaby
 <jirislaby@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>, Alex Williamson
 <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, Martyn
 Welch <martyn@welchs.me.uk>, Manohar Vanga <manohar.vanga@gmail.com>, Boris
 Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>, Johannes Berg
 <johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>, Tyrel Datwyler
 <tyreld@linux.ibm.com>, Vladimir Zapolskiy <vz@mleia.com>, Samuel Holland
 <samuel@sholland.org>, Qinglang Miao <miaoqinglang@huawei.com>, Alexey
 Kardashevskiy <aik@ozlabs.ru>, Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Joey Pabalan <jpabalanb@gmail.com>, Pali =?UTF-8?B?Um9ow6Fy?=
 <pali@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>, Frank Li
 <lznuaa@gmail.com>, Mike Christie <michael.christie@oracle.com>, Bodo
 Stroesser <bostroesser@gmail.com>, Hannes Reinecke <hare@suse.de>, David
 Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>, Julien
 Grall <jgrall@amazon.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-parisc@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-acpi@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-cxl@vger.kernel.org, nvdimm@lists.linux.dev,
 dmaengine@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-fpga@vger.kernel.org, linux-input@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-i3c@lists.infradead.org, industrypack-devel@lists.sourceforge.net,
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-ntb@googlegroups.com,
 linux-pci@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-scsi@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-staging@lists.linux.dev,
 greybus-dev@lists.linaro.org, target-devel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-serial@vger.kernel.org,
 virtualization@lists.linux-foundation.org, kvm@vger.kernel.org,
 xen-devel@lists.xenproject.org
Subject: Re: [PATCH] bus: Make remove callback return void
Message-ID: <20210706122631.463bc671@coco.lan>
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mchehab@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=MJ47WOBt;       spf=pass
 (google.com: domain of mchehab@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mchehab@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Em Tue,  6 Jul 2021 11:50:37 +0200
Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de> escreveu:

> The driver core ignores the return value of this callback because there
> is only little it can do when a device disappears.
>=20
> This is the final bit of a long lasting cleanup quest where several
> buses were converted to also return void from their remove callback.
> Additionally some resource leaks were fixed that were caused by drivers
> returning an error code in the expectation that the driver won't go
> away.
>=20
> With struct bus_type::remove returning void it's prevented that newly
> implemented buses return an ignored error code and so don't anticipate
> wrong expectations for driver authors.
>=20
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
>=20
> this patch depends on "PCI: endpoint: Make struct pci_epf_driver::remove
> return void" that is not yet applied, see
> https://lore.kernel.org/r/20210223090757.57604-1-u.kleine-koenig@pengutro=
nix.de.
>=20
> I tested it using allmodconfig on amd64 and arm, but I wouldn't be
> surprised if I still missed to convert a driver. So it would be great to
> get this into next early after the merge window closes.
>=20
> I send this mail to all people that get_maintainer.pl emits for this
> patch. I wonder how many recipents will refuse this mail because of the
> long Cc: list :-)
>=20
> Best regards
> Uwe
>=20

> diff --git a/drivers/media/pci/bt8xx/bttv-gpio.c b/drivers/media/pci/bt8x=
x/bttv-gpio.c
> index b730225ca887..a2b18e2bed1b 100644
> --- a/drivers/media/pci/bt8xx/bttv-gpio.c
> +++ b/drivers/media/pci/bt8xx/bttv-gpio.c
> @@ -46,14 +46,13 @@ static int bttv_sub_probe(struct device *dev)
>  	return sub->probe ? sub->probe(sdev) : -ENODEV;
>  }
> =20
> -static int bttv_sub_remove(struct device *dev)
> +static void bttv_sub_remove(struct device *dev)
>  {
>  	struct bttv_sub_device *sdev =3D to_bttv_sub_dev(dev);
>  	struct bttv_sub_driver *sub =3D to_bttv_sub_drv(dev->driver);
> =20
>  	if (sub->remove)
>  		sub->remove(sdev);
> -	return 0;
>  }
> =20

Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org> # for drivers/media


Thanks,
Mauro

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20210706122631.463bc671%40coco.lan.

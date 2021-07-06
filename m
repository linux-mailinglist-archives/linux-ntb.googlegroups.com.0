Return-Path: <linux-ntb+bncBD76R2M4QICBBGPDSGDQMGQEGBPCHCQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 516C33BD963
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 17:07:06 +0200 (CEST)
Received: by mail-lj1-x23e.google.com with SMTP id z9-20020a2eb5290000b02901859d7fbdf8sf362640ljm.5
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 08:07:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625584026; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZXHzRgn/T6/UpUwrXjigILU7ePrnl1Hw3i2PTYvADLXQi1LZMANdJDPfGYggDuXUbk
         M8/MmPnkxJUe56gkvqzIVdAbViraD5YWuN2nr/Q984uisuTjAV8G02sPlapRme2YYb48
         woJZI4lF+U5GLnMliRAkcnOualnfJXrEaZZZwH/kZCl+aSzrTuYQsLw2ttXlQxKUap8P
         01vAvCcMHX0dqypvMOCsyPwhKTTWXrKepYprzXXIadWzeWXDodCT8/uLCBBkmHIPBGva
         QDH3ZBnin9lmg9u2hCf2dQqEhB1dOwRRYxTFyofxrPW7XborEO8AJpgFVGTeljgIdD5C
         kenw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=bIC00qgO4PyESOkD3r9UF/EH1J5evXr78m+leL0vR1Q=;
        b=nTS2iSVmTtBu98R/ycnsPxGbvip3smIVitZyDJlMGxUaJ8bFeWQ8snMF1Zn9g9x38z
         zqRxmKhvcUpKLPwW7/dzdvVCo0fz5kXNyMsqVDkuKJfx2OzwtUVhh50usBPKoCYQfdvj
         IuNrF57ML5cq7oYo4jSMA8muDfRa3mJamvGTXc0tBpIR3ks137Lvt6YYL7F8TuSYn3D2
         cPpCu9LHyEWORj1nqa9u91moJKXq7uAdGHSwmyeWP31f9Tc3XF0jZy1/VMYMSrnwwMYP
         BJSE95lYMLFd+XOLuNOpWBckfdkVSbeTTtDkpuCbw0MNhyx8Q4SdzyeqBgGVyru9OaIZ
         6hjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SBHfWn82;
       spf=pass (google.com: domain of yehezkelshb@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=yehezkelshb@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bIC00qgO4PyESOkD3r9UF/EH1J5evXr78m+leL0vR1Q=;
        b=qCTnYo3AEWyUJodnsYNRTCjo3mDambevmejHKyhJ9ah6HZLD84TPc205wc3MWm76Po
         f8SVzv1YbWSNezlnd11H3UKGR7s5H13gmNIrNzJLrRrzxaUyNi5zTvecc/I4k7fK27An
         eZRKv6XuMTWUWnkgLv7EUzf1IBT5FP48o681v4MpPSdD4fxjD0Gtb/PvSUotgW4hoqL5
         3HVWjXntPlb9sn5e8kWer7YZNrqR4swda94DZFfi6Pf1p44IlfOr/RPtWOmsF67h/S4q
         tIgZMrC1AyZxKt9u00AtgKe6Zy555QgdLnry0j7xo0ONxah34E3MLf1lB/LCpvK2DY1Q
         j2LA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bIC00qgO4PyESOkD3r9UF/EH1J5evXr78m+leL0vR1Q=;
        b=SXq74DV3h/oODT1fOzs/+842W3cGOyTvCqm0AKWu1REF0XZVNbccKpBrnLjx+CpnSt
         Ho2kYfLLjT9XyMWBSM429a+WvBZQ9+SXKYGxFpbPQ8MewqoVvpR9t2bt9ShCES+gevXr
         0H6ZZrhhMed4HkEK9ZbIdLTYRY4WZP02LB02l7huI8yLVyIkAyphpvfSqCYAEmg8A+Qd
         n5P/z/5ufPLeyHgEe6RMMXPp1xRjCx6b51bEIJ4QrdBhSnMLnUL95G8MlizpUkBmuj0c
         AfLkSQn4z+9dmxVfuEPDFjTt6lRqfRrI0+iPP0eWNlTNMQ6urL58AriNBd2gycNiands
         B7Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=bIC00qgO4PyESOkD3r9UF/EH1J5evXr78m+leL0vR1Q=;
        b=kgCKAVBUHG3v38Q9PUkRp05bXgtUGXV1USpgWWwJKrDuRTlKcabN7YhHkxe5GyJ95C
         zgNDZVwp2W8/4/1JFTFcdoHQUm1FOR5ceah/p4UIhRG9ztseRkCDJ57ROqM6CHiMzG39
         niqz1QoI7HbROTAvhJFIYM2N4bO2Xwd67XuP0HlSqD8MBDB6+V50V9/pMvnxZUKAn7SK
         zdTC6eNFRoy4zVIQRyfhGMuVGY6R7KTK4cizm/olSpQVb73uxTjzKhiB4vAZvmUb0KtX
         ILifkPZFajeFUirDP/akJu5yRkbVbTKCIuAgF05hRyS2HgVi3BJkuUCfArDUgbp9QHAS
         1z0Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532A1iZCJlyaHxM883bJyF2NGaozsUFK3SlKFOAQtG8srm31ePEj
	NGo/cUkS3n0Ln5ki71I4qs8=
X-Google-Smtp-Source: ABdhPJzhQhnl+STmzv7Y52qxJAi/jhy9rDvoW/JqFkwduitkIjBBESu3T0KodNfKbuwxYj05Fy1k2A==
X-Received: by 2002:ac2:4356:: with SMTP id o22mr15834989lfl.309.1625584025907;
        Tue, 06 Jul 2021 08:07:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:a783:: with SMTP id c3ls3688833ljf.2.gmail; Tue, 06 Jul
 2021 08:07:04 -0700 (PDT)
X-Received: by 2002:a2e:730b:: with SMTP id o11mr15873101ljc.352.1625584024867;
        Tue, 06 Jul 2021 08:07:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625584024; cv=none;
        d=google.com; s=arc-20160816;
        b=zz6XweqBHBkq+UA75ld6OsHSK91xaUVmfHB5z3YAC5/n3MkjpbAFHzgJhf/uujfUAR
         wtftTHk4x+W2/zx9GFkOFgev4+LpctR30GO+HGkGB2oYakZxLiInfNvwhCxL2+6/wVAe
         Tn+5g2D9bWnJ/UHtVHhlkxBDAVmap2f8p8OAXdAtJG13nwJFO/MxtwU2mdwn8YUzgkCF
         jc8zO0dDaQnO4g4/56jdrt+hF7A38Rrt2S/cXhzJlZViN661108CjJxQeJcWE8w7D82M
         WFeXivS8yXgr0CIXGqstlbnht/3MG+AewflInxB1cpQQW/Do92xXfQGm+nkjtx/REJXC
         ijNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=+9dsgPbS//aUCZUFixPgGcG7qxsG2EJ3dbyOzFDh8TA=;
        b=fJRoOVlqUqnWkJW2OqBUh64hkaci08+V9pbcbEHm39rdolWviwtY9X7fnu4JZM9B6v
         XwEpKqIphCUta2SpAH8KUF1YcbUDf6c6pcjwhgl9sOQ5O2uiEkRZoxp1N4qHLNkxZ9JO
         67a8WPodu6miybviMmhcEQzca8jpNqfjGqNwrqma0832YTVBSQ9WZA5Q/5+ocGjAoVav
         Q22nV7xwt/x1oqo4Cdt79u3RqwWPkyo9QiAP0CK2Aoii5IDlZGz2hnR5oW2kgRCe/UA/
         NslYf2Scfg4cnYw5lXcDaU1EQr/cD9Co25bn5YhDg+M8DpYp+OGRudVskV1DpDM62cIu
         JhDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SBHfWn82;
       spf=pass (google.com: domain of yehezkelshb@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) smtp.mailfrom=yehezkelshb@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com. [2a00:1450:4864:20::62c])
        by gmr-mx.google.com with ESMTPS id q8si815770ljg.4.2021.07.06.08.07.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 08:07:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of yehezkelshb@gmail.com designates 2a00:1450:4864:20::62c as permitted sender) client-ip=2a00:1450:4864:20::62c;
Received: by mail-ej1-x62c.google.com with SMTP id c17so34628089ejk.13
        for <linux-ntb@googlegroups.com>; Tue, 06 Jul 2021 08:07:04 -0700 (PDT)
X-Received: by 2002:a17:907:6289:: with SMTP id nd9mr19151547ejc.384.1625584024338;
 Tue, 06 Jul 2021 08:07:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
From: Yehezkel Bernat <yehezkelshb@gmail.com>
Date: Tue, 6 Jul 2021 18:06:47 +0300
Message-ID: <CA+CmpXu5-NCvfuOc8fso2a9bmi0Dacmd=+u=XB-Wd7X=WgOTBA@mail.gmail.com>
Subject: Re: [PATCH] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de, 
	LKML <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	Geoff Levand <geoff@infradead.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	"Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, 
	William Breathitt Gray <vilhelm.gray@gmail.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Alison Schofield <alison.schofield@intel.com>, 
	Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>, 
	Ben Widawsky <ben.widawsky@intel.com>, Dan Williams <dan.j.williams@intel.com>, 
	Dave Jiang <dave.jiang@intel.com>, Vinod Koul <vkoul@kernel.org>, 
	Stefan Richter <stefanr@s5r6.in-berlin.de>, Sudeep Holla <sudeep.holla@arm.com>, 
	Cristian Marussi <cristian.marussi@arm.com>, Wu Hao <hao.wu@intel.com>, Tom Rix <trix@redhat.com>, 
	Moritz Fischer <mdf@kernel.org>, Jiri Kosina <jikos@kernel.org>, 
	Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, 
	"K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>, 
	Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>, 
	Dexuan Cui <decui@microsoft.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Wolfram Sang <wsa@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Samuel Iglesias Gonsalvez <siglesias@igalia.com>, Jens Taprogge <jens.taprogge@taprogge.org>, 
	Johannes Thumshirn <morbidrsa@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Lee Jones <lee.jones@linaro.org>, 
	Tomas Winkler <tomas.winkler@intel.com>, Arnd Bergmann <arnd@arndb.de>, 
	Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Jon Mason <jdmason@kudzu.us>, 
	Allen Hubbe <allenbh@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Dominik Brodowski <linux@dominikbrodowski.net>, 
	Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede <hdegoede@redhat.com>, 
	Mark Gross <mgross@linux.intel.com>, Matt Porter <mporter@kernel.crashing.org>, 
	Alexandre Bounine <alex.bou9@gmail.com>, Ohad Ben-Cohen <ohad@wizery.com>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Thorsten Scherer <t.scherer@eckelmann.de>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Andy Gross <agross@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Michael Buesch <m@bues.ch>, 
	Sven Van Asbroeck <TheSven73@gmail.com>, Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
	Andreas Noever <andreas.noever@gmail.com>, Michael Jamet <michael.jamet@intel.com>, 
	Mika Westerberg <mika.westerberg@linux.intel.com>, Rob Herring <robh@kernel.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	"Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>, 
	Kirti Wankhede <kwankhede@nvidia.com>, Alex Williamson <alex.williamson@redhat.com>, 
	Cornelia Huck <cohuck@redhat.com>, Martyn Welch <martyn@welchs.me.uk>, 
	Manohar Vanga <manohar.vanga@gmail.com>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, 
	Johannes Berg <johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>, Tyrel Datwyler <tyreld@linux.ibm.com>, 
	Vladimir Zapolskiy <vz@mleia.com>, Samuel Holland <samuel@sholland.org>, 
	Qinglang Miao <miaoqinglang@huawei.com>, Alexey Kardashevskiy <aik@ozlabs.ru>, 
	Kai-Heng Feng <kai.heng.feng@canonical.com>, Joey Pabalan <jpabalanb@gmail.com>, 
	=?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Frank Li <lznuaa@gmail.com>, 
	Mike Christie <michael.christie@oracle.com>, Bodo Stroesser <bostroesser@gmail.com>, 
	Hannes Reinecke <hare@suse.de>, David Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>, 
	Julien Grall <jgrall@amazon.com>, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, linux-parisc@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-acpi@vger.kernel.org, 
	linux-wireless@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-cxl@vger.kernel.org, nvdimm@lists.linux.dev, dmaengine@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, linux-fpga@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-hyperv@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-i3c@lists.infradead.org, 
	industrypack-devel@lists.sourceforge.net, linux-media@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, linux-ntb@googlegroups.com, 
	Linux PCI <linux-pci@vger.kernel.org>, platform-driver-x86@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-staging@lists.linux.dev, 
	greybus-dev@lists.linaro.org, target-devel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-serial@vger.kernel.org, 
	virtualization@lists.linux-foundation.org, kvm@vger.kernel.org, 
	xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: yehezkelshb@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SBHfWn82;       spf=pass
 (google.com: domain of yehezkelshb@gmail.com designates 2a00:1450:4864:20::62c
 as permitted sender) smtp.mailfrom=yehezkelshb@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 6, 2021 at 12:50 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
> The driver core ignores the return value of this callback because there
> is only little it can do when a device disappears.
>
> This is the final bit of a long lasting cleanup quest where several
> buses were converted to also return void from their remove callback.
> Additionally some resource leaks were fixed that were caused by drivers
> returning an error code in the expectation that the driver won't go
> away.
>
> With struct bus_type::remove returning void it's prevented that newly
> implemented buses return an ignored error code and so don't anticipate
> wrong expectations for driver authors.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---

>
>  drivers/thunderbolt/domain.c              | 4 +---

For Thunderbolt:

Acked-by: Yehezkel Bernat <YehezkelShB@gmail.com>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CA%2BCmpXu5-NCvfuOc8fso2a9bmi0Dacmd%3D%2Bu%3DXB-Wd7X%3DWgOTBA%40m=
ail.gmail.com.

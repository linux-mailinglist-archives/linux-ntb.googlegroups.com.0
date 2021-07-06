Return-Path: <linux-ntb+bncBDLPBG4DUEARBKHFSGDQMGQETJN3AFA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id A11503BD991
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 17:11:37 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id t15-20020a05622a180fb029024f88c5e9b0sf11309640qtc.17
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 08:11:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625584296; cv=pass;
        d=google.com; s=arc-20160816;
        b=YVi7FDEailuHxdf2iGsMNPrmwreTDcW2wWmJ5xfS8syVmRdD04RUgRhC9+ALIxnZmw
         hFb/JWi3a1gqh9nO8ZHwA8fc2WClXEWGrMPUsxMGvxHycOf9CmNYm2BmixGliky2JQGU
         e1t4SCjD0iix87Rs7hhZtnPaO5K9S+jF8i3D6lHWHl3NltOYhjOkhZi7gQ+hVdtcUMSq
         aauF3Qglcil5y8+xXHSTN+mHX5unP8BrA3mvMXEuR8vWv6Rc+1F1ouE1NG8A0OqlbZhQ
         w7iB3QXPATLiX5GSkpc612QOvx2n4sNynOut45mYoVjn3N2jsyFukAz0MLVnqluA9WpV
         iq6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=wyPBCDq+NopNjwaEBv/mH7jQosKPzxyXNrG91AFUyK0=;
        b=I8CYT6htNDN3hf5dKEX75PliiDt44tkD1ydHzoEKlWEFTHN75QEsuAsAeMa6Jovc7Z
         rjI6FptpjRcEJh1cWdZ7xfEfFYcPuWwsCaJqvF3ymXm4aUSa9k10XpVJKHrMpOHmEZBV
         lXX2kwbv22dvWkzM6M0fnHQNL78gwCj05XOD1+2Shb+Piinj1KiJlE9MxYcZSRExN6HN
         2BYhwcgBxdTesgmA7GG+oODJPYH2fNJ4LQBtnqQ3TvodEbQILc9kGs81oUieqIPVsPzi
         7AviO431bsHd7gMHmMaY6sUXjeJGctZLZeEuddrKzKpvsMDrj5L6G/cmXRz+hvpFIlY1
         Dovw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IvCXivhu;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wyPBCDq+NopNjwaEBv/mH7jQosKPzxyXNrG91AFUyK0=;
        b=TQXdHy0Ptv0qPkcHfw2I8nYcj8/malMn+JgIKwNqqmZz1Fb5bhJbgEHIkm44376uQq
         wdvK0Ju1PMFyKfGAgxkwnI2yaHRRlGcIWl8B1H9Rn+ofXUjsOez12F94Ig5XYC+OSq9K
         3zQKi0BeNyfNyL0p2gMwI7oI6c8q1mZQbL0F9HrKrsqZgPmSlOB/SHumtYGmwd6fs0IU
         tfMaDaQOR6lo8oHhjVtprrU42IaZXfz2YNC1FX7VIowLZdOssnslAIKPd47fjQYTk08o
         fGjTEiA4wceH+CHmPR0jhlqprv3S512/L39vlvl7ZgY6d7dVoR9ZwaNmv09UBzYybMu8
         lpYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wyPBCDq+NopNjwaEBv/mH7jQosKPzxyXNrG91AFUyK0=;
        b=ATtXjMVxCBShhhKee0jyTplcAU0cOYLSp6qPyH/P3rVxji8trx6KL7GYqXuD3+CwXL
         lTKmqc6mindMsAfwS/FaKyldLYxZbAUv3BjshDXdAKETrRyBNdQf4MTNXQ807KldVa/K
         Uaif9asR+zFDP9p/fTQFTv1WIjSoFkRsgRhScTWFF6zOmF5cbsZgqnE4w6l/WCX2Km1y
         6520d3AGWYqA1GNZE7DAysq22ARUCx9+CXAUCUpu+kXPHZaYAa/Poh0WluOh8a9aIypo
         hOfB7E9x4lBovbaRqwltdxKE/cFn2HUTi6O5ZfMRqTXPtB0mU82mgtH9z2dEmmoEq7A4
         W5Mg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530qAHmBc2NukB8hiikasj22OWCneD/PcQN+ArYJE9zdnkJGKf0A
	ugl/MjBoU5CkOWal9TMbCAU=
X-Google-Smtp-Source: ABdhPJwcuZgiY7M85NZFaG3MIWO/mOggt8TMl3Y2EEXt972wF53SkUiSL1d8BAQ6Tkp1wNR+ATPBWA==
X-Received: by 2002:a37:bbc3:: with SMTP id l186mr7944288qkf.67.1625584296738;
        Tue, 06 Jul 2021 08:11:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:fed1:: with SMTP id z17ls6680757qvs.10.gmail; Tue, 06
 Jul 2021 08:11:36 -0700 (PDT)
X-Received: by 2002:a05:6214:250c:: with SMTP id gf12mr18613130qvb.7.1625584296380;
        Tue, 06 Jul 2021 08:11:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625584296; cv=none;
        d=google.com; s=arc-20160816;
        b=zcESkVTqFHzwJ9t28w7ppVWDWmIpjQJyxqL4RyKhytV0gIPucH+Kpp5i3BZp6n1njY
         mAxWPCwwvEvY67FRlpE8DkiOaA1OzWSjpAxjAFhl7yiaEnfJHj+kBVqRE3si8L43hWxP
         FGppUDXr3ayMGVtyGzckkVVXQjYjeCc+Gg/ZWFkJV8uWhogiYmDhgi6QVxDEcbTEKjiS
         ENJkJ1ixVt4L6KeyMSrTuYjFwrKBoDfIk6InPEStir0tQ4Neu0piYGhZ2DSFkJHIoeYl
         EaEtLeuYbyKRJVMFpoMrU/MYMmACIbHI64KXcvw/Ein/bHFR6psCcxJmi8wJ7V0qc4uU
         MW/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=4MFz8ETd/nmuIWZiubiifP+Omq2X9iSE9tCmj3gucYM=;
        b=kh3Pu+m/q/2FBpME4uTDFrEcxs38++OYU/vVwBJR7YJTzkhr3ezMb6LJNrJwnfo4sK
         lu4+Y4j59q3zK0goIDGjWTskOYQ57RXsemnu+Sh/UHoG8WyfumCx16Lm7XVqBfpx+D5C
         0kT9PPIIh4jGZWs9s1N3EE7MHlvRJuO7Itg4m4GwvXg5Qblxx5Es4o6XE55PBckC3pqp
         pSmNELkmdKCyrARgmoZszScaw33Sxj+H0uDKDWoo5prOWJ0SghvVhMDjvlnG++1BBiY0
         Y3IwEAYFkoTwdHJ+lsUp6JT/qNgRJkEczzFPyDA0hCL4Tqg3yFsOq4SULD+zu9/MS/LC
         nIlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=IvCXivhu;
       spf=pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com. [2607:f8b0:4864:20::130])
        by gmr-mx.google.com with ESMTPS id q9si566463qkm.7.2021.07.06.08.11.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 08:11:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of mathieu.poirier@linaro.org designates 2607:f8b0:4864:20::130 as permitted sender) client-ip=2607:f8b0:4864:20::130;
Received: by mail-il1-x130.google.com with SMTP id j12so10174632ils.5
        for <linux-ntb@googlegroups.com>; Tue, 06 Jul 2021 08:11:36 -0700 (PDT)
X-Received: by 2002:a05:6e02:1a0f:: with SMTP id s15mr14885840ild.58.1625584295743;
 Tue, 06 Jul 2021 08:11:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
From: Mathieu Poirier <mathieu.poirier@linaro.org>
Date: Tue, 6 Jul 2021 09:11:24 -0600
Message-ID: <CANLsYkz_k3rBETkFWd9mm+Lgfcyp=YgiAM8rq8DaqaOcSofEkA@mail.gmail.com>
Subject: Re: [PATCH] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>, 
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
	Bjorn Andersson <bjorn.andersson@linaro.org>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Thorsten Scherer <t.scherer@eckelmann.de>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Andy Gross <agross@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Michael Buesch <m@bues.ch>, 
	Sven Van Asbroeck <TheSven73@gmail.com>, Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
	Andreas Noever <andreas.noever@gmail.com>, Michael Jamet <michael.jamet@intel.com>, 
	Mika Westerberg <mika.westerberg@linux.intel.com>, Yehezkel Bernat <YehezkelShB@gmail.com>, 
	Rob Herring <robh@kernel.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, "Michael S. Tsirkin" <mst@redhat.com>, 
	Jason Wang <jasowang@redhat.com>, Kirti Wankhede <kwankhede@nvidia.com>, 
	Alex Williamson <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, 
	Martyn Welch <martyn@welchs.me.uk>, Manohar Vanga <manohar.vanga@gmail.com>, 
	Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, 
	Stefano Stabellini <sstabellini@kernel.org>, Johannes Berg <johannes@sipsolutions.net>, 
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>, 
	Tyrel Datwyler <tyreld@linux.ibm.com>, Vladimir Zapolskiy <vz@mleia.com>, 
	Samuel Holland <samuel@sholland.org>, Qinglang Miao <miaoqinglang@huawei.com>, 
	Alexey Kardashevskiy <aik@ozlabs.ru>, Kai-Heng Feng <kai.heng.feng@canonical.com>, 
	Joey Pabalan <jpabalanb@gmail.com>, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Frank Li <lznuaa@gmail.com>, 
	Mike Christie <michael.christie@oracle.com>, Bodo Stroesser <bostroesser@gmail.com>, 
	Hannes Reinecke <hare@suse.de>, David Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>, 
	Julien Grall <jgrall@amazon.com>, linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-mips@vger.kernel.org, linux-parisc@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-acpi@vger.kernel.org, 
	linux-wireless@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-cxl@vger.kernel.org, nvdimm@lists.linux.dev, dmaengine@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, linux-fpga@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-hyperv@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-i3c@lists.infradead.org, 
	industrypack-devel@lists.sourceforge.net, linux-media@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, linux-ntb@googlegroups.com, 
	linux-pci@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
	linux-remoteproc <linux-remoteproc@vger.kernel.org>, linux-scsi@vger.kernel.org, 
	alsa-devel@alsa-project.org, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	linux-spi@vger.kernel.org, linux-staging@lists.linux.dev, 
	greybus-dev@lists.linaro.org, target-devel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-serial@vger.kernel.org, 
	virtualization@lists.linux-foundation.org, kvm@vger.kernel.org, 
	xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mathieu.poirier@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=IvCXivhu;       spf=pass
 (google.com: domain of mathieu.poirier@linaro.org designates
 2607:f8b0:4864:20::130 as permitted sender) smtp.mailfrom=mathieu.poirier@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 6 Jul 2021 at 03:56, Uwe Kleine-K=C3=B6nig
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
> Hello,
>
> this patch depends on "PCI: endpoint: Make struct pci_epf_driver::remove
> return void" that is not yet applied, see
> https://lore.kernel.org/r/20210223090757.57604-1-u.kleine-koenig@pengutro=
nix.de.
>
> I tested it using allmodconfig on amd64 and arm, but I wouldn't be
> surprised if I still missed to convert a driver. So it would be great to
> get this into next early after the merge window closes.
>
> I send this mail to all people that get_maintainer.pl emits for this
> patch. I wonder how many recipents will refuse this mail because of the
> long Cc: list :-)
>
> Best regards
> Uwe
>
>  arch/arm/common/locomo.c                  | 3 +--
>  arch/arm/common/sa1111.c                  | 4 +---
>  arch/arm/mach-rpc/ecard.c                 | 4 +---
>  arch/mips/sgi-ip22/ip22-gio.c             | 3 +--
>  arch/parisc/kernel/drivers.c              | 5 ++---
>  arch/powerpc/platforms/ps3/system-bus.c   | 3 +--
>  arch/powerpc/platforms/pseries/ibmebus.c  | 3 +--
>  arch/powerpc/platforms/pseries/vio.c      | 3 +--
>  drivers/acpi/bus.c                        | 3 +--
>  drivers/amba/bus.c                        | 4 +---
>  drivers/base/auxiliary.c                  | 4 +---
>  drivers/base/isa.c                        | 4 +---
>  drivers/base/platform.c                   | 4 +---
>  drivers/bcma/main.c                       | 6 ++----
>  drivers/bus/sunxi-rsb.c                   | 4 +---
>  drivers/cxl/core.c                        | 3 +--
>  drivers/dax/bus.c                         | 4 +---
>  drivers/dma/idxd/sysfs.c                  | 4 +---
>  drivers/firewire/core-device.c            | 4 +---
>  drivers/firmware/arm_scmi/bus.c           | 4 +---
>  drivers/firmware/google/coreboot_table.c  | 4 +---
>  drivers/fpga/dfl.c                        | 4 +---
>  drivers/hid/hid-core.c                    | 4 +---
>  drivers/hid/intel-ish-hid/ishtp/bus.c     | 4 +---
>  drivers/hv/vmbus_drv.c                    | 5 +----
>  drivers/hwtracing/intel_th/core.c         | 4 +---
>  drivers/i2c/i2c-core-base.c               | 5 +----
>  drivers/i3c/master.c                      | 4 +---
>  drivers/input/gameport/gameport.c         | 3 +--
>  drivers/input/serio/serio.c               | 3 +--
>  drivers/ipack/ipack.c                     | 4 +---
>  drivers/macintosh/macio_asic.c            | 4 +---
>  drivers/mcb/mcb-core.c                    | 4 +---
>  drivers/media/pci/bt8xx/bttv-gpio.c       | 3 +--
>  drivers/memstick/core/memstick.c          | 3 +--
>  drivers/mfd/mcp-core.c                    | 3 +--
>  drivers/misc/mei/bus.c                    | 4 +---
>  drivers/misc/tifm_core.c                  | 3 +--
>  drivers/mmc/core/bus.c                    | 4 +---
>  drivers/mmc/core/sdio_bus.c               | 4 +---
>  drivers/net/netdevsim/bus.c               | 3 +--
>  drivers/ntb/core.c                        | 4 +---
>  drivers/ntb/ntb_transport.c               | 4 +---
>  drivers/nvdimm/bus.c                      | 3 +--
>  drivers/pci/endpoint/pci-epf-core.c       | 4 +---
>  drivers/pci/pci-driver.c                  | 3 +--
>  drivers/pcmcia/ds.c                       | 4 +---
>  drivers/platform/surface/aggregator/bus.c | 4 +---
>  drivers/platform/x86/wmi.c                | 4 +---
>  drivers/pnp/driver.c                      | 3 +--
>  drivers/rapidio/rio-driver.c              | 4 +---
>  drivers/rpmsg/rpmsg_core.c                | 4 +---

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CANLsYkz_k3rBETkFWd9mm%2BLgfcyp%3DYgiAM8rq8DaqaOcSofEkA%40mail.gm=
ail.com.

Return-Path: <linux-ntb+bncBCMILY6JWQBBBUERSGDQMGQEIPVGI2A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 634273BD495
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 14:13:05 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id o17-20020a2e0c510000b02901834f86a436sf2173320ljd.23
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 05:13:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625573585; cv=pass;
        d=google.com; s=arc-20160816;
        b=V3Hj2TWuqjEEiwhNx8XSKuyZ4aFkr24eWU6QmcKB36vosXY7vavHmQGj2lVbfc3CTL
         yC+GfGfVc+v4FwCntO0aJzfeGOj17QFH1KHew2H1Ji7Ll5FUI0+2L7sVcO5zJJ/cpFu+
         6B9obOsgjyVdJuBNNp7iiayfg5VlMPPFypJi7IVM0p5oT7CG2o7iwPd9Qy+0hsBB5iHB
         92ZNsYwUmYVTgv/6nH8zmSeoIvKBnD3FDZafqR4as+KWwznnrFxd9tLSDzwV08aL+B18
         M24M5vTzSJd/ix+mEgRd2FAIyZCnXy3CeXzvP6dtKjgcJqZCCK5YPeSDblsRF4aKoNMV
         HAcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:sender:dkim-signature;
        bh=yQ/d8+yWxRSWgNkTXzeG1HN+k1XpLkcOtbbDwgjEme4=;
        b=Sl0UI8MBwawHeZuiKtRStZ2UEBeqhjCTd0IH966deBfGZV9+ZKHfsONHh4ybSMVlE1
         l0hIz3y/tMnTKidfHACeUjS8OzUoplWnaSlJIgDepEGsvFFI5y9jB1Yr78s3BPRFvYlY
         FQyNKFbBeGJOy1VUTDzsHLSEHTCJsTKdILF/Zq4lVlMybPuA4M8Q4oRYvhvACpltsuo+
         eawhmgMjOop8skMPDMfdSwYTM0l5BswN+KtlZIVDZMPZCIXRE2nCP7mpYUT38KZQwnI1
         EjlVOzoLbG9FOjai5rvni1XEu0bKG53V81yOIeXCoNM/t7Ni5T2zs+VfBhSudATrg2um
         MWVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wens213@gmail.com designates 209.85.221.49 as permitted sender) smtp.mailfrom=wens213@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yQ/d8+yWxRSWgNkTXzeG1HN+k1XpLkcOtbbDwgjEme4=;
        b=LJphSAJtncla1vV2jJLyFrhpo8uI0jCXPO6WBfhmHQvxVdfh5EskF7BEg9UGb5HKsg
         9bPjinduqKGP7cM2SDADU5SfVoLYgOhrRzw0htiYwhqcAS+YpjPwJemano2+c6Vz9wT3
         SPx6Y4RYHosgt52+gKVcJIgOmi/O6OUI8o0M7qdo69k2cZAXg++Mx3yhT3YiAJ7OstQr
         ugxCM9z4zpiCrjKQon9QQgHOvpK/oMSY4e6b5ki8TrjFFGmo2E4A2mgNknyC4kml6Rgn
         8E3NC/8ru1v5Avm753hTKtoBa+1BacCqkyB49RODIyU2jEUPSt4Fp0O5SkdzZ4h8V151
         2ktw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yQ/d8+yWxRSWgNkTXzeG1HN+k1XpLkcOtbbDwgjEme4=;
        b=q0oOeCW5fqwETtidfIOc/cmFw2hPw7M6qk3tlAhXlGTySuUiO6DjoS+yMaGl3rOvfa
         wBgn4q4pno3SBjqmvDYu0K9RYbStLpsZAWuJSlPNTmh7QhLbD5+CU1ajXlXf5uxIXgCf
         33ly4BeCTWPhaV4s8/mw5eIfUksNZ+Rsi11lAfRMPiEa7nGnokb5ue6qA6N/mOVGXYdq
         NAk6RwnOHpVBU0rnjuXSs5uKMkqTPjLqnNMKcn9y4OYYvdkcmvq9EMTMPjIMuSnwPeJN
         pNUfvuThzRa/YB6c39d5SHbf6s5lS8a67kXHe9TczFfdcDItJjo1zBB2GN2Ezr5IcXZZ
         nmqA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530VhquR7+62ddgP0O3BJy2Fy9DHxk4poQp09ZaajHC4zCNU0iPx
	bPa958iXdGmwNyHqAroYgwY=
X-Google-Smtp-Source: ABdhPJxrxtQsjltvCsBmLwbhGlqD9gqY6Y7BGc3Tumtua5qAuIi54dysu+hxyMjRmwTfRBb2jSKdyw==
X-Received: by 2002:a2e:97c9:: with SMTP id m9mr2455139ljj.382.1625573584972;
        Tue, 06 Jul 2021 05:13:04 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:1799:: with SMTP id bn25ls3548964ljb.3.gmail; Tue,
 06 Jul 2021 05:13:03 -0700 (PDT)
X-Received: by 2002:a2e:9bc2:: with SMTP id w2mr15219155ljj.150.1625573583798;
        Tue, 06 Jul 2021 05:13:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625573583; cv=none;
        d=google.com; s=arc-20160816;
        b=pb5u09LKjaN8qSNJq1KPpwTTDbbYnxDeV1kYA0mZCeRGTak8nByfS7RVSGQXg7pFIU
         Ciipa0NPPpR5RY2ku8flN+4nMoJVy/INoyA4DSq5+ndVSKWAM0YR06FyV44omWFCQASf
         2YOvvlI3kEG04IwI5dLOF995fxLrw5PvOXVQcBftwuggvP/3VGpEceITkSD1lgs3Ozjo
         w2kFlhk8NLF5HolfcDGnET0OEJeUItLquNQR9izgxG5vLr1QlG5Z/fRxd04vUmk81Uth
         86ayFfN3RkJa6c6v5c0T21vPwom2+0IXtybgGUQbJVh1XvhE2wclUYk8M9uqemOoYv6J
         B4bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version;
        bh=QFd4cSgjRlNs6aAHRKVeotkaIh4ASKGZEfmqK4rh/rE=;
        b=ms0vKOK67vU2DPGJLZRpbyxMebuVSRibV3VGrU+L3226BIUqWK95hxTc4vyuGGNnWj
         jR2V5TiU432ZXOPJ88xf93RzubfSxHiAHHfBgFjLM8ZPh0gK7Z4Uun2oUrlvoP9j2PVO
         SYJzgvw+qrJktmU9QE5mxqXTSJ6giqLaIVkBupqCDHoIfCrHWVtXvv3xJauGd0mMwwAu
         fYgWz4yzI20gU4KV4+jYKACipR1D08JQpLsMsvip+B5eCo3RvQvnmRYpoERKBQWT8MZ7
         CiIXKk/g9DA0z6qM5sNTCaB0IRmwvnfJ/tdolPl9ZPUcBEFtSvew03MU0++VQTdRkQg8
         ep2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wens213@gmail.com designates 209.85.221.49 as permitted sender) smtp.mailfrom=wens213@gmail.com
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com. [209.85.221.49])
        by gmr-mx.google.com with ESMTPS id h20si223566ljj.8.2021.07.06.05.13.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 05:13:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of wens213@gmail.com designates 209.85.221.49 as permitted sender) client-ip=209.85.221.49;
Received: by mail-wr1-f49.google.com with SMTP id t15so22459904wry.11
        for <linux-ntb@googlegroups.com>; Tue, 06 Jul 2021 05:13:03 -0700 (PDT)
X-Received: by 2002:a05:6512:2395:: with SMTP id c21mr7797235lfv.503.1625567113610;
        Tue, 06 Jul 2021 03:25:13 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id v8sm324440ljg.137.2021.07.06.03.25.13
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 03:25:13 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id p1so1727128lfr.12
        for <linux-ntb@googlegroups.com>; Tue, 06 Jul 2021 03:25:13 -0700 (PDT)
X-Received: by 2002:a2e:1409:: with SMTP id u9mr9759960ljd.94.1625567102788;
 Tue, 06 Jul 2021 03:25:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Tue, 6 Jul 2021 18:24:51 +0800
X-Gmail-Original-Message-ID: <CAGb2v65WCwDkCzf26urwM91nEWGPAzMHSMFX73WQsFQoWhr8JA@mail.gmail.com>
Message-ID: <CAGb2v65WCwDkCzf26urwM91nEWGPAzMHSMFX73WQsFQoWhr8JA@mail.gmail.com>
Subject: Re: [PATCH] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sascha Hauer <kernel@pengutronix.de>, 
	linux-kernel <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	Geoff Levand <geoff@infradead.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	"Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, 
	William Breathitt Gray <vilhelm.gray@gmail.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Alison Schofield <alison.schofield@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, 
	Ira Weiny <ira.weiny@intel.com>, Ben Widawsky <ben.widawsky@intel.com>, 
	Dan Williams <dan.j.williams@intel.com>, Dave Jiang <dave.jiang@intel.com>, 
	Vinod Koul <vkoul@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>, 
	Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Wu Hao <hao.wu@intel.com>, Tom Rix <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
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
	linux-wireless <linux-wireless@vger.kernel.org>, linux-sunxi@lists.linux.dev, 
	linux-cxl@vger.kernel.org, nvdimm@lists.linux.dev, 
	"open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>, linux1394-devel@lists.sourceforge.net, 
	linux-fpga@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-hyperv@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-i3c@lists.infradead.org, industrypack-devel@lists.sourceforge.net, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linux-mmc <linux-mmc@vger.kernel.org>, 
	netdev <netdev@vger.kernel.org>, linux-ntb@googlegroups.com, 
	PCI <linux-pci@vger.kernel.org>, platform-driver-x86@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	Linux-ALSA <alsa-devel@alsa-project.org>, linux-arm-msm <linux-arm-msm@vger.kernel.org>, 
	linux-spi@vger.kernel.org, linux-staging@lists.linux.dev, 
	greybus-dev@lists.linaro.org, target-devel@vger.kernel.org, 
	linux-usb <linux-usb@vger.kernel.org>, linux-serial@vger.kernel.org, 
	virtualization@lists.linux-foundation.org, kvm@vger.kernel.org, 
	xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: wens@csie.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wens213@gmail.com designates 209.85.221.49 as
 permitted sender) smtp.mailfrom=wens213@gmail.com
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

On Tue, Jul 6, 2021 at 5:54 PM Uwe Kleine-K=C3=B6nig
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

>  drivers/bus/sunxi-rsb.c                   | 4 +---

Acked-by: Chen-Yu Tsai <wens@csie.org>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAGb2v65WCwDkCzf26urwM91nEWGPAzMHSMFX73WQsFQoWhr8JA%40mail.gmail.=
com.

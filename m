Return-Path: <linux-ntb+bncBCQJP74GSUDRBYWHXKDQMGQEQ72NTKQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AE1C3C807C
	for <lists+linux-ntb@lfdr.de>; Wed, 14 Jul 2021 10:44:20 +0200 (CEST)
Received: by mail-vs1-xe3b.google.com with SMTP id b200-20020a6780d10000b029028a15393c64sf789243vsd.2
        for <lists+linux-ntb@lfdr.de>; Wed, 14 Jul 2021 01:44:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626252259; cv=pass;
        d=google.com; s=arc-20160816;
        b=eXUC8R3x3tjLpfxj8RCPskhDLMshzdt4Ah0YUZTt5lmBUEZskwuQTB7c2F88Q4/hbb
         16jjmabL5l9rYCRUQFBeJDcfbdPpzMrfW6GImFGMKlRWvkLxAjXKeU/wmwu1EW3bdXVE
         4qtqy0x6yXmDTLXvSTBE+sLNvHtJiScJxkQH0Qlppe55s/LljK+kLH8UbqWTLIIbF1SX
         FWVMZKiB+QofzMvw8mIwMAYR8muEAPyFhAfTZ4VmzkHH2F52rLdJpCwnEni8zGwlNhXa
         x/jarJTo2hBajLTWiqXPINrrEHCeTempdVOUtM5YHN1KQRlGASWY8RXYnkep63uKJ5dG
         /J7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=C8uyO4My8a7fCpBqR1i4iheHrgiNC7c1A/FHP/hT76s=;
        b=BoTsULKW/2iaIspoz1lbHxRVJNZPKkvRzXSpp2x9mSyMpmo0D7BoWaseHEQgXuPNb3
         B+wyiTmjEpy4FFOpaeVvFJoY80UWB28FiwtrEJHUNpIE/y+b4BpcGXKsu2liN4s3xL+S
         IyV4k7IEHNjy90Fo1EpIms1+g7m1wUT2gYBbUZ0HEMpph12f9WxnoJUFSTfeTOJkTcfR
         Bka51z8wW8qqEoKk7gCyx0cyjUGN4IsVNqL25gGbbqEbca0PVSbedZ1YpPujssv0a4ee
         HgoWzv3D501yiY67KwN1Odv7oE0Xn+hMaTQKs7zNyMAHvM8u9ek8UK+48K/Rp3HMZCeJ
         MfTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.222.54 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=C8uyO4My8a7fCpBqR1i4iheHrgiNC7c1A/FHP/hT76s=;
        b=Y3zwJkwhSVnuJfo+B3mYjWyjo/bOVZGJok6q38qXdenASo/3qAFY3wmlsmuzvBiw2q
         3/YGRSuKMKF/K04xYE8VW76pXJXQk2X6dOnfG6mj/JgEd37GvRopChPvDuLAImvVpRoX
         WoCRLwFXjAplvSOJGI4p9UytsADBvLfapMXtlFieqZU2O4EDuwQt0FfXrL7fq4xgK2zm
         x0XsnwCK7/K/1ENx+buxRGuwVBg7ukwO11/fGCsFdqE74lgRhiwUtBXX5wA3hTMR5DCn
         mnWzpexKfwFWaimhQb8k5F4m35Tu3FJP258p2OK0wlnHQrFfqhN0udk9q5AwlJbnJVpO
         YKZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=C8uyO4My8a7fCpBqR1i4iheHrgiNC7c1A/FHP/hT76s=;
        b=nyy2CKC95nZz29f1iZTf9AB68r+2mjIlHep4YAx70RhwRXqTAbf1iflu1Txf9/VSjJ
         1DtMiKYhC4A342dWcuPTkR9/xkANVcuGjW8kzHsh4SHUZcCbS+x0CB/LUNa309X3O/n4
         BsekQgeo0/KjSTiazJhV02KunGbMkT2QSZ05xH0LDMTV0fGr1pdjav6FT7KkzOOdJCYD
         6clZphHFMK9sOlVMEGCvTd4eoYcJi2Y2o/lIr02TaTKKommdoiGpVggor7nAZ/bivQRq
         9QWiwziuvLvLScLGeZGURIctWk5l3ZJxkW71UcEXlT9xojEB+TKnj1PDET5d+zed/vRq
         77/w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530fBeHO/gBV/6ofsZT2MMa+/vcpGFmMYWw1ckNf1YSFiLs3Vdck
	VGUsjAw+x7Zti35QCuZN41k=
X-Google-Smtp-Source: ABdhPJyK/9EaIqKD0gyKD9jKYs5RGtYKXalYRQ1/RlL+uULcc/7acEk9QPPen0y2RAt+q45aPzBa5g==
X-Received: by 2002:a67:ea50:: with SMTP id r16mr12565313vso.11.1626252259001;
        Wed, 14 Jul 2021 01:44:19 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:c488:: with SMTP id d8ls565572vsk.7.gmail; Wed, 14 Jul
 2021 01:44:18 -0700 (PDT)
X-Received: by 2002:a05:6102:2252:: with SMTP id e18mr12687914vsb.13.1626252258492;
        Wed, 14 Jul 2021 01:44:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626252258; cv=none;
        d=google.com; s=arc-20160816;
        b=YNMfASO6bEfm4b6GMztnoMVXwspQI43/aR9ykU8KQ8Y2FieJk3dCyLwQGF5sTw0x/w
         SGabRkZoJ7+tRoWJE9ZE8LsNgwrmJVNw2cmQKvrUBVmZsCmv8dJnEWf869ges6QvXXHv
         M7I9DS/9bq2gFjIpuTuUSkGPaB1Mi2dMDnOmAumuRaNBtry4tkbVaJjKcbGvV/K0hQo1
         Os9mH7Gjx3bdBkBb2gPWw52cax1h5TWa8HoTm4EeTwNfRwbt3EGN31GwcRQGfjM73jdh
         4Jf25y0I/tPHrDTtCJTubNLr3gJuUdng1TedAhSsE18pArCTNkkWeuTmndJIAWF/6zOx
         DoIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=r5k/nzvm++7I0kjlsxJbLPoLxldn2GkCJzAXrc4Q3tE=;
        b=udHhOt2B5SM2yPEEQ5joKSScy9IXWdaEfZ3MEOZLWAQcrrLODoL1yf9vvB3CqS8NWU
         RcH32lInKMs11tXMow1lOYWlXYvMGGQ+LUDzSgNsqIi8qlI9eOAtfIv0IEDHuq8HsI9C
         E5614UfbRsG+08bZHuMMa/m0lVMBV8bwUbfor6JuXtZnobDrZOH9wDpQjYn9PCzssYDe
         MMelCf3UjbPT8cXgFO/Ada72v0mu9qh3IyrmSw3sVIPU8s/OMOj0twROebyLnOg5SNrC
         VQgEMqZy0NCyJAUcT5FFKIx/TSyljXsqh5l2NjfQfKMgZq69PGSH1DgLzFXKZzpmqRif
         8YGQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.222.54 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com. [209.85.222.54])
        by gmr-mx.google.com with ESMTPS id s7si162490vsm.0.2021.07.14.01.44.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jul 2021 01:44:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.222.54 as permitted sender) client-ip=209.85.222.54;
Received: by mail-ua1-f54.google.com with SMTP id e20so341268ual.9
        for <linux-ntb@googlegroups.com>; Wed, 14 Jul 2021 01:44:18 -0700 (PDT)
X-Received: by 2002:a9f:3f0d:: with SMTP id h13mr12412958uaj.100.1626252258156;
 Wed, 14 Jul 2021 01:44:18 -0700 (PDT)
MIME-Version: 1.0
References: <20210713193522.1770306-1-u.kleine-koenig@pengutronix.de> <20210713193522.1770306-6-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210713193522.1770306-6-u.kleine-koenig@pengutronix.de>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jul 2021 10:44:06 +0200
Message-ID: <CAMuHMdW8r6u4O5zv2ee-3=jPP6qwnOSHdSzf8pPE_y=jY3Bn5A@mail.gmail.com>
Subject: Re: [PATCH v4 5/5] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sascha Hauer <kernel@pengutronix.de>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Alexandre Bounine <alex.bou9@gmail.com>, 
	Alex Dubov <oakad@yahoo.com>, Alex Elder <elder@kernel.org>, 
	Alex Williamson <alex.williamson@redhat.com>, Alison Schofield <alison.schofield@intel.com>, 
	Allen Hubbe <allenbh@gmail.com>, Andreas Noever <andreas.noever@gmail.com>, 
	Andy Gross <agross@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, 
	Benjamin Tissoires <benjamin.tissoires@redhat.com>, Ben Widawsky <ben.widawsky@intel.com>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Bodo Stroesser <bostroesser@gmail.com>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	Chen-Yu Tsai <wens@csie.org>, Christian Borntraeger <borntraeger@de.ibm.com>, 
	Cornelia Huck <cohuck@redhat.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Dan Williams <dan.j.williams@intel.com>, Dave Jiang <dave.jiang@intel.com>, 
	"David S. Miller" <davem@davemloft.net>, David Woodhouse <dwmw@amazon.co.uk>, 
	Dexuan Cui <decui@microsoft.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Dominik Brodowski <linux@dominikbrodowski.net>, Finn Thain <fthain@linux-m68k.org>, 
	Florian Fainelli <f.fainelli@gmail.com>, Frank Li <lznuaa@gmail.com>, 
	Geoff Levand <geoff@infradead.org>, Haiyang Zhang <haiyangz@microsoft.com>, 
	Hannes Reinecke <hare@suse.de>, Hans de Goede <hdegoede@redhat.com>, 
	Harald Freudenberger <freude@linux.ibm.com>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Heiko Carstens <hca@linux.ibm.com>, Helge Deller <deller@gmx.de>, Ira Weiny <ira.weiny@intel.com>, 
	Jakub Kicinski <kuba@kernel.org>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Jaroslav Kysela <perex@perex.cz>, 
	Jason Wang <jasowang@redhat.com>, Jens Taprogge <jens.taprogge@taprogge.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Jiri Kosina <jikos@kernel.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Joey Pabalan <jpabalanb@gmail.com>, 
	Johan Hovold <johan@kernel.org>, Johannes Berg <johannes@sipsolutions.net>, 
	Johannes Thumshirn <morbidrsa@gmail.com>, Jon Mason <jdmason@kudzu.us>, Juergen Gross <jgross@suse.com>, 
	Julien Grall <jgrall@amazon.com>, Kai-Heng Feng <kai.heng.feng@canonical.com>, 
	Kirti Wankhede <kwankhede@nvidia.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	"K. Y. Srinivasan" <kys@microsoft.com>, Lee Jones <lee.jones@linaro.org>, Len Brown <lenb@kernel.org>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Manohar Vanga <manohar.vanga@gmail.com>, 
	Marc Zyngier <maz@kernel.org>, Mark Brown <broonie@kernel.org>, Mark Gross <mgross@linux.intel.com>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Martyn Welch <martyn@welchs.me.uk>, 
	Mathieu Poirier <mathieu.poirier@linaro.org>, Matt Porter <mporter@kernel.crashing.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Maxime Ripard <mripard@kernel.org>, 
	Maximilian Luz <luzmaximilian@gmail.com>, Maxim Levitsky <maximlevitsky@gmail.com>, 
	Michael Buesch <m@bues.ch>, Michael Ellerman <mpe@ellerman.id.au>, Michael Jamet <michael.jamet@intel.com>, 
	"Michael S. Tsirkin" <mst@redhat.com>, Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Mike Christie <michael.christie@oracle.com>, Moritz Fischer <mdf@kernel.org>, 
	Ohad Ben-Cohen <ohad@wizery.com>, =?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	Paul Mackerras <paulus@samba.org>, Peter Oberparleiter <oberpar@linux.ibm.com>, 
	"Rafael J. Wysocki" <rjw@rjwysocki.net>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Rich Felker <dalias@libc.org>, Rikard Falkeborn <rikard.falkeborn@gmail.com>, 
	Rob Herring <robh@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>, Samuel Holland <samuel@sholland.org>, 
	Samuel Iglesias Gonsalvez <siglesias@igalia.com>, SeongJae Park <sjpark@amazon.de>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, 
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, 
	Stefano Stabellini <sstabellini@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>, 
	Stephen Boyd <sboyd@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Sven Van Asbroeck <TheSven73@gmail.com>, 
	Takashi Iwai <tiwai@suse.com>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Thorsten Scherer <t.scherer@eckelmann.de>, Tomas Winkler <tomas.winkler@intel.com>, 
	Tom Rix <trix@redhat.com>, Tyrel Datwyler <tyreld@linux.ibm.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Vasily Gorbik <gor@linux.ibm.com>, 
	Vineeth Vijayan <vneethv@linux.ibm.com>, Vinod Koul <vkoul@kernel.org>, 
	Vishal Verma <vishal.l.verma@intel.com>, Wei Liu <wei.liu@kernel.org>, 
	William Breathitt Gray <vilhelm.gray@gmail.com>, Wolfram Sang <wsa@kernel.org>, Wu Hao <hao.wu@intel.com>, 
	Yehezkel Bernat <YehezkelShB@gmail.com>, Yoshinori Sato <ysato@users.sourceforge.jp>, 
	YueHaibing <yuehaibing@huawei.com>, Yufen Yu <yuyufen@huawei.com>, alsa-devel@alsa-project.org, 
	dmaengine@vger.kernel.org, greybus-dev@lists.linaro.org, 
	industrypack-devel@lists.sourceforge.net, kvm@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, linux-acpi@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-cxl@vger.kernel.org, linux-fpga@vger.kernel.org, 
	linux-hyperv@vger.kernel.org, linux-i2c@vger.kernel.org, 
	linux-i3c@lists.infradead.org, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-m68k@lists.linux-m68k.org, 
	linux-media@vger.kernel.org, linux-mips@vger.kernel.org, 
	linux-mmc@vger.kernel.org, linux-ntb@googlegroups.com, 
	linux-parisc@vger.kernel.org, linux-pci@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-remoteproc@vger.kernel.org, 
	linux-s390@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-sh@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-staging@lists.linux.dev, 
	linux-sunxi@lists.linux.dev, linux-usb@vger.kernel.org, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	nvdimm@lists.linux.dev, platform-driver-x86@vger.kernel.org, 
	sparclinux@vger.kernel.org, target-devel@vger.kernel.org, 
	virtualization@lists.linux-foundation.org, xen-devel@lists.xenproject.org, 
	Johannes Thumshirn <jth@kernel.org>, "Rafael J . Wysocki" <rafael@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: geert@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of geert.uytterhoeven@gmail.com designates 209.85.222.54
 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
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

On Tue, Jul 13, 2021 at 9:35 PM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
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

>  drivers/zorro/zorro-driver.c              | 3 +--

Acked-by: Geert Uytterhoeven <geert@linux-m68k.org>

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAMuHMdW8r6u4O5zv2ee-3%3DjPP6qwnOSHdSzf8pPE_y%3DjY3Bn5A%40mail.gm=
ail.com.

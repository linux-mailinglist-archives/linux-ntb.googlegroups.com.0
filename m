Return-Path: <linux-ntb+bncBDPL7R4J6AKRBKUMYGDQMGQE43YTROI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x639.google.com (mail-ej1-x639.google.com [IPv6:2a00:1450:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E00E13CA0AF
	for <lists+linux-ntb@lfdr.de>; Thu, 15 Jul 2021 16:28:58 +0200 (CEST)
Received: by mail-ej1-x639.google.com with SMTP id nc15-20020a1709071c0fb029052883e9de3esf2263853ejc.19
        for <lists+linux-ntb@lfdr.de>; Thu, 15 Jul 2021 07:28:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626359338; cv=pass;
        d=google.com; s=arc-20160816;
        b=a+AXdvVGBggfZYKOnhM3l+t7eqNPhfUyQve/5O2gG0CwAs8zebgwpfrO8qlh+U20Mq
         pxP0oN9LGyB1PkTmSnmoQDs/fKjHq/hovhaiwiCTjQyZdFOQxgDR+rl87L/xTP7aHCuQ
         zwunXsLIZ5Ty1JGvWJqSl5JgmFehNqzz+7FfYHKJY+vihpSPmidj3nB3TW55GGC9+p51
         ZCUEm0IfiEuNSL/87L0+EIPaFoVPfIpciyDq9Ymv7ZuT5oN+uw9hMjFY/vEBZswpBcG9
         QXEShDpFUh+EtVJDnUMSWvJDE95bYSpqU152YORM2BSR9fvroyBxiwNeaAHjl2vzaG1g
         D6Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ffvfReFmfeNEvWlyLOk1xEuAo0aHS00yyvtJS5MKvls=;
        b=BWzsdaZZAHly/ursE8+bf6ZJrNgBecETJelrp4xAzmqXi/bDCWLj5AWQd2K6wtxyDg
         xzW9nuEJJfEKLPx7GZ+WIMK2OE1Kdn8AGIbW6FXotH5WSODUy5DKpJ++9q4le9t41ztw
         8EIoHGzrBA6P/vOl9ue3he3wCh9SSJvZC0jbDQEYQLgOAJyR3rEHisIloLoQVzI6uJnh
         bgQxk0p3WkhQRwbzbl0NdNDwsI7ZELy6jLIy+1VTX9A3QF+FwaRj4ztN3x7htvfWJ0Wl
         X8JMT+/c7CwLeHjFH0KJyilLPg+OkVnidx1JGqElcN5NDY0fkF5piF7drmz3truaD9KY
         si2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ffvfReFmfeNEvWlyLOk1xEuAo0aHS00yyvtJS5MKvls=;
        b=N62s4+101fFzgAX2lEZovCKX7L9LxMtnkmidoGZHKYDS50LxdblMXDO5XGo3Q8KZ9/
         oXDul+2v/OYDHhJ3gwdwXJnEVEOI4pcXuMtZejoXkxNmLLkWsEulV4aD0I4bRiODOUyi
         rxFBqMZqeMQbZx8pI4rtYiRsF2RuEUPTl8dkUDUwZuZQUMBLE0TeB8VUcI/W6GPxxufy
         fafxEFs50GU1SnNuwgStlk4SAIwK/DcWX6YCe/Kt0iQ+skEqE+lOPel6+OqvjI5WRog4
         tj/8qpEESX4PFgGJBkiiDusM34aaD3j9Ot8dIq9JOivJJJYqLxPkS+ZDf14gQLCtJGsc
         092A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ffvfReFmfeNEvWlyLOk1xEuAo0aHS00yyvtJS5MKvls=;
        b=K/OeInWgjHAvTn7QDQLu3MM6Ud1NnLYCfRR2Mt8ATd1OzJr4F30TswiAV0fPAvbXze
         0yLYcI0iVBd3COciP6uHjBbHEoZjwWtOqDBBuT3+fVvRskNcjkSSxjAlDXC+oD5jma69
         jOgQHq5NLCSogAgAQ8T8+jtf/sPzm30PUmfs0DF/vLfcy8hR0OyyXGps07igRgaDKQTe
         mshGkIihhJcF6k7kGBmQ8gVefYDh+6lubP1ptK2jmhO/oxkBhBz+ii5K5F5F/TisPD+V
         arlUCEuuF574DFSLRpMe3kbmbPt7BPxLaBRL8/4NOtBAtl+GWMm8xdW5ZIECmxk3m3fs
         BxcQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532P8lMULmERDPwnOc3sYu1ioFuDjKWRSFjsuNiaBgRtlJdNr8Nl
	eY5L3xoS+ioQKWoAwZY6Udc=
X-Google-Smtp-Source: ABdhPJxmgRWzW8GqVT04ZkKK1TxB1se8x5lCRmgFn5SNmHXmbgrFaNQiRPInPhYWtJlBI+OosTpdLg==
X-Received: by 2002:a17:907:1def:: with SMTP id og47mr5899612ejc.51.1626359338651;
        Thu, 15 Jul 2021 07:28:58 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:510:: with SMTP id j16ls3180078eja.10.gmail; Thu, 15
 Jul 2021 07:28:57 -0700 (PDT)
X-Received: by 2002:a17:906:6c91:: with SMTP id s17mr5701825ejr.403.1626359337771;
        Thu, 15 Jul 2021 07:28:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626359337; cv=none;
        d=google.com; s=arc-20160816;
        b=qEXkjND3sqnpDWFmx0kQNUi3l4F0krBAEROIdPSDcKBe7J7aVmu0SiicmkeUyNMuQq
         ps3VChxtp96w8jJp5gVl4SwgP9BJ3AbvQAxoyRbKK4XNkPOTBLZiD6imixqs3TfvahsA
         YKtmdvs++QmQPss0mXNIIDH3z9QbSkYB4cx+aUUn1pxOMSQhyh5jU+sR+5/8s23BVMdk
         bbA5B5MXymO9BvR38cSPBkQTYY/Umajow3MXa/SDTi5UX63fcazef31oQBfuU7R3gfUu
         jfavRihqbEtJXx3rmUH8lurD2jy2Pw5bE2WuqKouFiVHzIWiEzXWL/yUGubtHcAQoNMk
         BgMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=T7hrB22dkVMKCgcKkHX/7TYDYzh4/qVfRTOart1qjjM=;
        b=JuOlu0RLAeZ886a0zRnBWnhmqIXWcBxAlwQvSLlbyk4NCR73IdyKNt89fUzvMhx2i1
         /HVvuMIZjoHZEtN2CxDZ8VPGWdRR/7AE6/aZVPa2tDqC6tKDBB7aN75np8vMmhJsXslv
         7fM0b6+sUEr3mlT6fxdmzRxjFzDwlbxnHX436h70V3cTAbwSouBJeP1y8y+Ja1l64cWO
         fFMNyScpiY2Pk5tEdAbK8+XMOvqGT/XWJTsR87calE3sClPEDYKWaeaSfEfcFxJzb0pS
         YGI0w7jihOSgr4L0sRnr2SRx/PMlO5RyxU07H7ZU9d4yTRPQELGazLAj4ZTHIkfEuu/1
         kUFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
Received: from elvis.franken.de (elvis.franken.de. [193.175.24.41])
        by gmr-mx.google.com with ESMTP id 24si213578edv.0.2021.07.15.07.28.57
        for <linux-ntb@googlegroups.com>;
        Thu, 15 Jul 2021 07:28:57 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of tsbogend@alpha.franken.de designates 193.175.24.41 as permitted sender) client-ip=193.175.24.41;
Received: from uucp (helo=alpha)
	by elvis.franken.de with local-bsmtp (Exim 3.36 #1)
	id 1m42Ly-0004w9-00; Thu, 15 Jul 2021 16:28:42 +0200
Received: by alpha.franken.de (Postfix, from userid 1000)
	id AC72DC099E; Thu, 15 Jul 2021 15:02:21 +0200 (CEST)
Date: Thu, 15 Jul 2021 15:02:21 +0200
From: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de,
	Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
	Russell King <linux@armlinux.org.uk>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>, Geoff Levand <geoff@infradead.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Len Brown <lenb@kernel.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
	Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Alison Schofield <alison.schofield@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Ben Widawsky <ben.widawsky@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Dave Jiang <dave.jiang@intel.com>, Vinod Koul <vkoul@kernel.org>,
	Stefan Richter <stefanr@s5r6.in-berlin.de>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Wu Hao <hao.wu@intel.com>, Tom Rix <trix@redhat.com>,
	Moritz Fischer <mdf@kernel.org>, Jiri Kosina <jikos@kernel.org>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>, Dexuan Cui <decui@microsoft.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Wolfram Sang <wsa@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Samuel Iglesias Gonsalvez <siglesias@igalia.com>,
	Jens Taprogge <jens.taprogge@taprogge.org>,
	Johannes Thumshirn <morbidrsa@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maxim Levitsky <maximlevitsky@gmail.com>,
	Alex Dubov <oakad@yahoo.com>, Ulf Hansson <ulf.hansson@linaro.org>,
	Lee Jones <lee.jones@linaro.org>,
	Tomas Winkler <tomas.winkler@intel.com>,
	Arnd Bergmann <arnd@arndb.de>, Jakub Kicinski <kuba@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	Maximilian Luz <luzmaximilian@gmail.com>,
	Hans de Goede <hdegoede@redhat.com>,
	Mark Gross <mgross@linux.intel.com>,
	Matt Porter <mporter@kernel.crashing.org>,
	Alexandre Bounine <alex.bou9@gmail.com>,
	Ohad Ben-Cohen <ohad@wizery.com>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Thorsten Scherer <t.scherer@eckelmann.de>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Andy Gross <agross@kernel.org>, Mark Brown <broonie@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>, Michael Buesch <m@bues.ch>,
	Sven Van Asbroeck <TheSven73@gmail.com>,
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Andreas Noever <andreas.noever@gmail.com>,
	Michael Jamet <michael.jamet@intel.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Yehezkel Bernat <YehezkelShB@gmail.com>,
	Rob Herring <robh@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	Kirti Wankhede <kwankhede@nvidia.com>,
	Alex Williamson <alex.williamson@redhat.com>,
	Martyn Welch <martyn@welchs.me.uk>,
	Manohar Vanga <manohar.vanga@gmail.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Juergen Gross <jgross@suse.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Johannes Berg <johannes@sipsolutions.net>,
	Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
	Marc Zyngier <maz@kernel.org>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Samuel Holland <samuel@sholland.org>,
	Qinglang Miao <miaoqinglang@huawei.com>,
	Alexey Kardashevskiy <aik@ozlabs.ru>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	Joey Pabalan <jpabalanb@gmail.com>,
	Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Frank Li <lznuaa@gmail.com>,
	Mike Christie <michael.christie@oracle.com>,
	Bodo Stroesser <bostroesser@gmail.com>,
	Hannes Reinecke <hare@suse.de>, David Woodhouse <dwmw@amazon.co.uk>,
	SeongJae Park <sjpark@amazon.de>, Julien Grall <jgrall@amazon.com>,
	linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
	linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
	linux-acpi@vger.kernel.org, linux-wireless@vger.kernel.org,
	linux-sunxi@lists.linux.dev, linux-cxl@vger.kernel.org,
	nvdimm@lists.linux.dev, dmaengine@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net, linux-fpga@vger.kernel.org,
	linux-input@vger.kernel.org, linux-hyperv@vger.kernel.org,
	linux-i2c@vger.kernel.org, linux-i3c@lists.infradead.org,
	industrypack-devel@lists.sourceforge.net,
	linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org, linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org, platform-driver-x86@vger.kernel.org,
	linux-remoteproc@vger.kernel.org, linux-scsi@vger.kernel.org,
	alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
	linux-spi@vger.kernel.org, linux-staging@lists.linux.dev,
	greybus-dev@lists.linaro.org, target-devel@vger.kernel.org,
	linux-usb@vger.kernel.org, linux-serial@vger.kernel.org,
	virtualization@lists.linux-foundation.org, kvm@vger.kernel.org,
	xen-devel@lists.xenproject.org,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Johannes Thumshirn <jth@kernel.org>
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
Message-ID: <20210715130221.GA10298@alpha.franken.de>
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: tsbogend@alpha.franken.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of tsbogend@alpha.franken.de
 designates 193.175.24.41 as permitted sender) smtp.mailfrom=tsbogend@alpha.franken.de
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

On Tue, Jul 06, 2021 at 05:48:03PM +0200, Uwe Kleine-K=C3=B6nig wrote:
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
> Acked-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk> (For ARM, Am=
ba and related parts)
> Acked-by: Mark Brown <broonie@kernel.org>
> Acked-by: Chen-Yu Tsai <wens@csie.org> (for drivers/bus/sunxi-rsb.c)
> Acked-by: Pali Roh=C3=A1r <pali@kernel.org>
> Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org> (for drivers/media)
> Acked-by: Hans de Goede <hdegoede@redhat.com> (For drivers/platform)
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Acked-By: Vinod Koul <vkoul@kernel.org>
> Acked-by: Juergen Gross <jgross@suse.com> (For Xen)
> Acked-by: Lee Jones <lee.jones@linaro.org> (For drivers/mfd)
> Acked-by: Johannes Thumshirn <jth@kernel.org> (For drivers/mcb)
> Acked-by: Johan Hovold <johan@kernel.org>
> Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org> (For drive=
rs/slimbus)
> Acked-by: Kirti Wankhede <kwankhede@nvidia.com> (For drivers/vfio)
> Acked-by: Maximilian Luz <luzmaximilian@gmail.com>
> Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com> (For ulpi and=
 typec)
> Acked-by: Samuel Iglesias Gons=C3=A1lvez <siglesias@igalia.com> (For ipac=
k)
> Reviewed-by: Tom Rix <trix@redhat.com> (For fpga)
> Acked-by: Geoff Levand <geoff@infradead.org> (For ps3)
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
> [...]=20
>  arch/mips/sgi-ip22/ip22-gio.c             | 3 +--

Acked-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>

--=20
Crap can work. Given enough thrust pigs will fly, but it's not necessarily =
a
good idea.                                                [ RFC1925, 2.3 ]

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20210715130221.GA10298%40alpha.franken.de.

Return-Path: <linux-ntb+bncBCX3TTWUQMPRB5ODSKDQMGQEG6MRUOI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC753BDD34
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 20:33:26 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id t1-20020a2e9d010000b02900f5b2b52da7sf9172828lji.8
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 11:33:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625596405; cv=pass;
        d=google.com; s=arc-20160816;
        b=zff0l/6DOtEJbBd2gRwmy/8FmQV4ffy7SNQnUwj6VO0vvUwkyj8CvqK0ElPZswBn21
         soA8s24kFScqcigaKJde3VBzBHR45vR80IgEmRKeeDRl14T/YdR015vpTz5wH9NUcWfF
         88qNtGL6juOHHFkj4Jf1oUvdbShx16bM7Wvl4URU99psOhqQXnUvaflUaAxzHvToPRz6
         65s1BMfhwiwR+qyMYryplHsS3HMC2iCCbtZa4rrNIEv5qvdjVuvMwMT4x2gOLaZjPT42
         j6fL5cDS3++8Npd5WVkEo1NZaptjxhXzn4hbngW1sN5tya/AVhxh3KLrJoHI2t+jOE39
         2Y5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OGkw6q8nf1Bhz3o/wujRykvGXFReD44UFYCNoqAqW+s=;
        b=OO6Lo8T0U08Od93rJ/9Q9uORES4rs344L1FPZfLTYhnhgaCHtXBE7+ja85n4/iYyzp
         feF9akKvpFBz6zHDMYJjxizCnWbVtz3pr5Q15S2AUYAl/EQfLfID3vbgts+LP1Eh9EAu
         1pGX2iOiHnYl1O6SGobHr79qffD3AswIIw1acXWftICJ3AVZ8KYPx5yepOZLvTE0UGOs
         cxtkOd2nlS5CbxuuHrr5Ls3xGTskg3AJ4Kne00FKrK66LDYdXJ60CqUTQevG6juoQ3pM
         Io/PDdeOVCEkM6AKbAnkFlw/cHJ+FA67pr+ZzC8Bl+7sSjAq5XnDLIlYU8Bc32kY+dYg
         9CZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OGkw6q8nf1Bhz3o/wujRykvGXFReD44UFYCNoqAqW+s=;
        b=RGIWQV4HcLij1BLv8HaXE5z9Yxv2DlGZSuOAzKlXMUA2UXZl2mHl/4LmSjzGcfsnf/
         OPfADP9T+pUjI3PMHZVfCmRqDM4TNrNa82Sb7BCLypxV+eG6PQGqzVw2IP8m0ivqmU+C
         QcD0Y7WzCTxZhk6BH6vl2LS3CJYbTIwzk14EeZHJPDiu1v7FT1+3tE52BIAV0p1QnI91
         +DleToXHbVqfeg1oN751sxKIwsmS27863aNZfJKymtE1mhr8utMXbPYKmi3dJKA24dCi
         D1esOZp6QynjSUKnkijNbqEaNNlyn5ur1adIobsasbmah30N7tMpfrHYtqmaku+eplis
         5zXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OGkw6q8nf1Bhz3o/wujRykvGXFReD44UFYCNoqAqW+s=;
        b=Az5ktCGtmaK0h44nwTSFE8kUBFZdNt7ZVQ1S9PgEZ65oj3tUk6yqVKFNNhakD6O09t
         1i5rSDY6/23pcBNDUJgFR25LwOQLrB1gdtyMhP/wsvBF207m3rsuIDRhtB9Fue2FQ/qi
         mpx5rUjyktg01mIY4b2TIuIHLN2QpqMZb12LW2gNpazHEfvdYQkFe6W1NP9ANKeQs1m1
         fPxQOGS3chopbKLw29SIrF0aDthG+u2e+XoazP3LOzXOlTCxMyy+TUxgksiCv1BWYSl3
         JXvg9G9GVPS/2rncnzKZv8E090QitW9B6zaq8sYRfeJb2AoNjVg+C9XYLzu3xvBi79ZP
         nFFA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531EGdrQYRMDnGAYno1ZNVkXVw/bM6cymYUB7v0bGt477heXOIlp
	d27y7q34lVboBhy6qMmr15U=
X-Google-Smtp-Source: ABdhPJw9w6pDGyL3zX4vuhNgFKjEc3RB5BJDTwQzdUple+CcRKhiKUC1qWUc/0cjolK+GNZyMyNErQ==
X-Received: by 2002:a19:f505:: with SMTP id j5mr16262976lfb.126.1625596405647;
        Tue, 06 Jul 2021 11:33:25 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:508b:: with SMTP id f11ls1478138lfm.2.gmail; Tue, 06 Jul
 2021 11:33:24 -0700 (PDT)
X-Received: by 2002:a19:c795:: with SMTP id x143mr15204569lff.354.1625596404493;
        Tue, 06 Jul 2021 11:33:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625596404; cv=none;
        d=google.com; s=arc-20160816;
        b=f1sEbl8WLxBRT3nm0nPaKhuvsLRMr5SMUSNb6qQSaKqevCVoYL0hMoXyuM++ClAjQL
         YQelHuq3KPSIUiy9FTmach+NV9UmyoqEy5xv/OtlPNXxVhIbwN3pb2ImI3cMgdLyU2bE
         tX5K0mdo5UkzidW3EoTISdGKs3O9fhhtF3teg0D3ELURWt07vZBRgf7qIkP2sG49YoC/
         +YOAGFlU3vdh3aSrD8K6JUBRWGfxfS2qQmyEStH+3+sdVJpwOQO2BWC0KrIvvXBBdNgW
         7gtbD54SMoZQt1dhFfyxyAslLvJMJhnrlGNN+DmV1M934nlTuvVAblInDqirBbeZIX9X
         1yFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=P0aCJaLITjI7WDvYcDRMBdR6D7VOBjn+2isTBrQhPjc=;
        b=Pq6cgsNgBBnv8eAYdfqiuBlT9zSV2uUmLgvxALOHUWXaPdgx+De4SlcvaknjTzfBF4
         hDUVFygivFrIqhteX9dX2299hJUcHOmVmo70qmF4QhJYglBUvp6lHCTodnJxU1iPJUpF
         ZtCH0w85yJ3vmcJc44fF6c4gJh2ghyhLv3V96bYE6JYuf/WX00+UNCldxv0bVQSrtxVx
         PP/Jv3W22D5r+S64d5dDbfRgCGJSib7+cXmL/dNMA5HXq00RjJwRjC1iM5vbRRLwZ2n6
         bFWykJSsOcELD1ouYslYNkjWQme31lGWHb+F9T5cLqpZeSA6Ya8mVoU/7Qe0hAT+puny
         UktA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id n127si9669lfa.7.2021.07.06.11.33.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 11:33:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0ps1-0007tV-Rc; Tue, 06 Jul 2021 20:32:33 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0prk-0001yq-8e; Tue, 06 Jul 2021 20:32:16 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0prk-0004ND-2r; Tue, 06 Jul 2021 20:32:16 +0200
Date: Tue, 6 Jul 2021 20:32:15 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: nvdimm@lists.linux.dev, Alexey Kardashevskiy <aik@ozlabs.ru>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Samuel Iglesias Gonsalvez <siglesias@igalia.com>,
	Jens Taprogge <jens.taprogge@taprogge.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Jaroslav Kysela <perex@perex.cz>,
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
	Geoff Levand <geoff@infradead.org>, linux-fpga@vger.kernel.org,
	linux-usb@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
	linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
	Thorsten Scherer <t.scherer@eckelmann.de>, kernel@pengutronix.de,
	Jon Mason <jdmason@kudzu.us>, linux-ntb@googlegroups.com,
	Wu Hao <hao.wu@intel.com>, David Woodhouse <dwmw@amazon.co.uk>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Manohar Vanga <manohar.vanga@gmail.com>,
	linux-wireless@vger.kernel.org,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	virtualization@lists.linux-foundation.org,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	target-devel@vger.kernel.org,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	linux-i2c@vger.kernel.org,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Ira Weiny <ira.weiny@intel.com>, Helge Deller <deller@gmx.de>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
	industrypack-devel@lists.sourceforge.net,
	linux-mips@vger.kernel.org, Len Brown <lenb@kernel.org>,
	alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
	linux-media@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
	Johan Hovold <johan@kernel.org>, greybus-dev@lists.linaro.org,
	Bjorn Helgaas <bhelgaas@google.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	linux-arm-kernel@lists.infradead.org,
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
	netdev@vger.kernel.org, Qinglang Miao <miaoqinglang@huawei.com>,
	Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh@kernel.org>,
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
	Russell King <rmk+kernel@armlinux.org.uk>,
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
	"David S. Miller" <davem@davemloft.net>,
	Sven Van Asbroeck <TheSven73@gmail.com>, kvm@vger.kernel.org,
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
	Johannes Thumshirn <jth@kernel.org>,
	Maximilian Luz <luzmaximilian@gmail.com>
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
Message-ID: <20210706183215.tcd7i4pwz2gxtxtb@pengutronix.de>
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="q2vlxiybuwkj6z7s"
Content-Disposition: inline
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
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


--q2vlxiybuwkj6z7s
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hello,

v1 was acked by some more after I stopped looking in my mailbox while
preparing v2:

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

Acked-by: Yehezkel Bernat <YehezkelShB@gmail.com> (For thunderbolt)
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Acked-by: Alexander Shishkin <alexander.shishkin@linux.intel.com> (For inte=
l_th)
Acked-by: Dominik Brodowski <linux@dominikbrodowski.net> (For pcmcia)

> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

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
linux-ntb/20210706183215.tcd7i4pwz2gxtxtb%40pengutronix.de.

--q2vlxiybuwkj6z7s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmDkoawACgkQwfwUeK3K
7AkRFgf/Qj+Sw4DQa5XQzuIke1atkI5Z9SH6bby9lfgLCjU/9fFWokjZXUFUlHEd
p6KCgzwG5JD4RoIVKyntr/S7rR3FlCH5aMtgDi4xzKWybmOwAdP5XCSzU6ois1Cd
G76Gg954N8CBAyFE6c0p18Fu1R1fscGQQDIF6yrUJ6p9WbpckBTw8xuX/AOicKcu
r9s0okuUVqJmb0eM1Io+LGgjIvSLaUPl2lFnllwI6ztli3Wwo3NhHhy0iFZN9q1n
IAXVYkylaIeq6hoC+Fo0NN0/ZNZRsV+s2qlzlaQkj8zQmyYqfN369rEDpTajwdlU
JoOxFMsceOjeYMAEfCEfUeEBRom3lw==
=mbzo
-----END PGP SIGNATURE-----

--q2vlxiybuwkj6z7s--

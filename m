Return-Path: <linux-ntb+bncBCX3TTWUQMPRB4ESSGDQMGQEJ6DCTMQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0A83BD4E7
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 14:15:45 +0200 (CEST)
Received: by mail-lj1-x23d.google.com with SMTP id o8-20020a2e9b480000b029017dbdf755f5sf8415532ljj.0
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 05:15:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625573745; cv=pass;
        d=google.com; s=arc-20160816;
        b=aRsr3tXmAD9Z8Cx1CxIW5k/2Rabg02XZnMJz+zgXx5UIC2Pza7yt81PW5pIfn2giTE
         tB3mUUkW4FaF9OK2GUnknXXeNmI34/zv6KVyULUgUSxPLl/l5eaAYSXQcfZw2J9hHy1M
         XFV1yK42RAcyaEQVlcCp8kjov897uFQm/nHjSuXSZd8TGufLWEjYEQHBpT/8FXPmNXOH
         Dv65B7VeCHcsPYxM8244n5DzQrTCZ8eiQ0BeT2HVR/d5LjMUKohEkdiruq6ZfAOhjXX6
         J6QfnqNA0Zk1ef4D6/DZYcRRlc1lYcBnYal+Y5AWnwBnBpNx4ArRMzAtPPAaRU+rvOOi
         DQRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=p1cC86VsR3SwcW4rPbwIqBYOEloYih/hlzH0XosnE3E=;
        b=GS/7UjSlIOw5Ua8wCT+D6OHIJYodLbcenIDD+cFVtl6rzL8VIhEYYueXlKNyIUHRKx
         wU9VqjwSBrY05+cRSB3fcavGJ6TaXEjQFiMY4VwSGuF76BLP7+QOG/aQVem/onjDvYga
         CWy35HYKUOa1lhdDKNhdEsYaftBvNeHO0kf7+NZZifPbqIvWaHC7d26egt4VrCbml4O4
         +EL5NlmMomV3BVT7xLTpGQAh3lkuytCGWjomtSAnfjqai9lo4VpDWk3oZBCxdXMPCfI5
         hMd/gl1uWPUjBVGmZcZJnMP2lGmBtONlXCP11riR8KzbcoCwtCSHyZ71vw0zCUmJJQAb
         gbrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=p1cC86VsR3SwcW4rPbwIqBYOEloYih/hlzH0XosnE3E=;
        b=hJ3S+PG9kzmgv+h9qtoRkhEuMVaI8tBAtdr0Qfj26OG1Px2p2ENuttIszC7fU8yzQj
         O548S3bxoMm2YBOl8qID9u8LTlrQfdXgUt5cesp2Fk7ep8lkUhTCmzZzPdiGzTULuF/E
         gddcWp8559mK3W1llhlTcgCiijxSdORdTAY5d1pvuVy3Zx+LiuuJcF6/5AqzlDlD6ZB9
         U71iybmmwO3mDBPba+9/+RTF45WcyphOYDEFv1sclEORqQ5o8T/du9Lzt0BECXuTv3pY
         B27dPL8dGiJ8ttG45rezaSVIDdjEbtEmJABm991NdFi14pu3nw0hZNcKBPBV/QsObUaq
         BZ2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=p1cC86VsR3SwcW4rPbwIqBYOEloYih/hlzH0XosnE3E=;
        b=JcxtLL3M8jb4evsjUF1Za6Irhck76+Itly8fR4YF/ENdUAgzSVt8taGuctAgZOf5qU
         7MoZwe2+SVRou+sW1P2cyaZkHHkYCj2vutbRuZdtvZBzvR/o8UpWPyAxs79oroKUpmnw
         oZNJI9CM0MC3VShG3nhJYFqrGKLF4/K1BdArzAtOk/6lETva+nm6TfCXmsDklavkOEHS
         WJWD+ov3o/AB+ySZlqXDNoXmcbWzGVBTzZZdWy4IALaDkFbQciHny2mooAJoP2SW0wij
         d6MMcw2HfE3i5wlvPdmlGEGtYb1HVO9NFW5wJiHzXQUevYQSFXau4XsmTrZjPwecTJjG
         Co/A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531nKFeZ0j+7FCei2DqxDGb86XCf9ML6jpCeEGbFR5WT9a8MODE5
	TG5iZ40ONFAg5fa11E/GyS4=
X-Google-Smtp-Source: ABdhPJxBBnsvnktV+ZxEjP4nVLZ92N7W2EG7C4ItgorKjLWVkG3/lnWrvncK97A2aK9tJu9kzDUWSw==
X-Received: by 2002:ac2:5d2e:: with SMTP id i14mr13960596lfb.642.1625573745002;
        Tue, 06 Jul 2021 05:15:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:1799:: with SMTP id bn25ls3552038ljb.3.gmail; Tue,
 06 Jul 2021 05:15:44 -0700 (PDT)
X-Received: by 2002:a2e:9e16:: with SMTP id e22mr14624424ljk.447.1625573743910;
        Tue, 06 Jul 2021 05:15:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625573743; cv=none;
        d=google.com; s=arc-20160816;
        b=KAzUqXs0Splk+lTRN+qLoE+oZYT2C1151+dr4ZS1R8KIU33KGt3mA5+YrSC+/G3O0x
         P9vJZs/+BL8cnJlEYLWCqtNT0/QivAqSdZyUutMazFQ8Md4/jKTmzQYn7luEOE5Pd52I
         Ier5Wxj9LEP/TOo1M92grsCVvbjWNtmj1W0TNOl03c0MFv2KDNuu7DQmMK5tRBoqfsJk
         66e4yf5Wuzl6IDmU4/NbBdsC8YOBlqSTNZVUNVqG0nku6tYd8Z2IsAsavpJIdWQWjEY3
         XKYl4D39l1x/ig4Nzvp07xTqepRwIOdV8WpGKjiKGxQww3xfizWCntZMaawrjhQFXE3f
         4caQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=a4eO+l0q0Agy6EJihXFxg+MJdGz4bBopG/TH9+PNozc=;
        b=gzd9ReODJrfifkYdwO04Ywc0wSXNMnXydiX6wILLRpznGFZWgZK2MXrGWWsRVC/xr6
         FkgUoIFMZZlW0ZotcmcSW63JMm30rAV2VvzTbqEgP+V3GLAKvkTPR1wf1RW7y3yRb4lN
         a70EzLG3e+TFMTC2ML466kodx7RJWcs5WoBrKY/wX+a5oSWbVJmuTXDoDXVJjv2aGSo/
         kvpGz7IKsWyCEV21FOlEkKHrxHcbxqKuxhslw2k6t1WHMGTuj4ZJr6ZMLNOmhJZJbPuk
         41o1qCpiL1gkl9MAhb/wCTBfDBelW3gFbtRJ5naCvJcjsQU6b44exhKTpHRrZKijI/6E
         13xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id j7si707648ljc.1.2021.07.06.05.15.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 05:15:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0jyc-0001jk-4o; Tue, 06 Jul 2021 14:14:58 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0jyP-0001fC-Gy; Tue, 06 Jul 2021 14:14:45 +0200
Date: Tue, 6 Jul 2021 14:14:45 +0200
From: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Cornelia Huck <cohuck@redhat.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, nvdimm@lists.linux.dev,
	Alexey Kardashevskiy <aik@ozlabs.ru>,
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
	Stephen Boyd <sboyd@kernel.org>, Wolfram Sang <wsa@kernel.org>,
	Joey Pabalan <jpabalanb@gmail.com>,
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
	Maximilian Luz <luzmaximilian@gmail.com>
Subject: Re: [PATCH] bus: Make remove callback return void
Message-ID: <20210706121445.o3nxgi4bhzrw5w73@pengutronix.de>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
 <87pmvvhfqq.fsf@redhat.com>
 <87mtqzhesu.fsf@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qlv3rwmw2vf6tbvn"
Content-Disposition: inline
In-Reply-To: <87mtqzhesu.fsf@redhat.com>
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
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


--qlv3rwmw2vf6tbvn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 06, 2021 at 01:17:37PM +0200, Cornelia Huck wrote:
> On Tue, Jul 06 2021, Cornelia Huck <cohuck@redhat.com> wrote:
>=20
> > On Tue, Jul 06 2021, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix=
.de> wrote:
> >
> >> The driver core ignores the return value of this callback because ther=
e
> >> is only little it can do when a device disappears.
> >>
> >> This is the final bit of a long lasting cleanup quest where several
> >> buses were converted to also return void from their remove callback.
> >> Additionally some resource leaks were fixed that were caused by driver=
s
> >> returning an error code in the expectation that the driver won't go
> >> away.
> >>
> >> With struct bus_type::remove returning void it's prevented that newly
> >> implemented buses return an ignored error code and so don't anticipate
> >> wrong expectations for driver authors.
> >
> > Yay!
> >
> >>
> >> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> >> ---
> >> Hello,
> >>
> >> this patch depends on "PCI: endpoint: Make struct pci_epf_driver::remo=
ve
> >> return void" that is not yet applied, see
> >> https://lore.kernel.org/r/20210223090757.57604-1-u.kleine-koenig@pengu=
tronix.de.
> >>
> >> I tested it using allmodconfig on amd64 and arm, but I wouldn't be
> >> surprised if I still missed to convert a driver. So it would be great =
to
> >> get this into next early after the merge window closes.
> >
> > I'm afraid you missed the s390-specific busses in drivers/s390/cio/
> > (css/ccw/ccwgroup).

:-\

> The change for vfio/mdev looks good.
>=20
> The following should do the trick for s390; not sure if other
> architectures have easy-to-miss busses as well.
>=20
> diff --git a/drivers/s390/cio/ccwgroup.c b/drivers/s390/cio/ccwgroup.c
> index 9748165e08e9..a66f416138ab 100644
> --- a/drivers/s390/cio/ccwgroup.c
> +++ b/drivers/s390/cio/ccwgroup.c
> @@ -439,17 +439,15 @@ module_exit(cleanup_ccwgroup);
> =20
>  /************************** driver stuff ******************************/
> =20
> -static int ccwgroup_remove(struct device *dev)
> +static void ccwgroup_remove(struct device *dev)
>  {
>  	struct ccwgroup_device *gdev =3D to_ccwgroupdev(dev);
>  	struct ccwgroup_driver *gdrv =3D to_ccwgroupdrv(dev->driver);
> =20
>  	if (!dev->driver)
> -		return 0;
> +		return;

This is fine to be squashed into my patch. In the long run: in a remove
callback dev->driver cannot be NULL, so this if could go away.

>  	if (gdrv->remove)
>  		gdrv->remove(gdev);
> -
> -	return 0;
>  }
> =20
>  static void ccwgroup_shutdown(struct device *dev)
> diff --git a/drivers/s390/cio/css.c b/drivers/s390/cio/css.c
> index a974943c27da..ebc321edba51 100644
> --- a/drivers/s390/cio/css.c
> +++ b/drivers/s390/cio/css.c
> @@ -1371,15 +1371,14 @@ static int css_probe(struct device *dev)
>  	return ret;
>  }
> =20
> -static int css_remove(struct device *dev)
> +static void css_remove(struct device *dev)
>  {
>  	struct subchannel *sch;
> -	int ret;
> =20
>  	sch =3D to_subchannel(dev);
> -	ret =3D sch->driver->remove ? sch->driver->remove(sch) : 0;
> +	if (sch->driver->remove)
> +		sch->driver->remove(sch);

Maybe the return type for this function pointer can be changed to void,
too.

I will add these changes to a v2 that I plan to send out after the dust
settles some more.

Thanks
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
linux-ntb/20210706121445.o3nxgi4bhzrw5w73%40pengutronix.de.

--qlv3rwmw2vf6tbvn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEfnIqFpAYrP8+dKQLwfwUeK3K7AkFAmDkSTIACgkQwfwUeK3K
7AmpKwf/cEGBSAtr38Z6g8D5Sb7wD6N+VKt79z1eeeFykI81lxaibOS1hxqeDq28
jW5itKeFVh1+cP8UVt8l7VJlvhIUO+xFsMgJ/LrRGoynkDBqMdlbTfQnZ/yOULyX
KI6vecR8mDHh+M0cs+KxsmbHXtKL+WJfAnGYMVFhrq7cayZ2ZnflKlVAFFyN1iWR
ewHXQduLqDi718k76IDgu9PZfUuQbRNLuX69ZAwyVl1F+BpBxMCvnMU2apcdJQ1B
ovWeCbDSh+HLgMrfUAYcVddvRKo81lrMn1i24FK2RuVnrnYdupIRl3L+Y5V4D7Pd
xOqLOUY6yncBK5uZwnZctg9p3aX8wA==
=Zesi
-----END PGP SIGNATURE-----

--qlv3rwmw2vf6tbvn--

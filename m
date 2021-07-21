Return-Path: <linux-ntb+bncBCUJ7YGL3QFBB2PE36DQMGQE26CEQCA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5323D0BBB
	for <lists+linux-ntb@lfdr.de>; Wed, 21 Jul 2021 12:09:47 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id b15-20020a631b4f0000b029022ca62fda1asf1321161pgm.5
        for <lists+linux-ntb@lfdr.de>; Wed, 21 Jul 2021 03:09:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626862186; cv=pass;
        d=google.com; s=arc-20160816;
        b=UH3Nn2IbXMZ6FPMNm/bi4R4ZHsPt6yHbr1tAShQljSov7hRVgV1wCoSUwVRJes9Obh
         z+4BqQ4cKJ4x2JGXSr6jP13xKf1LXG+HSb21Si2Y5L/V3LH5Dr8AhNyUkSIfOSA9XzI8
         FSe2Amamb/LhoHsk1thKL7aBG29s+hQmfwF1EmwHKU5tyEZF+xyoGIFSWP3Mg6T7CVaD
         O7X4ZCEtT38uBvl2ZSKL7uCubgdjOTVUZWGJQ7jCJfuzJwN+I/XfoflItgGgjZpCJWAv
         5oWNSi12svswtyIjNiSVI9qFQ42x38a6u4Xwdc+8xCuYwDfjuW3KsYAmyi0UNhdC1guo
         ktBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=wfohdN1yzP3WgeUNO7iYWZudTVv/KDCpBd2Sesd3pkY=;
        b=kysLRFjOc1/zVPfdZZ2ICccvFXnGbSQRgY9O5WWnBYOtTijkfQzm5LzzxmwiiQ0wgp
         +N8MvFEUxENxE9ovjMAVSHjQcCT/dUDztPaU0Zf9oJqZ1nCgBrQzm0g5gMrAQrpZi7Vf
         wyIx64Le+EAwkF0zPLm2mT5SJnbAX2/0j6NoxtrQV60tCNVlrHPhl1463napxbpqeNsw
         RJ9XD6cgllPPT6GmV3pBiSEtnjcleHSaMirlvffrpn0JYp0hbbfoIwjeGdm6Wm/pLvFY
         ertlbMvGBky3JlI+Zzzofzi+DDALl+LKl05qjaP0ur6UEjTjU6dmVB3sDxnFwqf3hrjV
         JPyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=c1tD+1+8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wfohdN1yzP3WgeUNO7iYWZudTVv/KDCpBd2Sesd3pkY=;
        b=sVKISxBB52y6XUoRpPpg5zRlNRp7KsoJO5nJr5HLRsLGL4biCDI/5GbpIt/Md9yvPd
         rgisTwM0uIJMOFPCFxqLKHEFO81xWtWIczo9NIC8VcD08ahimKjC5QTWgrYofcBe9/g0
         AWHPANwr/okQ4qjBIoCJX4j3JzyTAJpc8ZVFkE+0hRX4lFtTwIY48c2wKZJhuPbik5e1
         v1Et+zhdSqUdIzB0ydQnKVjES7oqlWlMjhQOoVDcYhhfcUXT+CWdPTv3GIAfz3xgH//c
         ItPzuUVUnQ+r0DDBht8erYn4YisYh7Bq9geZDdeHoC9wtF08mPk5OwKz0RHyZJ4cWIzJ
         YbIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wfohdN1yzP3WgeUNO7iYWZudTVv/KDCpBd2Sesd3pkY=;
        b=pzJ24OPJhTCuWfL3KfkehA9vXBowCvyzxu7Xq+7H71FmU2OPlNuGxBqzRlff0M/QOK
         o8C2ftCpBnvqRKYb2QlQc7rmUDkc7uhdTAtlmUnfHzgErOXqSn2ZcUZpWCZbsII6Nr81
         EFYWIaw8q0b9ivA80wBjnMVUVJQg4L7y97v1KPL9nIRXETvaYhf476YSKNmtaBzzmcpE
         Jfcc/CBRneBHON54Z7TvzStszaNGsH2xeM1B754z/r6SQTmbBZMCGR57lu/HtAb0EzLE
         CmO7JM4cNAwn/jzgL22+7UxWcZ5vA/pqMvLLviAxZhwvfCmEj1u/XGjL+LhnArWHGtid
         c3YA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5301JgQpD3OI6UGiKoAC42+5EHHfFlok2+q+HnPBVmqMn0ig2u6Z
	zKrlwdzrkHLxzh6ElbXMlg0=
X-Google-Smtp-Source: ABdhPJyOkk/CAJo6XxW4CIdbk2Q0RJDF2sHv1NKsJx48bYSilNK3lkiciCAKa9FtVOtFBO1NIwHWdg==
X-Received: by 2002:a05:6a00:884:b029:346:8678:ce15 with SMTP id q4-20020a056a000884b02903468678ce15mr16478529pfj.75.1626862185957;
        Wed, 21 Jul 2021 03:09:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:1347:: with SMTP id k7ls828993pfu.10.gmail; Wed, 21
 Jul 2021 03:09:45 -0700 (PDT)
X-Received: by 2002:aa7:800b:0:b029:330:455f:57a8 with SMTP id j11-20020aa7800b0000b0290330455f57a8mr35218759pfi.7.1626862185312;
        Wed, 21 Jul 2021 03:09:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626862185; cv=none;
        d=google.com; s=arc-20160816;
        b=u5WlbQqcauG8h9M+bT0g+/WpFG8ccsYmDVlWUg0qe7/LM87YZW9L7N+rpE/k5Y5ZPQ
         MvtJUYd9NxIi8FmmBZ4oFLbXJUa+rndb11QRYDnqgjpYQA2FZJ4QG457jDaT2sWSx+v7
         B89Y4/Zd8aoi1u6aQ4wa2FAiNK7AqPK2Zz467uYwxAvt+UyfcachA/UvP5DOIc3yU47Y
         ynP6zKlH7sw8pmVXxQtvRVrXcqtrwsRBqhimH5C0oAtJGfGDyMyE6lJ8JfyBnm8f8qf/
         9Cikt0m4CNrjC2V0uRezIaUjLcCZ2ZOrWKegjpKM3sS3omQqWMfxJUIlBvm0XyA12o5j
         Lvbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=mHRmU50sfnjjCDkuGrry/WboNNp+61ShvchcNld+9Vw=;
        b=KQyKJ3CNUwkULqJ80abSZrsTN6HvYR+hmBC3NTj7g73eAgvd1gd19+JGEIv5isxw+x
         I9Uo6FIpNF7Zlq6Vc/vsITJXKBOuQQ4ol10GDsQ3/sCpQFdiwmWhfiEMthhprcWDDblu
         F/cEQdILybBd+G2WKZoP60ZaiviSsse7rTvHOHe9bofPeRzo7nPPhumsVgGB/PgFv/0R
         K6WsOsNmKzv7LGEQRD/mghXwmCWclDEbTFtUIT4BYrLO+L9fyWmU9TREvqatlz8NfLuz
         Vmadfbcawd92PA0Lnlb4s99ZuKV4gpFnoxQxWyEKcqFG6CHFwlW1nBrzvmDgTpfDZchl
         JLjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=c1tD+1+8;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r7si2547524pjp.0.2021.07.21.03.09.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Jul 2021 03:09:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0BAC960FE7;
	Wed, 21 Jul 2021 10:09:43 +0000 (UTC)
Date: Wed, 21 Jul 2021 12:09:41 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: kernel@pengutronix.de,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alexandre Bounine <alex.bou9@gmail.com>,
	Alex Dubov <oakad@yahoo.com>, Alex Elder <elder@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Alison Schofield <alison.schofield@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Andreas Noever <andreas.noever@gmail.com>,
	Andy Gross <agross@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	Ben Widawsky <ben.widawsky@intel.com>,
	Bjorn Andersson <bjorn.andersson@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Bodo Stroesser <bostroesser@gmail.com>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Cornelia Huck <cohuck@redhat.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Dave Jiang <dave.jiang@intel.com>,
	"David S. Miller" <davem@davemloft.net>,
	David Woodhouse <dwmw@amazon.co.uk>,
	Dexuan Cui <decui@microsoft.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Dominik Brodowski <linux@dominikbrodowski.net>,
	Eric Farman <farman@linux.ibm.com>,
	Finn Thain <fthain@linux-m68k.org>,
	Florian Fainelli <f.fainelli@gmail.com>,
	Frank Li <lznuaa@gmail.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Geoff Levand <geoff@infradead.org>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Halil Pasic <pasic@linux.ibm.com>, Hannes Reinecke <hare@suse.de>,
	Hans de Goede <hdegoede@redhat.com>,
	Harald Freudenberger <freude@linux.ibm.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Heiko Carstens <hca@linux.ibm.com>, Helge Deller <deller@gmx.de>,
	Ira Weiny <ira.weiny@intel.com>, Jakub Kicinski <kuba@kernel.org>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	Jaroslav Kysela <perex@perex.cz>, Jason Wang <jasowang@redhat.com>,
	Jens Taprogge <jens.taprogge@taprogge.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jiri Kosina <jikos@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
	Joey Pabalan <jpabalanb@gmail.com>, Johan Hovold <johan@kernel.org>,
	Johannes Berg <johannes@sipsolutions.net>,
	Johannes Thumshirn <morbidrsa@gmail.com>,
	Jon Mason <jdmason@kudzu.us>, Juergen Gross <jgross@suse.com>,
	Julien Grall <jgrall@amazon.com>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	Kirti Wankhede <kwankhede@nvidia.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Lee Jones <lee.jones@linaro.org>, Len Brown <lenb@kernel.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Manohar Vanga <manohar.vanga@gmail.com>,
	Marc Zyngier <maz@kernel.org>, Mark Brown <broonie@kernel.org>,
	Mark Gross <mgross@linux.intel.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Martyn Welch <martyn@welchs.me.uk>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	Matthew Rosato <mjrosato@linux.ibm.com>,
	Matt Porter <mporter@kernel.crashing.org>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maxime Ripard <mripard@kernel.org>,
	Maximilian Luz <luzmaximilian@gmail.com>,
	Maxim Levitsky <maximlevitsky@gmail.com>,
	Michael Buesch <m@bues.ch>, Michael Ellerman <mpe@ellerman.id.au>,
	Michael Jamet <michael.jamet@intel.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Mike Christie <michael.christie@oracle.com>,
	Moritz Fischer <mdf@kernel.org>, Ohad Ben-Cohen <ohad@wizery.com>,
	Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
	Paul Mackerras <paulus@samba.org>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	=?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
	Rich Felker <dalias@libc.org>,
	Rikard Falkeborn <rikard.falkeborn@gmail.com>,
	Rob Herring <robh@kernel.org>, Russell King <linux@armlinux.org.uk>,
	"Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
	Samuel Holland <samuel@sholland.org>,
	Samuel Iglesias Gonsalvez <siglesias@igalia.com>,
	SeongJae Park <sjpark@amazon.de>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	Stefan Richter <stefanr@s5r6.in-berlin.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Sven Van Asbroeck <TheSven73@gmail.com>,
	Takashi Iwai <tiwai@suse.com>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	Thorsten Scherer <t.scherer@eckelmann.de>,
	Tomas Winkler <tomas.winkler@intel.com>, Tom Rix <trix@redhat.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Vineeth Vijayan <vneethv@linux.ibm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Wei Liu <wei.liu@kernel.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	Wolfram Sang <wsa@kernel.org>, Wu Hao <hao.wu@intel.com>,
	Yehezkel Bernat <YehezkelShB@gmail.com>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	YueHaibing <yuehaibing@huawei.com>, Yufen Yu <yuyufen@huawei.com>,
	alsa-devel@alsa-project.org, dmaengine@vger.kernel.org,
	greybus-dev@lists.linaro.org,
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
	virtualization@lists.linux-foundation.org,
	xen-devel@lists.xenproject.org
Subject: Re: [PATCH v4 0/5] bus: Make remove callback return void
Message-ID: <YPfyZen4Y0uDKqDT@kroah.com>
References: <20210713193522.1770306-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210713193522.1770306-1-u.kleine-koenig@pengutronix.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=c1tD+1+8;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Jul 13, 2021 at 09:35:17PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> Hello,
>=20
> this is v4 of the final patch set for my effort to make struct
> bus_type::remove return void.
>=20
> The first four patches contain cleanups that make some of these
> callbacks (more obviously) always return 0. They are acked by the
> respective maintainers. Bjorn Helgaas explicitly asked to include the
> pci patch (#1) into this series, so Greg taking this is fine. I assume
> the s390 people are fine with Greg taking patches #2 to #4, too, they
> didn't explicitly said so though.
>=20
> The last patch actually changes the prototype and so touches quite some
> drivers and has the potential to conflict with future developments, so I
> consider it beneficial to put these patches into next soon. I expect
> that it will be Greg who takes the complete series, he already confirmed
> via irc (for v2) to look into this series.
>=20
> The only change compared to v3 is in the fourth patch where I modified a
> few more drivers to fix build failures. Some of them were found by build
> bots (thanks!), some of them I found myself using a regular expression
> search. The newly modified files are:
>=20
>  arch/sparc/kernel/vio.c
>  drivers/nubus/bus.c
>  drivers/sh/superhyway/superhyway.c
>  drivers/vlynq/vlynq.c
>  drivers/zorro/zorro-driver.c
>  sound/ac97/bus.c
>=20
> Best regards
> Uwe

Now queued up.  I can go make a git tag that people can pull from after
0-day is finished testing this to verify all is good, if others need it.

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/YPfyZen4Y0uDKqDT%40kroah.com.

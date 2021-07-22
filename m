Return-Path: <linux-ntb+bncBCUJ7YGL3QFBBSHA4SDQMGQE5GKT6QI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B833D2004
	for <lists+linux-ntb@lfdr.de>; Thu, 22 Jul 2021 10:46:02 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id e8-20020a17090301c8b029012b411f5cbasf2366124plh.20
        for <lists+linux-ntb@lfdr.de>; Thu, 22 Jul 2021 01:46:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626943561; cv=pass;
        d=google.com; s=arc-20160816;
        b=YUVVBgxK4jxnMxvL69D9ntxmDeiFSr4Xm8vSIzYI5k7R0rLrheRsNR+kmxEs3NBqZ0
         UKXTw2LiVq/UnWRH8wpYmOoazfPkZ/30kOcc+ar3A48buOvMddZsYSn36hFYYryZiKY3
         hww1MZu9xCZ+gfxkW3gphPogKuNOzEUD7wIWowWFms3T0qIQDvxN/cAAR05A/wVcY5fd
         bppE0YRm+OlKkqF5c9sWCYVzOFtmL47n84q8rYcgljcEx2r8Cr0mxZTWgFa8CyatBo+C
         4qMzqy1A32rFsTNak7kYQLfxdQzUHz1+4WqOvZVcXY/mmbXOow2L2hKMaFYScwA5Z8bu
         VsEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=R5f8kpEuiiNpC5h28Hx9pwMqFE1JdniApI7f4TvRbmw=;
        b=MnxKMOdcdVXYqdelqPd/qv2Ik9P7NljofaBlWM3I1mEOHbRr7i9ygJzSl5LRfJaTdL
         aaxg2AjycZKssFyTN/3SQPUPPw16wcXhBVRAMGJp2SphSmWSLwu3iLoHsXQCe9SaM+3c
         c9HAvB0Ld1UIbI2nzpTL8nju1fJL/xj1T9uI9Lf1HrGxWrQxcQChVgU9I3GQKgBEmQ8N
         zCmryOho22SC9A0GUQ1QLgf43fiM0Rpg/8ML/2vsd065sfr+qg/1K30EbdoYOj6T+SB/
         uYqmANvIkgaQnffn60tzLAWx23Ww1fJODwEeTK3jgmV/mbfAYMvpeN+WeUZltG42wQB7
         Vquw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=d2l4V14j;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R5f8kpEuiiNpC5h28Hx9pwMqFE1JdniApI7f4TvRbmw=;
        b=agJ6HuQMxRyCaNeVsNZV7Ofcq/B1cUxlE0ylc0EmkcFbdc6bDSezmtnH9+upJgJC5Y
         OqmepOAH6lD33PDcA9gv6OzaB31Rn5PzzpM84L6mXUT/kIfZxCoJeM5ISWt3vILMueYT
         2+Epzki2K3/bYX281HtxbuPuQd47CkNtPR7Wqr+86yd3FRabz8pRXI+r3Q9R4SGRpjh5
         CWABbyM2WDYpvmbL6YM31b3LIqPOq6TPctP/tiXODyI4jUdOiZ0L9h/8BkSwOir5MX7f
         hP0XuGRcG22xHe8jSN4MNU+Szb+Y2WFOM0OJEFYogbqeg3V8sXFXPrsJv7tX8gQjlkV0
         E8oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R5f8kpEuiiNpC5h28Hx9pwMqFE1JdniApI7f4TvRbmw=;
        b=echdBBB4mcDDGfeAdzLmPtHTHggE2uLg3dY2uq7gkbf7UgoPO89k08hHsBH/1ZlG+o
         qK2Eq7s5KAYOwUaGLYLmpg5sfbLE6IE5PsLiRyGrbVq1Tq9fykla/jRkfBlJjvcIB0i6
         rSdj+aUvOykuHISHk2l3LmKZgfXs+qgs7yRmbRAMVUfvjiJM+ygHvtI8vGhmPdLL/3PL
         jlvWRU63eHuEot/iEPJ35GXAHZCk2qMQuCo/h4vVFj+yYgsBwKlSQgZre2TOVJvSsUvD
         SidOcD8eRiNlvKgn4xrUmLDDp0D6D1jRpSnt02WxW2NC/P5XP2EiQ5xXShWlOFbosJFy
         /ojA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531pu9tFFd0aQ5szaR/ChIYvrnUYgXQjbDATUhW+1hkzJqiv5qtl
	ddq0PVvt6ge9yf0U7X/tDrs=
X-Google-Smtp-Source: ABdhPJzSlDS3q8cY9gwVO0aqdAE8DtLy51uoBteQE6uZadHBDogiameyx9wcLjUsv6mcfVBbPzsE8g==
X-Received: by 2002:a17:90a:a117:: with SMTP id s23mr7959987pjp.229.1626943560859;
        Thu, 22 Jul 2021 01:46:00 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:76c5:: with SMTP id j5ls2601576plt.7.gmail; Thu, 22
 Jul 2021 01:46:00 -0700 (PDT)
X-Received: by 2002:a17:90b:209:: with SMTP id fy9mr31268304pjb.187.1626943560270;
        Thu, 22 Jul 2021 01:46:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626943560; cv=none;
        d=google.com; s=arc-20160816;
        b=TiFpsC5J6oG/Fq+FqnLEeYMWKHaHxlehGHbP2Fm3wH78shjo1EOrzwThLuToIc0lHL
         uGPxQT+TLQ0EvYYBd7QPdk3FrcgklZaqRikfhQwIX7brRk+JdRC4OR606MCVH2VH1UL6
         JdoJCcZYqotqW0UMe0pPrRjvHoaj4F4vGEd3HMe3eWk6zN5CNSPC3HjlfClQeRZ+YwSc
         cnko2EaaG9wJxwce06n40FHck3sfB5OFTzho5DeOauUKZTxFLJWzSPlR5GvPpQrzKKYV
         IwUgnR58dJfnHeldasA7KYJY3459PSWl1UTHrupwh/Am7NZw6KLRfMMqjhM0+BkhtGMu
         Eltw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=dAVPQEFTCmeurJw2VuYp9UhlNJMHw+cv8niNegl9BmI=;
        b=qINrtcuUDdqRvRxi/DgiVTIwZ2GNB3F+HAgTc9epBd4Hs6MOFNnphqeuvOSbteDPdM
         Hfl90o8ldfQzrob2D5+GRtoVGTmw44k8nFYo4uRi+39gdyk2v4b3Noz48FjfW5mXsf3c
         YDtVSI8P34hap7TXT5O6uRqcKXxaJ0Ch/uHJbnS2slTynmzbc8VAVcvMTXhGXKTbzU3Z
         jxmDUuHAdb5mT1NsUw1sMohjouGBXQBDdtRzVgJQ7ltSXJanYaDsJqMTsS+WvFA8Awu3
         j3yiV8Ko8fzMtexP/ZgsMSmBdC/fM/i/0cgot8nWYR1PbGg9QO/166j++/S1hriaoT0k
         tSLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=d2l4V14j;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o20si3517533pgv.1.2021.07.22.01.46.00
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Jul 2021 01:46:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A43AE6128C;
	Thu, 22 Jul 2021 08:45:57 +0000 (UTC)
Date: Thu, 22 Jul 2021 10:45:55 +0200
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
Message-ID: <YPkwQwf0dUKnGA7L@kroah.com>
References: <20210713193522.1770306-1-u.kleine-koenig@pengutronix.de>
 <YPfyZen4Y0uDKqDT@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YPfyZen4Y0uDKqDT@kroah.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=d2l4V14j;       spf=pass
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

On Wed, Jul 21, 2021 at 12:09:41PM +0200, Greg Kroah-Hartman wrote:
> On Tue, Jul 13, 2021 at 09:35:17PM +0200, Uwe Kleine-K=C3=B6nig wrote:
> > Hello,
> >=20
> > this is v4 of the final patch set for my effort to make struct
> > bus_type::remove return void.
> >=20
> > The first four patches contain cleanups that make some of these
> > callbacks (more obviously) always return 0. They are acked by the
> > respective maintainers. Bjorn Helgaas explicitly asked to include the
> > pci patch (#1) into this series, so Greg taking this is fine. I assume
> > the s390 people are fine with Greg taking patches #2 to #4, too, they
> > didn't explicitly said so though.
> >=20
> > The last patch actually changes the prototype and so touches quite some
> > drivers and has the potential to conflict with future developments, so =
I
> > consider it beneficial to put these patches into next soon. I expect
> > that it will be Greg who takes the complete series, he already confirme=
d
> > via irc (for v2) to look into this series.
> >=20
> > The only change compared to v3 is in the fourth patch where I modified =
a
> > few more drivers to fix build failures. Some of them were found by buil=
d
> > bots (thanks!), some of them I found myself using a regular expression
> > search. The newly modified files are:
> >=20
> >  arch/sparc/kernel/vio.c
> >  drivers/nubus/bus.c
> >  drivers/sh/superhyway/superhyway.c
> >  drivers/vlynq/vlynq.c
> >  drivers/zorro/zorro-driver.c
> >  sound/ac97/bus.c
> >=20
> > Best regards
> > Uwe
>=20
> Now queued up.  I can go make a git tag that people can pull from after
> 0-day is finished testing this to verify all is good, if others need it.

Ok, here's a tag that any other subsystem can pull from if they want
these changes in their tree before 5.15-rc1 is out.  I might pull it
into my char-misc-next tree as well just to keep that tree sane as it
seems to pick up new busses on a regular basis...

thanks,

greg k-h

-----------------------------------


The following changes since commit 2734d6c1b1a089fb593ef6a23d4b70903526fe0c=
:

  Linux 5.14-rc2 (2021-07-18 14:13:49 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/driver-core.git tags=
/bus_remove_return_void-5.15

for you to fetch changes up to fc7a6209d5710618eb4f72a77cd81b8d694ecf89:

  bus: Make remove callback return void (2021-07-21 11:53:42 +0200)

----------------------------------------------------------------
Bus: Make remove callback return void tag

Tag for other trees/branches to pull from in order to have a stable
place to build off of if they want to add new busses for 5.15.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

----------------------------------------------------------------
Uwe Kleine-K=C3=B6nig (5):
      PCI: endpoint: Make struct pci_epf_driver::remove return void
      s390/cio: Make struct css_driver::remove return void
      s390/ccwgroup: Drop if with an always false condition
      s390/scm: Make struct scm_driver::remove return void
      bus: Make remove callback return void

 arch/arm/common/locomo.c                  | 3 +--
 arch/arm/common/sa1111.c                  | 4 +---
 arch/arm/mach-rpc/ecard.c                 | 4 +---
 arch/mips/sgi-ip22/ip22-gio.c             | 3 +--
 arch/parisc/kernel/drivers.c              | 5 ++---
 arch/powerpc/platforms/ps3/system-bus.c   | 3 +--
 arch/powerpc/platforms/pseries/ibmebus.c  | 3 +--
 arch/powerpc/platforms/pseries/vio.c      | 3 +--
 arch/s390/include/asm/eadm.h              | 2 +-
 arch/sparc/kernel/vio.c                   | 4 +---
 drivers/acpi/bus.c                        | 3 +--
 drivers/amba/bus.c                        | 4 +---
 drivers/base/auxiliary.c                  | 4 +---
 drivers/base/isa.c                        | 4 +---
 drivers/base/platform.c                   | 4 +---
 drivers/bcma/main.c                       | 6 ++----
 drivers/bus/sunxi-rsb.c                   | 4 +---
 drivers/cxl/core.c                        | 3 +--
 drivers/dax/bus.c                         | 4 +---
 drivers/dma/idxd/sysfs.c                  | 4 +---
 drivers/firewire/core-device.c            | 4 +---
 drivers/firmware/arm_scmi/bus.c           | 4 +---
 drivers/firmware/google/coreboot_table.c  | 4 +---
 drivers/fpga/dfl.c                        | 4 +---
 drivers/hid/hid-core.c                    | 4 +---
 drivers/hid/intel-ish-hid/ishtp/bus.c     | 4 +---
 drivers/hv/vmbus_drv.c                    | 5 +----
 drivers/hwtracing/intel_th/core.c         | 4 +---
 drivers/i2c/i2c-core-base.c               | 5 +----
 drivers/i3c/master.c                      | 4 +---
 drivers/input/gameport/gameport.c         | 3 +--
 drivers/input/serio/serio.c               | 3 +--
 drivers/ipack/ipack.c                     | 4 +---
 drivers/macintosh/macio_asic.c            | 4 +---
 drivers/mcb/mcb-core.c                    | 4 +---
 drivers/media/pci/bt8xx/bttv-gpio.c       | 3 +--
 drivers/memstick/core/memstick.c          | 3 +--
 drivers/mfd/mcp-core.c                    | 3 +--
 drivers/misc/mei/bus.c                    | 4 +---
 drivers/misc/tifm_core.c                  | 3 +--
 drivers/mmc/core/bus.c                    | 4 +---
 drivers/mmc/core/sdio_bus.c               | 4 +---
 drivers/net/netdevsim/bus.c               | 3 +--
 drivers/ntb/core.c                        | 4 +---
 drivers/ntb/ntb_transport.c               | 4 +---
 drivers/nubus/bus.c                       | 6 ++----
 drivers/nvdimm/bus.c                      | 3 +--
 drivers/pci/endpoint/pci-epf-core.c       | 7 ++-----
 drivers/pci/pci-driver.c                  | 3 +--
 drivers/pcmcia/ds.c                       | 4 +---
 drivers/platform/surface/aggregator/bus.c | 4 +---
 drivers/platform/x86/wmi.c                | 4 +---
 drivers/pnp/driver.c                      | 3 +--
 drivers/rapidio/rio-driver.c              | 4 +---
 drivers/rpmsg/rpmsg_core.c                | 7 ++-----
 drivers/s390/block/scm_drv.c              | 4 +---
 drivers/s390/cio/ccwgroup.c               | 6 +-----
 drivers/s390/cio/chsc_sch.c               | 3 +--
 drivers/s390/cio/css.c                    | 7 +++----
 drivers/s390/cio/css.h                    | 2 +-
 drivers/s390/cio/device.c                 | 9 +++------
 drivers/s390/cio/eadm_sch.c               | 4 +---
 drivers/s390/cio/scm.c                    | 5 +++--
 drivers/s390/cio/vfio_ccw_drv.c           | 3 +--
 drivers/s390/crypto/ap_bus.c              | 4 +---
 drivers/scsi/scsi_debug.c                 | 3 +--
 drivers/sh/superhyway/superhyway.c        | 8 ++------
 drivers/siox/siox-core.c                  | 4 +---
 drivers/slimbus/core.c                    | 4 +---
 drivers/soc/qcom/apr.c                    | 4 +---
 drivers/spi/spi.c                         | 4 +---
 drivers/spmi/spmi.c                       | 3 +--
 drivers/ssb/main.c                        | 4 +---
 drivers/staging/fieldbus/anybuss/host.c   | 4 +---
 drivers/staging/greybus/gbphy.c           | 4 +---
 drivers/target/loopback/tcm_loop.c        | 5 ++---
 drivers/thunderbolt/domain.c              | 4 +---
 drivers/tty/serdev/core.c                 | 4 +---
 drivers/usb/common/ulpi.c                 | 4 +---
 drivers/usb/serial/bus.c                  | 4 +---
 drivers/usb/typec/bus.c                   | 4 +---
 drivers/vdpa/vdpa.c                       | 4 +---
 drivers/vfio/mdev/mdev_driver.c           | 4 +---
 drivers/virtio/virtio.c                   | 3 +--
 drivers/vlynq/vlynq.c                     | 4 +---
 drivers/vme/vme.c                         | 4 +---
 drivers/xen/xenbus/xenbus.h               | 2 +-
 drivers/xen/xenbus/xenbus_probe.c         | 4 +---
 drivers/zorro/zorro-driver.c              | 3 +--
 include/linux/device/bus.h                | 2 +-
 include/linux/pci-epf.h                   | 2 +-
 sound/ac97/bus.c                          | 6 ++----
 sound/aoa/soundbus/core.c                 | 4 +---
 93 files changed, 107 insertions(+), 263 deletions(-)

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/YPkwQwf0dUKnGA7L%40kroah.com.

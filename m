Return-Path: <linux-ntb+bncBCSPV64IYUKBB4WRSCDQMGQEZ76KSVY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-f57.google.com (mail-ed1-f57.google.com [209.85.208.57])
	by mail.lfdr.de (Postfix) with ESMTPS id 647023BC8D4
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 11:57:07 +0200 (CEST)
Received: by mail-ed1-f57.google.com with SMTP id cn11-20020a0564020cabb0290396d773d4c7sf5732119edb.18
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 02:57:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625565427; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZAr1Jq1ieOm8x/9qh3pShx6q2ZU7blgmb+Wkg93uclXlJFARXodLRBE0jwN7D3rSnx
         cevShsknW3SapSrZn3TjJ8NKWjRaWARRpuMaq4PND4pf3DOHIRZd7k2euuCXzobCGXg0
         zbzPHXNTNYlgWSXQEXHWwpODZLWlJFeI+o7wkW1kFVxuUKhojyesj/dlRjxFkuFKyKlg
         7cGELf04C/OxoznTT089XQ5pIxl9MpGUK/kJ/UxEV2JNEVRY/FAWybfS/tAdHAwnvYQH
         dSlvozCpisTUQX0cs+9UXvAQLXuviMENaSo6oZpvoBbOWH1SPi7dQCi3sHglQ3T6+Mnz
         s7ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=tF3PitBKQ1s0jjPRVflnwe8iwSqsGsnyuFC5gFq5KxA=;
        b=OQftN0vLkf6fmG1qKYGx0MeSzcOm+fOUH3OywKgpOR325DZH5In2L+wcqWWXdLdEKY
         c5nKqEuSn741RHcC4VX2L/nIgU3u7KZg8IHgEtIIhmmCJcz/t/4Ac4Bt9VeiIhr8wcXk
         AQTSvImPkPTlDULn/gQtal7gri617zRh0G8ON+IaN/QQZjXo5IQ88xxpM360dxH5b0C/
         ByPE0F2C4Lx71SVG7CbplWO9kSvWpH+J99EtHThDrXgeS6kq5959mCy9/Rol9I6L3+Er
         uIa3mxq4/IsjRXurxFA9P8eYoNUR+ZUvCYDRvYlo8vnxB69AlAfpGpm3jRT95luLxjRo
         L7IQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=a3mzSZ9z;
       spf=pass (google.com: best guess record for domain of linux+linux-ntb=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+linux-ntb=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent:sender:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tF3PitBKQ1s0jjPRVflnwe8iwSqsGsnyuFC5gFq5KxA=;
        b=tGRUjBIy1PScbYyrgRzlNT1pDbU13rIF6fDse6GMUqiXhF+y/xsN+3p4XDfrb4JJJ9
         5uU6z9HfUJB4tjEPYVvcpOq+Q8JI+r+jtqkv8BiD7IyPo1A5XYsX8t6DGjgjoyrXQpQo
         qFzzKDbUsVs3uQ21p+iTbWlLzes21NIt3ZuGLCDdT7UW3VNGA7oGdkFc136T0+fgbiqS
         maPBuMPkKBB85HR/9ETSmQKPSaws+L4kPWi7PrsOJKuEcf9QKsN2meIa3IowJaijuSeT
         igt/KFCWRopk3TqiTG0J+TAyo7EEJxG8xFSHUfWE4BE5mB9HB85pD27U0TNkYI95+Gbb
         UowA==
X-Gm-Message-State: AOAM530q63tPFFmZ51OMnOQJ8au5jx50BeQcbYBE2b8WqGqbLNwfl2CF
	LOCzzm6AkCaMkJ64Mifx4fY=
X-Google-Smtp-Source: ABdhPJwZ63haVkclRXyndB8M5mvciIbgsAc0UgITicBv7Uu1ruXoLI0k8wS6cHdcXp5xoMxsQS3XZQ==
X-Received: by 2002:a17:906:b851:: with SMTP id ga17mr17929664ejb.86.1625565427075;
        Tue, 06 Jul 2021 02:57:07 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6402:26d2:: with SMTP id x18ls450246edd.1.gmail; Tue, 06
 Jul 2021 02:57:06 -0700 (PDT)
X-Received: by 2002:a05:6402:d06:: with SMTP id eb6mr21299268edb.337.1625565426281;
        Tue, 06 Jul 2021 02:57:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625565426; cv=none;
        d=google.com; s=arc-20160816;
        b=nDQQh4M1s7QDxb+7EYulefgKvXKgt4GM/V7L2Xv5/pM8dB7kAJQJjiK8QjYih3/U2V
         /dOm9GtccEl2CbSkBeBKmpGGDLktRAMxl5NqHRtnwKFi1qXgGEnfLWBzIrizj0tpD7XN
         gqgxJMlVcznNsQFGrcPzWZpGzbMw5wVbu8+E+BaTVVjabq1e0fO9SMVxQMdOlPX5dfmX
         LQqMkWgfsR1+Fwp2sv24yabxU9MDrra1GRzY15slVEGGB0JGLGiNgrqkpZdOLrNIFb+w
         ZyZGDGWIIlg1C5TrfrDHMwylJNaWlaoTG8aEnZrdLASHhzCD3afIDRknVTscLoSjvf9A
         xfeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=16iZcd8UM9edxy0w5wY5BQzXODSiQ7QkmW3vxkbk5D0=;
        b=GjG3oOSIJw9B4BVPUhd4N6tiy2ygrelNaDDBB2LgNU8EILOja/blb54VMVfo6qafEd
         dP94jVfit3AOm3l3tm/3unNtt358gEoPYKwZsRRoTe6066/bZaMEzo1uHyEX1CO1S6Kh
         QLWdd5goJMFgqnzNpM8OIyLJM4SfWa4ht13AJhsauGRlKHKTPyxRzsk/+ROdORf5Z2aJ
         kQjNtiT5r6Xh29vNPlXvfqenC55qNpp8bCrFFiev7AOc2RLi6zg/dBcy/kSrou2Q7+So
         gc0f5W1yNmfNKA2y48lCZBoQNN8zjHbsGazaIsztwSO+GQK4NJ7pxZNpyNuG0ZHl161B
         5wiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=a3mzSZ9z;
       spf=pass (google.com: best guess record for domain of linux+linux-ntb=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+linux-ntb=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id f13si174465edd.4.2021.07.06.02.57.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 02:57:06 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of linux+linux-ntb=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:45790)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1m0hoi-0006RU-5N; Tue, 06 Jul 2021 10:56:36 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1m0hoO-0001sr-Ht; Tue, 06 Jul 2021 10:56:16 +0100
Date: Tue, 6 Jul 2021 10:56:16 +0100
From: "Russell King (Oracle)" <linux@armlinux.org.uk>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
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
	Cornelia Huck <cohuck@redhat.com>,
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
	xen-devel@lists.xenproject.org
Subject: Re: [PATCH] bus: Make remove callback return void
Message-ID: <20210706095616.GQ22278@shell.armlinux.org.uk>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King (Oracle) <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=a3mzSZ9z;
       spf=pass (google.com: best guess record for domain of
 linux+linux-ntb=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+linux-ntb=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Tue, Jul 06, 2021 at 11:50:37AM +0200, Uwe Kleine-K=C3=B6nig wrote:
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

Yay! For ARM, Amba and related parts:

Acked-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

--=20
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20210706095616.GQ22278%40shell.armlinux.org.uk.

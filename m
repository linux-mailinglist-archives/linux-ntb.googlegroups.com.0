Return-Path: <linux-ntb+bncBCX3TTWUQMPRBPGQSCDQMGQEN7GXAOY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id A45D93BC8B4
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 11:54:05 +0200 (CEST)
Received: by mail-lj1-x23c.google.com with SMTP id x21-20020a2e9c950000b029017dd8889584sf8168282lji.16
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 02:54:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625565245; cv=pass;
        d=google.com; s=arc-20160816;
        b=U/MBBLpFLq/SU8oENeTy9fNSV19ple+k3nkTt6YXKGJ+ngYfBf1gs3sK9tHFGqBqHJ
         0HNVnSRr6DNByRmc2acPcEeAIJdMDx1N2qPDvt30VV+/GjN9yAHjoE32AS48w9grCOSf
         CvXPeWI3mh85rh5p3K+z9oYx5aTzdcuMDb/qWynicgn52RxtkD4Ub2kot57O5iMNorIt
         jzsWYNvXtIJeFaCdSKYv3C0eXcvlVkqyp6tMo40b964xPoltW+e8gnerfoyzhGoUDrp9
         LiWIuSDXTBwNq+M9FIxCc9pyqWaaBxl1NAjM4/Ngvm8qHTU7Idefm7EIMFgyg0kegt8U
         L8lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=k6Xkt0o/6yWYCjmUOO6tbgejfhtXQd+GzwiA4wwiVhs=;
        b=cV+dDKYLYY5mk0o4uitGSG6c4Vq92dRaMrUiDsuHoDidhnzBuYL8ZbppEEZ5bYXWvq
         nQCSg2rTuFl25V2omjFeO2X9lRhto0SnbUOn/4roAZGrgUaIMtvZAq1aCncbi9hdUYQv
         kx8Xp3cqm9XhacXrewKlfHsyeYeMXGq8g+uJIQtoFV1bUe41DZgI5AdiWdU5lDKR8E7I
         cu801YuU5qaFc5UeGSETiQAOnN421N3iqFxQGfxu42QN4/WsWAkBqZ6PuEcQaKzLpr3L
         KrYBJQ/2AbFhFkuK9Rht//qBmMTv/P73ucMmaQH4ihuiKUb04nDId5x+RatxF78VlNqo
         KXjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=k6Xkt0o/6yWYCjmUOO6tbgejfhtXQd+GzwiA4wwiVhs=;
        b=pQzXxV+lSJOQrVD1j/GSEuLVT9qeqJzHgIjtJtfEU0U/s3oALGT7BL0ss/KtDe2a+7
         X5VGYxnQOjrir4s2j1VfFAUtgZ6SNHjv3B3ff/savnm30Ilk7cP/KR7So9IJhXBGbmgP
         AFWlId/EgqUrhPCH+PsWctIXluwJkOaVXaPlMENGwArgPMynbtrfMsF3FBuYTWBeXlWZ
         HCTdDMaR6Txy8ErTNwzoKbxNmN7T83RDbqRnawdtK8hHNOZrtFdXScOOftIUs5E3UbXD
         KB7zSKxsqnl/xVEkyRs9v0QsfKbNYHkeFKsEJJvZ3WXukwM6aMd+i9LO9e6zPK2K4scp
         YBjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k6Xkt0o/6yWYCjmUOO6tbgejfhtXQd+GzwiA4wwiVhs=;
        b=Z197ka9RM+Sz8TGfzPvPLaw3qUljSmqQFjaPlkk78Xo5lGCpmdK0RB4SDobNGFaQb9
         J5THMAI2kDw28Ba0wE6TkP2QiGjusHJJJ0kJSebU3I3d3n+MdX6xvVY+gnY/rqG0Pu7a
         fKHs5JImuNIslpbwAZ1ou2A2hfQDnNX+IxR7vK3BLYRkS9CzBv7wMvOZdx2cHsIX+EhL
         tuNGJhe5MeUBz6C5m3yBsCx6uF1/cmyvPeyFOIha+XQQXgIyClvD8XO6K15w2cG/++VK
         QAW8tN4F4SHpSFmAgDyI39v5EAWpMUJ40Y5yhlXaQv2bcf4cSZ8odOONzqOZIpbVYz3t
         RuXA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531JgO7eFduTbpU+QCUEPlTbXf2DwZ9tqvRh66cxxP2TNaIIUvzD
	FddgHpvDHQ4IhfZCwS8Y8tY=
X-Google-Smtp-Source: ABdhPJxaspA99lAIxFdpixr/H5VnPCTpUc3T+MHAVe4hTiubhDMHCVLOJtWR/6J41Xj8TmfFHdv8Sw==
X-Received: by 2002:a05:6512:544:: with SMTP id h4mr14030334lfl.224.1625565245127;
        Tue, 06 Jul 2021 02:54:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:9584:: with SMTP id w4ls239644ljh.1.gmail; Tue, 06 Jul
 2021 02:54:03 -0700 (PDT)
X-Received: by 2002:a2e:b808:: with SMTP id u8mr9646723ljo.436.1625565243869;
        Tue, 06 Jul 2021 02:54:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625565243; cv=none;
        d=google.com; s=arc-20160816;
        b=SB3es1053+o4cUZldCIxPjs0Ot5bRwAEVhw8pjz+VS8VH7vDkyW57zNqnOy7BnQbCS
         hSP9KnmvDIAheZc4+1ObSgTq/GVOQwsk0ciLrp3PdAuMuoOSG6Vm5PSmv7tW8vGn3ucR
         dPpDCFuCNzDOjL9v4n4no3jSGhXqEw1trw/eVtNzNvwOzdxvPM51GfGT3+M0YTuDLDyJ
         OwOnoA3caPIVd+C/Q3dmGu0oJ0opGOzFmuTQLXNCUFmhXxTAJLkFEeo5xEPqSrWcWXPG
         sQ09lIGswzaK63ZNYVictRVUUcP/V8iwDljGrOgJgIU+BWn7tG+6hLorMTf32Zd3sb7e
         wOAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=ZEdNYwEHZFZJG6ZnWgJK8sT4iTcxkp9RHVHChOZ3Bas=;
        b=CXwZS4PWdThxN3CWYFGS+XJDjpxOp2Rjd210Nhz92lS64azrXlfc1h+QKiw3XHVCxR
         EGA1uoEjOAsUeWTDZHkk8BEeNcWutN0+mjEBbgy+16w8wokwGXXGftp8PpxOs6XA5Lbr
         P5mkMnFpHw8JKyEeZOOqeyhoSWNLRViii/nbF8r4Lx8JV7LLRIRttwD+o7YmXr/jzR9b
         h5I9kAHV03g10S+gDbW27iGmCuhT8UOZU8IPwNoF4AuFfbobGQTlXZLkgh/zt4luNpwa
         KerZuse8/ZvUIoV2lRo9bWkNFzWLeEQIHwxt0gleMTFx2WQGensIjhyWh73VAS7xoHcf
         GsZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id 206si41293lfa.8.2021.07.06.02.54.03
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 02:54:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0hjC-00081i-Tp; Tue, 06 Jul 2021 11:50:54 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0hj3-0000kp-Ki; Tue, 06 Jul 2021 11:50:45 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@pengutronix.de,
	linux-kernel@vger.kernel.org,
	Russell King <linux@armlinux.org.uk>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	Geoff Levand <geoff@infradead.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	Len Brown <lenb@kernel.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Maxime Ripard <mripard@kernel.org>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Alison Schofield <alison.schofield@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Ira Weiny <ira.weiny@intel.com>,
	Ben Widawsky <ben.widawsky@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Vinod Koul <vkoul@kernel.org>,
	Stefan Richter <stefanr@s5r6.in-berlin.de>,
	Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Wu Hao <hao.wu@intel.com>,
	Tom Rix <trix@redhat.com>,
	Moritz Fischer <mdf@kernel.org>,
	Jiri Kosina <jikos@kernel.org>,
	Benjamin Tissoires <benjamin.tissoires@redhat.com>,
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Haiyang Zhang <haiyangz@microsoft.com>,
	Stephen Hemminger <sthemmin@microsoft.com>,
	Wei Liu <wei.liu@kernel.org>,
	Dexuan Cui <decui@microsoft.com>,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Wolfram Sang <wsa@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Dmitry Torokhov <dmitry.torokhov@gmail.com>,
	Samuel Iglesias Gonsalvez <siglesias@igalia.com>,
	Jens Taprogge <jens.taprogge@taprogge.org>,
	Johannes Thumshirn <morbidrsa@gmail.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Maxim Levitsky <maximlevitsky@gmail.com>,
	Alex Dubov <oakad@yahoo.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Lee Jones <lee.jones@linaro.org>,
	Tomas Winkler <tomas.winkler@intel.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Jakub Kicinski <kuba@kernel.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
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
	Andy Gross <agross@kernel.org>,
	Mark Brown <broonie@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Michael Buesch <m@bues.ch>,
	Sven Van Asbroeck <TheSven73@gmail.com>,
	Johan Hovold <johan@kernel.org>,
	Alex Elder <elder@kernel.org>,
	Andreas Noever <andreas.noever@gmail.com>,
	Michael Jamet <michael.jamet@intel.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Yehezkel Bernat <YehezkelShB@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Jiri Slaby <jirislaby@kernel.org>,
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
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	Marc Zyngier <maz@kernel.org>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Vladimir Zapolskiy <vz@mleia.com>,
	Samuel Holland <samuel@sholland.org>,
	Qinglang Miao <miaoqinglang@huawei.com>,
	Alexey Kardashevskiy <aik@ozlabs.ru>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	Joey Pabalan <jpabalanb@gmail.com>,
	=?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
	Adrian Hunter <adrian.hunter@intel.com>,
	Frank Li <lznuaa@gmail.com>,
	Mike Christie <michael.christie@oracle.com>,
	Bodo Stroesser <bostroesser@gmail.com>,
	Hannes Reinecke <hare@suse.de>,
	David Woodhouse <dwmw@amazon.co.uk>,
	SeongJae Park <sjpark@amazon.de>,
	Julien Grall <jgrall@amazon.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-mips@vger.kernel.org,
	linux-parisc@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-acpi@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-cxl@vger.kernel.org,
	nvdimm@lists.linux.dev,
	dmaengine@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	linux-fpga@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-hyperv@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-i3c@lists.infradead.org,
	industrypack-devel@lists.sourceforge.net,
	linux-media@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-pci@vger.kernel.org,
	platform-driver-x86@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	alsa-devel@alsa-project.org,
	linux-arm-msm@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-staging@lists.linux.dev,
	greybus-dev@lists.linaro.org,
	target-devel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-serial@vger.kernel.org,
	virtualization@lists.linux-foundation.org,
	kvm@vger.kernel.org,
	xen-devel@lists.xenproject.org
Subject: [PATCH] bus: Make remove callback return void
Date: Tue,  6 Jul 2021 11:50:37 +0200
Message-Id: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

The driver core ignores the return value of this callback because there
is only little it can do when a device disappears.

This is the final bit of a long lasting cleanup quest where several
buses were converted to also return void from their remove callback.
Additionally some resource leaks were fixed that were caused by drivers
returning an error code in the expectation that the driver won't go
away.

With struct bus_type::remove returning void it's prevented that newly
implemented buses return an ignored error code and so don't anticipate
wrong expectations for driver authors.

Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
---
Hello,

this patch depends on "PCI: endpoint: Make struct pci_epf_driver::remove
return void" that is not yet applied, see
https://lore.kernel.org/r/20210223090757.57604-1-u.kleine-koenig@pengutroni=
x.de.

I tested it using allmodconfig on amd64 and arm, but I wouldn't be
surprised if I still missed to convert a driver. So it would be great to
get this into next early after the merge window closes.

I send this mail to all people that get_maintainer.pl emits for this
patch. I wonder how many recipents will refuse this mail because of the
long Cc: list :-)

Best regards
Uwe

 arch/arm/common/locomo.c                  | 3 +--
 arch/arm/common/sa1111.c                  | 4 +---
 arch/arm/mach-rpc/ecard.c                 | 4 +---
 arch/mips/sgi-ip22/ip22-gio.c             | 3 +--
 arch/parisc/kernel/drivers.c              | 5 ++---
 arch/powerpc/platforms/ps3/system-bus.c   | 3 +--
 arch/powerpc/platforms/pseries/ibmebus.c  | 3 +--
 arch/powerpc/platforms/pseries/vio.c      | 3 +--
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
 drivers/nvdimm/bus.c                      | 3 +--
 drivers/pci/endpoint/pci-epf-core.c       | 4 +---
 drivers/pci/pci-driver.c                  | 3 +--
 drivers/pcmcia/ds.c                       | 4 +---
 drivers/platform/surface/aggregator/bus.c | 4 +---
 drivers/platform/x86/wmi.c                | 4 +---
 drivers/pnp/driver.c                      | 3 +--
 drivers/rapidio/rio-driver.c              | 4 +---
 drivers/rpmsg/rpmsg_core.c                | 4 +---
 drivers/scsi/scsi_debug.c                 | 3 +--
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
 drivers/vme/vme.c                         | 4 +---
 drivers/xen/xenbus/xenbus.h               | 2 +-
 drivers/xen/xenbus/xenbus_probe.c         | 4 +---
 include/linux/device/bus.h                | 2 +-
 sound/aoa/soundbus/core.c                 | 4 +---
 75 files changed, 78 insertions(+), 204 deletions(-)

diff --git a/arch/arm/common/locomo.c b/arch/arm/common/locomo.c
index e45f4e4e06b6..24d21ba63030 100644
--- a/arch/arm/common/locomo.c
+++ b/arch/arm/common/locomo.c
@@ -834,14 +834,13 @@ static int locomo_bus_probe(struct device *dev)
 	return ret;
 }
=20
-static int locomo_bus_remove(struct device *dev)
+static void locomo_bus_remove(struct device *dev)
 {
 	struct locomo_dev *ldev =3D LOCOMO_DEV(dev);
 	struct locomo_driver *drv =3D LOCOMO_DRV(dev->driver);
=20
 	if (drv->remove)
 		drv->remove(ldev);
-	return 0;
 }
=20
 struct bus_type locomo_bus_type =3D {
diff --git a/arch/arm/common/sa1111.c b/arch/arm/common/sa1111.c
index ff5e0d04cb89..092a2ebc0c28 100644
--- a/arch/arm/common/sa1111.c
+++ b/arch/arm/common/sa1111.c
@@ -1364,15 +1364,13 @@ static int sa1111_bus_probe(struct device *dev)
 	return ret;
 }
=20
-static int sa1111_bus_remove(struct device *dev)
+static void sa1111_bus_remove(struct device *dev)
 {
 	struct sa1111_dev *sadev =3D to_sa1111_device(dev);
 	struct sa1111_driver *drv =3D SA1111_DRV(dev->driver);
=20
 	if (drv->remove)
 		drv->remove(sadev);
-
-	return 0;
 }
=20
 struct bus_type sa1111_bus_type =3D {
diff --git a/arch/arm/mach-rpc/ecard.c b/arch/arm/mach-rpc/ecard.c
index 827b50f1c73e..53813f9464a2 100644
--- a/arch/arm/mach-rpc/ecard.c
+++ b/arch/arm/mach-rpc/ecard.c
@@ -1052,7 +1052,7 @@ static int ecard_drv_probe(struct device *dev)
 	return ret;
 }
=20
-static int ecard_drv_remove(struct device *dev)
+static void ecard_drv_remove(struct device *dev)
 {
 	struct expansion_card *ec =3D ECARD_DEV(dev);
 	struct ecard_driver *drv =3D ECARD_DRV(dev->driver);
@@ -1067,8 +1067,6 @@ static int ecard_drv_remove(struct device *dev)
 	ec->ops =3D &ecard_default_ops;
 	barrier();
 	ec->irq_data =3D NULL;
-
-	return 0;
 }
=20
 /*
diff --git a/arch/mips/sgi-ip22/ip22-gio.c b/arch/mips/sgi-ip22/ip22-gio.c
index de0768a49ee8..dfc52f661ad0 100644
--- a/arch/mips/sgi-ip22/ip22-gio.c
+++ b/arch/mips/sgi-ip22/ip22-gio.c
@@ -143,14 +143,13 @@ static int gio_device_probe(struct device *dev)
 	return error;
 }
=20
-static int gio_device_remove(struct device *dev)
+static void gio_device_remove(struct device *dev)
 {
 	struct gio_device *gio_dev =3D to_gio_device(dev);
 	struct gio_driver *drv =3D to_gio_driver(dev->driver);
=20
 	if (dev->driver && drv->remove)
 		drv->remove(gio_dev);
-	return 0;
 }
=20
 static void gio_device_shutdown(struct device *dev)
diff --git a/arch/parisc/kernel/drivers.c b/arch/parisc/kernel/drivers.c
index 80fa0650736b..776d624a7207 100644
--- a/arch/parisc/kernel/drivers.c
+++ b/arch/parisc/kernel/drivers.c
@@ -133,14 +133,13 @@ static int parisc_driver_probe(struct device *dev)
 	return rc;
 }
=20
-static int __exit parisc_driver_remove(struct device *dev)
+static void __exit parisc_driver_remove(struct device *dev)
 {
 	struct parisc_device *pa_dev =3D to_parisc_device(dev);
 	struct parisc_driver *pa_drv =3D to_parisc_driver(dev->driver);
+
 	if (pa_drv->remove)
 		pa_drv->remove(pa_dev);
-
-	return 0;
 }
 =09
=20
diff --git a/arch/powerpc/platforms/ps3/system-bus.c b/arch/powerpc/platfor=
ms/ps3/system-bus.c
index 1a5665875165..cc5774c64fae 100644
--- a/arch/powerpc/platforms/ps3/system-bus.c
+++ b/arch/powerpc/platforms/ps3/system-bus.c
@@ -381,7 +381,7 @@ static int ps3_system_bus_probe(struct device *_dev)
 	return result;
 }
=20
-static int ps3_system_bus_remove(struct device *_dev)
+static void ps3_system_bus_remove(struct device *_dev)
 {
 	struct ps3_system_bus_device *dev =3D ps3_dev_to_system_bus_dev(_dev);
 	struct ps3_system_bus_driver *drv;
@@ -399,7 +399,6 @@ static int ps3_system_bus_remove(struct device *_dev)
 			__func__, __LINE__, drv->core.name);
=20
 	pr_debug(" <- %s:%d: %s\n", __func__, __LINE__, dev_name(&dev->core));
-	return 0;
 }
=20
 static void ps3_system_bus_shutdown(struct device *_dev)
diff --git a/arch/powerpc/platforms/pseries/ibmebus.c b/arch/powerpc/platfo=
rms/pseries/ibmebus.c
index c6c79ef55e13..7ee3ed7d6cc2 100644
--- a/arch/powerpc/platforms/pseries/ibmebus.c
+++ b/arch/powerpc/platforms/pseries/ibmebus.c
@@ -366,14 +366,13 @@ static int ibmebus_bus_device_probe(struct device *de=
v)
 	return error;
 }
=20
-static int ibmebus_bus_device_remove(struct device *dev)
+static void ibmebus_bus_device_remove(struct device *dev)
 {
 	struct platform_device *of_dev =3D to_platform_device(dev);
 	struct platform_driver *drv =3D to_platform_driver(dev->driver);
=20
 	if (dev->driver && drv->remove)
 		drv->remove(of_dev);
-	return 0;
 }
=20
 static void ibmebus_bus_device_shutdown(struct device *dev)
diff --git a/arch/powerpc/platforms/pseries/vio.c b/arch/powerpc/platforms/=
pseries/vio.c
index e00f3725ec96..58283cecbd52 100644
--- a/arch/powerpc/platforms/pseries/vio.c
+++ b/arch/powerpc/platforms/pseries/vio.c
@@ -1257,7 +1257,7 @@ static int vio_bus_probe(struct device *dev)
 }
=20
 /* convert from struct device to struct vio_dev and pass to driver. */
-static int vio_bus_remove(struct device *dev)
+static void vio_bus_remove(struct device *dev)
 {
 	struct vio_dev *viodev =3D to_vio_dev(dev);
 	struct vio_driver *viodrv =3D to_vio_driver(dev->driver);
@@ -1276,7 +1276,6 @@ static int vio_bus_remove(struct device *dev)
 		vio_cmo_bus_remove(viodev);
=20
 	put_device(devptr);
-	return 0;
 }
=20
 static void vio_bus_shutdown(struct device *dev)
diff --git a/drivers/acpi/bus.c b/drivers/acpi/bus.c
index ee24246d88fd..51f374e42869 100644
--- a/drivers/acpi/bus.c
+++ b/drivers/acpi/bus.c
@@ -1018,7 +1018,7 @@ static int acpi_device_probe(struct device *dev)
 	return 0;
 }
=20
-static int acpi_device_remove(struct device *dev)
+static void acpi_device_remove(struct device *dev)
 {
 	struct acpi_device *acpi_dev =3D to_acpi_device(dev);
 	struct acpi_driver *acpi_drv =3D acpi_dev->driver;
@@ -1033,7 +1033,6 @@ static int acpi_device_remove(struct device *dev)
 	acpi_dev->driver_data =3D NULL;
=20
 	put_device(dev);
-	return 0;
 }
=20
 struct bus_type acpi_bus_type =3D {
diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
index 939ca220bf78..962041148482 100644
--- a/drivers/amba/bus.c
+++ b/drivers/amba/bus.c
@@ -219,7 +219,7 @@ static int amba_probe(struct device *dev)
 	return ret;
 }
=20
-static int amba_remove(struct device *dev)
+static void amba_remove(struct device *dev)
 {
 	struct amba_device *pcdev =3D to_amba_device(dev);
 	struct amba_driver *drv =3D to_amba_driver(dev->driver);
@@ -236,8 +236,6 @@ static int amba_remove(struct device *dev)
=20
 	amba_put_disable_pclk(pcdev);
 	dev_pm_domain_detach(dev, true);
-
-	return 0;
 }
=20
 static void amba_shutdown(struct device *dev)
diff --git a/drivers/base/auxiliary.c b/drivers/base/auxiliary.c
index adc199dfba3c..0c86f5bed9f4 100644
--- a/drivers/base/auxiliary.c
+++ b/drivers/base/auxiliary.c
@@ -79,7 +79,7 @@ static int auxiliary_bus_probe(struct device *dev)
 	return ret;
 }
=20
-static int auxiliary_bus_remove(struct device *dev)
+static void auxiliary_bus_remove(struct device *dev)
 {
 	struct auxiliary_driver *auxdrv =3D to_auxiliary_drv(dev->driver);
 	struct auxiliary_device *auxdev =3D to_auxiliary_dev(dev);
@@ -87,8 +87,6 @@ static int auxiliary_bus_remove(struct device *dev)
 	if (auxdrv->remove)
 		auxdrv->remove(auxdev);
 	dev_pm_domain_detach(dev, true);
-
-	return 0;
 }
=20
 static void auxiliary_bus_shutdown(struct device *dev)
diff --git a/drivers/base/isa.c b/drivers/base/isa.c
index aa4737667026..55e3ee2da98f 100644
--- a/drivers/base/isa.c
+++ b/drivers/base/isa.c
@@ -46,14 +46,12 @@ static int isa_bus_probe(struct device *dev)
 	return 0;
 }
=20
-static int isa_bus_remove(struct device *dev)
+static void isa_bus_remove(struct device *dev)
 {
 	struct isa_driver *isa_driver =3D dev->platform_data;
=20
 	if (isa_driver && isa_driver->remove)
 		isa_driver->remove(dev, to_isa_dev(dev)->id);
-
-	return 0;
 }
=20
 static void isa_bus_shutdown(struct device *dev)
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index 8640578f45e9..a94b7f454881 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -1438,7 +1438,7 @@ static int platform_probe(struct device *_dev)
 	return ret;
 }
=20
-static int platform_remove(struct device *_dev)
+static void platform_remove(struct device *_dev)
 {
 	struct platform_driver *drv =3D to_platform_driver(_dev->driver);
 	struct platform_device *dev =3D to_platform_device(_dev);
@@ -1450,8 +1450,6 @@ static int platform_remove(struct device *_dev)
 			dev_warn(_dev, "remove callback returned a non-zero value. This will be=
 ignored.\n");
 	}
 	dev_pm_domain_detach(_dev, true);
-
-	return 0;
 }
=20
 static void platform_shutdown(struct device *_dev)
diff --git a/drivers/bcma/main.c b/drivers/bcma/main.c
index 6535614a7dc1..e076630d17bd 100644
--- a/drivers/bcma/main.c
+++ b/drivers/bcma/main.c
@@ -27,7 +27,7 @@ static DEFINE_MUTEX(bcma_buses_mutex);
=20
 static int bcma_bus_match(struct device *dev, struct device_driver *drv);
 static int bcma_device_probe(struct device *dev);
-static int bcma_device_remove(struct device *dev);
+static void bcma_device_remove(struct device *dev);
 static int bcma_device_uevent(struct device *dev, struct kobj_uevent_env *=
env);
=20
 static ssize_t manuf_show(struct device *dev, struct device_attribute *att=
r, char *buf)
@@ -614,7 +614,7 @@ static int bcma_device_probe(struct device *dev)
 	return err;
 }
=20
-static int bcma_device_remove(struct device *dev)
+static void bcma_device_remove(struct device *dev)
 {
 	struct bcma_device *core =3D container_of(dev, struct bcma_device, dev);
 	struct bcma_driver *adrv =3D container_of(dev->driver, struct bcma_driver=
,
@@ -623,8 +623,6 @@ static int bcma_device_remove(struct device *dev)
 	if (adrv->remove)
 		adrv->remove(core);
 	put_device(dev);
-
-	return 0;
 }
=20
 static int bcma_device_uevent(struct device *dev, struct kobj_uevent_env *=
env)
diff --git a/drivers/bus/sunxi-rsb.c b/drivers/bus/sunxi-rsb.c
index d46db132d085..6f225dddc74f 100644
--- a/drivers/bus/sunxi-rsb.c
+++ b/drivers/bus/sunxi-rsb.c
@@ -169,13 +169,11 @@ static int sunxi_rsb_device_probe(struct device *dev)
 	return drv->probe(rdev);
 }
=20
-static int sunxi_rsb_device_remove(struct device *dev)
+static void sunxi_rsb_device_remove(struct device *dev)
 {
 	const struct sunxi_rsb_driver *drv =3D to_sunxi_rsb_driver(dev->driver);
=20
 	drv->remove(to_sunxi_rsb_device(dev));
-
-	return 0;
 }
=20
 static struct bus_type sunxi_rsb_bus =3D {
diff --git a/drivers/cxl/core.c b/drivers/cxl/core.c
index a2e4d54fc7bc..2b90b7c3b9d7 100644
--- a/drivers/cxl/core.c
+++ b/drivers/cxl/core.c
@@ -1034,13 +1034,12 @@ static int cxl_bus_probe(struct device *dev)
 	return to_cxl_drv(dev->driver)->probe(dev);
 }
=20
-static int cxl_bus_remove(struct device *dev)
+static void cxl_bus_remove(struct device *dev)
 {
 	struct cxl_driver *cxl_drv =3D to_cxl_drv(dev->driver);
=20
 	if (cxl_drv->remove)
 		cxl_drv->remove(dev);
-	return 0;
 }
=20
 struct bus_type cxl_bus_type =3D {
diff --git a/drivers/dax/bus.c b/drivers/dax/bus.c
index 5aee26e1bbd6..6cc4da4c713d 100644
--- a/drivers/dax/bus.c
+++ b/drivers/dax/bus.c
@@ -172,15 +172,13 @@ static int dax_bus_probe(struct device *dev)
 	return 0;
 }
=20
-static int dax_bus_remove(struct device *dev)
+static void dax_bus_remove(struct device *dev)
 {
 	struct dax_device_driver *dax_drv =3D to_dax_drv(dev->driver);
 	struct dev_dax *dev_dax =3D to_dev_dax(dev);
=20
 	if (dax_drv->remove)
 		dax_drv->remove(dev_dax);
-
-	return 0;
 }
=20
 static struct bus_type dax_bus_type =3D {
diff --git a/drivers/dma/idxd/sysfs.c b/drivers/dma/idxd/sysfs.c
index 0460d58e3941..5a017c62c752 100644
--- a/drivers/dma/idxd/sysfs.c
+++ b/drivers/dma/idxd/sysfs.c
@@ -260,7 +260,7 @@ static void disable_wq(struct idxd_wq *wq)
 	dev_info(dev, "wq %s disabled\n", dev_name(&wq->conf_dev));
 }
=20
-static int idxd_config_bus_remove(struct device *dev)
+static void idxd_config_bus_remove(struct device *dev)
 {
 	int rc;
=20
@@ -305,8 +305,6 @@ static int idxd_config_bus_remove(struct device *dev)
 			dev_info(dev, "Device %s disabled\n", dev_name(dev));
=20
 	}
-
-	return 0;
 }
=20
 static void idxd_config_bus_shutdown(struct device *dev)
diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-device.=
c
index 68216988391f..90ed8fdaba75 100644
--- a/drivers/firewire/core-device.c
+++ b/drivers/firewire/core-device.c
@@ -187,14 +187,12 @@ static int fw_unit_probe(struct device *dev)
 	return driver->probe(fw_unit(dev), unit_match(dev, dev->driver));
 }
=20
-static int fw_unit_remove(struct device *dev)
+static void fw_unit_remove(struct device *dev)
 {
 	struct fw_driver *driver =3D
 			container_of(dev->driver, struct fw_driver, driver);
=20
 	driver->remove(fw_unit(dev));
-
-	return 0;
 }
=20
 static int get_modalias(struct fw_unit *unit, char *buffer, size_t buffer_=
size)
diff --git a/drivers/firmware/arm_scmi/bus.c b/drivers/firmware/arm_scmi/bu=
s.c
index 784cf0027da3..2682c3df651c 100644
--- a/drivers/firmware/arm_scmi/bus.c
+++ b/drivers/firmware/arm_scmi/bus.c
@@ -116,15 +116,13 @@ static int scmi_dev_probe(struct device *dev)
 	return scmi_drv->probe(scmi_dev);
 }
=20
-static int scmi_dev_remove(struct device *dev)
+static void scmi_dev_remove(struct device *dev)
 {
 	struct scmi_driver *scmi_drv =3D to_scmi_driver(dev->driver);
 	struct scmi_device *scmi_dev =3D to_scmi_dev(dev);
=20
 	if (scmi_drv->remove)
 		scmi_drv->remove(scmi_dev);
-
-	return 0;
 }
=20
 static struct bus_type scmi_bus_type =3D {
diff --git a/drivers/firmware/google/coreboot_table.c b/drivers/firmware/go=
ogle/coreboot_table.c
index dc83ea118c67..c52bcaa9def6 100644
--- a/drivers/firmware/google/coreboot_table.c
+++ b/drivers/firmware/google/coreboot_table.c
@@ -44,15 +44,13 @@ static int coreboot_bus_probe(struct device *dev)
 	return ret;
 }
=20
-static int coreboot_bus_remove(struct device *dev)
+static void coreboot_bus_remove(struct device *dev)
 {
 	struct coreboot_device *device =3D CB_DEV(dev);
 	struct coreboot_driver *driver =3D CB_DRV(dev->driver);
=20
 	if (driver->remove)
 		driver->remove(device);
-
-	return 0;
 }
=20
 static struct bus_type coreboot_bus_type =3D {
diff --git a/drivers/fpga/dfl.c b/drivers/fpga/dfl.c
index 511b20ff35a3..1ae6779a0dd6 100644
--- a/drivers/fpga/dfl.c
+++ b/drivers/fpga/dfl.c
@@ -284,15 +284,13 @@ static int dfl_bus_probe(struct device *dev)
 	return ddrv->probe(ddev);
 }
=20
-static int dfl_bus_remove(struct device *dev)
+static void dfl_bus_remove(struct device *dev)
 {
 	struct dfl_driver *ddrv =3D to_dfl_drv(dev->driver);
 	struct dfl_device *ddev =3D to_dfl_dev(dev);
=20
 	if (ddrv->remove)
 		ddrv->remove(ddev);
-
-	return 0;
 }
=20
 static int dfl_bus_uevent(struct device *dev, struct kobj_uevent_env *env)
diff --git a/drivers/hid/hid-core.c b/drivers/hid/hid-core.c
index 7db332139f7d..dbed2524fd47 100644
--- a/drivers/hid/hid-core.c
+++ b/drivers/hid/hid-core.c
@@ -2302,7 +2302,7 @@ static int hid_device_probe(struct device *dev)
 	return ret;
 }
=20
-static int hid_device_remove(struct device *dev)
+static void hid_device_remove(struct device *dev)
 {
 	struct hid_device *hdev =3D to_hid_device(dev);
 	struct hid_driver *hdrv;
@@ -2322,8 +2322,6 @@ static int hid_device_remove(struct device *dev)
=20
 	if (!hdev->io_started)
 		up(&hdev->driver_input_lock);
-
-	return 0;
 }
=20
 static ssize_t modalias_show(struct device *dev, struct device_attribute *=
a,
diff --git a/drivers/hid/intel-ish-hid/ishtp/bus.c b/drivers/hid/intel-ish-=
hid/ishtp/bus.c
index f0802b047ed8..8a51bd9cd093 100644
--- a/drivers/hid/intel-ish-hid/ishtp/bus.c
+++ b/drivers/hid/intel-ish-hid/ishtp/bus.c
@@ -255,7 +255,7 @@ static int ishtp_cl_bus_match(struct device *dev, struc=
t device_driver *drv)
  *
  * Return: Return value from driver remove() call.
  */
-static int ishtp_cl_device_remove(struct device *dev)
+static void ishtp_cl_device_remove(struct device *dev)
 {
 	struct ishtp_cl_device *device =3D to_ishtp_cl_device(dev);
 	struct ishtp_cl_driver *driver =3D to_ishtp_cl_driver(dev->driver);
@@ -267,8 +267,6 @@ static int ishtp_cl_device_remove(struct device *dev)
=20
 	if (driver->remove)
 		driver->remove(device);
-
-	return 0;
 }
=20
 /**
diff --git a/drivers/hv/vmbus_drv.c b/drivers/hv/vmbus_drv.c
index 57bbbaa4e8f7..392c1ac4f819 100644
--- a/drivers/hv/vmbus_drv.c
+++ b/drivers/hv/vmbus_drv.c
@@ -922,7 +922,7 @@ static int vmbus_probe(struct device *child_device)
 /*
  * vmbus_remove - Remove a vmbus device
  */
-static int vmbus_remove(struct device *child_device)
+static void vmbus_remove(struct device *child_device)
 {
 	struct hv_driver *drv;
 	struct hv_device *dev =3D device_to_hv_device(child_device);
@@ -932,11 +932,8 @@ static int vmbus_remove(struct device *child_device)
 		if (drv->remove)
 			drv->remove(dev);
 	}
-
-	return 0;
 }
=20
-
 /*
  * vmbus_shutdown - Shutdown a vmbus device
  */
diff --git a/drivers/hwtracing/intel_th/core.c b/drivers/hwtracing/intel_th=
/core.c
index 66eed2dff818..7e753a75d23b 100644
--- a/drivers/hwtracing/intel_th/core.c
+++ b/drivers/hwtracing/intel_th/core.c
@@ -95,7 +95,7 @@ static int intel_th_probe(struct device *dev)
=20
 static void intel_th_device_remove(struct intel_th_device *thdev);
=20
-static int intel_th_remove(struct device *dev)
+static void intel_th_remove(struct device *dev)
 {
 	struct intel_th_driver *thdrv =3D to_intel_th_driver(dev->driver);
 	struct intel_th_device *thdev =3D to_intel_th_device(dev);
@@ -164,8 +164,6 @@ static int intel_th_remove(struct device *dev)
 	pm_runtime_disable(dev);
 	pm_runtime_set_active(dev);
 	pm_runtime_enable(dev);
-
-	return 0;
 }
=20
 static struct bus_type intel_th_bus =3D {
diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
index 84f12bf90644..54964fbe3f03 100644
--- a/drivers/i2c/i2c-core-base.c
+++ b/drivers/i2c/i2c-core-base.c
@@ -601,7 +601,7 @@ static int i2c_device_probe(struct device *dev)
 	return status;
 }
=20
-static int i2c_device_remove(struct device *dev)
+static void i2c_device_remove(struct device *dev)
 {
 	struct i2c_client	*client =3D to_i2c_client(dev);
 	struct i2c_adapter      *adap;
@@ -631,9 +631,6 @@ static int i2c_device_remove(struct device *dev)
 	client->irq =3D 0;
 	if (client->flags & I2C_CLIENT_HOST_NOTIFY)
 		pm_runtime_put(&client->adapter->dev);
-
-	/* return always 0 because there is WIP to make remove-functions void */
-	return 0;
 }
=20
 #ifdef CONFIG_PM_SLEEP
diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
index e2e12a5585e5..c3b4c677b442 100644
--- a/drivers/i3c/master.c
+++ b/drivers/i3c/master.c
@@ -322,7 +322,7 @@ static int i3c_device_probe(struct device *dev)
 	return driver->probe(i3cdev);
 }
=20
-static int i3c_device_remove(struct device *dev)
+static void i3c_device_remove(struct device *dev)
 {
 	struct i3c_device *i3cdev =3D dev_to_i3cdev(dev);
 	struct i3c_driver *driver =3D drv_to_i3cdrv(dev->driver);
@@ -331,8 +331,6 @@ static int i3c_device_remove(struct device *dev)
 		driver->remove(i3cdev);
=20
 	i3c_device_free_ibi(i3cdev);
-
-	return 0;
 }
=20
 struct bus_type i3c_bus_type =3D {
diff --git a/drivers/input/gameport/gameport.c b/drivers/input/gameport/gam=
eport.c
index 61fa7e724172..db58a01b23d3 100644
--- a/drivers/input/gameport/gameport.c
+++ b/drivers/input/gameport/gameport.c
@@ -697,13 +697,12 @@ static int gameport_driver_probe(struct device *dev)
 	return gameport->drv ? 0 : -ENODEV;
 }
=20
-static int gameport_driver_remove(struct device *dev)
+static void gameport_driver_remove(struct device *dev)
 {
 	struct gameport *gameport =3D to_gameport_port(dev);
 	struct gameport_driver *drv =3D to_gameport_driver(dev->driver);
=20
 	drv->disconnect(gameport);
-	return 0;
 }
=20
 static void gameport_attach_driver(struct gameport_driver *drv)
diff --git a/drivers/input/serio/serio.c b/drivers/input/serio/serio.c
index 29f491082926..ec117be3d8d8 100644
--- a/drivers/input/serio/serio.c
+++ b/drivers/input/serio/serio.c
@@ -778,12 +778,11 @@ static int serio_driver_probe(struct device *dev)
 	return serio_connect_driver(serio, drv);
 }
=20
-static int serio_driver_remove(struct device *dev)
+static void serio_driver_remove(struct device *dev)
 {
 	struct serio *serio =3D to_serio_port(dev);
=20
 	serio_disconnect_driver(serio);
-	return 0;
 }
=20
 static void serio_cleanup(struct serio *serio)
diff --git a/drivers/ipack/ipack.c b/drivers/ipack/ipack.c
index 7de9605cac4f..b1c3198355e7 100644
--- a/drivers/ipack/ipack.c
+++ b/drivers/ipack/ipack.c
@@ -67,15 +67,13 @@ static int ipack_bus_probe(struct device *device)
 	return drv->ops->probe(dev);
 }
=20
-static int ipack_bus_remove(struct device *device)
+static void ipack_bus_remove(struct device *device)
 {
 	struct ipack_device *dev =3D to_ipack_dev(device);
 	struct ipack_driver *drv =3D to_ipack_driver(device->driver);
=20
 	if (drv->ops->remove)
 		drv->ops->remove(dev);
-
-	return 0;
 }
=20
 static int ipack_uevent(struct device *dev, struct kobj_uevent_env *env)
diff --git a/drivers/macintosh/macio_asic.c b/drivers/macintosh/macio_asic.=
c
index 49af60bdac92..c1fdf2896021 100644
--- a/drivers/macintosh/macio_asic.c
+++ b/drivers/macintosh/macio_asic.c
@@ -88,7 +88,7 @@ static int macio_device_probe(struct device *dev)
 	return error;
 }
=20
-static int macio_device_remove(struct device *dev)
+static void macio_device_remove(struct device *dev)
 {
 	struct macio_dev * macio_dev =3D to_macio_device(dev);
 	struct macio_driver * drv =3D to_macio_driver(dev->driver);
@@ -96,8 +96,6 @@ static int macio_device_remove(struct device *dev)
 	if (dev->driver && drv->remove)
 		drv->remove(macio_dev);
 	macio_dev_put(macio_dev);
-
-	return 0;
 }
=20
 static void macio_device_shutdown(struct device *dev)
diff --git a/drivers/mcb/mcb-core.c b/drivers/mcb/mcb-core.c
index 38fbb3b59873..edf4ee6eff25 100644
--- a/drivers/mcb/mcb-core.c
+++ b/drivers/mcb/mcb-core.c
@@ -77,7 +77,7 @@ static int mcb_probe(struct device *dev)
 	return ret;
 }
=20
-static int mcb_remove(struct device *dev)
+static void mcb_remove(struct device *dev)
 {
 	struct mcb_driver *mdrv =3D to_mcb_driver(dev->driver);
 	struct mcb_device *mdev =3D to_mcb_device(dev);
@@ -89,8 +89,6 @@ static int mcb_remove(struct device *dev)
 	module_put(carrier_mod);
=20
 	put_device(&mdev->dev);
-
-	return 0;
 }
=20
 static void mcb_shutdown(struct device *dev)
diff --git a/drivers/media/pci/bt8xx/bttv-gpio.c b/drivers/media/pci/bt8xx/=
bttv-gpio.c
index b730225ca887..a2b18e2bed1b 100644
--- a/drivers/media/pci/bt8xx/bttv-gpio.c
+++ b/drivers/media/pci/bt8xx/bttv-gpio.c
@@ -46,14 +46,13 @@ static int bttv_sub_probe(struct device *dev)
 	return sub->probe ? sub->probe(sdev) : -ENODEV;
 }
=20
-static int bttv_sub_remove(struct device *dev)
+static void bttv_sub_remove(struct device *dev)
 {
 	struct bttv_sub_device *sdev =3D to_bttv_sub_dev(dev);
 	struct bttv_sub_driver *sub =3D to_bttv_sub_drv(dev->driver);
=20
 	if (sub->remove)
 		sub->remove(sdev);
-	return 0;
 }
=20
 struct bus_type bttv_sub_bus_type =3D {
diff --git a/drivers/memstick/core/memstick.c b/drivers/memstick/core/memst=
ick.c
index bb1065990aeb..660df7d269fa 100644
--- a/drivers/memstick/core/memstick.c
+++ b/drivers/memstick/core/memstick.c
@@ -91,7 +91,7 @@ static int memstick_device_probe(struct device *dev)
 	return rc;
 }
=20
-static int memstick_device_remove(struct device *dev)
+static void memstick_device_remove(struct device *dev)
 {
 	struct memstick_dev *card =3D container_of(dev, struct memstick_dev,
 						  dev);
@@ -105,7 +105,6 @@ static int memstick_device_remove(struct device *dev)
 	}
=20
 	put_device(dev);
-	return 0;
 }
=20
 #ifdef CONFIG_PM
diff --git a/drivers/mfd/mcp-core.c b/drivers/mfd/mcp-core.c
index eff9423e90f5..2fa592c37c6f 100644
--- a/drivers/mfd/mcp-core.c
+++ b/drivers/mfd/mcp-core.c
@@ -33,13 +33,12 @@ static int mcp_bus_probe(struct device *dev)
 	return drv->probe(mcp);
 }
=20
-static int mcp_bus_remove(struct device *dev)
+static void mcp_bus_remove(struct device *dev)
 {
 	struct mcp *mcp =3D to_mcp(dev);
 	struct mcp_driver *drv =3D to_mcp_driver(dev->driver);
=20
 	drv->remove(mcp);
-	return 0;
 }
=20
 static struct bus_type mcp_bus_type =3D {
diff --git a/drivers/misc/mei/bus.c b/drivers/misc/mei/bus.c
index 935acc6bbf3c..3bf2bb4fd152 100644
--- a/drivers/misc/mei/bus.c
+++ b/drivers/misc/mei/bus.c
@@ -884,7 +884,7 @@ static int mei_cl_device_probe(struct device *dev)
  *
  * Return:  0 on success; < 0 otherwise
  */
-static int mei_cl_device_remove(struct device *dev)
+static void mei_cl_device_remove(struct device *dev)
 {
 	struct mei_cl_device *cldev =3D to_mei_cl_device(dev);
 	struct mei_cl_driver *cldrv =3D to_mei_cl_driver(dev->driver);
@@ -896,8 +896,6 @@ static int mei_cl_device_remove(struct device *dev)
=20
 	mei_cl_bus_module_put(cldev);
 	module_put(THIS_MODULE);
-
-	return 0;
 }
=20
 static ssize_t name_show(struct device *dev, struct device_attribute *a,
diff --git a/drivers/misc/tifm_core.c b/drivers/misc/tifm_core.c
index 667e574a7df2..52656fc87e99 100644
--- a/drivers/misc/tifm_core.c
+++ b/drivers/misc/tifm_core.c
@@ -87,7 +87,7 @@ static void tifm_dummy_event(struct tifm_dev *sock)
 	return;
 }
=20
-static int tifm_device_remove(struct device *dev)
+static void tifm_device_remove(struct device *dev)
 {
 	struct tifm_dev *sock =3D container_of(dev, struct tifm_dev, dev);
 	struct tifm_driver *drv =3D container_of(dev->driver, struct tifm_driver,
@@ -101,7 +101,6 @@ static int tifm_device_remove(struct device *dev)
 	}
=20
 	put_device(dev);
-	return 0;
 }
=20
 #ifdef CONFIG_PM
diff --git a/drivers/mmc/core/bus.c b/drivers/mmc/core/bus.c
index 4383c262b3f5..f6b7a9c5bbff 100644
--- a/drivers/mmc/core/bus.c
+++ b/drivers/mmc/core/bus.c
@@ -140,14 +140,12 @@ static int mmc_bus_probe(struct device *dev)
 	return drv->probe(card);
 }
=20
-static int mmc_bus_remove(struct device *dev)
+static void mmc_bus_remove(struct device *dev)
 {
 	struct mmc_driver *drv =3D to_mmc_driver(dev->driver);
 	struct mmc_card *card =3D mmc_dev_to_card(dev);
=20
 	drv->remove(card);
-
-	return 0;
 }
=20
 static void mmc_bus_shutdown(struct device *dev)
diff --git a/drivers/mmc/core/sdio_bus.c b/drivers/mmc/core/sdio_bus.c
index 3d709029e07c..fda03b35c14a 100644
--- a/drivers/mmc/core/sdio_bus.c
+++ b/drivers/mmc/core/sdio_bus.c
@@ -203,7 +203,7 @@ static int sdio_bus_probe(struct device *dev)
 	return ret;
 }
=20
-static int sdio_bus_remove(struct device *dev)
+static void sdio_bus_remove(struct device *dev)
 {
 	struct sdio_driver *drv =3D to_sdio_driver(dev->driver);
 	struct sdio_func *func =3D dev_to_sdio_func(dev);
@@ -232,8 +232,6 @@ static int sdio_bus_remove(struct device *dev)
 		pm_runtime_put_sync(dev);
=20
 	dev_pm_domain_detach(dev, false);
-
-	return 0;
 }
=20
 static const struct dev_pm_ops sdio_bus_pm_ops =3D {
diff --git a/drivers/net/netdevsim/bus.c b/drivers/net/netdevsim/bus.c
index ccec29970d5b..14b154929533 100644
--- a/drivers/net/netdevsim/bus.c
+++ b/drivers/net/netdevsim/bus.c
@@ -370,12 +370,11 @@ static int nsim_bus_probe(struct device *dev)
 	return nsim_dev_probe(nsim_bus_dev);
 }
=20
-static int nsim_bus_remove(struct device *dev)
+static void nsim_bus_remove(struct device *dev)
 {
 	struct nsim_bus_dev *nsim_bus_dev =3D to_nsim_bus_dev(dev);
=20
 	nsim_dev_remove(nsim_bus_dev);
-	return 0;
 }
=20
 static int nsim_num_vf(struct device *dev)
diff --git a/drivers/ntb/core.c b/drivers/ntb/core.c
index f8f75a504a58..27dd93deff6e 100644
--- a/drivers/ntb/core.c
+++ b/drivers/ntb/core.c
@@ -271,7 +271,7 @@ static int ntb_probe(struct device *dev)
 	return rc;
 }
=20
-static int ntb_remove(struct device *dev)
+static void ntb_remove(struct device *dev)
 {
 	struct ntb_dev *ntb;
 	struct ntb_client *client;
@@ -283,8 +283,6 @@ static int ntb_remove(struct device *dev)
 		client->ops.remove(client, ntb);
 		put_device(dev);
 	}
-
-	return 0;
 }
=20
 static void ntb_dev_release(struct device *dev)
diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
index 4a02561cfb96..a9b97ebc71ac 100644
--- a/drivers/ntb/ntb_transport.c
+++ b/drivers/ntb/ntb_transport.c
@@ -304,7 +304,7 @@ static int ntb_transport_bus_probe(struct device *dev)
 	return rc;
 }
=20
-static int ntb_transport_bus_remove(struct device *dev)
+static void ntb_transport_bus_remove(struct device *dev)
 {
 	const struct ntb_transport_client *client;
=20
@@ -312,8 +312,6 @@ static int ntb_transport_bus_remove(struct device *dev)
 	client->remove(dev);
=20
 	put_device(dev);
-
-	return 0;
 }
=20
 static struct bus_type ntb_transport_bus =3D {
diff --git a/drivers/nvdimm/bus.c b/drivers/nvdimm/bus.c
index e6aa87043a95..9dc7f3edd42b 100644
--- a/drivers/nvdimm/bus.c
+++ b/drivers/nvdimm/bus.c
@@ -108,7 +108,7 @@ static int nvdimm_bus_probe(struct device *dev)
 	return rc;
 }
=20
-static int nvdimm_bus_remove(struct device *dev)
+static void nvdimm_bus_remove(struct device *dev)
 {
 	struct nd_device_driver *nd_drv =3D to_nd_device_driver(dev->driver);
 	struct module *provider =3D to_bus_provider(dev);
@@ -123,7 +123,6 @@ static int nvdimm_bus_remove(struct device *dev)
 	dev_dbg(&nvdimm_bus->dev, "%s.remove(%s)\n", dev->driver->name,
 			dev_name(dev));
 	module_put(provider);
-	return 0;
 }
=20
 static void nvdimm_bus_shutdown(struct device *dev)
diff --git a/drivers/pci/endpoint/pci-epf-core.c b/drivers/pci/endpoint/pci=
-epf-core.c
index 4b9ad96bf1b2..502eb79cd551 100644
--- a/drivers/pci/endpoint/pci-epf-core.c
+++ b/drivers/pci/endpoint/pci-epf-core.c
@@ -387,7 +387,7 @@ static int pci_epf_device_probe(struct device *dev)
 	return driver->probe(epf);
 }
=20
-static int pci_epf_device_remove(struct device *dev)
+static void pci_epf_device_remove(struct device *dev)
 {
 	struct pci_epf *epf =3D to_pci_epf(dev);
 	struct pci_epf_driver *driver =3D to_pci_epf_driver(dev->driver);
@@ -395,8 +395,6 @@ static int pci_epf_device_remove(struct device *dev)
 	if (driver->remove)
 		driver->remove(epf);
 	epf->driver =3D NULL;
-
-	return 0;
 }
=20
 static struct bus_type pci_epf_bus_type =3D {
diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
index 3a72352aa5cf..a0615395500a 100644
--- a/drivers/pci/pci-driver.c
+++ b/drivers/pci/pci-driver.c
@@ -440,7 +440,7 @@ static int pci_device_probe(struct device *dev)
 	return error;
 }
=20
-static int pci_device_remove(struct device *dev)
+static void pci_device_remove(struct device *dev)
 {
 	struct pci_dev *pci_dev =3D to_pci_dev(dev);
 	struct pci_driver *drv =3D pci_dev->driver;
@@ -476,7 +476,6 @@ static int pci_device_remove(struct device *dev)
 	 */
=20
 	pci_dev_put(pci_dev);
-	return 0;
 }
=20
 static void pci_device_shutdown(struct device *dev)
diff --git a/drivers/pcmcia/ds.c b/drivers/pcmcia/ds.c
index bd81aa64d011..5bd1b80424e7 100644
--- a/drivers/pcmcia/ds.c
+++ b/drivers/pcmcia/ds.c
@@ -350,7 +350,7 @@ static void pcmcia_card_remove(struct pcmcia_socket *s,=
 struct pcmcia_device *le
 	return;
 }
=20
-static int pcmcia_device_remove(struct device *dev)
+static void pcmcia_device_remove(struct device *dev)
 {
 	struct pcmcia_device *p_dev;
 	struct pcmcia_driver *p_drv;
@@ -389,8 +389,6 @@ static int pcmcia_device_remove(struct device *dev)
 	/* references from pcmcia_device_probe */
 	pcmcia_put_dev(p_dev);
 	module_put(p_drv->owner);
-
-	return 0;
 }
=20
=20
diff --git a/drivers/platform/surface/aggregator/bus.c b/drivers/platform/s=
urface/aggregator/bus.c
index 0169677c243e..0a40dd9c94ed 100644
--- a/drivers/platform/surface/aggregator/bus.c
+++ b/drivers/platform/surface/aggregator/bus.c
@@ -316,14 +316,12 @@ static int ssam_bus_probe(struct device *dev)
 		->probe(to_ssam_device(dev));
 }
=20
-static int ssam_bus_remove(struct device *dev)
+static void ssam_bus_remove(struct device *dev)
 {
 	struct ssam_device_driver *sdrv =3D to_ssam_device_driver(dev->driver);
=20
 	if (sdrv->remove)
 		sdrv->remove(to_ssam_device(dev));
-
-	return 0;
 }
=20
 struct bus_type ssam_bus_type =3D {
diff --git a/drivers/platform/x86/wmi.c b/drivers/platform/x86/wmi.c
index 62e0d56a3332..a76313006bdc 100644
--- a/drivers/platform/x86/wmi.c
+++ b/drivers/platform/x86/wmi.c
@@ -980,7 +980,7 @@ static int wmi_dev_probe(struct device *dev)
 	return ret;
 }
=20
-static int wmi_dev_remove(struct device *dev)
+static void wmi_dev_remove(struct device *dev)
 {
 	struct wmi_block *wblock =3D dev_to_wblock(dev);
 	struct wmi_driver *wdriver =3D
@@ -997,8 +997,6 @@ static int wmi_dev_remove(struct device *dev)
=20
 	if (ACPI_FAILURE(wmi_method_enable(wblock, 0)))
 		dev_warn(dev, "failed to disable device\n");
-
-	return 0;
 }
=20
 static struct class wmi_bus_class =3D {
diff --git a/drivers/pnp/driver.c b/drivers/pnp/driver.c
index c29d590c5e4f..cc6757dfa3f1 100644
--- a/drivers/pnp/driver.c
+++ b/drivers/pnp/driver.c
@@ -123,7 +123,7 @@ static int pnp_device_probe(struct device *dev)
 	return error;
 }
=20
-static int pnp_device_remove(struct device *dev)
+static void pnp_device_remove(struct device *dev)
 {
 	struct pnp_dev *pnp_dev =3D to_pnp_dev(dev);
 	struct pnp_driver *drv =3D pnp_dev->driver;
@@ -139,7 +139,6 @@ static int pnp_device_remove(struct device *dev)
 		pnp_disable_dev(pnp_dev);
=20
 	pnp_device_detach(pnp_dev);
-	return 0;
 }
=20
 static void pnp_device_shutdown(struct device *dev)
diff --git a/drivers/rapidio/rio-driver.c b/drivers/rapidio/rio-driver.c
index 72874153972e..a72bb0a40fcf 100644
--- a/drivers/rapidio/rio-driver.c
+++ b/drivers/rapidio/rio-driver.c
@@ -112,7 +112,7 @@ static int rio_device_probe(struct device *dev)
  * driver, then run the driver remove() method.  Then update
  * the reference count.
  */
-static int rio_device_remove(struct device *dev)
+static void rio_device_remove(struct device *dev)
 {
 	struct rio_dev *rdev =3D to_rio_dev(dev);
 	struct rio_driver *rdrv =3D rdev->driver;
@@ -124,8 +124,6 @@ static int rio_device_remove(struct device *dev)
 	}
=20
 	rio_dev_put(rdev);
-
-	return 0;
 }
=20
 static void rio_device_shutdown(struct device *dev)
diff --git a/drivers/rpmsg/rpmsg_core.c b/drivers/rpmsg/rpmsg_core.c
index c1404d3dae2c..7f6fac618ab2 100644
--- a/drivers/rpmsg/rpmsg_core.c
+++ b/drivers/rpmsg/rpmsg_core.c
@@ -530,7 +530,7 @@ static int rpmsg_dev_probe(struct device *dev)
 	return err;
 }
=20
-static int rpmsg_dev_remove(struct device *dev)
+static void rpmsg_dev_remove(struct device *dev)
 {
 	struct rpmsg_device *rpdev =3D to_rpmsg_device(dev);
 	struct rpmsg_driver *rpdrv =3D to_rpmsg_driver(rpdev->dev.driver);
@@ -546,8 +546,6 @@ static int rpmsg_dev_remove(struct device *dev)
=20
 	if (rpdev->ept)
 		rpmsg_destroy_ept(rpdev->ept);
-
-	return err;
 }
=20
 static struct bus_type rpmsg_bus =3D {
diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
index 5b3a20a140f9..58f69366bdcc 100644
--- a/drivers/scsi/scsi_debug.c
+++ b/drivers/scsi/scsi_debug.c
@@ -7674,7 +7674,7 @@ static int sdebug_driver_probe(struct device *dev)
 	return error;
 }
=20
-static int sdebug_driver_remove(struct device *dev)
+static void sdebug_driver_remove(struct device *dev)
 {
 	struct sdebug_host_info *sdbg_host;
 	struct sdebug_dev_info *sdbg_devinfo, *tmp;
@@ -7691,7 +7691,6 @@ static int sdebug_driver_remove(struct device *dev)
 	}
=20
 	scsi_host_put(sdbg_host->shost);
-	return 0;
 }
=20
 static int pseudo_lld_bus_match(struct device *dev,
diff --git a/drivers/siox/siox-core.c b/drivers/siox/siox-core.c
index 1794ff0106bc..7c4f32d76966 100644
--- a/drivers/siox/siox-core.c
+++ b/drivers/siox/siox-core.c
@@ -520,7 +520,7 @@ static int siox_probe(struct device *dev)
 	return sdriver->probe(sdevice);
 }
=20
-static int siox_remove(struct device *dev)
+static void siox_remove(struct device *dev)
 {
 	struct siox_driver *sdriver =3D
 		container_of(dev->driver, struct siox_driver, driver);
@@ -528,8 +528,6 @@ static int siox_remove(struct device *dev)
=20
 	if (sdriver->remove)
 		sdriver->remove(sdevice);
-
-	return 0;
 }
=20
 static void siox_shutdown(struct device *dev)
diff --git a/drivers/slimbus/core.c b/drivers/slimbus/core.c
index 1d2bc181da05..78480e332ab8 100644
--- a/drivers/slimbus/core.c
+++ b/drivers/slimbus/core.c
@@ -81,7 +81,7 @@ static int slim_device_probe(struct device *dev)
 	return ret;
 }
=20
-static int slim_device_remove(struct device *dev)
+static void slim_device_remove(struct device *dev)
 {
 	struct slim_device *sbdev =3D to_slim_device(dev);
 	struct slim_driver *sbdrv;
@@ -91,8 +91,6 @@ static int slim_device_remove(struct device *dev)
 		if (sbdrv->remove)
 			sbdrv->remove(sbdev);
 	}
-
-	return 0;
 }
=20
 static int slim_device_uevent(struct device *dev, struct kobj_uevent_env *=
env)
diff --git a/drivers/soc/qcom/apr.c b/drivers/soc/qcom/apr.c
index 7abfc8c4fdc7..475a57b435b2 100644
--- a/drivers/soc/qcom/apr.c
+++ b/drivers/soc/qcom/apr.c
@@ -217,7 +217,7 @@ static int apr_device_probe(struct device *dev)
 	return adrv->probe(adev);
 }
=20
-static int apr_device_remove(struct device *dev)
+static void apr_device_remove(struct device *dev)
 {
 	struct apr_device *adev =3D to_apr_device(dev);
 	struct apr_driver *adrv;
@@ -231,8 +231,6 @@ static int apr_device_remove(struct device *dev)
 		idr_remove(&apr->svcs_idr, adev->svc_id);
 		spin_unlock(&apr->svcs_lock);
 	}
-
-	return 0;
 }
=20
 static int apr_uevent(struct device *dev, struct kobj_uevent_env *env)
diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index c99181165321..ad2b558dc9cb 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -405,7 +405,7 @@ static int spi_probe(struct device *dev)
 	return ret;
 }
=20
-static int spi_remove(struct device *dev)
+static void spi_remove(struct device *dev)
 {
 	const struct spi_driver		*sdrv =3D to_spi_driver(dev->driver);
=20
@@ -420,8 +420,6 @@ static int spi_remove(struct device *dev)
 	}
=20
 	dev_pm_domain_detach(dev, true);
-
-	return 0;
 }
=20
 static void spi_shutdown(struct device *dev)
diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
index 51f5aeb65b3b..b37ead9e2fad 100644
--- a/drivers/spmi/spmi.c
+++ b/drivers/spmi/spmi.c
@@ -345,7 +345,7 @@ static int spmi_drv_probe(struct device *dev)
 	return err;
 }
=20
-static int spmi_drv_remove(struct device *dev)
+static void spmi_drv_remove(struct device *dev)
 {
 	const struct spmi_driver *sdrv =3D to_spmi_driver(dev->driver);
=20
@@ -356,7 +356,6 @@ static int spmi_drv_remove(struct device *dev)
 	pm_runtime_disable(dev);
 	pm_runtime_set_suspended(dev);
 	pm_runtime_put_noidle(dev);
-	return 0;
 }
=20
 static void spmi_drv_shutdown(struct device *dev)
diff --git a/drivers/ssb/main.c b/drivers/ssb/main.c
index 3a29b5570f9f..8a93c83cb6f8 100644
--- a/drivers/ssb/main.c
+++ b/drivers/ssb/main.c
@@ -283,7 +283,7 @@ static void ssb_device_shutdown(struct device *dev)
 		ssb_drv->shutdown(ssb_dev);
 }
=20
-static int ssb_device_remove(struct device *dev)
+static void ssb_device_remove(struct device *dev)
 {
 	struct ssb_device *ssb_dev =3D dev_to_ssb_dev(dev);
 	struct ssb_driver *ssb_drv =3D drv_to_ssb_drv(dev->driver);
@@ -291,8 +291,6 @@ static int ssb_device_remove(struct device *dev)
 	if (ssb_drv && ssb_drv->remove)
 		ssb_drv->remove(ssb_dev);
 	ssb_device_put(ssb_dev);
-
-	return 0;
 }
=20
 static int ssb_device_probe(struct device *dev)
diff --git a/drivers/staging/fieldbus/anybuss/host.c b/drivers/staging/fiel=
dbus/anybuss/host.c
index 0f730efe9a6d..8a75f6642c78 100644
--- a/drivers/staging/fieldbus/anybuss/host.c
+++ b/drivers/staging/fieldbus/anybuss/host.c
@@ -1186,15 +1186,13 @@ static int anybus_bus_probe(struct device *dev)
 	return adrv->probe(adev);
 }
=20
-static int anybus_bus_remove(struct device *dev)
+static void anybus_bus_remove(struct device *dev)
 {
 	struct anybuss_client_driver *adrv =3D
 		to_anybuss_client_driver(dev->driver);
=20
 	if (adrv->remove)
 		adrv->remove(to_anybuss_client(dev));
-
-	return 0;
 }
=20
 static struct bus_type anybus_bus =3D {
diff --git a/drivers/staging/greybus/gbphy.c b/drivers/staging/greybus/gbph=
y.c
index 13d319860da5..5a5c17a4519b 100644
--- a/drivers/staging/greybus/gbphy.c
+++ b/drivers/staging/greybus/gbphy.c
@@ -169,7 +169,7 @@ static int gbphy_dev_probe(struct device *dev)
 	return ret;
 }
=20
-static int gbphy_dev_remove(struct device *dev)
+static void gbphy_dev_remove(struct device *dev)
 {
 	struct gbphy_driver *gbphy_drv =3D to_gbphy_driver(dev->driver);
 	struct gbphy_device *gbphy_dev =3D to_gbphy_dev(dev);
@@ -180,8 +180,6 @@ static int gbphy_dev_remove(struct device *dev)
 	pm_runtime_set_suspended(dev);
 	pm_runtime_put_noidle(dev);
 	pm_runtime_dont_use_autosuspend(dev);
-
-	return 0;
 }
=20
 static struct bus_type gbphy_bus_type =3D {
diff --git a/drivers/target/loopback/tcm_loop.c b/drivers/target/loopback/t=
cm_loop.c
index 6d0b0e67e79e..cbb2118fb35e 100644
--- a/drivers/target/loopback/tcm_loop.c
+++ b/drivers/target/loopback/tcm_loop.c
@@ -81,7 +81,7 @@ static int tcm_loop_show_info(struct seq_file *m, struct =
Scsi_Host *host)
 }
=20
 static int tcm_loop_driver_probe(struct device *);
-static int tcm_loop_driver_remove(struct device *);
+static void tcm_loop_driver_remove(struct device *);
=20
 static int pseudo_lld_bus_match(struct device *dev,
 				struct device_driver *dev_driver)
@@ -363,7 +363,7 @@ static int tcm_loop_driver_probe(struct device *dev)
 	return 0;
 }
=20
-static int tcm_loop_driver_remove(struct device *dev)
+static void tcm_loop_driver_remove(struct device *dev)
 {
 	struct tcm_loop_hba *tl_hba;
 	struct Scsi_Host *sh;
@@ -373,7 +373,6 @@ static int tcm_loop_driver_remove(struct device *dev)
=20
 	scsi_remove_host(sh);
 	scsi_host_put(sh);
-	return 0;
 }
=20
 static void tcm_loop_release_adapter(struct device *dev)
diff --git a/drivers/thunderbolt/domain.c b/drivers/thunderbolt/domain.c
index a062befcb3b2..7018d959f775 100644
--- a/drivers/thunderbolt/domain.c
+++ b/drivers/thunderbolt/domain.c
@@ -86,7 +86,7 @@ static int tb_service_probe(struct device *dev)
 	return driver->probe(svc, id);
 }
=20
-static int tb_service_remove(struct device *dev)
+static void tb_service_remove(struct device *dev)
 {
 	struct tb_service *svc =3D tb_to_service(dev);
 	struct tb_service_driver *driver;
@@ -94,8 +94,6 @@ static int tb_service_remove(struct device *dev)
 	driver =3D container_of(dev->driver, struct tb_service_driver, driver);
 	if (driver->remove)
 		driver->remove(svc);
-
-	return 0;
 }
=20
 static void tb_service_shutdown(struct device *dev)
diff --git a/drivers/tty/serdev/core.c b/drivers/tty/serdev/core.c
index 9cdfcfe07e87..92498961fd92 100644
--- a/drivers/tty/serdev/core.c
+++ b/drivers/tty/serdev/core.c
@@ -421,15 +421,13 @@ static int serdev_drv_probe(struct device *dev)
 	return ret;
 }
=20
-static int serdev_drv_remove(struct device *dev)
+static void serdev_drv_remove(struct device *dev)
 {
 	const struct serdev_device_driver *sdrv =3D to_serdev_device_driver(dev->=
driver);
 	if (sdrv->remove)
 		sdrv->remove(to_serdev_device(dev));
=20
 	dev_pm_domain_detach(dev, true);
-
-	return 0;
 }
=20
 static struct bus_type serdev_bus_type =3D {
diff --git a/drivers/usb/common/ulpi.c b/drivers/usb/common/ulpi.c
index 7e13b74e60e5..4169cf40a03b 100644
--- a/drivers/usb/common/ulpi.c
+++ b/drivers/usb/common/ulpi.c
@@ -78,14 +78,12 @@ static int ulpi_probe(struct device *dev)
 	return drv->probe(to_ulpi_dev(dev));
 }
=20
-static int ulpi_remove(struct device *dev)
+static void ulpi_remove(struct device *dev)
 {
 	struct ulpi_driver *drv =3D to_ulpi_driver(dev->driver);
=20
 	if (drv->remove)
 		drv->remove(to_ulpi_dev(dev));
-
-	return 0;
 }
=20
 static struct bus_type ulpi_bus =3D {
diff --git a/drivers/usb/serial/bus.c b/drivers/usb/serial/bus.c
index 7133818a58b9..9e38142acd38 100644
--- a/drivers/usb/serial/bus.c
+++ b/drivers/usb/serial/bus.c
@@ -74,7 +74,7 @@ static int usb_serial_device_probe(struct device *dev)
 	return retval;
 }
=20
-static int usb_serial_device_remove(struct device *dev)
+static void usb_serial_device_remove(struct device *dev)
 {
 	struct usb_serial_port *port =3D to_usb_serial_port(dev);
 	struct usb_serial_driver *driver;
@@ -101,8 +101,6 @@ static int usb_serial_device_remove(struct device *dev)
=20
 	if (!autopm_err)
 		usb_autopm_put_interface(port->serial->interface);
-
-	return 0;
 }
=20
 static ssize_t new_id_store(struct device_driver *driver,
diff --git a/drivers/usb/typec/bus.c b/drivers/usb/typec/bus.c
index 7f3c9a8e2bf0..78e0e78954f2 100644
--- a/drivers/usb/typec/bus.c
+++ b/drivers/usb/typec/bus.c
@@ -382,7 +382,7 @@ static int typec_probe(struct device *dev)
 	return ret;
 }
=20
-static int typec_remove(struct device *dev)
+static void typec_remove(struct device *dev)
 {
 	struct typec_altmode_driver *drv =3D to_altmode_driver(dev->driver);
 	struct typec_altmode *adev =3D to_typec_altmode(dev);
@@ -400,8 +400,6 @@ static int typec_remove(struct device *dev)
=20
 	adev->desc =3D NULL;
 	adev->ops =3D NULL;
-
-	return 0;
 }
=20
 struct bus_type typec_bus =3D {
diff --git a/drivers/vdpa/vdpa.c b/drivers/vdpa/vdpa.c
index bb3f1d1f0422..3fc4525fc05c 100644
--- a/drivers/vdpa/vdpa.c
+++ b/drivers/vdpa/vdpa.c
@@ -34,15 +34,13 @@ static int vdpa_dev_probe(struct device *d)
 	return ret;
 }
=20
-static int vdpa_dev_remove(struct device *d)
+static void vdpa_dev_remove(struct device *d)
 {
 	struct vdpa_device *vdev =3D dev_to_vdpa(d);
 	struct vdpa_driver *drv =3D drv_to_vdpa(vdev->dev.driver);
=20
 	if (drv && drv->remove)
 		drv->remove(vdev);
-
-	return 0;
 }
=20
 static struct bus_type vdpa_bus =3D {
diff --git a/drivers/vfio/mdev/mdev_driver.c b/drivers/vfio/mdev/mdev_drive=
r.c
index c368ec824e2b..e2cb1ff56f6c 100644
--- a/drivers/vfio/mdev/mdev_driver.c
+++ b/drivers/vfio/mdev/mdev_driver.c
@@ -57,7 +57,7 @@ static int mdev_probe(struct device *dev)
 	return ret;
 }
=20
-static int mdev_remove(struct device *dev)
+static void mdev_remove(struct device *dev)
 {
 	struct mdev_driver *drv =3D
 		container_of(dev->driver, struct mdev_driver, driver);
@@ -67,8 +67,6 @@ static int mdev_remove(struct device *dev)
 		drv->remove(mdev);
=20
 	mdev_detach_iommu(mdev);
-
-	return 0;
 }
=20
 static int mdev_match(struct device *dev, struct device_driver *drv)
diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
index 4b15c00c0a0a..2a6055c0d4d3 100644
--- a/drivers/virtio/virtio.c
+++ b/drivers/virtio/virtio.c
@@ -278,7 +278,7 @@ static int virtio_dev_probe(struct device *_d)
=20
 }
=20
-static int virtio_dev_remove(struct device *_d)
+static void virtio_dev_remove(struct device *_d)
 {
 	struct virtio_device *dev =3D dev_to_virtio(_d);
 	struct virtio_driver *drv =3D drv_to_virtio(dev->dev.driver);
@@ -292,7 +292,6 @@ static int virtio_dev_remove(struct device *_d)
=20
 	/* Acknowledge the device's existence again. */
 	virtio_add_status(dev, VIRTIO_CONFIG_S_ACKNOWLEDGE);
-	return 0;
 }
=20
 static struct bus_type virtio_bus =3D {
diff --git a/drivers/vme/vme.c b/drivers/vme/vme.c
index 1b15afea28ee..8dba20186be3 100644
--- a/drivers/vme/vme.c
+++ b/drivers/vme/vme.c
@@ -1990,7 +1990,7 @@ static int vme_bus_probe(struct device *dev)
 	return -ENODEV;
 }
=20
-static int vme_bus_remove(struct device *dev)
+static void vme_bus_remove(struct device *dev)
 {
 	struct vme_driver *driver;
 	struct vme_dev *vdev =3D dev_to_vme_dev(dev);
@@ -1998,8 +1998,6 @@ static int vme_bus_remove(struct device *dev)
 	driver =3D dev->platform_data;
 	if (driver->remove)
 		driver->remove(vdev);
-
-	return 0;
 }
=20
 struct bus_type vme_bus_type =3D {
diff --git a/drivers/xen/xenbus/xenbus.h b/drivers/xen/xenbus/xenbus.h
index 2a93b7c9c159..2754bdfadcb8 100644
--- a/drivers/xen/xenbus/xenbus.h
+++ b/drivers/xen/xenbus/xenbus.h
@@ -106,7 +106,7 @@ void xs_request_exit(struct xb_req_data *req);
=20
 int xenbus_match(struct device *_dev, struct device_driver *_drv);
 int xenbus_dev_probe(struct device *_dev);
-int xenbus_dev_remove(struct device *_dev);
+void xenbus_dev_remove(struct device *_dev);
 int xenbus_register_driver_common(struct xenbus_driver *drv,
 				  struct xen_bus_type *bus,
 				  struct module *owner,
diff --git a/drivers/xen/xenbus/xenbus_probe.c b/drivers/xen/xenbus/xenbus_=
probe.c
index 97f0d234482d..f4f52d574df9 100644
--- a/drivers/xen/xenbus/xenbus_probe.c
+++ b/drivers/xen/xenbus/xenbus_probe.c
@@ -326,7 +326,7 @@ int xenbus_dev_probe(struct device *_dev)
 }
 EXPORT_SYMBOL_GPL(xenbus_dev_probe);
=20
-int xenbus_dev_remove(struct device *_dev)
+void xenbus_dev_remove(struct device *_dev)
 {
 	struct xenbus_device *dev =3D to_xenbus_device(_dev);
 	struct xenbus_driver *drv =3D to_xenbus_driver(_dev->driver);
@@ -356,8 +356,6 @@ int xenbus_dev_remove(struct device *_dev)
 	if (!drv->allow_rebind ||
 	    xenbus_read_driver_state(dev->nodename) =3D=3D XenbusStateClosing)
 		xenbus_switch_state(dev, XenbusStateClosed);
-
-	return 0;
 }
 EXPORT_SYMBOL_GPL(xenbus_dev_remove);
=20
diff --git a/include/linux/device/bus.h b/include/linux/device/bus.h
index 1ea5e1d1545b..062777a45a74 100644
--- a/include/linux/device/bus.h
+++ b/include/linux/device/bus.h
@@ -91,7 +91,7 @@ struct bus_type {
 	int (*uevent)(struct device *dev, struct kobj_uevent_env *env);
 	int (*probe)(struct device *dev);
 	void (*sync_state)(struct device *dev);
-	int (*remove)(struct device *dev);
+	void (*remove)(struct device *dev);
 	void (*shutdown)(struct device *dev);
=20
 	int (*online)(struct device *dev);
diff --git a/sound/aoa/soundbus/core.c b/sound/aoa/soundbus/core.c
index 002fb5bf220b..c9579d97fbab 100644
--- a/sound/aoa/soundbus/core.c
+++ b/sound/aoa/soundbus/core.c
@@ -104,7 +104,7 @@ static int soundbus_uevent(struct device *dev, struct k=
obj_uevent_env *env)
 	return retval;
 }
=20
-static int soundbus_device_remove(struct device *dev)
+static void soundbus_device_remove(struct device *dev)
 {
 	struct soundbus_dev * soundbus_dev =3D to_soundbus_device(dev);
 	struct soundbus_driver * drv =3D to_soundbus_driver(dev->driver);
@@ -112,8 +112,6 @@ static int soundbus_device_remove(struct device *dev)
 	if (dev->driver && drv->remove)
 		drv->remove(soundbus_dev);
 	soundbus_dev_put(soundbus_dev);
-
-	return 0;
 }
=20
 static void soundbus_device_shutdown(struct device *dev)

base-commit: 79160a603bdb51916226caf4a6616cc4e1c58a58
prerequisite-patch-id: e5c7b97ea399fddc2695e8cf5d0c02d14175abac
--=20
2.30.2

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20210706095037.1425211-1-u.kleine-koenig%40pengutronix.de.

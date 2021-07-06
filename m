Return-Path: <linux-ntb+bncBCX3TTWUQMPRB77YSGDQMGQEIBRPDGQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33a.google.com (mail-wm1-x33a.google.com [IPv6:2a00:1450:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 327423BDA9A
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 17:53:36 +0200 (CEST)
Received: by mail-wm1-x33a.google.com with SMTP id m6-20020a05600c4f46b0290205f5e73b37sf1113070wmq.3
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 08:53:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625586816; cv=pass;
        d=google.com; s=arc-20160816;
        b=LjZxIHWF3tM5+JA4cx73dLwtpd99voISG35zwinav9UepvU3gblXqOggqlLgtd+Fmb
         O/1dV6QnI7MGhMaQ3kXfK/JF+cJXf+1WYdxvtcpIy4+tKe9kIdWi3pVhzUd5iD+8djy5
         YxiFGyaRvTA3Olc+gDMJmTdXwml4t0JCs7EGR13X8Xg5pp26ZmxzxaX7EebqVoUGCSmh
         T42VFROZxfuEnATn7AJ+UNBezfhVuV/G9grC4jF8JmhKC0b2bPE+wPKE78SHfe7naFZY
         m2DQpOfifLK/5A8Kv9ORI7JmDGEUcE9mEl1Zk7km4ZBbbWnppDC/KombTbd8Zr+JN1cF
         4dZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=jhYDmOaspYLxpdLJbK287SM8ABARnR/jpgiaG/poMp8=;
        b=TV+DiUSEWgQspIzLLC7FOUCDP0oMuyFp2GgZqNpc1GhJByi2Gc4AzTlkc+diaArxuq
         y0/mGl0WXQqCs0GgAuRpxEfIbu1i3UKiDckgcEpY4e20mksUvf70o1MaTIMntkL9wNF3
         AAAb1Hr8JbGXZnL9lhk/3dF6LqQ5ovqSlODO709XoKXcwIOpkylb+56n8g90gPOR3qmz
         ncewncKUlVZiMfGONTAgFN1PM0gt9/y16RT9A+GBEKF0S2zmbKL+HnrOJfPnND4vGXQw
         cFaMzpyH7W70pHhdflo7lQD3Vap8C4Lp08tHqvoAlVSos8djGW8CR4im9cjHmflo9Fao
         csrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jhYDmOaspYLxpdLJbK287SM8ABARnR/jpgiaG/poMp8=;
        b=WT8cQAeXK0GX4027wILkzT3tzXKQU/646JJf/0PVzSqrfuslo3XFtmsjqstM6wlq+o
         QeD/840fOtYOLgZbyGfjEY/ZiFjy8ywJdY9fhZamXytA8ZgjN4/+BDCPE3SW7HiOHuTG
         KpoPlWmO+A7gsuZXLn1aCmuHqqWRdzO5b0Ld+Wqc4NNI+dYRvTmhUcOJIL3+e1+uwEf4
         ch1x29CWgJvJmTrW1x05m//3qQDBqWoKNlOCPvLvpHwEuWZDxF0cAgESWrmciTE4+zoq
         nZlZyhJmwmpCZo4ECY6aEWzqRBygnGzkjQqOghkcmyC7lKvBHUW4P9moYCsV9U6wv3Wc
         QfRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jhYDmOaspYLxpdLJbK287SM8ABARnR/jpgiaG/poMp8=;
        b=sU2AvA4GtX4LU4SRcCcyDtz7FcuOd+sG5twOWqcnJ7nsNX6UqfcO5fTj5t4vSrR7i6
         cePOxnJ5iwDHxcn4MeDtuOmFbt1ezAu8/Psa2VEaqrN77Co5aOFJl4KrUYTPsxVeG28N
         +PIJAZNz0gqQJ7VQ3rj4AU4JlzZdKnHg/K+S9NtmY6htwsYknzq0cBhVsScT16fFPMGJ
         5FO0OHtwvaO89lZ+q95G54eff33WY3Ur3hi8+vYZkUS5wXX+FofQIHKsI5Bu6DFrI9Ow
         1pxMTzZ+xYVQ0XQkar9MN5NfKsqbkd/tHGhfYfAXBeUm4AwTEms/oqvpfB+B1ChdmCaW
         aeMA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530pIxMvDhke1xZcZdKVicgh7ESrV4ghstvVgr6W0p8b/3Xp6DQI
	H2XU765aIqXU3zAKH/NqBWw=
X-Google-Smtp-Source: ABdhPJxI6Y2R8eVzGmOWH+4Y3KgT0p8CuEPC6KlpsE81hEwEmg/RglRFgLWlOeLUBgr34C9Wc9y0Mw==
X-Received: by 2002:a1c:9a97:: with SMTP id c145mr1617367wme.42.1625586816006;
        Tue, 06 Jul 2021 08:53:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:4c50:: with SMTP id n16ls2281827wrt.2.gmail; Tue, 06 Jul
 2021 08:53:35 -0700 (PDT)
X-Received: by 2002:adf:e10c:: with SMTP id t12mr22512562wrz.36.1625586815108;
        Tue, 06 Jul 2021 08:53:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625586815; cv=none;
        d=google.com; s=arc-20160816;
        b=d8Q9AzVnAfdu5a8pN0pPE2KQ2Yg6yv5x7ZabUilJNX9haZrDZ6ez9I+4F3BQ33mqZP
         Si/Hh8/jwm8SEIb0vCt6lT0gju7Z4fO0Kg2xk4DWtCKSeYYtB92K0dHOddKl3FpvLDMP
         MaZd45UTgyDSguRrmp2Y4RNu5gK0NevW1evYEx7ae4Bnrbj3rPjZb2MNUXnv45aNQH9o
         4cVM5phCQYgRRjOgkA1MFOEHTxh9FX29z8JlvdmBYzrFZjk9bsvULtXDukXK7Bz6zUCb
         hTjKhRsnFhwMtgQMFPYaPCwrTMG1rT87yQAkDwg9kgj5qHuE/BFq1JUQxAXCx+82mdTP
         woZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=aiaWM+K8wJFnePJm1QBCVd1PUZOuJ5cL4P3mtQdVvHQ=;
        b=mMVg5w80C0UXnDfnLg35BOoZHO9rBQThTsMGodG7JawKRLZej6Vv3VnqkR8c5sYJNK
         YHDGBRUZ2fjB6wctMssOSvREOOkOYE5/ImgvtTHqA7ToUfNoFVTFAvlVWfsCLdBeNwkR
         EvNC7ernS0Mnvpm4wZ0KkoRIV88LJhPh23ubecirLAPMyHee9DeisWbKzr+B9zdDHfg6
         UT3OxAZH3kbBXXcCxiKc9jb+jWuCDwz1IEJr0IbYe+AZsUqq1Ps3NxibYCk5bmyHohRc
         MciL6CdG4uRfVErxszxpqpMBDqTThtOxEHlMaAQioLGrjqeT8lKbaKaAK6E3vCx23IYB
         QT0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id g22si179395wmh.0.2021.07.06.08.53.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 08:53:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0nLI-0007mL-3h; Tue, 06 Jul 2021 17:50:36 +0200
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m0nL5-0005Si-VW; Tue, 06 Jul 2021 17:50:23 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@pengutronix.de,
	Cornelia Huck <cohuck@redhat.com>,
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
Subject: [PATCH v2 0/4] bus: Make remove callback return void
Date: Tue,  6 Jul 2021 17:47:59 +0200
Message-Id: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
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

Hello,

compared to (implicit) v1 that I sent earlier today
(https://lore.kernel.org/r/20210706095037.1425211-1-u.kleine-koenig@pengutr=
onix.de)
the following is changed:

 - Add three more patches preparing some s390 specific busses
   and adapt them in the last patch. Thanks to Cornelia Huck for
   pointing this out.
 - Add various Acks to the last patch

I now tested allmodconfig on arm, powerpc, s390 and amd64.

As before this depends on "PCI: endpoint: Make struct pci_epf_driver::remov=
e
return void" that is not yet applied, see
https://lore.kernel.org/r/20210223090757.57604-1-u.kleine-koenig@pengutroni=
x.de.

Best regards
Uwe

Uwe Kleine-K=C3=B6nig (4):
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
 86 files changed, 95 insertions(+), 236 deletions(-)


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
linux-ntb/20210706154803.1631813-1-u.kleine-koenig%40pengutronix.de.

Return-Path: <linux-ntb+bncBCX3TTWUQMPRBM6WW6DQMGQE7MWEDJA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id F18CB3C7717
	for <lists+linux-ntb@lfdr.de>; Tue, 13 Jul 2021 21:36:19 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id c21-20020aa7d6150000b02903ab03a06e86sf637548edr.14
        for <lists+linux-ntb@lfdr.de>; Tue, 13 Jul 2021 12:36:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626204979; cv=pass;
        d=google.com; s=arc-20160816;
        b=B5DIIMMo7G270Rnrzf9Gcev6uEyi9co3u8T/2hwTtpbANl1nN7k/YGh7YlEXy13HM9
         uig6RwC8178zjCRTQoffK0Kd4ZUBi7kgA5YWRM8EFRxdM8GdgTK9jRYGqhSSvdlWhpH3
         LCreEW9eCm/grt6usk3vMMMnjseeycZr5Y6Qvl7C5nlGNRVUdewhciH3Db54rKbR44/m
         OLRiDBmo0Pet/2DA87R/KPfGDIpGMzq3BM0mRkrHCin2i/VRxLLm7MTbmx//t3/HDg27
         c5uMWmPmD/RcdCkQFJCd/cqSpeRWweqVue+PRZ/0qomXaa6hHOpOQDZ2M4kN/tglb9+8
         z7og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=gohsJoN6naXyUhbb2BuVpFjbbKQgpmiOtY2w1vHriEs=;
        b=E6g0Gf7vZRRQyFCBGdG7KdgEy5jiKBpANlHTHYv2muTuPT0ecqFQyHMoMXMdXhKodl
         fkWhG12hosBwin97bUlz0hsTyfUZpzPuxHTac7xXt0PKSUmIRzucGsIo/fWCx4VEUCQu
         TDo3a3hf4toxoq4ThAqf15osF8MGv3+9dAHQSkf8TA2JrBOvp4NcwENC87OTRz10FTgH
         mYc+FLDGXt/PfvYGdSYRmTpfSnvyQXp7b5Z54lWPw1/VgYzT1kSkjN0DKr8BhogPFRsH
         B8XUju8g6jTmqGbAQljNaKFyDJRlBZJW835HCNnPVHSKjh7Vp5oVUwU8J+RX+2/OcCOW
         alfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gohsJoN6naXyUhbb2BuVpFjbbKQgpmiOtY2w1vHriEs=;
        b=Ynb2jynFenkElwmG1UIeXNET8cdQcPW/Txbi1LjWBbPuUry9RHeI8WCwf1MP09YkvW
         dVOxhaFGJlJKWv53lQ/kMzfUqIxPWn1oh4UEIO2uc/uSUncSzRAtClJaKkCH+9xPJloh
         i+kippLoZ5b6BexnznSFAWPBcCVFqCIdeKyfKtt08PBycUoY8x+DXDFQo/7cqxbWgjVp
         4riGbaHXlgW+8G63Jdvl8re2xisP+JQCbMfBlqZyInJEw9K5a2zV2PDN+q9lfrV52VGv
         jsXJ11/xcrIsGobPkgjxtEdsepVHkdDFD/L1MjibJxQK4Ro2v3Z+wHV99firCVycLgYr
         qBBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gohsJoN6naXyUhbb2BuVpFjbbKQgpmiOtY2w1vHriEs=;
        b=FCBsmAvozXJeqPIuQA1/y2hPYKkEcI7xs5asArXurGa2V9yZpLdQGLSNkGuRIcB8WX
         IqqeqAxIemFIFqOkv7sv2l6HkPgIDBaeC4a2EZb+fCpkjIhijDv+JVx46nzzbpAO7BNp
         BpS22um1tUGk+hBb5ZfzQmbFbv70PYRnX1DPMiWiFHjyb757Ym4e1pr48c36nj+TE+WD
         e5c8Wi2JWjlUxGnBMMLaKmQdYml5gryBhteWl4UPiOUWsjJtdNhTCVjHp86m8WRMRMuQ
         brT7x8LKvDWs4uFtCfOxzZGEPpkr4cCPGrxeI/FaJ2sfRlGN4rpiUiiZln11HbW4eIX/
         xlGA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5315qn0y6G9VKVnMofeqZ6rK2/HsX1tPL+clqPZwLXBqWKyVdTjy
	sa74cFlg0ucqK+zynF4FJ3E=
X-Google-Smtp-Source: ABdhPJxWJO1HwTpI00u2PwjB2BMxBQp4C/y/kps7YbwOfTvXBjxcD6CVSRau13s3BZuwXzZbPqbMgA==
X-Received: by 2002:a17:906:1fca:: with SMTP id e10mr7477463ejt.420.1626204979694;
        Tue, 13 Jul 2021 12:36:19 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:aec5:: with SMTP id me5ls6182837ejb.3.gmail; Tue, 13
 Jul 2021 12:36:18 -0700 (PDT)
X-Received: by 2002:a17:906:edc9:: with SMTP id sb9mr7342232ejb.99.1626204978759;
        Tue, 13 Jul 2021 12:36:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626204978; cv=none;
        d=google.com; s=arc-20160816;
        b=dDHwfw0mKM6bo2DSBo9lhW2l5LrgsvICzMkC+2r54LjdrUcfwGDWFcFph8GrlUESr+
         V+fYqbUgQZTBDPK9uTcN/h+GtAHr+BSgWT6tBOag9wNJbVwrEisA4ynZW6t93kp1z1TY
         9uEV6Fqzie0j0dmWZ7l2/+PgkOqhQTIj2psYV1EGHbS7qU0ywquKfcf7rw0S34QSU6SZ
         PdPEOQ3Cj3xn+UtXqgK543OdDQ7rN2CKf4k0WSE3a2xtnlwJ/dYlHA/VcxTOAyFMdTFv
         +U5x40x/hgqICD5ZsTunIOUTla5m0WQ8zXZuKqDf3o1Z3JzAISn6b6EHUGDv4e9fvr7b
         dyXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=zJIGO4AtQVqUv6zSvE8Befr/+w3pBbY9BaIDMA6GILI=;
        b=DVdKkMWB7UPyPwtYnTzKKlC8O+IDBA3VAGNmzuHgeJaruNxQbEbbnNT3cllqq6Fw2R
         aG9TB4len2vuz+vlpYp9cpnmmqhKg0uo0d1qH9k9ndQlXzRc40BxNwHNHBTLUjtIQC7E
         Kz1SbmKsPKdvMFDx+hSBMEmZPVP5bkLa9NzNYvHv9fhbVIPezC1ZgXO2bu+yY0HV7X/J
         mdDBcEw6sUWM7yFpeU0Klh2UPhFlaW85Ez9nElY4svMRPLpZShufGvYccThQNcWjhcfW
         AOFnvtWfrx0FENLP7iBpPQG8pDWUY48nxW7C49GDJWCZJg+D9UbCHhueUkFe45NCLegk
         QIUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) smtp.mailfrom=ukl@pengutronix.de
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de. [2001:67c:670:201:290:27ff:fe1d:cc33])
        by gmr-mx.google.com with ESMTPS id be24si835356edb.1.2021.07.13.12.36.18
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jul 2021 12:36:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ukl@pengutronix.de designates 2001:67c:670:201:290:27ff:fe1d:cc33 as permitted sender) client-ip=2001:67c:670:201:290:27ff:fe1d:cc33;
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m3OBr-0001GT-RJ; Tue, 13 Jul 2021 21:35:35 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m3OBi-0006p7-4I; Tue, 13 Jul 2021 21:35:26 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1m3OBh-0002bU-W6; Tue, 13 Jul 2021 21:35:25 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@pengutronix.de,
	Alexander Shishkin <alexander.shishkin@linux.intel.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Alexandre Bounine <alex.bou9@gmail.com>,
	Alex Dubov <oakad@yahoo.com>,
	Alex Elder <elder@kernel.org>,
	Alex Williamson <alex.williamson@redhat.com>,
	Alison Schofield <alison.schofield@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Andreas Noever <andreas.noever@gmail.com>,
	Andy Gross <agross@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
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
	Halil Pasic <pasic@linux.ibm.com>,
	Hannes Reinecke <hare@suse.de>,
	Hans de Goede <hdegoede@redhat.com>,
	Harald Freudenberger <freude@linux.ibm.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Heiko Carstens <hca@linux.ibm.com>,
	Helge Deller <deller@gmx.de>,
	Ira Weiny <ira.weiny@intel.com>,
	Jakub Kicinski <kuba@kernel.org>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Jaroslav Kysela <perex@perex.cz>,
	Jason Wang <jasowang@redhat.com>,
	Jens Taprogge <jens.taprogge@taprogge.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jiri Kosina <jikos@kernel.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Joey Pabalan <jpabalanb@gmail.com>,
	Johan Hovold <johan@kernel.org>,
	Johannes Berg <johannes@sipsolutions.net>,
	Johannes Thumshirn <morbidrsa@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Juergen Gross <jgross@suse.com>,
	Julien Grall <jgrall@amazon.com>,
	Kai-Heng Feng <kai.heng.feng@canonical.com>,
	Kirti Wankhede <kwankhede@nvidia.com>,
	Kishon Vijay Abraham I <kishon@ti.com>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	"K. Y. Srinivasan" <kys@microsoft.com>,
	Lee Jones <lee.jones@linaro.org>,
	Len Brown <lenb@kernel.org>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Manohar Vanga <manohar.vanga@gmail.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Brown <broonie@kernel.org>,
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
	Michael Buesch <m@bues.ch>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Michael Jamet <michael.jamet@intel.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Mike Christie <michael.christie@oracle.com>,
	Moritz Fischer <mdf@kernel.org>,
	Ohad Ben-Cohen <ohad@wizery.com>,
	=?UTF-8?q?Pali=20Roh=C3=A1r?= <pali@kernel.org>,
	Paul Mackerras <paulus@samba.org>,
	Peter Oberparleiter <oberpar@linux.ibm.com>,
	"Rafael J. Wysocki" <rjw@rjwysocki.net>,
	=?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>,
	Rich Felker <dalias@libc.org>,
	Rikard Falkeborn <rikard.falkeborn@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Russell King <linux@armlinux.org.uk>,
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
	Tomas Winkler <tomas.winkler@intel.com>,
	Tom Rix <trix@redhat.com>,
	Tyrel Datwyler <tyreld@linux.ibm.com>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Vasily Gorbik <gor@linux.ibm.com>,
	Vineeth Vijayan <vneethv@linux.ibm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Wei Liu <wei.liu@kernel.org>,
	William Breathitt Gray <vilhelm.gray@gmail.com>,
	Wolfram Sang <wsa@kernel.org>,
	Wu Hao <hao.wu@intel.com>,
	Yehezkel Bernat <YehezkelShB@gmail.com>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	YueHaibing <yuehaibing@huawei.com>,
	Yufen Yu <yuyufen@huawei.com>,
	alsa-devel@alsa-project.org,
	dmaengine@vger.kernel.org,
	greybus-dev@lists.linaro.org,
	industrypack-devel@lists.sourceforge.net,
	kvm@vger.kernel.org,
	linux1394-devel@lists.sourceforge.net,
	linux-acpi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-arm-msm@vger.kernel.org,
	linux-cxl@vger.kernel.org,
	linux-fpga@vger.kernel.org,
	linux-hyperv@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-i3c@lists.infradead.org,
	linux-input@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org,
	linux-media@vger.kernel.org,
	linux-mips@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-parisc@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-remoteproc@vger.kernel.org,
	linux-s390@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-sh@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-staging@lists.linux.dev,
	linux-sunxi@lists.linux.dev,
	linux-usb@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	nvdimm@lists.linux.dev,
	platform-driver-x86@vger.kernel.org,
	sparclinux@vger.kernel.org,
	target-devel@vger.kernel.org,
	virtualization@lists.linux-foundation.org,
	xen-devel@lists.xenproject.org
Subject: [PATCH v4 0/5] bus: Make remove callback return void
Date: Tue, 13 Jul 2021 21:35:17 +0200
Message-Id: <20210713193522.1770306-1-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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

Hello,

this is v4 of the final patch set for my effort to make struct
bus_type::remove return void.

The first four patches contain cleanups that make some of these
callbacks (more obviously) always return 0. They are acked by the
respective maintainers. Bjorn Helgaas explicitly asked to include the
pci patch (#1) into this series, so Greg taking this is fine. I assume
the s390 people are fine with Greg taking patches #2 to #4, too, they
didn't explicitly said so though.

The last patch actually changes the prototype and so touches quite some
drivers and has the potential to conflict with future developments, so I
consider it beneficial to put these patches into next soon. I expect
that it will be Greg who takes the complete series, he already confirmed
via irc (for v2) to look into this series.

The only change compared to v3 is in the fourth patch where I modified a
few more drivers to fix build failures. Some of them were found by build
bots (thanks!), some of them I found myself using a regular expression
search. The newly modified files are:

 arch/sparc/kernel/vio.c
 drivers/nubus/bus.c
 drivers/sh/superhyway/superhyway.c
 drivers/vlynq/vlynq.c
 drivers/zorro/zorro-driver.c
 sound/ac97/bus.c

Best regards
Uwe

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


base-commit: e73f0f0ee7541171d89f2e2491130c7771ba58d3
--=20
2.30.2

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20210713193522.1770306-1-u.kleine-koenig%40pengutronix.de.

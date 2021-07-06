Return-Path: <linux-ntb+bncBCBPXJWZUYHBBKW7SCDQMGQE5DG2N2A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 06F0D3BC9B2
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 12:25:48 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id h1-20020a255f410000b02905585436b530sf26665657ybm.21
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 03:25:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625567147; cv=pass;
        d=google.com; s=arc-20160816;
        b=DTVyvWxuIN4ogLVrTJbuZ3XSq4v/xiXqJXNZBMlclOUjFzuy5a/1jUJfmtknLcctub
         AtgDcWkDxBoglRq1cHHFhypaGGhLFUOImZP6NRSLu6zx/V9peMGbjzONIYI+0hCBOfrg
         GfZ45f9jLIXC+oduq4T1tkxfLj66myepGlKkeORSkVhZi375ApIfoRfBazwtaHf2fuzE
         wNLQ1uSCmX7JU14bc1rPO+nPfP4wLuM4l9JaBl+iXnEv8dzMeQwaYzDnkY9lop5w21zv
         aKhV/w6DO3uY5dvCIi30YGMSqBrImd593hDQFCJtDlfT1Z+CWweAc6fn0E7H+hdK9q6K
         G32A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=rIAqJoxp/VP+js36O/sDVCvreNy/UbXULQAdnqsQJbM=;
        b=E1NinUJnKXGkz/LKkEPcjhXicAYz3Tj4MRNNwESoIz4Vj1DDn0YlNl2wdSOZU9E47r
         9Qru0TS2DAy1me5WVcytv2Kck+B4U4xPVEU8YplXrG05Ry/cLOUjomNlNF9mEhsKB/np
         9BYhI+lALYiaXV0Txh5CLU+cmpT/QH3w/YOnD01klGewtPceSfpnKV7l/15S7jngrp/4
         6yteC1RT/4Kd01GBWlOE8k0tc79VnUWMPr4GT3traqQrQANbu/4zCJ/t1s8nlyO0O/rN
         ntOSp8nLurogYAtO3n+NsH9uBQ3dLqLCZawXLIfp2SeKq0YNfn0eb+CkLTGEtB2iSQvI
         BGbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=maDtNYbj;
       spf=pass (google.com: domain of pali@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pali@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rIAqJoxp/VP+js36O/sDVCvreNy/UbXULQAdnqsQJbM=;
        b=fJy5nzM/DfeM4/HA9KZgHSbkDz+LUk8PW6XgXD+RzEbvdcpjQGElqLvkePh9r5sqBx
         Pb85qb8hcJFdEgF+tfnb3NkNxW+BvCtjw+wOM6ro2mAQiUsjwjAaDNOgAO2rZE5GqNLV
         n9vgWwnNekZ5SL9EpG+gyIjcSYoLknwoxD5/nbIb4SpjaNNOUsTcGlaD9oToR2zNjccu
         fmP4w6yn/dXFjsxP0NTy97DU1Hq/O7Rg2OkuzYXBDXY7OE32Qb4fpXsJ2qVEoNWtheeq
         nW7417LjW5rE/PJEOsmMbZDMk/P2XP27rwyjNjlp2HHh5Nja7WaFNvAPpRXhU9jhNj56
         LbJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rIAqJoxp/VP+js36O/sDVCvreNy/UbXULQAdnqsQJbM=;
        b=YOkSZBFY01V+VPlJUjXsHwK462/zUZl0OB125eYo7OIxxN+Nn2vrBoNzY5FVMdrd+O
         EbSMlyI6lqob3/nIOzWEEnj45xgvqAoo8DLWVJ0Hxq/o9+BDh7PliWchECs/0WaYtYdV
         CEoy6L0/UDieqkSEaesMKOuU3wcl710X9yrlEWBX7TcrR8X7KEesadomPfz/gx/EiYYW
         MrvOTeIKmP4ZVXg3F7qitOdBxDnluQM53qtYF7vKuDPKaqA/mw0+DS9yJFGZZW3gVoCi
         vSSx7/H16E7yn7CSPE8yWXO8JdXXrPVEENZaHrDpEvorqUEMWC8uAsV25lTg7SalIEE7
         5Ltw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532VaBJV2c2ZWeRkEj+1u7tRnrLweFHI3/FUYA81/kVVHtfNszX3
	ZOJMpQHyaTNo9IQ8Hdv9YP0=
X-Google-Smtp-Source: ABdhPJwxff9vQ+T8Wnu3Oq1SZX41RZc2UzA14JNryB/wLjgezmZvALiM4HgFSxcJ/yH0QR+tsHFi+Q==
X-Received: by 2002:a25:8151:: with SMTP id j17mr23836484ybm.321.1625567146941;
        Tue, 06 Jul 2021 03:25:46 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:4053:: with SMTP id n80ls4818539yba.11.gmail; Tue, 06
 Jul 2021 03:25:46 -0700 (PDT)
X-Received: by 2002:a25:6e02:: with SMTP id j2mr23962300ybc.461.1625567146489;
        Tue, 06 Jul 2021 03:25:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625567146; cv=none;
        d=google.com; s=arc-20160816;
        b=INreTJ14ixv4+gY8w8wx7MrEALaXEWXuMHi+4Q7llgVcrEjYgqTssOmtPCLlGK8/EU
         MSs3VdMwJ1MbXbBa+//nmNsuufdbK4K58lO67cqjsmRh01MtVihGSPlPbxL+qI5mIkzc
         ONa+n/bAKwyAi80c/64KcKwrZVjKxYwnggE/Wc0WNT1py3eskjJW1MNryteE4LVOAGr8
         soRI/UIYJfXpVb+2ILayuAg1eu+iluh7m8JffM3K9gYx4Vc345H89ePUT98tJMhgoZ88
         5rQ76OLArMcTJTOHDiK/KxydZ4T/I2sBLk4AyKgAoxq9LFO9JT5N6UXe+1GIpAvsAm/8
         zY7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=/Kjt/VAysneZBo8Kwhrwm7DIscyL8yB1S9+8MrfCVLk=;
        b=IyG2GCiSDWEue68B8G7M9jgXWyf5wyI8so+SC9iM1le93VGHnJ4IykdBy/7suuCcbU
         Fl9KCNl6POOeAOw3GpgOu6vHqADqgZTPnzT9Pm0Z4xiQiy+lA4Aq34pRmgB6pm6T1hSm
         4orIXr8kh2wxaOD1dDdjn8JOGctIVAhiv2MDjYyl1SfEJu17EiYJq9mzoVPBtM3kfCCv
         C8dQXnek05Y5+1FF4buH+lKflsnLcDOhdSzYo/lizslP/g89dJSMaEXoO+zUjMCuHQT2
         CPjjgCMf8LHbALFABfLKTu/SWAPa42pOm5cYB9ldaAOIAf93zuJDa2njAC2+Fqss3PCH
         7TiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=maDtNYbj;
       spf=pass (google.com: domain of pali@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=pali@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c13si2043260ybr.5.2021.07.06.03.25.46
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 03:25:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of pali@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1D059619A5;
	Tue,  6 Jul 2021 10:25:45 +0000 (UTC)
Received: by pali.im (Postfix)
	id 93CEB6E9; Tue,  6 Jul 2021 12:25:42 +0200 (CEST)
Date: Tue, 6 Jul 2021 12:25:42 +0200
From: Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
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
Message-ID: <20210706102542.7lzvb6nm4ztmlarl@pali>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
User-Agent: NeoMutt/20180716
X-Original-Sender: pali@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=maDtNYbj;       spf=pass
 (google.com: domain of pali@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=pali@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Tuesday 06 July 2021 11:50:37 Uwe Kleine-K=C3=B6nig wrote:
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

Acked-by: Pali Roh=C3=A1r <pali@kernel.org>

> ---
> Hello,
>=20
> this patch depends on "PCI: endpoint: Make struct pci_epf_driver::remove
> return void" that is not yet applied, see
> https://lore.kernel.org/r/20210223090757.57604-1-u.kleine-koenig@pengutro=
nix.de.
>=20
> I tested it using allmodconfig on amd64 and arm, but I wouldn't be
> surprised if I still missed to convert a driver. So it would be great to
> get this into next early after the merge window closes.
>=20
> I send this mail to all people that get_maintainer.pl emits for this
> patch. I wonder how many recipents will refuse this mail because of the
> long Cc: list :-)
>=20
> Best regards
> Uwe

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20210706102542.7lzvb6nm4ztmlarl%40pali.

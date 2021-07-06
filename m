Return-Path: <linux-ntb+bncBDDO3ANQ5EKBBAN4SKDQMGQELPJTKTI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF713BDCD9
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 20:16:34 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id w2-20020aca62020000b029024073490067sf98412oib.21
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 11:16:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625595393; cv=pass;
        d=google.com; s=arc-20160816;
        b=UnSTAz22wZyTghjcIoU61o7pz/RSPjtjMC7mTMf4YK4qh+9i25KObS3xIyF1i9gC8i
         g2KbX9KgnAmiYEY8z0F/JET9CJTwRdVzffi2/SjWiOJPRn2lFKbEt6/QWQwuuL3HH9jm
         WcZmb9R35BbbUTfGHE0exyyQio0yuKZ9NRLYiC3oBt3seJjEkrgzbl0BDbZhIIZSedD8
         1+ZU6/+nRKVtomaBHf4nIg9lu6LsXE3Xwpvj30G9S41jwOXkeobIGvLk4fg5bP289kp3
         W8Us+zGc/zsnt7U4fC1pL/rPJqLjCNnhx++b+ONBJSZbzu6NQYphCIKnJr5j5Yfhgwxa
         ik+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=x5wsZ+mJ5UBBk6FaiEudzqdYMgONaRA3iO+Pv8soQ7o=;
        b=iV3RYz05gybO3JnoLIBvZKa5tSdOVrrAXjQlLUUj8CB1CkV3Uzogg+zPRSK05xKdE+
         mx6B6BWWmzZUkqmZs6TTA0R79f6zli6mui7DdKjI/3AZdAy0giELUix5y7NwM0wJj05l
         19EYHbcash82BlonuTJH4OjuyMuxF9SyBQJQM12jXMgbbykeYkYyt9Xwo/iQ707e2Ipi
         LQlreqZp88B3uFVZet7448tTVIJPl5m6YFJWWXJIm7U2tv7PZCRKTpW0/0o59Z9/b1Yy
         h4lFVjS7UV0Q54bCirXxxOYkOBo92KlpXm37TXSwOWLNdeKDwVlFgeNggY/T7vub0k9c
         CklQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of srinivas.pandruvada@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=srinivas.pandruvada@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=x5wsZ+mJ5UBBk6FaiEudzqdYMgONaRA3iO+Pv8soQ7o=;
        b=anrno84VdZVuQn2fNunqes6D9pTKskzx/HeZrIIjAV92lrvEty09E4+68Tlgy/5u8F
         tw9LWNZWd40cPBZBQBPcp4mj3QE26463N4HuXu1eCdX2PfQw/3wJqIHEgke2YPr5k43k
         rI/RhCFHl/EENsT38bWWseED1nCOgMPkKW9e4/Peq4cvnbHFST8/lK+2LVWa5X2SaUvP
         vSZia4pyOWIBwMUOImL0/fqF6vrG4bz8dKy2jwDNc/B9ZUTFIF1p/Dx31ZMdQUK/B6LI
         NmyvQIRffuVQl5H2K2ASMOfkfle3Gko43BZqa9ujw4vRrkaYV+jOukHhZ5wxSPhjy4MQ
         n3jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x5wsZ+mJ5UBBk6FaiEudzqdYMgONaRA3iO+Pv8soQ7o=;
        b=e4fkxHL68vBTITQhqmsjbPGqIbrlOEpuQsvxgjbLQ4o7u0/oHc+qBgPaWcrM7k3JUU
         wr9EoOIROaAseM471n1+WFBA2v0By2X2l7JRbyDA+ET8JSo6PJ2XSw21KUyNYobTbtsn
         XLbdWx3JkqhK36u7qQL9A6DpxsF6CUqwY1tNXwckg5/e49JA7PMyeNHoOS19znnZFvw8
         2Jpl0T3vQcNxreEoQmXZ+kCuprFwTjDhOQxeQ0RzmwYbLdUyp7n+yJ8eg2eQA7cG+O6c
         2CGUNP6OxtcKdvhNGPL4cXPDqcjYC/jJN15uH5cKjk/iJAZRh6FDOacACtrYk913GpOW
         j9Kw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533LpkeV3ti6TjX+JQBH/CemsABoDqY72eSLIJfXZBTaLQGyRPKR
	PQI0eikPFMAcOGBlFxqrinw=
X-Google-Smtp-Source: ABdhPJx8jIT8nLlIoMMQbB/Irw/JnnUDRwkipqY34kyHryqDoMftxVfP2qjljvmNK/3IhTpWlAHI+Q==
X-Received: by 2002:a05:6830:18ca:: with SMTP id v10mr10361549ote.299.1625595393071;
        Tue, 06 Jul 2021 11:16:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a9d:7a88:: with SMTP id l8ls2156161otn.10.gmail; Tue, 06 Jul
 2021 11:16:32 -0700 (PDT)
X-Received: by 2002:a05:6830:10d:: with SMTP id i13mr16185518otp.66.1625595392627;
        Tue, 06 Jul 2021 11:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625595392; cv=none;
        d=google.com; s=arc-20160816;
        b=qcemo07gughsg1AUAkMz2uj7c7UAE/nsjvU08i26JubJg20SBGkK0pY7N3SXEUZ72E
         G+e9vn7yzxffvkT2S9mk5HJAYEKgce/UF3pa/jt6Ov5UgQi0Y9ThPsAqyIAFQgzowYS+
         IMz8QnZkquQbazA+BMgaVdXBbP8604UGLxA30k3affNqA0XV1zaaXvc5/FjFJKZH4VyJ
         cFL+cuFkJVBZOCcP5A7RUr0qq7Ry7TB+uGyXXd9i2P5N5+fNOH8JwqeeQZbPLuPKVdn7
         NR4IdcDY3JWyRR1mMqTdMqtFrZok41+riLlxKE9C4SWPVJ8W1f1yLoWRqPlSB9f8gF5B
         O7iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=boLbAoQ/1FBVwNffcpMd+I/areo+MjPhOzZUkxTXV3s=;
        b=b1RKkkx45sLaLONE18OB1Mu4hKEZecjX0q9gRQoOTXHEf9XVUUmtsWyKDfWejfv4Ij
         YrZU8N7ZdhYXoqmEHKl+YI6dy5KFm7VSwM7LxEht7BXryS+aC2jazdvXhO18saOoXtwz
         55mrH0XnH4/wOnAZAF6UlcDZKWQuwLUONoFebXStbS3eLR9MRUg6Og1h3UV00aXzpIDp
         Lo+/cKRAX6dm4zYee3NO5R6QDIMrjnLPhKy3sszPOohi8XiFG85hDEYqYIBtVlPK/zTP
         bWmesrA8cfcsxqZ9O0g3ZLod+iSYlBFYe8aKX9Ts+mbWUkMtE45dzWnRbF2D0pgrfMiU
         LJEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of srinivas.pandruvada@linux.intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=srinivas.pandruvada@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id c22si1462185oiy.1.2021.07.06.11.16.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 11:16:31 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of srinivas.pandruvada@linux.intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="230902977"
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; 
   d="scan'208";a="230902977"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2021 11:16:28 -0700
X-IronPort-AV: E=Sophos;i="5.83,329,1616482800"; 
   d="scan'208";a="410569926"
Received: from jaynorto-mobl1.amr.corp.intel.com ([10.254.207.166])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2021 11:15:54 -0700
Message-ID: <a020ead8a23b8f2fcd57e54d6fb56d5ce0753fde.camel@linux.intel.com>
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
From: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
To: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@pengutronix.de, Cornelia Huck <cohuck@redhat.com>, 
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>, Thomas
 Bogendoerfer <tsbogend@alpha.franken.de>, "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>,  Helge Deller <deller@gmx.de>,
 Geoff Levand <geoff@infradead.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,  Paul Mackerras
 <paulus@samba.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown
 <lenb@kernel.org>,  William Breathitt Gray <vilhelm.gray@gmail.com>,
 =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>,  Maxime Ripard
 <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>,  Alison Schofield <alison.schofield@intel.com>,
 Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 Ben Widawsky <ben.widawsky@intel.com>, Dan Williams
 <dan.j.williams@intel.com>, Dave Jiang <dave.jiang@intel.com>, Vinod Koul
 <vkoul@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>, Sudeep
 Holla <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>,
 Wu Hao <hao.wu@intel.com>, Tom Rix <trix@redhat.com>, Moritz Fischer
 <mdf@kernel.org>,  Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires
 <benjamin.tissoires@redhat.com>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>, Stephen Hemminger
 <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>, Dexuan Cui
 <decui@microsoft.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>,  Wolfram Sang <wsa@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Samuel Iglesias Gonsalvez
 <siglesias@igalia.com>,  Jens Taprogge <jens.taprogge@taprogge.org>,
 Johannes Thumshirn <morbidrsa@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov
 <oakad@yahoo.com>, Ulf Hansson <ulf.hansson@linaro.org>, Lee Jones
 <lee.jones@linaro.org>, Tomas Winkler <tomas.winkler@intel.com>, Arnd
 Bergmann <arnd@arndb.de>, Jakub Kicinski <kuba@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, Jon Mason <jdmason@kudzu.us>, Allen Hubbe
 <allenbh@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Krzysztof
 =?UTF-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas
 <bhelgaas@google.com>, Dominik Brodowski <linux@dominikbrodowski.net>,
 Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede
 <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>, Matt Porter
 <mporter@kernel.crashing.org>, Alexandre Bounine <alex.bou9@gmail.com>,
 Ohad Ben-Cohen <ohad@wizery.com>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Mathieu Poirier <mathieu.poirier@linaro.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,  Thorsten Scherer
 <t.scherer@eckelmann.de>, Srinivas Kandagatla
 <srinivas.kandagatla@linaro.org>, Andy Gross <agross@kernel.org>, Mark
 Brown <broonie@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Michael Buesch
 <m@bues.ch>, Sven Van Asbroeck <TheSven73@gmail.com>, Johan Hovold
 <johan@kernel.org>, Alex Elder <elder@kernel.org>, Andreas Noever
 <andreas.noever@gmail.com>, Michael Jamet <michael.jamet@intel.com>, Mika
 Westerberg <mika.westerberg@linux.intel.com>,  Yehezkel Bernat
 <YehezkelShB@gmail.com>, Rob Herring <robh@kernel.org>, Jiri Slaby
 <jirislaby@kernel.org>,  Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>, Alex Williamson
 <alex.williamson@redhat.com>, Martyn Welch <martyn@welchs.me.uk>, Manohar
 Vanga <manohar.vanga@gmail.com>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>,  Juergen Gross <jgross@suse.com>, Stefano
 Stabellini <sstabellini@kernel.org>, Johannes Berg
 <johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai
 <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>, Tyrel Datwyler
 <tyreld@linux.ibm.com>, Vladimir Zapolskiy <vz@mleia.com>, Samuel Holland
 <samuel@sholland.org>, Qinglang Miao <miaoqinglang@huawei.com>, Alexey
 Kardashevskiy <aik@ozlabs.ru>, Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Joey Pabalan <jpabalanb@gmail.com>, Pali =?ISO-8859-1?Q?Roh=E1r?=
 <pali@kernel.org>,  Adrian Hunter <adrian.hunter@intel.com>, Frank Li
 <lznuaa@gmail.com>, Mike Christie <michael.christie@oracle.com>, Bodo
 Stroesser <bostroesser@gmail.com>,  Hannes Reinecke <hare@suse.de>, David
 Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>, Julien
 Grall <jgrall@amazon.com>,  linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org,  linux-parisc@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org,  linux-acpi@vger.kernel.org,
 linux-wireless@vger.kernel.org,  linux-sunxi@lists.linux.dev,
 linux-cxl@vger.kernel.org, nvdimm@lists.linux.dev, 
 dmaengine@vger.kernel.org, linux1394-devel@lists.sourceforge.net, 
 linux-fpga@vger.kernel.org, linux-input@vger.kernel.org, 
 linux-hyperv@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-i3c@lists.infradead.org, industrypack-devel@lists.sourceforge.net, 
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org,  linux-ntb@googlegroups.com,
 linux-pci@vger.kernel.org,  platform-driver-x86@vger.kernel.org,
 linux-remoteproc@vger.kernel.org,  linux-scsi@vger.kernel.org,
 alsa-devel@alsa-project.org,  linux-arm-msm@vger.kernel.org,
 linux-spi@vger.kernel.org,  linux-staging@lists.linux.dev,
 greybus-dev@lists.linaro.org,  target-devel@vger.kernel.org,
 linux-usb@vger.kernel.org,  linux-serial@vger.kernel.org,
 virtualization@lists.linux-foundation.org,  kvm@vger.kernel.org,
 xen-devel@lists.xenproject.org, Russell King <rmk+kernel@armlinux.org.uk>,
 Johannes Thumshirn <jth@kernel.org>
Date: Tue, 06 Jul 2021 11:15:52 -0700
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
	 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: srinivas.pandruvada@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of srinivas.pandruvada@linux.intel.com
 designates 192.55.52.88 as permitted sender) smtp.mailfrom=srinivas.pandruvada@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, 2021-07-06 at 17:48 +0200, Uwe Kleine-K=C3=B6nig wrote:
> The driver core ignores the return value of this callback because
> there
> is only little it can do when a device disappears.
>=20
> This is the final bit of a long lasting cleanup quest where several
> buses were converted to also return void from their remove callback.
> Additionally some resource leaks were fixed that were caused by
> drivers
> returning an error code in the expectation that the driver won't go
> away.
>=20
> With struct bus_type::remove returning void it's prevented that newly
> implemented buses return an ignored error code and so don't
> anticipate
> wrong expectations for driver authors.
>=20
> Acked-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk> (For
> ARM, Amba and related parts)
> Acked-by: Mark Brown <broonie@kernel.org>
> Acked-by: Chen-Yu Tsai <wens@csie.org> (for drivers/bus/sunxi-rsb.c)
> Acked-by: Pali Roh=C3=A1r <pali@kernel.org>
> Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org> (for
> drivers/media)
> Acked-by: Hans de Goede <hdegoede@redhat.com> (For drivers/platform)
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Acked-By: Vinod Koul <vkoul@kernel.org>
> Acked-by: Juergen Gross <jgross@suse.com> (For Xen)
> Acked-by: Lee Jones <lee.jones@linaro.org> (For drivers/mfd)
> Acked-by: Johannes Thumshirn <jth@kernel.org> (For drivers/mcb)
> Acked-by: Johan Hovold <johan@kernel.org>
> Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org> (For
> drivers/slimbus)
> Acked-by: Kirti Wankhede <kwankhede@nvidia.com> (For drivers/vfio)
> Acked-by: Maximilian Luz <luzmaximilian@gmail.com>
> Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com> (For ulpi
> and typec)
> Acked-by: Samuel Iglesias Gons=C3=A1lvez <siglesias@igalia.com> (For
> ipack)
> Reviewed-by: Tom Rix <trix@redhat.com> (For fpga)
> Acked-by: Geoff Levand <geoff@infradead.org> (For ps3)
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

For drivers/hid/intel-ish-hid

Acked-by: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>

> ---
>=20
> =C2=A0arch/arm/common/locomo.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0arch/arm/common/sa1111.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0arch/arm/mach-rpc/ecard.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0arch/mips/sgi-ip22/ip22-gio.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0arch/parisc/kernel/drivers.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 5 ++---
> =C2=A0arch/powerpc/platforms/ps3/system-bus.c=C2=A0=C2=A0 | 3 +--
> =C2=A0arch/powerpc/platforms/pseries/ibmebus.c=C2=A0 | 3 +--
> =C2=A0arch/powerpc/platforms/pseries/vio.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
| 3 +--
> =C2=A0drivers/acpi/bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0drivers/amba/bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/base/auxiliary.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/base/isa.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/base/platform.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/bcma/main.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 6 ++----
> =C2=A0drivers/bus/sunxi-rsb.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/cxl/core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0drivers/dax/bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/dma/idxd/sysfs.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/firewire/core-device.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/firmware/arm_scmi/bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/firmware/google/coreboot_table.c=C2=A0 | 4 +---
> =C2=A0drivers/fpga/dfl.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/hid/hid-core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +=
---
> =C2=A0drivers/hid/intel-ish-hid/ishtp/bus.c=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +=
---
> =C2=A0drivers/hv/vmbus_drv.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 5 +=
----
> =C2=A0drivers/hwtracing/intel_th/core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/i2c/i2c-core-base.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 5 +----
> =C2=A0drivers/i3c/master.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 4 +---
> =C2=A0drivers/input/gameport/gameport.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0drivers/input/serio/serio.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0drivers/ipack/ipack.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 | 4 +---
> =C2=A0drivers/macintosh/macio_asic.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/mcb/mcb-core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +=
---
> =C2=A0drivers/media/pci/bt8xx/bttv-gpio.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 3 +--
> =C2=A0drivers/memstick/core/memstick.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0drivers/mfd/mcp-core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 +=
--
> =C2=A0drivers/misc/mei/bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +=
---
> =C2=A0drivers/misc/tifm_core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0drivers/mmc/core/bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +=
---
> =C2=A0drivers/mmc/core/sdio_bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/net/netdevsim/bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0drivers/ntb/core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/ntb/ntb_transport.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/nvdimm/bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 3 +--
> =C2=A0drivers/pci/endpoint/pci-epf-core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 4 +---
> =C2=A0drivers/pci/pci-driver.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0drivers/pcmcia/ds.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 4 +---
> =C2=A0drivers/platform/surface/aggregator/bus.c | 4 +---
> =C2=A0drivers/platform/x86/wmi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/pnp/driver.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 | 3 +--
> =C2=A0drivers/rapidio/rio-driver.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/rpmsg/rpmsg_core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/s390/cio/ccwgroup.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/s390/cio/css.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +=
---
> =C2=A0drivers/s390/cio/device.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/s390/cio/scm.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +=
---
> =C2=A0drivers/s390/crypto/ap_bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/scsi/scsi_debug.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0drivers/siox/siox-core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/slimbus/core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +=
---
> =C2=A0drivers/soc/qcom/apr.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +=
---
> =C2=A0drivers/spi/spi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/spmi/spmi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 3 +--
> =C2=A0drivers/ssb/main.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/staging/fieldbus/anybuss/host.c=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/staging/greybus/gbphy.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/target/loopback/tcm_loop.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 5 ++---
> =C2=A0drivers/thunderbolt/domain.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/tty/serdev/core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/usb/common/ulpi.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/usb/serial/bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/usb/typec/bus.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/vdpa/vdpa.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 | 4 +---
> =C2=A0drivers/vfio/mdev/mdev_driver.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/virtio/virtio.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 3 +--
> =C2=A0drivers/vme/vme.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0drivers/xen/xenbus/xenbus.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 2 +-
> =C2=A0drivers/xen/xenbus/xenbus_probe.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 | 4 +---
> =C2=A0include/linux/device/bus.h=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 2 +-
> =C2=A0sound/aoa/soundbus/core.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 4 +---
> =C2=A080 files changed, 83 insertions(+), 219 deletions(-)
>=20
> diff --git a/arch/arm/common/locomo.c b/arch/arm/common/locomo.c
> index e45f4e4e06b6..24d21ba63030 100644
> --- a/arch/arm/common/locomo.c
> +++ b/arch/arm/common/locomo.c
> @@ -834,14 +834,13 @@ static int locomo_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int locomo_bus_remove(struct device *dev)
> +static void locomo_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct locomo_dev *ldev =
=3D LOCOMO_DEV(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct locomo_driver *drv=
 =3D LOCOMO_DRV(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (drv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(ldev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0struct bus_type locomo_bus_type =3D {
> diff --git a/arch/arm/common/sa1111.c b/arch/arm/common/sa1111.c
> index ff5e0d04cb89..092a2ebc0c28 100644
> --- a/arch/arm/common/sa1111.c
> +++ b/arch/arm/common/sa1111.c
> @@ -1364,15 +1364,13 @@ static int sa1111_bus_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int sa1111_bus_remove(struct device *dev)
> +static void sa1111_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct sa1111_dev *sadev =
=3D to_sa1111_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct sa1111_driver *drv=
 =3D SA1111_DRV(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (drv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(sadev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0struct bus_type sa1111_bus_type =3D {
> diff --git a/arch/arm/mach-rpc/ecard.c b/arch/arm/mach-rpc/ecard.c
> index 827b50f1c73e..53813f9464a2 100644
> --- a/arch/arm/mach-rpc/ecard.c
> +++ b/arch/arm/mach-rpc/ecard.c
> @@ -1052,7 +1052,7 @@ static int ecard_drv_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int ecard_drv_remove(struct device *dev)
> +static void ecard_drv_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct expansion_card *ec=
 =3D ECARD_DEV(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ecard_driver *drv =
=3D ECARD_DRV(dev->driver);
> @@ -1067,8 +1067,6 @@ static int ecard_drv_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ec->ops =3D &ecard_defaul=
t_ops;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0barrier();
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ec->irq_data =3D NULL;
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0/*
> diff --git a/arch/mips/sgi-ip22/ip22-gio.c b/arch/mips/sgi-ip22/ip22-
> gio.c
> index de0768a49ee8..dfc52f661ad0 100644
> --- a/arch/mips/sgi-ip22/ip22-gio.c
> +++ b/arch/mips/sgi-ip22/ip22-gio.c
> @@ -143,14 +143,13 @@ static int gio_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return error;
> =C2=A0}
> =C2=A0
> -static int gio_device_remove(struct device *dev)
> +static void gio_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gio_device *gio_de=
v =3D to_gio_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gio_driver *drv =
=3D to_gio_driver(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dev->driver && drv->r=
emove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(gio_dev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void gio_device_shutdown(struct device *dev)
> diff --git a/arch/parisc/kernel/drivers.c
> b/arch/parisc/kernel/drivers.c
> index 80fa0650736b..776d624a7207 100644
> --- a/arch/parisc/kernel/drivers.c
> +++ b/arch/parisc/kernel/drivers.c
> @@ -133,14 +133,13 @@ static int parisc_driver_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return rc;
> =C2=A0}
> =C2=A0
> -static int __exit parisc_driver_remove(struct device *dev)
> +static void __exit parisc_driver_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct parisc_device *pa_=
dev =3D to_parisc_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct parisc_driver *pa_=
drv =3D to_parisc_driver(dev->driver);
> +
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (pa_drv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0pa_drv->remove(pa_dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
> =C2=A0
> diff --git a/arch/powerpc/platforms/ps3/system-bus.c
> b/arch/powerpc/platforms/ps3/system-bus.c
> index 1a5665875165..cc5774c64fae 100644
> --- a/arch/powerpc/platforms/ps3/system-bus.c
> +++ b/arch/powerpc/platforms/ps3/system-bus.c
> @@ -381,7 +381,7 @@ static int ps3_system_bus_probe(struct device
> *_dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return result;
> =C2=A0}
> =C2=A0
> -static int ps3_system_bus_remove(struct device *_dev)
> +static void ps3_system_bus_remove(struct device *_dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ps3_system_bus_dev=
ice *dev =3D
> ps3_dev_to_system_bus_dev(_dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ps3_system_bus_dri=
ver *drv;
> @@ -399,7 +399,6 @@ static int ps3_system_bus_remove(struct device
> *_dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__f=
unc__, __LINE__, drv->core.name);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pr_debug(" <- %s:%d: %s\n=
", __func__, __LINE__,
> dev_name(&dev->core));
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void ps3_system_bus_shutdown(struct device *_dev)
> diff --git a/arch/powerpc/platforms/pseries/ibmebus.c
> b/arch/powerpc/platforms/pseries/ibmebus.c
> index c6c79ef55e13..7ee3ed7d6cc2 100644
> --- a/arch/powerpc/platforms/pseries/ibmebus.c
> +++ b/arch/powerpc/platforms/pseries/ibmebus.c
> @@ -366,14 +366,13 @@ static int ibmebus_bus_device_probe(struct
> device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return error;
> =C2=A0}
> =C2=A0
> -static int ibmebus_bus_device_remove(struct device *dev)
> +static void ibmebus_bus_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct platform_device *o=
f_dev =3D to_platform_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct platform_driver *d=
rv =3D to_platform_driver(dev-
> >driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dev->driver && drv->r=
emove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(of_dev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void ibmebus_bus_device_shutdown(struct device *dev)
> diff --git a/arch/powerpc/platforms/pseries/vio.c
> b/arch/powerpc/platforms/pseries/vio.c
> index e00f3725ec96..58283cecbd52 100644
> --- a/arch/powerpc/platforms/pseries/vio.c
> +++ b/arch/powerpc/platforms/pseries/vio.c
> @@ -1257,7 +1257,7 @@ static int vio_bus_probe(struct device *dev)
> =C2=A0}
> =C2=A0
> =C2=A0/* convert from struct device to struct vio_dev and pass to driver.
> */
> -static int vio_bus_remove(struct device *dev)
> +static void vio_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vio_dev *viodev =
=3D to_vio_dev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vio_driver *viodrv=
 =3D to_vio_driver(dev->driver);
> @@ -1276,7 +1276,6 @@ static int vio_bus_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0vio_cmo_bus_remove(viodev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0put_device(devptr);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void vio_bus_shutdown(struct device *dev)
> diff --git a/drivers/acpi/bus.c b/drivers/acpi/bus.c
> index ee24246d88fd..51f374e42869 100644
> --- a/drivers/acpi/bus.c
> +++ b/drivers/acpi/bus.c
> @@ -1018,7 +1018,7 @@ static int acpi_device_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> -static int acpi_device_remove(struct device *dev)
> +static void acpi_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct acpi_device *acpi_=
dev =3D to_acpi_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct acpi_driver *acpi_=
drv =3D acpi_dev->driver;
> @@ -1033,7 +1033,6 @@ static int acpi_device_remove(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0acpi_dev->driver_data =3D=
 NULL;
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0put_device(dev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0struct bus_type acpi_bus_type =3D {
> diff --git a/drivers/amba/bus.c b/drivers/amba/bus.c
> index 939ca220bf78..962041148482 100644
> --- a/drivers/amba/bus.c
> +++ b/drivers/amba/bus.c
> @@ -219,7 +219,7 @@ static int amba_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int amba_remove(struct device *dev)
> +static void amba_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct amba_device *pcdev=
 =3D to_amba_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct amba_driver *drv =
=3D to_amba_driver(dev->driver);
> @@ -236,8 +236,6 @@ static int amba_remove(struct device *dev)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0amba_put_disable_pclk(pcd=
ev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_pm_domain_detach(dev,=
 true);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void amba_shutdown(struct device *dev)
> diff --git a/drivers/base/auxiliary.c b/drivers/base/auxiliary.c
> index adc199dfba3c..0c86f5bed9f4 100644
> --- a/drivers/base/auxiliary.c
> +++ b/drivers/base/auxiliary.c
> @@ -79,7 +79,7 @@ static int auxiliary_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int auxiliary_bus_remove(struct device *dev)
> +static void auxiliary_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct auxiliary_driver *=
auxdrv =3D to_auxiliary_drv(dev-
> >driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct auxiliary_device *=
auxdev =3D to_auxiliary_dev(dev);
> @@ -87,8 +87,6 @@ static int auxiliary_bus_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (auxdrv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0auxdrv->remove(auxdev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_pm_domain_detach(dev,=
 true);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void auxiliary_bus_shutdown(struct device *dev)
> diff --git a/drivers/base/isa.c b/drivers/base/isa.c
> index aa4737667026..55e3ee2da98f 100644
> --- a/drivers/base/isa.c
> +++ b/drivers/base/isa.c
> @@ -46,14 +46,12 @@ static int isa_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> -static int isa_bus_remove(struct device *dev)
> +static void isa_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct isa_driver *isa_dr=
iver =3D dev->platform_data;
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (isa_driver && isa_dri=
ver->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0isa_driver->remove(dev, to_isa_dev(dev)->id);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void isa_bus_shutdown(struct device *dev)
> diff --git a/drivers/base/platform.c b/drivers/base/platform.c
> index 8640578f45e9..a94b7f454881 100644
> --- a/drivers/base/platform.c
> +++ b/drivers/base/platform.c
> @@ -1438,7 +1438,7 @@ static int platform_probe(struct device *_dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int platform_remove(struct device *_dev)
> +static void platform_remove(struct device *_dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct platform_driver *d=
rv =3D to_platform_driver(_dev-
> >driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct platform_device *d=
ev =3D to_platform_device(_dev);
> @@ -1450,8 +1450,6 @@ static int platform_remove(struct device *_dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev=
_warn(_dev, "remove callback returned a
> non-zero value. This will be ignored.\n");
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_pm_domain_detach(_dev=
, true);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void platform_shutdown(struct device *_dev)
> diff --git a/drivers/bcma/main.c b/drivers/bcma/main.c
> index 6535614a7dc1..e076630d17bd 100644
> --- a/drivers/bcma/main.c
> +++ b/drivers/bcma/main.c
> @@ -27,7 +27,7 @@ static DEFINE_MUTEX(bcma_buses_mutex);
> =C2=A0
> =C2=A0static int bcma_bus_match(struct device *dev, struct device_driver
> *drv);
> =C2=A0static int bcma_device_probe(struct device *dev);
> -static int bcma_device_remove(struct device *dev);
> +static void bcma_device_remove(struct device *dev);
> =C2=A0static int bcma_device_uevent(struct device *dev, struct
> kobj_uevent_env *env);
> =C2=A0
> =C2=A0static ssize_t manuf_show(struct device *dev, struct
> device_attribute *attr, char *buf)
> @@ -614,7 +614,7 @@ static int bcma_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
> =C2=A0}
> =C2=A0
> -static int bcma_device_remove(struct device *dev)
> +static void bcma_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct bcma_device *core =
=3D container_of(dev, struct
> bcma_device, dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct bcma_driver *adrv =
=3D container_of(dev->driver, struct
> bcma_driver,
> @@ -623,8 +623,6 @@ static int bcma_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (adrv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0adrv->remove(core);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0put_device(dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int bcma_device_uevent(struct device *dev, struct
> kobj_uevent_env *env)
> diff --git a/drivers/bus/sunxi-rsb.c b/drivers/bus/sunxi-rsb.c
> index d46db132d085..6f225dddc74f 100644
> --- a/drivers/bus/sunxi-rsb.c
> +++ b/drivers/bus/sunxi-rsb.c
> @@ -169,13 +169,11 @@ static int sunxi_rsb_device_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return drv->probe(rdev);
> =C2=A0}
> =C2=A0
> -static int sunxi_rsb_device_remove(struct device *dev)
> +static void sunxi_rsb_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct sunxi_rsb_dr=
iver *drv =3D to_sunxi_rsb_driver(dev-
> >driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(to_sunxi_rsb_=
device(dev));
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type sunxi_rsb_bus =3D {
> diff --git a/drivers/cxl/core.c b/drivers/cxl/core.c
> index a2e4d54fc7bc..2b90b7c3b9d7 100644
> --- a/drivers/cxl/core.c
> +++ b/drivers/cxl/core.c
> @@ -1034,13 +1034,12 @@ static int cxl_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return to_cxl_drv(dev->dr=
iver)->probe(dev);
> =C2=A0}
> =C2=A0
> -static int cxl_bus_remove(struct device *dev)
> +static void cxl_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct cxl_driver *cxl_dr=
v =3D to_cxl_drv(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (cxl_drv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0cxl_drv->remove(dev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0struct bus_type cxl_bus_type =3D {
> diff --git a/drivers/dax/bus.c b/drivers/dax/bus.c
> index 5aee26e1bbd6..6cc4da4c713d 100644
> --- a/drivers/dax/bus.c
> +++ b/drivers/dax/bus.c
> @@ -172,15 +172,13 @@ static int dax_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> -static int dax_bus_remove(struct device *dev)
> +static void dax_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct dax_device_driver =
*dax_drv =3D to_dax_drv(dev->driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct dev_dax *dev_dax =
=3D to_dev_dax(dev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dax_drv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0dax_drv->remove(dev_dax);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type dax_bus_type =3D {
> diff --git a/drivers/dma/idxd/sysfs.c b/drivers/dma/idxd/sysfs.c
> index 0460d58e3941..5a017c62c752 100644
> --- a/drivers/dma/idxd/sysfs.c
> +++ b/drivers/dma/idxd/sysfs.c
> @@ -260,7 +260,7 @@ static void disable_wq(struct idxd_wq *wq)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_info(dev, "wq %s disa=
bled\n", dev_name(&wq->conf_dev));
> =C2=A0}
> =C2=A0
> -static int idxd_config_bus_remove(struct device *dev)
> +static void idxd_config_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int rc;
> =C2=A0
> @@ -305,8 +305,6 @@ static int idxd_config_bus_remove(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev=
_info(dev, "Device %s disabled\n",
> dev_name(dev));
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void idxd_config_bus_shutdown(struct device *dev)
> diff --git a/drivers/firewire/core-device.c b/drivers/firewire/core-
> device.c
> index 68216988391f..90ed8fdaba75 100644
> --- a/drivers/firewire/core-device.c
> +++ b/drivers/firewire/core-device.c
> @@ -187,14 +187,12 @@ static int fw_unit_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return driver->probe(fw_u=
nit(dev), unit_match(dev, dev-
> >driver));
> =C2=A0}
> =C2=A0
> -static int fw_unit_remove(struct device *dev)
> +static void fw_unit_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct fw_driver *driver =
=3D
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0con=
tainer_of(dev->driver, struct fw_driver,
> driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0driver->remove(fw_unit(de=
v));
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int get_modalias(struct fw_unit *unit, char *buffer, size_t
> buffer_size)
> diff --git a/drivers/firmware/arm_scmi/bus.c
> b/drivers/firmware/arm_scmi/bus.c
> index 784cf0027da3..2682c3df651c 100644
> --- a/drivers/firmware/arm_scmi/bus.c
> +++ b/drivers/firmware/arm_scmi/bus.c
> @@ -116,15 +116,13 @@ static int scmi_dev_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return scmi_drv->probe(sc=
mi_dev);
> =C2=A0}
> =C2=A0
> -static int scmi_dev_remove(struct device *dev)
> +static void scmi_dev_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct scmi_driver *scmi_=
drv =3D to_scmi_driver(dev->driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct scmi_device *scmi_=
dev =3D to_scmi_dev(dev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (scmi_drv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0scmi_drv->remove(scmi_dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type scmi_bus_type =3D {
> diff --git a/drivers/firmware/google/coreboot_table.c
> b/drivers/firmware/google/coreboot_table.c
> index dc83ea118c67..c52bcaa9def6 100644
> --- a/drivers/firmware/google/coreboot_table.c
> +++ b/drivers/firmware/google/coreboot_table.c
> @@ -44,15 +44,13 @@ static int coreboot_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int coreboot_bus_remove(struct device *dev)
> +static void coreboot_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct coreboot_device *d=
evice =3D CB_DEV(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct coreboot_driver *d=
river =3D CB_DRV(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (driver->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0driver->remove(device);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type coreboot_bus_type =3D {
> diff --git a/drivers/fpga/dfl.c b/drivers/fpga/dfl.c
> index 511b20ff35a3..1ae6779a0dd6 100644
> --- a/drivers/fpga/dfl.c
> +++ b/drivers/fpga/dfl.c
> @@ -284,15 +284,13 @@ static int dfl_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ddrv->probe(ddev);
> =C2=A0}
> =C2=A0
> -static int dfl_bus_remove(struct device *dev)
> +static void dfl_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct dfl_driver *ddrv =
=3D to_dfl_drv(dev->driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct dfl_device *ddev =
=3D to_dfl_dev(dev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ddrv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0ddrv->remove(ddev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int dfl_bus_uevent(struct device *dev, struct kobj_uevent_en=
v
> *env)
> diff --git a/drivers/hid/hid-core.c b/drivers/hid/hid-core.c
> index 7db332139f7d..dbed2524fd47 100644
> --- a/drivers/hid/hid-core.c
> +++ b/drivers/hid/hid-core.c
> @@ -2302,7 +2302,7 @@ static int hid_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int hid_device_remove(struct device *dev)
> +static void hid_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct hid_device *hdev =
=3D to_hid_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct hid_driver *hdrv;
> @@ -2322,8 +2322,6 @@ static int hid_device_remove(struct device
> *dev)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!hdev->io_started)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0up(&hdev->driver_input_lock);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static ssize_t modalias_show(struct device *dev, struct
> device_attribute *a,
> diff --git a/drivers/hid/intel-ish-hid/ishtp/bus.c
> b/drivers/hid/intel-ish-hid/ishtp/bus.c
> index f0802b047ed8..8a51bd9cd093 100644
> --- a/drivers/hid/intel-ish-hid/ishtp/bus.c
> +++ b/drivers/hid/intel-ish-hid/ishtp/bus.c
> @@ -255,7 +255,7 @@ static int ishtp_cl_bus_match(struct device *dev,
> struct device_driver *drv)
> =C2=A0 *
> =C2=A0 * Return: Return value from driver remove() call.
> =C2=A0 */
> -static int ishtp_cl_device_remove(struct device *dev)
> +static void ishtp_cl_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ishtp_cl_device *d=
evice =3D to_ishtp_cl_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ishtp_cl_driver *d=
river =3D to_ishtp_cl_driver(dev-
> >driver);
> @@ -267,8 +267,6 @@ static int ishtp_cl_device_remove(struct device
> *dev)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (driver->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0driver->remove(device);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0/**
> diff --git a/drivers/hv/vmbus_drv.c b/drivers/hv/vmbus_drv.c
> index 57bbbaa4e8f7..392c1ac4f819 100644
> --- a/drivers/hv/vmbus_drv.c
> +++ b/drivers/hv/vmbus_drv.c
> @@ -922,7 +922,7 @@ static int vmbus_probe(struct device
> *child_device)
> =C2=A0/*
> =C2=A0 * vmbus_remove - Remove a vmbus device
> =C2=A0 */
> -static int vmbus_remove(struct device *child_device)
> +static void vmbus_remove(struct device *child_device)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct hv_driver *drv;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct hv_device *dev =3D=
 device_to_hv_device(child_device);
> @@ -932,11 +932,8 @@ static int vmbus_remove(struct device
> *child_device)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0if (drv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drv=
->remove(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> -
> =C2=A0/*
> =C2=A0 * vmbus_shutdown - Shutdown a vmbus device
> =C2=A0 */
> diff --git a/drivers/hwtracing/intel_th/core.c
> b/drivers/hwtracing/intel_th/core.c
> index 66eed2dff818..7e753a75d23b 100644
> --- a/drivers/hwtracing/intel_th/core.c
> +++ b/drivers/hwtracing/intel_th/core.c
> @@ -95,7 +95,7 @@ static int intel_th_probe(struct device *dev)
> =C2=A0
> =C2=A0static void intel_th_device_remove(struct intel_th_device *thdev);
> =C2=A0
> -static int intel_th_remove(struct device *dev)
> +static void intel_th_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct intel_th_driver *t=
hdrv =3D to_intel_th_driver(dev-
> >driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct intel_th_device *t=
hdev =3D to_intel_th_device(dev);
> @@ -164,8 +164,6 @@ static int intel_th_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_disable(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_set_active(dev=
);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_enable(dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type intel_th_bus =3D {
> diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-
> base.c
> index 84f12bf90644..54964fbe3f03 100644
> --- a/drivers/i2c/i2c-core-base.c
> +++ b/drivers/i2c/i2c-core-base.c
> @@ -601,7 +601,7 @@ static int i2c_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return status;
> =C2=A0}
> =C2=A0
> -static int i2c_device_remove(struct device *dev)
> +static void i2c_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct i2c_client=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*client =3D to_i2c_client(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct i2c_adapter=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 *adap;
> @@ -631,9 +631,6 @@ static int i2c_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0client->irq =3D 0;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (client->flags & I2C_C=
LIENT_HOST_NOTIFY)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_put(&client->adapter->dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* return always 0 because the=
re is WIP to make remove-
> functions void */
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0#ifdef CONFIG_PM_SLEEP
> diff --git a/drivers/i3c/master.c b/drivers/i3c/master.c
> index e2e12a5585e5..c3b4c677b442 100644
> --- a/drivers/i3c/master.c
> +++ b/drivers/i3c/master.c
> @@ -322,7 +322,7 @@ static int i3c_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return driver->probe(i3cd=
ev);
> =C2=A0}
> =C2=A0
> -static int i3c_device_remove(struct device *dev)
> +static void i3c_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct i3c_device *i3cdev=
 =3D dev_to_i3cdev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct i3c_driver *driver=
 =3D drv_to_i3cdrv(dev->driver);
> @@ -331,8 +331,6 @@ static int i3c_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0driver->remove(i3cdev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0i3c_device_free_ibi(i3cde=
v);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0struct bus_type i3c_bus_type =3D {
> diff --git a/drivers/input/gameport/gameport.c
> b/drivers/input/gameport/gameport.c
> index 61fa7e724172..db58a01b23d3 100644
> --- a/drivers/input/gameport/gameport.c
> +++ b/drivers/input/gameport/gameport.c
> @@ -697,13 +697,12 @@ static int gameport_driver_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return gameport->drv ? 0 =
: -ENODEV;
> =C2=A0}
> =C2=A0
> -static int gameport_driver_remove(struct device *dev)
> +static void gameport_driver_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gameport *gameport=
 =3D to_gameport_port(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gameport_driver *d=
rv =3D to_gameport_driver(dev-
> >driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drv->disconnect(gameport)=
;
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void gameport_attach_driver(struct gameport_driver *drv)
> diff --git a/drivers/input/serio/serio.c
> b/drivers/input/serio/serio.c
> index 29f491082926..ec117be3d8d8 100644
> --- a/drivers/input/serio/serio.c
> +++ b/drivers/input/serio/serio.c
> @@ -778,12 +778,11 @@ static int serio_driver_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return serio_connect_driv=
er(serio, drv);
> =C2=A0}
> =C2=A0
> -static int serio_driver_remove(struct device *dev)
> +static void serio_driver_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct serio *serio =3D t=
o_serio_port(dev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0serio_disconnect_driver(s=
erio);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void serio_cleanup(struct serio *serio)
> diff --git a/drivers/ipack/ipack.c b/drivers/ipack/ipack.c
> index 7de9605cac4f..b1c3198355e7 100644
> --- a/drivers/ipack/ipack.c
> +++ b/drivers/ipack/ipack.c
> @@ -67,15 +67,13 @@ static int ipack_bus_probe(struct device *device)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return drv->ops->probe(de=
v);
> =C2=A0}
> =C2=A0
> -static int ipack_bus_remove(struct device *device)
> +static void ipack_bus_remove(struct device *device)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ipack_device *dev =
=3D to_ipack_dev(device);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ipack_driver *drv =
=3D to_ipack_driver(device->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (drv->ops->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drv->ops->remove(dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int ipack_uevent(struct device *dev, struct kobj_uevent_env
> *env)
> diff --git a/drivers/macintosh/macio_asic.c
> b/drivers/macintosh/macio_asic.c
> index 49af60bdac92..c1fdf2896021 100644
> --- a/drivers/macintosh/macio_asic.c
> +++ b/drivers/macintosh/macio_asic.c
> @@ -88,7 +88,7 @@ static int macio_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return error;
> =C2=A0}
> =C2=A0
> -static int macio_device_remove(struct device *dev)
> +static void macio_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct macio_dev * macio_=
dev =3D to_macio_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct macio_driver * drv=
 =3D to_macio_driver(dev->driver);
> @@ -96,8 +96,6 @@ static int macio_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dev->driver && drv->r=
emove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(macio_dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0macio_dev_put(macio_dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void macio_device_shutdown(struct device *dev)
> diff --git a/drivers/mcb/mcb-core.c b/drivers/mcb/mcb-core.c
> index 38fbb3b59873..edf4ee6eff25 100644
> --- a/drivers/mcb/mcb-core.c
> +++ b/drivers/mcb/mcb-core.c
> @@ -77,7 +77,7 @@ static int mcb_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int mcb_remove(struct device *dev)
> +static void mcb_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mcb_driver *mdrv =
=3D to_mcb_driver(dev->driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mcb_device *mdev =
=3D to_mcb_device(dev);
> @@ -89,8 +89,6 @@ static int mcb_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0module_put(carrier_mod);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0put_device(&mdev->dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void mcb_shutdown(struct device *dev)
> diff --git a/drivers/media/pci/bt8xx/bttv-gpio.c
> b/drivers/media/pci/bt8xx/bttv-gpio.c
> index b730225ca887..a2b18e2bed1b 100644
> --- a/drivers/media/pci/bt8xx/bttv-gpio.c
> +++ b/drivers/media/pci/bt8xx/bttv-gpio.c
> @@ -46,14 +46,13 @@ static int bttv_sub_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return sub->probe ? sub->=
probe(sdev) : -ENODEV;
> =C2=A0}
> =C2=A0
> -static int bttv_sub_remove(struct device *dev)
> +static void bttv_sub_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct bttv_sub_device *s=
dev =3D to_bttv_sub_dev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct bttv_sub_driver *s=
ub =3D to_bttv_sub_drv(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (sub->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0sub->remove(sdev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0struct bus_type bttv_sub_bus_type =3D {
> diff --git a/drivers/memstick/core/memstick.c
> b/drivers/memstick/core/memstick.c
> index bb1065990aeb..660df7d269fa 100644
> --- a/drivers/memstick/core/memstick.c
> +++ b/drivers/memstick/core/memstick.c
> @@ -91,7 +91,7 @@ static int memstick_device_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return rc;
> =C2=A0}
> =C2=A0
> -static int memstick_device_remove(struct device *dev)
> +static void memstick_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct memstick_dev *card=
 =3D container_of(dev, struct
> memstick_dev,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 de=
v);
> @@ -105,7 +105,6 @@ static int memstick_device_remove(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0put_device(dev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0#ifdef CONFIG_PM
> diff --git a/drivers/mfd/mcp-core.c b/drivers/mfd/mcp-core.c
> index eff9423e90f5..2fa592c37c6f 100644
> --- a/drivers/mfd/mcp-core.c
> +++ b/drivers/mfd/mcp-core.c
> @@ -33,13 +33,12 @@ static int mcp_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return drv->probe(mcp);
> =C2=A0}
> =C2=A0
> -static int mcp_bus_remove(struct device *dev)
> +static void mcp_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mcp *mcp =3D to_mc=
p(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mcp_driver *drv =
=3D to_mcp_driver(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(mcp);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type mcp_bus_type =3D {
> diff --git a/drivers/misc/mei/bus.c b/drivers/misc/mei/bus.c
> index 935acc6bbf3c..3bf2bb4fd152 100644
> --- a/drivers/misc/mei/bus.c
> +++ b/drivers/misc/mei/bus.c
> @@ -884,7 +884,7 @@ static int mei_cl_device_probe(struct device
> *dev)
> =C2=A0 *
> =C2=A0 * Return:=C2=A0 0 on success; < 0 otherwise
> =C2=A0 */
> -static int mei_cl_device_remove(struct device *dev)
> +static void mei_cl_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mei_cl_device *cld=
ev =3D to_mei_cl_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mei_cl_driver *cld=
rv =3D to_mei_cl_driver(dev->driver);
> @@ -896,8 +896,6 @@ static int mei_cl_device_remove(struct device
> *dev)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mei_cl_bus_module_put(cld=
ev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0module_put(THIS_MODULE);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static ssize_t name_show(struct device *dev, struct device_attribut=
e
> *a,
> diff --git a/drivers/misc/tifm_core.c b/drivers/misc/tifm_core.c
> index 667e574a7df2..52656fc87e99 100644
> --- a/drivers/misc/tifm_core.c
> +++ b/drivers/misc/tifm_core.c
> @@ -87,7 +87,7 @@ static void tifm_dummy_event(struct tifm_dev *sock)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return;
> =C2=A0}
> =C2=A0
> -static int tifm_device_remove(struct device *dev)
> +static void tifm_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct tifm_dev *sock =3D=
 container_of(dev, struct tifm_dev,
> dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct tifm_driver *drv =
=3D container_of(dev->driver, struct
> tifm_driver,
> @@ -101,7 +101,6 @@ static int tifm_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0put_device(dev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0#ifdef CONFIG_PM
> diff --git a/drivers/mmc/core/bus.c b/drivers/mmc/core/bus.c
> index 4383c262b3f5..f6b7a9c5bbff 100644
> --- a/drivers/mmc/core/bus.c
> +++ b/drivers/mmc/core/bus.c
> @@ -140,14 +140,12 @@ static int mmc_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return drv->probe(card);
> =C2=A0}
> =C2=A0
> -static int mmc_bus_remove(struct device *dev)
> +static void mmc_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mmc_driver *drv =
=3D to_mmc_driver(dev->driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mmc_card *card =3D=
 mmc_dev_to_card(dev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(card);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void mmc_bus_shutdown(struct device *dev)
> diff --git a/drivers/mmc/core/sdio_bus.c
> b/drivers/mmc/core/sdio_bus.c
> index 3d709029e07c..fda03b35c14a 100644
> --- a/drivers/mmc/core/sdio_bus.c
> +++ b/drivers/mmc/core/sdio_bus.c
> @@ -203,7 +203,7 @@ static int sdio_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int sdio_bus_remove(struct device *dev)
> +static void sdio_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct sdio_driver *drv =
=3D to_sdio_driver(dev->driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct sdio_func *func =
=3D dev_to_sdio_func(dev);
> @@ -232,8 +232,6 @@ static int sdio_bus_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_put_sync(dev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_pm_domain_detach(dev,=
 false);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static const struct dev_pm_ops sdio_bus_pm_ops =3D {
> diff --git a/drivers/net/netdevsim/bus.c
> b/drivers/net/netdevsim/bus.c
> index ccec29970d5b..14b154929533 100644
> --- a/drivers/net/netdevsim/bus.c
> +++ b/drivers/net/netdevsim/bus.c
> @@ -370,12 +370,11 @@ static int nsim_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return nsim_dev_probe(nsi=
m_bus_dev);
> =C2=A0}
> =C2=A0
> -static int nsim_bus_remove(struct device *dev)
> +static void nsim_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct nsim_bus_dev *nsim=
_bus_dev =3D to_nsim_bus_dev(dev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0nsim_dev_remove(nsim_bus_=
dev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int nsim_num_vf(struct device *dev)
> diff --git a/drivers/ntb/core.c b/drivers/ntb/core.c
> index f8f75a504a58..27dd93deff6e 100644
> --- a/drivers/ntb/core.c
> +++ b/drivers/ntb/core.c
> @@ -271,7 +271,7 @@ static int ntb_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return rc;
> =C2=A0}
> =C2=A0
> -static int ntb_remove(struct device *dev)
> +static void ntb_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ntb_dev *ntb;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ntb_client *client=
;
> @@ -283,8 +283,6 @@ static int ntb_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0client->ops.remove(client, ntb);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0put_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void ntb_dev_release(struct device *dev)
> diff --git a/drivers/ntb/ntb_transport.c
> b/drivers/ntb/ntb_transport.c
> index 4a02561cfb96..a9b97ebc71ac 100644
> --- a/drivers/ntb/ntb_transport.c
> +++ b/drivers/ntb/ntb_transport.c
> @@ -304,7 +304,7 @@ static int ntb_transport_bus_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return rc;
> =C2=A0}
> =C2=A0
> -static int ntb_transport_bus_remove(struct device *dev)
> +static void ntb_transport_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct ntb_transpor=
t_client *client;
> =C2=A0
> @@ -312,8 +312,6 @@ static int ntb_transport_bus_remove(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0client->remove(dev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0put_device(dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type ntb_transport_bus =3D {
> diff --git a/drivers/nvdimm/bus.c b/drivers/nvdimm/bus.c
> index e6aa87043a95..9dc7f3edd42b 100644
> --- a/drivers/nvdimm/bus.c
> +++ b/drivers/nvdimm/bus.c
> @@ -108,7 +108,7 @@ static int nvdimm_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return rc;
> =C2=A0}
> =C2=A0
> -static int nvdimm_bus_remove(struct device *dev)
> +static void nvdimm_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct nd_device_driver *=
nd_drv =3D to_nd_device_driver(dev-
> >driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct module *provider =
=3D to_bus_provider(dev);
> @@ -123,7 +123,6 @@ static int nvdimm_bus_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_dbg(&nvdimm_bus->dev,=
 "%s.remove(%s)\n", dev->driver-
> >name,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev=
_name(dev));
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0module_put(provider);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void nvdimm_bus_shutdown(struct device *dev)
> diff --git a/drivers/pci/endpoint/pci-epf-core.c
> b/drivers/pci/endpoint/pci-epf-core.c
> index 4b9ad96bf1b2..502eb79cd551 100644
> --- a/drivers/pci/endpoint/pci-epf-core.c
> +++ b/drivers/pci/endpoint/pci-epf-core.c
> @@ -387,7 +387,7 @@ static int pci_epf_device_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return driver->probe(epf)=
;
> =C2=A0}
> =C2=A0
> -static int pci_epf_device_remove(struct device *dev)
> +static void pci_epf_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pci_epf *epf =3D t=
o_pci_epf(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pci_epf_driver *dr=
iver =3D to_pci_epf_driver(dev-
> >driver);
> @@ -395,8 +395,6 @@ static int pci_epf_device_remove(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (driver->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0driver->remove(epf);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0epf->driver =3D NULL;
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type pci_epf_bus_type =3D {
> diff --git a/drivers/pci/pci-driver.c b/drivers/pci/pci-driver.c
> index 3a72352aa5cf..a0615395500a 100644
> --- a/drivers/pci/pci-driver.c
> +++ b/drivers/pci/pci-driver.c
> @@ -440,7 +440,7 @@ static int pci_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return error;
> =C2=A0}
> =C2=A0
> -static int pci_device_remove(struct device *dev)
> +static void pci_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pci_dev *pci_dev =
=3D to_pci_dev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pci_driver *drv =
=3D pci_dev->driver;
> @@ -476,7 +476,6 @@ static int pci_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 */
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pci_dev_put(pci_dev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void pci_device_shutdown(struct device *dev)
> diff --git a/drivers/pcmcia/ds.c b/drivers/pcmcia/ds.c
> index bd81aa64d011..5bd1b80424e7 100644
> --- a/drivers/pcmcia/ds.c
> +++ b/drivers/pcmcia/ds.c
> @@ -350,7 +350,7 @@ static void pcmcia_card_remove(struct
> pcmcia_socket *s, struct pcmcia_device *le
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return;
> =C2=A0}
> =C2=A0
> -static int pcmcia_device_remove(struct device *dev)
> +static void pcmcia_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pcmcia_device *p_d=
ev;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pcmcia_driver *p_d=
rv;
> @@ -389,8 +389,6 @@ static int pcmcia_device_remove(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* references from pcmcia=
_device_probe */
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pcmcia_put_dev(p_dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0module_put(p_drv->owner);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0
> diff --git a/drivers/platform/surface/aggregator/bus.c
> b/drivers/platform/surface/aggregator/bus.c
> index 0169677c243e..0a40dd9c94ed 100644
> --- a/drivers/platform/surface/aggregator/bus.c
> +++ b/drivers/platform/surface/aggregator/bus.c
> @@ -316,14 +316,12 @@ static int ssam_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0->probe(to_ssam_device(dev));
> =C2=A0}
> =C2=A0
> -static int ssam_bus_remove(struct device *dev)
> +static void ssam_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ssam_device_driver=
 *sdrv =3D to_ssam_device_driver(dev-
> >driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (sdrv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0sdrv->remove(to_ssam_device(dev));
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0struct bus_type ssam_bus_type =3D {
> diff --git a/drivers/platform/x86/wmi.c b/drivers/platform/x86/wmi.c
> index 62e0d56a3332..a76313006bdc 100644
> --- a/drivers/platform/x86/wmi.c
> +++ b/drivers/platform/x86/wmi.c
> @@ -980,7 +980,7 @@ static int wmi_dev_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int wmi_dev_remove(struct device *dev)
> +static void wmi_dev_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct wmi_block *wblock =
=3D dev_to_wblock(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct wmi_driver *wdrive=
r =3D
> @@ -997,8 +997,6 @@ static int wmi_dev_remove(struct device *dev)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ACPI_FAILURE(wmi_meth=
od_enable(wblock, 0)))
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0dev_warn(dev, "failed to disable device\n");
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct class wmi_bus_class =3D {
> diff --git a/drivers/pnp/driver.c b/drivers/pnp/driver.c
> index c29d590c5e4f..cc6757dfa3f1 100644
> --- a/drivers/pnp/driver.c
> +++ b/drivers/pnp/driver.c
> @@ -123,7 +123,7 @@ static int pnp_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return error;
> =C2=A0}
> =C2=A0
> -static int pnp_device_remove(struct device *dev)
> +static void pnp_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pnp_dev *pnp_dev =
=3D to_pnp_dev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct pnp_driver *drv =
=3D pnp_dev->driver;
> @@ -139,7 +139,6 @@ static int pnp_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0pnp_disable_dev(pnp_dev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pnp_device_detach(pnp_dev=
);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void pnp_device_shutdown(struct device *dev)
> diff --git a/drivers/rapidio/rio-driver.c b/drivers/rapidio/rio-
> driver.c
> index 72874153972e..a72bb0a40fcf 100644
> --- a/drivers/rapidio/rio-driver.c
> +++ b/drivers/rapidio/rio-driver.c
> @@ -112,7 +112,7 @@ static int rio_device_probe(struct device *dev)
> =C2=A0 * driver, then run the driver remove() method.=C2=A0 Then update
> =C2=A0 * the reference count.
> =C2=A0 */
> -static int rio_device_remove(struct device *dev)
> +static void rio_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct rio_dev *rdev =3D =
to_rio_dev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct rio_driver *rdrv =
=3D rdev->driver;
> @@ -124,8 +124,6 @@ static int rio_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rio_dev_put(rdev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void rio_device_shutdown(struct device *dev)
> diff --git a/drivers/rpmsg/rpmsg_core.c b/drivers/rpmsg/rpmsg_core.c
> index c1404d3dae2c..7f6fac618ab2 100644
> --- a/drivers/rpmsg/rpmsg_core.c
> +++ b/drivers/rpmsg/rpmsg_core.c
> @@ -530,7 +530,7 @@ static int rpmsg_dev_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
> =C2=A0}
> =C2=A0
> -static int rpmsg_dev_remove(struct device *dev)
> +static void rpmsg_dev_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct rpmsg_device *rpde=
v =3D to_rpmsg_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct rpmsg_driver *rpdr=
v =3D to_rpmsg_driver(rpdev-
> >dev.driver);
> @@ -546,8 +546,6 @@ static int rpmsg_dev_remove(struct device *dev)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (rpdev->ept)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0rpmsg_destroy_ept(rpdev->ept);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type rpmsg_bus =3D {
> diff --git a/drivers/s390/cio/ccwgroup.c
> b/drivers/s390/cio/ccwgroup.c
> index a6aeab1ea0ae..382c5b5f8cd3 100644
> --- a/drivers/s390/cio/ccwgroup.c
> +++ b/drivers/s390/cio/ccwgroup.c
> @@ -439,15 +439,13 @@ module_exit(cleanup_ccwgroup);
> =C2=A0
> =C2=A0/************************** driver stuff
> ******************************/
> =C2=A0
> -static int ccwgroup_remove(struct device *dev)
> +static void ccwgroup_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ccwgroup_device *g=
dev =3D to_ccwgroupdev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ccwgroup_driver *g=
drv =3D to_ccwgroupdrv(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (gdrv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0gdrv->remove(gdev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void ccwgroup_shutdown(struct device *dev)
> diff --git a/drivers/s390/cio/css.c b/drivers/s390/cio/css.c
> index 092fd1ea5799..ebc321edba51 100644
> --- a/drivers/s390/cio/css.c
> +++ b/drivers/s390/cio/css.c
> @@ -1371,7 +1371,7 @@ static int css_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int css_remove(struct device *dev)
> +static void css_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct subchannel *sch;
> =C2=A0
> @@ -1379,8 +1379,6 @@ static int css_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (sch->driver->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0sch->driver->remove(sch);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sch->driver =3D NULL;
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void css_shutdown(struct device *dev)
> diff --git a/drivers/s390/cio/device.c b/drivers/s390/cio/device.c
> index cd5d2d4d8e46..adf33b653d87 100644
> --- a/drivers/s390/cio/device.c
> +++ b/drivers/s390/cio/device.c
> @@ -1741,7 +1741,7 @@ ccw_device_probe (struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> -static int ccw_device_remove(struct device *dev)
> +static void ccw_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ccw_device *cdev =
=3D to_ccwdev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ccw_driver *cdrv =
=3D cdev->drv;
> @@ -1775,8 +1775,6 @@ static int ccw_device_remove(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock_irq(cdev->ccw=
lock);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0io_subchannel_quiesce(sch=
);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0__disable_cmf(cdev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void ccw_device_shutdown(struct device *dev)
> diff --git a/drivers/s390/cio/scm.c b/drivers/s390/cio/scm.c
> index b31711307e5a..b6b4589c70bd 100644
> --- a/drivers/s390/cio/scm.c
> +++ b/drivers/s390/cio/scm.c
> @@ -28,15 +28,13 @@ static int scmdev_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return scmdrv->probe ? sc=
mdrv->probe(scmdev) : -ENODEV;
> =C2=A0}
> =C2=A0
> -static int scmdev_remove(struct device *dev)
> +static void scmdev_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct scm_device *scmdev=
 =3D to_scm_dev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct scm_driver *scmdrv=
 =3D to_scm_drv(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (scmdrv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0scmdrv->remove(scmdev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int scmdev_uevent(struct device *dev, struct kobj_uevent_env
> *env)
> diff --git a/drivers/s390/crypto/ap_bus.c
> b/drivers/s390/crypto/ap_bus.c
> index d2560186d771..8a0d37c0e2a5 100644
> --- a/drivers/s390/crypto/ap_bus.c
> +++ b/drivers/s390/crypto/ap_bus.c
> @@ -884,7 +884,7 @@ static int ap_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return rc;
> =C2=A0}
> =C2=A0
> -static int ap_device_remove(struct device *dev)
> +static void ap_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ap_device *ap_dev =
=3D to_ap_dev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ap_driver *ap_drv =
=3D ap_dev->drv;
> @@ -909,8 +909,6 @@ static int ap_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ap_dev->drv =3D NULL;
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0put_device(dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0struct ap_queue *ap_get_qdev(ap_qid_t qid)
> diff --git a/drivers/scsi/scsi_debug.c b/drivers/scsi/scsi_debug.c
> index 5b3a20a140f9..58f69366bdcc 100644
> --- a/drivers/scsi/scsi_debug.c
> +++ b/drivers/scsi/scsi_debug.c
> @@ -7674,7 +7674,7 @@ static int sdebug_driver_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return error;
> =C2=A0}
> =C2=A0
> -static int sdebug_driver_remove(struct device *dev)
> +static void sdebug_driver_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct sdebug_host_info *=
sdbg_host;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct sdebug_dev_info *s=
dbg_devinfo, *tmp;
> @@ -7691,7 +7691,6 @@ static int sdebug_driver_remove(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0scsi_host_put(sdbg_host->=
shost);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int pseudo_lld_bus_match(struct device *dev,
> diff --git a/drivers/siox/siox-core.c b/drivers/siox/siox-core.c
> index 1794ff0106bc..7c4f32d76966 100644
> --- a/drivers/siox/siox-core.c
> +++ b/drivers/siox/siox-core.c
> @@ -520,7 +520,7 @@ static int siox_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return sdriver->probe(sde=
vice);
> =C2=A0}
> =C2=A0
> -static int siox_remove(struct device *dev)
> +static void siox_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct siox_driver *sdriv=
er =3D
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0container_of(dev->driver, struct siox_driver,
> driver);
> @@ -528,8 +528,6 @@ static int siox_remove(struct device *dev)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (sdriver->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0sdriver->remove(sdevice);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void siox_shutdown(struct device *dev)
> diff --git a/drivers/slimbus/core.c b/drivers/slimbus/core.c
> index 1d2bc181da05..78480e332ab8 100644
> --- a/drivers/slimbus/core.c
> +++ b/drivers/slimbus/core.c
> @@ -81,7 +81,7 @@ static int slim_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int slim_device_remove(struct device *dev)
> +static void slim_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct slim_device *sbdev=
 =3D to_slim_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct slim_driver *sbdrv=
;
> @@ -91,8 +91,6 @@ static int slim_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0if (sbdrv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0sbd=
rv->remove(sbdev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int slim_device_uevent(struct device *dev, struct
> kobj_uevent_env *env)
> diff --git a/drivers/soc/qcom/apr.c b/drivers/soc/qcom/apr.c
> index 7abfc8c4fdc7..475a57b435b2 100644
> --- a/drivers/soc/qcom/apr.c
> +++ b/drivers/soc/qcom/apr.c
> @@ -217,7 +217,7 @@ static int apr_device_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return adrv->probe(adev);
> =C2=A0}
> =C2=A0
> -static int apr_device_remove(struct device *dev)
> +static void apr_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct apr_device *adev =
=3D to_apr_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct apr_driver *adrv;
> @@ -231,8 +231,6 @@ static int apr_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0idr_remove(&apr->svcs_idr, adev->svc_id);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock(&apr->svcs_lock);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int apr_uevent(struct device *dev, struct kobj_uevent_env
> *env)
> diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
> index c99181165321..ad2b558dc9cb 100644
> --- a/drivers/spi/spi.c
> +++ b/drivers/spi/spi.c
> @@ -405,7 +405,7 @@ static int spi_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int spi_remove(struct device *dev)
> +static void spi_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct spi_driver=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*sdrv =3D to_spi_driv=
er(dev-
> >driver);
> =C2=A0
> @@ -420,8 +420,6 @@ static int spi_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_pm_domain_detach(dev,=
 true);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void spi_shutdown(struct device *dev)
> diff --git a/drivers/spmi/spmi.c b/drivers/spmi/spmi.c
> index 51f5aeb65b3b..b37ead9e2fad 100644
> --- a/drivers/spmi/spmi.c
> +++ b/drivers/spmi/spmi.c
> @@ -345,7 +345,7 @@ static int spmi_drv_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return err;
> =C2=A0}
> =C2=A0
> -static int spmi_drv_remove(struct device *dev)
> +static void spmi_drv_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct spmi_driver =
*sdrv =3D to_spmi_driver(dev->driver);
> =C2=A0
> @@ -356,7 +356,6 @@ static int spmi_drv_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_disable(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_set_suspended(=
dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_put_noidle(dev=
);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void spmi_drv_shutdown(struct device *dev)
> diff --git a/drivers/ssb/main.c b/drivers/ssb/main.c
> index 3a29b5570f9f..8a93c83cb6f8 100644
> --- a/drivers/ssb/main.c
> +++ b/drivers/ssb/main.c
> @@ -283,7 +283,7 @@ static void ssb_device_shutdown(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0ssb_drv->shutdown(ssb_dev);
> =C2=A0}
> =C2=A0
> -static int ssb_device_remove(struct device *dev)
> +static void ssb_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ssb_device *ssb_de=
v =3D dev_to_ssb_dev(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ssb_driver *ssb_dr=
v =3D drv_to_ssb_drv(dev->driver);
> @@ -291,8 +291,6 @@ static int ssb_device_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ssb_drv && ssb_drv->r=
emove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0ssb_drv->remove(ssb_dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ssb_device_put(ssb_dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int ssb_device_probe(struct device *dev)
> diff --git a/drivers/staging/fieldbus/anybuss/host.c
> b/drivers/staging/fieldbus/anybuss/host.c
> index 0f730efe9a6d..8a75f6642c78 100644
> --- a/drivers/staging/fieldbus/anybuss/host.c
> +++ b/drivers/staging/fieldbus/anybuss/host.c
> @@ -1186,15 +1186,13 @@ static int anybus_bus_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return adrv->probe(adev);
> =C2=A0}
> =C2=A0
> -static int anybus_bus_remove(struct device *dev)
> +static void anybus_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct anybuss_client_dri=
ver *adrv =3D
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0to_anybuss_client_driver(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (adrv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0adrv->remove(to_anybuss_client(dev));
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type anybus_bus =3D {
> diff --git a/drivers/staging/greybus/gbphy.c
> b/drivers/staging/greybus/gbphy.c
> index 13d319860da5..5a5c17a4519b 100644
> --- a/drivers/staging/greybus/gbphy.c
> +++ b/drivers/staging/greybus/gbphy.c
> @@ -169,7 +169,7 @@ static int gbphy_dev_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int gbphy_dev_remove(struct device *dev)
> +static void gbphy_dev_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gbphy_driver *gbph=
y_drv =3D to_gbphy_driver(dev-
> >driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct gbphy_device *gbph=
y_dev =3D to_gbphy_dev(dev);
> @@ -180,8 +180,6 @@ static int gbphy_dev_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_set_suspended(=
dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_put_noidle(dev=
);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0pm_runtime_dont_use_autos=
uspend(dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type gbphy_bus_type =3D {
> diff --git a/drivers/target/loopback/tcm_loop.c
> b/drivers/target/loopback/tcm_loop.c
> index 6d0b0e67e79e..cbb2118fb35e 100644
> --- a/drivers/target/loopback/tcm_loop.c
> +++ b/drivers/target/loopback/tcm_loop.c
> @@ -81,7 +81,7 @@ static int tcm_loop_show_info(struct seq_file *m,
> struct Scsi_Host *host)
> =C2=A0}
> =C2=A0
> =C2=A0static int tcm_loop_driver_probe(struct device *);
> -static int tcm_loop_driver_remove(struct device *);
> +static void tcm_loop_driver_remove(struct device *);
> =C2=A0
> =C2=A0static int pseudo_lld_bus_match(struct device *dev,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct device_driver *dev_driv=
er)
> @@ -363,7 +363,7 @@ static int tcm_loop_driver_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> -static int tcm_loop_driver_remove(struct device *dev)
> +static void tcm_loop_driver_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct tcm_loop_hba *tl_h=
ba;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct Scsi_Host *sh;
> @@ -373,7 +373,6 @@ static int tcm_loop_driver_remove(struct device
> *dev)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0scsi_remove_host(sh);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0scsi_host_put(sh);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void tcm_loop_release_adapter(struct device *dev)
> diff --git a/drivers/thunderbolt/domain.c
> b/drivers/thunderbolt/domain.c
> index a062befcb3b2..7018d959f775 100644
> --- a/drivers/thunderbolt/domain.c
> +++ b/drivers/thunderbolt/domain.c
> @@ -86,7 +86,7 @@ static int tb_service_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return driver->probe(svc,=
 id);
> =C2=A0}
> =C2=A0
> -static int tb_service_remove(struct device *dev)
> +static void tb_service_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct tb_service *svc =
=3D tb_to_service(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct tb_service_driver =
*driver;
> @@ -94,8 +94,6 @@ static int tb_service_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0driver =3D container_of(d=
ev->driver, struct tb_service_driver,
> driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (driver->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0driver->remove(svc);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void tb_service_shutdown(struct device *dev)
> diff --git a/drivers/tty/serdev/core.c b/drivers/tty/serdev/core.c
> index 9cdfcfe07e87..92498961fd92 100644
> --- a/drivers/tty/serdev/core.c
> +++ b/drivers/tty/serdev/core.c
> @@ -421,15 +421,13 @@ static int serdev_drv_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int serdev_drv_remove(struct device *dev)
> +static void serdev_drv_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0const struct serdev_devic=
e_driver *sdrv =3D
> to_serdev_device_driver(dev->driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (sdrv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0sdrv->remove(to_serdev_device(dev));
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_pm_domain_detach(dev,=
 true);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type serdev_bus_type =3D {
> diff --git a/drivers/usb/common/ulpi.c b/drivers/usb/common/ulpi.c
> index 7e13b74e60e5..4169cf40a03b 100644
> --- a/drivers/usb/common/ulpi.c
> +++ b/drivers/usb/common/ulpi.c
> @@ -78,14 +78,12 @@ static int ulpi_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return drv->probe(to_ulpi=
_dev(dev));
> =C2=A0}
> =C2=A0
> -static int ulpi_remove(struct device *dev)
> +static void ulpi_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ulpi_driver *drv =
=3D to_ulpi_driver(dev->driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (drv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(to_ulpi_dev(dev));
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type ulpi_bus =3D {
> diff --git a/drivers/usb/serial/bus.c b/drivers/usb/serial/bus.c
> index 7133818a58b9..9e38142acd38 100644
> --- a/drivers/usb/serial/bus.c
> +++ b/drivers/usb/serial/bus.c
> @@ -74,7 +74,7 @@ static int usb_serial_device_probe(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return retval;
> =C2=A0}
> =C2=A0
> -static int usb_serial_device_remove(struct device *dev)
> +static void usb_serial_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct usb_serial_port *p=
ort =3D to_usb_serial_port(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct usb_serial_driver =
*driver;
> @@ -101,8 +101,6 @@ static int usb_serial_device_remove(struct device
> *dev)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!autopm_err)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0usb_autopm_put_interface(port->serial->interface);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static ssize_t new_id_store(struct device_driver *driver,
> diff --git a/drivers/usb/typec/bus.c b/drivers/usb/typec/bus.c
> index 7f3c9a8e2bf0..78e0e78954f2 100644
> --- a/drivers/usb/typec/bus.c
> +++ b/drivers/usb/typec/bus.c
> @@ -382,7 +382,7 @@ static int typec_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int typec_remove(struct device *dev)
> +static void typec_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct typec_altmode_driv=
er *drv =3D to_altmode_driver(dev-
> >driver);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct typec_altmode *ade=
v =3D to_typec_altmode(dev);
> @@ -400,8 +400,6 @@ static int typec_remove(struct device *dev)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0adev->desc =3D NULL;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0adev->ops =3D NULL;
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0struct bus_type typec_bus =3D {
> diff --git a/drivers/vdpa/vdpa.c b/drivers/vdpa/vdpa.c
> index bb3f1d1f0422..3fc4525fc05c 100644
> --- a/drivers/vdpa/vdpa.c
> +++ b/drivers/vdpa/vdpa.c
> @@ -34,15 +34,13 @@ static int vdpa_dev_probe(struct device *d)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int vdpa_dev_remove(struct device *d)
> +static void vdpa_dev_remove(struct device *d)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vdpa_device *vdev =
=3D dev_to_vdpa(d);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vdpa_driver *drv =
=3D drv_to_vdpa(vdev->dev.driver);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (drv && drv->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(vdev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type vdpa_bus =3D {
> diff --git a/drivers/vfio/mdev/mdev_driver.c
> b/drivers/vfio/mdev/mdev_driver.c
> index c368ec824e2b..e2cb1ff56f6c 100644
> --- a/drivers/vfio/mdev/mdev_driver.c
> +++ b/drivers/vfio/mdev/mdev_driver.c
> @@ -57,7 +57,7 @@ static int mdev_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
> =C2=A0}
> =C2=A0
> -static int mdev_remove(struct device *dev)
> +static void mdev_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mdev_driver *drv =
=3D
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0container_of(dev->driver, struct mdev_driver,
> driver);
> @@ -67,8 +67,6 @@ static int mdev_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(mdev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mdev_detach_iommu(mdev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static int mdev_match(struct device *dev, struct device_driver *drv=
)
> diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
> index 4b15c00c0a0a..2a6055c0d4d3 100644
> --- a/drivers/virtio/virtio.c
> +++ b/drivers/virtio/virtio.c
> @@ -278,7 +278,7 @@ static int virtio_dev_probe(struct device *_d)
> =C2=A0
> =C2=A0}
> =C2=A0
> -static int virtio_dev_remove(struct device *_d)
> +static void virtio_dev_remove(struct device *_d)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct virtio_device *dev=
 =3D dev_to_virtio(_d);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct virtio_driver *drv=
 =3D drv_to_virtio(dev->dev.driver);
> @@ -292,7 +292,6 @@ static int virtio_dev_remove(struct device *_d)
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Acknowledge the device=
's existence again. */
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0virtio_add_status(dev, VI=
RTIO_CONFIG_S_ACKNOWLEDGE);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static struct bus_type virtio_bus =3D {
> diff --git a/drivers/vme/vme.c b/drivers/vme/vme.c
> index 1b15afea28ee..8dba20186be3 100644
> --- a/drivers/vme/vme.c
> +++ b/drivers/vme/vme.c
> @@ -1990,7 +1990,7 @@ static int vme_bus_probe(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -ENODEV;
> =C2=A0}
> =C2=A0
> -static int vme_bus_remove(struct device *dev)
> +static void vme_bus_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vme_driver *driver=
;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct vme_dev *vdev =3D =
dev_to_vme_dev(dev);
> @@ -1998,8 +1998,6 @@ static int vme_bus_remove(struct device *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0driver =3D dev->platform_=
data;
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (driver->remove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0driver->remove(vdev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0struct bus_type vme_bus_type =3D {
> diff --git a/drivers/xen/xenbus/xenbus.h
> b/drivers/xen/xenbus/xenbus.h
> index 2a93b7c9c159..2754bdfadcb8 100644
> --- a/drivers/xen/xenbus/xenbus.h
> +++ b/drivers/xen/xenbus/xenbus.h
> @@ -106,7 +106,7 @@ void xs_request_exit(struct xb_req_data *req);
> =C2=A0
> =C2=A0int xenbus_match(struct device *_dev, struct device_driver *_drv);
> =C2=A0int xenbus_dev_probe(struct device *_dev);
> -int xenbus_dev_remove(struct device *_dev);
> +void xenbus_dev_remove(struct device *_dev);
> =C2=A0int xenbus_register_driver_common(struct xenbus_driver *drv,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct xen_bus_type *bu=
s,
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct module *owner,
> diff --git a/drivers/xen/xenbus/xenbus_probe.c
> b/drivers/xen/xenbus/xenbus_probe.c
> index 97f0d234482d..f4f52d574df9 100644
> --- a/drivers/xen/xenbus/xenbus_probe.c
> +++ b/drivers/xen/xenbus/xenbus_probe.c
> @@ -326,7 +326,7 @@ int xenbus_dev_probe(struct device *_dev)
> =C2=A0}
> =C2=A0EXPORT_SYMBOL_GPL(xenbus_dev_probe);
> =C2=A0
> -int xenbus_dev_remove(struct device *_dev)
> +void xenbus_dev_remove(struct device *_dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct xenbus_device *dev=
 =3D to_xenbus_device(_dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct xenbus_driver *drv=
 =3D to_xenbus_driver(_dev->driver);
> @@ -356,8 +356,6 @@ int xenbus_dev_remove(struct device *_dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!drv->allow_rebind ||
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 xenbus=
_read_driver_state(dev->nodename) =3D=3D
> XenbusStateClosing)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0xenbus_switch_state(dev, XenbusStateClosed);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0EXPORT_SYMBOL_GPL(xenbus_dev_remove);
> =C2=A0
> diff --git a/include/linux/device/bus.h b/include/linux/device/bus.h
> index 1ea5e1d1545b..062777a45a74 100644
> --- a/include/linux/device/bus.h
> +++ b/include/linux/device/bus.h
> @@ -91,7 +91,7 @@ struct bus_type {
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*uevent)(struct devi=
ce *dev, struct kobj_uevent_env
> *env);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*probe)(struct devic=
e *dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*sync_state)(struct=
 device *dev);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*remove)(struct device *d=
ev);
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*remove)(struct device *=
dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0void (*shutdown)(struct d=
evice *dev);
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int (*online)(struct devi=
ce *dev);
> diff --git a/sound/aoa/soundbus/core.c b/sound/aoa/soundbus/core.c
> index 002fb5bf220b..c9579d97fbab 100644
> --- a/sound/aoa/soundbus/core.c
> +++ b/sound/aoa/soundbus/core.c
> @@ -104,7 +104,7 @@ static int soundbus_uevent(struct device *dev,
> struct kobj_uevent_env *env)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return retval;
> =C2=A0}
> =C2=A0
> -static int soundbus_device_remove(struct device *dev)
> +static void soundbus_device_remove(struct device *dev)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct soundbus_dev * sou=
ndbus_dev =3D to_soundbus_device(dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct soundbus_driver * =
drv =3D to_soundbus_driver(dev-
> >driver);
> @@ -112,8 +112,6 @@ static int soundbus_device_remove(struct device
> *dev)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (dev->driver && drv->r=
emove)
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0drv->remove(soundbus_dev);
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0soundbus_dev_put(soundbus=
_dev);
> -
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
> =C2=A0}
> =C2=A0
> =C2=A0static void soundbus_device_shutdown(struct device *dev)

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/a020ead8a23b8f2fcd57e54d6fb56d5ce0753fde.camel%40linux.intel.com.

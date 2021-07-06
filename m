Return-Path: <linux-ntb+bncBDK6XSMT4ECRBZ7FSGDQMGQE3KCEYHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F4513BD9B1
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 17:12:40 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id e7-20020a0568302007b029047bf63db9fbsf11664000otp.0
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 08:12:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625584359; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ywe6u+adq/XG4+kpKJF6t5S776YDsM63LxObCBgnsHzmtMZuWgvFmKWO2/qmzCa1NI
         cPJwqJJ3JKBkYGrFoH1A9rBxCrCtPFcIFOZHZhgnQVH4P5IcNdyzs1keB0XOh4BQQNI/
         x7K6gKL86m574a69gAQB88lfhoW43z53MIiAUVLZfFC9qGH4eObQlW2dmkSTP3YeJkTS
         UilI41zNt8IP4Pm3iH3SDjGN1HeXVKD6HRC4PJGSNFQSnss43Zjq+vNI9zFllsqoilbD
         a6udCgV/0KtjU6SxoSX594EquiLnAroNyj/M4lLaECGl/47M6L+NJgwRxIHchYe36kd9
         kmEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:sender:dkim-signature;
        bh=nbsq7O56KRl1KVOgIMVfkyb0/wdvDrkVx5CyunKilgA=;
        b=IrUL7XOnrhVenQ/0YeW3I3Vmt0rknaObjuDRaexlgAJGmOZpFlyVybmFS2oGZkZfgT
         t1OxFJx+TyuXliqf2WSFo/i8f59g6gNasYKL+UfNT4yU5d9QCRIrJdIsKwiccI9Dga26
         5+bjfA9az5f/q8iuLn1RZvJDZPeND8bKj9/FZVDCANt2adTiUDd3Ckgx8yq2RMlwgW3h
         FCOSihWyYjEpp5p6kJwFY0I8lo2dcyLVCSv7sAAxv6TijpbIkGiD1yed3CislV1s3Im6
         DRgwSqZux0Ti/ya92PCd8GZSWMZZzCE9UEjyTV+nmUEHBjENA3W+onK7crGN+3BW+lZV
         tnnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of alexander.shishkin@linux.intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=alexander.shishkin@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nbsq7O56KRl1KVOgIMVfkyb0/wdvDrkVx5CyunKilgA=;
        b=DiwclI6If4GzUle5P8hcu5fSRdbYWrfkChYqkI021PrJxsu60LCbFKPoXTE2FpMgck
         PgA+jRgGNFrR031SgqIgOTjfUTGmqIA/6mGhK0ZQ/zQWn+WEtkKRtGoOBHuTLmbQzwZ3
         HNS9bxW+m7EdbNE1B5BnW4oU623vAq9sDfH/mPYEMFsV2n+4c0v/u9moE9g+g6EUyWI2
         iZDK1NbItgDGu5PZGal+jQ+4BkOSHIq4szEcWjRaGBH60F4AQMpVyuwEu1EJY5jhfo6L
         H7/wW1oD7xmvHfnGh3b0OI39lYdlvYJS2rX6+/6qm+aaz753XhpmbDnZRPfaN9YPRf77
         gIKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nbsq7O56KRl1KVOgIMVfkyb0/wdvDrkVx5CyunKilgA=;
        b=kTWFbNNNqfvpRiZqey3nAWoIq/XeioWRuxLJRj4xYboldzKwNqJqINiJMecgNlEML1
         G66vdqKeSuLsF/AO5ZsbTDWT1AKvtjOZj7g7cc9ZVnClb9aZ4YJBaUBCfehpe4Jt+J5L
         qDfARLJ6BWSCGvBHu+bUYqOqwcEMxcxrxfZz8Fz/cc+vrnpnQ7EyfrxBjVZPEnwn+bJW
         sOj6W91F0FsXKJ7/PDvTqmshC+4OJX1fPBL3opl7WIfBe+3pWbKcKTZsNDJ388N5Bw/+
         aTj0/CKa4SolkoFc9ewPVUd0BSMk+2+jAp6NiKY4XJXuHcG70wO7zZeX80pWRDTYItea
         oquA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5328PrLLzjeAx+nCqOJlRV5yUoaSvrt1Jd3S7Wlt3CY8d1iaogWb
	rHsxeBAfaMzzRwuhBcJaqso=
X-Google-Smtp-Source: ABdhPJyKj3MIdxQWFt6fxsl5XSxqnc5W5oD4mH3ZwMvKB2yMFE1t0NC7nUPK/KBHY0N/jHCjOhAF/w==
X-Received: by 2002:a05:6830:225b:: with SMTP id t27mr14985149otd.11.1625584359472;
        Tue, 06 Jul 2021 08:12:39 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1f24:: with SMTP id e4ls7850335oth.4.gmail; Tue, 06
 Jul 2021 08:12:39 -0700 (PDT)
X-Received: by 2002:a9d:12e3:: with SMTP id g90mr15347559otg.300.1625584359153;
        Tue, 06 Jul 2021 08:12:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625584359; cv=none;
        d=google.com; s=arc-20160816;
        b=N43y8g/lS8ECLOp8ycpfm57CPeoEqFvOueotohDXpzvtyoqqYCkduivD5c3hhFhzsV
         1R9A6rTqp5iZUL8FWtshBqTLMfQpxn2WkFM8VjP6TedmirgiMTJNi94+58St1pEXpGjK
         JBTVXj/rp75Lt3JGqKwlLe0/zgX8yttFjSNL4dyeMQi/unnGO1n1hKT3MHNt3fuKB3zg
         kEd0nXczZUR+u3aPC/yO3kX699tGORZHgo9ku+18fAIUF6Xx3QMxXFP1zDPuSPxbip7w
         1nZdEN1WY7gGEJV9q5ILIaIQ4cwtnGUPiF/mGcYVb/0rdeqAP4H9PbJTMH2frtoaKA2J
         xWKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from;
        bh=7Vu4fdtr8D477oo71o6TApi8A9aaGCdBixH9S9NJoOo=;
        b=Gi3AMasUrBIBLm5DtEl43B3+n4OqEMn5Y39w96a0gXUHbw06uMqQFF84BRQk2+jF3S
         08bTVIu3y3Uef9jAN3Y0OucZyNp8mMwy4swmoi7Muh3D+UKXk563Hmt2W4yWjQJl7vRe
         tzrWkEg0IphFFoVzBLbWlSsiWy+UW1h2l5Pa/r2VYd7E1dblOmPaGiay8BOObIh4QG+C
         6MGuZnrvPOcsBdMgd20WxSfbX8k2zALUcQv86Ng/hAfEv4kslo9kNHSO0qaPimXZpWCw
         /Yt0pYsmIMXzAM3xcgbM8UaitflPK4dbpaifu2U7y4dtONDYLU0T6WXrj+cYGrGWgH0d
         Bu3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of alexander.shishkin@linux.intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=alexander.shishkin@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id e23si1566828oti.5.2021.07.06.08.12.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 08:12:37 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of alexander.shishkin@linux.intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
X-IronPort-AV: E=McAfee;i="6200,9189,10037"; a="208952790"
X-IronPort-AV: E=Sophos;i="5.83,328,1616482800"; 
   d="scan'208";a="208952790"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2021 08:12:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,328,1616482800"; 
   d="scan'208";a="427618041"
Received: from um.fi.intel.com (HELO um) ([10.237.72.62])
  by orsmga002.jf.intel.com with ESMTP; 06 Jul 2021 08:12:00 -0700
From: Alexander Shishkin <alexander.shishkin@linux.intel.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, Greg
 Kroah-Hartman
 <gregkh@linuxfoundation.org>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org, Russell King
 <linux@armlinux.org.uk>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>, Helge
 Deller <deller@gmx.de>, Geoff Levand <geoff@infradead.org>, Michael
 Ellerman <mpe@ellerman.id.au>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, "Rafael J.
 Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, William
 Breathitt Gray <vilhelm.gray@gmail.com>, =?utf-8?Q?Rafa=C5=82_Mi=C5=82eck?=
 =?utf-8?Q?i?= <zajec5@gmail.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Alison Schofield
 <alison.schofield@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, Ira
 Weiny <ira.weiny@intel.com>, Ben Widawsky <ben.widawsky@intel.com>, Dan
 Williams <dan.j.williams@intel.com>, Dave Jiang <dave.jiang@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi
 <cristian.marussi@arm.com>, Wu Hao <hao.wu@intel.com>, Tom Rix
 <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>, Jiri Kosina
 <jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, "K. Y.
 Srinivasan" <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Dexuan Cui <decui@microsoft.com>, Wolfram Sang <wsa@kernel.org>, Alexandre
 Belloni <alexandre.belloni@bootlin.com>, Dmitry Torokhov
 <dmitry.torokhov@gmail.com>, Samuel Iglesias Gonsalvez
 <siglesias@igalia.com>, Jens Taprogge <jens.taprogge@taprogge.org>,
 Johannes Thumshirn <morbidrsa@gmail.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov
 <oakad@yahoo.com>, Ulf Hansson <ulf.hansson@linaro.org>, Lee Jones
 <lee.jones@linaro.org>, Tomas Winkler <tomas.winkler@intel.com>, Arnd
 Bergmann <arnd@arndb.de>, Jakub Kicinski <kuba@kernel.org>, "David S.
 Miller" <davem@davemloft.net>, Jon Mason <jdmason@kudzu.us>, Allen Hubbe
 <allenbh@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo
 Pieralisi <lorenzo.pieralisi@arm.com>, Krzysztof =?utf-8?Q?Wilczy=C5=84sk?=
 =?utf-8?Q?i?=
 <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Dominik Brodowski
 <linux@dominikbrodowski.net>, Maximilian Luz <luzmaximilian@gmail.com>,
 Hans de Goede <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>,
 Matt Porter <mporter@kernel.crashing.org>, Alexandre Bounine
 <alex.bou9@gmail.com>, Ohad Ben-Cohen <ohad@wizery.com>, Bjorn Andersson
 <bjorn.andersson@linaro.org>, Mathieu Poirier
 <mathieu.poirier@linaro.org>, "Martin K. Petersen"
 <martin.petersen@oracle.com>, Thorsten Scherer <t.scherer@eckelmann.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Andy Gross
 <agross@kernel.org>, Mark Brown <broonie@kernel.org>, Stephen Boyd
 <sboyd@kernel.org>, Michael Buesch <m@bues.ch>, Sven Van Asbroeck
 <TheSven73@gmail.com>, Johan Hovold <johan@kernel.org>, Alex Elder
 <elder@kernel.org>, Andreas Noever <andreas.noever@gmail.com>, Michael
 Jamet <michael.jamet@intel.com>, Mika Westerberg
 <mika.westerberg@linux.intel.com>, Yehezkel Bernat
 <YehezkelShB@gmail.com>, Rob Herring <robh@kernel.org>, Jiri Slaby
 <jirislaby@kernel.org>, Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>, Alex Williamson
 <alex.williamson@redhat.com>, Cornelia Huck <cohuck@redhat.com>, Martyn
 Welch <martyn@welchs.me.uk>, Manohar Vanga <manohar.vanga@gmail.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross
 <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, Johannes
 Berg <johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>, Tyrel
 Datwyler <tyreld@linux.ibm.com>, Vladimir Zapolskiy <vz@mleia.com>, Samuel
 Holland <samuel@sholland.org>, Qinglang Miao <miaoqinglang@huawei.com>,
 Alexey Kardashevskiy <aik@ozlabs.ru>, Kai-Heng Feng
 <kai.heng.feng@canonical.com>, Joey Pabalan <jpabalanb@gmail.com>, Pali
 =?utf-8?Q?Roh=C3=A1r?= <pali@kernel.org>, Adrian Hunter
 <adrian.hunter@intel.com>, Frank Li
 <lznuaa@gmail.com>, Mike Christie <michael.christie@oracle.com>, Bodo
 Stroesser <bostroesser@gmail.com>, Hannes Reinecke <hare@suse.de>, David
 Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>, Julien
 Grall <jgrall@amazon.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-parisc@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-acpi@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-cxl@vger.kernel.org, nvdimm@lists.linux.dev,
 dmaengine@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-fpga@vger.kernel.org, linux-input@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-i3c@lists.infradead.org, industrypack-devel@lists.sourceforge.net,
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
 netdev@vger.kernel.org, linux-ntb@googlegroups.com,
 linux-pci@vger.kernel.org, platform-driver-x86@vger.kernel.org,
 linux-remoteproc@vger.kernel.org, linux-scsi@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-staging@lists.linux.dev,
 greybus-dev@lists.linaro.org, target-devel@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-serial@vger.kernel.org,
 virtualization@lists.linux-foundation.org, kvm@vger.kernel.org,
 xen-devel@lists.xenproject.org, alexander.shishkin@linux.intel.com
Subject: Re: [PATCH] bus: Make remove callback return void
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
Date: Tue, 06 Jul 2021 18:11:59 +0300
Message-ID: <87eecbjx34.fsf@ashishki-desk.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: alexander.shishkin@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of alexander.shishkin@linux.intel.com
 designates 192.55.52.115 as permitted sender) smtp.mailfrom=alexander.shishkin@linux.intel.com;
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

Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de> writes:

> The driver core ignores the return value of this callback because there
> is only little it can do when a device disappears.
>
> This is the final bit of a long lasting cleanup quest where several
> buses were converted to also return void from their remove callback.
> Additionally some resource leaks were fixed that were caused by drivers
> returning an error code in the expectation that the driver won't go
> away.
>
> With struct bus_type::remove returning void it's prevented that newly
> implemented buses return an ignored error code and so don't anticipate
> wrong expectations for driver authors.
>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

FWIW, the intel_th bit is

Acked-by: Alexander Shishkin <alexander.shishkin@linux.intel.com>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/87eecbjx34.fsf%40ashishki-desk.ger.corp.intel.com.

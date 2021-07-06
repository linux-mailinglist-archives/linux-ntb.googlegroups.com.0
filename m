Return-Path: <linux-ntb+bncBCG4XTWK4QLBBKPOSCDQMGQEQTD3YMQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id E806D3BCB18
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 12:57:46 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id g9-20020a1709029349b0290128bcba6be7sf7159970plp.18
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 03:57:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625569065; cv=pass;
        d=google.com; s=arc-20160816;
        b=r1T4GpK/zGBGJx9iJe6z6GyhG0jkXj2k0CYZ4Eb4ZSm+2rsKBjq1hjxbwNpKbKU99R
         QkR/PiP57q34dRnHKCTi9BuDmHd+kMakZsraDoEcnYYKSockOFUr0VtdjjGT50JvRg9t
         yc0rv9VrhbfoBScoAhwQZ3QeNMuMhx7Vevnx0mt+/Zy5lS+1qD4BnWBcKJolYqCoZnas
         WICEM7Sw+fmLEPCsghpfMex+Lcz+ss8xnqVXt2XTcEg9ppXj2jzTKeubWZVr142Kd6IP
         Y8sgicmNi0QHJev5PY8WgcNFbtt3REwVThdMhwDKk4xSi+P8/8jIHHjcDk9wBA4h+MnX
         PNMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:user-agent:references:organization
         :in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=j4AFbl157zF4qTk6a42CXaP4zUqkH4gU+PmXL8xbcbM=;
        b=tasE6Nnd6u2NFFNnEDQlMPFmHvgd8X/wDW3OzBRnSNbFOzpVZKKwQYBKW3dZPyO6Z7
         QR5e41Gm3mzRcPf5OvRn56NFSIOhqdFCW2s1ZL78wmk27HQqrKq/cUA3izGcTRD3d1qN
         mFmKS9hq5mMPkMmOPiaznAsttVRIsgUdddhrdk+D+Mi9bS0QPM5JOqXRtKAVRkq9YSe6
         5R3+V6RkZgYXez8rTYmXkI8P0pPm5VGbdirovmUec6nK2/fsKZXA1wwmGzmYWgkk72Tp
         4VwJZ6Bk3ELFVXA2jigYLO2qRWSqwZg/VPxkFOWxQzlepmJ18ahjeMvmYTyVZsuSQS6Y
         hwqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ddpffMRC;
       spf=pass (google.com: domain of cohuck@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references
         :user-agent:date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j4AFbl157zF4qTk6a42CXaP4zUqkH4gU+PmXL8xbcbM=;
        b=Na38HsUlPpA6XsV6fmLUo614q8Od4IczT+4kO5cuQl3zw0Af8eq2I7e81nYjS4/nRF
         qvCKJO9Tsf86KdAOpB4BAj7MfrRhp8FgB2Z+zSs4L65h1dl0p+2xFQJmINaBra3jUWLt
         0k/qP7oMKBfjc6+P4moo+T5R72IhsYPgUDiq11QFIVtUkn3QjzFrcbRG196tsFJO/dfP
         /3TzWCMC9LYvIqmC5ayC54DqEipnbJA0EiuIxTwTN7cXn34tcVpgDQaZ8a8kqxkus0q2
         1xQB17opWvsCSxI9fzKUdJDhMBntM7wCn/eUb+WFixqws7/4iJI39SnvowsLrUV+msQr
         xOzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:user-agent:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=j4AFbl157zF4qTk6a42CXaP4zUqkH4gU+PmXL8xbcbM=;
        b=qs5qqFs0Q4s4hNg+NgEwZNG/H8YBvtJ3TCWF1jXgIZRD3iTR1lvwgOj+G93l9uR+5R
         i9YfnK3wmcO1yHnC7BcBO1Dv/hvzD6Xu1dRdk674zucqLz+54Furit85+0GzsYd0rWEo
         otSommPgdHFaGf5iC1sf5i6M33iBHUuUgHxDu6w526Jzfvu063NRkDfzuNJPzF+OKany
         2QrHBh3HCKoNShGtYF4ujg6UnVdtgPeSakJKyzcrwwdH7kAzOwn74PMIXx8vxWsJDByH
         QRkYiigLWBR+AhZcg20fT0KjMbYG90es/cuTUWHOyd5aDViu54F8kbA1EEoHOq7LdkUO
         ud1A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533Uh3w/zC6YrgwSxRe6yKrB2inUw6jqO59ey1BZlNurAjTQdKQF
	sA82LoX7PgeyJbD6RT080iM=
X-Google-Smtp-Source: ABdhPJzF2yzhlEYvui/Vb3T8uU4PtUj0YG6eg1JzyI3bh28jruNRYQhMgjsErdplvzJpuArJNjTqMg==
X-Received: by 2002:a63:1656:: with SMTP id 22mr20507767pgw.86.1625569065585;
        Tue, 06 Jul 2021 03:57:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:2302:: with SMTP id h2ls3693515pfh.6.gmail; Tue, 06
 Jul 2021 03:57:45 -0700 (PDT)
X-Received: by 2002:a63:d5e:: with SMTP id 30mr20650427pgn.38.1625569064955;
        Tue, 06 Jul 2021 03:57:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625569064; cv=none;
        d=google.com; s=arc-20160816;
        b=L/gLN5oI6+kFjwEeRtG3S1CTSLRsQ2LyM1kO1ljVX2i32WhZQvvql43rxkf5sRq4wJ
         NXInq19FOwPSxC60YnvKXHfJ3TwOwTIYfe2T43pIlkr5wHMohLjcmN89HOls+awDzMjU
         0CftkS6u0Kwx7NVK9/fwjTCIMNbqpC7Bfvwwjs8+EfGsayEjRQLPM5qZ39MjP5eTCUgz
         zXt3jVpMyITWoLy3AeENsuK573gtlwcIFFHoZu865QpGZz4XVPZkMhCUaS35KLqKNR7R
         fto+jNhPsS/TswQA9DMsXAw7Yle1bSJTG1MnEdG+yE+FrVgVp4rFGyWBtnCmho7tXwUb
         i5GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:organization:in-reply-to:subject:cc:to:from
         :dkim-signature;
        bh=QUyu+xoe1E6BsQbSDzUeyLIXRBJKwC/I/FCZr8qcsPA=;
        b=sTEFVCP+59YA8AonOj6Vqkaw+StT4q4gBh4Yrgc37Cnm3HptP6MrinRaf5soQmf8My
         8B7v4PJxGSpPEV0NtNbWel3KRkNbuA2FyOCItCvFy+63P+nGuYEgOfEbmBBFQosvQdgP
         IxdvT3kwGlOffSEUg2eYTIxna3yIYdAM28n6HjT6gZtBLXioaNWCOoKYZQQOUGR6ORe6
         b9THovwUs6Cfj2smgM9uz5wSXb1sJH93H8a0ocf0ev/Nc0A0ecXhbocJYnoCBvT1Azs7
         4j+EWK8hutYyRCHx/Kw/MmetHfRiNDU6BB42bokBLdSQmtibP7MBHn4wFP6IvRxlU2yD
         SoRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ddpffMRC;
       spf=pass (google.com: domain of cohuck@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id f12si143029pjh.1.2021.07.06.03.57.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 03:57:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of cohuck@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-124-IdDyg1WcNQy2D-iZerGLfA-1; Tue, 06 Jul 2021 06:57:42 -0400
X-MC-Unique: IdDyg1WcNQy2D-iZerGLfA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 47CA0343CD;
	Tue,  6 Jul 2021 10:57:36 +0000 (UTC)
Received: from localhost (ovpn-113-13.ams2.redhat.com [10.36.113.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 95A0A60CC6;
	Tue,  6 Jul 2021 10:57:19 +0000 (UTC)
From: Cornelia Huck <cohuck@redhat.com>
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
 Dexuan Cui <decui@microsoft.com>, Alexander Shishkin
 <alexander.shishkin@linux.intel.com>, Wolfram Sang <wsa@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, Dmitry Torokhov
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
 <alex.williamson@redhat.com>, Martyn Welch <martyn@welchs.me.uk>, Manohar
 Vanga <manohar.vanga@gmail.com>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, Stefano
 Stabellini <sstabellini@kernel.org>, Johannes Berg
 <johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>, Takashi
 Iwai <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>, Tyrel Datwyler
 <tyreld@linux.ibm.com>, Vladimir Zapolskiy <vz@mleia.com>, Samuel Holland
 <samuel@sholland.org>, Qinglang Miao <miaoqinglang@huawei.com>, Alexey
 Kardashevskiy <aik@ozlabs.ru>, Kai-Heng Feng
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
 xen-devel@lists.xenproject.org
Subject: Re: [PATCH] bus: Make remove callback return void
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
Organization: Red Hat GmbH
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
User-Agent: Notmuch/0.32.1 (https://notmuchmail.org)
Date: Tue, 06 Jul 2021 12:57:17 +0200
Message-ID: <87pmvvhfqq.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cohuck@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ddpffMRC;
       spf=pass (google.com: domain of cohuck@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Tue, Jul 06 2021, Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>=
 wrote:

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

Yay!

>
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
> Hello,
>
> this patch depends on "PCI: endpoint: Make struct pci_epf_driver::remove
> return void" that is not yet applied, see
> https://lore.kernel.org/r/20210223090757.57604-1-u.kleine-koenig@pengutro=
nix.de.
>
> I tested it using allmodconfig on amd64 and arm, but I wouldn't be
> surprised if I still missed to convert a driver. So it would be great to
> get this into next early after the merge window closes.

I'm afraid you missed the s390-specific busses in drivers/s390/cio/
(css/ccw/ccwgroup).

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/87pmvvhfqq.fsf%40redhat.com.

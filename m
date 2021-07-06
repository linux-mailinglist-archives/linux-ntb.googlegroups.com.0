Return-Path: <linux-ntb+bncBCG4XTWK4QLBBR4ASKDQMGQEJNOKOZI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C13A3BDAF6
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 18:09:44 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id v13-20020a0568301bcdb02904a7501488c8sf2939514ota.4
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 09:09:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625587783; cv=pass;
        d=google.com; s=arc-20160816;
        b=psVlZhoa16vNT8CNjHL1m4fWDKycF3nB5MVGvGOh84awjFgyioFLIm3PTsVQU26JXJ
         AojfIR7g4dtGO1PJq4plUSLktTVvlN//ZzVwK6+pGHYKT7QHaZTERnAiq049Mixl/kuz
         G9qVFABIqxSSdEUdRAZ7+ikG4RDycoXlc+eGBwueLig4QiA9726o5Q0y43s518WALzlE
         qPjj8ubOqYwrDvuFaVkE+C4z8W/TaFIgXV78JTBM89vTgR1/dH84MYxNv3qseTVtloEU
         zLUg19PkgbnwaEy2wh0YKyV1aF2HzyG67W3VK4y60AIPvGSNGVutRT6tw/9CgV4Wiqdy
         8cng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:user-agent:references:organization
         :in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=M06hJ/ZpuBBpwkM2CS2hhCY9Vfa7Dek0eiYGz0GbRjM=;
        b=qs1q0TCry6k3foOq8/DaRq7kAYxKJxXPvSPCKTI6/1sEkJym3KuVfHvnlG7wYuLOlS
         mHoVZVZIpY9+DA0jkhWNyzq0kgDpJxeQ3mkjpbf+hBeTOsqlc6PW6NezPZRj/4rx/dh6
         3BjRgDuAEpadr5R25QHyBHJy3KIeILfT5OgbMFiGkQBsWWtrLCPDLssXTsvWboUYZqHw
         f55xBRYYrdSNsmt0krnL2OABDHKKMaG9AwyyRugdS9x3ClY2CsxeKTzGB+B4O3mvrKtT
         9K/wKonLc7jLWxgBWu/QYPg4fkp3Xr/ngXdq1OhM/rGhP6fCTpi5fSsyJKAMh8T9SKzq
         g9Aw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LAZiGrj7;
       spf=pass (google.com: domain of cohuck@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:organization:references
         :user-agent:date:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M06hJ/ZpuBBpwkM2CS2hhCY9Vfa7Dek0eiYGz0GbRjM=;
        b=mzCwm4c1mDOWPOPvXZaTBB6Ny/CHqHu+buxLz1IpqSt7Gq4Elzf/3a18zP4BAaJpr2
         p7mOcfLAwpAN7otnHA5IKgVRXrzrC71DQrtqK2bS5zqnis010Iebw6ZuV0+CnFUdXKIC
         1t4l9Gf2quaNGUsSwq1U+4PZ0qGGpVJpLTATKc2idfyLirUdi+JMnUCyXaWW2U7M4W5l
         BcKqVItvJeN7gRjpaz8NcI8i5xhgHHGevVMjoLOlAJSmOPdEOuZJjXG5QWRYvD3tkQxT
         q3s0DzMKSFxMiSquJ/2HiaxXwSW8ngx8B92qPf+7HhdECJY0B/+Bl/4zZwq88asocOOd
         6u0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to
         :organization:references:user-agent:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=M06hJ/ZpuBBpwkM2CS2hhCY9Vfa7Dek0eiYGz0GbRjM=;
        b=UYD/d4Hv8r8exiTpmCUAYwv27XoWsNFRBEQJeIpL2n1wXzN7B2VAlyPO4S0a4IDysh
         kpfjjvz0aUX4WLkTNzX27Nqt7M3h6Mno+bCKS8pghcgJ+5S+KB2wgdquws/TAUUtju7H
         U7snacrjKfwRJp5+ETUlnl2jz0F7BDQwKFUH6zY2jato3n3ALKhQ9PYwvHXsKGPUVhvL
         sLKA1smAOaPI6xNKjBDTHoHjsC4Qitdy6VpCjoZA4RLuseY2Fi+vMIFt90j3z6Kv42ae
         XJ/+4Iyk+rF4zzzQvkinH8zelMexZjLc5j9Oj8JlM0VTD0AGA1fsqpBF/xLULMq41uVL
         S80Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531oXoVTKLWx6YR75SrbQ6/iFW5sO4FGDKMb6EVBuvm77woVBIlb
	hH/RtEdkNeWP9hpImYIa0v4=
X-Google-Smtp-Source: ABdhPJwyxh7RzXBKxqCvyg3GgfQuBs+aY7OKf6kondVSEAqnrn9gidFdX8snGxhl8Ye2O6RX845K7A==
X-Received: by 2002:aca:5e04:: with SMTP id s4mr15001008oib.133.1625587783509;
        Tue, 06 Jul 2021 09:09:43 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:c7d2:: with SMTP id x201ls4212243oif.2.gmail; Tue, 06
 Jul 2021 09:09:43 -0700 (PDT)
X-Received: by 2002:aca:d9d7:: with SMTP id q206mr8863486oig.93.1625587782917;
        Tue, 06 Jul 2021 09:09:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625587782; cv=none;
        d=google.com; s=arc-20160816;
        b=rT2J2qjgaib5qlmx8p46OUGn7BO0dKuMLPoe1YLSGXuHGWLGOobHmlbRL9yLOkdM8R
         YHhyUErgUmrRp0Yijq878+wsc2FFXBBOgLamTNCmNsoJ1XlqhrIkC8gP/bnS1s6ulOt0
         bcVWVvS9uHzl2oJYcRqwGWaXEIZowWFxD49fkS8+2Tsw9Tmb9wVmpTjaKTtru7YVS6YS
         L/1LrBXlvye5fm5WkigHlbootoHQaVzsSFRP0X44OLor1XVxIESSsMQJ2rkRNge26WG3
         t9hjzF4s6zn3R91fEJ9EBOO4SiAGfK62O4yPZ3lSa7/tEFJvkSaVV5T3uj87L2NNvOdc
         6ZmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:user-agent
         :references:organization:in-reply-to:subject:cc:to:from
         :dkim-signature;
        bh=5risqcJR3SRZugYRxSjL/FvvM4+olXr1vxcAoe7tQ/0=;
        b=xnAkJYkDYDoQhMYIjCwC+ZyCS7q85YeH4R+NiDCqoKTD3teXkW+XpPKh/rgIApkyzI
         Kq07v3N+jTYrrXry6Yb7uuG4g9Y5yPB3pC4b8a2MwmhpFhPbNf8l+Yw8GHxcTkOvOhIR
         rbvNsDjc9ZI35gVTVbFwioMShapJt9IHbbiWuMUvhSxj73dhwH4p6JywVtv5QUSt4jjr
         t1foJAg8HE0Z41/iiCSyIwqV+JiE/MxGymjzH0lJtzzThi8wZjuud/ICsLott7BpXo6H
         PBCJCTyn4YaBLFzZvfLFRrmJvI6IPwbF6KeE9aCGrtVFSbvEhQTr2yF6LjatXaEnq/as
         0ffA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=LAZiGrj7;
       spf=pass (google.com: domain of cohuck@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id e23si1590285oti.5.2021.07.06.09.09.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 09:09:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of cohuck@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-495-Z_TYrHlGMMa460UUBPGP_A-1; Tue, 06 Jul 2021 12:09:41 -0400
X-MC-Unique: Z_TYrHlGMMa460UUBPGP_A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 96147800C78;
	Tue,  6 Jul 2021 16:09:34 +0000 (UTC)
Received: from localhost (ovpn-113-13.ams2.redhat.com [10.36.113.13])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A281B16D28;
	Tue,  6 Jul 2021 16:09:18 +0000 (UTC)
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
 xen-devel@lists.xenproject.org, Russell King <rmk+kernel@armlinux.org.uk>,
 Johannes Thumshirn <jth@kernel.org>
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
Organization: Red Hat GmbH
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
User-Agent: Notmuch/0.32.1 (https://notmuchmail.org)
Date: Tue, 06 Jul 2021 18:09:17 +0200
Message-ID: <87r1gbfmqa.fsf@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cohuck@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=LAZiGrj7;
       spf=pass (google.com: domain of cohuck@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=cohuck@redhat.com;
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
>
> Acked-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk> (For ARM, Am=
ba and related parts)
> Acked-by: Mark Brown <broonie@kernel.org>
> Acked-by: Chen-Yu Tsai <wens@csie.org> (for drivers/bus/sunxi-rsb.c)
> Acked-by: Pali Roh=C3=A1r <pali@kernel.org>
> Acked-by: Mauro Carvalho Chehab <mchehab@kernel.org> (for drivers/media)
> Acked-by: Hans de Goede <hdegoede@redhat.com> (For drivers/platform)
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Acked-By: Vinod Koul <vkoul@kernel.org>
> Acked-by: Juergen Gross <jgross@suse.com> (For Xen)
> Acked-by: Lee Jones <lee.jones@linaro.org> (For drivers/mfd)
> Acked-by: Johannes Thumshirn <jth@kernel.org> (For drivers/mcb)
> Acked-by: Johan Hovold <johan@kernel.org>
> Acked-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org> (For drive=
rs/slimbus)
> Acked-by: Kirti Wankhede <kwankhede@nvidia.com> (For drivers/vfio)
> Acked-by: Maximilian Luz <luzmaximilian@gmail.com>
> Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com> (For ulpi and=
 typec)
> Acked-by: Samuel Iglesias Gons=C3=A1lvez <siglesias@igalia.com> (For ipac=
k)
> Reviewed-by: Tom Rix <trix@redhat.com> (For fpga)
> Acked-by: Geoff Levand <geoff@infradead.org> (For ps3)
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>
> ---
>
>  drivers/s390/cio/ccwgroup.c               | 4 +---
>  drivers/s390/cio/css.c                    | 4 +---
>  drivers/s390/cio/device.c                 | 4 +---
>  drivers/s390/cio/scm.c                    | 4 +---
>  drivers/s390/crypto/ap_bus.c              | 4 +---
>  drivers/vfio/mdev/mdev_driver.c           | 4 +---

For drivers/s390 and drivers/vfio:

Reviewed-by: Cornelia Huck <cohuck@redhat.com>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/87r1gbfmqa.fsf%40redhat.com.

Return-Path: <linux-ntb+bncBDZYPUPHYEJBBLGMSKDQMGQEYUCEISI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 025583BDD89
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 20:51:26 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id k63-20020a37a1420000b02903b4fb67f606sf6834949qke.10
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 11:51:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625597484; cv=pass;
        d=google.com; s=arc-20160816;
        b=FBJwpOfYTbhLCho8BXU1U9RgJqP7Gx5c0X20QeoVANEo1S0O+FdZ98+UMFzD6SwiDg
         wTlYf/SHIB0/dKitWBVBOXAL5fiQ7vx5LVb42fDN6/eBGM4UaQzDajAKgrXnzUJi0k55
         YmyeSOqeJRT1be03EKOv0IquL7/8cNjHomsD3KG2N3NO52W0qOvaZAKa+krbsYukgAt0
         eArX0vAESGscUnrVtJK58Hqe4P5OCuvCcqOX6PrR8JbKAUhyBf7giMQLiEcahracwaUY
         43XNcbb0+3h+Z3k/yERIp0WcDmq0IasgT28Htv0g88zS6Rci7H0R2OeIZbvlVsALSqDl
         S6Pw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=37CtOHLWi0Z/0jNSLbl+1/I6C6WLct6lUtHDVbMr8QI=;
        b=yKyt4M00dNTwaq88BXLpZzK59e7MAqkN4AJV/Xx16oiPCalzdIKZXqKsgJ829s+WFN
         EOUXcr2UklkfnRNyjOuTbaYWwvZCdQoo0SeLYDdELsxyI4bObWLzUw1CD93hHRJdBlkW
         Xnyij4a8Jemjys0Nzw0etboiQ4LSyTMd4nmRqAzHo5IOTRP5T5BgGdbm6v2U9EQhEVAd
         11j1YCB3gW/JdYYXwaDpwVXWF7nmNIRvvEDit2Z3tNybQJqjoymxr3qQXmS3ImLHjSKd
         tqO2XYPiGsdg6tQZZ37QNcRv0ydKR0i0d2xWuwnX2ux35t4v2/+KzBOQdqZXm16d7hio
         7oMQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=NCdUcCEY;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=37CtOHLWi0Z/0jNSLbl+1/I6C6WLct6lUtHDVbMr8QI=;
        b=YlN7xQFq6Qg2zo6nk24KZjScvgaIBwm+RUdNbq8CSbOOAfzo6DjfIzEUTf45dDErjd
         lV0lTVtoB1jWVuqvPpLpdLYq3X9C7HNwTd+MkwSy7/5sTqOOQ7N2esohQ3vQdPmMvtwj
         f26kW20q+IYzI5BbYxm9vfbxV990193rFs/LfjFspwH5g3Ke5Y6X1f9N6N9ka2of3TQH
         zKyVVJzJQYUYkpoiO/RLO52/JulKPbgSItrbySxPJ8c135sKBPDtwTC/sKYvxbJre9U/
         +2s2hqmck6JPxP0jRRa7p5jOE6/hYU6uri6/xJ/G6WxYM4a9CA8YcyHDfqtwtY2dtkmd
         +y5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=37CtOHLWi0Z/0jNSLbl+1/I6C6WLct6lUtHDVbMr8QI=;
        b=QK1HwJ+KHLiSzOCQpiDBzfLdxExPCwx/XRYTdO/E2mR6NihNAVGXiEGJ3lG6Q+bxq9
         7UIz4/avYI8QWlMaH45sFHlfGGK7fawIDfoUaDGWwAW7BOXarKsggLVk2NhFgZmTsXSX
         xZqFGJZ5AZ7TPY3sHygfG9qtwMCkoH3W1fZoLPg5jkzmi2q54tCIiuIiaDP27NG0eP0O
         R0qSfMqFulys/3SO/6VL2zTBPVyzVMZhf3eGOPAh99nnCapgJux/0hzTQRVm6n6za6vl
         WEuRdcPEVXro1MPPB8xOrzLPgjK05129KqcDvg9u8aPrzQiBMDhTwtAQwhNsYMc6RUzZ
         +6sw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531HJNZmLpTcNghIHFSV/4TK+bJgt7EYML+bgU9BLf9sES4on+iw
	OS6de0NUV5cPB2espAUmjg8=
X-Google-Smtp-Source: ABdhPJxiHGGvnadzin/IF9N/4cGvPQ+FwtZItdkibkK8gBMJu0yuTegHHcSXjTsRP8alMYDRMrUbTA==
X-Received: by 2002:a05:6214:d49:: with SMTP id 9mr20002475qvr.30.1625597484755;
        Tue, 06 Jul 2021 11:51:24 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:620a:1310:: with SMTP id o16ls13670472qkj.6.gmail; Tue,
 06 Jul 2021 11:51:24 -0700 (PDT)
X-Received: by 2002:a05:620a:81d:: with SMTP id s29mr9639265qks.226.1625597484368;
        Tue, 06 Jul 2021 11:51:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625597484; cv=none;
        d=google.com; s=arc-20160816;
        b=yl4e0HP6XjGNtlIVke5+9tqxARspHc+ss4G6fqQvFUspTDUc1oquUlax2P/z+3x2Lz
         ZNVscTo/6xZtIsGsyG8QR67Q+a3NKELgRXa41G+5gMjEhfHIX+MMl6A6cONhKj42Cr6a
         OXwYbWZDk59WvqMPfL+KsUf0PFJBM/Sp3dPUDXf2Bl1OJ22uyITXfz1w947aXfDCKmaN
         F1z4ZsYHwh5gw+Ocy/NJ14G1RNmUxhDGKeGVoUJOFDr58zBNRQukUXSUuMDYpHhwDb6S
         sSs4o1FOnrfu3nbkfHu/9k2+0mdbGCSAZsQfZG8QEj6MBF27D3n+dNVlmAVdjMKnHyyj
         +RtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=CUB/wg8JoGmq3NIMuzXfvTu1/LaQA3sJa9mgD0RKZNM=;
        b=w2bWnr8OQlTPjlBz4lf+nNsOFv50e67/WWxka2KEczpixG/yfpWo6MN335lGqVc4Vp
         2ag63/6zZm2QO1Ls+NPIeVvAJeg6wksBQH23SGJdEKHYsWCwNp9tP1z2Ai7yZ/cUPdoQ
         kxdW7TuQTcjy+uRoH9TJ3Y1WuJPVVRMl6+fRmG4g+CTXR4d9lOiWJ0c8sBJ3CJnS0dKP
         bqLyd4MaNfKQlip2nkBhPhzlwND7s9zgNDRuYxr4YxGYVDZm79um0W7mDEmdIm/FDopA
         52Kn75NSQM3gVss7KVLXaJ53cisoZD/QjNv7s92V+Kv414tX3VixqDIH3a6TJXvvqOKP
         8u+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@intel-com.20150623.gappssmtp.com header.s=20150623 header.b=NCdUcCEY;
       spf=pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id c19si223048qtx.4.2021.07.06.11.51.24
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 11:51:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of dan.j.williams@intel.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Received: by mail-pg1-x530.google.com with SMTP id g22so22280492pgl.7
        for <linux-ntb@googlegroups.com>; Tue, 06 Jul 2021 11:51:24 -0700 (PDT)
X-Received: by 2002:a63:4c3:: with SMTP id 186mr12014592pge.240.1625597483385;
 Tue, 06 Jul 2021 11:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de> <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
From: Dan Williams <dan.j.williams@intel.com>
Date: Tue, 6 Jul 2021 11:51:12 -0700
Message-ID: <CAPcyv4gxjV7Xj8AN6aCkSLSi=yT6GdcAyigK6Au3mZQ1idBxJg@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de, 
	Cornelia Huck <cohuck@redhat.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	Geoff Levand <geoff@infradead.org>, Michael Ellerman <mpe@ellerman.id.au>, 
	Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	"Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, 
	William Breathitt Gray <vilhelm.gray@gmail.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Alison Schofield <alison.schofield@intel.com>, 
	Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>, 
	Ben Widawsky <ben.widawsky@intel.com>, Dave Jiang <dave.jiang@intel.com>, 
	Vinod Koul <vkoul@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>, 
	Sudeep Holla <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, 
	Wu Hao <hao.wu@intel.com>, Tom Rix <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
	Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>, 
	"K. Y. Srinivasan" <kys@microsoft.com>, Haiyang Zhang <haiyangz@microsoft.com>, 
	Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>, 
	Dexuan Cui <decui@microsoft.com>, 
	Alexander Shishkin <alexander.shishkin@linux.intel.com>, Wolfram Sang <wsa@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Samuel Iglesias Gonsalvez <siglesias@igalia.com>, Jens Taprogge <jens.taprogge@taprogge.org>, 
	Johannes Thumshirn <morbidrsa@gmail.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Lee Jones <lee.jones@linaro.org>, 
	Tomas Winkler <tomas.winkler@intel.com>, Arnd Bergmann <arnd@arndb.de>, 
	Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, Jon Mason <jdmason@kudzu.us>, 
	Allen Hubbe <allenbh@gmail.com>, Kishon Vijay Abraham I <kishon@ti.com>, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Dominik Brodowski <linux@dominikbrodowski.net>, 
	Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede <hdegoede@redhat.com>, 
	Mark Gross <mgross@linux.intel.com>, Matt Porter <mporter@kernel.crashing.org>, 
	Alexandre Bounine <alex.bou9@gmail.com>, Ohad Ben-Cohen <ohad@wizery.com>, 
	Bjorn Andersson <bjorn.andersson@linaro.org>, Mathieu Poirier <mathieu.poirier@linaro.org>, 
	"Martin K. Petersen" <martin.petersen@oracle.com>, Thorsten Scherer <t.scherer@eckelmann.de>, 
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>, Andy Gross <agross@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Stephen Boyd <sboyd@kernel.org>, Michael Buesch <m@bues.ch>, 
	Sven Van Asbroeck <TheSven73@gmail.com>, Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
	Andreas Noever <andreas.noever@gmail.com>, Michael Jamet <michael.jamet@intel.com>, 
	Mika Westerberg <mika.westerberg@linux.intel.com>, Yehezkel Bernat <YehezkelShB@gmail.com>, 
	Rob Herring <robh@kernel.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, "Michael S. Tsirkin" <mst@redhat.com>, 
	Jason Wang <jasowang@redhat.com>, Kirti Wankhede <kwankhede@nvidia.com>, 
	Alex Williamson <alex.williamson@redhat.com>, Martyn Welch <martyn@welchs.me.uk>, 
	Manohar Vanga <manohar.vanga@gmail.com>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, 
	Johannes Berg <johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>, 
	Takashi Iwai <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>, Tyrel Datwyler <tyreld@linux.ibm.com>, 
	Vladimir Zapolskiy <vz@mleia.com>, Samuel Holland <samuel@sholland.org>, 
	Qinglang Miao <miaoqinglang@huawei.com>, Alexey Kardashevskiy <aik@ozlabs.ru>, 
	Kai-Heng Feng <kai.heng.feng@canonical.com>, Joey Pabalan <jpabalanb@gmail.com>, 
	=?UTF-8?Q?Pali_Roh=C3=A1r?= <pali@kernel.org>, 
	Adrian Hunter <adrian.hunter@intel.com>, Frank Li <lznuaa@gmail.com>, 
	Mike Christie <michael.christie@oracle.com>, Bodo Stroesser <bostroesser@gmail.com>, 
	Hannes Reinecke <hare@suse.de>, David Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>, 
	Julien Grall <jgrall@amazon.com>, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, linux-parisc@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-acpi@vger.kernel.org, 
	linux-wireless@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-cxl@vger.kernel.org, nvdimm@lists.linux.dev, dmaengine@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, linux-fpga@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-hyperv@vger.kernel.org, 
	linux-i2c@vger.kernel.org, linux-i3c@lists.infradead.org, 
	industrypack-devel@lists.sourceforge.net, linux-media@vger.kernel.org, 
	linux-mmc@vger.kernel.org, netdev@vger.kernel.org, linux-ntb@googlegroups.com, 
	linux-pci@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
	linux-spi@vger.kernel.org, linux-staging@lists.linux.dev, 
	greybus-dev@lists.linaro.org, target-devel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-serial@vger.kernel.org, 
	virtualization@lists.linux-foundation.org, kvm@vger.kernel.org, 
	xen-devel@lists.xenproject.org, Russell King <rmk+kernel@armlinux.org.uk>, 
	Johannes Thumshirn <jth@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dan.j.williams@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@intel-com.20150623.gappssmtp.com header.s=20150623
 header.b=NCdUcCEY;       spf=pass (google.com: domain of dan.j.williams@intel.com
 designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=dan.j.williams@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Jul 6, 2021 at 8:51 AM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
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

>  drivers/cxl/core.c                        | 3 +--
>  drivers/dax/bus.c                         | 4 +---
>  drivers/nvdimm/bus.c                      | 3 +--

For CXL, DAX, and NVDIMM

Acked-by: Dan Williams <dan.j.williams@intel.com>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAPcyv4gxjV7Xj8AN6aCkSLSi%3DyT6GdcAyigK6Au3mZQ1idBxJg%40mail.gmai=
l.com.

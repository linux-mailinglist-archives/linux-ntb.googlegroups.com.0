Return-Path: <linux-ntb+bncBDZJNNNW4AJRBXHSS2DQMGQEYA7S2UA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFF23BE9A5
	for <lists+linux-ntb@lfdr.de>; Wed,  7 Jul 2021 16:25:34 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id m13-20020a633f0d0000b0290222ece48979sf1883179pga.1
        for <lists+linux-ntb@lfdr.de>; Wed, 07 Jul 2021 07:25:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625667933; cv=pass;
        d=google.com; s=arc-20160816;
        b=X5gTR41KzI91dALJI2mx+ic35tcN9i1ypBgBA92KTFpTNT06rg4HvmmLEFuhrnyDYC
         UkHbJngZWtI3QyzRCy9Xjio7B3ZLxpAKQyKjdMKRkig4uv1ls+bpO++B0tx73Pjg758k
         GQSMa6aXIPpipien4bHEnESzcwt2nzkUEyhPsOG5N+JKfzSkWNvGTH9270M4jLBfY1px
         jB5Xuv5tKa3M7zy+dMbs4cGGfi5nvua41n2ma8SrsK4wlaSY5FQnOoJgkaTFady/YG/L
         LpogQcnUGlnQIQcPIAvd0KAYxFL4+mzJ4Y3sr/t5mNV0tgc5TOs2N+bwfVbb4anMvYUQ
         sQQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=APWPbrc4z+jcEtynDQnAYci+JPaJZXi2A6GVhBSrIXE=;
        b=rqFWHQYGo4NGklz2YcPNPci/lpEToS5tAcvM22tUBm/aASLFn279xPQCA0687OAZ/t
         5fFmnc2ZGonbO0au6otAIKzfcwvqeDV4SLoPuPrvJkCTvYuiMY8w6N8BJKdcr/jm2EFm
         z90hGZzGvUbyi2P3xTRlfi9JoBHX1jYre0Ud7RsW1FYRhNfRXHYODVSnEi/eirTEGYLn
         EJVq1q5R6p2FeLdz+TVxmIlvJUCgga+9RtjYWJAgNL3WieaX6X9RS7tFK8ANkym0vrby
         dsbnB/sGqrhLYEyLtwFmaTBzIz523sfTgqV59EFxCgVkyguwTIMtufhnlOUt7XtcHCQ0
         JJzw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="BUALc8/A";
       spf=pass (google.com: domain of benjamin.tissoires@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=benjamin.tissoires@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=APWPbrc4z+jcEtynDQnAYci+JPaJZXi2A6GVhBSrIXE=;
        b=EnDsBvapBOxetLB0vzM2GenKKfdVX201Jp7SDv3TPVkzgwUGsDSeyUKVMk6KEsIPHx
         8EZdDflk7HbvBZpvQrE0W3ZQIEeSgk39d4d2XateVBO8WoNyTbMLV0IfQiIl/1WKd0Ac
         NMhkAinW40P3aGyK+3I85khCPDW3dP2qxJS1azWfLpOf508FeDQ6romSG79JjBVfB+sI
         7/A0IxfPkLNFiQI8lZPDmRfThMVYz7puWd6MSPxLSm67k4oCMIfQxMXYsJjDc3GON2uz
         ezlufUcsVrWJj7kplcUu33HhK5yeBtBKadHhA9jj+Z6oXYB1X8yx4X5NSCIYCbZtGY28
         5h0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=APWPbrc4z+jcEtynDQnAYci+JPaJZXi2A6GVhBSrIXE=;
        b=V0fbtPyaXBEK4+xilAmTRjbSz3VkycXAyYtyclpW0NxHdIPF5EuCk9pHvj8DYhd+fB
         fbjHX9uL/kX/6WA6+k7CanKgUoYo6M6rou5fZ+XfiRCWZbryLC7o+UBN660grNf+EdQk
         /ThYcjNovndi0EE/X2oK10YFo3PmEtV3bapSHO7FC+V9LASAp8HnVcIib5ZCDNJvIS5f
         CEXTtv3kDRvdOKKhIpB8C3hHA9mwYDOE+J/3aubD96dJ2skUEw9orIwEnm9z0MgaSeBy
         8uGWW13vEhQuR3VGXgjR1onD3zphAIFHBWZWjQTwKglORLyOtO/DGQLPxXhF9dDuaCZF
         fRjg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53093MIvfRPF2VHr+sI7jlTQYmzVgfNGe+0F7FBKeiKL4vtmdFt5
	BoWQWxlETarg71FuPpvmxM8=
X-Google-Smtp-Source: ABdhPJxNp8x7FlzGkn/Gx9/pMPeCnSbheSU+dtFSg5hQcS5sYm6ENbfCxg1coqVkYLp7Wp3U2DXoxw==
X-Received: by 2002:a17:90a:8417:: with SMTP id j23mr6555054pjn.210.1625667932690;
        Wed, 07 Jul 2021 07:25:32 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:903:192:: with SMTP id z18ls3552819plg.5.gmail; Wed, 07
 Jul 2021 07:25:32 -0700 (PDT)
X-Received: by 2002:a17:902:d213:b029:127:9520:7649 with SMTP id t19-20020a170902d213b029012795207649mr21653510ply.10.1625667932074;
        Wed, 07 Jul 2021 07:25:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625667932; cv=none;
        d=google.com; s=arc-20160816;
        b=o0mWqDp3w/dEMaoGDqKkAcEWOklhx89LLpOTyCXP/vg6Rhk+T3ITC7DUWBNAYgBH/P
         uj+m84jk98F75or+wbaIchE2m42NvIa26D/EqJEUpm2J1DkEahpeoVnG7o5qr4WIsnBx
         7ArvwOxglLKSvFJGxEPG0a9TUS0GBcvWKIGYybG8D7ktX7x2+WIhat4UNAbxjt/yZfNT
         BdUmvksn4R6LucPWyxyFaofKiF0G3RlLFIvt/A3WBBQSADvIfGmlqFo6dtrn8HtCyZok
         gr7WHV8uwd4dHJ0BqaKFoVCmq94gHUKThCT1JcAJrDLYlH77iV2oe5Q+zw/IxL5rB1GK
         16zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=R1b1MmqRg+JjTb9SqE3N1oUES1jMyS6VpEEII2IWGuk=;
        b=A9j91EDh48OpoOUElflY/vUTsJ9qVtatmdLwGS3LaCgreAdMo2g+3/7Fcx7Pba8hoY
         9zYCnEyP9hz6gYsHp6SNBOqd2a1ZULgRtRGMvgF+bmPbar2NUvhGLvAa6cfDqsIxGvwi
         uhu5C/3kpIiwei9YGDqlAWRPe+7H4aJuzuUKrkOU2G5rjP533p2THGcyygdMWUsQMIj9
         Yuw02lSh/3/E7Z2okTXWHJOBB2sj8g0Pwux7EiXkpnllPlGq4EyLpTl4yLrlucGs69OI
         8deSg/nxlpmWP8qb00Wk0k0ov6SQFAYkYJ/1N7T/HSopyyI3QsX5kCAbJcMxiH+nW0iz
         G0Kg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="BUALc8/A";
       spf=pass (google.com: domain of benjamin.tissoires@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=benjamin.tissoires@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id f16si1253624plj.1.2021.07.07.07.25.31
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 07:25:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of benjamin.tissoires@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-33-ir3cmopiNtaB6T7jEFm3hw-1; Wed, 07 Jul 2021 10:25:29 -0400
X-MC-Unique: ir3cmopiNtaB6T7jEFm3hw-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E4FA3100C66F;
	Wed,  7 Jul 2021 14:25:20 +0000 (UTC)
Received: from [10.36.112.61] (ovpn-112-61.ams2.redhat.com [10.36.112.61])
	by smtp.corp.redhat.com (Postfix) with ESMTP id E4E3919C66;
	Wed,  7 Jul 2021 14:24:39 +0000 (UTC)
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@pengutronix.de, Cornelia Huck <cohuck@redhat.com>,
 linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>, Geoff Levand <geoff@infradead.org>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Len Brown <lenb@kernel.org>, William Breathitt Gray
 <vilhelm.gray@gmail.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <zajec5@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Alison Schofield <alison.schofield@intel.com>,
 Vishal Verma <vishal.l.verma@intel.com>, Ira Weiny <ira.weiny@intel.com>,
 Ben Widawsky <ben.widawsky@intel.com>,
 Dan Williams <dan.j.williams@intel.com>, Dave Jiang <dave.jiang@intel.com>,
 Vinod Koul <vkoul@kernel.org>, Stefan Richter <stefanr@s5r6.in-berlin.de>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>, Wu Hao <hao.wu@intel.com>,
 Tom Rix <trix@redhat.com>, Moritz Fischer <mdf@kernel.org>,
 Jiri Kosina <jikos@kernel.org>,
 Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>,
 "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Dexuan Cui <decui@microsoft.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Wolfram Sang <wsa@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Samuel Iglesias Gonsalvez <siglesias@igalia.com>,
 Jens Taprogge <jens.taprogge@taprogge.org>,
 Johannes Thumshirn <morbidrsa@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Maxim Levitsky <maximlevitsky@gmail.com>, Alex Dubov <oakad@yahoo.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Lee Jones <lee.jones@linaro.org>,
 Tomas Winkler <tomas.winkler@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Dominik Brodowski <linux@dominikbrodowski.net>,
 Maximilian Luz <luzmaximilian@gmail.com>, Hans de Goede
 <hdegoede@redhat.com>, Mark Gross <mgross@linux.intel.com>,
 Matt Porter <mporter@kernel.crashing.org>,
 Alexandre Bounine <alex.bou9@gmail.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Thorsten Scherer <t.scherer@eckelmann.de>,
 Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
 Andy Gross <agross@kernel.org>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Michael Buesch <m@bues.ch>,
 Sven Van Asbroeck <TheSven73@gmail.com>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>, Andreas Noever <andreas.noever@gmail.com>,
 Michael Jamet <michael.jamet@intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Yehezkel Bernat <YehezkelShB@gmail.com>, Rob Herring <robh@kernel.org>,
 Jiri Slaby <jirislaby@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Jason Wang <jasowang@redhat.com>,
 Kirti Wankhede <kwankhede@nvidia.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Martyn Welch <martyn@welchs.me.uk>, Manohar Vanga <manohar.vanga@gmail.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross
 <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>,
 Johannes Berg <johannes@sipsolutions.net>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Marc Zyngier <maz@kernel.org>,
 Tyrel Datwyler <tyreld@linux.ibm.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Samuel Holland <samuel@sholland.org>, Qinglang Miao
 <miaoqinglang@huawei.com>, Alexey Kardashevskiy <aik@ozlabs.ru>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Joey Pabalan <jpabalanb@gmail.com>, =?UTF-8?Q?Pali_Roh=c3=a1r?=
 <pali@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 Frank Li <lznuaa@gmail.com>, Mike Christie <michael.christie@oracle.com>,
 Bodo Stroesser <bostroesser@gmail.com>, Hannes Reinecke <hare@suse.de>,
 David Woodhouse <dwmw@amazon.co.uk>, SeongJae Park <sjpark@amazon.de>,
 Julien Grall <jgrall@amazon.com>, linux-arm-kernel@lists.infradead.org,
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
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
From: Benjamin Tissoires <benjamin.tissoires@redhat.com>
Message-ID: <5d3bf56e-285f-ecc1-ec64-384409645353@redhat.com>
Date: Wed, 7 Jul 2021 16:24:38 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: benjamin.tissoires@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="BUALc8/A";
       spf=pass (google.com: domain of benjamin.tissoires@redhat.com
 designates 216.205.24.124 as permitted sender) smtp.mailfrom=benjamin.tissoires@redhat.com;
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

On 7/6/21 5:48 PM, Uwe Kleine-K=C3=B6nig wrote:
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
>=20

[...]

>   drivers/hid/hid-core.c                    | 4 +---
>   drivers/hid/intel-ish-hid/ishtp/bus.c     | 4 +---

[...]

> diff --git a/drivers/hid/hid-core.c b/drivers/hid/hid-core.c
> index 7db332139f7d..dbed2524fd47 100644
> --- a/drivers/hid/hid-core.c
> +++ b/drivers/hid/hid-core.c
> @@ -2302,7 +2302,7 @@ static int hid_device_probe(struct device *dev)
>   	return ret;
>   }
>  =20
> -static int hid_device_remove(struct device *dev)
> +static void hid_device_remove(struct device *dev)
>   {
>   	struct hid_device *hdev =3D to_hid_device(dev);
>   	struct hid_driver *hdrv;
> @@ -2322,8 +2322,6 @@ static int hid_device_remove(struct device *dev)
>  =20
>   	if (!hdev->io_started)
>   		up(&hdev->driver_input_lock);
> -
> -	return 0;
>   }
>  =20
>   static ssize_t modalias_show(struct device *dev, struct device_attribut=
e *a,
> diff --git a/drivers/hid/intel-ish-hid/ishtp/bus.c b/drivers/hid/intel-is=
h-hid/ishtp/bus.c
> index f0802b047ed8..8a51bd9cd093 100644
> --- a/drivers/hid/intel-ish-hid/ishtp/bus.c
> +++ b/drivers/hid/intel-ish-hid/ishtp/bus.c
> @@ -255,7 +255,7 @@ static int ishtp_cl_bus_match(struct device *dev, str=
uct device_driver *drv)
>    *
>    * Return: Return value from driver remove() call.
>    */
> -static int ishtp_cl_device_remove(struct device *dev)
> +static void ishtp_cl_device_remove(struct device *dev)
>   {
>   	struct ishtp_cl_device *device =3D to_ishtp_cl_device(dev);
>   	struct ishtp_cl_driver *driver =3D to_ishtp_cl_driver(dev->driver);
> @@ -267,8 +267,6 @@ static int ishtp_cl_device_remove(struct device *dev)
>  =20
>   	if (driver->remove)
>   		driver->remove(device);
> -
> -	return 0;
>   }
>  =20
>   /**

For the HID part:

Acked-by: Benjamin Tissoires <benjamin.tissoires@redhat.com>

Cheers,
Benjamin

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/5d3bf56e-285f-ecc1-ec64-384409645353%40redhat.com.

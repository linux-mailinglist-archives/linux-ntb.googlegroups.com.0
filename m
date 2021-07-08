Return-Path: <linux-ntb+bncBDSMRV4B4MERBQN4TGDQMGQENIOLREY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id C14413BF3BC
	for <lists+linux-ntb@lfdr.de>; Thu,  8 Jul 2021 04:09:05 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id x8-20020a5d54c80000b029012583535285sf1327596wrv.8
        for <lists+linux-ntb@lfdr.de>; Wed, 07 Jul 2021 19:09:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625710145; cv=pass;
        d=google.com; s=arc-20160816;
        b=qTPQ3nOhk7tK0srKagyo7q3zd8kXsyEuIx0xsIO2ms9okSzKiXNy7R99A7sLfhkhnF
         Y8mUynfA15ECBotqg7MAuVmTQn5wDtyUlcapKGIBGBao/MAgAg7Fwf3Q7jH/DSZ4fCAi
         zrWIlEcKy617ThBsZyaDU85IAk8LN6ydmAhG87v0Z68rt68KkFbgogC3nKbL4zVLP1Wr
         t31IF7hdkI79kjES3nFGCVhm/RRQldu+IHuKjH8AkyM2JYrgz+ye6rRXX6L+yheT7v29
         NcQxVAmPe57y9v3sdy8WbasZyH/4MbsFUDy82mx0vzF4bb5qljP0IHAm0fS7DIMcSekd
         o6YQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=w2l1nYWt6zafm75Y3Ysn67VtqrFgIMTYWkIVFK5gTWk=;
        b=T0Yl5kYJQffllJ3kwTLmKPwfk5P4UXLwlBLCYNWQLlAsZJFAURkVZwVrOayJq69oRa
         q2WftWQUEfBU5QHJbScDHTfOlGSDhMmwd64TQ+jmcj3v1CaeL9Ckiv+MfapXJhHUEhpq
         /zjoEprUuTIVBm3neMIeAxqqG3SOrxVftrSP9h++bG5lQyDWuGOk+d8wZsBGhR8uDQJJ
         rWoVJ9QKuUmDFr2ksZeUfncAw902S3wHH+p8Xd2rq64+fBwWeGpqeP9KHQtRdikol9q6
         dyQq+FXCNUbnuzoKZRXwnoXPZ8VHBxprA6Nluai7wSnC7Oc5Xpo2coSkkvgv8/s2Ou1H
         Kitw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Io7pdvzL;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w2l1nYWt6zafm75Y3Ysn67VtqrFgIMTYWkIVFK5gTWk=;
        b=NNLW1nfgGfsyXAKJIYZLTlhzQTr/2upTseqklGkiSHbMNnSmhSp63jrCYF+LIZyAbb
         EnN+VBUiwxa5wmKj6G/njaZS3qwWLnyh9arLaW1Ez6BkV9sAyG8eisHS2O/10ABB7Ira
         MjoRenpcZUyZZAKJWYX+m1MRMCgc4nL7q2dopJkG+IQYB0B+6owoQY68m0fFu2nU/o9+
         cptGG79yBtAp6d5KZr1v1ksEdktYhGvpGD5vXxWIjHC+FpRopChbgMjWLGT9Wd6EoiEt
         y0xeyuyxmOTv4qjX1mRiEHTGSURDD7q/vW8WFVBFxR5jh+pq9gbSaE3yoRHr4Wb2sHuP
         C61g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w2l1nYWt6zafm75Y3Ysn67VtqrFgIMTYWkIVFK5gTWk=;
        b=JOnOU0k2FTUx4jXejrbOnOnTPQNM4/SNq9RSNtCllY0w0ml/DojTYv6TIHPnFj4Wjm
         +nBt6WODJN1i/HVTTX+xwrv2LOU7XKr4PXoPYDey1+LFQIdI6zogjUVCQQqu4PXO/QrM
         W3/XEz9K0RIUUDTZammpnIiDio9pFdHaVxNG+tNIKhktV3hnUcn4qwscsqHd2aKuVEkf
         +hz1SBt3VoZMMR5J6rTbfEImYZjjUJwmNd7nx3fxuUWZ7a9mfTuc6cPDzOUy3/2S0NAH
         fS1BDNP/XK56gVB6CcVmko1SIBdluh8vLmRzU95WDBKz94POKJjJNp6wvXhF0Dbc1ijP
         uzqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w2l1nYWt6zafm75Y3Ysn67VtqrFgIMTYWkIVFK5gTWk=;
        b=d8RIbDDjVmTH0UdLJsUEWfGgOGTMhd3CPy8yCRm9vd14p7r37E8P3JcxwzZjVwnzwn
         xqJWQJQh76GAnslUdu5nD6rMXH7Jl7GVnGGCoF626HA4PC0pggtCT/0ZC3XGFTXcu9N6
         3MRmgYsdZz5WLOKZ0k/fRi/0pEx94ekIq/naiTXeQ/meHPQJmnM3FIobuHwvSzcyHxN8
         rcfTtrS2aF3O7V7uKPhm4PuugrMefHz/OCeeN/Xa6O4Prbf50VcAwm70s2PUU7djMZiZ
         azmXzVotERbxuc+jQ5TFO7UfmefmNu22ZCEjtM8YUDWsFA1SRvCGTZF80VfdjYlkgcDA
         tyQw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533SJjk+gLNsriO3GFLxS//Rw2sWvNlx0sl+g+lEQH7StyB4UPG3
	/j9y5dK4pjSR8kKR04pU+uw=
X-Google-Smtp-Source: ABdhPJw8n9BK7+gKcoN2ztk/YEOAiNuwoJCCLorXMYyCrBBNRFhoeZkXRy56peIi0nPGHfWkOUKc4w==
X-Received: by 2002:a7b:c052:: with SMTP id u18mr2235584wmc.105.1625710145556;
        Wed, 07 Jul 2021 19:09:05 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:6ac7:: with SMTP id u7ls680396wrw.0.gmail; Wed, 07 Jul
 2021 19:09:04 -0700 (PDT)
X-Received: by 2002:adf:f346:: with SMTP id e6mr14087354wrp.28.1625710144732;
        Wed, 07 Jul 2021 19:09:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625710144; cv=none;
        d=google.com; s=arc-20160816;
        b=XkOfXG+WeH6pbvEiEegtv9A+IiUvH7/XHip8/Ns3z7QOmIKNKYxuh2eKtTm7LeIduA
         xVTci39AhMnhfeTDzciAQ+KQ/knUHhu6MGat9rzXtKb5EtCORL1vTQrPNc5eM64ZQKqC
         LuUtEffoqEn+q69uLGBBMpqVz1r/Ozrv9u78fFOLw6mQhjgEHTgtIAOliPCSnpBY7mb0
         HoXw0MjE1eN3SN0G00NFzqHes6ejrg7cneecrouE1zja50qXzaqOIYRoWyPFnzLsIi/Z
         DMKVNDAATIs9hHQfk7f/q6VOsoVdFU2MPtt7izJzNhejJ+QmcyZoaWe9M/54Jieo3OEf
         Y+vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3PsL89oWHD3lPAqXaooZwbzxbg1c8VW9/mevLYmxoEY=;
        b=vtQi+rhi3NUi0CgE0HtLsPIIuRHgEmBwHNrgv53tYCxjQkx08/aWogad7ZQz7719HG
         Ty6H/9q2vVUUaxLwb1XtT6a1Lwbeo9RFNCHCWsxw1mwaOrUzWBGrTsgJ4psDyldPE7f/
         e6nmPfjp11CmWW5li3moP3+B3XVd+kBrId7ebodU+Z//diBUIMc9LwZgQq4Qo7AaJ/Aw
         QS3ybwKv3T+eVY7AH8n08+hsSC3z4Afk3kK3KhDBwzRwLZlLD84cWsiuNMJsmcm8joxk
         M/PTJq7kyXdAGm6XUzL50lx1CkXngvjmIyZAjqGq8QFLaJu+L64ADoARgGSewFy8hzN2
         xFlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Io7pdvzL;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com. [2a00:1450:4864:20::334])
        by gmr-mx.google.com with ESMTPS id k18si481041wmj.0.2021.07.07.19.09.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jul 2021 19:09:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of thesven73@gmail.com designates 2a00:1450:4864:20::334 as permitted sender) client-ip=2a00:1450:4864:20::334;
Received: by mail-wm1-x334.google.com with SMTP id h18-20020a05600c3512b029020e4ceb9588so5624494wmq.5
        for <linux-ntb@googlegroups.com>; Wed, 07 Jul 2021 19:09:04 -0700 (PDT)
X-Received: by 2002:a1c:7512:: with SMTP id o18mr999573wmc.94.1625710144333;
 Wed, 07 Jul 2021 19:09:04 -0700 (PDT)
MIME-Version: 1.0
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Wed, 7 Jul 2021 22:08:53 -0400
Message-ID: <CAGngYiWm4u27o-yy5L5tokMB5G1RUR5uYmKf2oXah2P3J=hK2A@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sascha Hauer <kernel@pengutronix.de>, 
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
	Ben Widawsky <ben.widawsky@intel.com>, Dan Williams <dan.j.williams@intel.com>, 
	Dave Jiang <dave.jiang@intel.com>, Vinod Koul <vkoul@kernel.org>, 
	Stefan Richter <stefanr@s5r6.in-berlin.de>, Sudeep Holla <sudeep.holla@arm.com>, 
	Cristian Marussi <cristian.marussi@arm.com>, Wu Hao <hao.wu@intel.com>, Tom Rix <trix@redhat.com>, 
	Moritz Fischer <mdf@kernel.org>, Jiri Kosina <jikos@kernel.org>, 
	Benjamin Tissoires <benjamin.tissoires@redhat.com>, 
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
	Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>, 
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
	Julien Grall <jgrall@amazon.com>, 
	"moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org, 
	linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, 
	linux-acpi@vger.kernel.org, linux-wireless@vger.kernel.org, 
	linux-sunxi@lists.linux.dev, linux-cxl@vger.kernel.org, 
	nvdimm@lists.linux.dev, dmaengine@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, linux-fpga@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-hyperv@vger.kernel.org, 
	linux-i2c <linux-i2c@vger.kernel.org>, linux-i3c@lists.infradead.org, 
	industrypack-devel@lists.sourceforge.net, 
	linux-media <linux-media@vger.kernel.org>, linux-mmc@vger.kernel.org, 
	netdev <netdev@vger.kernel.org>, linux-ntb@googlegroups.com, 
	linux-pci@vger.kernel.org, platform-driver-x86@vger.kernel.org, 
	linux-remoteproc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org, 
	linux-spi <linux-spi@vger.kernel.org>, linux-staging@lists.linux.dev, 
	greybus-dev@lists.linaro.org, target-devel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-serial@vger.kernel.org, 
	virtualization@lists.linux-foundation.org, kvm@vger.kernel.org, 
	xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: TheSven73@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Io7pdvzL;       spf=pass
 (google.com: domain of thesven73@gmail.com designates 2a00:1450:4864:20::334
 as permitted sender) smtp.mailfrom=thesven73@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jul 6, 2021 at 11:50 AM Uwe Kleine-K=C3=B6nig
<u.kleine-koenig@pengutronix.de> wrote:
>
>  drivers/staging/fieldbus/anybuss/host.c   | 4 +---

Awesome !

Acked-by: Sven Van Asbroeck <TheSven73@gmail.com>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAGngYiWm4u27o-yy5L5tokMB5G1RUR5uYmKf2oXah2P3J%3DhK2A%40mail.gmai=
l.com.

Return-Path: <linux-ntb+bncBDXORGWOBMILRXERQ4DBUBAZNTZAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 06C7F3BD911
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 16:52:41 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id k16-20020a7bc3100000b02901d849b41038sf1185782wmj.7
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 07:52:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625583160; cv=pass;
        d=google.com; s=arc-20160816;
        b=f8q9VEmOiq5rT7zYGQ8APLDBy/UqXfcpS9I9RzQKUPs8e2i58Rv4AD4qpDw8pi6ywC
         g+Tq5b4p+A2fWwLOqbSbwvp/b95cM/7PQHh1h/lpQZIrStKJHBTuZStXtjg8xAOGA3fq
         gYYgYgUERE2rtyDobHwZcSrOEB3bmTUUEarI39o0HZG+8nm3K6BCuCCfLhdeT/BJXW9z
         EQ4H3sKG18B/s86OHZ8GAx6FCWOoX9nPqKlJSKQIdWtn/PgCJ0JUyFpSy1A7RiIp2xYE
         PqW0g5lphoTZ+gDdOXtcH4eLaE+xH2iRreUPwptajqtCVNiRMyfgpcy1ufn1q5TvrYBe
         6sgw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=WunNW3FfLS2XRw8alc9k5WFi2D3nN9VTFyab+okdzqA=;
        b=I8h0c2crhwVO7thYWED++2lkJdFKdvyhUqhwfa5fOfyEmbjA0bfT9Zr8pXDbbuMdxL
         ILyZiqkUTAQQvJKJiRjCvaUbkC+IZQ4w4C8OHCgqMMd8yTx87RRIzXTlfsBMNI/5SZeM
         Qi3P79bPHLlfIZkokdIZOqhCGTrKB0XOsf+QasjocQ+qDee2HUMo9WvXr3u3VkFRfPHF
         PdVmgWgfogBEsJGONBaVgNZWl6szHl5fs3thzAXYxXuLFba+/1i4oHeae/DCtPwuEbl+
         WfefYD6p/byC4sLAnyxKXWJHppzM6P2N2gIdjIl9lDiKN93XZwqRv2fYDrPWrFiJ/1uT
         MG3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=JbK3meFo;
       spf=pass (google.com: best guess record for domain of geoff@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=geoff@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WunNW3FfLS2XRw8alc9k5WFi2D3nN9VTFyab+okdzqA=;
        b=kPh3IrWJ3i7W86aAseXzkwvgCJbyXyrS6MHDJpOy9R6GK4yzWq9o4auXfPhKO32YBL
         SJBNayVPBDGGEHdAjRXwM8I5TsbwHqu4xS1UEcm3D629Un1oDDryTuhbSRJJyU1LfNcL
         SMlSnfnGIw9i9/3CVjzwKhg6YoGR35b8SnS3o/X93KEwS8XUWN7+c0nqjU8wvShuHLR3
         uVNfBqMTYgazK5ldZNP3pEPxsC3HBwVOK1ajhf1Lxe6c3Z/xYtJsuhCuINq+cRBMLs0o
         OILoZfw6k19YEyJSoEggEc6QROG5tOTvQ/xeVYmPF3AFeIgDIew2lds7hbei0xzStkyP
         vFmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WunNW3FfLS2XRw8alc9k5WFi2D3nN9VTFyab+okdzqA=;
        b=AXLiYH1SmKDbiaG63B76MwtVsO1asLqCfmj5iL18xQRPAGIy5BCaignn7LHWkOmUnX
         RVfd5joikWXmH9lYbUOT/bVyXHJjtoUpZVk4/UUzUs/Qzvt4islIKvEbbldeL6LYOHvo
         v4MvciySmHs1h04nkfuZixydqH8+ZYGLT5gwXxS+UAmKaEdbsjlJBLwe2VizFUmKZyuh
         z9OCqNJaCxAl8AmH9+E4ZSoddN7VDcycR5RW3iZ9SLw4ddj+GxBLud19f8sHi3O+xyQh
         1VfyAHaZ1nkCONmzeJOmZAaXAV5eWEX3KDyevhj/VniJrajm0slRC8AYgVnFfBe9QT31
         16Nw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5334m73I7yd3qwMQetWEWQVbv7TlLqIvbiGXSEJMgC8H/Qdkplvw
	kY4Ni+fMs3TGZZK/y8CV4Hk=
X-Google-Smtp-Source: ABdhPJznSwR3DWtYtp7ZKQItla6nCJB8c3U2SpDjZClmAyUfuspFS4fgaT8FMIZaFzGzMEZO7CQ3sA==
X-Received: by 2002:a7b:c052:: with SMTP id u18mr1240564wmc.105.1625583160817;
        Tue, 06 Jul 2021 07:52:40 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:6ac7:: with SMTP id u7ls2003659wrw.0.gmail; Tue, 06 Jul
 2021 07:52:39 -0700 (PDT)
X-Received: by 2002:a5d:4b88:: with SMTP id b8mr22054576wrt.95.1625583159930;
        Tue, 06 Jul 2021 07:52:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625583159; cv=none;
        d=google.com; s=arc-20160816;
        b=gjTcJCu1rBiU3VERA0qaXxMMOA1kRz9KvzUn8CFt/5vNLUatbZ23qFfSE+cGSLvrG7
         bTVWN58W/MlchVE+QE8/7gmZQi8FDiSGy8RBASqztrUPzE5Vo8Oyyy5ViSJ1cABWrd13
         Ezac9zgfhIQoC2JndfIVDEDeGXx6jqKavcPsL97ltYuhKSKAEq79JeFvjHjWzmxhGlGP
         zGibfPFBf1C/qzNv8h4cL8s7EbHX18sQq5XD9Z/YE6UvN/Y6sC87kbL0jBkj6yeMuxG9
         SpzP55AwRZokf0XXgZzJFy4sJgmJHEYjo+HewbvfDcQM/274Aq4jJ7hPyx3fNq/eNm9z
         5WHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=1ayrkKf5NvJjQdfUl2A/VO9K+bU0q5/9ZgivWetFS3o=;
        b=JuOwswRjfC9JoZJXk9W9oE6J0nYpVacx6rQXRCV80ay+BgcnCvh3T5Rq6eP/PJIRjO
         KUMHAut5uEBqbqyvkDnPCiDpZccQH6aIWDtTpIbAk/VUZk/EAnF7iYVxs/pbq+48L0g2
         UBi9fXWeGMOnk5QB3KjEQnn9BFigb17Do2tkuR0/m5lE1BDa/gN5gCu7+y/SblVwpRaS
         nVQRw8HNMOM0W/wA+7XJ/6bHNM3UnNbZObIHlw5Ur8UCCa3q/QRnH8plGPafnY+jeQhc
         7X3gkEhEWnfO6GOZb9QVEryynakf3zTfw2e71yNInkl43hPRZzoDZIR4Vb+/0VsTOBuO
         WDsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=desiato.20200630 header.b=JbK3meFo;
       spf=pass (google.com: best guess record for domain of geoff@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) smtp.mailfrom=geoff@infradead.org
Received: from desiato.infradead.org (desiato.infradead.org. [2001:8b0:10b:1:d65d:64ff:fe57:4e05])
        by gmr-mx.google.com with ESMTPS id j63si161399wmj.2.2021.07.06.07.52.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 07:52:39 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of geoff@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as permitted sender) client-ip=2001:8b0:10b:1:d65d:64ff:fe57:4e05;
Received: from [2602:306:c5a2:a380:b447:81b0:ffaa:defc]
	by desiato.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0mQg-00F4IY-8x; Tue, 06 Jul 2021 14:52:06 +0000
Subject: Re: [PATCH] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>, Michael Ellerman <mpe@ellerman.id.au>,
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
 Benjamin Tissoires <benjamin.tissoires@redhat.com>,
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
 Cornelia Huck <cohuck@redhat.com>, Martyn Welch <martyn@welchs.me.uk>,
 Manohar Vanga <manohar.vanga@gmail.com>,
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
 xen-devel@lists.xenproject.org
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
From: Geoff Levand <geoff@infradead.org>
Message-ID: <7a68b536-302c-0374-848f-4b9535ff1306@infradead.org>
Date: Tue, 6 Jul 2021 07:51:36 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: geoff@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=desiato.20200630 header.b=JbK3meFo;
       spf=pass (google.com: best guess record for domain of
 geoff@infradead.org designates 2001:8b0:10b:1:d65d:64ff:fe57:4e05 as
 permitted sender) smtp.mailfrom=geoff@infradead.org
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

On 7/6/21 2:50 AM, Uwe Kleine-K=C3=B6nig wrote:

> --- a/arch/powerpc/platforms/ps3/system-bus.c
> +++ b/arch/powerpc/platforms/ps3/system-bus.c
> @@ -381,7 +381,7 @@ static int ps3_system_bus_probe(struct device *_dev)
>  	return result;
>  }
> =20
> -static int ps3_system_bus_remove(struct device *_dev)
> +static void ps3_system_bus_remove(struct device *_dev)
>  {
>  	struct ps3_system_bus_device *dev =3D ps3_dev_to_system_bus_dev(_dev);
>  	struct ps3_system_bus_driver *drv;
> @@ -399,7 +399,6 @@ static int ps3_system_bus_remove(struct device *_dev)
>  			__func__, __LINE__, drv->core.name);
> =20
>  	pr_debug(" <- %s:%d: %s\n", __func__, __LINE__, dev_name(&dev->core));
> -	return 0;
>  }

PS3 part looks fine.

Acked-by: Geoff Levand <geoff@infradead.org>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/7a68b536-302c-0374-848f-4b9535ff1306%40infradead.org.

Return-Path: <linux-ntb+bncBAABBAGETCDQMGQEGS34NBQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 229AD3BF1A0
	for <lists+linux-ntb@lfdr.de>; Wed,  7 Jul 2021 23:52:02 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id d1-20020a17090ae281b0290170ba1f9948sf4633512pjz.7
        for <lists+linux-ntb@lfdr.de>; Wed, 07 Jul 2021 14:52:02 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1625694721; cv=pass;
        d=google.com; s=arc-20160816;
        b=uZ6oMcpLpPdTT9vVMr9ppEC5AqtdLB/nqt8QYGb3SlnFBvcIGL124We59xpwJWnz2o
         njMEcRo3g+pWWbk3OS6KXmQxsUuliu+fX48kRk+6cUGCuURlI6JeYU10y9sfsLlLPvvD
         FsF81qDHyFbtdIF94t1svA4z7t4+2ncm5dKFPcr1k8piBXt97OM6BRvkaqtGF9kpQrGw
         u9ki99vaXG/InAGMyZfdly/yr+tKJWPGO93Uv0cqAE/KDhGd+fOSrJ+pGpID0oOwOAXl
         DDniOOPb55hJl9pxb8GgyBm3xrqHYV+VuSwm/58ybcX9xcyiiDcuayiFeeuOUIAHMAhC
         EPtA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:in-reply-to
         :content-transfer-encoding:content-disposition:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=PLS2HgiwV8uhT9yMv1V1vf07RxtXUnTAi22g51TyyGc=;
        b=nwGhzjME9jD9kE3gT/rgeTayTYS0V6xrfOETM/BwGietS6ALrUYFNZKq+A5EX7r2or
         1AslQ9KxQuoctphnCZW/zbCvYFnTu8bUdaNVRdcUzggLaUHI9P5CoKuwQyK+36JT5vkb
         pNy3RUKe+JzOU3uckFvv8bbx/EKIrZqfw8yEeAK2zCDqdE/7r9uaVOG+ZUXrcXJ6aWqb
         gN9c/hd4kzoMO1I1gEYzyF/0+J0xahhXG93YZru1w+sPg3omMf3u5FSfs3I0b4i/MMO+
         QUUvBzIpv+vC0zh/bi9ud65BZJMky3Sj1LvUu48/Xce+cU2TNfkHABF9HOLZfGszbG+S
         OHeQ==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@eckelmannde.onmicrosoft.com header.s=selector1-eckelmannde-onmicrosoft-com header.b=wcCnXxQi;
       arc=pass (i=1 spf=pass spfdomain=eckelmann.de dkim=pass dkdomain=eckelmann.de dmarc=pass fromdomain=eckelmann.de);
       spf=pass (google.com: domain of t.scherer@eckelmann.de designates 40.107.3.76 as permitted sender) smtp.mailfrom=T.Scherer@eckelmann.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=eckelmann.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references
         :content-disposition:content-transfer-encoding:in-reply-to
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PLS2HgiwV8uhT9yMv1V1vf07RxtXUnTAi22g51TyyGc=;
        b=SzNhZ/lTxloWpk/MREC8MBNQiBsze/6Q4mHbXI6Geo9byMkKnfHOPUzuoRPqKKlFDI
         SM6fCqls/+GDUTogddeKYTGHNcQ5c8i4B1AGG++gDwSLOkAOdwrG+nz4dpDiSCRPvRqU
         IWZie6XgdciVs05KZnlQDRXIGQhWP3xSN/FOBRqrsXyyfAQ+TlTVwGLCzMWUB/PY5N24
         Wa9x/tPFM7h2dBObPPtodreaK5O1Wjud3/TnCIf80WUM61d7lbEvh591dQLpL9TZY306
         AAQrtVLi/hRUYuz73ebmh73888mw/98+lLOU3GQGh5F94+QqlKkLRT2SL1+nV0IyRfRf
         d/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:content-disposition:content-transfer-encoding
         :in-reply-to:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PLS2HgiwV8uhT9yMv1V1vf07RxtXUnTAi22g51TyyGc=;
        b=n96rGgTAM6cky3W+bbAKdf1Rknm248dNFtoX1YPR2zg/H/evKgub8OEmmiTl6H22xl
         FrKPeW7fYQZ3P5v3bpyWRdsxyD8O5kYK45t3j4i0Ohd9C9QG4d2BOPYZWPz/+dtjtZ1O
         cUCsgrKmbJ60aLzIOq26XEfneRAb/X3Hx2BPSGfXLbtNY9rS506hfrrw4VCbxJIe5GGE
         bCroyl11XBfZqvgEAl91WpaPok28NT3BssSnV8FMyhi4K7omIaovOjssjPobw8neTv0q
         DwT0IlWfhOOivOkq2Xmnun9iDAe6GNt/KEPgUH+wYwsihmO35tT6Xoc8OvUnHspYEZda
         UqOw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533zZe3pRzzfT2y/7yySCrMEipcKeHXy8M2UHmiiqGhH0As5ZdR2
	jp88TigyZbLAByJ4saW/8Fs=
X-Google-Smtp-Source: ABdhPJw2uJxCygvRSnaaZFdRhiGTJyT0E3Jd9zCiMOjoGdsXRRmlrSuroFUSKa3iUT75UdohsWnjMQ==
X-Received: by 2002:a05:6a00:139b:b029:310:23d:f2ab with SMTP id t27-20020a056a00139bb0290310023df2abmr27707542pfg.54.1625694720781;
        Wed, 07 Jul 2021 14:52:00 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:2406:: with SMTP id k6ls47706pgk.9.gmail; Wed, 07 Jul
 2021 14:52:00 -0700 (PDT)
X-Received: by 2002:a62:e80f:0:b029:320:ae39:24fc with SMTP id c15-20020a62e80f0000b0290320ae3924fcmr15899684pfi.18.1625694720307;
        Wed, 07 Jul 2021 14:52:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625694720; cv=pass;
        d=google.com; s=arc-20160816;
        b=Svun0+/7PtrHB92Dij4qyDxzzaq83j7tJe3EyBgCcAZGDPyksNj+xUhJcudtXe4qDi
         G32CLOJggqEFXgqNpWg0hNHalJesgK/LxOaeRFYjuxVvZARfW0cP5oqHTqH2nWndr52f
         WTeDbIckUtPfDOPc3+oXV/zK3IZXcLVYU1Y7yA5YbsuxA9Ra4AcQ9TuZuzJEI2jIcDYv
         3steIfw/jPw1hn0vRuYQEHOfQliSwTO1qaX+kKkOgMJSyshWZFxCfP3+xmOEU0kRGmqS
         PkLbCw/0vnXpKKf7qOW/B9ruxE18LtYJ0Uw5ezzffiLJrnX9GDIDf0iw4K+Zm/XcMe8e
         NHeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:in-reply-to:content-transfer-encoding
         :content-disposition:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=VOolQEaSTby6oDIZVj4TP6SpMrwIHasw+s+/A2jOmRg=;
        b=bwnB0hZQPuDHuMpUD+hfhXkdQDK0Asi8eRntQqDd2RAEDrEchYbtGGUKzjids19Ni5
         ykQfiFfWMW2gHekP0uzf78EbP+cgADpsZgYJFSJuq65mY86+RYPuIsNPWUtlNEQ5gK/n
         B29ASV5kw7dcnztMv7B5uY7qjNLmFNLEWVJAbvceM136lCoIkp2BD3ByHKDK0Vy4O618
         NAOU5r//y5gCxsBs42w1DuSnRoC43/0BQmxcIf/MVAjQqbjH4f4+Jni6NF4sW46ibEpO
         kONA414gc4MqzKr93b0J2ZQNIzS3RkVCUPZp5dq+BFs1mBjzUE2lDxwWmDpmVJLvwIfD
         MbnA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@eckelmannde.onmicrosoft.com header.s=selector1-eckelmannde-onmicrosoft-com header.b=wcCnXxQi;
       arc=pass (i=1 spf=pass spfdomain=eckelmann.de dkim=pass dkdomain=eckelmann.de dmarc=pass fromdomain=eckelmann.de);
       spf=pass (google.com: domain of t.scherer@eckelmann.de designates 40.107.3.76 as permitted sender) smtp.mailfrom=T.Scherer@eckelmann.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=eckelmann.de
Received: from EUR03-AM5-obe.outbound.protection.outlook.com (mail-eopbgr30076.outbound.protection.outlook.com. [40.107.3.76])
        by gmr-mx.google.com with ESMTPS id t15si8850plr.0.2021.07.07.14.51.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 14:52:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of t.scherer@eckelmann.de designates 40.107.3.76 as permitted sender) client-ip=40.107.3.76;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GUwEoT5zTndHo4m4RzIO1obP0Yv5Yhnpn2cAYH7j/89xbngfwSoCek9ZLL+sQmXDwmfmm0PGyWfQXskNnufNdA4t3A9X/vNrvp9yuZkNg/ltX9pO8lEb9BsZGQfSxJcwU+t8WCI8VeS6Mg5vYFDI/fFXY8zES9fyrObHfOptDOMU+3p43D1NaOaLJeVpbsSeVGQzjrgNpkR6B5YNDnOCrvXGShELKjRxTJvKYW4fNBg6HLCOkymbHrslqm0du7+ICshl8LMsi7AkOs1O2jxhm7Y6MyWChGsK/WJ/NqMY81dHroGFAhsn953oHOdSCUrh6tCFYLQa/6LIhZelmPEbBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VOolQEaSTby6oDIZVj4TP6SpMrwIHasw+s+/A2jOmRg=;
 b=IHXh+pOZNvA1ee2uwANlBYYPKZGqjyzgF+IVsILprzwzBoTI4ddycC5umFjiNS9WwyInsTMbPjQo9CFE2IDYQAGGG3Ku69lWrPvieUKjFJmazc8YFeuDCzl+h4xNZAxOR0nvGZdwMMWgXopDFRIm1FXnImBwFDoRIUakKICK1NQH2fqXBdM9R0MTP/r5NIXe12XgX30k0oP9smyQqAG0QZalVDIpLgLvpsbqw98NVL+R5QvC2DH+Js+G6LF+NQxxjRc4l1QCNlRyf6fCa9lzo5C1OobM+hUrVr17GGJ1E+BW4ySaMrfDBvFKolWrato8AItBe15PoWn27GfUhWRhTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=eckelmann.de; dmarc=pass action=none header.from=eckelmann.de;
 dkim=pass header.d=eckelmann.de; arc=none
Received: from AM9P189MB1700.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:2fc::15)
 by AM8P189MB1411.EURP189.PROD.OUTLOOK.COM (2603:10a6:20b:242::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.21; Wed, 7 Jul
 2021 21:51:56 +0000
Received: from AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
 ([fe80::cc15:eec3:792a:3310]) by AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
 ([fe80::cc15:eec3:792a:3310%7]) with mapi id 15.20.4308.022; Wed, 7 Jul 2021
 21:51:56 +0000
Date: Wed, 7 Jul 2021 23:51:54 +0200
From: Thorsten Scherer <t.scherer@eckelmann.de>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de,
	Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
	Russell King <linux@armlinux.org.uk>,
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
	Pali =?utf-8?B?Um9ow6Fy?= <pali@kernel.org>,
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
	xen-devel@lists.xenproject.org,
	Russell King <rmk+kernel@armlinux.org.uk>,
	Johannes Thumshirn <jth@kernel.org>
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
Message-ID: <20210707215108.ervxrkmbitp3l2ej@ws067.eckelmann.group>
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
X-ClientProxiedBy: PR3P251CA0003.EURP251.PROD.OUTLOOK.COM
 (2603:10a6:102:b5::6) To AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:2fc::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost (2a00:1f08:400:4::2) by PR3P251CA0003.EURP251.PROD.OUTLOOK.COM (2603:10a6:102:b5::6) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4308.20 via Frontend Transport; Wed, 7 Jul 2021 21:51:55 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8987669f-0789-4189-d163-08d94191700f
X-MS-TrafficTypeDiagnostic: AM8P189MB1411:
X-Microsoft-Antispam-PRVS: <AM8P189MB14112A254C08C477E55D0F8F9F1A9@AM8P189MB1411.EURP189.PROD.OUTLOOK.COM>
X-MS-Exchange-Transport-Forked: True
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rC6gE/ftYZK0TyxDn7lTBec3tW9lj/B28w6BbD5ivXWqaHoRP4nXvcNJ8XfeyUoBFfG4MfXl/9S9QY2VySRDBaC39YogHUjFC2fk7jTTBQlZF4aZunxi0f9XCSl06OJOVLk9RxBw4e8dRbD0qKqxMHU9pIlFDnrqKqTcQcbpp1XJCa0lRRbqtV5CGhD2/ELe1n0/NDP2b7muZTkL0wXR4zKFJ5camYnJMv8UZYm9yTC/nD2lvZ0NfGITShY/vvuSrYPxSV2PnE8z7jkB5p+VNg84c/VDq+yIjhbTh0t+WkQJ/pLQZk8heEF0kb+iaF1k5VDfV4m3MjIrSh0r/ktwRgzl7hy1IQB57ETIk9tzFM5iqvA1NbPfIq+IN5kTwJEYETCnuiA41VytPvGHvPLiQPRC63hc3oXC3zwxFPQVFYB/S8sbeEuJ+jJQ9vzuCp6GMyhDe4yESL/RfI8i0KHeTlA6Ac1tANyFyK0pb+CKh6KwpO5pjylFcbjuHO/IxkH9TaGHQFvqVupc7hYen+EmksU1QyO04BUbhtCM4lf5q0dYhjxw+BxJC4WnF7dYuoNjUAeEaWxVMT1CqcpOCDBfm9gvfyrR1ulRTvPtN9CKslQT43mLIFxI0gk7OhiSA/FCOjcYh+mZtvPLcUvt1zmd+Koya4XrOLBoQ953aXQAtwiOkfPdMikOwmGgG+Cs5CjRM4oKf7LQVlmsTPef+6WQbSCwES+ucDpz8Dt2bl4H/awHnfNyacdp9bm5cgds2vLnZGOulr1J/nd7hlOv3kUTMLf/rNZV85/Os5lnUzHctgAKqHOOt87+cRR4JU3+J2Vi
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM9P189MB1700.EURP189.PROD.OUTLOOK.COM;PTR:;CAT:NONE;SFS:(4636009)(396003)(346002)(39830400003)(366004)(376002)(136003)(4326008)(7336002)(7276002)(7366002)(2906002)(6486002)(7406005)(7416002)(15974865002)(8936002)(8676002)(6862004)(66946007)(478600001)(86362001)(5660300002)(316002)(52116002)(6496006)(1076003)(54906003)(38100700002)(66574015)(66556008)(66476007)(9686003)(186003)(557034005)(18886075002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?+T2aJFPQNKWhb4+Ca2uwObFqiYZV6tm/GhFjUUp6/pv9n3k3VUjdrnX5wk?=
 =?iso-8859-1?Q?SMeQjUaHfkt0ENh/FcfOh1XbHcJLeqUTO4XnA4hI52/n26pz3kDaFB5tIV?=
 =?iso-8859-1?Q?Ym7mIlWmy73Qj86dkU3NBS+6FVlm0MlI6kjuwFJvJgRpisuclndcqeotr+?=
 =?iso-8859-1?Q?1S7hj3RndxYl9ERCmsKIuwlC1dTbWfGNwEnKuw7483o7YG/E6qM/r6Yics?=
 =?iso-8859-1?Q?MavPrWqrRf+qHxWWP8mqWX+Aprc5KuPDC7oOS1VpjyErJ3Duq1fOU87ROl?=
 =?iso-8859-1?Q?L3dCvA+d6zivgRe+2rrmJv8icGTzxtFYOZbt0U9ehRWPIvDJ9vGhWOnjBa?=
 =?iso-8859-1?Q?KtxZqOKwb3EmDSrNnhEqA+I7bW5hbnFWVh2uocdfaS+cnPpfbf1bwHhUqt?=
 =?iso-8859-1?Q?9TNhVZBSQu3QYYAIxOqCuAEcpMd6ougUYqO4PApAkzMa9ZzoPe0JUhEmLb?=
 =?iso-8859-1?Q?mCkarPJ32C2EqrY667G9nM+DqKuwErGj1RfAT9W5e15PVva6a+kUlW0XpE?=
 =?iso-8859-1?Q?eIYmp4oFp6ysVqHy2OzsX29EnIu+KIizpj1SUDhGcssi9Y8msEtKCizWIP?=
 =?iso-8859-1?Q?pWw84FwhM7bPwyqGgEVOVB0bWxsuHH1WaWYSPh5ExwSikAILxU5oLPchlX?=
 =?iso-8859-1?Q?FfHQp7QBSIhCujsfk1FTId2RpCCBcW08VYOM6hpwCBSBpXCYKYnH/Vyemo?=
 =?iso-8859-1?Q?8t+NGalLYABZIpmhvXGQpKLK/G7cucHD029qQgE1w/hNBkseePQk8fzOCH?=
 =?iso-8859-1?Q?oJ+vl9XWudIM+nR9RVjOVUcEByhVkmp1e0D5MdiZIGgnBpkwHnN/h6b40j?=
 =?iso-8859-1?Q?s6GeleyzZO7FpL4lZ6MhWoEH6woztWFpXHZfWbO2SMO4YuuTtc0e5WLRE8?=
 =?iso-8859-1?Q?1CkKzFJU59m5tsI1SJS7pShljGNwVLUt1RiS8e7kGq0X2DezeCEwdg5h/J?=
 =?iso-8859-1?Q?JqQaXfy/nQDHo7QuqD1vDlsjfjTygy0TLsnktqWFLJX+JgnS9ajqk7VkBx?=
 =?iso-8859-1?Q?B111v16gUndePUB49HliUkxKYaOjaibHdImRubeSpP0S11lmdZrJZ0KLOC?=
 =?iso-8859-1?Q?KwwrjzbGu6McBaKbmG7MOULoTMGACRkrEdhk4deFY91cCS4vPhcx8gvOwB?=
 =?iso-8859-1?Q?wf3toP9xy6dxLB560QqugJyXsK0IZUBaUktCh8oK8uXeI9oJgk8nPXwFO5?=
 =?iso-8859-1?Q?OYR/zzwqlK1M2Gr2tiuZCwMxkBcng4hN87/XgYWqzcoTf2MXoigVZkKQTO?=
 =?iso-8859-1?Q?esdap94X0d9UBcINAYH0mQ/TmK8/4bUkyVWcwGz+8EmG36j3Lpr0/O+HcN?=
 =?iso-8859-1?Q?A0mxv+qRhnsbFLWWtgrUC1IcMvaWqSd1Dq+l4hb3bT4LuFVaHGxaQSagd0?=
 =?iso-8859-1?Q?QBkf6iJb8pryfj9IhAJlMHsVyP+RF4mw=3D=3D?=
X-OriginatorOrg: eckelmann.de
X-MS-Exchange-CrossTenant-Network-Message-Id: 8987669f-0789-4189-d163-08d94191700f
X-MS-Exchange-CrossTenant-AuthSource: AM9P189MB1700.EURP189.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2021 21:51:56.1698
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 62e24f58-823c-4d73-8ff2-db0a5f20156c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ur8XMZiF6bwEyBALI0qg2jMFHKKsDYaGvYi6ddYfgV7bn1VoiuIVhLN4LTrTEmRStKglRvEnKtWfYKCJBBKoYA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8P189MB1411
X-Original-Sender: t.scherer@eckelmann.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@eckelmannde.onmicrosoft.com header.s=selector1-eckelmannde-onmicrosoft-com
 header.b=wcCnXxQi;       arc=pass (i=1 spf=pass spfdomain=eckelmann.de
 dkim=pass dkdomain=eckelmann.de dmarc=pass fromdomain=eckelmann.de);
       spf=pass (google.com: domain of t.scherer@eckelmann.de designates
 40.107.3.76 as permitted sender) smtp.mailfrom=T.Scherer@eckelmann.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=eckelmann.de
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


On Tue, Jul 06, 2021 at 05:48:03PM +0200, Uwe Kleine-K=C3=B6nig wrote:
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

[...]

>  drivers/siox/siox-core.c                  | 4 +---

(For drivers/siox)

Acked-by: Thorsten Scherer <t.scherer@eckelmann.de>

Best regards
Thorsten

--
Thorsten Scherer | Eckelmann AG | www.eckelmann.de |
Eckelmann AG
Vorstand: Dipl.-Ing. Peter Frankenbach (Sprecher) Dipl.-Wi.-Ing. Philipp Ec=
kelmann
Dr.-Ing. Marco M=C3=BCnchhof
Vorsitzender des Aufsichtsrats: Hubertus G. Krossa Stv. Vorsitzender des Au=
fsichtsrats: Dr.-Ing. Gerd Eckelmann
Sitz der Gesellschaft: Berliner Str. 161, 65205 Wiesbaden, Amtsgericht Wies=
baden HRB 12636
www.eckelmann.de

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20210707215108.ervxrkmbitp3l2ej%40ws067.eckelmann.group.

Return-Path: <linux-ntb+bncBCQMFSVRS4ORBVPISCDQMGQE2LH4DRQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id E6F803BCA64
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 12:45:42 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id o189-20020a378cc60000b02903b2ccd94ea1sf16344341qkd.19
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 03:45:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625568342; cv=pass;
        d=google.com; s=arc-20160816;
        b=UhDUkDVJXBEw0vRqJ9I7+F2qbylhUehl/gtPPrex5NGPDa6XFt6zcG59Vho2UNnYfs
         DIjcGuOzP+f2/IOxhtVnEvH1H9CwK1UqgXkgh5FWIK2hjM9pIY7ci0T8TDvSfKphPTHJ
         h9JnnrC9GT6AVjCxvXVrixhx/5gVJjr/7sr4iw8QqsKEzRkpEHtU1Sk6shCDZ4cVhCPJ
         E0Uyee2A5xEgd4RIWUMHkWKPtXF6/HLAiWzwmpsfFiHnVr93aBFpfAR45KSc0Vm3ckOS
         Mlew5ynxXWDd50XG04edZoBlU9aZZ8wcmUWZMyRxPMktmBEpXNKDEM+sCsUuTZOf1eJG
         2QPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=CVxCqbuGsOr4SJT2X/Gl8w0lG+0A312oWef5iauuhsQ=;
        b=A46Bdcj3DsjxV39EuTPw1kWbmV2YqmJiA/0xMN7/OMtUzcGNR2c6HxBjGoJqJ03BZg
         O6X/njm/nyb2uYQn7H1eCA1T36uChRItLDvh67sgnjMw2oZKi8ORWKy29xSzkPGkPqyZ
         1+qYjJOvwr2Gd9JaK7Kj4oo16QQWJk6C0z2geFXVJwvuvj1M4cNRued7959NXh1jNLEh
         MUaYHAdQU6x+Zc6x/zMonYki9bkvOQM0lOgOztv9Naluk6d9SXhxij5qLnsPfUWbA4O5
         0jZYuAnUbSBt25UcuN2L34kFV+BYg361SV7hxU5SfVuOy2MP5uVzMVbGACbA2l+bQ7VY
         8xmg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qnDz57Ox;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CVxCqbuGsOr4SJT2X/Gl8w0lG+0A312oWef5iauuhsQ=;
        b=GR4ayHvGdQplSdtbcyBSyzovRFAyp8Vf01qDt38ETG42PuElhCRbCI1wemshgNMVLW
         af0H4RLZd9pQ0X0XlBDkjd+rsJrZBnRgyPvuLLnu//pbwArgaAQvx+jaTBplaNhwUiby
         s/VMYG/QYQrfVy3LfzYlTxj0QnXA9Mw8Fs9W5lN1tj9J+x56kmTzv+LahEgZ6LTJvsr5
         QSMfkOLMBQmCcabgbn4+kWEq1XxzTA9f+iIoUS0CsTCopMcX5WlZeXNyA0atNFRawN96
         /WvxQ1OefptqwJ1RvtHnWdLgq6quErFLEkwyM1g4WRX/PQtKP4k0Pg0XrNzRR1JTeHE8
         tKnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CVxCqbuGsOr4SJT2X/Gl8w0lG+0A312oWef5iauuhsQ=;
        b=Y9QQBB2uDKDwolqsH5DIH/A+wKFxgUSAnd0wOlUlS4IkEUOi/ZIRHL2mGZIGohgFrR
         7rFiTs0ic5imgHl2Y6Ac999ZgiL3Ny7WOq6y6RfZZ5NhODNu+qdAqagSiZr3/VS+YkHN
         vsu7QY4ejTWTR+DTYSJaH1jrOnhB9LbQqfWIZHXvP0JRsCFixNgRlx1nM9zBnv3e0gxv
         8oj9YYxsdgI0jCRi95b1f69gP5qIu2NduqizriQLOyYmNO0TNsmWIkmGDo7FtAybbTiz
         dibuNJPYlGn/8WDuN2iZaCGCHMDyiyOyd1U1Y7qfnr0k/p3vgJvqJo4Xyvi3jzmHgRQC
         sqJQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532RHmWCUUIdYuUBdpTa2Zk0Ppl8gY0ruJc4lVOSjh/VdTEb3c3c
	0jpysm4cJOaFO47+/EDmh9A=
X-Google-Smtp-Source: ABdhPJwyfrSA+3MlYJN1sdKcs27feHa55lFSsWF2frvPymNz9ZXPO4vZ0kljyf15HEPcMo1EuXI/sA==
X-Received: by 2002:ad4:4711:: with SMTP id k17mr17336284qvz.49.1625568341928;
        Tue, 06 Jul 2021 03:45:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:b3cc:: with SMTP id b12ls6452535qvf.9.gmail; Tue, 06 Jul
 2021 03:45:41 -0700 (PDT)
X-Received: by 2002:a0c:df13:: with SMTP id g19mr17849786qvl.52.1625568341526;
        Tue, 06 Jul 2021 03:45:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625568341; cv=none;
        d=google.com; s=arc-20160816;
        b=DrhzrrmqCbl9vzjqss6s5WYw7TopdAjb5JwWBwm/3HRxFDOhQAFxw4v0nmAY8NgHBG
         orlReyBbAGwwDwjib8pOMEhCC7CerXv4KSLeQUG6h8fVyqGtspqjPNkDslhNWndzG3ja
         roP01VYS3DgrRs5nYGYIXGQ/LJkkxXQJeU8w66lxO2Ti6a/eMACueZo3qkll1xZtFUhg
         6msddBFv/lMnN2hgivs+zJ+tnrJydZHt73hPK50YHg59BH59uKfDa3yt2ZhW0hNI/Tyt
         1QUY0bj8njLVy8bnFhgkCJU2dQ7t9hy+khwNOkOQ2u1EEOAq6SK3JalV38lu+nFyTl5z
         /KsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=xfiNDhGvZdFrh011+WKBwFGxjdbzuqgTzeOwx2YHGBU=;
        b=NP1gKT8s0KvKnnvh6j45KEtj+TVYnMEzmYG9a/mjZmwUVccvjL/RGcTQ76MGWRSFgC
         +rzNpKfFvawzZT3uDPSAEx2VeWT5lHj3Ex5fsYK7vOwcb184CeDG+2FH0Mmdcgp8xY7t
         mjVfBBgKTU5MnAZslJnCusFF96QvpOpWD4xKCjTIsRGyllNjNgX29iIdDw/ES5eNcdCc
         u2Kus3sBvUw6k+vZWDnbxcNapud71L4JBZQU4cbAsSoI789+L14wgq9TvuSbehSTSWmt
         aBg6+oxzeLdcThMTDrmSLO/7wuYITQzfl9DI365gzZgS7ASQWCBUGLe2nU88U1Xpx0Pc
         yG5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qnDz57Ox;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f6si1056911qko.3.2021.07.06.03.45.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 03:45:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B74ED6115A;
	Tue,  6 Jul 2021 10:45:38 +0000 (UTC)
Date: Tue, 6 Jul 2021 16:15:36 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
	Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
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
	Dave Jiang <dave.jiang@intel.com>,
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
	Pali =?iso-8859-1?Q?Roh=E1r?= <pali@kernel.org>,
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
Message-ID: <YOQ0UPduZkhZ+CmB@matsya>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qnDz57Ox;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On 06-07-21, 11:50, Uwe Kleine-K=C3=B6nig wrote:
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

Acked-By: Vinod Koul <vkoul@kernel.org>

--=20
~Vinod

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/YOQ0UPduZkhZ%2BCmB%40matsya.

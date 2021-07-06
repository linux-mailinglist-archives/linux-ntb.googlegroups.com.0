Return-Path: <linux-ntb+bncBC4JBM6XX4IRBSPKSCDQMGQE3TI2BXI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id AF9A23BCAC6
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 12:49:46 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id k63-20020a37a1420000b02903b4fb67f606sf5855123qke.10
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 03:49:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625568585; cv=pass;
        d=google.com; s=arc-20160816;
        b=d3a5wIZL8nygpkG1FDkL5yUgmR5E05dZZp5F7uT0DklPzkAMGP9iQNn2AD1Osa1u2i
         w1MwIbSXZmQSAYcCVaxBf/lWfSI5XqKDPKklHhpzAjGN0sTDlAvTZ3io/N5fbtMNExB6
         Sy+gWopvZisDa6DQJ8atSnDKXwd4X33iylEldexHy5mN8+rxGbx/eAc+Lvp4z/pCFj8P
         K39mFRJET7dkwiDnjSBNu9vTk3GJDwbDza4YDAKO+25I+RiGoH/GgdW/tkqTv+i+Pzar
         bcBL2v5/87lYfHeItPOZlRxOG8mmFrdL5zp+24OkIZWbIiVkk9TgD0r5eJx1ErBG9UyG
         a75A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=C1Eo5f/7gAnYDh7cYopING2eIASa0gQ5axfLl7VZ5Q8=;
        b=wYXbKJD+sRs+E/4DhIxknt1igS8XqX1fd9d8tF09QKsZWs7ieY9gqPlQ5M5UulrR8F
         h5088drd86Gpg5I1YRSEuBDlp4KzaoXYuCga1/JPetPZ/VkfxzxRVQyZWiWnhtm9BWav
         dQDYm1mx3tEXV3xVBvH5YmsfNJVLgechiJDdzjSrdj5NZ7KVw8XyUQP4L5O3L5N7M+wr
         w9kai3K4eGnlch51J3RzGCdRD7QAUooVr5Jj+EDnmr8mAlGH37HCap7ZjBHxRtiLCWfC
         n+CanDjwUy047sEm+AJWbVac24XJJcYtgpMAVoijxr8vInWcXPiZ6ftLTI9yNEAIqEAW
         ZKHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XLBiGX+c;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C1Eo5f/7gAnYDh7cYopING2eIASa0gQ5axfLl7VZ5Q8=;
        b=peA/DGt3Zd9gWCc/lp9YCbgtXDFdbRXRm6DMZIu9BD736WTbmmpQSDmyYRwAMdd06T
         kmBG+LOjih82wUKAakbBQTF8y5cnIFuOKr9DJSMdqga1bf53M9D6vpPn51jJ3MGBhuNs
         0iisZNN/1IQ23qOAxrmCAPJK+NyB27hbbweWMSgOUlZKDDxdDDydEU+hDUirdFaJCodA
         EqXDzGi1a6Nz1xxUhIC7f0elFt7Ck64RYQiHHo9dZBlDGnphdbMk1U6redcYLtSgI7Cz
         f70RH9PO5oEghYsq0bKZQ8vYIZpv4dQqlaEjFP6omkwCDinZC4eKnPjjGjN9I9eyn2/9
         DsSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=C1Eo5f/7gAnYDh7cYopING2eIASa0gQ5axfLl7VZ5Q8=;
        b=ndOIAlmo/i9JcVhXn+dqa5JLtJD4QhuwLOg7xApXhLjvDfoawmlFXczgfIn2AL6Gkk
         e0N0njxdECEkr+B/9MIWrCHwuHGtLWWzaQaCcv5pAMcmkOtCNF79oafiZw2k+NJT4JPr
         K85zFTYTTAOANd1AdXBY5zc0j9Q9I1on7O0xqW1/k5AdolaJC97RPKvMBQpXZFZrE3yJ
         ef1azFMYqdYIiE6IBGZnKoECqDUCA55floDg0UZAH/lOe7a0dmHEFsQs0SfMcT+pXKoQ
         V+vmzk30AQWBjv8VpAd+GlWvoQC8a1XIs36Xy1a1GecyU3IFmFdYKtR91kekH47rDuNu
         MkMg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533j/RnJTF/nBVklKX+HpKVRJsRCHi1iNQN0uIYsdsFerRGdHIeY
	v/CVF/RmWJ3wudk3lkLLvxg=
X-Google-Smtp-Source: ABdhPJybzbqe0TAsoBwoRFyokv43kkNC31ilG8aGCjL75RRwF6ffvu95vhekK+fMMsBE2ZZ9rZMklQ==
X-Received: by 2002:a37:6314:: with SMTP id x20mr11764100qkb.363.1625568585834;
        Tue, 06 Jul 2021 03:49:45 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a0c:d686:: with SMTP id k6ls4588862qvi.11.gmail; Tue, 06 Jul
 2021 03:49:45 -0700 (PDT)
X-Received: by 2002:a05:6214:250f:: with SMTP id gf15mr17500476qvb.17.1625568585446;
        Tue, 06 Jul 2021 03:49:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625568585; cv=none;
        d=google.com; s=arc-20160816;
        b=WQLHlE0dXhVahcseKf4Gye4jXkDfAkWhs1cmTbzWzOBeyK5P6P5C2mgsFq4DgLFXBX
         HcXnsV0BJPX7kiwNUCfXvNsLLtMvfXNlYelN1+BtsovRwPJg9QNmyHndlS37Lrr0wTvt
         Yqr9amx0nQxeqKuaoPQW4x9zbixtwvWLDoABuztuuFjSxSj5i6vH7x5M4sofF3yzRZMj
         urf7sHQr3OmtxmQQG8id1GAJuBh/CbpYDOdNx9geaSAKe2XWX7+q4iK4aPjKzJWweElD
         dajt52frtMj9kC81VtMYUCDUFK7ugUF0EguAKdawHj0fI/Jwc+AGvxdvsBExc0tfWXff
         o0Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=oqFeMs0t/tulKyivs9XdEykvS3IanrxD7xZ+q/IUdM8=;
        b=yzJSb691/YJDiHDJ/Z9Lm1OorBjk5kUO63JmhVxxHz1kfaOSYkgYCDL9YK4RUXEqKa
         yjzroY/YhxHSXWjEBtibsvLb4+HP7vvfePxXt98VCGHewiu1/h7P1/0ZBpTtwYJawaN7
         2CtZuYahw4DGLvK/n54qvSPGHkG9JfhNnF4BB0/4DPK/FHGy81hDhZdIn45zAjYGFw35
         xCKqVW4GK3PocXF/WlGBdHJ4+3971VesPWNJGaTnhFEmhSzVl76iPUBz5DZbPp6CisX0
         gFY24BbfM+KHXGVeF6HxWqF+iAOcjqCQahnLqseHieM4wCbPesWOcCI10PN3cWn/LBSP
         ohFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XLBiGX+c;
       spf=pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=johan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s19si899049qtk.0.2021.07.06.03.49.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 03:49:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6A11E6113A;
	Tue,  6 Jul 2021 10:49:44 +0000 (UTC)
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan@kernel.org>)
	id 1m0idy-0003U8-8E; Tue, 06 Jul 2021 12:49:34 +0200
Date: Tue, 6 Jul 2021 12:49:34 +0200
From: Johan Hovold <johan@kernel.org>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
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
	Thorsten Scherer <t.scherer@eckelmann.de>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Andy Gross <agross@kernel.org>, Mark Brown <broonie@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>, Michael Buesch <m@bues.ch>,
	Sven Van Asbroeck <TheSven73@gmail.com>,
	Alex Elder <elder@kernel.org>,
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
	xen-devel@lists.xenproject.org
Subject: Re: [PATCH] bus: Make remove callback return void
Message-ID: <YOQ1PnNT26VsRfLf@hovoldconsulting.com>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
X-Original-Sender: johan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XLBiGX+c;       spf=pass
 (google.com: domain of johan@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=johan@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, Jul 06, 2021 at 11:50:37AM +0200, Uwe Kleine-K=C3=B6nig wrote:
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
> Signed-off-by: Uwe Kleine-K=C3=B6nig <u.kleine-koenig@pengutronix.de>

>  drivers/staging/greybus/gbphy.c           | 4 +---

>  drivers/usb/serial/bus.c                  | 4 +---

>  include/linux/device/bus.h                | 2 +-

Acked-by: Johan Hovold <johan@kernel.org>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/YOQ1PnNT26VsRfLf%40hovoldconsulting.com.

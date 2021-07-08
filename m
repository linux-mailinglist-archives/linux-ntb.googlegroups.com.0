Return-Path: <linux-ntb+bncBDF57NG2XIHRBBHFTODQMGQENVCIM5Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C963BFA5F
	for <lists+linux-ntb@lfdr.de>; Thu,  8 Jul 2021 14:41:41 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id f15-20020a9f2bcf0000b02901f8fe91b89csf2432520uaj.0
        for <lists+linux-ntb@lfdr.de>; Thu, 08 Jul 2021 05:41:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625748100; cv=pass;
        d=google.com; s=arc-20160816;
        b=VAsSijqZpjL+d/G/mH4+U/fu6HLbT5d1i8T3oOWtX/PnGLbLtvM7WBQyygvDRM9ALz
         KfCZMTZUCLwLMotFTo9bzemO10zHRWVw1722L+m9IMiIFgLgkP8rEF0GOHQvprKiR88R
         RMkVU4OIPmCkCgFRkl0oFr0Ts0ZswcRU+ZtxuLFKFMSukLuMK5Re7NLY/KZNtR95AK30
         vUBzFejPGOPGiXXx38SO27q4zTb5S7Yts4fZpqzHmfLuSKWQOTj/Rr7yqwZ2lF41qu7T
         ntOmZEPx0VpsbF77txuwiI1UFDAFzraU41yYah23mc+/0UE9r7fzMaEa/4nuWO66Oenj
         CIrQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=vXkYCvof3rpkQ3BI2GdKBHR8da0KJbeqG8fG/Zw0UzE=;
        b=cIfhK+ZfFUhz0jexeVpzL+6lANbpzsQ9w2DOLJAooFuG43tf1gw4ucch0aKyMrPGnU
         B5zkUuGb87TjjmgwefLSDRa7kD2rx84TYdeYnBLaNeVEvgevfTy+AdKqMeTUgO8kBjlu
         KH80bM7GVdBOyqc7IxEJeKJeXoa44+geGKQdE2j+oW8xIql46hYrryPjr8PPD4kOZ3h1
         bymMCXElGBICH69CI/r1SdKpCbXAEkfeyNjF23bd2NhEYWTWnbDPcdVyuhYKL97SHUZ1
         lWIGVAdt9dcvNhZEfSuWTNZs9adct7+atkgAENGJ/8a3Ly9ByaeS7wulQKAYEpN8Zm/w
         V/xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VetX2Cfr;
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e35 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vXkYCvof3rpkQ3BI2GdKBHR8da0KJbeqG8fG/Zw0UzE=;
        b=Hj9n4949WJy3GzlI9pYjKgwn31x+dUT21TUxWstQ3TOl0VCcMiWBkL2+wrJIWURCv9
         of91xoMbjUFWmclbInJBSR651H5MBA2lhjjdmMKCSZoU+pLk2bikZfbZZY6fT29RxVyd
         AaqO6+5QPrha2BpMWqu7I8Z5VyxMJmibMBPxy5flHH4c6IwuG9W9ZVM7VG425Uz4Thyz
         OAdl6OcIUZo8aQvC6uwfT/XBWAqctrCOio+ollX5soNFaXPR6AzuqJG6Ooz+7vYpgWsT
         3y3tNfT22kJ3kx7vcKUoWpZ65Hp+2JC10iCIS/uExELP7Jof1L7tpEyr9GreJzkXAwp3
         XjRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vXkYCvof3rpkQ3BI2GdKBHR8da0KJbeqG8fG/Zw0UzE=;
        b=Gr8DrP9+zP8qLRfMUT7RKeHLuQDS/6FhrJkPihqk6Xu6pHwl29DHqSo8xPJNpVCBG6
         hNSOOEziHi2/tJuGQ3kIpvU5ao6upGTl/uROareeedfQC6Ykq7xJzXxYsCXAxWTe+J+S
         IS8YhVdYisk6X1HILkK5riu46Dn4obzNp1pQ55ApJCZlcoiU0IipsL6RGR47BRejURCn
         9bNV83mAMmK/xrjnBpKgqo/hmC+FZyMnirTIjFy55mo3YwSwtD+S7RuzFIkuCpCXxrAn
         aEpTqmcNgtrjprVVD4+6KXMJJROIrfwixMFKAkHVmTNHDsoRoT0/wXsw2isJBI+c6a3Y
         l2rQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532jOIOiHOIYKLvczupj83jMN2TvfLxDZUsoes8CchskEmKuPvS7
	S8hCEZez4rXuBvu6RUmRInc=
X-Google-Smtp-Source: ABdhPJwBCaTe8DhAzCljdjIpot5rWf3iBmc5/Rt/y6zOpM+PSN3q2WZ3sOIJjNLMn1fWKbf0LAFAAA==
X-Received: by 2002:a1f:9b95:: with SMTP id d143mr24893739vke.0.1625748100105;
        Thu, 08 Jul 2021 05:41:40 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:f344:: with SMTP id p4ls641050vsm.1.gmail; Thu, 08 Jul
 2021 05:41:39 -0700 (PDT)
X-Received: by 2002:a67:f98c:: with SMTP id b12mr27995063vsq.40.1625748099712;
        Thu, 08 Jul 2021 05:41:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625748099; cv=none;
        d=google.com; s=arc-20160816;
        b=RACKn6+Q5wbH+Nd5Yo46X9+p1tVw7GsK5lnLlw/vFN3suKom6F8L2JgrGTKqH+Z+qb
         ZoI7wRlPBDezFOsLFB1LucW7aqM5/LWrAVHzgFoMVts9SVDYijiP0rO0n7F+xXjhV3VK
         87nZ/kCun7HDTXZT/KP7CRR8OsC4E+d5iX/lcQG3kO5fzHaZaz3VRxhjTctFapb2RIGY
         S352XWxD8hz9orbWpHWnjlDAO15NHccsiogB+iloUK+mThRr5lonRdVMH0mHsZZCpY84
         sap5+L2ZnOu5R91pYKq//PMzu6TvGP6l/YhnjQqQ7AOTSeDHLMMCes2oE1kMbKrPp2/8
         b5zQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hP9H7HVTE7TFrRNTl1vyqWVVeZcuqXBCZg0bGqclL/A=;
        b=vcdJYdB3S/OoFkdB4hkeHpZyMBT3fuPROewKtwRWt04mYKX0xWDQom9R10Wyjycom7
         hbh5sQFYPFxy/UMqz64yEHebiYkN2/iwS58CukaX2lthS1noKjZO/vqYctk5PeMEPYpX
         8LqUWE9NlmUnO1LQ4vNYwT0+LufbTVCHq3/F4xG0MV4tqbRaYZFrDzmhPCzg/zeF/9cU
         WbD35Om0oav9gLatTNgPsLJ1oW/EAplCYalISUzy3t4SQAqWMnH/Lfgq5ISuen5jhAQx
         Nu9xvroYV4rUcK3zjWNQYIiZz9bLWqyCwtY4BVfn7FenhjhI6rH0au1/+Ml38xRRYNgR
         Jj0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=VetX2Cfr;
       spf=pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e35 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com. [2607:f8b0:4864:20::e35])
        by gmr-mx.google.com with ESMTPS id m8si289729vko.5.2021.07.08.05.41.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 05:41:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e35 as permitted sender) client-ip=2607:f8b0:4864:20::e35;
Received: by mail-vs1-xe35.google.com with SMTP id u11so3497474vsl.7
        for <linux-ntb@googlegroups.com>; Thu, 08 Jul 2021 05:41:39 -0700 (PDT)
X-Received: by 2002:a67:8783:: with SMTP id j125mr27888650vsd.42.1625748098931;
 Thu, 08 Jul 2021 05:41:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de> <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 8 Jul 2021 14:41:02 +0200
Message-ID: <CAPDyKFo0zuooWAkuR=BcsvcJ2pmSrcEoBhuC8+ne18GQphyPHA@mail.gmail.com>
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
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
	Lee Jones <lee.jones@linaro.org>, Tomas Winkler <tomas.winkler@intel.com>, 
	Arnd Bergmann <arnd@arndb.de>, Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>, 
	Jon Mason <jdmason@kudzu.us>, Allen Hubbe <allenbh@gmail.com>, 
	Kishon Vijay Abraham I <kishon@ti.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
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
X-Original-Sender: ulf.hansson@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=VetX2Cfr;       spf=pass
 (google.com: domain of ulf.hansson@linaro.org designates 2607:f8b0:4864:20::e35
 as permitted sender) smtp.mailfrom=ulf.hansson@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Tue, 6 Jul 2021 at 17:53, Uwe Kleine-K=C3=B6nig
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

Acked-by: Ulf Hansson <ulf.hansson@linaro.org> # For MMC

[...]

Kind regards
Uffe

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/CAPDyKFo0zuooWAkuR%3DBcsvcJ2pmSrcEoBhuC8%2Bne18GQphyPHA%40mail.gm=
ail.com.

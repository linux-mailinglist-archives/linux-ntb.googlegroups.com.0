Return-Path: <linux-ntb+bncBDUIPVEV74KRBLEDSGDQMGQEWUDALJA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF1D3BD287
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 13:42:37 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id e13-20020a5d530d0000b0290126d989c76esf7054634wrv.18
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 04:42:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625571756; cv=pass;
        d=google.com; s=arc-20160816;
        b=dTmXx1iY+cLHE5gOq7deU7wCRk+9G1Qw/zyVK+cppDwnRd9BK7pdvASJgPX6+VWVfT
         MFCTQQWaz9Zk0S3QIUCZrPM8I/19TDAAtqOqMEYJQzIq/ru56dZ//f4MesR7MAcxI9ND
         FB7cwy3yYapo+ySrlija2p98EcmoZEPnqPyqJBBeLQV0doHPeNIdO2Zm+eWNwfjk9V8C
         2yxUN7COi1FpQp8tPUEn5S9mXqWVxRCqcKb/cQW4smr3XxxurrmT/Z+DecxpUMfWAA6b
         A8kCrYjDknewYaHhrPBrNLgsNUk4uLwM+fks4Qufwk2YUt/zdIaahK+73gVqeNTBtwzj
         AUnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=wKTQbGwM4hhdTP7ihYT0gXTTVOnfpJ17xNxgvo3y0U8=;
        b=yuQjWg/Fm25NdDV33aILeJvOoRbSTNCG7RQFoXadmwnDWr30Uj2+ADq8yfrw/6m5Oy
         b56V/PvtCgZtFm+xXC3LfQu1tX1Bh8Td7fZxmlmxANXGPjLZfYpTXMHJWIrNtWkWECGQ
         OgkfKIAdfubQu/tZKLsBUkufe/CiSkX2mGizmyDIRcF2FWWtg8gDP+vlYyDmoXNeivZU
         SIj6GC/uO+yxCcbLL8X2MZ0bgTpPufl1oBRFJVia6Y9ktHt6XpRkrZ+stIHt0lnjlEhz
         AEOsGDaf959kcMapc2aUQkbHfwy3Glar+GL8QSzictr27f5CFCpDn5TIrrVIExiaLrAO
         qCZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TwRJy6+J;
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKTQbGwM4hhdTP7ihYT0gXTTVOnfpJ17xNxgvo3y0U8=;
        b=Qa9xrm5H80b000oy2beEq/POWEVxchDey0Gch5F0k2u/bwIgeJeykKyv60RtR2Dxux
         1YYNQdFUnoFWHvzPG45HN4ZXHvHaotba7U6iv8Zc6TtSDKHXcGFy4lzuNc42zPP0Vfwo
         m31zFEoDO35P7e6+y+gagvJ3f9vFdBMu7vGhdUwNLYCuGceYRWlhKFwZftkxikBLJ5Mx
         IEg7zYk0/NB6zqMO+lIC803BEud+dRAhC0vhfi/krsjiJ0oKs780l2i6RBcGkGl4Wv1A
         rAmE+YxzwqsZdFZlvJJDUs/TnN/09qhwyRXeSrRJpZK7Q7YAKYvHu0MLnZYnvHm4Qwts
         kWiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKTQbGwM4hhdTP7ihYT0gXTTVOnfpJ17xNxgvo3y0U8=;
        b=LHXwA69qw5Mo4+t0JEW/ixZmEfHd0mhQ9F/pPipHW3EpnCLBDDNhX2yGQY87xFaVNJ
         yDuMk5c2z0ZCmOdBnfLt4Vs9qIwfJZRn85J/F9QjdET9upd82qO22qdUs8rXp5vQrmXh
         hxcECZYRaYHaY9leRYubIZtpjNTjktML6PhJmg1Ab/G6qd6DbZuy1uWQod45Vlcg/Txl
         rFnB0a4twPv9+sc8H2IULaDbHZRj7713yOyRL1GjUDcPupdRf21cFJq7abKubkRBUM+o
         Bh31bMz92avV0ibHVxKeGXhvyCQyAlo4oaEo1uM6rArP6QFSdWZ1KhyrpaAoXNYhok24
         mkIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wKTQbGwM4hhdTP7ihYT0gXTTVOnfpJ17xNxgvo3y0U8=;
        b=oWSXjwULQKufim3/WCiWcMrDmu55LcSx4N6DJ1xYxrlta0MXSheZztnXoFXJ+LYsz3
         88cArFVBqi/K0cQbRmxfyqsSoW35rSanda70XP9jxjvbb+00WxXmshgK5NA38w6KcGQG
         skH9sDHrVmtqmHs4ejaSWS5L2m7FiK5+12W7XFGrJqgeE/jhgqSKDfYpZl2/h2ZNpZMP
         01M/L/Qsys74v9iY16hevuRwnR/VpFBYcGLzWztHIldHI5pMbsUUi+NXnLJVfcI8v0Cx
         Z7ztJEMh0nKsxBZm7T4cQ6+ClLnrPGqhS6EPgcXiRbHlaebfl5Alg/cpfaGP//tVX2Sn
         C31Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531l4bQ/ClNxHs4lq85R1nCC8kFifoCUFkMZOvRAV0CvE7rwRT5D
	Jf5d4UmaDiGjwpp/tAw0kd0=
X-Google-Smtp-Source: ABdhPJyiWCaPC7Q8ycnev9VBrJJePq03AE+iT4guZNM6m1T083j90Vli8SV45W3T7sawpj3p4Yy+Ig==
X-Received: by 2002:a1c:2cc6:: with SMTP id s189mr20408505wms.64.1625571756819;
        Tue, 06 Jul 2021 04:42:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:adf:a141:: with SMTP id r1ls1126843wrr.3.gmail; Tue, 06 Jul
 2021 04:42:36 -0700 (PDT)
X-Received: by 2002:a5d:680e:: with SMTP id w14mr21260406wru.58.1625571755946;
        Tue, 06 Jul 2021 04:42:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625571755; cv=none;
        d=google.com; s=arc-20160816;
        b=jSqy75LJCc5yBOvqxe2NhbnN35w7lGJdWN+fiu9+jhtMrH0NQ2hBcWvszDYaG4BSA4
         /XwMsQW6FVgONI6YVrSI+n/NseUwcEMUMp0kCwBHPAX1IxV+OPZ5kWL6POjNfra5zka/
         HsDiYE/bj7+rQ0OJ1XQNzEERT6Zy4t4roder62sRSaVc7+qKT9g+CRyVBlezS57mCOh/
         WLEplvKyig2XPvBpojLQP6yQ77VdfMVZl/pVPE17xGc1Q57qYT71m+tjXK5HxnV1Va4O
         X6Mb2BRJenD9iI0fWtE0CQUboPdmPRawt6bLNoQlVNU3dAR8/ZtvMRv2ubXxluKiOQE5
         MUVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=CDGtQ2yb8IShQ7cIRYFiJmp1Uu5BANeA/6Jg/xILJy0=;
        b=tazchiYMZvmMYZkXwV4bQ6hIosZ756OLxZs50m24aaKfE+h+4Hh9IIKz95jKuHTDLq
         6iMGJWSwN6oamFVtkGaYkmVKLNnPOG0mWsFw0Xz/HHLc5gNn17P/txvWUDGbbUMa+ZvJ
         IMR7oREsbJYGALEm7AQ7nCG9oheinhFsOmtudb+I65Kq4CRwLkJsO7CyzIY0rZjdCC2Y
         vtaJKMHk+v08zvI7ITkpVfr8h5krlQqRWiE86SSIUdcmhBjoNbliKfnbNUyEfPHyHUef
         wf6nGgTb2QmdyumKVnfd8v1U+K6ui2+El+boeTYFo2Nh5TXs0jhJ/rli66FRPMqSo+g/
         8vgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TwRJy6+J;
       spf=pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com. [2a00:1450:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id o17si600687wrp.4.2021.07.06.04.42.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:42:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::52a as permitted sender) client-ip=2a00:1450:4864:20::52a;
Received: by mail-ed1-x52a.google.com with SMTP id y40so12436403ede.4
        for <linux-ntb@googlegroups.com>; Tue, 06 Jul 2021 04:42:35 -0700 (PDT)
X-Received: by 2002:a05:6402:1c06:: with SMTP id ck6mr22330893edb.287.1625571755735;
        Tue, 06 Jul 2021 04:42:35 -0700 (PDT)
Received: from [192.168.2.202] (pd9e5a48a.dip0.t-ipconnect.de. [217.229.164.138])
        by smtp.gmail.com with ESMTPSA id eb9sm5646083ejc.32.2021.07.06.04.42.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:42:35 -0700 (PDT)
Subject: Re: [PATCH] bus: Make remove callback return void
To: =?UTF-8?Q?Uwe_Kleine-K=c3=b6nig?= <u.kleine-koenig@pengutronix.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-kernel@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Len Brown <lenb@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Jiri Kosina <jikos@kernel.org>, "K. Y. Srinivasan" <kys@microsoft.com>,
 Haiyang Zhang <haiyangz@microsoft.com>,
 Stephen Hemminger <sthemmin@microsoft.com>, Wei Liu <wei.liu@kernel.org>,
 Dexuan Cui <decui@microsoft.com>, Johannes Thumshirn <morbidrsa@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Jakub Kicinski <kuba@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Hans de Goede <hdegoede@redhat.com>,
 Mark Gross <mgross@linux.intel.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross
 <agross@kernel.org>, Mark Brown <broonie@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, Johan Hovold <johan@kernel.org>,
 Alex Elder <elder@kernel.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Rob Herring <robh@kernel.org>, Jiri Slaby <jirislaby@kernel.org>,
 Stefano Stabellini <sstabellini@kernel.org>, =?UTF-8?Q?Pali_Roh=c3=a1r?=
 <pali@kernel.org>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-parisc@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 linux-acpi@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-sunxi@lists.linux.dev, linux-cxl@vger.kernel.org,
 nvdimm@lists.linux.dev, dmaengine@vger.kernel.org,
 linux1394-devel@lists.sourceforge.net, linux-fpga@vger.kernel.org,
 linux-input@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-i2c@vger.kernel.org, linux-i3c@lists.infradead.org,
 industrypack-devel@lists.sourceforge.net, linux-media@vger.kernel.org,
 linux-mmc@vger.kernel.org, netdev@vger.kernel.org,
 linux-ntb@googlegroups.com, linux-pci@vger.kernel.org,
 platform-driver-x86@vger.kernel.org, linux-remoteproc@vger.kernel.org,
 linux-scsi@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-arm-msm@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-staging@lists.linux.dev, greybus-dev@lists.linaro.org,
 target-devel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-serial@vger.kernel.org, virtualization@lists.linux-foundation.org,
 kvm@vger.kernel.org, xen-devel@lists.xenproject.org
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
From: Maximilian Luz <luzmaximilian@gmail.com>
Message-ID: <07c08230-6c71-2a73-c89f-05b9b5de78ab@gmail.com>
Date: Tue, 6 Jul 2021 13:42:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: luzmaximilian@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TwRJy6+J;       spf=pass
 (google.com: domain of luzmaximilian@gmail.com designates 2a00:1450:4864:20::52a
 as permitted sender) smtp.mailfrom=luzmaximilian@gmail.com;       dmarc=pass
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

On 7/6/21 11:50 AM, Uwe Kleine-K=C3=B6nig wrote:
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

>   drivers/platform/surface/aggregator/bus.c | 4 +---

Acked-by: Maximilian Luz <luzmaximilian@gmail.com>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/07c08230-6c71-2a73-c89f-05b9b5de78ab%40gmail.com.

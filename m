Return-Path: <linux-ntb+bncBDNOHVNAXAGRBL42SODQMGQECGNIGTY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 517453BDEF8
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 23:37:53 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id d14-20020a65588e0000b02902288bbae35bsf158135pgu.0
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 14:37:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625607471; cv=pass;
        d=google.com; s=arc-20160816;
        b=hzexGPrao3pcRcopwsrf4P10O1Gu06stz6rGfZOvqTIKp9aFvGMi2K6kSg7tEBzYhW
         J6HrmTwc5saxXHhO2S2k4i1HUTyc5BFc9JBITgKangT3oq3pIqcemwNMyv5Qn61CR/pH
         w8p3vVivcIHkJDMKn1tM+PZqrBaiMfRyv+uLRLjEEOttIAEhT7fjJBD+Xm6qgyROackY
         88Oh+Z8Llw17bSAMpZiL+lZk8Qk4j3ObWjm7wGCBkib8ldlk1FTEaBrxjYWLXhcK7Dn3
         XEgHIpkZrOIPqnRCcCDpGq+Z0YIs5odhdmShhsVmlJKiGAzQcqlMRcZ7WQhYi0XPpoOu
         rdAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=hQAQZrR4LvJFi+0eeeQin+tFYieUC642TSdH+E9H/Ao=;
        b=yA5K3k9Y9kk4Q7Y6qq7MndYU69x/QBSCCb05MwiYeT1GIHaj6NYHouloSEWgKwZJlX
         uYY679z7w4yg5B4voF0jTE+A/h8Ux/qhgrX1SEWMKB2/mIvdmbu8kjYAwDwRMIlk7cqR
         9BY1dDk6pPQzaGVymlM9rGERZb1wzwKCHIC2NBcslA2SLFHk+OF1HIe7No45dtvmT8Go
         1o0tiw67fNQmgw8Y18pNgyThR4jYwaKYCYudnITtjPtGBKxgs2f0GtAftz/L8vAcp53F
         tScVgsiks4Ao0OAzSpbZ8JU3ImJx0FxydbI73q9yq/oW1IFcJRL+0iHZj3753iNfnBE2
         uh5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fjV4+ka8;
       spf=pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hQAQZrR4LvJFi+0eeeQin+tFYieUC642TSdH+E9H/Ao=;
        b=I8C4kcJzVb6pnxaXI6rEwv/V0dlPPZuXsiplXhgJte4haSNpv4Gt9ThPq4/3erDLgz
         M6m7JTQiRsj2Oz1mqbACGznJt7yTl1dyeD1UnorQVlCjNqwamKOd2vcb2LXesm6605Sa
         ld8YIAxqJL2sGqylSpJjb48m2gL6Dt10/AVOo78stqvBjwz/o1qogTsib2gSG6ZR6vX7
         Rn4BxKs+lle0ezoYnOmhmEdHQ0LY2og9QJ/K3NX6dGHBIObCBdgZTsMJyOAsQfFt3mXc
         F0yZLxLYxMsdBmMOjtRzA6GmlNeXh7kHKYzVt1iHHX2rKGlrkXUO/VSGHWQNNeULIGOg
         awgw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hQAQZrR4LvJFi+0eeeQin+tFYieUC642TSdH+E9H/Ao=;
        b=eIVUri5jXPMoIaFFfb3fS7eEKoe3gexBtz+JE/sFAp0n5prldUv5zZIi/Rq6q7D2Lz
         kxQdyuQa1exQ069sZpkMmNqRCdp6eJpa2J4GocAkNrpB4c8Juqgnm9YJIZFvBdzpUVty
         57bnJtZ5GJ113dw2m4MqluQdsL1PTrPutJkTkqCmTyJg6VUuvmB5iPF6ioRz0+NWVIwN
         kE9dZitIXDP1zzxDz6c2xwxf+g4iZEGuKRbgzwj6IZieN4AFK7nj9zHmVxjWd4ydj8Mg
         vSNfylB2y6hqga3agSAOZLBxqgZH1GpEbfwVH7hwxWcTB3S7SMP7v26FMSaWm4JhztAn
         fyuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hQAQZrR4LvJFi+0eeeQin+tFYieUC642TSdH+E9H/Ao=;
        b=Vunt+NECfpulPnv4/2/d6tPtXeWqvKxV/WvnR5fsmZZUBQrHVUg6uPwi/rr0S9fbfH
         YrhnA4ue/ytXAuDD9UzgB1YFGqfDOHzCyxWxDnx8G45PRZCFO0DtMY6TyvKbOfdmPcTO
         ebBWNntAMybGBM0l5bBl1J9aqrm/rI3o8ACg6njGQhp3Q0FQCbsmbRFF1SjLBJLDQFyT
         o30NEMaEt0Ov1+mKlAxHOkrQvv/nNnOTsP/RpLJ/mNOFlcXNW4pOxzc2+2mTuweRM7P0
         E4WHHRgoElMSV4/YuUz5kqtAIrbiXu9sCYSbERmusIC6BpecCDlQMYfWhRDAPTGHvRDw
         f80Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532k4VKEJd0dzyHcQlbGt2Fg7Kg6Asa5f18K/wVM41ZYOX5pwqZg
	3w/plNRReIEobPIt4pxM/7U=
X-Google-Smtp-Source: ABdhPJyk7pKXY3HOZMMnFG+wqkwtqwM2ItLkoBYf00UvCnZ0UztuYsnKrWpFNYnLXXyn6CgoDbFebQ==
X-Received: by 2002:a05:6a00:138f:b029:304:2af5:1e12 with SMTP id t15-20020a056a00138fb02903042af51e12mr22444067pfg.5.1625607471694;
        Tue, 06 Jul 2021 14:37:51 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6a00:d69:: with SMTP id n41ls2364430pfv.9.gmail; Tue, 06
 Jul 2021 14:37:51 -0700 (PDT)
X-Received: by 2002:a62:62c2:0:b029:2fb:af56:f1c5 with SMTP id w185-20020a6262c20000b02902fbaf56f1c5mr22475693pfb.30.1625607471113;
        Tue, 06 Jul 2021 14:37:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625607471; cv=none;
        d=google.com; s=arc-20160816;
        b=d1RGggE+S9eOZ134Q5RP/0zMLzBEuAB+a6W5GqmrQGkfn4YAc4sNBMavak+FeV8eUo
         KvL0QL9XX8LkGApJ1bilwF8GzJzmCOd46XZr8WNZ3bVjUR6afhFCvd8nvFM3qfUilcGF
         6YaY0obGHe2NjA4sOVYlAomlgfDNdvQ4HCyTKdCPlGcVEyBH++1950oWGmDzWKTHL3+q
         6k7a+9/cFPsBcC6OIYf2xS0hYaRUhwMT0jFptMguloJUwv2TR29gUHx35SSqL9P3M0ch
         ThHMqNyxbglSMHA/TsElrcsqbg9K6Ix73vDKcDSHrbVxY7yd11wJ3xqo08qTzmcn+w8h
         V0jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Ocbz7plpl2GsaeWZtT2xSwu/ECmgcGgX+U0mFWoVx8o=;
        b=y5ZBJB2teQRsCXDHPMertoRWZWNV4/vhbMtRVtUuPLWBv8kX6jG+UW8xxl6NrMs8ve
         6r5NgumBOmOClpQSalndH5lcXPeNsGNF+2An+QFHIEl4rPAMS57/j8wZTtjRyzguwuz9
         utB28nsS+4u2A1G5ipgfFGjm9I8aGa4Cllk/5D87CDaWEm86z2fUp13MLohdbvtdwK6K
         buJwB4OfVUmaBzgR898CGfO5TNtARuDqCFKmSK2B55DX45O8gSvZggSY4BhIS1JiZMxT
         IcFQN95GY1yb+priloVVoWKxPo4mvFuavLQvGyi+OuCaXAHFyY1U1O4+DWsCkplNQpks
         Q5qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=fjV4+ka8;
       spf=pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id p190si1374646pfp.2.2021.07.06.14.37.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jul 2021 14:37:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id h1so345941plf.6
        for <linux-ntb@googlegroups.com>; Tue, 06 Jul 2021 14:37:51 -0700 (PDT)
X-Received: by 2002:a17:90a:3009:: with SMTP id g9mr2332932pjb.82.1625607470831;
        Tue, 06 Jul 2021 14:37:50 -0700 (PDT)
Received: from shinobu ([156.146.35.76])
        by smtp.gmail.com with ESMTPSA id h14sm14343197pgv.47.2021.07.06.14.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 14:37:49 -0700 (PDT)
Date: Wed, 7 Jul 2021 06:37:39 +0900
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, kernel@pengutronix.de,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mips@vger.kernel.org, linux-parisc@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org, linux-acpi@vger.kernel.org,
	linux-wireless@vger.kernel.org, linux-sunxi@lists.linux.dev,
	linux-cxl@vger.kernel.org, nvdimm@lists.linux.dev,
	dmaengine@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
	linux-fpga@vger.kernel.org, linux-input@vger.kernel.org,
	linux-hyperv@vger.kernel.org, linux-i2c@vger.kernel.org,
	linux-i3c@lists.infradead.org,
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
Subject: Re: [PATCH v2 4/4] bus: Make remove callback return void
Message-ID: <YOTMp88HfFiy6+RM@shinobu>
References: <20210706154803.1631813-1-u.kleine-koenig@pengutronix.de>
 <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VOubNWsj2sFIOkFX"
Content-Disposition: inline
In-Reply-To: <20210706154803.1631813-5-u.kleine-koenig@pengutronix.de>
X-Original-Sender: vilhelm.gray@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=fjV4+ka8;       spf=pass
 (google.com: domain of vilhelm.gray@gmail.com designates 2607:f8b0:4864:20::62d
 as permitted sender) smtp.mailfrom=vilhelm.gray@gmail.com;       dmarc=pass
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


--VOubNWsj2sFIOkFX
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 06, 2021 at 05:48:03PM +0200, Uwe Kleine-K=C3=B6nig wrote:
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

>  drivers/base/isa.c                        | 4 +---

Acked-by: William Breathitt Gray <vilhelm.gray@gmail.com>

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/YOTMp88HfFiy6%2BRM%40shinobu.

--VOubNWsj2sFIOkFX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAmDkzSMACgkQhvpINdm7
VJLVFhAAyxEk2xOSRC1xhJSnjLQvNeb+KeTAJr+uaSAwwExERXcbGlIryhqCZSij
fZRzkvgPIscNAegWidvmuhZlhkFJPwvPArfhB/pFIDvQ1xX0kCPH3T51Lncu35Tf
vgluc4JhAW9+1UzoKZsv8RK4uY2ETRMBBeYs7epjqK2RhCvzG8rDMD+Dy49nxrYX
eNdmcR+7EcK8RjLmb/YEfNXxcXdDW0KlU5ATAh+PKuAPKbOKpoKfKuYsOYS7VrGJ
MAk5lC5J/bqbBWM4eqm+g5NbskWMr1N5WC60R7K3isMCoaEpnKNhSD3kvYIFe2Tf
mWyIE2c7D+UWhzbp+Kq4+DHzBN4ajLBy0oMd28HrGOQmD+/chjjc1zTOK9uNBvKz
xBRbxQl7OrAnKhUqcrgVpVL30EvTNajZIOZdwtGXhQCWW+MX747JE+H291VLg3gz
a0p6IJ8TS+gOgGGvmNjVg6yHYuKv6XDbDfI7tc0dRJUOoVqfbkIHSvAQQzn0LIFn
k/Ln4D8LDFj8X3fHbfz200+nzo9gwA5ZXhWXzvTKXhSEyBoc3+i+Ihn3bgYf6rI8
j8LozqWaWpNxaLMBrLuy06ldAuzhnQ7wPw1JuGXDAY1vdMYVVRp1XcbjBSqybXMA
weoaxx4Lwh05XikzxZpXDQBx5N+5V3sYRuqGrYs7H1ZUm0rT0I0=
=yTaM
-----END PGP SIGNATURE-----

--VOubNWsj2sFIOkFX--

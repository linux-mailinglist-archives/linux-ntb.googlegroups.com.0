Return-Path: <linux-ntb+bncBCSKJVE7S4ARBF4DSGDQMGQENWKJQBA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 324113BD286
	for <lists+linux-ntb@lfdr.de>; Tue,  6 Jul 2021 13:42:17 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id om5-20020a17090b3a85b029016eb0b21f1dsf1529983pjb.4
        for <lists+linux-ntb@lfdr.de>; Tue, 06 Jul 2021 04:42:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625571736; cv=pass;
        d=google.com; s=arc-20160816;
        b=K59yEcUYEbZM19sT3I3NOljGb4PrZkBODE/yzd1zb/pFionW1cog3fCG881cF+dcE5
         +PK79N5IufTVFOerZ9LsHvHaNlpmDXJx/8YdCmT3IR//tP+TyrRy/n/vWoChByyRAJMG
         vQe4H4i3Ms3nr/nFbvLYzaBwmX1XqeNGi5063p9uZWUm5kRLkfIGs+coNVjs4CzYIO2A
         RqRG5QQKUQJoPER4GMoHAPRVBKeu+5KGNVJErWr5hNuiI4y19kUtb/8MBbFce+EwCaAo
         jJ8a05cZTNuxQ286qfd201wW+7XWhqN9ElO5oeurrlc1Rtm7J8Br+vLedIbEEuM4Ysxu
         +cnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=aeyKBX1RgH8CczGNeVFduz3A44Ghe8SC6WZkWPq8hDQ=;
        b=i0vw9gM20KjWcpIEMSz3LG3BJaZ6/6U3gyOANbRoGPcL7EXBgebKL7SkdB5in+lT7J
         +PiTQ0wu59rsEDH+WN1wpGT5hZOeTr6/CTDKTHX0cwVfxMr13ZpfnNkTQC1rKWrAvUoa
         v+DNpv2B3WNkFEqX04l0Jc9VUVNAiId+UXJ3CwEGre6XIkJSgIvD4SaXNkQ2++rMiQWa
         QgUsFu3XVCEMLkVitXAo6wuoqAfPa0WZFViYpuHgvGqglscBS4HWadicFQSYYJtrvqOB
         WcOAnbtLaEGS+ihamj0nGBdQaq7wcZ7EcfCQRlO4rgD9trr9jcroDwbDqmZ5V1NAw2Ke
         VtxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heikki.krogerus@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=heikki.krogerus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aeyKBX1RgH8CczGNeVFduz3A44Ghe8SC6WZkWPq8hDQ=;
        b=Uoy6BLorkAJNR3kTG/kUx9t2F8xStSBHwYRU5HMOvZ990zMUeHD+5DizNopBO8WCOd
         bDAGVcRLy0u5NKuI6W5FANbM70cIHizNN3qvNOQgx4iUlulBkDjYVcW7ODTrNi6MZ15D
         H/Juyf/RCpAI9tMY51sf+BcMAqldfdBqr0pOTFTLOQc4A8sBGwskxA0sQTdipEXv3R4E
         HVdveuHEaYm1UDR+X+Q5T+AW3d9t9qrQHL6Gze1BS3wzbEWJ2emD1M/NyuKhbhlrjhKq
         2CmCFZo61WS+b6l58OiAANzpS3TOfYRm0ZighH4mZFuVrDa/PWvtDhcADChKKsIMRU+c
         oORA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aeyKBX1RgH8CczGNeVFduz3A44Ghe8SC6WZkWPq8hDQ=;
        b=rVw3wlir834eOTOD0gTb84HsLbZq7pL1MDm8QUPNDWzo00Y9PCML3zq15S52I6ep8V
         IOx9qD41ukyONt+ftGUBO2gpPblsYrDV0s+1I/r5l2AM6pZy3ZYjA/HfIGfTiBbRARE+
         /VWKu6dvPqjtmfkH+u6sfejsVA8PRxXoHwmhAqrt+c/m+qYiTY/5V6PHS2VMCwKXBmNP
         MuhIY6Zf7a651c5i98Db3CVsMMzgl5qbN3GirH2TVdOgMVCAUy3QQzOEKQfKg1uLr2X5
         wAfs/vEgw9X+Ff8ocgJ8qfID2FyMjS2Ci9uKrH62yQ7hNkcahnzorQUTOXtES9XQNdhX
         MOdA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530cKMDtRZsC/MV22pmJaYnSPlIhqpbB92uGzZbAFonqvkNBdF4F
	VipZvBIECTzSSM/MipZYS1A=
X-Google-Smtp-Source: ABdhPJyP21k01H8y9CXKvWQ/r9nLWUSRs/Xy9//k4kY1fneDR3wzP2vsR+orEt6YHgHrnzwQ/zoUXQ==
X-Received: by 2002:a17:90a:aa8e:: with SMTP id l14mr20377508pjq.195.1625571735791;
        Tue, 06 Jul 2021 04:42:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:968c:: with SMTP id n12ls10750175plp.8.gmail; Tue,
 06 Jul 2021 04:42:15 -0700 (PDT)
X-Received: by 2002:a17:90a:9914:: with SMTP id b20mr5532954pjp.112.1625571735240;
        Tue, 06 Jul 2021 04:42:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625571735; cv=none;
        d=google.com; s=arc-20160816;
        b=M5jyoX61MUv7ZhWJS6FHQ/vcY7L9Woidh/LmjIrWSChwjuMlLXD1e2QAb2DuFylw+U
         chskTg/CGccsmP3YyNyoJBLpzK0CtCXW9vwmg/u1JL7or11EOuVQKSK5pNxAXv87q96w
         R1TuI2JSfgTGBChqlqFu3+QeYoQWV134Zr9UdsTaP/VbYFAyPLBMUnAFVbJCZJee08Aq
         zUg2fwX/1PPl8U1vcRrjyFGyRWCO7L60qu1hXbHwPO2tF0aRDdiYvQE4sinMTBJf3h8w
         daYyEKjXhvWVtrgnoL7cSP6vpEZAiPQfsFQLkPa29jV4NGByDE4RUmWmv/pV/OmiDQ0d
         lIRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=V/RGub/1UxFQNrHXKd+7o8uYVkmOmP9DJ2TlidSApMc=;
        b=gH66UTaUjAy9C82eXI0JrB3HD7Rb17k24UtILF+JR23/CIvv/0W4sHecYQv2SZ7Ves
         wPf2+Wy5nuokQ45Ncs1vHf1eQKR3l1JhCqp5EswHluxra2J4IfQrk+IuVlLhTuCFwIwx
         KmX63RFbzS7jZF2RH6HbwZwj/bGDJRLA956WyEIkBko0E4eD4yxnZAD+ark5MY9k6g6v
         a6w1LB1UzJ7V6kIV+qLuLMQ5kgZS9ddWC+fgcFUb6+98BW9wlRQ5xgxqhYeeuAR4obSw
         Tm58NBHZFS5WxNafKwcxytQxiyZOilwBEbcTKP0n22mTIwbVfAjvfWW8OI/QN7kl+lN6
         XImg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of heikki.krogerus@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=heikki.krogerus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id o20si1960307pgv.1.2021.07.06.04.42.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Jul 2021 04:42:15 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of heikki.krogerus@linux.intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-IronPort-AV: E=McAfee;i="6200,9189,10036"; a="294739854"
X-IronPort-AV: E=Sophos;i="5.83,328,1616482800"; 
   d="scan'208";a="294739854"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jul 2021 04:42:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,328,1616482800"; 
   d="scan'208";a="562991774"
Received: from kuha.fi.intel.com ([10.237.72.162])
  by fmsmga001.fm.intel.com with SMTP; 06 Jul 2021 04:41:40 -0700
Received: by kuha.fi.intel.com (sSMTP sendmail emulation); Tue, 06 Jul 2021 14:41:39 +0300
Date: Tue, 6 Jul 2021 14:41:39 +0300
From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
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
	Alex Dubov <oakad@ya
Subject: Re: [PATCH] bus: Make remove callback return void
Message-ID: <YORBc384OjIBC/Yj@kuha.fi.intel.com>
References: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210706095037.1425211-1-u.kleine-koenig@pengutronix.de>
X-Original-Sender: heikki.krogerus@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of heikki.krogerus@linux.intel.com
 designates 192.55.52.43 as permitted sender) smtp.mailfrom=heikki.krogerus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

For ulpi and typec:

Acked-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>

thanks,

--=20
heikki

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/YORBc384OjIBC/Yj%40kuha.fi.intel.com.

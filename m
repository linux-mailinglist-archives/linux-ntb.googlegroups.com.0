Return-Path: <linux-ntb+bncBDA7X7F2WUEBBOMIZX7AKGQEMYNGL5I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A552D734A
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 11:04:42 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id l5sf1560158wmi.4
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 02:04:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607681081; cv=pass;
        d=google.com; s=arc-20160816;
        b=IcCn+agy+NvOiJn/fdEjQviz5TRLYJH4lf46pBH49NGrTeuvvEFm3yZPPlRlQdePLQ
         QxlHX/dfULDXhu6UPzb8ZCtaMtEyEjzw6L2MW039NmCVjj9UwwoOoxfqYN+E7SDOWKsu
         5Su8Fjb03byXVWDrlGeU6JQeTo2h4swNAKwv8aTiZ2auIy1I3w3OYy3FvQ/u1rL0fqy7
         F+DqYkLrH+jRVo/TSQiXue5/kPbZ1nZeHiTi2NdgAk7Ptxhm/azwYEPaIn87Wrvlhoid
         kNIR7JTXK7m0VZrYe1HQvUf1YXreMduxT40duKQdvWTGc+BW0tGR0vFMxBBKD9HfdZyr
         Mr1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=fTn2bje3o7aZfIORWoL4miyrPB03oCctJL/fOA0MRb4=;
        b=LVtLFPrgjpyU68EgqBgx1aC4UNg/2V2pcrcknx8kRBfyBfE0c+w6jejs0FmDIzwBIs
         eGssjnyGTWhP290itqA/ZzNJJWAqnSt/t0FrtN5zCZ9v51M6x6w0YDFxtkd8xWsOz8ZN
         IPAQIncw/bFSS/Txt8n4c+XRGxtFcZMOWbHh3gXRjPyAgPjlFEWiYBZjP3owbpJLG0UK
         624vU1LZKZaPLlwuABnNqyQj6mhcQTAZqThi+QS66GsN6ggMJskD19PF/zv5PF1PHXGl
         +um/OQMLEXo1r+FCcTuDhvBKhCzWQGiDPH1zfAYh+KvOg2Wv6YOCjBr5vTdFz4g/bYx1
         IDug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QxFc8GC7;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fTn2bje3o7aZfIORWoL4miyrPB03oCctJL/fOA0MRb4=;
        b=Z2oJ3osQzFG/Bc6YbwLwVgvd+hWWPdJjPwSsm5ciRhUMT7lVn8ML6+VKMN538ras5A
         aFx2CTX4NNW836ato7d6Yu08WLF5IEjWO2Qm/kf3y0yy/yY7sUAzRpI0Ea5FeE7ptLa5
         nhh5Nz2Lcmj4Kyk717OLvV9IF6wc6H89IXyAYNwuw7f9+7rMHulkTpaTsfQBu1rEj3Jr
         QngDc83PgggvV+rYmN1SIrnjBn910vyLQInLGhcfhO5xa7Yco361C0oG4KA/QkcdtvTB
         ouI29VmAn1w4GbvbmIShKZTNOjD5TCv7CkcAboXrJDEPMJQEsJP5kWOa+MhP63rQTdSP
         q4mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fTn2bje3o7aZfIORWoL4miyrPB03oCctJL/fOA0MRb4=;
        b=LKr9M4t1Yjzo8e9Cs6AS3G98n7+cUzmmsT/Mn38TGegbg41Hp6KBKoZnBRYiklx9MU
         H/h8WxEb3JyJgfF0r4V67I/BbhperjOu3pnVvyGO7/QvgISSH7Fhgv4boNNKrZ7xf6gd
         fO9Ba2q4iqn0MkMN35tiHtsUH05n3dHE4J9Sea+KaTnhCU9kTHf1UeXXSP6yxF4C3NFT
         n5ns0gH3IXmqL/Zn+wL5TndffL5yNIOhrrKFsknuMBuiXY1UHoTFNVOo4+JvV5VtB/Cl
         IYOv9lty9B7WXVh1C/9l6dOJDp+PLuTCKMUOA8wkboYYYye36Ui+/+SQexlLX+UiZipt
         LYIg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530MMIjcwm6XNODCoCDXR9fXXWKLG9kml/aFCp6BUM59YUaPAoWH
	eEr+aHdPDUVxW4oiYZEmo+I=
X-Google-Smtp-Source: ABdhPJy++EHgwKA8uhRk6rWmxuEQk/o7Et/zYCWy12NQIdTE+aguq6aCjSWLg+78/wZuQQ4fNvqoVQ==
X-Received: by 2002:a7b:c841:: with SMTP id c1mr13122449wml.31.1607681081780;
        Fri, 11 Dec 2020 02:04:41 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:66c5:: with SMTP id k5ls2625633wrw.3.gmail; Fri, 11 Dec
 2020 02:04:40 -0800 (PST)
X-Received: by 2002:adf:a4cc:: with SMTP id h12mr10724560wrb.391.1607681080948;
        Fri, 11 Dec 2020 02:04:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607681080; cv=none;
        d=google.com; s=arc-20160816;
        b=rpPj+qEF5SmK3h6VnT5++AOFtwV09NDLYePSacnHaXc1kzBiR8Wx+OTRuXi61RcwYA
         RW+/TfVcsD2P7Zk96B0fhILjQKdHQS5HkHN7Ozi4tPim0nCKNDXUt6j3YfHO7I3l5d9z
         VzqaLhlpWKcahHoi8lvzFI0Jgu8RQbCrduPUZo+UAIF/N42KpiQPB+6Jg5RBJlExJVud
         jBZT7U3SYaDq3ufZC5bAS9hMWF42j66sj/H4FBqbd8w5kU2BJg9Z+vDhZrQ7ae3TbFyt
         vr+h1rpUcVIo6wBoiDVPPtxqYAyF2eVIF7wEXOmMYAM7ZMYU59C/iF7ZFE3jXsql9nq7
         I9dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=1m1097L8Z65yNEwPVsqCFAhMTO7JcIQztqm0XMNCEPQ=;
        b=J04oX39xuFSA5TdX35n/5fVag7o3njCZBYmwt+SKbilefSPflUvHk6rUhV2c9Or3wW
         /mP5jS6HNje2W2PG7rfUD0JIEbp5Z/4MnZVZTMuMnjWJmeAyvPRGXhRC1ch5w2SdJhZ0
         qQ5J2JZcXgvQEshMtEniWnB6Qb0mQiOx0/eA6e8mx4mCbiPBkbOpGdInorAD8ef3tLgC
         QqObXS2Mo9dFkZqQWT23U2ymkvSXYUVC7Wlkf4ZWvlAE+La52Tf8GuGmNcdVTauWTaC1
         4W+h/IIhFdeMD5anAUlNEK7y+MbRYX9/NF+seJZ974QCS2/DKCs1CTDgb6O5qyHD+x3/
         YR8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=QxFc8GC7;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id x12si358275wmk.1.2020.12.11.02.04.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 02:04:40 -0800 (PST)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id a12so8393765wrv.8
        for <linux-ntb@googlegroups.com>; Fri, 11 Dec 2020 02:04:40 -0800 (PST)
X-Received: by 2002:a5d:6ccc:: with SMTP id c12mr13142414wrc.4.1607681080467;
        Fri, 11 Dec 2020 02:04:40 -0800 (PST)
Received: from dell ([91.110.221.240])
        by smtp.gmail.com with ESMTPSA id 125sm14307876wmc.27.2020.12.11.02.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Dec 2020 02:04:39 -0800 (PST)
Date: Fri, 11 Dec 2020 10:04:36 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Marc Zyngier <maz@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	afzal mohammed <afzal.mohd.ma@gmail.com>,
	linux-parisc@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
	Mark Rutland <mark.rutland@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Christian Borntraeger <borntraeger@de.ibm.com>,
	Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
	Chris Wilson <chris@chris-wilson.co.uk>,
	Wambui Karuga <wambui.karugax@gmail.com>,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
	linux-gpio@vger.kernel.org, Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Michal Simek <michal.simek@xilinx.com>, linux-pci@vger.kernel.org,
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
	Tariq Toukan <tariqt@nvidia.com>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
	linux-rdma@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>,
	Leon Romanovsky <leon@kernel.org>,
	Boris Ostrovsky <boris.ostrovsky@oracle.com>,
	Juergen Gross <jgross@suse.com>,
	Stefano Stabellini <sstabellini@kernel.org>,
	xen-devel@lists.xenproject.org
Subject: Re: [patch 16/30] mfd: ab8500-debugfs: Remove the racy fiddling with
 irq_desc
Message-ID: <20201211100436.GC5029@dell>
References: <20201210192536.118432146@linutronix.de>
 <20201210194044.157283633@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20201210194044.157283633@linutronix.de>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=QxFc8GC7;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::442
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
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

On Thu, 10 Dec 2020, Thomas Gleixner wrote:

> First of all drivers have absolutely no business to dig into the internal=
s
> of an irq descriptor. That's core code and subject to change. All of this
> information is readily available to /proc/interrupts in a safe and race
> free way.
>=20
> Remove the inspection code which is a blatant violation of subsystem
> boundaries and racy against concurrent modifications of the interrupt
> descriptor.
>=20
> Print the irq line instead so the information can be looked up in a sane
> way in /proc/interrupts.
>=20
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/mfd/ab8500-debugfs.c |   16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)

Acked-by: Lee Jones <lee.jones@linaro.org>

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Senior Technical Lead - Developer Services
Linaro.org =E2=94=82 Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
linux-ntb/20201211100436.GC5029%40dell.

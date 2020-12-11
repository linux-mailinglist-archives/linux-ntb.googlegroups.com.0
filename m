Return-Path: <linux-ntb+bncBDE6RCFOWIARBQ6YZT7AKGQESEMCWPA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wm1-x33f.google.com (mail-wm1-x33f.google.com [IPv6:2a00:1450:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5E12D7191
	for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 09:22:28 +0100 (CET)
Received: by mail-wm1-x33f.google.com with SMTP id z12sf2956404wmf.9
        for <lists+linux-ntb@lfdr.de>; Fri, 11 Dec 2020 00:22:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607674947; cv=pass;
        d=google.com; s=arc-20160816;
        b=qTi3ce22gfLa2iegLM41twvBf67lYQTzal0u38Kq4HkPYFcr5/p6ElJUHYl8AoJpaQ
         FE0OG+0hzx1PFN2hPr8faJR2XpQ4btWev0Zc23wq3OEyTeEWUwPKr6KBLbxdVCjiz3Gt
         cvE9Rbm3tiSI4r9KviRU3SZ/varh9ycaWWzCUrGJkoziCw8dFJ1Xpist3jXbDNxTaBuo
         Xl2al3Ts3U95S8FbPR2Xsyk9jX39PyJsrMzIOBrvHiI5NS8iOSnE3Bn564uDm72UdRka
         v0YerA+9VGiTFGPs9P9+e7mJU6qnK7AwYnJZOv1+c1RYbh9WKQQVXN1Mcj0fTzI/wqqW
         iHCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=kCm0+EFaKaMOJCMAjUI9F2mX8KEuU5dLFMFpsitLSe0=;
        b=F8N2PJdqZ1hdupzR8rU/GW9uxSKXxp2TS0D7EjbEFVvansNQJvjTFEH2yvyb8yzPVX
         53N/mguPBSF9Axpr/sDDB2ulQrTI6FxaMGLcjT5OinLVz1IbX65Gdy+HyY1soF4ZGybW
         y3sfBY5ILFxHH+UPKjZ0vzi7rHHaW29ZKUksMEJJOXN9n8f3C26SVx6Oa2e+H5wNhIv1
         2yIyYxUs2T42cOxf4YhnXkT4U5Ui+Wo5//YOITtcOqbl/OEuC0R4OA9RXLJvMNoCKtyI
         l0QrVSiiJ5eqDkNGcAazCqiNNPERBhIM+ffOXK+TrpNRKPVVwhWTCkpXgry9L12a+P9h
         G/jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Sg4cSLWy;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kCm0+EFaKaMOJCMAjUI9F2mX8KEuU5dLFMFpsitLSe0=;
        b=WQbf/ghC9k4uav5S8UqcRpmcDvSU+a8bO8ZS/Xeboq9C888anJVt3f5BeFUPq78eeh
         Lk5VTHKluLTUbZ2kd3hlNqOeK21VhJgpbEdi7K9jKS41h/nxDmHTr+6bSiuhnQZqDjDV
         FnU9WwpcfV+o2NTRI4EesV7PVpUfAexwOWf/AMvFjMe/b4i2T03o86ezjvv2qG6y3upE
         3s+p4ngeDRTke5c7TvPoGXhEGvRQ1JX7R0VxcopxjaOCDNi7xeymaL3O1Iwcrb5SLbPM
         ZzRm8S7RmovrB14ZhtIcmwqOVXixKkFR2c4nkha9RLyzHtrrvgxxPuD24ffaTQM6SHe+
         n/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kCm0+EFaKaMOJCMAjUI9F2mX8KEuU5dLFMFpsitLSe0=;
        b=GAVd6/u5sfNy6Lubh1OSA49S+F7j0WEw9jipGtRXfeUtnnkamudLWhQf1fMdTsat9Z
         Pa8ppr+Xd3xBHhMCvA6l3gY4NfTQsQkn5Ua2u9s5rXW8Ie/cH5OzA9wPAGkC3sRtYiQH
         G+fFfB/XdnG9pzG3df1XS5bUITc2B/tNGHX6xKL5Rltq68TJuzjnl6aVkhGUVkSxQrXs
         bYaUZgw7kE1UVMGQz/eT6KwWlMtSQYWkc6bOirG6Da180yCO+sR5Vrdf3vMMxekr5pNn
         fzvhDEDt7dfjPgvsbpnlGtyOXeIj4ATqVqL6/hLPF9GgzhTy7EHLr5MNAX2Y6zlxXKMa
         dZmA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530sqabl0gslbB/Z6kNPQOBRMAJXIDu8nuVjM9WFpHkVXpYGwsUD
	umOVWoT2FUQeVKPu5Di801Q=
X-Google-Smtp-Source: ABdhPJyWv0yKB95uGSw0CwQ41g0d4w4+M639Qq8dnwqIjSuRj25ryqeAwAYmil1bZ1ItycxBV7n2yw==
X-Received: by 2002:adf:e552:: with SMTP id z18mr13107025wrm.29.1607674947830;
        Fri, 11 Dec 2020 00:22:27 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls2178063wrw.0.gmail; Fri, 11 Dec
 2020 00:22:27 -0800 (PST)
X-Received: by 2002:a5d:4d50:: with SMTP id a16mr5081039wru.43.1607674946967;
        Fri, 11 Dec 2020 00:22:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607674946; cv=none;
        d=google.com; s=arc-20160816;
        b=uW8RSZ8Laix/AsXGBbRbYJqb+7WhqR6z7C+nM+IYri1s3Ul3CwfVgcVfVUqr2KGN2I
         j0eAu/IkcT5sahoO2Sz1xkQ4kh6WOsLK1YccKN+WZ8oV7rva+t/ATCMjtY3R3BMazw+i
         CQQSqS5VXsE2zpB76HBGOvDEdDHtINTq1cTpTZPDV5rWvX0BMx96U6D8pK7lOqkVuPfW
         isoI7gJuLyptQ52aK9KhEF23D7S24cmV2oRlxkZ8ULSJoZiUQx1Nr9dq/yphtIYO0Ukw
         i0uBrpjn3g2WB/tohkGpS0hKWm9fLY0mAdeW+ha/bmNRpS2bdqIiuLp1R5YKeM7uoO1t
         WmYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2E9lnRJNmKjai1CIMZDErJ15p/JF+kjk/cqnxyQj4Dg=;
        b=bY/fwK6o0rsDkkxu5/50UyN+cobsalI/j7TYlI9wSQMDNfEt1M2cFUNRp90WI6IoV5
         nnxBr5MGYSIn8heWXv1sLNCkCzC5YAtb27MnZ9jDLiCh41VTA/eMr5Ul2Zp0ymq0/ffZ
         6Ac53dABGMkYgAtxagQFQo9W3t7VZjC2zwpm7CTY4rN7DVowsqYAjwEbkAiPhfbFToqF
         VTd6HWdW50Y7IhmrES+ertZTE5hnYSPwFKAPcfPv+Ibx6VgmS3vjJaNUlHEVWTErvfnf
         9tL9RFBQVUp0vzFEnWikW4mEIZheTr/IhLH01iBSpir9OlYlztkVe7DI/hnVLXr/jd2z
         +jYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=Sg4cSLWy;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id q142si200349wme.2.2020.12.11.00.22.26
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Dec 2020 00:22:26 -0800 (PST)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Received: by mail-lf1-x142.google.com with SMTP id a9so12208265lfh.2
        for <linux-ntb@googlegroups.com>; Fri, 11 Dec 2020 00:22:26 -0800 (PST)
X-Received: by 2002:a19:8384:: with SMTP id f126mr3904234lfd.649.1607674946619;
 Fri, 11 Dec 2020 00:22:26 -0800 (PST)
MIME-Version: 1.0
References: <20201210192536.118432146@linutronix.de> <20201210194044.157283633@linutronix.de>
In-Reply-To: <20201210194044.157283633@linutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Dec 2020 09:22:15 +0100
Message-ID: <CACRpkdZuPp0KN1BCJ26vWH1=nopaD-ctv6bh-rt2X9bJczZE-Q@mail.gmail.com>
Subject: Re: [patch 16/30] mfd: ab8500-debugfs: Remove the racy fiddling with irq_desc
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Marc Zyngier <maz@kernel.org>, Lee Jones <lee.jones@linaro.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>, Helge Deller <deller@gmx.de>, 
	afzal mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org, 
	Russell King <linux@armlinux.org.uk>, Mark Rutland <mark.rutland@arm.com>, 
	Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Christian Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>, linux-s390@vger.kernel.org, 
	Jani Nikula <jani.nikula@linux.intel.com>, 
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, 
	Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, 
	Chris Wilson <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>, 
	intel-gfx <intel-gfx@lists.freedesktop.org>, 
	"open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>, 
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, Jon Mason <jdmason@kudzu.us>, 
	Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, linux-ntb@googlegroups.com, 
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Rob Herring <robh@kernel.org>, 
	Bjorn Helgaas <bhelgaas@google.com>, Michal Simek <michal.simek@xilinx.com>, 
	linux-pci <linux-pci@vger.kernel.org>, 
	Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, 
	Tariq Toukan <tariqt@nvidia.com>, "David S. Miller" <davem@davemloft.net>, 
	Jakub Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>, linux-rdma@vger.kernel.org, 
	Saeed Mahameed <saeedm@nvidia.com>, Leon Romanovsky <leon@kernel.org>, 
	Boris Ostrovsky <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, 
	Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=Sg4cSLWy;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Thu, Dec 10, 2020 at 8:42 PM Thomas Gleixner <tglx@linutronix.de> wrote:

> First of all drivers have absolutely no business to dig into the internals
> of an irq descriptor. That's core code and subject to change. All of this
> information is readily available to /proc/interrupts in a safe and race
> free way.
>
> Remove the inspection code which is a blatant violation of subsystem
> boundaries and racy against concurrent modifications of the interrupt
> descriptor.
>
> Print the irq line instead so the information can be looked up in a sane
> way in /proc/interrupts.
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lee Jones <lee.jones@linaro.org>
> Cc: linux-arm-kernel@lists.infradead.org

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CACRpkdZuPp0KN1BCJ26vWH1%3DnopaD-ctv6bh-rt2X9bJczZE-Q%40mail.gmail.com.

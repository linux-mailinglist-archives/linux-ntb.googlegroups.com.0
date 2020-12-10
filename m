Return-Path: <linux-ntb+bncBDGNZTVZVAFRBJGPZL7AKGQEGZ5PRMI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id D821F2D6AD4
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 23:56:37 +0100 (CET)
Received: by mail-pg1-x53e.google.com with SMTP id q4sf5057387pgn.0
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 14:56:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607640996; cv=pass;
        d=google.com; s=arc-20160816;
        b=HIH800CjtWHvuYxlHm8cuUdR2SxJcA+8eC2hLKT9CdoxDAp5QCmPL8ad5UCAmKLbiI
         CvkKYLzz1cM7MhL9PhybWI5N+LPFK20ruE5DtxLSZ8JGU3QcIOoCErj3LIM+97qxuYx3
         HoV5zHDpjmzxCZuguR4LIbwD9nin+8rR/c2CfdZ30TAor+8CZ/YUOpzlEWN7Y40V0s6K
         xOZy49UjYcjw9gi0JmtZp7NkfrdaLL/cYXXSSc/txf+7vHEeG/VTH+EGW5l1xtKVqvO/
         xVtxQBkEHzve/yTV10XTdTIufd0gPkDR2t19HAJG+6BBMtR5gEqMp1F0a/ChmzqVANNL
         x03A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=u0Ubye0sMIR68pjdFtf2X3xdfxICRDWYclJB0H5KeaQ=;
        b=NII3jTkVdtSJXlwo5u4bpAwWdclpEo2Tq4oWUxC6YZaL5y6MbzCgtqwOcwdmecRpju
         WdUpjcdCLUTXLxXS1lEoEtBs4CdJN5P2hxsJsHDYcqGmkxeMJEiCE1pwfo7LCwr5r39x
         MzDdYBg/apb5F1a5ECo+N0lCquv12tOn6kUDTlFlXpR+z4I67EVzlNdkSK/NS3IMC7gD
         /vFF2yDVbnvVFnviXR2m87j1Idnbf7PKcZcx+hhT0HG0qGO1WmhGZIc4eRtpkFzC7i7/
         dS6EZvHqxUQxHf4ducDqGKUNm9/EksHlgFSdAhxNGRTp5YGO5oI4EkvMHxDQE/L3SGoR
         m7Mw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DkCyyeuv;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u0Ubye0sMIR68pjdFtf2X3xdfxICRDWYclJB0H5KeaQ=;
        b=pD4FCAHRCbv8nW/vjukLrA/LsVrzug01/sxeON/qEwo2d3iGxV+w2FURbfW01dusWQ
         tNkZe8SWqtMhdK6p4W6BUXPozMZa6HsasN4FX8qVthSZ1B00NaNNNOabZEOJFmeUHNRU
         z2VdtmIah4x2GaSbw/8CCb5qA8V60OdfsPcfgCPWkW4bZu50t/2RudL9YDYlO2/596YC
         lpV+l2Zxt5NNuv/8igGJ3LlYCZ0OwfIN6susR8Q8Wfzu/HVEH3a7JyZBhwmkplF1ziE5
         hvDwDnvxhPU9Jsahy5zbYSz4ILQ7hpCCr8H+vNkIUGnLbhRyRWluyjYfAr44UFFiDh3a
         A1xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u0Ubye0sMIR68pjdFtf2X3xdfxICRDWYclJB0H5KeaQ=;
        b=R51X1EYJNY2HfyrFoSFEInGHF9+qiAhD1k7N4zwtuNdBh9ZhmaniygWEtfb4o5JE90
         vx29X0FrGRK26Bj+m8NE2jqORdTX7SktkjG2rIwx7YBiuSaEdcf4np+YSrCJjzYhN2pd
         Ic7+6P4/3iuIU4bkfgazpKV7gTVx3jEmCV7AYEYPp6vvM5I0FWCOIE3JROlra9QR1WH5
         e8o/t3UoVF1a2Yphp4bhks7PqqcXFOY/4b88d0IEmfDMTE0hh0td9IJ9bA/8jblPQMdD
         sfuU9BZ+o6upufb4kztMeanZgU5ou6tI/WtxL3kEbHHRpz+2K/jGA1yvaCWE2P7ZLBmR
         qCNA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532Wm7W/Hr9HdogcljDDOXATO21RHhJ0wl/x8MK4qbP6nvxsJAKJ
	pMMba+118SaEZUBgQuuqmxg=
X-Google-Smtp-Source: ABdhPJwuRNLMGMAY2jqTxgcidenn2A9MiUVQlmRPr5lEPJZIn+kTeDFwOUm/9andnn93chQ3xcmsBg==
X-Received: by 2002:a63:4703:: with SMTP id u3mr8760050pga.199.1607640996582;
        Thu, 10 Dec 2020 14:56:36 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:b893:: with SMTP id o19ls3793210pjr.2.canary-gmail;
 Thu, 10 Dec 2020 14:56:36 -0800 (PST)
X-Received: by 2002:a17:902:ee02:b029:db:c0d6:57f9 with SMTP id z2-20020a170902ee02b02900dbc0d657f9mr8600478plb.65.1607640995967;
        Thu, 10 Dec 2020 14:56:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607640995; cv=none;
        d=google.com; s=arc-20160816;
        b=OgzJQhUfU7vBTtdgH5BpyPVIaKZwnk0jH4KLXZ0DvaNY/JmyeMmy2gSVaxi6RL97WO
         pXMfcutTa35BKl4D+R0m4xjcIlmzuFGh8ai+KGUgLRqcxq2bMdn+3TE515ONEPNrirpu
         uAhVxTlt/yXQlWJHtiZ1HuoAKMHkeZ6xsU2353UzPqrvhSWkmvAFGuVrt3txirnLEUCy
         3A2AiXDlEUSMnfy9JhrLZXeNImB2LwZ2gaC99nr/CV+iOn9eKn9u/u9RXgRW1NkCjJKL
         8iCDhEEs486WPhrB9opYNbOYZb+EaW3W2FwsDRpqJULo1D3mRQiQlWpRoK71LN4VZIJl
         gVGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=wzTThlXCSP3dYDIovaZhZsUysqjhot3Sl5lF7hf9xhE=;
        b=AVr4cw5BFNoTi2z0L19hNJ1GLr9X+do8McZqBylvfFdZNPKG9lswPfnZg2pYB+rfNH
         qIXzwGFjT/g+BFssxG1k5fLuiUdmQB/WwoKCtsZ9r9pwzR04zBx24VcSqTYTAoj8ry2Q
         ADnlvD8c0FgoIeTTvmASoxNlLxSkhFUaZXrqq998rp7YRLgFndt9Wvvbh8miL96lkuyH
         Hr6A54YFoMZbcJStt82m63gJVQATLR7mS8z1zIUOfFJekPJew1X7IST0zDlYi3IECfDF
         NrtkVIIoPWQMD2uoKtyNwn7lDPDYPKt9XofX+cu1J4MmHaD7yMiaSIlOwAGVxXIDtbMM
         ZVCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DkCyyeuv;
       spf=pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=robh@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mt17si493155pjb.0.2020.12.10.14.56.35
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Dec 2020 14:56:35 -0800 (PST)
Received-SPF: pass (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
X-Received: by 2002:a17:906:d784:: with SMTP id pj4mr8261525ejb.360.1607640993261;
 Thu, 10 Dec 2020 14:56:33 -0800 (PST)
MIME-Version: 1.0
References: <20201210192536.118432146@linutronix.de> <20201210194044.364211860@linutronix.de>
In-Reply-To: <20201210194044.364211860@linutronix.de>
From: Rob Herring <robh@kernel.org>
Date: Thu, 10 Dec 2020 16:56:21 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKCGkyk9whiGQ0hPyWjSYXnC-TSbot85k7=bwVd0rwC=A@mail.gmail.com>
Message-ID: <CAL_JsqKCGkyk9whiGQ0hPyWjSYXnC-TSbot85k7=bwVd0rwC=A@mail.gmail.com>
Subject: Re: [patch 18/30] PCI: xilinx-nwl: Use irq_data_get_irq_chip_data()
To: Thomas Gleixner <tglx@linutronix.de>
Cc: LKML <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Marc Zyngier <maz@kernel.org>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Michal Simek <michal.simek@xilinx.com>, 
	PCI <linux-pci@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
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
	Intel Graphics <intel-gfx@lists.freedesktop.org>, 
	dri-devel <dri-devel@lists.freedesktop.org>, 
	Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Linus Walleij <linus.walleij@linaro.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>, 
	Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>, 
	linux-ntb@googlegroups.com, Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, 
	Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>, 
	"David S. Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>, netdev <netdev@vger.kernel.org>, 
	linux-rdma@vger.kernel.org, Saeed Mahameed <saeedm@nvidia.com>, 
	Leon Romanovsky <leon@kernel.org>, Boris Ostrovsky <boris.ostrovsky@oracle.com>, 
	Juergen Gross <jgross@suse.com>, Stefano Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: robh@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DkCyyeuv;       spf=pass
 (google.com: domain of robh@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=robh@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, Dec 10, 2020 at 1:42 PM Thomas Gleixner <tglx@linutronix.de> wrote:
>
> Going through a full irq descriptor lookup instead of just using the proper
> helper function which provides direct access is suboptimal.
>
> In fact it _is_ wrong because the chip callback needs to get the chip data
> which is relevant for the chip while using the irq descriptor variant
> returns the irq chip data of the top level chip of a hierarchy. It does not
> matter in this case because the chip is the top level chip, but that
> doesn't make it more correct.
>
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: Michal Simek <michal.simek@xilinx.com>
> Cc: linux-pci@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> ---
>  drivers/pci/controller/pcie-xilinx-nwl.c |    8 ++------
>  1 file changed, 2 insertions(+), 6 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/CAL_JsqKCGkyk9whiGQ0hPyWjSYXnC-TSbot85k7%3DbwVd0rwC%3DA%40mail.gmail.com.

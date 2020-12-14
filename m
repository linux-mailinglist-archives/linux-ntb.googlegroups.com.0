Return-Path: <linux-ntb+bncBAABBAFE377AKGQEHSPL47Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CC72DA227
	for <lists+linux-ntb@lfdr.de>; Mon, 14 Dec 2020 21:58:41 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id g67sf22406820ybb.9
        for <lists+linux-ntb@lfdr.de>; Mon, 14 Dec 2020 12:58:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607979521; cv=pass;
        d=google.com; s=arc-20160816;
        b=iFXGxfUGi+8WGMPyALFz4Ppzp+w+I9F0R8lDDMJoVZlodIMPkkEqUs48n6wJdYewPH
         aQrNxDtfN2R3q+N1gnS+XeU2n+8E26kCXIhJ26TDXxSPZqeh9D5os2te4c8I0NUCyIpX
         EHazSc8EIGrM95jyMJIDTKDg3We4qAA8SbSllWn/lYxKvXmz4bYRH5qO0R3T0SS4nSOm
         hx4+DBn3+KcVg37OlcwsoP8Dy+TOSoL0vXZ+Dvk6hNSB+oXr8ez/M3qfgkgdmTytu4Ir
         4DHu1Si4mhXjujjM3HqwOMSYcT8vM8G7wHxeGh42eq6kSt/Q0TXx1ebRrG2TSJC+lGML
         CXYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=zWE/6SLEMfb58PE8XkWPGkxJ9GS8+FxzccVi30+ET60=;
        b=L+wBWYmFBkmG6C5uyNWTlx5zHEwH4RydELf608hRlYcp4h58YEDNY4ALG794355lyU
         F8H95Z/oXvcDt2d1cF9w1sf3vfac9ZV6mzKDHha9lRHW5bRP7/uNu6RGrkAlUTGgDVrn
         XzvQM5ukVAMFDLBVTvEtLvZ4RsfrUoFhfXCDxeOKOAlV8XrDlXB3N52r4IV56lI+VVDV
         5myE9NMqtXjkUIph9Ta10gsqcUzFz5YUGNz9O/elEMTNcLZc9ubIlhWMQMrz/kmE0Xb+
         zKA+ai59TLu8P5ND1MmLUpsASFBE7b7hahq+DXSCVmsyWxfixoBLShLIBwqs4qQtSTzs
         tl8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Gtxqgx/z";
       spf=pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=saeed@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zWE/6SLEMfb58PE8XkWPGkxJ9GS8+FxzccVi30+ET60=;
        b=RA9rNWD9BBFuLy1/KeQI11canXSO/3vhv0INAZSbtX4E2yQjhGAoLfDTOQTy7e3EXd
         AfZu/B2rcadR/x+Hyg08537VGMvFYF5vSxa/LoBZ0JML00Xey8Zq5MTnSSoeB34qAbPz
         TdIt1kRQt7d8KjLLbRPEbg4KQ/OIo4GggR+FjQ6PnSB2m8ah5eUTQBTw8b5Sbjn+veuv
         wl1bUu3Stlq6CpkDkm8LHW1MKkJmkaqaOmAaktyLCdx/5dKVVIUjoFOtW34V/fgKHTlM
         TYIeFNzblHAmJkD0pRPmetFeqfkuZjZqdFA1S/6S+jlGW8uquz8ZiSVAP6JHcEv7nXk6
         IIdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zWE/6SLEMfb58PE8XkWPGkxJ9GS8+FxzccVi30+ET60=;
        b=GPJ+GXAcHVzgF8pw9X1N9D1egboPLq83EQcIN89rqYOEP1+mICPyjrthewLPNMzHNz
         I5E+pjB8H+BW6ZnFGfFFGetcPiKxnU1lM4KHTUkV3+BEdt7DDkx5IqVNZAGp/LqqVoxW
         UxLFXFMWgXrC5QZYybJkfzXkEnc/4tPAnlTDmfdSYQenXIskJ07cXSPiTNwLifmuXfdN
         E5nn9kgGV4NAvxVcqwSgjeBCM/q/MYWRku9Gv5spLrBKPHWTGTwDukweXoexpsZMs8Zp
         wU3haRnCILqRwsVpoBMz/OM4qSSno/Pjpx6xzU56ndGHOqg4/wwZOv/dptmDo3t8PWy1
         k9Cg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5329/J4rwd29ihlcqzyb058ieSSwitHfJLnGX+a7DmmqsYgqDxvW
	cCefJVZJj7thc1GmLJDf1ws=
X-Google-Smtp-Source: ABdhPJwJHbSAW/rVFzFd0AfWc/bwPPggY33gVYJWq7XkgbkpHkQomdwhF8QEc1UPMhal89lHExYm3Q==
X-Received: by 2002:a25:afd1:: with SMTP id d17mr33694010ybj.6.1607979520885;
        Mon, 14 Dec 2020 12:58:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:c802:: with SMTP id y2ls954194ybf.7.gmail; Mon, 14 Dec
 2020 12:58:40 -0800 (PST)
X-Received: by 2002:a25:ed7:: with SMTP id 206mr36316656ybo.136.1607979520469;
        Mon, 14 Dec 2020 12:58:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607979520; cv=none;
        d=google.com; s=arc-20160816;
        b=CAlDfmQiC2VbZUrRV/131lDscxAg4UkrL4+5T0RTkM5LaHJJhWCu+WgtCKnjg/5jzk
         QZ0zkY4bCiknE4kxYWlrzkdepBU4X/0H8ta0r4iV3bXJwtZ50FNc/7nRczxzpZsf0Gjf
         2kECYT+Hsrl2q8hy7Dm8UktUyc7aYa+TalR8Dm7GX4OkJyHDXjKWn+dk5FONRDA1RXQn
         SDrfGm8PnZ/YqWQd51+8IXzL87ZExHejYxqrAaqEFTlxGQzcfftQ4xpK9MaAjMw6/I9/
         /+CzkPfrCF7mDuO++TIj8pWcqS7h3h6BowmbcdtNCuw5BqLm/X0IC0v8GS6for+TBcf7
         8h0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:dkim-signature:message-id;
        bh=yLF9lb7IkxHVSujYeAxOIVVn/TnvNrH6d2O4JIgaDcs=;
        b=iYOLmhoh7DVlZ43LIhhBbwXiG/aAj1R/VtsMukMuvf9Y2lC/J7CYprhArnNjHW+u8c
         rL3pYtA4leVWloFD4qI50gMrCUFfUWfPCGsQFpGj6qi3ElIgHTtcZOyLmBAvFiFuC/Ie
         Q+oL/zQcGSmMGoZGRuQ92B6Yw7ibFp+lu1afeN15IYFjLfXAyIB6ajjRBP5V2WzukP75
         BqUQxqwgV6Y8jpare/2TOOF4ZEY95zje6roXLPuxR26QcZmN2rPEKQzGZswtAhP4sjwU
         ncKhcpxZSv5A4vxH7FR+yx46XeC8/5vESDvVlIebsAjfctft82jE+lirG9DGSOL6FnNO
         lIjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="Gtxqgx/z";
       spf=pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=saeed@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k6si1329223ybd.5.2020.12.14.12.58.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 12:58:40 -0800 (PST)
Received-SPF: pass (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Message-ID: <8035075adf8738792f4fa39032eeeb997bc1e653.camel@kernel.org>
Subject: Re: [patch 23/30] net/mlx5: Use effective interrupt affinity
From: Saeed Mahameed <saeed@kernel.org>
To: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>, Marc Zyngier <maz@kernel.org>, 
 Leon Romanovsky <leon@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org, "James E.J. Bottomley"
 <James.Bottomley@HansenPartnership.com>, Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>, linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-arm-kernel@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, Christian
 Borntraeger <borntraeger@de.ibm.com>, Heiko Carstens <hca@linux.ibm.com>,
 linux-s390@vger.kernel.org, Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>, Daniel Vetter
 <daniel@ffwll.ch>, Pankaj Bharadiya
 <pankaj.laxminarayan.bharadiya@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Wambui Karuga <wambui.karugax@gmail.com>, 
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Tvrtko
 Ursulin <tvrtko.ursulin@linux.intel.com>, Linus Walleij
 <linus.walleij@linaro.org>,  linux-gpio@vger.kernel.org, Lee Jones
 <lee.jones@linaro.org>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
 <dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, Michal
 Simek <michal.simek@xilinx.com>,  linux-pci@vger.kernel.org, Karthikeyan
 Mitran <m.karthikeyan@mobiveil.co.in>,  Hou Zhiqiang
 <Zhiqiang.Hou@nxp.com>, Tariq Toukan <tariqt@nvidia.com>, Boris Ostrovsky
 <boris.ostrovsky@oracle.com>, Juergen Gross <jgross@suse.com>, Stefano
 Stabellini <sstabellini@kernel.org>, xen-devel@lists.xenproject.org
Date: Mon, 14 Dec 2020 12:58:36 -0800
In-Reply-To: <20201210194044.876342330@linutronix.de>
References: <20201210192536.118432146@linutronix.de>
	 <20201210194044.876342330@linutronix.de>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5 (3.36.5-1.fc32)
MIME-Version: 1.0
X-Original-Sender: saeed@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="Gtxqgx/z";       spf=pass
 (google.com: domain of saeed@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=saeed@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Thu, 2020-12-10 at 20:25 +0100, Thomas Gleixner wrote:
> Using the interrupt affinity mask for checking locality is not really
> working well on architectures which support effective affinity masks.
> 
> The affinity mask is either the system wide default or set by user
> space,
> but the architecture can or even must reduce the mask to the
> effective set,
> which means that checking the affinity mask itself does not really
> tell
> about the actual target CPUs.
> 
> Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
> Cc: Saeed Mahameed <saeedm@nvidia.com>
> Cc: Leon Romanovsky <leon@kernel.org>
> Cc: "David S. Miller" <davem@davemloft.net>
> Cc: Jakub Kicinski <kuba@kernel.org>
> Cc: netdev@vger.kernel.org
> Cc: linux-rdma@vger.kernel.org
> 

Acked-by: Saeed Mahameed <saeedm@nvidia.com>

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/8035075adf8738792f4fa39032eeeb997bc1e653.camel%40kernel.org.

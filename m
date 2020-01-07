Return-Path: <linux-ntb+bncBC6JD5V23ENBBCXP2LYAKGQEZ5SWKAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DE38132B7A
	for <lists+linux-ntb@lfdr.de>; Tue,  7 Jan 2020 17:53:32 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id a12sf194658oto.8
        for <lists+linux-ntb@lfdr.de>; Tue, 07 Jan 2020 08:53:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578416010; cv=pass;
        d=google.com; s=arc-20160816;
        b=K+bCksbVh7eRgVmaigWg+zNjvDSqTiCXV8efJ49P8Ti7CRzq+KRPxm1g3Ql4hFeQAG
         JqpAgsyKN2DbwHkSLIpXQeZKLmaxiEz9lIh0AhV5ps6FUINJUIA4wko0AimMyNtsOdwT
         YsGPHX72rs0bjS4fOMssLitHzlpHhpQR5GBTDkpT/KCvAP8rjZ5XA7CsDA0h30k3HmBD
         HaDiDBsd8OB+Fx6QgAUDcMH8RPTRPK58kbquazJkg/x5eHpASxtzI9e3th+XC/h18bre
         7u2sOxnacPyyFFGhg0Y/N+nVDadyjTi7m7hyDVJE5bAx8v7QC8Hjat/vofvQ7wSrqP5I
         WtVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=9ZMayDcpUU6SR1O5x2/RgepU5gG4aavxJImsS+PiboM=;
        b=Kw+P/gYgjMnviXEauUCV4H7y7dBOWULue/XTXaQva/2z1szNlQRgmYrFEYk1vnhiqq
         9ur6A2kQQP9Q6tjlEwYmT20zSEN2T3LuYJOGnInfagnEALl+AbKQAG14onSpSt4UmvML
         +thSLIxrhzPbGN5cAZQys1ltG551LTmgoicgGwunCqiG4XQRpYVZu3RxU+VmZi1okc7s
         Udmz6u8nO91VZxQ1PdxLnE9c7EOrBths2PrGbSgxd/aanDH0cmxGBJ7yivO1rPabQfxq
         C5jqS7KckgahUgfeOyqSIVci3WfGU3VTBRYcdhgKx4eYsbj2I5SeQyPgbfY+a5yaUPBX
         6x7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q+mZvp8D;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9ZMayDcpUU6SR1O5x2/RgepU5gG4aavxJImsS+PiboM=;
        b=FKVXRntdRcxqAMDuQ39W2tbD4HmfQ3CUil9+pDRTcHS08Ur57gWDsPZBt2DolqsVJz
         wuCL5JgSAe1OEVk2zlw5W4sdZcmsSYM0cQmu+V+nroeAN+ltZBlg0pGJ/HNB5aedG92V
         aVrEJJ6j8fKYXZj4AsfjOLzxjOj4pxiFNM4nyhwHwq/dsfXMz37NeXOvnm108jfgVEa8
         I+epKMX+krX6ELl8N7MmZBHUYuh8W9t6REYmn91NtqXIwbf7GjUbrbu6bw7RmezlPaX+
         ZqaSNw5w6E0Vh2BLdrMlkbRLwkGxFbupiUQkqPKVm8gn8xb5Qdg9IxUSuQ1qr1FKr3ty
         5JhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9ZMayDcpUU6SR1O5x2/RgepU5gG4aavxJImsS+PiboM=;
        b=L94GTwEATq+dPcyU36lGlXKSCJt91x+9OdxrMNo7wCTuupIYhOisyBSkFmouykWe/Y
         WYp1jBVuX7BJlfG0o5bNfS0WVqymSSH0kLSzoCkJlH2QBhO1l+KETlTSEu3cQ73Rk7zZ
         NZeRrrIPVOb37auyX4NC8k55D2mewJdKLtVDp8Oj+G7o3EBg5NIi14G+hPwe8VL94G9L
         v+SvgZKNHJ0dQW1KhxADUf3JGX+DVnBT8Im4/1OYXopyHHg0ImczdIZm1eUbqHx8P7KJ
         vFANPvpJmlWwqSpm6HuvbCd41lZKwbEH/oQsIUKdC3UVkC2NRtFKuRVe8Z2FEMC6Z/dV
         cZBw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVQhBl7F+eL9JiOLBkVLRE5NHe5RanGmOYOOmeYT18a3Bd+ScBC
	bUU6tuKeWaz+wsJGzI2/Qy4=
X-Google-Smtp-Source: APXvYqwUdAQWFeePjp4mR54ZddBaHhHCEoxOC5izu9VPNpWtKlS/rDyGcpPvRUODqUHeLuZ2sxdUyg==
X-Received: by 2002:a05:6808:9ba:: with SMTP id e26mr408124oig.81.1578416010600;
        Tue, 07 Jan 2020 08:53:30 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:649:: with SMTP id z9ls21327oih.3.gmail; Tue, 07
 Jan 2020 08:53:30 -0800 (PST)
X-Received: by 2002:aca:d6c4:: with SMTP id n187mr421771oig.29.1578416010226;
        Tue, 07 Jan 2020 08:53:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578416010; cv=none;
        d=google.com; s=arc-20160816;
        b=DO2o7uMJnSUnBP4mHoq4/VU6m8wMk96n1d1EP7sFGyE9zXrFLsiU+5Wa1MCMp5PjWO
         6bBuyo3UnKlW6XNb3TaWb8r6GPml44ALqX8gbS+agSPTNEeCR+EJTGZ2gDeorj+H1Ym/
         Ww1kH8k6wlybCaCwpovpBzYpWJJznPzdk8/lhMLG3v+cNICAs3bU928Yo7oyMg2h1qmI
         m1BZGhiVn1Fe84tB3ziUm9/zijT4nJmsMO5LNfdOFaDke3JC2ztUNjnr7QrHgpS4uFh/
         pvC4vYQypd3julOGja0evAnPji7VmX6r27d6Jqgwceo0jABvaqshSD8AJ5Y0oI0AzWV0
         hhCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=2ustSgkGpldC/kufGkx49oyr+GTpAnVVaMOS7KRnl1U=;
        b=hkaTBz2GDEL4IC1vtGwLJ8xx0OPEbq82jTgeEItxjNOH/y9VxIqgNFc6TCq2KmADuy
         zGwPpyQmEnASxyMwxrLo+yA931pIaHB7KoeMKal2inXu7BiKMP4wYbESu840+DIOQjOz
         S93k3mSpATj4VgXl0ty2tlYCnMo6SHJgib4tPaemxK5qwew4vJNp1UeMMKTXKSvcDy8W
         X0mt355BhwCvLnze48fIYCUQwuWZZxvAtVbPGBRQZOT8fD6W7k4pD/IJ2uxiUy2i2hor
         afyZhodq78mYEVPhG5PAvlzeNkn1G+iWwl0M9NeGIKRK9OvNF/lfU1FgywMMN1hTvBAa
         P3GQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Q+mZvp8D;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q188si21600oic.5.2020.01.07.08.53.30
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 Jan 2020 08:53:30 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B395D2073D;
	Tue,  7 Jan 2020 16:53:20 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	Alexey Brodkin <abrodkin@synopsys.com>,
	Vineet Gupta <vgupta@synopsys.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>,
	Dave Airlie <airlied@redhat.com>,
	David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>,
	Ben Skeggs <bskeggs@redhat.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Jiri Slaby <jirislaby@gmail.com>,
	Nick Kossifidis <mickflemm@gmail.com>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Dave Jiang <dave.jiang@intel.com>,
	Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Andrew Morton <akpm@linux-foundation.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	linux-alpha@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-snps-arc@lists.infradead.org,
	linux-parisc@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-sh@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	nouveau@lists.freedesktop.org,
	linux-media@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	linux-arch@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RFT 00/13] iomap: Constify ioreadX() iomem argument
Date: Tue,  7 Jan 2020 17:52:57 +0100
Message-Id: <1578415992-24054-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Q+mZvp8D;       spf=pass
 (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=krzk@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

Hi,

The ioread8/16/32() and others have inconsistent interface among the
architectures: some taking address as const, some not.

It seems there is nothing really stopping all of them to take
pointer to const.

Patchset was really tested on all affected architectures.
Build testing is in progress - I hope auto-builders will point any issues.


Todo
====
Convert also string versions (ioread16_rep() etc) if this aproach looks OK.


Merging
=======
The first 5 patches - iomap, alpha, sh, parisc and powerpc - should probably go
via one tree, or even squashed into one.

All other can go separately after these get merged.

Best regards,
Krzysztof


Krzysztof Kozlowski (13):
  iomap: Constify ioreadX() iomem argument (as in generic
    implementation)
  alpha: Constify ioreadX() iomem argument (as in generic
    implementation)
  sh: Constify ioreadX() iomem argument (as in generic implementation)
  parisc: Constify ioreadX() iomem argument (as in generic
    implementation)
  powerpc: Constify ioreadX() iomem argument (as in generic
    implementation)
  arc: Constify ioreadX() iomem argument (as in generic implementation)
  drm/mgag200: Constify ioreadX() iomem argument (as in generic
    implementation)
  drm/nouveau: Constify ioreadX() iomem argument (as in generic
    implementation)
  media: fsl-viu: Constify ioreadX() iomem argument (as in generic
    implementation)
  net: wireless: ath5k: Constify ioreadX() iomem argument (as in generic
    implementation)
  net: wireless: rtl818x: Constify ioreadX() iomem argument (as in
    generic implementation)
  ntb: intel: Constify ioreadX() iomem argument (as in generic
    implementation)
  virtio: pci: Constify ioreadX() iomem argument (as in generic
    implementation)

 arch/alpha/include/asm/core_apecs.h                |  6 +--
 arch/alpha/include/asm/core_cia.h                  |  6 +--
 arch/alpha/include/asm/core_lca.h                  |  6 +--
 arch/alpha/include/asm/core_marvel.h               |  4 +-
 arch/alpha/include/asm/core_mcpcia.h               |  6 +--
 arch/alpha/include/asm/core_t2.h                   |  2 +-
 arch/alpha/include/asm/io.h                        | 12 +++---
 arch/alpha/include/asm/io_trivial.h                | 16 ++++----
 arch/alpha/include/asm/jensen.h                    |  2 +-
 arch/alpha/include/asm/machvec.h                   |  6 +--
 arch/alpha/kernel/core_marvel.c                    |  2 +-
 arch/alpha/kernel/io.c                             |  6 +--
 arch/arc/plat-axs10x/axs10x.c                      |  4 +-
 arch/parisc/include/asm/io.h                       |  4 +-
 arch/parisc/lib/iomap.c                            | 48 +++++++++++-----------
 arch/powerpc/kernel/iomap.c                        | 22 +++++-----
 arch/sh/kernel/iomap.c                             | 10 ++---
 drivers/gpu/drm/mgag200/mgag200_drv.h              |  4 +-
 drivers/gpu/drm/nouveau/nouveau_bo.c               |  2 +-
 drivers/media/platform/fsl-viu.c                   |  2 +-
 drivers/net/wireless/ath/ath5k/ahb.c               | 10 ++---
 .../net/wireless/realtek/rtl818x/rtl8180/rtl8180.h |  6 +--
 drivers/ntb/hw/intel/ntb_hw_gen1.c                 |  2 +-
 drivers/ntb/hw/intel/ntb_hw_gen3.h                 |  2 +-
 drivers/ntb/hw/intel/ntb_hw_intel.h                |  2 +-
 drivers/virtio/virtio_pci_modern.c                 |  6 +--
 include/asm-generic/iomap.h                        | 22 +++++-----
 include/linux/io-64-nonatomic-hi-lo.h              |  4 +-
 include/linux/io-64-nonatomic-lo-hi.h              |  4 +-
 lib/iomap.c                                        | 18 ++++----
 30 files changed, 123 insertions(+), 123 deletions(-)

-- 
2.7.4

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1578415992-24054-1-git-send-email-krzk%40kernel.org.

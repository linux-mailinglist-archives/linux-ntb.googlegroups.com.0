Return-Path: <linux-ntb+bncBC6JD5V23ENBBG7M3DYAKGQEEWVK3IQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vs1-xe37.google.com (mail-vs1-xe37.google.com [IPv6:2607:f8b0:4864:20::e37])
	by mail.lfdr.de (Postfix) with ESMTPS id E4A2D134C4F
	for <lists+linux-ntb@lfdr.de>; Wed,  8 Jan 2020 21:05:48 +0100 (CET)
Received: by mail-vs1-xe37.google.com with SMTP id a28sf788275vsh.14
        for <lists+linux-ntb@lfdr.de>; Wed, 08 Jan 2020 12:05:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1578513947; cv=pass;
        d=google.com; s=arc-20160816;
        b=E2VM5pF4uTOApoFQ4AxVrCK/TtBSHd0cQ0Y0HcB0Ck5XsVlZgodoRWuaoKEP/xRM3i
         mCH2LGVe/a77QdglHnZ4cZ3E2tgpV6Qgs5iWd9WUiylGH4M//THYPnlTvtLs/K8OM9S9
         H37ElfvVYiWaD/EO4lchR0adVReL+u8CWk7VfyqebkpRxu62ZblwxulzKwgWSrLkhXa/
         Ga+f9npmZ1OIF2PT7QXVNvPq+HrNuc5l7BgQDkCP9dhgJ+w5VMO4UiSCGq5LfwdRYDwj
         QxB7eas1nwBnms9fmYWIYtxCy7dOnVyr/MpFs6uFfxEuJySxflD92oR8e5ZZf7LFSI65
         7Q/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:to:from
         :mime-version:sender:dkim-signature;
        bh=zlz7ZyLN0teS5TDxLeKYTEORQ5PWAqXdEXwc4YUOqew=;
        b=Vc6dUvy0ij+9pnhTAmwmDvgQCerLTerIUksEknr59eAS564ciuYOdcu5EaHHJacx5a
         DAkEMI9ZP00S21MKIBR+L/tGw+zEaxnoXSgqS/1xnnFHcGbSm/ykG1+IEzr9zdI89nAs
         dsfTDnJFQsmedwLsIyhU5Sti+3OiINPzpDoHsc/ZEJJ4AILrfMPep5PDCd2zZj6/UuFh
         rFgYYitYbmayd9/86nAruPxsCDDXoJexHzE4Yf4VyJbGkWC6aiIfMBDvruDf8vQzeeom
         7aDUHuSfez0qdq3pc7bnmTZXxi3PiR2MOXoeWzht9h61IGr6I2aMPaA5ZSByaHWBqP1L
         wciQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=evYOx5Kd;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zlz7ZyLN0teS5TDxLeKYTEORQ5PWAqXdEXwc4YUOqew=;
        b=tAYa4HHKwKMYys9dxJHRhyW1On+iAcqhWLuXi+MW+i2mirECow/5EbTfKsYxIvbY8S
         dNnxt01eQmZcAGEFcTt2aGTvN1pnXx/tDOOo2WlUE6WdIoOcMQOjJKW10ouSXLwWCg/d
         mVA6UgIOcixpuYoapPOGg9hyPaResCljDan6nnDaVa8XjFkqakVL6RbanT55awTbLQS5
         FBbosQeDmdsTGTbPd0hpaail6pgcw54/RYn/verXMrEs+NmemsYB8gXA0168ruciQdmA
         5Y3XDr2Y1VIwGgzoNNRVVOqIfxkTDDvDcAaiJKi74mPtu41a+yibbRQQHU4wfNjhtpNb
         SBEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zlz7ZyLN0teS5TDxLeKYTEORQ5PWAqXdEXwc4YUOqew=;
        b=DV8U3Rtn/C+t72AODnjOgDf4xkN1Fx061k5jCCLvm+8Mbr3pJHIyXkifP7YQrgBSPp
         k8XevShXj6Q0CAlDBJku+A7ofXp2PqDvBGW+DzGgOfxbT5RiM45mT6E6/d5NWEx7HiMS
         Qk4EV+kouVlpj5WR4K5WmQ9KJ2HCaTAYJb36dD/4bJyo1F0sTc+JQWSxZNVtrKj3qtD2
         8qmvLn8v+k5iE0OuaV6Xs/b0KTkcf7ayLHf9a4WockigKB3SFzfKWSqotekDYdFJspef
         ejpZZFQclX7k+/vzeW5KHIOsZhs14NsCvnpcsLYz8fp9c3c9QWxK1JLZvY3t4NfwL/Fp
         xdaw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXua1J2zc2TBHytkLjdY5yD/KfeuaGrCBGa36M1YbBbTWnTLJxr
	u+onyyZQKNDK4abaHRRIT0s=
X-Google-Smtp-Source: APXvYqxxE2iKb2wqX75DxQwz2/cRHncIKERajQneqSilpOf1AKNeRukJpfs1sf5YO5kFBZs9REYewQ==
X-Received: by 2002:a9f:3ecc:: with SMTP id n12mr4690908uaj.45.1578513947698;
        Wed, 08 Jan 2020 12:05:47 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:a397:: with SMTP id m145ls178773vke.15.gmail; Wed, 08
 Jan 2020 12:05:47 -0800 (PST)
X-Received: by 2002:a1f:2a95:: with SMTP id q143mr4114689vkq.2.1578513947272;
        Wed, 08 Jan 2020 12:05:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1578513947; cv=none;
        d=google.com; s=arc-20160816;
        b=Et5bIKdE5QkStosdH48XHaK4fzA30h6c+sJuRhz34ifQNXAm8qclpZ4FcOOTjWELvo
         zQqhRRovbGb6ikYeURzQEwRXa/YY/Ygekt6gmez/g8w7jp7KZjihYpBqeLge9azEgm0z
         tZNu7LgMkvqIhp0EyVk66AzNh9AswDQqT5ummZWB8F3mecchz47qDbBZdqXNM1W+AD2G
         E+4kT/UQFVDBnosaBkHCmkYwg34BsXsP5Vx6I3gMskMvPa+UsdLqiKld90SZpoUemO4r
         vottwhjpBlri8jR1zNy1lsXcoYmpgUP02Ii6vNFlvDX9eCMzIBqGnfulOB2OA38uMQCz
         L0EQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:to:from:dkim-signature;
        bh=xUEgkWAFYsVgHqC/6plNTC+nY6R5o3Mj5cRQo+ZRGBg=;
        b=d2AI7EU/ALhtTUxASSzdw48GohO6Jk57TUxCA1CKZ+FvQavvcG+tzMMDybewRBPf3/
         dU5Okrvrbw0d3vOjoxy8BfKkVw4RW0DTESUtWAEPYevWNv5oWGCc0AbCIOz1h7TgbTIC
         Na/zTNyeyL0dHnJ1ef5vQj8ZbbNNwWd+cTkfyV/jEPTG6gm1HL+PW1itDeO53Ui6bjtj
         wMFHQAphfeLG7+uFgoZgFmvNg+9V1LdUYc84LpwuoD8qbp/mfeJ44qrIqcobznFdBP/d
         dBXkTSA53ayB1HA4J5DaI96Cc0APA0CrqMugPc2BhgwvCBjsLBCQXpJ6oUYajb7pK7sX
         ZnAA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=evYOx5Kd;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i27si190437uat.1.2020.01.08.12.05.47
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jan 2020 12:05:47 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [83.218.167.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4D70120705;
	Wed,  8 Jan 2020 20:05:37 +0000 (UTC)
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
	Krzysztof Kozlowski <krzk@kernel.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH v2 0/9] iomap: Constify ioreadX() iomem argument
Date: Wed,  8 Jan 2020 21:05:19 +0100
Message-Id: <20200108200528.4614-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=evYOx5Kd;       spf=pass
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


Changes since v1
================
https://lore.kernel.org/lkml/1578415992-24054-1-git-send-email-krzk@kernel.org/
1. Constify also ioreadX_rep() and mmio_insX(),
2. Squash lib+alpha+powerpc+parisc+sh into one patch for bisectability,
3. Add Geert's review,
4. Re-order patches so all optional driver changes are at the end.


Description
===========
The ioread8/16/32() and others have inconsistent interface among the
architectures: some taking address as const, some not.

It seems there is nothing really stopping all of them to take
pointer to const.

Patchset was not really tested on all affected architectures.
Build testing is in progress - I hope auto-builders will point any issues.


volatile
========
There is still interface inconsistency between architectures around
"volatile" qualifier:
 - include/asm-generic/io.h:static inline u32 ioread32(const volatile void __iomem *addr)
 - include/asm-generic/iomap.h:extern unsigned int ioread32(const void __iomem *);

This is still discussed and out of scope of this patchset.


Merging
=======
Multiple architectures are affected in first patch so acks are welcomed.

Patches 2-4 depend on first patch.
The rest is optional cleanup, without actual impact.


Best regards,
Krzysztof


Krzysztof Kozlowski (9):
  iomap: Constify ioreadX() iomem argument (as in generic
    implementation)
  net: wireless: rtl818x: Constify ioreadX() iomem argument (as in
    generic implementation)
  ntb: intel: Constify ioreadX() iomem argument (as in generic
    implementation)
  virtio: pci: Constify ioreadX() iomem argument (as in generic
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

 arch/alpha/include/asm/core_apecs.h           |  6 +-
 arch/alpha/include/asm/core_cia.h             |  6 +-
 arch/alpha/include/asm/core_lca.h             |  6 +-
 arch/alpha/include/asm/core_marvel.h          |  4 +-
 arch/alpha/include/asm/core_mcpcia.h          |  6 +-
 arch/alpha/include/asm/core_t2.h              |  2 +-
 arch/alpha/include/asm/io.h                   | 12 ++--
 arch/alpha/include/asm/io_trivial.h           | 16 ++---
 arch/alpha/include/asm/jensen.h               |  2 +-
 arch/alpha/include/asm/machvec.h              |  6 +-
 arch/alpha/kernel/core_marvel.c               |  2 +-
 arch/alpha/kernel/io.c                        | 12 ++--
 arch/arc/plat-axs10x/axs10x.c                 |  4 +-
 arch/parisc/include/asm/io.h                  |  4 +-
 arch/parisc/lib/iomap.c                       | 72 +++++++++----------
 arch/powerpc/kernel/iomap.c                   | 28 ++++----
 arch/sh/kernel/iomap.c                        | 22 +++---
 drivers/gpu/drm/mgag200/mgag200_drv.h         |  4 +-
 drivers/gpu/drm/nouveau/nouveau_bo.c          |  2 +-
 drivers/media/platform/fsl-viu.c              |  2 +-
 drivers/net/wireless/ath/ath5k/ahb.c          | 10 +--
 .../realtek/rtl818x/rtl8180/rtl8180.h         |  6 +-
 drivers/ntb/hw/intel/ntb_hw_gen1.c            |  2 +-
 drivers/ntb/hw/intel/ntb_hw_gen3.h            |  2 +-
 drivers/ntb/hw/intel/ntb_hw_intel.h           |  2 +-
 drivers/virtio/virtio_pci_modern.c            |  6 +-
 include/asm-generic/iomap.h                   | 28 ++++----
 include/linux/io-64-nonatomic-hi-lo.h         |  4 +-
 include/linux/io-64-nonatomic-lo-hi.h         |  4 +-
 lib/iomap.c                                   | 30 ++++----
 30 files changed, 156 insertions(+), 156 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200108200528.4614-1-krzk%40kernel.org.

Return-Path: <linux-ntb+bncBC6JD5V23ENBBCHLWXZAKGQERQJ4ROQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id D2655164C84
	for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 18:51:05 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id u10sf600691pjy.2
        for <lists+linux-ntb@lfdr.de>; Wed, 19 Feb 2020 09:51:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582134664; cv=pass;
        d=google.com; s=arc-20160816;
        b=bYyjS0hbm19iRwJGcezRL03B/6NRwX+W1ahCJQ7j5r8UUMyBaO1HfrSCzWX408xyGN
         lj8MuEMJF+/BsKr4c/dizX/a8pLNCPuhDWuqzhGE++5Il4bH70Sg2W0cnctdBU0Vi+Nu
         3HAh7zvUKhUPy13SA3j+1JtFLlrBDUnqGvS4xW+me7KS8NMmb3tNHQMy/C7IX1rkNvNk
         slcoIeXgT1+lFG9h7dc+t4CUm1CbEiGqxMxFn+eNJCh3epqBvoHyYd9waAmunWrqAj3T
         SIKrjfnEPzJzSVeJF2jlmOYB8AYhJyxUxhLQq8K/nhvyt1Nzc8VemfUeW9DTfYOq4HiD
         pMVQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=KduwdesfWtA15moAdB2qkHwyq/jTqmuTH2bZ7HsuBhE=;
        b=KNcccwmWZ+rRKKkMKTPmQTaO/00NoUcXseBbmLzECELi84zsa3DbEXyEJO55ZxcRNQ
         OJO9jOHqxF7VVGQvnNC17L7emNXs1528U0snY/vBt2HKc/M6IEYjra/QOWN6rSZ+E4YY
         fmhdSUo2+b64Uu2ytzPC+NMR3Hhx1cVRsxJW59fvd1RLFrbfQiMt7t7mFMVHqre1EeGS
         X/eNRfScVKDwRRlb/T2hEeej1lrR9OZQK2YiBsFsWKDp5VpBsOPuAK+WFCGp94iSzbWB
         3t8X/PCV4fi7c28gEHD3WA0TIawUNtFlOeuNPFl7nx9bGnRpc770+tKp/eVqPH7JmFrm
         BDAA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PxIaHkLn;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KduwdesfWtA15moAdB2qkHwyq/jTqmuTH2bZ7HsuBhE=;
        b=qgwWcsG2A4piU1OOo+hnjcGd+D7EVLHaDDO1l0G8nW1h5P8ub78Ou5tmlH3myAkpSt
         KJOyJQQ03qKYso0eg2Z9TREBmabjplZkLP/uLEhNs6SOdqytxgmZkjKpgBWjX1KiYFHc
         8zHdF9AmHuFwOq2s6xmrXbAS+rp4hNkHgbPtHlGq1+iEuVeb16+yQr+LM9neeQvywBeU
         MV6jpJBA9jMcxH77cM7j1D8GtKUcqQGcCcoXeMh9yywkkc32opsSbtnCEpGAcBo5C52J
         Y6NkF3XUG5QlnsSpVMfszxvFXT0FicPpLOEnolMo2gNewry1eq4zGVDeFb4/LNWhHxAM
         JsvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KduwdesfWtA15moAdB2qkHwyq/jTqmuTH2bZ7HsuBhE=;
        b=SqTI7pilFrM4yisMO4+Y+y3VZsHqodqtJjatig2uUTQL8RHFGIDt+JnKkEMGsdYB5G
         6P0BApdJ5zunO1Ho0X+hz3Fb4B5Ankn/Oy94L4Lxh3y2gt2PRzB+VnAU4unMZHOU9brc
         ho8tEqv99XZBBFmrFuC+QlUN9Q0M/EHUKZidjPIzZqzOIbw77uXNpQXfAEN6lv2b0XTC
         qqSm6yLXFWo2BghBNJXsnyZOgK6twFHKgzl453VbZekW6p/MsOUKAX9gf+/+x1koZMCM
         YkqAuY7DS+rIaOEuBzqjQoRDWaG3Lnb+qOGS1egjYlXqBV/35F1YU/beaZk1Xu0OPZsq
         PBjA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAU7gGxRbAINFjus3imvaW1ikE68wQtjbBbX2c1gi7lIbWq7X3WT
	ZQ+XF+03fzouG/ZXBtLDHw4=
X-Google-Smtp-Source: APXvYqxjTYN8I3FxaOzHwFi+u8YqC7jmQaKShL6LU1haOrp1mC3EvJIsLDEx0uOhhUxNlKptac6eNg==
X-Received: by 2002:a17:902:8609:: with SMTP id f9mr25768801plo.203.1582134664510;
        Wed, 19 Feb 2020 09:51:04 -0800 (PST)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:df41:: with SMTP id h1ls8063607pgj.8.gmail; Wed, 19 Feb
 2020 09:51:04 -0800 (PST)
X-Received: by 2002:a63:447:: with SMTP id 68mr27975297pge.97.1582134664099;
        Wed, 19 Feb 2020 09:51:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582134664; cv=none;
        d=google.com; s=arc-20160816;
        b=uysyCT8P0xpI5miun7Nw2AKQ8SMEn1nJU5oFmmFgJMlVal2Sikzavyb1ITzp5lQ52D
         eYMJSQ8oZBGo7sWSVkgmB7Se2xgEeU9GblcGGrow3ZC70jf1hse393UyMnNz+F7v5UCY
         hhpMP/5XhGqng9cYGLA+EDEE4HRHB0/jrDwlxFwcfAZ9MCJVKjH56FJBBs/2LigvMmWI
         WBzadYb4stsGdMMLsl6cV8yQDYXZnGMvt9jYfRcBixL6xYYIPDLom+jL2oGCYIjw+Fli
         DZSOHW5+TcRp0AAOrkFElDYhimWeBkp6Y9koV3JN422v9/k3lyQwybgM5NmmQGrhQ1wa
         IjtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Y1edpiNs58p1NZOgn9cQTRdVAyn7IXWpJyhMdXx/Huo=;
        b=lgd/6FTabfKJ660DNoNpHZlRs2zAONYxzNk/FpVM7UEuhH8cr8mdw+CJ1EgwS4Wi00
         flI+A3tg5yJu08uxUj9GoScQgx64/oPmDPxHGmS95ad+B6wbltw/KhCmwmDwKxqIwXBi
         tXIgEVVqABISARr8LAGhInup0kyVMSLlCe7T1vSOEDLjNCHAChlvpMR5nCL/wVWLdlX1
         sl9MB19Lcy8EvOKZw6RTatx17ftJ0maVLs38AeHYsUG21VQgSgFMDQ/Il8BVM4GG1v6M
         GNypje8Ra9qBusWzcVme+lkJ4WBIhLlnaJyi7dAHEYy+pxsSSKpfYJ3n1Xi8Jo0BIhY9
         NMJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PxIaHkLn;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i16si361616pju.1.2020.02.19.09.51.04
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 Feb 2020 09:51:04 -0800 (PST)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost.localdomain (unknown [194.230.155.125])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0A9F7206DB;
	Wed, 19 Feb 2020 17:50:49 +0000 (UTC)
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
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andrew Morton <akpm@linux-foundation.org>,
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND PATCH v2 0/9] iomap: Constify ioreadX() iomem argument
Date: Wed, 19 Feb 2020 18:49:58 +0100
Message-Id: <20200219175007.13627-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=PxIaHkLn;       spf=pass
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
3. Add acks and reviews,
4. Re-order patches so all optional driver changes are at the end.


Description
===========
The ioread8/16/32() and others have inconsistent interface among the
architectures: some taking address as const, some not.

It seems there is nothing really stopping all of them to take
pointer to const.

Patchset was only compile tested on affected architectures.  No real
testing.


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

1. All patches depend on first patch,
2. Patches 2-4 unify the interface also in few drivers,
3. PAtches 5-9 are optional cleanup, without actual impact.


Best regards,
Krzysztof


Krzysztof Kozlowski (9):
  iomap: Constify ioreadX() iomem argument (as in generic
    implementation)
  rtl818x: Constify ioreadX() iomem argument (as in generic
    implementation)
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
  ath5k: Constify ioreadX() iomem argument (as in generic
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200219175007.13627-1-krzk%40kernel.org.

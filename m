Return-Path: <linux-ntb+bncBDAMN6NI5EERBGHUZH7AKGQER7KUNDA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3592D66C2
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:17 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id r24sf3655821lji.22
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629337; cv=pass;
        d=google.com; s=arc-20160816;
        b=KlTR75DPEfysGt0o303dVhPEkDxOP42M/aMFCWh5gRiqxLVT0IZ6dm69DfhOCZkQvD
         GvDZSp5I5KCSdZ32udLRwUAcWZ2ovQrrsEaUVafiQY6G1IUMAKUbCnVD4uyxu3strVQF
         w0DiU9ePrYEcZn//sLGdBoSY+AjwGD8yXHJWG66gzp0q1q5I3dnEWvWpe8jv3DYNSPtK
         gS4MI3yi4wiZJKPFeM4vabsw7QGcZI0PuceBbxyJiGBCKHTVrVLjQGy6vr3ziOkY/ZCz
         8CxuSWGOguljMAQJh7sGqILKbKN96wZLzzWmf2W46oTGrsK9ZeWJp6dhoap5twZxmEbu
         MLng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:cc:to:from
         :date:message-id:sender:dkim-signature;
        bh=HnuPH5SFySkUPXvZNUWny+qTOk1r3yomoRBhv+/2qa4=;
        b=mEM3EEtz21kJPvrzOEEqZBM8/fJN1g2DB3Oh9x3zUypgTN1ezt7Aaccqn11e7yGuF8
         GdsejgWYX0fo/A/Jj1GNhPorNoIBRZgrfl3mLYXg6KWPBfuBv/ZsgrESMtqbamKQD/c4
         aWPlSaakwXPU5rlDVWuxJruO46mxAPbL+7veajGjo96VCYFzVd5C3i9iAIK1mFnb248x
         BRaxUBNH3Ut2tgllCneqx8WZwbY0cG4spl2UzohgXrrln4Ytiyf4uzysgGIz5SlsastP
         +ynHqbZn+0qLVCGEPOZV4jZYCsQrJ3yarP4yp8Qi84E+c/1JYIOX1/Qfw94DjUvFM1rX
         M8iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="h/TAwStA";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HnuPH5SFySkUPXvZNUWny+qTOk1r3yomoRBhv+/2qa4=;
        b=XMBOD5TtJI/W2FSIQFEzcYuJXuREiMVZFaIvGc9IHSFHwr4ixOw8vnwFSoqaQR2yV3
         +2m8uDmiNxG2esAEhhPT+0C3aWGPoEtnjDz3JDywF5vNftfeBEuWICX6F/vE7hnVF/fB
         7e6LJAtn5+W6F+tDXiZSOkEAjor3obdBe86XFOZ/nNxKngl2uzqVat97UdVhi3cEOwBU
         L6S1Fnj9DUK/bTSM/KZcSz6DCXZdrPZekTVbBB4d4erdzaI/hxBNo9FtiBgL8rYiBAvw
         akoobRqeSemCp9iw8pvlsvhr0Qqilzu/7QGE6G9yMKvVzT5Gh8qmqVSiKpSXuLHu8fAt
         ROdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HnuPH5SFySkUPXvZNUWny+qTOk1r3yomoRBhv+/2qa4=;
        b=JwHe6OZLYiPrIKmSvvdGFptp0Cyu440mkhwf9bIPTQ57K1ZdxF89Ed199s4HMaYPMr
         oXzuF+mtxH3NBojWkg0k/QTv8b5dDPPuJKeYIfcQ16WWooG+IiJ4piWttYN33+m54j8t
         0+iwqBcpuas5uNCTg6VTyWvQ4+BS10Xn8guBb+mWwn+fQW5mbw3WSgzbSE4QXNCIzCmU
         JomhJNGCREYhEk5XuUVBrIWTymGUC0EK/E08mnbeqzAUxlyfEDcMsuvCIvGaAb7aOC+H
         WsAo7UbQYQ4RFsSajKbLNbwzmYPf7rvL1EY+GP37V0slMy2ITToJnBxlVkP4OmUdjJi9
         77wQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532BUlVV6NbudFsu5QpkgPKf+wm1aPQWPmK/LSpMk8B4EvaslWgr
	GmyzSFuqNZCgelGAztk5igs=
X-Google-Smtp-Source: ABdhPJxmg2xWZUvu1uP93T29/n9lUIuKs8RoBdD4BvATIUy2SfR8nPfOS4QqXXhOXYA6Uu58UhF46g==
X-Received: by 2002:ac2:5545:: with SMTP id l5mr3198773lfk.294.1607629337168;
        Thu, 10 Dec 2020 11:42:17 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:10d4:: with SMTP id k20ls1979987lfg.3.gmail; Thu,
 10 Dec 2020 11:42:16 -0800 (PST)
X-Received: by 2002:ac2:4886:: with SMTP id x6mr3160929lfc.76.1607629336020;
        Thu, 10 Dec 2020 11:42:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629336; cv=none;
        d=google.com; s=arc-20160816;
        b=JirntulgZBg3p2IjLNBmoCt8X2qaW/qJkJ+vtJOAF+h1t5rOkE+WlLgMny3Gb7Peo6
         YRFgkmQhvNnkin/brKENJn7y0hwCgz7stCvffxK/fQrlpFk2wNfw3MFQf+aeuablZwLG
         XbJDY/Y1YHRr8CM+JDxY2q4G4Q3nryJr9QoSRBApX0wQ8tH/d2pqRaY9tQxSAREO0Tt3
         mjzothI3dAv071Rffg4TL2SkHEw+FPID5SkWamuCnZKcUFZ4mN3nDKNZ5+Jk22jp8YSs
         LWZiXOm1UgKnd9XnMsMSOvtLYGzYMfeKVsCiINE8irmCWAkwO3xMdWFGB7+V3bWI+Gil
         ZbcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:subject:cc:to:from:date
         :dkim-signature:dkim-signature:message-id;
        bh=dqmaBUU1aX3t41xhFMZZXhwmlvXhIHW8LZkxAL3qIuw=;
        b=rJpW1dQXqleSsK/KkVQA+TE2/o0hIV1jmOk+lCpDQM2xr2GxtHeE5QxgEXY30RkvQM
         nATFsX80MFKC+UOpS2PxSGg7ZxXypUQKqbzGPOhahDBM2pJOcwuFSaWIuf57/3+7QMNS
         P1JWiu8ZA+Wl1qen4MSa9dcoVSE+KNElInzeGinD0nldmGT/c3+GKAlz7C2syZMEwUFt
         UFi3vX2M6YAjTcMy6MM5U5IuxF+vd0yUAKG76g4475DV5rBPTuIS2goYSoO5Wm0WGI/Y
         wnwjFx0Gpac5lDhb91DYQf9q87sWbHN+bnikNB/oEO8CSQ7o07qIFGa7COi4JTuIW2Sp
         nlXg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b="h/TAwStA";
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id y21si196543lfl.7.2020.12.10.11.42.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:15 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210192536.118432146@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:36 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will@kernel.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Heiko Carstens <hca@linux.ibm.com>,
 linux-s390@vger.kernel.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>,
 Wambui Karuga <wambui.karugax@gmail.com>,
 intel-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-gpio@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Michal Simek <michal.simek@xilinx.com>,
 linux-pci@vger.kernel.org,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
Subject: [patch 00/30] genirq: Treewide hunt for irq descriptor abuse and
 assorted fixes
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b="h/TAwStA";       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender)
 smtp.mailfrom=tglx@linutronix.de;       dmarc=pass (p=NONE sp=QUARANTINE
 dis=NONE) header.from=linutronix.de
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

A recent request to export kstat_irqs() pointed to a copy of the same in
the i915 code, which made me look for further usage of irq descriptors in
drivers.

The usage in drivers ranges from creative to broken in all colours.

irqdesc.h clearly says that this is core functionality and the fact C does
not allow full encapsulation is not a justification to fiddle with it just
because. It took us a lot of effort to make the core functionality provide
what drivers need.

If there is a shortcoming, it's not asked too much to talk to the relevant
maintainers instead of going off and fiddling with the guts of interrupt
descriptors and often enough without understanding lifetime and locking
rules.

As people insist on not respecting boundaries, this series cleans up the
(ab)use and at the end removes the export of irq_to_desc() to make it at
least harder. All legitimate users of this are built in.

While at it I stumbled over some other oddities related to interrupt
counting and cleaned them up as well.

The series applies on top of

   git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git irq/core

and is also available from git:

  git://git.kernel.org/pub/scm/linux/kernel/git/tglx/devel.git genirq

Thanks,

	tglx
---
 arch/alpha/kernel/sys_jensen.c                       |    2 
 arch/arm/kernel/smp.c                                |    2 
 arch/parisc/kernel/irq.c                             |    7 
 arch/s390/kernel/irq.c                               |    2 
 arch/x86/kernel/topology.c                           |    1 
 arch/arm64/kernel/smp.c                              |    2 
 drivers/gpu/drm/i915/display/intel_lpe_audio.c       |    4 
 drivers/gpu/drm/i915/i915_irq.c                      |   34 +++
 drivers/gpu/drm/i915/i915_pmu.c                      |   18 -
 drivers/gpu/drm/i915/i915_pmu.h                      |    8 
 drivers/mfd/ab8500-debugfs.c                         |   16 -
 drivers/net/ethernet/mellanox/mlx4/en_cq.c           |    8 
 drivers/net/ethernet/mellanox/mlx4/en_rx.c           |    6 
 drivers/net/ethernet/mellanox/mlx4/mlx4_en.h         |    3 
 drivers/net/ethernet/mellanox/mlx5/core/en.h         |    2 
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c    |    2 
 drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c    |    6 
 drivers/ntb/msi.c                                    |    4 
 drivers/pci/controller/mobiveil/pcie-mobiveil-host.c |    8 
 drivers/pci/controller/pcie-xilinx-nwl.c             |    8 
 drivers/pinctrl/nomadik/pinctrl-nomadik.c            |    3 
 drivers/xen/events/events_base.c                     |  172 +++++++++++--------
 drivers/xen/evtchn.c                                 |   34 ---
 include/linux/interrupt.h                            |    1 
 include/linux/irq.h                                  |    7 
 include/linux/irqdesc.h                              |   40 +---
 include/linux/kernel_stat.h                          |    1 
 kernel/irq/irqdesc.c                                 |   42 ++--
 kernel/irq/manage.c                                  |   37 ++++
 kernel/irq/proc.c                                    |    5 
 30 files changed, 263 insertions(+), 222 deletions(-)


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210192536.118432146%40linutronix.de.

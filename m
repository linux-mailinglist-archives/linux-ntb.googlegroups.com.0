Return-Path: <linux-ntb+bncBC6JD5V23ENBBMMOTP4AKGQEV4GJJOQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id E6BEC2199B3
	for <lists+linux-ntb@lfdr.de>; Thu,  9 Jul 2020 09:28:50 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id m125sf1825676yba.23
        for <lists+linux-ntb@lfdr.de>; Thu, 09 Jul 2020 00:28:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594279729; cv=pass;
        d=google.com; s=arc-20160816;
        b=lFrgcLDdOaXyEqsQ/WEZ29tysn8Dyxap/1akeOtgNpgvBHlPu+FK1HkeUXkNoO0A6d
         imliZoNa45e1SRoulZ3hEIzURnWC8EDB5xmXDcYFIW8LgR35ZgQssAOK7Nb3NqzQANrt
         JKMWWMUUFJ7aglVVkNjQHsQx7KxBw2LBkXhF67JFIS5+YX977f83t1/nPix2Y9hNy9JP
         ipHY0s3V0sTn4TbqGQkPPwPG0ke5y9CnyF0xF8AIDHYLgxpV8U/qPeJJZrI4sPfwig4+
         7VHa3a9imN/ZUpWIY3aRz7XzCA1jhpmd7Gql9/WggA+hL53RNxYexW8NNSXdy/OTCD3d
         TcbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=o6t3hPD1CfZiDjD2dVDlOl4ukH3UlG0MTiVP6deJHJo=;
        b=H5zMsmvEzgZMJm1aGX5mg3xq9GS5k4wNxZ8/3e/XElc5fFQvOPkA+vZjB0Up3VfVTU
         ZSbIGi8D92CBRSiRFOSsK/7KLs5p0M7vKgtvlGo+mtlBnQb6l9qUd51fhS7/N+CoypCt
         H5ZsiWCNzjSd5uVHe87i28JrTuUxYeptP5Ep2/pUYMK2Jqbkn3GcIY/GJzQyUMH4ccrL
         BoscqvpciZa7hrHtUo4PGRt7KqK8f08byzN/Wr6FdGwELMsOQvLPxiiTvydDm6iDgd2R
         R19iXFiCvKynTYrvJA7LFzPqkCEY2uNtQ9sSbzyUuuduD3lk+FcIzQtUU3t/rqa8BPQk
         9oSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=05Zm0mLc;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=o6t3hPD1CfZiDjD2dVDlOl4ukH3UlG0MTiVP6deJHJo=;
        b=HNKPNBOMj+S/X//xsPbaYmhrZHhT2CliEpic3y8UUof6MW+mZbO2shHgUXJijGP2uy
         x10oUoq+enpF7pDeaXX0Mgb8E2L4DPVxCHjiNH+l6CzczjsVuC/ktpa7kxPuXZbxuWNT
         VczyhmVSIAhQlo6vwGZwlNBbgNcBG2jA/bXxRAcU9XMhI1KMIYMgjYJhkTIwo/8p8Pkr
         fZTf9VV+T0utbMfqWzy20hM3CbcIvIdxHrfOCNpl943tMkNbd//XIep3NWNJZuAU9pdO
         yXrH/O/c4k6NqILMq39GvEB+7+yvV0L9wCwTu6mdI+TLcWkRcMMd5OCby5sd/iZLkQo2
         M7Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o6t3hPD1CfZiDjD2dVDlOl4ukH3UlG0MTiVP6deJHJo=;
        b=J3PDu14tvH7FeGZAaYiw1MNmlnMHAHhkgRYaElkcFPxvNKv3FUdSWV6CpmWoQTgsgt
         /ln1dKuckX/FH+h7HWhOfbLQzCozu7LtRoRRLjABTdf3Q2YJafoswhmWgXg0xt6Doyn8
         l60w3zNUjD4rjpctHRnlFhmgsoJnBaeuDJdwrWP+NlCIxx+q64rphgKAV6InDFdqL6J6
         QyaQjTUJeheXgGeq2KweR/q8SGUASLMUcuwIsmHskfWKV5vyPO0u1Bd3Qx7+tyK0CTMd
         qekWq7EshvlVnpB4g3Q4O0EAGSNy85YJ0zkmr16vx3Z9BJsH6shf1vp7+camILY8k7E+
         /xGQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530YjBsSIevmoIjXLe7fafWrhXkppqxJsSmCpudeAXKeBCCFXD/7
	0Nz+WNpZhEcQ8FgYAvs4VDM=
X-Google-Smtp-Source: ABdhPJzUCz6XUh9EsoIlODxg6mjWO+PmnG2fzxgHjXHKJCKhpnXLHd14rHGXdTbI3ryrOgMIo6TRGg==
X-Received: by 2002:a25:ba4f:: with SMTP id z15mr102484754ybj.113.1594279729643;
        Thu, 09 Jul 2020 00:28:49 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:2d5:: with SMTP id 204ls1771598ybc.5.gmail; Thu, 09 Jul
 2020 00:28:49 -0700 (PDT)
X-Received: by 2002:a5b:607:: with SMTP id d7mr4173680ybq.348.1594279729349;
        Thu, 09 Jul 2020 00:28:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594279729; cv=none;
        d=google.com; s=arc-20160816;
        b=qPvGZrOCpBRwFS5lNtDYv0Xv/PqY66/PfPwwEHoyQcvuO2lbt9qSG0urPePabzBdDO
         0C31RZZJlqp+FLX+fZkfJArrclBud4aUW+QjJC6N/Wqa9nnXCB4tn5UEIc7ZYsRzexqP
         FFmVcR/UJnX9bI0hbVST9kLgqJF+ycmKwbgaAsyIn52phNQ6BQ6d6Ee6/VM2f6OjWhRC
         65qCvhHtdhpJs2IaesJZm+AV+k1rZKDD9KhHkJLKsFV7AgFrbLMEjJK3r4FcTVaDuzVF
         igMqL7fCaNCWfiwuDgn4UiTa7reI0odNDYbFNvT/TsJWNCGdv2vFTSMwW9+QNFqAl4xG
         IeYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=cSPJGYXKXhCwWjmuKFx+2ByRObYosFJyTax9bAdYlLc=;
        b=qX5eD172W/WnOCwtVuqlT/Aztu85MHu/h0q0vyvJgR2QJ8cSj4M1K8xpkQWEb9Tc1O
         qd1O+Ul91UIjIghsibpevCs/bcBexZCTrxDbWuHkkldY8gSCR3kqZV74/sAToOdtJgeG
         ImuBNkgAOEnLMfWJgcILr+Z3t5ynnubZtX87OO9QVXoz7AU4j6MSRp2RGnflm5KHv0pr
         xr0COk/ZiPtASRZao067B4J+oHQgwRXIWKSHoMftFkY8W1eLR9QqEVXRd/Imw9vZmaei
         4xZTBodqyqh/XrbG/fsRSPpKdswhJkKu1uUhFJtzfTDj/awT277VH9nas45skpBxk6PH
         Y3kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=05Zm0mLc;
       spf=pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=krzk@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b36si126728ybj.1.2020.07.09.00.28.49
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Jul 2020 00:28:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of krzk@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from kozik-lap.mshome.net (unknown [194.230.155.195])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6505D2070E;
	Thu,  9 Jul 2020 07:28:42 +0000 (UTC)
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Richard Henderson <rth@twiddle.net>,
	Ivan Kokshaysky <ink@jurassic.park.msu.ru>,
	Matt Turner <mattst88@gmail.com>,
	"James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
	Helge Deller <deller@gmx.de>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Yoshinori Sato <ysato@users.sourceforge.jp>,
	Rich Felker <dalias@libc.org>,
	Kalle Valo <kvalo@codeaurora.org>,
	"David S. Miller" <davem@davemloft.net>,
	Jakub Kicinski <kuba@kernel.org>,
	Dave Jiang <dave.jiang@intel.com>,
	Jon Mason <jdmason@kudzu.us>,
	Allen Hubbe <allenbh@gmail.com>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-alpha@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-parisc@vger.kernel.org,
	linuxppc-dev@lists.ozlabs.org,
	linux-sh@vger.kernel.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-ntb@googlegroups.com,
	virtualization@lists.linux-foundation.org,
	linux-arch@vger.kernel.org
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v3 0/4] iomap: Constify ioreadX() iomem argument
Date: Thu,  9 Jul 2020 09:28:33 +0200
Message-Id: <20200709072837.5869-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-Original-Sender: krzk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=05Zm0mLc;       spf=pass
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

Multiple architectures are affected in the first patch and all further
patches depend on the first.

Maybe this could go in through Andrew Morton's tree?


Changes since v2
================
1. Drop all non-essential patches (cleanups),
2. Update also drivers/sh/clk/cpg.c .


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


Best regards,
Krzysztof


Krzysztof Kozlowski (4):
  iomap: Constify ioreadX() iomem argument (as in generic
    implementation)
  rtl818x: Constify ioreadX() iomem argument (as in generic
    implementation)
  ntb: intel: Constify ioreadX() iomem argument (as in generic
    implementation)
  virtio: pci: Constify ioreadX() iomem argument (as in generic
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
 arch/parisc/include/asm/io.h                  |  4 +-
 arch/parisc/lib/iomap.c                       | 72 +++++++++----------
 arch/powerpc/kernel/iomap.c                   | 28 ++++----
 arch/sh/kernel/iomap.c                        | 22 +++---
 .../realtek/rtl818x/rtl8180/rtl8180.h         |  6 +-
 drivers/ntb/hw/intel/ntb_hw_gen1.c            |  2 +-
 drivers/ntb/hw/intel/ntb_hw_gen3.h            |  2 +-
 drivers/ntb/hw/intel/ntb_hw_intel.h           |  2 +-
 drivers/sh/clk/cpg.c                          |  2 +-
 drivers/virtio/virtio_pci_modern.c            |  6 +-
 include/asm-generic/iomap.h                   | 28 ++++----
 include/linux/io-64-nonatomic-hi-lo.h         |  4 +-
 include/linux/io-64-nonatomic-lo-hi.h         |  4 +-
 lib/iomap.c                                   | 30 ++++----
 26 files changed, 146 insertions(+), 146 deletions(-)

-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200709072837.5869-1-krzk%40kernel.org.

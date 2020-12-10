Return-Path: <linux-ntb+bncBDAMN6NI5EERBMXUZH7AKGQEMEWNBNQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3BB2D66EE
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:42 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id i4sf2319421wrm.21
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629362; cv=pass;
        d=google.com; s=arc-20160816;
        b=soH5Hk9UbHj6Lj2BEBNTiJ3FFW/ytZmWnt0EVXDiFQhgCW+eB/+RNqgPlIcXWoVVFy
         +4IjNYV8IApm91qW/CRdQLLUVNnoZ3blY8OG60Q9pkjk4t8/2kDZMiePXO5TnPn4DogJ
         MkeTD4AWQF0DzGtdAoe8mBvRCvGkZcRZ7o03TQVhORRPiPn1HY/WyPwxeKpEfPRN2qTz
         dmzYlvfxtR9m+m4hXJhYw40b+/l78T7CMy0XOLuRUhVxLhYq25Dg5IzLePD1y1Pft06Y
         akiooLtJhRQ+Bswj9khQJXUq+1QMXXH0+EjIxY4M98boZjSVVwpJacHdacj0OJc8dm7N
         cGXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=zcg7Ksz41zirBIEpFkhoYceKKW0423+Vo4asDaDLTso=;
        b=lIkK7Q6WkRy+/l2GNq+xSSTW6kJDLMe9BzHVzMuIttvzp0Fy9W1+4oxHA/1QXbTTil
         cm89+45mSyVa32ooEiBJgQzh5IdXsSvcVTOnb3aHP+XxmjRISceocfRpbZCEhV5GHQaB
         FiIhO3+c0Zoyxta7I3K40sP8EiJCygjOtxfNBM4niEMPtKnddxyW6HEnySiZy1Y/p2dc
         kJ/MOVMSlIQVhzLRcqxo0k/xv0ayHOihkHNtLhgmL/Es/e33gyzfLgW6XhhQ5oLURsBG
         oP3yZu445UF273e/FsXE1nXRRwLrkW6hrOC9UxxQJM37+2Ew+21IRIF5aCXtOMW0kLfq
         jwTg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=mj3Kocu4;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcg7Ksz41zirBIEpFkhoYceKKW0423+Vo4asDaDLTso=;
        b=ZBRYwQJh8gGyNkA/WVERpu1gFNGoZ8L/ia/DEY7Twhvy89uLS6A3rQwHzIhdZiiR4N
         +Rma4fVyCfEnX25blKXKwhSH6fmcaCbxptyD4XnIqBcLbzq9qnEUBE2yyhPAWF2+Fc80
         tUP7DSKhVd3LRTAOqF8pkX7T2OJYragPigjKNf3XPC7ukPpKnN4/LIG7BiOXQXOOnmRT
         ZKRdisV9+hCNyKYJ0WOyAseE/S5/zVcZXMhOC/5yWx9XE9o9p61GhDN1LCjyhVj8BGBW
         Wv0OMD2Rrs/kP6LRpF0MIve1yUZOz0i0kvYd27GeIuxx6vgj8RXfZ36FFiyuukW1zWSr
         Vp0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zcg7Ksz41zirBIEpFkhoYceKKW0423+Vo4asDaDLTso=;
        b=awiudxVo94RteHy1NzD9w4D++wOgsoUJRFB6NxOYvVRY1dFlmQv7d9bT1AS0sj5ajg
         gf7IZe0rii8GqtTCPwCbGxL8TmAb9FbUJplA/f6RbFy+OiuRXlfj9oWtVA/D3gcAXRhV
         ZkwoLeP5wvLmuk+DfcwTDNlEOuYwFTglfz6hTOa8ZmkPzlN2q7PCq4g2MTQMWU0d3fEw
         23qhiTk6f5TX81a1jx5/vkXyLos5rVR1pcUsAplKWoxkJt3APSBMh2szmAUZPH+hpdg5
         Bznwb/P1q4kgpeX6bv6w4/CLoeqMSDOzsGrlbjL60yhdXBh5n06dnb0anpPwlYwn+9wM
         WZXA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533gDzatwZx88DX+e3U3rJ0OnJ9y+m1d9bGOaqidhbN7FNJgP3Qm
	I42E0KzKOUQjT1UqA+vXlhU=
X-Google-Smtp-Source: ABdhPJxCLeb1GG5NtJSIBhBs8A7sry6ASttAZvhlwNwbUdefUhq+i5jNMjyh0JSOyAdUzl/qYVKhkA==
X-Received: by 2002:adf:aa4a:: with SMTP id q10mr9790184wrd.276.1607629362408;
        Thu, 10 Dec 2020 11:42:42 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:b688:: with SMTP id g130ls3546318wmf.3.canary-gmail;
 Thu, 10 Dec 2020 11:42:41 -0800 (PST)
X-Received: by 2002:a1c:9d8b:: with SMTP id g133mr9950062wme.189.1607629361629;
        Thu, 10 Dec 2020 11:42:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629361; cv=none;
        d=google.com; s=arc-20160816;
        b=szIfAJLFovY/QYqsNM6dt1HiTeaHX9KrUsN8rX1zUUHwYHGv9wn+B32CtpZg71dlbe
         s4woXlzrgitHxr6th8SppNAoLzWfVJZ5EuvdsfzqBnitSeufGOdSb1YJ6Hq7BGPyw50j
         EKegivxsNcT7zq2+/XF8vNu6k9GKBBhr7nZOa1UefT2s2zcn/y1y5BRJ2AHJacNy+Gfb
         spBEr+NBDFddh4W7uhKJmitd9s/REzqKUgT0OF0BHndHeED5RaFRuwQVENvZtvank7vi
         I7tJWBO6kSi6lgalJrdUX7voEttagbim10CYUK0xO/ktx5dfmbd5hu0fv+d3cARZoVOV
         02jA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=Qj+nUJLINsvJ1wGGRtokQbSqazbntoaovZZiHCUfEoU=;
        b=UgoXoY6antGuW1A+C3hUz+1pEH8eopspniswuG43aQE/d2IIgb5/tdXnA5Tikt4uE/
         Lg8ulhH3pHSr1712JFHY0Ao0j7jivQ8STIsUBP9hs3GmwlrCFBCdxZmZQ4KEJ8x5U/Xw
         PrXe44wKQHA5EBA/429bukMyL4TUNqj6p5pJNAOs36Urhoe8s83/iJldJVGQO0iImxDP
         AQXWssJyplJ8vIh7s5RK3I7GE8341MdLAhXziqZA32icv6coJWZWlHw+DodC5puxIkhd
         m7/G86sgSGXvVkg0Ulm7jf7AL2nDmxWmw1SzpfV89tCk/UCNTJVgTU/N5/momIrSxfjX
         eTGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=mj3Kocu4;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id e16si249089wrn.1.2020.12.10.11.42.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:41 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194044.672935978@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:57 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Tariq Toukan <tariqt@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>,
 netdev@vger.kernel.org,
 linux-rdma@vger.kernel.org,
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
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
Subject: [patch 21/30] net/mlx4: Use effective interrupt affinity
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=mj3Kocu4;       dkim=neutral
 (no key) header.i=@linutronix.de;       spf=pass (google.com: domain of
 tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

Using the interrupt affinity mask for checking locality is not really
working well on architectures which support effective affinity masks.

The affinity mask is either the system wide default or set by user space,
but the architecture can or even must reduce the mask to the effective set,
which means that checking the affinity mask itself does not really tell
about the actual target CPUs.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Tariq Toukan <tariqt@nvidia.com>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Cc: linux-rdma@vger.kernel.org
---
 drivers/net/ethernet/mellanox/mlx4/en_cq.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/net/ethernet/mellanox/mlx4/en_cq.c
+++ b/drivers/net/ethernet/mellanox/mlx4/en_cq.c
@@ -117,7 +117,7 @@ int mlx4_en_activate_cq(struct mlx4_en_p
 			assigned_eq = true;
 		}
 		irq = mlx4_eq_get_irq(mdev->dev, cq->vector);
-		cq->aff_mask = irq_get_affinity_mask(irq);
+		cq->aff_mask = irq_get_effective_affinity_mask(irq);
 	} else {
 		/* For TX we use the same irq per
 		ring we assigned for the RX    */

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194044.672935978%40linutronix.de.

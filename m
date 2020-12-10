Return-Path: <linux-ntb+bncBDAMN6NI5EERBNHUZH7AKGQEZIG2VMY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 825C02D66F4
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:45 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id u11sf3690345lji.17
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629365; cv=pass;
        d=google.com; s=arc-20160816;
        b=BbO+jfzQQ/Xij+m+d+ykwA/+chYfgz3RTHtbUZkqygu4M0QGoZdcHpcfQA61X/g/p+
         gLQQVH4vPhLsSAzBB6FBe2hAOtZkGTCvWXnBKIWbzzeq6sulBsdq+UVXbFVKyhnUfvCK
         /5BmAXgZ7dZWWO3AGV+JfY17Tys+aVviFEooIU7AdP3S9+8ne33Hh1dWdMvFXSBh9rQn
         K5LCVbKhuQfrKcYwnLRAkBA46AEweT1dtNGN9D3FHl52pT/DzSNcNMSMOhwnYkCTjoTb
         AfSyhy1+3Y0JyomtfH8Hjl4qM9+tJUduDfAiRjLFzMg5NqaNrrpumHO4G2d1lzJGaJgh
         NSAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=TLXRp/8D1WROQd/IekqL3xBVsCPUCp/ODYJ3OqsoEPc=;
        b=In8/1jGw2nNKl/ewkKXOEkFRamTbBn03RcIg0PLBPpZN7H2t4RAfr/uPFR+Lv2hsCB
         SD8QwV+PVwqmO4szMwZSvf8tGccwTLdvrnErERN4z5bkpKHNioQq2v0iwR3F2nzWb3Y5
         xml2geMvpebMqF1d8pGRiI+HbgsOdwcA6ji7GRqNMmIfJOJWFx2CLARI3RoxOE3aM/Hi
         DshoQtj4TZ5Usl1/wlO9MI/lkP7FnzYxi1Jj6ZM9zs70OGYNB+eH0t5PsI6f5cXCAfez
         H4S5SpoS4NE9Ov+j9Dt4RiTJfZRXdt1QtBkS5OuT01Em2NSczeK27mCFOD4uPM39NNS3
         T67Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=DfHk2d4r;
       dkim=neutral (no key) header.i=@linutronix.de header.b=eULJnI7r;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TLXRp/8D1WROQd/IekqL3xBVsCPUCp/ODYJ3OqsoEPc=;
        b=ro63GfcIVfh7vLPx7KCTVlWEE9ZNkcTlw2PhL3VVdA4Lnxbdm0OHOMEJl9zQpuhTmZ
         wZ+ClzQdPFnDGXZlZK6a2j7EyA7kLCy5KGefcUu0nJk31qBO2GBZ5LftHG/NpDkqJ6IL
         K9oaDTutKL/9poICc4T39N5JmgS9mNYyFmwEB36fWSmn/+Eq8gdn3GhQBHsN3cUk/KiU
         fmamRSuBNZIdbrsgenFL+O1Unu/KIbl7+I+xlfEwn5i5ZryBq/oDtJdDMaLpBag/wjwC
         dwablLtxGWJV+blQC/x8g05qj0Cay2XxiQkm5WAPgRscMd+w1xBUM3tdEQctYkruNEdv
         VTRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TLXRp/8D1WROQd/IekqL3xBVsCPUCp/ODYJ3OqsoEPc=;
        b=U3jYd/sklTrQULQw9xcSL5iFfHbcOAnVNNqQl+rwBuVTK6qpVOtyBdMJF3QDUweF5S
         JJszrf3+Ot3RH6Xipp6EfJis6zbkEyowtrEb7A7us86bTWHBnEkhZrPU7aeFxX6rzq23
         Adn41OVjeNx2Kgcq4neriWDVIyKlfCWJ1+x5XJAITzF5KUMcS7luLijzxx0M3ISu5SDq
         4nXePE8WOlPhr02YuwO8Psr0D8CaRSSYFvgxWMYIxo6gcwOIAHCPqMd2LvJiSsig/pDu
         mdzxSen11uu6FX96eosNrT4XK0pmLnaaZhg0GXzcEjyU6vWtZp1OmDVdEjJwgC40dQaB
         T7Uw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531bjkQP1ijxtVxhXg4Dn/VqFKDqhWgJ55Elm1aqjI+2N/Aj/CYL
	/GMhFOruhs+CXpD05CXHWMU=
X-Google-Smtp-Source: ABdhPJwbK5mSgQF0LIC5Zid6NFuP3cVSsUJepXBmEU738Tc8BWBZ2iFYDZUMtbbJD3U5VlpfKSIu4A==
X-Received: by 2002:ac2:59ce:: with SMTP id x14mr3239709lfn.183.1607629365107;
        Thu, 10 Dec 2020 11:42:45 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a19:c1cd:: with SMTP id r196ls197633lff.1.gmail; Thu, 10 Dec
 2020 11:42:44 -0800 (PST)
X-Received: by 2002:a19:e49:: with SMTP id 70mr3280264lfo.13.1607629364250;
        Thu, 10 Dec 2020 11:42:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629364; cv=none;
        d=google.com; s=arc-20160816;
        b=PFrkUjBPCajGSMjr7e7jHeKzVYF02lX0GjWsRg9DoxuB878EoySaYrk5wpc1Ld3SAT
         tzA42tunz+H6h9VNi9sowvFIpRqOQc+c8USFdGYSyXsKuBbfxGiJpXH4TnzBTcrNw0v0
         aiYoCgYnxArLL9a3w8Gl94fVR6u6mWFGoHPLlK4Ni9tMbtBljDaajPwAo2kbUMVUKaqH
         LUFmIl0MrD6dc55LVc7XSksF33BPy29YfuJzn0MwymSuINaHKqa1VOQjE4hYg3THQMJL
         VB/98eO0GD4wFDkHhEWtA77qrD7a3Wl/0YXGi+FZgrPChKngV2VybaJ7IVwy2C03Visf
         oOYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=55TI7XJ63kr4B6KmttDRntIShtWEHQxTpDKUCCh7MMo=;
        b=0U8HHTmQIcpYZE+U+eizkLCpHnIB+FMfmsesF4IKkdrb4f+3zTI80gqQBnmt6KUIYD
         2TSOzX4mBBNy3lBWgDWvfjvS8bDfoM93dkxPBWiw5S91TcjN80uyoPYpJYj4aoPR9+SX
         xouD2xrhSYoyBH+b+fc5s60jdBJilTgliQn/cuQl0fSqK0bsUIIPzIraIy++cnekBHoY
         GW8S3+prCaYCKsG6Oom0SSIql7ojUSFm+9OQQ/ZvjcqIXujRod/dejLTO5nAmrv79tXA
         HM1rhoEen4TWHCstxOf2F8qRXK43492FIxUK4xVwoGTW0Ozm8knalv4rBV4dqDrHx1PA
         tAtA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=DfHk2d4r;
       dkim=neutral (no key) header.i=@linutronix.de header.b=eULJnI7r;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id v18si205998lfp.4.2020.12.10.11.42.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:44 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194044.876342330@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:59 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Saeed Mahameed <saeedm@nvidia.com>,
 Leon Romanovsky <leon@kernel.org>,
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
 Tariq Toukan <tariqt@nvidia.com>,
 Boris Ostrovsky <boris.ostrovsky@oracle.com>,
 Juergen Gross <jgross@suse.com>,
 Stefano Stabellini <sstabellini@kernel.org>,
 xen-devel@lists.xenproject.org
Subject: [patch 23/30] net/mlx5: Use effective interrupt affinity
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=DfHk2d4r;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=eULJnI7r;       spf=pass
 (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1
 as permitted sender) smtp.mailfrom=tglx@linutronix.de;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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
Cc: Saeed Mahameed <saeedm@nvidia.com>
Cc: Leon Romanovsky <leon@kernel.org>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Jakub Kicinski <kuba@kernel.org>
Cc: netdev@vger.kernel.org
Cc: linux-rdma@vger.kernel.org
---
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -1998,7 +1998,7 @@ static int mlx5e_open_channel(struct mlx
 	c->num_tc   = params->num_tc;
 	c->xdp      = !!params->xdp_prog;
 	c->stats    = &priv->channel_stats[ix].ch;
-	c->aff_mask = irq_get_affinity_mask(irq);
+	c->aff_mask = irq_get_effective_affinity_mask(irq);
 	c->lag_port = mlx5e_enumerate_lag_port(priv->mdev, ix);
 
 	netif_napi_add(netdev, &c->napi, mlx5e_napi_poll, 64);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194044.876342330%40linutronix.de.

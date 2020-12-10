Return-Path: <linux-ntb+bncBDAMN6NI5EERBM7UZH7AKGQETKDGLLI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 424962D66F1
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:44 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id z8sf544877lji.8
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629363; cv=pass;
        d=google.com; s=arc-20160816;
        b=A+1jSmL3fjTGvGPPB1h6qYwi4kSwf+8B9FcwGgYb6LWp3dZvSd+c1JbYrKrSp0p/GJ
         uoHksZRMEUtFlE1JeFyP7zCC2+ztKzyLDl42HCPn/Bou8L3XgGwWyLwX8IRpsAyF39t0
         dd+SNxWJKAI3eoqSo6zARSkXsvhW445e4jsibroA/DUe+bw/4fQ96thQkrDNenFbs/iT
         Q0n7qNdmn1pP/QVITANBhufsM4lWUtFG08CRHPCW9hgyDKoSKVhA+rhOr37McfUHeqlp
         nbq5yibPFhQWHowoHCcWtWkn+jtASA38YYz0et4WnVdeAyuS7K5nkzaSLelC5pPL5EwC
         f0FA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=bUyGsG9twQ6cKZG62Ib2AggBKU05Eipie0MfFc1LBBs=;
        b=KVytWgqz3u/uUQ86GSyaS+27Y/lSzunOucD7wynIEzO2R2L+RVoB0IhsSIZNYyQ7Yh
         hpaw+MPuv/zf8xv/005PB/looLAIxJdbSA7VSp3PRxRyNDAW8rQLkD5Kni+/IG67Tv+G
         Hf6oMBmpICI4rTDJGin+hS2UZ7Cj648lXcskdW0FKmPiH4EyXc5hsMkwq7f4v38mwEVO
         vEfZSnTIpVjDt5kzo7AsPC/LIBMzBE/EN4SrCjVzIfDgYUKDnZgh1xpSOQnDflQMhKsP
         TTvFG3SM3anCW42AUeJQW8DYd+NNDxSBNs530xlP6MPJObDAYwbamWWwzOj5sWKzFJbM
         Epfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ebvAKnU9;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bUyGsG9twQ6cKZG62Ib2AggBKU05Eipie0MfFc1LBBs=;
        b=ZBzSwYBNVq9aTnHx3zT6BVus7WJ/9/Q/PmBiNtI4zGkh65PT58vHjVwNiySUQS4YS6
         IxGKl1WPFvwx/s6MmRQgcm4jg/o7xIWn1e1NeQuDvKICphmPu5vIikQAPeWiE77gctct
         C8so0D+TWOajd4A4UNuZwDWjffxTmA6kNZKAcEzYdkgQNj5WBQzPtiQPiGdjxL4rENmE
         PYY+baUaTpquCrVNh1FojtzwvveXsZXLt6G95RbLLjNw9I84+jhjFa4JbMGYdYyX3tjb
         UBKnftOpwjS/vyExJBwFbN3X7Oa4ntXskHMtrEGvzpB/J3BI87cIFPT4UWsBlSQcjBcx
         ww9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bUyGsG9twQ6cKZG62Ib2AggBKU05Eipie0MfFc1LBBs=;
        b=k4i80rVd68UYqivTv7Osl/TtqUF9N9Ya+ybemDx2cicQCT9+xPE3vd78o4FEqoThRM
         Hk1wNzFY/6GpSOWYDMVbnX9DWoXE11fpIn2zEPIBLowLVSWtFoDYxzQtf38YnrRMYmcY
         Gp6cnSHvS3ORc84bBZiOnkJ4M2UGyzST/vw5X5QlBdneNhRo7un6SY0vbBJpNG0fa4UY
         nyS+zz5UWlGp2GXX0aDIIBpvUSfoBSFniNX17EpWHnyxiMptNDA1FHWzkTGRqMFiAxuZ
         ACLoPVcA8RdhXndB2iWntRYsl91ufsR1apgBfpXHrgnsIyZJHVpfG0yUnvww75f9CTIg
         78Fg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533V4Qch5dxVcS04xqHVqd618F0+PeQvLigysWMlcMrvBX/TKFon
	8RztFIv2qFr/1xAXaTGxeYk=
X-Google-Smtp-Source: ABdhPJy/livDmX2A0/DGkANhTIPidXbO19wMvVi/RwLU+1UNrfoQoaBdaXD0IsthISx6QFJwswd63w==
X-Received: by 2002:a05:651c:1b8:: with SMTP id c24mr3804027ljn.4.1607629363863;
        Thu, 10 Dec 2020 11:42:43 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3608:: with SMTP id f8ls1980869lfs.2.gmail; Thu, 10
 Dec 2020 11:42:43 -0800 (PST)
X-Received: by 2002:a05:6512:751:: with SMTP id c17mr3165737lfs.72.1607629363026;
        Thu, 10 Dec 2020 11:42:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629363; cv=none;
        d=google.com; s=arc-20160816;
        b=YdxOjQaL8to9Zwj3/J3bLXEBHKmHS4TL3TgBucdDmmn3UJYb/kaIVjaxJA4P73jlJ1
         uYOqf7VKeyabsgvtNWSxKRkI8O7HGShVcrndGsjAKwC73Pu2B2XX0vnoDSZa4lDBmM6v
         QmNpqIlbaAcveSi9NrOaKQT9lt9w57i85oNQHHPs4tBCPgFSRfGXUoSAJuLLpmi/3ydx
         FWL3RqInD8Ep234nC/bXFyY4nEkO52jzaOcr2Dz3fHJg4b7Ha7ZfNL7Pekc9dqFV9brE
         JYl+TKVPS/qtYUjNxCWSsfyqyfi0cBKyezWh/uCGxYI6mkB7MqZnb9sPbP8Y8I+wb1/M
         6Org==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=VOaf/d7D7QtaaC+WU1sXZf5eTJVDFk9LK/s7Au7CufU=;
        b=gX8C2fdUN9dz+8h0rP0pTy2WaNmdoRFIFTfEIR9P76F2n9i6lauVwoOzuBAQkf6wpP
         OEZUw0ki5SpAEHBlpvR6PQ835JExS07Pj+u2z5Yqs3SHtnxufXJ58Aho3nPFhQ7T0JMq
         odY/xyV0oxgNsk9JWLNi7zs1oQTHVTutvrOOMKY/OzgSYCs3QemcfGBUPmGQ5lg2axuR
         qSAQcwsTRy0MPQkSU+RKO2f36M/HvhONNLsNi81ZcCzZWrg9YSY70PQxlJr89w6ON7Kz
         q/QRZBvvaLj2hfTvQx47iacgiVzk7jMDbnykkvLvQ64jGFRCf9d2/SwClLJUpHqDtmtK
         E2iQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=ebvAKnU9;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id h19si215678ljh.7.2020.12.10.11.42.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:43 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194044.769458162@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:58 +0100
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
Subject: [patch 22/30] net/mlx5: Replace irq_to_desc() abuse
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=ebvAKnU9;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e;       spf=pass (google.com:
 domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender)
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

No driver has any business with the internals of an interrupt
descriptor. Storing a pointer to it just to use yet another helper at the
actual usage site to retrieve the affinity mask is creative at best. Just
because C does not allow encapsulation does not mean that the kernel has no
limits.

Retrieve a pointer to the affinity mask itself and use that. It's still
using an interface which is usually not for random drivers, but definitely
less hideous than the previous hack.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 drivers/net/ethernet/mellanox/mlx5/core/en.h      |    2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c |    2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c |    6 +-----
 3 files changed, 3 insertions(+), 7 deletions(-)

--- a/drivers/net/ethernet/mellanox/mlx5/core/en.h
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en.h
@@ -669,7 +669,7 @@ struct mlx5e_channel {
 	spinlock_t                 async_icosq_lock;
 
 	/* data path - accessed per napi poll */
-	struct irq_desc *irq_desc;
+	const struct cpumask	  *aff_mask;
 	struct mlx5e_ch_stats     *stats;
 
 	/* control */
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -1998,7 +1998,7 @@ static int mlx5e_open_channel(struct mlx
 	c->num_tc   = params->num_tc;
 	c->xdp      = !!params->xdp_prog;
 	c->stats    = &priv->channel_stats[ix].ch;
-	c->irq_desc = irq_to_desc(irq);
+	c->aff_mask = irq_get_affinity_mask(irq);
 	c->lag_port = mlx5e_enumerate_lag_port(priv->mdev, ix);
 
 	netif_napi_add(netdev, &c->napi, mlx5e_napi_poll, 64);
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
@@ -40,12 +40,8 @@
 static inline bool mlx5e_channel_no_affinity_change(struct mlx5e_channel *c)
 {
 	int current_cpu = smp_processor_id();
-	const struct cpumask *aff;
-	struct irq_data *idata;
 
-	idata = irq_desc_get_irq_data(c->irq_desc);
-	aff = irq_data_get_affinity_mask(idata);
-	return cpumask_test_cpu(current_cpu, aff);
+	return cpumask_test_cpu(current_cpu, c->aff_mask);
 }
 
 static void mlx5e_handle_tx_dim(struct mlx5e_txqsq *sq)

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194044.769458162%40linutronix.de.

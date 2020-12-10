Return-Path: <linux-ntb+bncBDAMN6NI5EERBLPUZH7AKGQEIN6PYHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id BEE0F2D66E7
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:37 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id d12sf2889870edx.23
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629357; cv=pass;
        d=google.com; s=arc-20160816;
        b=Och0bNxIq7KnOIZig7M00hvLl6uC0cOHdYovhodjIih+CONxqc10tfnCqudOieiy4G
         mVyYVaCjWyiqSNUKsUfB1WgRHYVgCFP6MpipUGc6VygcFPMeT4nMqDAqlIhYbgC54ejR
         j7xFMYid2phw8flc3Ka3SAwDerkXKYSnDGknQqJN/2e6VGee26nzNc5fu8TtXGPu2sJw
         Bnpa/ZbJzK5lgWqqibDGI1FNQP+s0SkK74mImtZOOZFuUhjekI/YOLjkCZOVN5tuARXr
         x0AzYc4y0Sv8TOFaLW54xKl0a9GOEmFbVxWnPKmlquDShtw6+/KFLWZUZZhl7Q0TWXvF
         HUPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=Tt7bigCj9TF1DTyPid8WMV8oRRAmh8vd4rs6yxGuT5Q=;
        b=ADL29q7lJWJmfFqbTkccibl0mnjRyITWdDTuzdD1xk/M3Kss+65eoLZs4cQSi5SpGF
         DhFd28Rq5F4Twd1wfP2os/VB96tpKNHNUmB88c0PUYdCX70gzGNX6o2Df5H7383qyW3O
         gv/7wLtHEBC+6cOIgN5M2lHP+oZhpg1m3Sm2KR4od8y2IFmE60IERxHT8upTVXmTXogX
         bVLShG5F8OJCVnHm2C9gzszHAnf/27WfMK/uptzbVo3Lsbct19g6Jg6kT0Xeo5WA46Po
         1lsIk4IQXcUHgIDPNzR2plMGj17eEiGwfIQ0uil11601A90jVNBw/OmMhdWaYPShbcD8
         jGSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=FXhZkYax;
       dkim=neutral (no key) header.i=@linutronix.de header.b=jZYO6UEf;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tt7bigCj9TF1DTyPid8WMV8oRRAmh8vd4rs6yxGuT5Q=;
        b=QBKft8OL/OEGDZCxSzRmDWKz7DOk7+ZS/UUluaOCsoy8cwz1K33ahp9AxS15Pmm4wT
         c/s5f6EJYLCjZLI3SivrtA7LbFseuQhr7Ip1DU3nR0mjJRIjKhqN9UjdgFroUQC4SyEk
         j6Akx/aCGjCrNIm7XpjD1XaGJ7dkQjdhBlRgiPkotGOBfYLf+63XBtAKBCzIYKqCWdH/
         x1CB6vr56pWtJc1eetVzU7kIyJLOmhJubo0xYr2zWXcMA3phpD5il9Wza9McB4ZJ0EHP
         dzN1IpVeMXzi3uA42gbJyLlH2eHcWMiQGof3EAnAtgfCFoRqTKgOw3P04ZVhMiHX7Usz
         zh0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Tt7bigCj9TF1DTyPid8WMV8oRRAmh8vd4rs6yxGuT5Q=;
        b=SujHjzNwTLm3ewRDgCFx4G81Tpk1tyQY543uDdITRK3FpdN2T02zKRV6DwiVheqRq+
         h9ev5KdY9AFPsQMkw2vnAAW6+RFVaI4949CWhjYVgHuonLXelXqOPPJ082B5eG8L5EvM
         htYy8lqOXilJKCCvzSiKiHC8H4wimYef2CoCy0WdF3vixjm9wSTPZoqGxQvNrZrreIoE
         LhIk824C4dh1Pn3iHjt9/rk6VpXBQ2Rr8MD1pqhg6m0tqlQYG2/fPRpZUCHQSA9eLBnJ
         5dpDB5M99yFRpZLobpQEIxKsqKgmRRdv2DTAeMdIZDfQYPCIrgMhQSZM5ZgeXZPVTZIO
         7zkQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5324op9MnhtfL12U+RtWk3BlX07UjB1VTDXHZuO2beAP4WHv4zPa
	rQCbKIuOTMxrNQ1jRO9qTXU=
X-Google-Smtp-Source: ABdhPJy8BQuPWBQSOLh0TXJkF7aonBdlcE7G9XzFCXZSgaAzi4LesIbSZqtLRyy2IG4xwb+cVXIcwg==
X-Received: by 2002:a17:906:f153:: with SMTP id gw19mr8131035ejb.272.1607629357588;
        Thu, 10 Dec 2020 11:42:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6402:22d3:: with SMTP id dm19ls1361639edb.2.gmail; Thu,
 10 Dec 2020 11:42:36 -0800 (PST)
X-Received: by 2002:a05:6402:687:: with SMTP id f7mr8388764edy.314.1607629356737;
        Thu, 10 Dec 2020 11:42:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629356; cv=none;
        d=google.com; s=arc-20160816;
        b=pzhMmPAuVkzZPoEm/eJFg7gIz7mRdTmcdyQdvS2PBt7UQpozycFRYVSOFFbEMFahCI
         xjCbjlFaET/S8Qig/sxIRnQLqze5+sBXrx4TDxPbfjIYnVJYzp3XHD+MDeiD/lWu+9Co
         tXvlxVoz30ygDpp2JsjzOpv5cl9CdgCXtbM5HA3CHqOVgO9y4aJBLG3nP/KRa1G1vCO4
         GSKyxMiVWYCJU8VPXt2YWpnzUBu0tkgBdGbC2r+5kZ4sMw925hQaXDbrXnMWx1MyKJsJ
         dKtV0aoDmVK7G44CAkQpTgTCXif2+lejZcYGW0vkJ7MPKcbeyT5ak21sn7OY+MgGXnMQ
         RLCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=jUTg4Los1VXz05PCBCDed5HfB12tsGaOsCncsAJwQxU=;
        b=sjtOcGj4i7u9lRkskj4DPbbm/jwfNuea7nj1+eYRQRMMeU+Zba6H3aXLzwO8p0SlaR
         8tZHWCaVkgOSxe/UAMV6pAq/k4vW3Epnp3k0iL92w4EoyUowvhmrnJOxkC+lANjL9NBI
         93yQdbxvz7hfBeXCnA0BqMlqaHbr7kW9LeRNVFExWHRnz+VZdJC7YMyQasZNtezSKnEC
         yAKA9TIQ/eMlz5y6zV+Dnl5RdFPe1h8qUirZG5Shssqun7PJ55mgr33Eq2WXSK1/t7qW
         s3KmKGUfe2wH25YZK8yQ/a6lWYWPDjOYiO1pccLR4QPauOXt+TbdwswSX3S3EljuhZv2
         pmXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=FXhZkYax;
       dkim=neutral (no key) header.i=@linutronix.de header.b=jZYO6UEf;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id i3si188859edy.3.2020.12.10.11.42.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:36 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194044.255887860@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:53 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Jon Mason <jdmason@kudzu.us>,
 Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>,
 linux-ntb@googlegroups.com,
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
Subject: [patch 17/30] NTB/msi: Use irq_has_action()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=FXhZkYax;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=jZYO6UEf;       spf=pass
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

Use the proper core function.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
Cc: linux-ntb@googlegroups.com
---
 drivers/ntb/msi.c |    4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

--- a/drivers/ntb/msi.c
+++ b/drivers/ntb/msi.c
@@ -282,15 +282,13 @@ int ntbm_msi_request_threaded_irq(struct
 				  struct ntb_msi_desc *msi_desc)
 {
 	struct msi_desc *entry;
-	struct irq_desc *desc;
 	int ret;
 
 	if (!ntb->msi)
 		return -EINVAL;
 
 	for_each_pci_msi_entry(entry, ntb->pdev) {
-		desc = irq_to_desc(entry->irq);
-		if (desc->action)
+		if (irq_has_action(entry->irq))
 			continue;
 
 		ret = devm_request_threaded_irq(&ntb->dev, entry->irq, handler,

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194044.255887860%40linutronix.de.

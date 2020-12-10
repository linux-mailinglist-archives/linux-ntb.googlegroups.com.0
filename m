Return-Path: <linux-ntb+bncBDAMN6NI5EERBMHUZH7AKGQEIGV4VHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 001ED2D66EC
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:40 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id o13sf3827329ljp.7
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629360; cv=pass;
        d=google.com; s=arc-20160816;
        b=fkz/L8378XGvEslDd8eTJvBJmG7z05kru3611Z7RCQ+Gtww8WuDM/CGQTbvv9lSkYY
         EhLAr4/VugpQ9CvqxUTHVbjWBzfDOjMLymjM0o/kePU19ble2eI28JKL5KZ3gnHuFGqr
         RN/lybH9TK6svis0oExxEFBdHgVjU/0qb+vy9rJK2SEqqgz2Iuz76xCNP51r1Gaoq4dy
         k8G86aU7v487uQsByFzikiBlYm7BOb5UU0pUOx5IJwvLJJbFQWdq2idlSMEf5JKWfOe4
         a8g6B65XEAZ1FsaVkEx7UlZN/4hAYZNKOLhXlCLiCHzmc56e75Iv1xAFJP6XFWPk9HzO
         OLqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=HAujh/7ocmvzBlWiSyHmyMEU2sJYDhfiheILI4oD0Rw=;
        b=qIbidYuTbG1VxQcUw6cMyw05TTybEPahhRE5Im8OPOZZDIlbfZl4HSoKVyHxFrn6Y9
         RIPaMXv6YlcPy1CLtzF7vp91wRWnyYUDbfQAH82aToGyjk47H2pAyZ1cLC2J1DYVqG6B
         4ub6R7v8G1ctOajSVcrCP2SnOy07EukLkV+zXs2leQRPgw6k+y60TVrm+0/T2LwYZPzo
         YUR88tcsYcEwki9G2FSbORsXV6LWw9TZsFFK++VaKN6zMr+MLZlSsPv7CgalDLjB1RHu
         M7aRXtc6TPRSqdzCdIf9TW2ij1mcqjWHAG6jKrU2jGtSuzLpaFKO/GA1j0er8Hrteoz/
         1Sfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=JDGcEIf6;
       dkim=neutral (no key) header.i=@linutronix.de header.b=Fyn3b5Ue;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HAujh/7ocmvzBlWiSyHmyMEU2sJYDhfiheILI4oD0Rw=;
        b=EiOjiAs1v66NBIHSjVzd+7Y6VRnshaSw2LWprQsdHeLfzxmYd173RgoE5PxFuivMMk
         iMgfH4+sX/ESANcdHNKRsBzkqsTDAmPbFp253Yg3c7hFxtPj55sAa3gfE1pqC7R3fnd2
         Pt9m3WkwQbCCsAdJPIZtOgeA/j5T1VIIhgjYp/ug62xAWwTJfdddTMvh4a3d9r3lJD8i
         v6w7+eTaBRcVotLhUerav6CImWCYNo+MK6U7vnrk3gs04HiWtCw2wJU1/0Gx/jkQqPJo
         RGE2WmMssAGG3eq13pHgfUzVAB+U/+ePjEukh2I/F7+/sAyqcRx16V50Oi9pLkmb9zic
         AgCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HAujh/7ocmvzBlWiSyHmyMEU2sJYDhfiheILI4oD0Rw=;
        b=YCYlLJnRQqz0mRtduU2eothIuKbzC/0kkWLRaQ8ChzGZK7oz60uSmqY+Pcm2KJxWo7
         4/H/tSxCMzoOD6Rz/HKiWwSGZSkb0n4ObnnfIdSbKc2kWe399NAgFSVgDuJYFE+hdZuc
         VI9nEouxvINF5usTXN2D1VgSgy9EeWhQaMgvW3Cpyby7SX1rRpo+25S6KE5eHmjNOO2V
         IcRovbVUsO8ftGgSfyzimVHNOpopeufN2GRnAO6H9FY6qGwooYJu2K4C1A6EWMkBOqFT
         kU7jB6/6GIXscfEP0YBFxg2pvDftxFGX+wDPXFv1VjCKzzrNv9EDfgDWdoNWMKSOSzpo
         fqDQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530UrngbJrDyK84StjkwCCQiDm3icQcMyUlRwJMoAxH5FTYSbCtW
	pVUDxkP1WSAhxiWquPu7neI=
X-Google-Smtp-Source: ABdhPJw4HozJBQcXrRpClYmKlNW8xlw1GmBORlXbbDyKJ07XYn6L49o3jyQYQQWCs7+VLyGzqJ/Fzg==
X-Received: by 2002:ac2:504e:: with SMTP id a14mr3048903lfm.285.1607629360574;
        Thu, 10 Dec 2020 11:42:40 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a2e:3001:: with SMTP id w1ls1236845ljw.3.gmail; Thu, 10 Dec
 2020 11:42:39 -0800 (PST)
X-Received: by 2002:a2e:975a:: with SMTP id f26mr3719704ljj.81.1607629359571;
        Thu, 10 Dec 2020 11:42:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629359; cv=none;
        d=google.com; s=arc-20160816;
        b=LB0VoKrqtgV2o3JblBHFtQPXgyugzqkO9VYgPbnM7vHmvjXYhClQuSr36SAWj3gpB/
         LxY7eycCZK2EVHhy5sTntnvqOCYZXUs/QImlmHBIeVNWdW3XbHdLYynsNClzHbP3hytg
         nqFFeLy2Sgs45V8+I91y6cpDqgZykJvyfLrOgdWg3zgOTQz6ayCj4KOlcgeJJhQb1TWJ
         CyUz1Bpiz/6jrWUCiInLWPhYWWh1GEHIGrMEv9IOjcz3WeCV72n4yZ0FXyHHVJSb5va1
         n+HIabjdXnvfGBBL+foj52MW5pezQ9aIGW5hSJK2uDSugY1fs9cQ8UXFC6D63qooeJ4a
         o4QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=hb66G/YKxZssYUpIlaqnSR4ZW1k+vqs7JSWYZ8olni4=;
        b=dyj8Gu9RheMZ/CrMPxgp0S0d8VfCFUo3fh9ZvRwkBSFPeVoze+xdcrfkavzGZ7RnSo
         iGpmSHVXBiighcI/TJQg4de+E4g0Eda6RVi8LQ6wGdx3zS80LtZtM40VolwHTUgZoeAy
         UUPOYvE572YOfOKwEdDO84fbdusmktlj6UEjIX1/FKecfCSC6LK14Gc4Kq1khN2kjKOg
         lwR3i7i+Q9eo4NiaAtcEzmYN+ftRIfnfCZBdIxgCDA0kGRa5ETNhz1UlOZIdtR4na2+6
         svQ5TJwgmc2+9Qv7PQJaDe42R4BeL0+vdQbsMIiWSY3gPfsmVaZH7VK0Mduj9n6doQrd
         bokQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=JDGcEIf6;
       dkim=neutral (no key) header.i=@linutronix.de header.b=Fyn3b5Ue;
       spf=pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [2a0a:51c0:0:12e:550::1])
        by gmr-mx.google.com with ESMTPS id h19si215673ljh.7.2020.12.10.11.42.39
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:39 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 2a0a:51c0:0:12e:550::1 as permitted sender) client-ip=2a0a:51c0:0:12e:550::1;
Message-Id: <20201210194044.473308721@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:55 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 linux-pci@vger.kernel.org,
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
 Michal Simek <michal.simek@xilinx.com>,
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
Subject: [patch 19/30] PCI: mobiveil: Use irq_data_get_irq_chip_data()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=JDGcEIf6;       dkim=neutral
 (no key) header.i=@linutronix.de header.b=Fyn3b5Ue;       spf=pass
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

Going through a full irq descriptor lookup instead of just using the proper
helper function which provides direct access is suboptimal.

In fact it _is_ wrong because the chip callback needs to get the chip data
which is relevant for the chip while using the irq descriptor variant
returns the irq chip data of the top level chip of a hierarchy. It does not
matter in this case because the chip is the top level chip, but that
doesn't make it more correct.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>
Cc: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Rob Herring <robh@kernel.org>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-pci@vger.kernel.org
---
 drivers/pci/controller/mobiveil/pcie-mobiveil-host.c |    8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

--- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
+++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
@@ -306,13 +306,11 @@ int mobiveil_host_init(struct mobiveil_p
 
 static void mobiveil_mask_intx_irq(struct irq_data *data)
 {
-	struct irq_desc *desc = irq_to_desc(data->irq);
-	struct mobiveil_pcie *pcie;
+	struct mobiveil_pcie *pcie = irq_data_get_irq_chip_data(data);
 	struct mobiveil_root_port *rp;
 	unsigned long flags;
 	u32 mask, shifted_val;
 
-	pcie = irq_desc_get_chip_data(desc);
 	rp = &pcie->rp;
 	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
 	raw_spin_lock_irqsave(&rp->intx_mask_lock, flags);
@@ -324,13 +322,11 @@ static void mobiveil_mask_intx_irq(struc
 
 static void mobiveil_unmask_intx_irq(struct irq_data *data)
 {
-	struct irq_desc *desc = irq_to_desc(data->irq);
-	struct mobiveil_pcie *pcie;
+	struct mobiveil_pcie *pcie = irq_data_get_irq_chip_data(data);
 	struct mobiveil_root_port *rp;
 	unsigned long flags;
 	u32 shifted_val, mask;
 
-	pcie = irq_desc_get_chip_data(desc);
 	rp = &pcie->rp;
 	mask = 1 << ((data->hwirq + PAB_INTX_START) - 1);
 	raw_spin_lock_irqsave(&rp->intx_mask_lock, flags);

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194044.473308721%40linutronix.de.

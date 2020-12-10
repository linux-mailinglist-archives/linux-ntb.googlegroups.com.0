Return-Path: <linux-ntb+bncBDAMN6NI5EERBPPUZH7AKGQE2FUD7YA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CF02D6706
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:53 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id b5sf2314987wrp.3
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629373; cv=pass;
        d=google.com; s=arc-20160816;
        b=d4HgfZbrfzWphaRtsc1kG6Q2vI7pKx6J4SE9czKmBJtf3Fd6fgBi/+Uns/P8QCuczJ
         aIrFOG1hMEK4Re2en1Hv50jVsIDHLrRdNzRf6Ek3NTCHHoOtOtnzRcfA41uadHosFwre
         kYriRgBAA7a/Z91iBQTdSIapA/mMSeyAtsJKWUXgjxED37BgN4h2cNqjRarie0YDZV3u
         raIJbywMRLP9s4b/BEg072etQgWEPrcL+3yjyHdfZFbx6FZb44V/eHJO5LDyGqQRHDqL
         p7YPxEFu+uar9O3FKKRK1zjlA8D1bboDiHk1n8UrLxEUFdt2t6p/ebj+q2SHUSt9QIY0
         LxEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=gFdEjpabx4ZsLqtSffR4XmioCwuDUydIP//sFyQj7Fw=;
        b=K2f+MbGpOZ7D+sSql1oC/eUv6AZdKYt1b1e98MC+b7zWIht41nl/1l+KnjNfor7KRY
         XXFZt3ZS/i8Rdnt0sQlVaJOiqCSruYheukiHREsAa546QpbO7RxR3vXg57ijT9tLi4PS
         j7rnL+m3ZB2FDEHYZsczuTKZK8Bupgi5CJD3Wq0udikJaVrk97HnwEhqdix1ScWjCI5y
         NAavm8kxyqGNG3gq0mwVgnU8r/ppZCQZHaWl2XJdiDEDa0s7dYSNkX8fWg8E+WfpPhUr
         PT3pWHiNhCY7lJYait2UxdiRBdDgH8g+3rJfcPL123V+zCoopfZEhgfq2MRpHVbc13PF
         vK0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=KaxGnHH1;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gFdEjpabx4ZsLqtSffR4XmioCwuDUydIP//sFyQj7Fw=;
        b=G7AQ892+uPVLnqgaHlEZ3AGzW92gFAmvgq0wbJNva/4HnwXiqh7hoMl6Rtfgs6utsO
         Q/yV+H8lssorESXW3XpLNiQt4/p5jVFCH2v+tCuTkfMY1RH+UlldaNB+g7+jDpuVoHi9
         9CNyWjy/ad4ay8yUbdzGs6AjEJLT0djFCJesbzwxJmZtFBX9LkZtcZhnZkRaY/aGtlOb
         ACLEwxXCkpIxqHBu0H9IccCxtZxbiBJWHGJj/PgukX/wydnFR4TsN4dZtDR6fjQ5EYv/
         rvAMuIc3VayOsyMgPjPpt7qt+94wFyCz6SZBUhr2OFTGaBjK/Muj3jGtkXSVWVWhb9HO
         Lqvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gFdEjpabx4ZsLqtSffR4XmioCwuDUydIP//sFyQj7Fw=;
        b=Yau886D6szgSR2P3RfFjOPHU4W1wd/NCWzgBLGNeoRgl5D6afMIa1GKtOx54uWLmUG
         7MAXEM2VDNOKfj/WZ10eMvekAZ/bSNwUxpNn9tUtWwjZ01OqFQynRNkuyACmSQb+HW1G
         k8JWgY33yyXukqbrbAAHvBiipuGuD7vqPkueU6wSLTbYtdw59v+84QI8PabLihnp4vNH
         XKmQm5pTGq0bnFerCTolmLEDPetG5qgwoPcbckcYv/olcSHOp77hQJ3aw972xWyd6b+b
         iaY8zPIbPCpI6wG7JEeANOq0/AYCtAR/TlCYIY22V5Ez6Vmt9iNMiZeae8/PQOPSBORI
         IOBQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533h+//0GSSeyJncMAAoZDu6Kk7erkfanWevp4PAEKrL6a4+eQtf
	FGSSUelLuu2Ctgapup4NGOQ=
X-Google-Smtp-Source: ABdhPJwlTmc49msqWsUW949BqAdokCOHP2FcorZcS8Efc5KWoh92xb05dWl6QJLPe7bLZrlj6zEQWw==
X-Received: by 2002:a1c:3c09:: with SMTP id j9mr9996559wma.180.1607629373689;
        Thu, 10 Dec 2020 11:42:53 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1c:2e50:: with SMTP id u77ls3551134wmu.2.canary-gmail; Thu,
 10 Dec 2020 11:42:52 -0800 (PST)
X-Received: by 2002:a1c:1dd4:: with SMTP id d203mr10094148wmd.118.1607629372869;
        Thu, 10 Dec 2020 11:42:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629372; cv=none;
        d=google.com; s=arc-20160816;
        b=oE5xdbZBjgq3okl5e5nXvMtZoXuOhkLTr102CrjTNrIWxtZXAbUwHOWry2QLIK5/9E
         NmxVqfzTwahp/nsg68blWnMyIm54fujEMe2+rRTrlOg9D4qo4/CGW8YNmSVlJsC/eugd
         QE4U8qPtKs6IRof7mMlUBlt2476eE4GpoMXhsKGmYrGnD95Aaij1VpZzRP8P8+ueYWEQ
         FMgvE6ASTQSiMTurRLrETNojybyhp+28zfmu5VzH35EjbmZJvPkV9nr8siDtqCUHRXfg
         QN2SWjqACf8yxPUUMfqnsKgBlN05+YmTFwcwxywcnxhWX9tw7Q6hN1x4mrvmOyVndyTn
         kzhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=MtNO1nEPKIMiQX4klZrvOfUrY/ABsFwlxtMkntNh7CA=;
        b=QoVmspW1kuKpgCjxsjraF6RanZ36ouUSmM3rNISAJPJSbr1aaEa/RhQskh214sPGKf
         g+0VPFVVYiWOyLPiR7NBnAqAAyH16apVWqUJXhISip3dVJoEXao+23QewW4xyQnTOvSU
         BcPoJaS2boKSz7TRk8MLPKDKkIsWii98ioKsHJu82DWM1rGwOxM9bzN/MbCHd+XJeuxA
         Iaa0ma6iAMOrmsljpb5m6pYu1CEcYDWAkdA1lrNguzwgvLiGCQWwifwP0u4A1W6GCkEd
         FKaGiPlNfjSB/78+Yhz2H6VpMQVaEXbMrzK6aY+PnznhtXBylY90oQcpZRc2XZR6Olyo
         4TQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=KaxGnHH1;
       dkim=neutral (no key) header.i=@linutronix.de;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id x130si161633wmg.2.2020.12.10.11.42.52
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:52 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194045.551428291@linutronix.de>
Date: Thu, 10 Dec 2020 20:26:06 +0100
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
Subject: [patch 30/30] genirq: Remove export of irq_to_desc()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=KaxGnHH1;       dkim=neutral
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

No more (ab)use in modules finally. Remove the export so there won't come
new ones.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
---
 kernel/irq/irqdesc.c |    1 -
 1 file changed, 1 deletion(-)

--- a/kernel/irq/irqdesc.c
+++ b/kernel/irq/irqdesc.c
@@ -352,7 +352,6 @@ struct irq_desc *irq_to_desc(unsigned in
 {
 	return radix_tree_lookup(&irq_desc_tree, irq);
 }
-EXPORT_SYMBOL(irq_to_desc);
 
 static void delete_irq_desc(unsigned int irq)
 {

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194045.551428291%40linutronix.de.

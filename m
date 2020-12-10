Return-Path: <linux-ntb+bncBDAMN6NI5EERBKXUZH7AKGQE5CC546Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x63f.google.com (mail-ej1-x63f.google.com [IPv6:2a00:1450:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD3C2D66E4
	for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 20:42:35 +0100 (CET)
Received: by mail-ej1-x63f.google.com with SMTP id k15sf2000542ejg.8
        for <lists+linux-ntb@lfdr.de>; Thu, 10 Dec 2020 11:42:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607629355; cv=pass;
        d=google.com; s=arc-20160816;
        b=KnuSnj2PCLMIPtjvf6jL24AhAD7yktr9ntw8po5tOXDZ3lD3HyIjFpb0rgZiTi3vR7
         XfHMAI3Q4j0sWEvnSHElw6J//iNtmyZ2qU7CcBeX6cAmpyjMIrRRX5P2QqF2nGAvYqUz
         jurQDxg7zgeesIYfBjNKgtfRL52p1YPRBr1fe9AYB54wVBGf3h8HPq0L9D+VfoFaTzZc
         JOW1wbO0HmPmq1pdvmQ6AAxCKrrK/8YSxpm4l9TE//kmfajtpyTVOhypEV6QEgW3tnJw
         oyYCghvadOMLu4acv8JIBKfK8lQ3JTrS9SADziiL8rQTALzShk61UJHgVs1Ptk0Yt98u
         SNkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:subject:cc
         :to:from:date:message-id:sender:dkim-signature;
        bh=NUkp4OYjGrdFctk0qzwH2gOk9ytXcpdTQG1ghBWILRM=;
        b=dPIEiX7EYO93dhT+b9fLZkzIhlCFXj7QTs2F4M5wRQMc9we+CvMBz403EnsYYTcuO3
         JXxdrWz1+so+gHw/b9wVPivP/N5sHKoJYK4CFA03hwhkg0mSoVRKNCW/SyQKjcaRqZgr
         ToZ5cXiMefp0cnz3nHZRss7eroZM/wV5dSmVHRPyO3dtmS0M3K3MOTZgk/bAWondlw8a
         BzwVqnga38Js1w8HcJ9HZHsp0X4gDPmPPHqigLPXophKLJVseWT+anll+XSobv+YHnTn
         s+TfPSHo6z/0byM3ZK40Er+mgKNIzivVaPfJZTLWPIcmn7wnhmBxZ/xCZe946YJoXs6p
         vDeg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=jLhcNWAI;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=vcq9ylrl;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:cc:subject:references:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NUkp4OYjGrdFctk0qzwH2gOk9ytXcpdTQG1ghBWILRM=;
        b=CTfvSmxWPaPpsqoxo/wsfynAONTM1ebKUCQMzD+m5kpbiTLLuM5zgthAA0JUTj0sp7
         zctdEJCXO+7syz4I22ueet++Ck+8fXtEn6nDpZgN9brDuvvkd/g/OayjgQi+f6yew0tS
         +ug9Lrp4eiftNA5S75OuiRYT7GSP7R3GKsB70sw+l28VX0cFOgNQIqLm4QFP6LPzml0C
         9PFCDMHgcfg6uly533zGiLOn1XzQCFU8mu6cUbhnhppbbRyZ9SFyR2shX6xY36GTb3Jl
         4X3qxj8hMIiHDZq7QOLN/kmT2ZcOrHhWJDi1vGS9/dMU4DTcxQRHbOXeOlR2Yx6+c2lV
         LHqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NUkp4OYjGrdFctk0qzwH2gOk9ytXcpdTQG1ghBWILRM=;
        b=PHCKnZUkLqruGDrtnZnV07fiib98jbr7oru0vPB3RKRVZqfcyxByoOhBxCLqRNgi59
         Ud0vnKnMpKzijLPNXKjeRdqpwn4ZkCa412OphUHI2AZtD+ZePK/Ev/AA9WK5Ghut6EPs
         sttLbjy5BJ0RdlQl+i4jRGGjl/mvjFoR453LA6+KDBOHAliohDtDBETkIRVhyS81+1Y/
         KFXf5fEy+CjKQ7cmWq7tbIkkAcXvOp6QrYz+TIYJlIS8W+8UxgC6pR7GiXFBdeBh53jB
         Aqau493eGF9dMUGxcfh1uYN+9k/OrrT0Hrm70qMJEKuK/2LgsCKe9c/4dMDc3D/QRJ3Z
         BODw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530SSewCR07mDflAywwUoAHr3zhM3WYBfqa4rUbVODcYDpkVL6KZ
	mHjpAu+frOKmZxPkkr9fsYE=
X-Google-Smtp-Source: ABdhPJxLfGK8lkY19KnDzPRgwczM8Aw0kU6iSwt3+E3Ss+zlY0Adk7yjh/M9iJW6qt2spOCXfAKLbA==
X-Received: by 2002:a05:6402:2041:: with SMTP id bc1mr8344837edb.369.1607629355119;
        Thu, 10 Dec 2020 11:42:35 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:906:5591:: with SMTP id y17ls577721ejp.5.gmail; Thu, 10
 Dec 2020 11:42:34 -0800 (PST)
X-Received: by 2002:a17:906:33c4:: with SMTP id w4mr7580030eja.380.1607629354172;
        Thu, 10 Dec 2020 11:42:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607629354; cv=none;
        d=google.com; s=arc-20160816;
        b=Phz/ne8cdVUtI5liyDzSJBvaDBBcK2OVUMQbXEvHXXUbMKv9SwirpgdkZNtUBg67K9
         Ef10wmFArn8Xb/xmoZ6VVB7x25AgLbS6cIISY2MFOy66w18e0pksbYv3d8HgNqxSjSWK
         LqSAjwrhr9A9PCjeFayE1sbYVI7b+NVESH602qw4waAa98Qc3T+MCAGYslBEJN1mhRQx
         qErM1zi9Jt3cxGUZ345jvASBEAYgpwpZFjhDzupj0IoHDF2Xu/kLh+RRQE423PGmYs4/
         9KdlexdBdfdImLZ4ZDcKp6MddnAfpoKZNGvXOM6zzeiKbAFfgWzqMUnqbb7ToPZd9Llj
         sn9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:subject:cc:to
         :from:date:dkim-signature:dkim-signature:message-id;
        bh=fEH7SfFXgNBjB2KnJKxA/TzRUtcjVN/8Utn6le7GAgY=;
        b=biHv9VClbzt264UtFtoqiZyNeUgW3Zm8vEleD+xLK0RFZGiW6mRjcRSCJ1LCwxh56H
         879lMqz+5K+jvYklyp9GfTC8EVP4zvG5fjuwjDTi+WyAD0+3fyLWOa3V2PBLuai12Hwk
         6xzd1+mggggPWgo0R2GVAq1oRPvdNxKZunU9tUsyKUIX8iPAdamxHyc9hxoSNPunegS1
         x93TOszZrzhl2fTapRUZGfU2v7kblMCLOHJNzvwGZ680FWM5aYa2QgIbQw1qVEb4m194
         Cnpj21MTT0FKJka242baw/jcgtu6X1W/Yc1rZ+YC86gSv72wbqKXvoYfU1d5A8k1s+33
         TY9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linutronix.de header.s=2020 header.b=jLhcNWAI;
       dkim=neutral (no key) header.i=@linutronix.de header.s=2020e header.b=vcq9ylrl;
       spf=pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
Received: from galois.linutronix.de (Galois.linutronix.de. [193.142.43.55])
        by gmr-mx.google.com with ESMTPS id cc25si209295edb.2.2020.12.10.11.42.34
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 11:42:34 -0800 (PST)
Received-SPF: pass (google.com: domain of tglx@linutronix.de designates 193.142.43.55 as permitted sender) client-ip=193.142.43.55;
Message-Id: <20201210194044.065003856@linutronix.de>
Date: Thu, 10 Dec 2020 20:25:51 +0100
From: Thomas Gleixner <tglx@linutronix.de>
To: LKML <linux-kernel@vger.kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Marc Zyngier <maz@kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 linux-gpio@vger.kernel.org,
 "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
 Helge Deller <deller@gmx.de>,
 afzal mohammed <afzal.mohd.ma@gmail.com>,
 linux-parisc@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
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
Subject: [patch 15/30] pinctrl: nomadik: Use irq_has_action()
References: <20201210192536.118432146@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: tglx@linutronix.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linutronix.de header.s=2020 header.b=jLhcNWAI;       dkim=neutral
 (no key) header.i=@linutronix.de header.s=2020e header.b=vcq9ylrl;
       spf=pass (google.com: domain of tglx@linutronix.de designates
 193.142.43.55 as permitted sender) smtp.mailfrom=tglx@linutronix.de;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=linutronix.de
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

Let the core code do the fiddling with irq_desc.

Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-gpio@vger.kernel.org
---
 drivers/pinctrl/nomadik/pinctrl-nomadik.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

--- a/drivers/pinctrl/nomadik/pinctrl-nomadik.c
+++ b/drivers/pinctrl/nomadik/pinctrl-nomadik.c
@@ -948,7 +948,6 @@ static void nmk_gpio_dbg_show_one(struct
 			   (mode < 0) ? "unknown" : modes[mode]);
 	} else {
 		int irq = chip->to_irq(chip, offset);
-		struct irq_desc	*desc = irq_to_desc(irq);
 		const int pullidx = pull ? 1 : 0;
 		int val;
 		static const char * const pulls[] = {
@@ -969,7 +968,7 @@ static void nmk_gpio_dbg_show_one(struct
 		 * This races with request_irq(), set_irq_type(),
 		 * and set_irq_wake() ... but those are "rare".
 		 */
-		if (irq > 0 && desc && desc->action) {
+		if (irq > 0 && irq_has_action(irq)) {
 			char *trigger;
 
 			if (nmk_chip->edge_rising & BIT(offset))

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20201210194044.065003856%40linutronix.de.

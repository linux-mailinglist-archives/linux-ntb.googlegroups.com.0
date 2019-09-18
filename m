Return-Path: <linux-ntb+bncBDV2D5O34IDRB7NURLWAKGQEWLKWXPQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id C08EFB6E8E
	for <lists+linux-ntb@lfdr.de>; Wed, 18 Sep 2019 22:58:38 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id j17sf647484ybm.4
        for <lists+linux-ntb@lfdr.de>; Wed, 18 Sep 2019 13:58:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568840317; cv=pass;
        d=google.com; s=arc-20160816;
        b=BKIjy3J/fSRtISAfN/uXbVAnW2ul5kiLdA0xIit5XM4zVHGdxipxcssCH06LpHrgFb
         4ePpWB6nVHs1R+7vEVR2lOwCUtIihfzazVD+ydfozqgjzWMgdfMJ6xoLHnhIqnLS+GVv
         eht2ZsxzUq8jh0nvBPqgRz8HmafNoy2gexUmBjbC+4EwuVfcLCouQ+iO+dZLrBy5fLma
         W6Ix0jgy0z2EyY4Ei9WyRDF8totvwK4njO2OwfOwJAgruHtsYe9cjv+RlTBXp8LwAaM0
         VfnGcaNZZG9ASEcz7GePjdIEZ0k+u17MqaVfoi1J/6XLzvcNvG4tff0G+y6Ry9HDq3gl
         3gFQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :user-agent:date:message-id:subject:from:cc:to:sender:dkim-signature;
        bh=X2RmLfxuOzoK9ai4i7eAbGn1NcWCOodfcCOuE7qq+e4=;
        b=SzNUeEvZXTRwLtrMWjnbgPghxDo7u8BjZVGhEzAfixw+CHgei8pWw2K6qSMafyudaT
         I+rXY7K4uXUZiygmH7CBIOG5hzszc+Am1D0OGUkCJzpoaAQ8D9DaFZneAEzrUlcwonb+
         ss+KWtKcl1lKhwB8K9x3+glKQNdP6P29KfcorDaj9P/3Cp8Z5rW66CHKxi+JFpRu4kVX
         MKR0v6vbNRQ3P64yY0t3XbmvTdf5yfVW89lSkjdeL20lTtEkTj8adoWKaKThnNGPpzDx
         uuLIfpWCSqpJWCw6ihpu1zYDlgtn2yV7FVZAgv8p2P/1v9cHEXdNycHR+LqsmfJpmMe0
         +f6Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=DBUOge4e;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:from:subject:message-id:date:user-agent:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=X2RmLfxuOzoK9ai4i7eAbGn1NcWCOodfcCOuE7qq+e4=;
        b=V2ZZG0LBxQm1Lwq3kOu2xm908xVSIfjEzGeT9c+dRtqw5YSazqqNkXo7vw2fNB42Rc
         ASo5RKv9oWcl/nHn3MAgWafu6o+iyaVwdEHpFJT25yeEpS2KNV0g80e+oZSMNCNROLDf
         Vix5xw2imVpuJ2coG5nklNxnmbgGXUwweGi8YVWz7KikTxgB1BJNUmPwpZhlzTjdVVSn
         Mdflh/knl7zpO3UaWTMfmR6y6IxoMYTwk9dpO03uFiwkyauG2K1ifqTan/Ju4J/sisQ9
         J8vJkIBQPTdAUCdj8S26mVwdZK7d7UjztRqIRs5FYaa09YpirJNHOiMTURL4+3n1GaW5
         TWNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:from:subject:message-id:date
         :user-agent:mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X2RmLfxuOzoK9ai4i7eAbGn1NcWCOodfcCOuE7qq+e4=;
        b=WHA/g5I+KpcXgENyaaplHKaISfVgp4tww8NWXBfWVXlfvRsz4BUvn+/F4Oo4q3am3j
         wkBK6XuWTXBhJ5a3d20G8ykkvIC/Cn0+EEMuNRkHfY88qfTxlWd6NrVNaKv0ShP6BgXm
         Jxg0vNWKmCyQ9sWrLnyuanzpN+PFvFt53khqOpzIJs/oYj1q0IBDqncgI4XX8prFu4Tk
         cBmg1tA8lAdOE4AF6TDXon/O29VnD7fDAWUM6uEJyIGF41aOxt4GLCaD0CQc+xMwRY/a
         vRSWoYx0AULRiB6HYtdmFuamaY/55qn2MjiS1ma2CB8WiyghQ2DdbI8IWzIT/Z2cVYa/
         CTSw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUkmWMBwZE0yGA3oWaEHwUePAqmTPKFchwwRCMyh7W7oq4Ajb/1
	RvZW877oLMfpRAMKYGP8KWM=
X-Google-Smtp-Source: APXvYqxzcG6tico/IY7LIIWTonSqd3zAU31FOAOwSk/Fsj6a6LB3nID+/WPnAtU7xGvtr75+Dmb29Q==
X-Received: by 2002:a25:e052:: with SMTP id x79mr4159379ybg.57.1568840317756;
        Wed, 18 Sep 2019 13:58:37 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:9d84:: with SMTP id v4ls172328ybp.0.gmail; Wed, 18 Sep
 2019 13:58:37 -0700 (PDT)
X-Received: by 2002:a25:bfcc:: with SMTP id q12mr4220497ybm.396.1568840317446;
        Wed, 18 Sep 2019 13:58:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568840317; cv=none;
        d=google.com; s=arc-20160816;
        b=c0NxntBCpZ7RgdPF48QkVdC71tuWjze4vkY9gEJ7T7iXcea0dZ1CEK5bHSeP6/J3be
         uLmihmLpEULhT9pZYSSYxlfgsHbEukosdKDQc1i84qjDcQKI/GOophubWE3CYuQG5jlD
         kWNUp1KXtUhza8N0pwYgWxxelvb6dli8GegewcGJuXsc/GLnUZDq1OhpB+D0DLIg6tTo
         IYzIGdeZRJfZY1oox2OYWycom0pzckdQXYQXRcnTlVzOqUCDvT0Doxxmiw4YieaXhMN0
         Y+yMj9FCFJrTCAlytwuQMy3iK0WpOVpD6eftYCAtVmIPvC/4CjSV3hN9eWLKxaBmahy+
         dslA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version:user-agent
         :date:message-id:subject:from:cc:to:dkim-signature;
        bh=FCsffJv0OTIjbuwlwaHBy55NBTv30OBNaAD67wgQEWc=;
        b=pvinWDZS6oXpaLtoHj74Xzrp8mBl3qD3+bL+ywMrNqwpTbotQC1XfK87q3cDLKtTB4
         +jrN8aYgOxDA0pNPEUXFYbPZub3kSCpMX6kyEENimHbB4nCaG8+9QfRMQo3Z5B9NZPFq
         tfj9ahspbw+G0QKEqumXE25nwne9R0+4+lHWxywYDduVclmcfneJGOImOWM0/DDDTJvt
         Sxick9Emjpw/y5VwYgaT1VnKC5isUuSVRhf0H6ocBFdRvaxRAp19QmaAh4b0UtMof0Oy
         ybAO3g+I2b84vvluK9MCkv27xdanmKqXmK0WbC26OvczEPeZUj2SGwjF+69NBKUfMexw
         KXVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=DBUOge4e;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id o3si943186yba.5.2019.09.18.13.58.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Sep 2019 13:58:37 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from [2601:1c0:6280:3f0::9a1f]
	by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAh20-0001Of-OG; Wed, 18 Sep 2019 20:58:32 +0000
To: LKML <linux-kernel@vger.kernel.org>, linux-ntb@googlegroups.com
Cc: Jon Mason <jdmason@kudzu.us>, Dave Jiang <dave.jiang@intel.com>,
 Allen Hubbe <allenbh@gmail.com>, Serge Semin <fancer.lancer@gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Subject: [PATCH] NTB: fix IDT Kconfig typos/spellos
Message-ID: <55f2fb85-9d4d-f78d-e6dd-70b09d7667e4@infradead.org>
Date: Wed, 18 Sep 2019 13:58:31 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=DBUOge4e;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

From: Randy Dunlap <rdunlap@infradead.org>

Fix typos in drivers/ntb/hw/idt/Kconfig.
Use consistent spelling and capitalization.

Fixes: bf2a952d31d2 ("NTB: Add IDT 89HPESxNTx PCIe-switches support")
Signed-off-by: Randy Dunlap <rdunlap@infradead.org>
Cc: Jon Mason <jdmason@kudzu.us>
Cc: Dave Jiang <dave.jiang@intel.com>
Cc: Allen Hubbe <allenbh@gmail.com>
Cc: Serge Semin <fancer.lancer@gmail.com>
Cc: linux-ntb@googlegroups.com
---
 drivers/ntb/hw/idt/Kconfig |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

--- lnx-53.orig/drivers/ntb/hw/idt/Kconfig
+++ lnx-53/drivers/ntb/hw/idt/Kconfig
@@ -4,11 +4,11 @@ config NTB_IDT
 	depends on PCI
 	select HWMON
 	help
-	 This driver supports NTB of cappable IDT PCIe-switches.
+	 This driver supports NTB of capable IDT PCIe-switches.
 
 	 Some of the pre-initializations must be made before IDT PCIe-switch
-	 exposes it NT-functions correctly. It should be done by either proper
-	 initialisation of EEPROM connected to master smbus of the switch or
+	 exposes its NT-functions correctly. It should be done by either proper
+	 initialization of EEPROM connected to master SMbus of the switch or
 	 by BIOS using slave-SMBus interface changing corresponding registers
 	 value. Evidently it must be done before PCI bus enumeration is
 	 finished in Linux kernel.


-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/55f2fb85-9d4d-f78d-e6dd-70b09d7667e4%40infradead.org.

Return-Path: <linux-ntb+bncBAABB5GCSSHAMGQEGQODC2Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF1D47EA27
	for <lists+linux-ntb@lfdr.de>; Fri, 24 Dec 2021 02:25:09 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id s16-20020a2ea710000000b0021b674e9347sf2132633lje.8
        for <lists+linux-ntb@lfdr.de>; Thu, 23 Dec 2021 17:25:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640309109; cv=pass;
        d=google.com; s=arc-20160816;
        b=LR4DpVkhu4aosfiVK3tNm2ens70vzjs6G6OrK1EqWu762U1Pq1qWEY4vrk4n6FEAQp
         bUaRZNz+a0mtKb012kAOKYiYH6VV5NJJi2NW5iWzn5eswPCKV5JCFDEVb6D+7s1Kpr23
         oDBSdE/CFjVxoSgOg2KxzuejNbjHX3/3DDk9jPVscEGYsLcj+890Fae8jr9CX7iIpn9K
         k1pLRI75OZ1eTzm20gu4OviheRJvp0joHGhLiRgzJSqF/kqgOOLPu2SwPcd2bz0d7adA
         yjSFm9S5aoNLxKeCnqy4TsTnnhVrBcRo2WMZY0Bpo7Rwm8ryd2kvoLrmDyZj3cE9dTqV
         Oawg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=iGwjzPQpgytGzPYDXTNLmoqAYUb9jsnNsP4Z3Jl6otY=;
        b=seH/PH2HqjGJrN/FWCSWz7g+482KayZu921M1/zUQ0wAYspziNMKgkwiaIUhf9HOJN
         h1tPSSrZO2dPOo+OEZFT9zFa33/thYDBiMq1HGXy4J9M5a4V+sfzZJujjs41DI6yxXLy
         efNs6UgxpBPnwzZ71oap1hdALx/bcrYM+k4zWF9OlmraR5oQpomIZk7obaCpmmAiXDKb
         jmfwuxSc7zDZuRlYLTHsnJZld9CJiExaTmXovjZ81h8o/I7p5rmycQX3wUDlkf4R/6KW
         IkInPPPY6ig+ZdlEelbfkhOfFLEvjv62tl2BV6dYL5beHIgEA3CpI2vHd4QcY/hBrx7n
         oakg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=W75HF+bk;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=iGwjzPQpgytGzPYDXTNLmoqAYUb9jsnNsP4Z3Jl6otY=;
        b=RjWth0+2wcv84G5c/SqavXTl69gndQhGDVgMZOaGOD/elsfZtkYiMHRhnACb0LtYfy
         Lxwkbv1lZc0RU7VC7eRY7PnaOuLZvWe7FJB+NO4DWprHA1iU3kEeq5u7OcK0gN1J6trV
         XahCgtwO8vFJLjAUsP5wnxK5RkCxgPrROj86pwrlYfNStaADC/J1yeXHH5jSEG5qmRt+
         cR/ZhhjJ9y6FO6PDG4dm1P4uUM3XJHMB6vqutVWLZAnqnTBBrBxoOTffUsYD+SXgL319
         gPzklnG4/cqrup56JsRC8sPWX4bDGkbn0RpbID0Y7D2N1petWV0I0KbYPM/dXTWf0esc
         0H6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iGwjzPQpgytGzPYDXTNLmoqAYUb9jsnNsP4Z3Jl6otY=;
        b=NPWKOR+2v4Bpi5fWouva2vGD9ULZ/p9wTyJ1wk+u4ZT6JWdaYPGzGmrsO/ShmYAioe
         2veA3Pe1oPDMrTuaWIdn7WH+2s2lrT5q2UV3ZOxDEfTxdfjBPYpRkCnT7h1ooXUfvxFJ
         0c3WMUa0TZINhkq+eYeUpxU/3skPmI9mArUzTzKsZKMHXEPsQPKpaSJjtd9usqWmnxKU
         jbyZFeiHShU9x7UKq/R7mPbSM030zsRWs7a9p6gF7ws64tcD+IrqtyT3ud3K0zZwa+0w
         scAU8KWtVRQa07GdexSaiNodRlFftsOoJBGonNe7oNGuu7og8h/r7+8ojjTisWd2SOl5
         Pzzg==
X-Gm-Message-State: AOAM533kYM9v4qHDtAYBROLqeyoO+KcA8erlbjAvmjc/n3PzE1sCy30j
	NwjR2xYNlPtsW0vbnLrl1bQ=
X-Google-Smtp-Source: ABdhPJx1dtviWRNfPM2WhnDVJ9VT3B4GCfWy25N9jGRbYhBS9DLMOdkNQQ+5KNpv8mnRizRLeh2HEA==
X-Received: by 2002:a05:6512:39cf:: with SMTP id k15mr70879lfu.664.1640309108943;
        Thu, 23 Dec 2021 17:25:08 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac2:5304:: with SMTP id c4ls98351lfh.3.gmail; Thu, 23 Dec
 2021 17:25:08 -0800 (PST)
X-Received: by 2002:ac2:5f86:: with SMTP id r6mr3648277lfe.206.1640309108157;
        Thu, 23 Dec 2021 17:25:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640309108; cv=none;
        d=google.com; s=arc-20160816;
        b=tEXid5/zYD1HL6V1UoS2Z8jHfjTpgt2MTnGwGql9hufOPXxz0wrP1/3xdTOnOq5J1V
         nrHvEjf0L1N0dJ4qFEoJm3ucs6naqQaXoUlAgA2UhEigIf+PSiXU7Olm7c9+l2K2bumO
         hcJZDeMHlhY51fvwjv9IcM+LCPbq5UO2pfHeGOGNjFX9Lh1OL83OF8Sg8fOET2iD5uGa
         i07TDoZzCB0lTLRPf2eLg+dO/fpx2Nhzn6DpF5jrpeOmNjAoLURCNgMXma61gAwOmM8f
         MHG4ZKKMZWpwwbsXqvzGj5acZd6Rcd/U/idKzvsocuJFABm1A3SxHDVcZWHqhMvJlAy3
         5lhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:ironport-sdr:dkim-signature;
        bh=b7XxUmznHl+/Kq/lIuHlPK2YXIiTIqfECvQ8yIymVt4=;
        b=G5i67ecWeuxQFoWW9Km+YP5jCHq5yB3ZaOmf653gPnKkDK/3LjLHexK39+ke2sCTJH
         2k/yjC7zt+sjwEvHYwwtIuQaZxk1Gy3qIE36O5NiVqPd6stzIMiKrp+3C813trLa+IyD
         NQqhbcqqStrmuSCXNb0ZC1HFE15VkKLAUpSvHUzeNC8vbSUY5OsFzG5GY3oxqapH0A7I
         kbkPKXLSxPXfINiVloL6+23hLjP+K6T2DE0n3SKjtCpOLUnO/4er4t1jAAMzweZzODkM
         aqaPrvu7VZNdlx/Ox7E/FJgmVQg4MMyX1I3b+yhay7kQj5gKcHDvXme0CG6BM80ngd3Y
         oLeA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=W75HF+bk;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id q2si170721ljc.0.2021.12.23.17.25.07
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Dec 2021 17:25:08 -0800 (PST)
Received-SPF: pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: NInssDyEZuda0SohtKiYqIbKSJxtQsHjvBkPXHYsWFoxUXUTXKO7xp3FBVvRpUMc118EK9OnpD
 5pRZ3nzPJdjQj6LWKhlWR77WAUsGX3hDXQcAQ1sUQPQfyun2JIH/XjI8NVfdymhPP27SjbuW8l
 V8vGSULTuB5TtGaWwcx/HE/AotwBx1yJdvcpYRzSn7+RjAnlHcTzmMCZfa2QM/iUDWDySdswSw
 PvVEUIUxq5G4X7gfGgjeAnhyiQfpBkufGhwkpgFKIPOP7nF9hKwf9w/i+uQiNDJZfsR5hePu9y
 l4nCeW1Eh+tXlrD103l3wBQJ
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; 
   d="scan'208";a="80533969"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2021 18:25:04 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 23 Dec 2021 18:25:04 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Thu, 23 Dec 2021 18:25:04 -0700
From: "'Kelvin Cao' via linux-ntb" <linux-ntb@googlegroups.com>
To: Kurt Schwemmer <kurt.schwemmer@microsemi.com>, Logan Gunthorpe
	<logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	<linux-pci@vger.kernel.org>, <linux-ntb@googlegroups.com>,
	<linux-kernel@vger.kernel.org>
CC: Kelvin Cao <kelvin.cao@microchip.com>, <kelvincao@outlook.com>, "Jeremy
 Pallotta" <jmpallotta@gmail.com>
Subject: [PATCH 1/6] ntb_hw_switchtec: Fix pff ioread to read into mmio_part_cfg_all
Date: Thu, 23 Dec 2021 17:23:29 -0800
Message-ID: <20211224012334.89173-2-kelvin.cao@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211224012334.89173-1-kelvin.cao@microchip.com>
References: <20211224012334.89173-1-kelvin.cao@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=W75HF+bk;       spf=pass
 (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as
 permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
X-Original-From: Kelvin Cao <kelvin.cao@microchip.com>
Reply-To: Kelvin Cao <kelvin.cao@microchip.com>
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

From: Jeremy Pallotta <jmpallotta@gmail.com>

Array mmio_part_cfg_all holds the partition configuration of all
partitions, with partition number as index. Fix this by reading into
mmio_part_cfg_all for pff.

Fixes: 0ee28f26f378 ("NTB: switchtec_ntb: Add link management")
Signed-off-by: Jeremy Pallotta <jmpallotta@gmail.com>
Signed-off-by: Kelvin Cao <kelvin.cao@microchip.com>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index 4c6eb61a6ac6..6603c77c0a84 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -419,8 +419,8 @@ static void switchtec_ntb_part_link_speed(struct switchtec_ntb *sndev,
 					  enum ntb_width *width)
 {
 	struct switchtec_dev *stdev = sndev->stdev;
-
-	u32 pff = ioread32(&stdev->mmio_part_cfg[partition].vep_pff_inst_id);
+	u32 pff =
+		ioread32(&stdev->mmio_part_cfg_all[partition].vep_pff_inst_id);
 	u32 linksta = ioread32(&stdev->mmio_pff_csr[pff].pci_cap_region[13]);
 
 	if (speed)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211224012334.89173-2-kelvin.cao%40microchip.com.

Return-Path: <linux-ntb+bncBAABB5OCSSHAMGQEFBMLZMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D69A47EA28
	for <lists+linux-ntb@lfdr.de>; Fri, 24 Dec 2021 02:25:10 +0100 (CET)
Received: by mail-lj1-x23f.google.com with SMTP id p21-20020a2e9ad5000000b00219ee503efesf2116452ljj.14
        for <lists+linux-ntb@lfdr.de>; Thu, 23 Dec 2021 17:25:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640309109; cv=pass;
        d=google.com; s=arc-20160816;
        b=hYfoTtr68IFlKYCj2ix5mMFmZYycrgHEFDtKSSNgcxymAH/1JY3IN6X3kdIXtlIcM5
         htg3968CFFgeqJtirphNg1vJu8j6rGAN51fU6cGN1cz8UinoFTKFp60C1fEhGCyk+ZXl
         jbbgLjz0T5sRdIOR9m5fTD/GRPp6L7pvfAU492TxoVXj6Vad9waLUohbHOGa8W/OMC3J
         oMb1lAvVLsOJyttOnZlY+Pbcn9p9W4Mezr3iSZPUsYn7s1FfYnZkcJm1WC4f9VU8RxGS
         7r0ZXpzm+SgkK570/xbr6pokq1bSBNeVWsWvmIoLD80DHHnhmuD30V3Kg0nWw2EOQC03
         JhBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=sHbD6aNXdYtnSHrNOfoQGnclw3ZY4cjs2QezXAQcKqs=;
        b=vUuHjzNhL9RVxHfH4B80XAvn1A2jdjTnPBAmxmYghvs0+7qBYkI8QJWbsBIrmuoBPz
         FjW743WDDBaUVYJLqVihSiPY/oDAO+jx5PuUtDkE1JlKe8iJjOVDDmGfWEJ+1bVZSgap
         CrVgLj+IChSInWzZj5IXh71bRs1aqzLcpB87irQ1OGuCch6nCaCmEiarmjWD0a5V5E+E
         j1dvWV61Kc6VOPpJ0FzA1XsdpUuAQion9UInf3rZxJRLgngv39xrIp05cnaHVW/TqSL/
         TF85/MTu+Ox8Nr7OUXzf/89bB2k10G1iuQRTuOx5vfxb7UhkylMricb6Ata4JZvcvQsl
         RzEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=fqhv0ybG;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=sHbD6aNXdYtnSHrNOfoQGnclw3ZY4cjs2QezXAQcKqs=;
        b=Sm9oymBsqcEY/RdtslzgDrO26V1pgIB9tV271uyEPiL2eCihvbJ5PTT4lyHiO0lFRW
         VrrXwMAsYCyvQ9GhBtS5WPkk5jgSB4NGgJqEuAkr+oXzz21utNLQjehy6xbXPHkMMagL
         BiA/eckElQ2IGyY/ZKakuDRMG51dDcXQC9D6SN3QaP2EHB5POD/IuC98suwJcfvPEdXs
         ZT3T2m+8rxZutBbYNXRIYHNR1lky2ttXQCzLaY7dfMr4B2Tri4IS6CHWyy9M3M2Jr1BZ
         4lp8aftp027i4v+txc8BQk3JbN10m6raL1zlccHWJuhvGFEwzFllhWR4EsLB69PtLpO9
         EDZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sHbD6aNXdYtnSHrNOfoQGnclw3ZY4cjs2QezXAQcKqs=;
        b=A0TdAErUUawj1KL2JkDtX0eXERPVkcUN8DGJ/Gcu02oJqkPBaBQp9nZ2MtK5ZfhStR
         sZe+Gq/ltrmcXi74G2CsZwFBKPCgyd8q4rxXI51YbcpWRi5cR102A1QaL0NMVb/Pyou9
         9HxsqyotoH2wCIPpMlWzAEZ9envm194YCUs3TG+5x3kOJ/Jbsy8gDiwIZD9GKIkCEutU
         3oL1U3QLUBYiyTtCVftj/QaoRW0S7HbuU06TXzxZYGIp1tm+4yV9NMRfr+9bC+/jGwFW
         vF0jfB4IO3/oF3Jd8BMNGliqtzHz7btZ1iT7FshamuXGjeyTd7tEiwxZ0QF0uQgUKEc6
         +EwQ==
X-Gm-Message-State: AOAM532GAynkuCcWJStPNKwKsUtJzj7xL+zSoW09MJfjZGBhQ7ZobvOr
	9KGWEf9KfnpQ2/nJ8kX1WgY=
X-Google-Smtp-Source: ABdhPJyUKyJN+hYBqmrFwQxZaySkBsmROyJATtgpoS8D7+swiuLkdM7ctTJ41mdAD9SQaTNt8/NYGw==
X-Received: by 2002:a05:6512:374a:: with SMTP id a10mr3445948lfs.103.1640309109661;
        Thu, 23 Dec 2021 17:25:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:651c:1794:: with SMTP id bn20ls1039661ljb.3.gmail; Thu,
 23 Dec 2021 17:25:08 -0800 (PST)
X-Received: by 2002:a2e:9b81:: with SMTP id z1mr3155387lji.268.1640309108884;
        Thu, 23 Dec 2021 17:25:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640309108; cv=none;
        d=google.com; s=arc-20160816;
        b=J1v0DM/6AT6cKK5gjBsGA4wimoZQS89eiHxRUPdfrbLSiqK/77frsKDqWy9EwPRBON
         HlIDTBwJD4YZNxDy/G7lwMLlTm9DgqvhHGyaGz+pOtEjyUT+7+WXVO/308/Fr31/S6YG
         mvXfluT0angDInl9gRD6rAez3TL1QEYY5Ku5RF2sGQWdD3HqUKuH9tRI2dIkidrx7CFf
         AQYHDOLGVOP1tozxkFNbP28cUNRReqw/AsI90Qcj2LWihTfDCi/cvjB2A9OJ8ku/wIA2
         a7ZTlbn0xevxHdLixIJKdIc/IowooGZcL+XYCRm4HjEcEt3bz4aqJim/PvR8Q6mb+2w6
         J/+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:ironport-sdr:dkim-signature;
        bh=LDMkoQr5dxqEYuu58PbQgmrY9XZ197HekJOn852e+aY=;
        b=Al5imSyf0Wv3FOpKn2ui4r7jSG8zGFlbUulIvp0yYLsi/eaCIQvmWeWSFS2WTAMYYP
         8Qu68jauxFUCrpC16RpFGIuYoxVYWx9uACHIsGlBZQwPdWhs0KxlLfXuavwOJ4q8dhvG
         9p6xSkyFuyP6xunNhcTRqcHdK0cLeyeP/JD8bOXo+TGb92Qk+xlI5rdkuZf5i1HuNPgE
         Cxn+bUHUJjqNGboTIh92LpNf35lSmcb+l5nIjuqKbLeTJ2mKKL54vs/z6LXatC6WKKaJ
         j8RPn5eBvf+QQeJff18yr4Hz+JF+YnX1deW+BQhLtwZKrzwzVPn5cHiV3VtYTFJshHxh
         CP0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=fqhv0ybG;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id q2si170723ljc.0.2021.12.23.17.25.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Dec 2021 17:25:08 -0800 (PST)
Received-SPF: pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: tkmUnsOcxxdvBt4adn7HB+XcqbAS1YBFqrVt/Hvn2wi4vKQ4TQJDUHeTTyA8SB4SeH2pSCgBZE
 VLD6SW53cYsuUCdAOOajwy4heJS4q+gMfH93BXNj8ZrRB/RZOKJuhCVnZRGdVbiE4UAujNIkiL
 uw/DjOnLag+RyszPjpA1CK/ejOxFTmWhwNKJICDHYmDfg/JuBiVapkhKrM/f2GFZve7BEHWsOs
 uEwbTx3vup0WWhbUvQRjXYldrru7i+2shXTllw7on5lSx0aXMWsE9nJ1Cebw3ICdnBaEL8HDDF
 ACTu80ZalhPBb5UAhBp70p/v
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; 
   d="scan'208";a="80533977"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2021 18:25:05 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 23 Dec 2021 18:25:05 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex02.mchp-main.com
 (10.10.85.144) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Thu, 23 Dec 2021 18:25:05 -0700
From: "'Kelvin Cao' via linux-ntb" <linux-ntb@googlegroups.com>
To: Kurt Schwemmer <kurt.schwemmer@microsemi.com>, Logan Gunthorpe
	<logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	<linux-pci@vger.kernel.org>, <linux-ntb@googlegroups.com>,
	<linux-kernel@vger.kernel.org>
CC: Kelvin Cao <kelvin.cao@microchip.com>, <kelvincao@outlook.com>, "Jeremy
 Pallotta" <jmpallotta@gmail.com>
Subject: [PATCH 2/6] ntb_hw_switchtec: Fix bug with more than 32 partitions
Date: Thu, 23 Dec 2021 17:23:30 -0800
Message-ID: <20211224012334.89173-3-kelvin.cao@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211224012334.89173-1-kelvin.cao@microchip.com>
References: <20211224012334.89173-1-kelvin.cao@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=fqhv0ybG;       spf=pass
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

From: Wesley Sheng <wesley.sheng@microchip.com>

Switchtec could support as mush as 48 partitions, but ffs & fls are
for 32 bit argument, in case of partition index larger than 31, the
current code could not parse the peer partition index correctly.
Change to the 64 bit version __ffs64 & fls64 accordingly to fix this
bug.

Fixes: 3df54c870f52 ("ntb_hw_switchtec: Allow using Switchtec NTB in multi-partition setups")
Signed-off-by: Wesley Sheng <wesley.sheng@microchip.com>
Signed-off-by: Kelvin Cao <kelvin.cao@microchip.com>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index 6603c77c0a84..ec9cb6c81eda 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -840,7 +840,6 @@ static int switchtec_ntb_init_sndev(struct switchtec_ntb *sndev)
 	u64 tpart_vec;
 	int self;
 	u64 part_map;
-	int bit;
 
 	sndev->ntb.pdev = sndev->stdev->pdev;
 	sndev->ntb.topo = NTB_TOPO_SWITCH;
@@ -861,29 +860,28 @@ static int switchtec_ntb_init_sndev(struct switchtec_ntb *sndev)
 	part_map = ioread64(&sndev->mmio_ntb->ep_map);
 	part_map &= ~(1 << sndev->self_partition);
 
-	if (!ffs(tpart_vec)) {
+	if (!tpart_vec) {
 		if (sndev->stdev->partition_count != 2) {
 			dev_err(&sndev->stdev->dev,
 				"ntb target partition not defined\n");
 			return -ENODEV;
 		}
 
-		bit = ffs(part_map);
-		if (!bit) {
+		if (!part_map) {
 			dev_err(&sndev->stdev->dev,
 				"peer partition is not NT partition\n");
 			return -ENODEV;
 		}
 
-		sndev->peer_partition = bit - 1;
+		sndev->peer_partition = __ffs64(part_map);
 	} else {
-		if (ffs(tpart_vec) != fls(tpart_vec)) {
+		if (__ffs64(tpart_vec) != (fls64(tpart_vec) - 1)) {
 			dev_err(&sndev->stdev->dev,
 				"ntb driver only supports 1 pair of 1-1 ntb mapping\n");
 			return -ENODEV;
 		}
 
-		sndev->peer_partition = ffs(tpart_vec) - 1;
+		sndev->peer_partition = __ffs64(tpart_vec);
 		if (!(part_map & (1ULL << sndev->peer_partition))) {
 			dev_err(&sndev->stdev->dev,
 				"ntb target partition is not NT partition\n");
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211224012334.89173-3-kelvin.cao%40microchip.com.

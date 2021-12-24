Return-Path: <linux-ntb+bncBAABB5WCSSHAMGQEYBEUFPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D0547EA30
	for <lists+linux-ntb@lfdr.de>; Fri, 24 Dec 2021 02:25:11 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id b14-20020a05651c0b0e00b0021a1a39c481sf2126845ljr.3
        for <lists+linux-ntb@lfdr.de>; Thu, 23 Dec 2021 17:25:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640309111; cv=pass;
        d=google.com; s=arc-20160816;
        b=c93+RIQDl786dtzmA3yPfZsdHcWLMzBAPPervWHpszFxcfpiNRPS8c6A4aIqIciLZp
         QJOWb/Zo7+yR3PiO89YIQJjyNv7DxOcfQtyDKxC2MPjiXBrma2h2CxtTIkcyb9O6z/tJ
         fV8taH/6j6v1jyDiwBqdnnJbF7LZveXYSf10DJS+MoUVG68z7C/SmI4Kl+la06RTaaIZ
         /RNRd6VHPrXdbyCqvUJY/HynrI+m2N6VVuWUdIM+ibdUKynpDnUlqVxHjubNpSnHxSZv
         EeJ62aXSHQsVsm94d1MveuhLXgRej0t6MfzCrt9VIs8xhghaewTYQODQiHMXbwXQKEqr
         8VDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=40ZY8fkY+EiMoDtFvUUVYASQZYowXX6vf8BJFR+CyBQ=;
        b=Ksgn2kPqhbEZh8poWNlc6fBhAm4JlR8GygGyuOIDBd7/2qMjzTvUYY91Wo732dMoEh
         9gp98nnVa+o5hDT/YMTRR4Ja6I+3s6ThkIkGYrueD7Lgx2LkVtcqfQx0DT80+5M6Qvri
         aBtZflQmBCNp70sBY+qcjYraBk6PZguw9yF7KSc+OXPe1e9gMt/8DFwzcbB8rnLog3gm
         3X6qc3aq7ol1HGAkm7jsJBR4/WbwE98bzPsl3tflgXwEgL1x+Zqw5fg56iEYZjQSceO4
         kPiTBZBL8qiZ9M4tNTnzjyrfFyTY6HiiDeRLjK5Tlq591zfUAvgosJIDhKsYoGVG7dIP
         QfHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=kjpUkkqf;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=40ZY8fkY+EiMoDtFvUUVYASQZYowXX6vf8BJFR+CyBQ=;
        b=bZvley5vt5VI4H1wd83GaV1PGCITxznye+6u/yAnmpb7rOGfOmk3+6LzcSlWKV87y6
         zjxZMYSBqLljoqOYqhsLiM5MmGd8+KaJoQuGDoL6qJ9/ijpbnOtAMFNyVuLXaQU4mFAx
         32j+n+rETtKZHbgMewcxhGvWU/LBywClXYvxmdz+wgNRlqfghV8cexVlvMKY6dHMbr+8
         Xwj+Wh49wgjo3UgoQIHHyUA2OcPH2GG7D8Wn7wr4c7S2aV+V02oyOr09PrwgPmuzGb7p
         BzwuKTmvu23buwG/w94MIFD+xVGSuBs70/qL5ycncazJkzjwZpkMnAgc/FJHQGG9HmbR
         rliQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=40ZY8fkY+EiMoDtFvUUVYASQZYowXX6vf8BJFR+CyBQ=;
        b=LtLNrscREy7xrDxnvs6bylAxin4dyaf/nO2Mk+q4dHL5Pl6zd+/BLYjIuD76iAJ61y
         Wyt6dGlPGFxN9cujph8KdqopibrEqgFAi7RBeXYNOkPMgMin9I7aE7y+OyIjhJKJe8M9
         5chmrJjeA75BK5gbsIOQAwboOTITPhi2rtqf1c0b4+PtfUa366h7p/oyjXCxOREiCwOU
         JahrH+oMru/dmHqGi60CJMZMjrzZta2ZUZrPHjFmXp6RS9Ka7R/6Z9a3J4rFfLKJyuAg
         9IWm7cU8B0M8X5kGB9TraEQVwIbVFKiMzJPQ9Ivfsu1cflqV/kpk60O1xx5XQrSKgs3X
         1hNQ==
X-Gm-Message-State: AOAM531LdYlVkll/qrNh0LdMliujdPy3ftN+UjP432Q4VG+TzR6X9l0I
	v3KX34MuIOi1SQPgiF6c/YE=
X-Google-Smtp-Source: ABdhPJxVKOlPYvISZ0uCjPC/9P9rL77Hc7+JclV2yJWIAcMNCkxVo+gZmT8LdkGjQGwx5H8BuPbcew==
X-Received: by 2002:ac2:5b9a:: with SMTP id o26mr3445943lfn.479.1640309110922;
        Thu, 23 Dec 2021 17:25:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3389:: with SMTP id h9ls98642lfg.2.gmail; Thu, 23
 Dec 2021 17:25:10 -0800 (PST)
X-Received: by 2002:a05:6512:13aa:: with SMTP id p42mr3486486lfa.474.1640309110312;
        Thu, 23 Dec 2021 17:25:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640309110; cv=none;
        d=google.com; s=arc-20160816;
        b=vanXMh2dv/NudxJoTH7rBmuXrRHd2X1l9CUBSGEnLvqeWEGIl+0jtLTZ45xf7azN4V
         4Wzob0QB47QxTnchqu4F2IIA51woG4Cjnq34eWImN+OlE36hHiWchAkaGPftzpDUbGj0
         cq+Pfm0ZpExfsXeBK88EVh69OezOw4VklhHvsVTKQ9Y56gCqpR1ADScyTSO2R5KixHtf
         K6SwkqoWSn2rsLI7fXgCrQyBwQVZeMMym5OjlAj9rr0MkRJciugfM8ZoPT1KslMIwVNW
         6yOGEffvaxg+d4KCD8c6kSrGoSofPCcVVD+YDTmXqpMgCTPjcjB6UFH2hzJRGpPpodrN
         qCDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:ironport-sdr:dkim-signature;
        bh=ivlg65NSStVLMp/YKfPeqyVQX5rhryzYgeoC3wy5PNA=;
        b=tr8yt07ZL/zceM3wCp0PNYZb9VpNP5QnPHebq5lzbhsiocqxMtn9moUW4CcnVVwBwE
         hw+IkzSabq39TpWkdMXhl+s0hDn+ZB44ka1sBeGWLocjzUN6GKLA3DKNPkVb/tpuDdHA
         MmFg+ShJFq8Bq5lrbuP4fNfq9d+rlXb/cuopHymfhGGt0gtLYUa5PTOF7DDpkTSCn1TR
         aHLJV/jc3stwkPDqFHS2I5rqs7lo0xJOQTB/sxs1+677ctifRzfQYPM2RRM3WRNZtp/R
         QsmUbnz0k+g7F3uv/VixDQouyDrcvMiusYfbrSdCIYwkZ6IVb5+PPNX7AHU4ViXLQ64M
         GDMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=kjpUkkqf;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id o7si285731lfk.11.2021.12.23.17.25.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Dec 2021 17:25:10 -0800 (PST)
Received-SPF: pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: E/zcbyMnMFuwNuUq0taYrhkGjjVLQ1MBCYrKzui2gwba1TRoQbpqMLfXujojIgC3LnNpnZB5Op
 sPYR8XydPIt5jp+0T5RHCqXhRKqNWcj89xYrOznzk/Z1BkCmkzcaiGl+l1L97DnUKPlScoWA4m
 O6y5/8XL3k49/okNGo3wx+qVwIpVQ4mqqjsWGc9cUUVEALodqwDZNggSNxuTGOOr/3H0WanmHz
 BS1RihxjQ5NdC4L2bBJOb/p+7KfCqQUpanhIQts2HvvwZ1QakvbDkFvyHPSo0POJwIK6bLq42D
 lDvaK3+BqsCn4XXMHIZvWsRz
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; 
   d="scan'208";a="80533989"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2021 18:25:08 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 23 Dec 2021 18:25:07 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Thu, 23 Dec 2021 18:25:07 -0700
From: "'Kelvin Cao' via linux-ntb" <linux-ntb@googlegroups.com>
To: Kurt Schwemmer <kurt.schwemmer@microsemi.com>, Logan Gunthorpe
	<logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	<linux-pci@vger.kernel.org>, <linux-ntb@googlegroups.com>,
	<linux-kernel@vger.kernel.org>
CC: Kelvin Cao <kelvin.cao@microchip.com>, <kelvincao@outlook.com>, "Jeremy
 Pallotta" <jmpallotta@gmail.com>
Subject: [PATCH 6/6] ntb_hw_switchtec: Fix a minor issue in config_req_id_table()
Date: Thu, 23 Dec 2021 17:23:34 -0800
Message-ID: <20211224012334.89173-7-kelvin.cao@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211224012334.89173-1-kelvin.cao@microchip.com>
References: <20211224012334.89173-1-kelvin.cao@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=kjpUkkqf;       spf=pass
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

The req_id_table_size field is 16-bit wide, use ioread16() to read the
value.

Signed-off-by: Kelvin Cao <kelvin.cao@microchip.com>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index 0e33eef64ec6..189faad0d0d5 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -955,7 +955,7 @@ static int config_req_id_table(struct switchtec_ntb *sndev,
 	u32 error;
 	u32 proxy_id;
 
-	if (ioread32(&mmio_ctrl->req_id_table_size) < count) {
+	if (ioread16(&mmio_ctrl->req_id_table_size) < count) {
 		dev_err(&sndev->stdev->dev,
 			"Not enough requester IDs available.\n");
 		return -EFAULT;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211224012334.89173-7-kelvin.cao%40microchip.com.

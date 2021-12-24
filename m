Return-Path: <linux-ntb+bncBAABB5WCSSHAMGQEYBEUFPI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C9047EA2E
	for <lists+linux-ntb@lfdr.de>; Fri, 24 Dec 2021 02:25:11 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id w18-20020a194912000000b004254e83978csf2271533lfa.3
        for <lists+linux-ntb@lfdr.de>; Thu, 23 Dec 2021 17:25:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640309110; cv=pass;
        d=google.com; s=arc-20160816;
        b=XFBY/9PXMEVtSuc15CaH8ZZtHwS5XG59SnQCVPA8MpufxYapSWzCkxXSWxfkJ/tvD0
         oafgsfY0UCgZ3XlqyhYuxT5turfYRrxSc7TvfB7+hJSh3tYVeLfv9LLQHlzAzRCWGZ0Y
         TX+F9yic63tdiwQ8R13MBw2kAZnAWx7Jox+6LT6MKkytY26j064a9FzszWz/qRwIuXoO
         aMByt9Acuiu7NQTxFsNhf+cRWCsFVnCbRaROt8QgVOr9BjVxBG0K9dZYWncnsXuHnD/6
         DId8ZbTm1FhG2YhccySvWbej3qH06cLTvp1Cs8lbAReYv6V+X3VGQak+7B5zSytdiy1J
         bt/Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=HabKxdFdGPc2DXogcEJiCJOtZB2ETiO0R77N0u8+c1c=;
        b=eM6VFbkUXVtbwuBPkbv2t3Uz2/3sBw7K5sw5TCgISancX3DNSvh7IYKJTo243gAizd
         7jbm0MDh09ZD5hOAfemMpuP+hKakQjHJfX06EoQ40leQLQtjw8QlgUqhVf1blzTEZnGY
         +boG/yRn/4CjteGeUNF2vFtEh2grXQHED75cut2wGANuBqP3QzC/EU1eUURTcUN23IE8
         +9Fr4bma6YZMi/5HmROk/mkkpspX/zdlNHDNbVlxNppAB2DJJSdK6tFgbWQXhv8SkwFN
         MOjiWZQe1vuM3frAaiI1ZVXcVjGkjvlDmCg4IZ3wEUReRQj2ZmItQVyKt0IEPLu4C6CO
         VwLQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=mwrN6cZr;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=HabKxdFdGPc2DXogcEJiCJOtZB2ETiO0R77N0u8+c1c=;
        b=iZnAKgD9nIzjqB0+XHOjAGaHJOph0h2hScdv8M/a+6nmDFyNf9pAaumFCU4YK4zP92
         8IR0Otfkz/xAzTwGap0FyvRbbUxsE0sGsKG8wuBrz3vpIdIIX5Z+b4ieFDNHQckMnyEg
         ef3KImDRyXDoXwIalvkovsxt77k3tbTEnUIt6mU2Mvvg1WGKN48jVNo23wYZBvxaP/h6
         JUzbum5EpI0A/65J94lm3a0VbNjkLfuxguKakMbGSPdKEYNLL4WVMJVaePfutUdgj49a
         iJrM4GEUx0JYUDRoh0hIjIK1HYD+lORhAuna34vmOwCAy7rU559ULFXcUayoBLXlCxrZ
         HpTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HabKxdFdGPc2DXogcEJiCJOtZB2ETiO0R77N0u8+c1c=;
        b=ejDtUmds1+OFUMODOa3+TMbwcy/t3QCD1DTyLlls+bBoijWv+jdlUhbchGzwUb91NB
         SSX3v+Y7+eHjh/QbVbK/Iy8xCGK1xwAIC7NAmyxcRFEPxEzZp88DQAGBluBuzk3tQfji
         NvjMuSNgYR/5ouBWeAiUFPHjSe0SU0YBbnLw506brok097xJMqMERr5syib++ziKjBp0
         hkb2fTCUWpm4Droo+sMGK79gCYQGTyRhOMr7ra4uZnCerNjVLzWeB90p2NaMVh05TNQp
         c0U2aTH1WRa1kxkv1gbdkX/CxBb+uywJJVuhODTO8tTKNwMjO7Ak2jQQ+J90ypCSjOlj
         a2Wg==
X-Gm-Message-State: AOAM5322F2tCLk4p82MSK1EGXz8ILT49b60D9eYp0aXkCjiKWEOtLPRv
	h20ufLFvP8UmBsgX6cbESSU=
X-Google-Smtp-Source: ABdhPJyHTENetH0WOzToqyKAGTHFn/tpGIIKdtk8V5nKDynSHZ2cqnIy4ue38F6TLYDkI2MWuYiEJg==
X-Received: by 2002:a05:6512:1116:: with SMTP id l22mr3552953lfg.253.1640309110592;
        Thu, 23 Dec 2021 17:25:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:1112:: with SMTP id l18ls98249lfg.1.gmail; Thu, 23
 Dec 2021 17:25:09 -0800 (PST)
X-Received: by 2002:a05:6512:1087:: with SMTP id j7mr3469544lfg.539.1640309109916;
        Thu, 23 Dec 2021 17:25:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640309109; cv=none;
        d=google.com; s=arc-20160816;
        b=ZEPhg7C5GeTKqakESLgu/FflBu4L12LZYvTw472uiu+yvcSxYWYTYOBh0EELHAoDh6
         KcNB+NHVJgDicCqWed2KwccKrn8tAim+er2TsQpEaXOBPng9gdu9kFPy6DYC2/nj2/zt
         R1AeatVU4vkfWMx9JFGULTgRJl8NOM4nvOp6eJpbOwUFXiBjLNSyZ4dyqc3WBzTxjWNo
         YNYDJc+WsVggJ39cGXXgUANIWLT5fanFTwrEgsSYiNpWJCoJ6A8j6W1CkhTdpUkWqKZM
         MCp4KZZrS8qEMa87xwgG7Kb3mKUpCPTh+CaFLm8O7ae8KgfcjPdgC9LkwG9vAU/Ef3S5
         XtWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:ironport-sdr:dkim-signature;
        bh=/LqopMskyNaBQojIhd9tjum71rvSBjbIn1vv3IZ+34I=;
        b=fIh8xTOINJhQ2Puxa1xM88vdcS51F/6f9bMYs/s0SKFkxuKuObCPOO1S+0NYOBEiLu
         IIMaJIiyjNyAy9Me7MaKcBiHSUh9a94T9GCwz0c3Y1TiP/iC4rfgp/xu6d1CfcIxmwis
         qV7bKTtuF6YYCk7LFGkX0ObWNevWfMxTp4x55BdrPsV4+hxpdw3mwe55eOGyKaGc6IVZ
         xwWPgaakeFfRQ47iuWgkOcvpuOYPjXSNEKZvwybXQrqq7zBOz3oeURwNZFPj94BwR+Wl
         quJopw8BhnSZ2AcaucDDrLmquMKguu4Rj+e9j29OiLH2pfRjyxq3SO3PEEmhp0JxuWSn
         BPMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b=mwrN6cZr;
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id q2si170721ljc.0.2021.12.23.17.25.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Dec 2021 17:25:09 -0800 (PST)
Received-SPF: pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: /qOZHSO6+L+Ze6LNxU3rUbzPVR+YCm43gAOUhb4+Ua65RzkMCdcHFRAXzbVSV99+pnGtTEDy4U
 pdw0KJkXTGBy+4f2S3VCTUrLuroT/MQMaiK3XZbUGiC1/NJzzUlyGUImz4CxddCzBWycGSQQDY
 KhHa78G2YasjcjKpAEXF0yL4UPtmPkm2XFmACc4XaBJ9MrPA7K11e5Hjm0eBeU7U9DBMiAXjH8
 sdnJXqP3i/Gt0ggc3QZkpEgTwNDr2BLSv3BQMFdWzXI644YjATLXDch9vYghIvOdt97EoaKw8S
 aBborne7IlXrYupAC7cTDMRa
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; 
   d="scan'208";a="80533988"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2021 18:25:08 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 23 Dec 2021 18:25:07 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Thu, 23 Dec 2021 18:25:06 -0700
From: "'Kelvin Cao' via linux-ntb" <linux-ntb@googlegroups.com>
To: Kurt Schwemmer <kurt.schwemmer@microsemi.com>, Logan Gunthorpe
	<logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	<linux-pci@vger.kernel.org>, <linux-ntb@googlegroups.com>,
	<linux-kernel@vger.kernel.org>
CC: Kelvin Cao <kelvin.cao@microchip.com>, <kelvincao@outlook.com>, "Jeremy
 Pallotta" <jmpallotta@gmail.com>
Subject: [PATCH 5/6] ntb_hw_switchtec: Remove code for disabling ID protection
Date: Thu, 23 Dec 2021 17:23:33 -0800
Message-ID: <20211224012334.89173-6-kelvin.cao@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211224012334.89173-1-kelvin.cao@microchip.com>
References: <20211224012334.89173-1-kelvin.cao@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b=mwrN6cZr;       spf=pass
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

ID protection is a firmware setting for NT window access control. With
it enabled, only the posted requests with requester IDs in the requester
ID table will be allowed to access the NT windows. Otherwise all posted
requests are allowed. Normally user will configure it statically via the
Switchtec config file, and it will take effect when the firmware boots
up. The driver can also toggle the ID protection setting dynamically,
which will overwrite the static setting in the Switchtec config file as
a side effect.

Currently, the driver disables the ID protection. However, it's not
necessary to disable the ID protection at the driver level as the driver
has already configured the proper requester IDs in the requester ID
table to allow the corresponding posted requests to hit the NT windows.
Remove the code that disables the ID protection to make the static
setting prevail.

Note: ID protection is not applicable to non-posted requests.

Signed-off-by: Kelvin Cao <kelvin.cao@microchip.com>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 3 ---
 include/linux/switchtec.h              | 2 --
 2 files changed, 5 deletions(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index 03839346233d..0e33eef64ec6 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -967,9 +967,6 @@ static int config_req_id_table(struct switchtec_ntb *sndev,
 	if (rc)
 		return rc;
 
-	iowrite32(NTB_PART_CTRL_ID_PROT_DIS,
-		  &mmio_ctrl->partition_ctrl);
-
 	for (i = 0; i < count; i++) {
 		iowrite32(req_ids[i] << 16 | NTB_CTRL_REQ_ID_EN,
 			  &mmio_ctrl->req_id_table[i]);
diff --git a/include/linux/switchtec.h b/include/linux/switchtec.h
index be24056ac00f..48fabe36509e 100644
--- a/include/linux/switchtec.h
+++ b/include/linux/switchtec.h
@@ -337,8 +337,6 @@ enum {
 	NTB_CTRL_REQ_ID_EN = 1 << 0,
 
 	NTB_CTRL_LUT_EN = 1 << 0,
-
-	NTB_PART_CTRL_ID_PROT_DIS = 1 << 0,
 };
 
 struct ntb_ctrl_regs {
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211224012334.89173-6-kelvin.cao%40microchip.com.

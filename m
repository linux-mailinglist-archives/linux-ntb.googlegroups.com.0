Return-Path: <linux-ntb+bncBAABB5OCSSHAMGQEFBMLZMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B06547EA2B
	for <lists+linux-ntb@lfdr.de>; Fri, 24 Dec 2021 02:25:10 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id r21-20020ac25f95000000b004259e6ab262sf2281079lfe.6
        for <lists+linux-ntb@lfdr.de>; Thu, 23 Dec 2021 17:25:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640309109; cv=pass;
        d=google.com; s=arc-20160816;
        b=eeumGQT+ym7fmuHPefWzS1jJYx5+gIv0Qi/jOypjYGCRzCDIgAb+AkrUYHHfqBRuDk
         KfQbqfc7iXvWzdp7kuJVOg1lhe/H9612buLeaRujLRbI/WTkuf6HjcI2JKAxSYRXUl20
         vTccLP9I0uMuWX7T0DZ+8lCol104r8LG0Id3o7PYYms+UbbG6yh5VGd2MrofgPnU9ZBe
         J3Jfl5R3vkCodxj+qSCRE2XMchKgm5vfp2uL5ZAVFiC6TGZDikU1qXmEwPoGLye0xray
         rkQcte7qJsT2seixnb0W9VR5tkfNVIiIyTcu1B9oa6gzdJkVha2e6wp8f85BA1jyZ6hy
         n09Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:ironport-sdr
         :dkim-signature;
        bh=Hj8C53MXJ3EynJ0MI9dj6JqUsj/HHE+fKZ/tBt0EoYU=;
        b=wd5xmGdeuH6iFe8CDCUdQ7IywRedKHjb2lh/3RlS20GbumjHipS7nDlyWHCQ5o2zPm
         ZHsBXZgXfXMWKQJKNwGPJv4DmcggpKfske4mo7IWHAdzdsNfwrc0IaoJBgtaHHKxKcVN
         eZZkQBsD1DcBHFeps5z9cnwHuhm/5b5aeqMxVo5uZL09lRPa7QNGMm9RLoa/YNZ2L4pI
         UZ9lB+OI5MRpd7TMNFaVcEuN/c90NZLikPm3Krq+8lysMsEI97nQO28o+bdjWE/QGi/K
         jMASNg2Pp9PPdzizK2P0LID//a/2i6TxMB3hcq8kxFAjHONQAiJZBUfIHVLHrvoz9k/1
         BfjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b="rWinh/+m";
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=ironport-sdr:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Hj8C53MXJ3EynJ0MI9dj6JqUsj/HHE+fKZ/tBt0EoYU=;
        b=Ib57sTkG3ZfipH1vaeOK/8VZnMYhm6DzDbI2pZdkOMmsRUyx7+TNCS3fBcuaZgD0T/
         QlpWILv0WQ8k1WNRB/VjKImNGxlRmZChB++TQQF/n2+6XOLB+Q3ja3yl26CB+TcsYGvg
         Al6Dm1DogAbsPR1NloEM1GvD/zwF5/nBCETqM9cN89ArN0C0UtLPuWpqk4dvAFxYa0Rs
         k9GT8n9LBwhXdxIFX4jzfpz9Ma9tBCp9BagjoCq+7/BXvRwDVqlwjaaHBym6F501eFsj
         CzHJen7seGSJfMYkdH08karto7f5ZIAl5bRaCKORE6UNOuGalArRwI+zP+07pfuD9d4J
         xGLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:ironport-sdr:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Hj8C53MXJ3EynJ0MI9dj6JqUsj/HHE+fKZ/tBt0EoYU=;
        b=30KHtq1pUaJ91g5R0/1IQOgnNDluGEERAhjdH3A5gUE8TSiofoV9Ke7yGUfp17uNhq
         2UxoLShNEJJXZb92DWMrD+gIGOjkCn+p0X7Z7amYZxBhRLNZ7hsj/24E79PrsExhX+tb
         oDjxijzWjwYKW1Le4/0bHfUm/V5LTawjZvFVgXjs3GKp7u9NAAXMP6HRja4YI60ai67G
         KUjSKQDR/IMwI6v3QLcINvJH84Pn/moDhHcbWKkOEDyinYrDgDFcfvVCn5ZNODScx7N1
         bpC+6p+UUNbHohoPiWJrzXZnoH8sdxcTUfaDjfqESrDhD1lopa7Bvk27KUbNj/ZkJSFG
         8SBg==
X-Gm-Message-State: AOAM533kC7/81PFLVaaCzu/gHgXPA9JzKLez4Pi1/QeFYAx8BhPn8jxu
	DQjHucwO4st0uWeyERnbeR0=
X-Google-Smtp-Source: ABdhPJwqM/LtRT228hVAyPVsJGaUgIBWWyYFB17/iKmWt7uvbfXf6wsmx2+ONWVoMeQGYfjyQ0Hzfw==
X-Received: by 2002:ac2:51bc:: with SMTP id f28mr3526472lfk.222.1640309109807;
        Thu, 23 Dec 2021 17:25:09 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6512:3389:: with SMTP id h9ls98620lfg.2.gmail; Thu, 23
 Dec 2021 17:25:09 -0800 (PST)
X-Received: by 2002:a05:6512:b0e:: with SMTP id w14mr3412046lfu.433.1640309109038;
        Thu, 23 Dec 2021 17:25:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640309109; cv=none;
        d=google.com; s=arc-20160816;
        b=rSuuSt0qhSczm1xa8Sbj7Hw9BQxfmdd1pnokp631jLr/9rANJ7hilzIbvwgv6Hr302
         1Z3fEBz3FLuuJQtKX3INriC1+yLWNeJdXjfe84n4kpO4BWay2YSoLJRN31YUa/rsmcVx
         2dtQHp0FD7Lp4IDX9gI5slJcZNWjmbiozGhWVGNHRGGm+7H79YBS88Hu9z3qGVTMHdme
         ijzHA4oAjT2A87FzfUwqpWB/SJnFkrZHaWQBhsjh4HPttgegxZPYGPxxRfWyEBz0nhzG
         Rw5DmLKIcmU1ditvSVe09j8iBj8mAcG/i1PUlikSVGDR1T6ih/I9lcOFMo5l09ZVuzDz
         iROw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:ironport-sdr:dkim-signature;
        bh=w9cmyWGT1MTI6i9KuXF0LntFgK425NTxD9BXpRh8ER0=;
        b=F5bXDWff1niwyLpCoky9OQPLa1//191c7h22ArAgHw6y1WqqSmsfwwtsFv0A5vsNkN
         7vVLHCcBdpMDHHPIEHPkqn1Ln+rSMIcp7zBW8I3e77h7pGcWZn1Jxz7h1sZm9JH6Uu/I
         xlkAg9Y/I8JYid42vDQFomPHnd9SpT5CMmcbcxvtf+BqtGkgFQuXebUmyw443PlX0fHz
         lw6Auj4WAByb+lnzdHLXGd/BvASxAs6YA9IJqJ2nohcDuL5Nn7L//cIUSFxc3DxQNxw7
         OyAPpguh8KwwRgeWL4h54pdUAn+wDbxA6XnDXxygN4jVJWAlMThcIJSIVFTjZT2wJUY4
         O76w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@microchip.com header.s=mchp header.b="rWinh/+m";
       spf=pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) smtp.mailfrom=Kelvin.Cao@microchip.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=microchip.com
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com. [68.232.154.123])
        by gmr-mx.google.com with ESMTPS id q2si170721ljc.0.2021.12.23.17.25.08
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Dec 2021 17:25:09 -0800 (PST)
Received-SPF: pass (google.com: domain of kelvin.cao@microchip.com designates 68.232.154.123 as permitted sender) client-ip=68.232.154.123;
IronPort-SDR: ysZDHzWD+HTWkk4QhHD+2AZiNDoz70cbZgLM00YzXL6zfE0W/Np5w+Fm2Blhg/igh/GXs5YknS
 vuekBw6nEkAf+H++NZjThqOxibeLCxnzrPFdfumrVUFDJrMNNE9zLMv1boIY0M6WkNwfrzYxqq
 pcDQGYAoIg0dvt//4Rc5G8+jLlCYk3eTBfFl35xF2zdS3c00IG9T97HfvNPsjxenz2goLPwo7G
 E8nBCf+M2RpV0yUJ3UQF0+Zo9PTa8aPrI5iDgBQhipXsu1Vc4ogqVQ9CVRhXW0Okpu81JC6WXG
 FFpf/Ci7ibqyvnJdy0E+9ZC1
X-IronPort-AV: E=Sophos;i="5.88,231,1635231600"; 
   d="scan'208";a="80533979"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 23 Dec 2021 18:25:06 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.17; Thu, 23 Dec 2021 18:25:05 -0700
Received: from localhost (10.10.115.15) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2375.17 via Frontend
 Transport; Thu, 23 Dec 2021 18:25:05 -0700
From: "'Kelvin Cao' via linux-ntb" <linux-ntb@googlegroups.com>
To: Kurt Schwemmer <kurt.schwemmer@microsemi.com>, Logan Gunthorpe
	<logang@deltatee.com>, Jon Mason <jdmason@kudzu.us>, Dave Jiang
	<dave.jiang@intel.com>, Allen Hubbe <allenbh@gmail.com>,
	<linux-pci@vger.kernel.org>, <linux-ntb@googlegroups.com>,
	<linux-kernel@vger.kernel.org>
CC: Kelvin Cao <kelvin.cao@microchip.com>, <kelvincao@outlook.com>, "Jeremy
 Pallotta" <jmpallotta@gmail.com>
Subject: [PATCH 3/6] ntb_hw_switchtec: AND with the part_map for a valid tpart_vec
Date: Thu, 23 Dec 2021 17:23:31 -0800
Message-ID: <20211224012334.89173-4-kelvin.cao@microchip.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211224012334.89173-1-kelvin.cao@microchip.com>
References: <20211224012334.89173-1-kelvin.cao@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kelvin.cao@microchip.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@microchip.com header.s=mchp header.b="rWinh/+m";       spf=pass
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

Some firmware versions return 1 in the target partition vector for
undefined partitions. AND with the part_map to give a valid tpart_vec.

Signed-off-by: Jeremy Pallotta <jmpallotta@gmail.com>
Signed-off-by: Kelvin Cao <kelvin.cao@microchip.com>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index ec9cb6c81eda..25302a384a7d 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -858,6 +858,7 @@ static int switchtec_ntb_init_sndev(struct switchtec_ntb *sndev)
 	tpart_vec |= ioread32(&sndev->mmio_ntb->ntp_info[self].target_part_low);
 
 	part_map = ioread64(&sndev->mmio_ntb->ep_map);
+	tpart_vec &= part_map;
 	part_map &= ~(1 << sndev->self_partition);
 
 	if (!tpart_vec) {
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20211224012334.89173-4-kelvin.cao%40microchip.com.

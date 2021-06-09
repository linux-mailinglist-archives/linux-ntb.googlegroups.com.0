Return-Path: <linux-ntb+bncBDU5DXUG4MFRBOWIQKDAMGQE5BHOS2Q@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ej1-x63d.google.com (mail-ej1-x63d.google.com [IPv6:2a00:1450:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id D08253A1281
	for <lists+linux-ntb@lfdr.de>; Wed,  9 Jun 2021 13:21:30 +0200 (CEST)
Received: by mail-ej1-x63d.google.com with SMTP id jy19-20020a1709077633b02903eb7acdb38csf7879254ejc.14
        for <lists+linux-ntb@lfdr.de>; Wed, 09 Jun 2021 04:21:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623237690; cv=pass;
        d=google.com; s=arc-20160816;
        b=oAzfGNBs1nvK1+aJQqm6yYqYsIGr3oavA03uGHm1KBCUVCVvODpYCdudKSQW6THktu
         utCPcDNpEx07BFZ/BZ4ApMLR3Spd5ZGaCLytOsm0+cZ0LiovTU/WmrTSyVHoi/nK09cw
         lpPGf75N8B2p4gIpBBxG6985Np/FEeK4X60h0wjfjE3CxUlD+ApM5KO0qq2T70tKFDbf
         cm/TJ+Bur+3aiDnLWKOtGl+Am32bVMMb4Ebnj3z+qYkp4WwVXm3XG+7KQhXBENWBMMU1
         qOZuVC888Bb5J5/c4GZz8400wdvIUT722QwOmtBN4r91tVw2OOrRhnW8ufCz3pjeh5j7
         w34Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=K5gqN5tiWRIsqi8ZjE+YjIBFBS6IW/niD0UBzGGqTi8=;
        b=zM1YpV9buvGhoyPXh6uVFWvG3rN5Ena6xUOY7mijx7cxNnh6AsdNboWRISwYYC6q9d
         rzoKvd9EdAxvSQ83yenk6x8Q1Is6cOAvyozYxNfHrsBARG5W+7BMf4HmzWptR0/O0LPT
         Htu411y9f0SdolmQy4F8eLRaFC8YOls6K24c1yco/9uBuEoJAvaBTQ3YDhwJikI96TXY
         bS6illL9CEWNeFB70Dltke5DpXHBU5GZQm5G1t240cJ1+roY/GYw5waKzmmBRScR7Hn4
         kKuydWJJ+wTCAneNpCyOe0O5odu4/DNfQZi9NtyVeXQ8SN9AgHluQ5nheHKLX4pOKbaA
         pglw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K5gqN5tiWRIsqi8ZjE+YjIBFBS6IW/niD0UBzGGqTi8=;
        b=Chb6f4ydVLWjHCol1yo6Ze5gtNA3Hkd3B2AWzqPGcKbHUQLsJVrJKLTmCAFRRSWRpk
         35xLfxS0K4WCRHtFtmR3/OugrXikxyxjqF3xJW5h+zQn43n0Nn7m/iE0navbmjPvOIbC
         SZwszGTvRnZ9WaWHe5VtaA9Hj9iaxjEjWADMSul4oGwa9sqI6rCX0mimzJ7un6ME/tZ4
         k/jVr2Gzq6CodyyxVQlLnWvG4qR2C2z1YlgeFtTVN+Pu5Yaf88Y7DDv3wmLMthNaduVX
         hD+cw8FMrDv5Arb5Ym77s+BLLXAnYgbVE9El3n+BU6pPCHaHDgAG/gKmDe3sgL3u5dug
         RRRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K5gqN5tiWRIsqi8ZjE+YjIBFBS6IW/niD0UBzGGqTi8=;
        b=FWSAelSQ/wpfILYGs0QH7RlRGeH3T5L9c3oGeJJKF8H7E7XYcdDU2DRCH4Rq3YTmec
         8cIJjA5IQncpJrYDsNiEAgA9cFdPzSf6JRPyg22ObeF+DwPjZLPqtRubBJz9Zrmmc5n6
         LyGepWVjeJ/94Y++tP4sIkGoOld2kgi4s/8xkaIte00GuzdkewflI7pg45B4/ZjjE6pO
         S9MpBXZUv84OUg4GEI6I8351CQ9eWQJomv7VpMk9c/ssuBV5vR9BSGpv4o81qriNgjIv
         m1ehftspwpn/Keur5n55I1ui4Ikk9Tjx4dIcnvyCZQqPSTyc/Dv8ecPJ5Tujg2yKTx2S
         X3BA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532L/DHUI9eEtUGVK/AqNSVQlch3xLAusUJLPe+em8wAfotbxXDG
	8y0z8xh9oMvhb8U1RZNklYM=
X-Google-Smtp-Source: ABdhPJxsBZ6q4sqpELbMD2BWJXbPsKmWl5/yqlTY+flJJl/zN/qCEGDL1N82DXdzZCVkP6GQk4Jnqg==
X-Received: by 2002:aa7:c9c4:: with SMTP id i4mr22480127edt.299.1623237690583;
        Wed, 09 Jun 2021 04:21:30 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6402:1510:: with SMTP id f16ls1599161edw.1.gmail; Wed,
 09 Jun 2021 04:21:29 -0700 (PDT)
X-Received: by 2002:aa7:da8c:: with SMTP id q12mr26087818eds.368.1623237689733;
        Wed, 09 Jun 2021 04:21:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623237689; cv=none;
        d=google.com; s=arc-20160816;
        b=w8SOEMfhqaqr4TmZQl7jjCqPjdzVoshrau/ygLLbF0pnY1HipCGwxOM20ePsZOWNwR
         k3WiWRJi+JcMHLLNmV0Gs5Mmc7yBcgyQQ4fe2Zu/ZXMDWYYLW9mYyZCh3DKsFQtAi9X1
         +II59wFPpgaNXu+ymQcWvlb/8v+VNtI8GYwwPAw7D8+Oxcq+d4QBEZ3V/dprx0GHQZdZ
         1XMfFliYSL1VM+MZ53OMewDQA9CmgUGV5Gx+Hjr0WAj+bDUv9qAcJlWMMLzCrtEoi0F2
         gjQBtO8pqkxqfhoZOPc257QCGVR+OZoJELmIkM7MUv6PArX6tlOL8/fkCX1pfu7FU5ZE
         rHGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=Rn1+a7AfOXXYoD+jvu8312xXWSk2OImJgr+pExr2QRQ=;
        b=DftHNtXY3dbF0Fybva1ZOp8FsTqT4LqZzczwnSWQEWGp/ESKdLwyRrRZi/2RW9F4TL
         ILFxO2H+drZAtw57CVNWIzEfpwrKEnA9LvI2hyrfsfdMO0VLdB8ix+UaRskHtmMiufDd
         A4TWLu9xLYxsGsAl4Bkw5v0OmtfL0FkyWfnSQpEWEvkQeBIqaDy52y9CkNzEKnrk8J5/
         aagPzCvSwzVNYU2otf7oJ9K9iPPGLz1YloC/hdZPTJa5V4o7PK1/g6c70wrT3A9kp603
         qF2dCP9DjagMOKqtoVkhEYT9V4gebj1DhBVi5ACivMcx0NOPwNyHXapmmhSbyb/qod5E
         VuPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id x10si176961ejy.0.2021.06.09.04.21.29
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Jun 2021 04:21:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
	by youngberry.canonical.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.93)
	(envelope-from <colin.king@canonical.com>)
	id 1lqwH2-0003xO-I0; Wed, 09 Jun 2021 11:21:28 +0000
From: Colin King <colin.king@canonical.com>
To: Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	linux-ntb@googlegroups.com
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] ntb: ntb_pingpong: remove redundant initialization of variables msg_data and spad_data
Date: Wed,  9 Jun 2021 12:21:28 +0100
Message-Id: <20210609112128.184667-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: colin.king@canonical.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of colin.king@canonical.com
 designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
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

From: Colin Ian King <colin.king@canonical.com>

The variables msg_data and spad_data are being initialized with values
that are never read, they are being updated later on. The initializations
are redundant and can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/ntb/test/ntb_pingpong.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/test/ntb_pingpong.c b/drivers/ntb/test/ntb_pingpong.c
index 2164e8492772..8aeca7914050 100644
--- a/drivers/ntb/test/ntb_pingpong.c
+++ b/drivers/ntb/test/ntb_pingpong.c
@@ -187,7 +187,7 @@ static void pp_ping(struct pp_ctx *pp)
 
 static void pp_pong(struct pp_ctx *pp)
 {
-	u32 msg_data = -1, spad_data = -1;
+	u32 msg_data, spad_data;
 	int pidx = 0;
 
 	/* Read pong data */
-- 
2.31.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210609112128.184667-1-colin.king%40canonical.com.

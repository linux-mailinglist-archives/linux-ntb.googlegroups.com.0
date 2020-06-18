Return-Path: <linux-ntb+bncBDTZTRGMXIFBBVEBVP3QKGQEWDLBAEQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id CA71D1FDC36
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:18:13 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id g21sf1062129vkk.15
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:18:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443093; cv=pass;
        d=google.com; s=arc-20160816;
        b=v1ZRRuQqUF4ISCnIpurMnNOw7U2/WCxW/1Fbjj2tSDm01J4DPrjxA9MGZSLNDcilhI
         iy/BYi2CiBxOz8/l+DMsHGswOhgt75sWWi9YUGv9dmx97729l8W+oP3y0q5vAGgNic98
         jt16m3wXmBXQYjx9IKc8CLwtsE+Eb83JWNPOQaGPZmvBkSmZ1tJu2mpyOeuL8xW2a5qO
         deLDW5/OuHoaMryAE7CLsZynEjiUnRodACrSt+O8A7n2GXekoDIMz8Q6BNpSMzr4v+G1
         TVGPnjbr4ptzcECNnew8qaLIaT9aOYXfaXDTQD1xhcfHO8WeQeAZLJxcIw/qaYNyj3at
         gwPA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=iIH1+KvolaoRzMkJLe17ctva7nNThSO9Dp3JL2V23FY=;
        b=OyEGQyc8KyN5I9XK8yoYjzv3bm+Pv1k0hP9WgXmT87fredeu7sxFB8i85xjUejY9zF
         a7v9yqBh9I0izgoCWzfWVl1EZGm9EX4DPez1SNkFedWFo5+T8uW5/jBbz9mWZh5i1iNf
         V8002nqqjgl3A+Y5+TcFVhGoTGs+g605f/MRn3ivBBtps3VtSEdxrSHOdnUkoajzv0Ib
         x+hhd5BB9a2goRCxgl4x0BcdS4CkRA5bOHaBSHz5+W7hGJwTQPpnAqAMOMiKQe9SKWPH
         0uK8UqAMeH82PPZblI0KPoknNx713mpYTt0xFtTRn7cxWtiuYsKmo+S8F8UK4ZBw9rWg
         qx9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="muCOf/+Y";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iIH1+KvolaoRzMkJLe17ctva7nNThSO9Dp3JL2V23FY=;
        b=gNVffWwMQAVANUP8DAJDHc8iNpj9e9AOP9mGZz+YECrxQzYrCyMVpyB6BrEKcr4tim
         LCIh/GLKKciFUL6lJIZsrLfzqs9jT3YTl+tzgkBpt6BsJwe7tUmAMVvdo1LhivkSBnNL
         gWQ1E5N20QKv2hSWflvcBpDpOrYd8XdOF4tUHvugVRh+o6sc8Uvy4aT52ChQHGNeU2EW
         6oXu8X7osfOUnbmu6G7o5VnZZIAdMRbgetnxFrNFSwK8MUHIToM2NcE77zM9dvCNoeCc
         45F5chL1MD6QW/ZcvgB2MxnEHkQGQ8f7z2whlxLLvCNlZHJ+g1yJIzwjjSwwTcvLoLmQ
         z+kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iIH1+KvolaoRzMkJLe17ctva7nNThSO9Dp3JL2V23FY=;
        b=rQDUnO9wRcC1bYa/eg6h5hK4oxz2nWxjGLKsTgOX+5x01IrcAYa/Y2JSD7Gec2FYXn
         PYed1u2r35s9bp132990SI7QRjLDomHBgTyHABlXftd49jNWhGHNHBJZEGl9rYQNsY5a
         dvG65iP/81Qn1KNS5hLGEn4IsrnqlO7pSMkoAgoxh/3rv0ZGTedrahAuqG+EMrfabOWj
         GxqZbdF8VwhsYKs8RxoOkqEHXa1Q1FZhf/2zv4dfUCEiKPf2gwbyKEHpARRriFObUwAt
         h4j+F4DwPWvuw5r0aqQAKto/VX95MBh75+8otvK1F4t4DsMn4ChWizVW+cs42wjEsr8l
         e3yA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532wlG27g6AI70LlhSXXWjQ+B3qqiTPBo4Kn3yiWdMoTy8DUUwhI
	LoClXA7Tr/i8YsLnPPHzYHA=
X-Google-Smtp-Source: ABdhPJweal4+fqT94CUfXZdl9jlry3GcL0LiMYHbjJqwH3/5OvIcfOhmXQFHPzT7LYtG3nmk1Q8Pbw==
X-Received: by 2002:a05:6102:7c9:: with SMTP id y9mr1568983vsg.223.1592443092927;
        Wed, 17 Jun 2020 18:18:12 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:8717:: with SMTP id j23ls529997vsd.11.gmail; Wed, 17 Jun
 2020 18:18:12 -0700 (PDT)
X-Received: by 2002:a05:6102:3098:: with SMTP id l24mr1615978vsb.86.1592443092574;
        Wed, 17 Jun 2020 18:18:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443092; cv=none;
        d=google.com; s=arc-20160816;
        b=qBzQ6cP5hKF7hWly/Umj75c7wPY9/QC5vCQ4lmF8TZoq+mlRpMrdxCws7zOM8Jwz8+
         JsHalH+B916S397cg9S/7ig1EpAhGVJhw2QHJ5uCT6cvKLG1ATsFeHflWCX6N/5yoHbq
         EKU3LvDRyCIbTK83/Mi4F9vtD9WUZM+kbyKeRG8tsW9nI+6SQ8LyT9W1dofVYVKhw6BV
         DA0HTK3yI24vD28pMm2xEp6h+cMtX6g9bjHKAXeiYcr+Ryxi3KrmqOUWUWI2FENJqkJ4
         72aJWMm/8Mk+eJ1NguTlQgrHSQc+TIY3i98Tmjvdo33g6rbPfVQBvLEHOWSJrsRQmWV8
         CgAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VbP/gDnBV+uhcbekMn1Ga3uktdTc82KV2bSgv8S9rIs=;
        b=Ie5M6TkFoPOQ7LSpyCH2nsejxYFZ+bG5baqU3h5kuqoaOYehq5KozE9c16E3WZkSho
         en9wKDepFDD4LbgYLKK5Ahb2fXlD6MEujY/m1QMHhKl2bkTt4v4alx8ZdNQUUuaic05f
         MhmC2k8QA/Oe/nJKdHWBGhP7qqnDCncyutCqZnvEtrkqbZPFoqduXPUiQYFA9t3CRgff
         HW7ih+aaIS0Hbs0cx9Jk/z5vCWhhpZGv/6ccrmRXKF7Cg/tP6aLXS3ZeQxVgoYuoMf1Q
         P6nsfididVWx60HqzRtqfMVwdK0MXk8kLBRMXAsHtIUwpGBhvtg8/VA4To+unC6+V3NH
         5bPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="muCOf/+Y";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i11si140477vkk.2.2020.06.17.18.18.12
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:18:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C1385206F1;
	Thu, 18 Jun 2020 01:18:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 072/266] NTB: ntb_pingpong: Choose doorbells based on port number
Date: Wed, 17 Jun 2020 21:13:17 -0400
Message-Id: <20200618011631.604574-72-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="muCOf/+Y";       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
Content-Type: text/plain; charset="UTF-8"
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

From: Logan Gunthorpe <logang@deltatee.com>

[ Upstream commit ca93c45755da98302c93abdd788fc09113baf9e0 ]

This commit fixes pingpong support for existing drivers that do not
implement ntb_default_port_number() and ntb_default_peer_port_number().
This is required for hardware (like the crosslink topology of
switchtec) which cannot assign reasonable port numbers to each port due
to its perfect symmetry.

Instead of picking the doorbell to use based on the the index of the
peer, we use the peer's port number. This is a bit clearer and easier
to understand.

Fixes: c7aeb0afdcc2 ("NTB: ntb_pp: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Allen Hubbe <allenbh@gmail.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_pingpong.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/ntb/test/ntb_pingpong.c b/drivers/ntb/test/ntb_pingpong.c
index 65865e460ab8..18d00eec7b02 100644
--- a/drivers/ntb/test/ntb_pingpong.c
+++ b/drivers/ntb/test/ntb_pingpong.c
@@ -121,15 +121,14 @@ static int pp_find_next_peer(struct pp_ctx *pp)
 	link = ntb_link_is_up(pp->ntb, NULL, NULL);
 
 	/* Find next available peer */
-	if (link & pp->nmask) {
+	if (link & pp->nmask)
 		pidx = __ffs64(link & pp->nmask);
-		out_db = BIT_ULL(pidx + 1);
-	} else if (link & pp->pmask) {
+	else if (link & pp->pmask)
 		pidx = __ffs64(link & pp->pmask);
-		out_db = BIT_ULL(pidx);
-	} else {
+	else
 		return -ENODEV;
-	}
+
+	out_db = BIT_ULL(ntb_peer_port_number(pp->ntb, pidx));
 
 	spin_lock(&pp->lock);
 	pp->out_pidx = pidx;
@@ -303,7 +302,7 @@ static void pp_init_flds(struct pp_ctx *pp)
 			break;
 	}
 
-	pp->in_db = BIT_ULL(pidx);
+	pp->in_db = BIT_ULL(lport);
 	pp->pmask = GENMASK_ULL(pidx, 0) >> 1;
 	pp->nmask = GENMASK_ULL(pcnt - 1, pidx);
 
@@ -435,4 +434,3 @@ static void __exit pp_exit(void)
 	debugfs_remove_recursive(pp_dbgfs_topdir);
 }
 module_exit(pp_exit);
-
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618011631.604574-72-sashal%40kernel.org.

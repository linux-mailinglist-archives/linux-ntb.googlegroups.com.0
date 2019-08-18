Return-Path: <linux-ntb+bncBDU5DXUG4MFRBQF543VAKGQEG4SXKWQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 7380C9190F
	for <lists+linux-ntb@lfdr.de>; Sun, 18 Aug 2019 20:53:52 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id t9sf4075406wrx.9
        for <lists+linux-ntb@lfdr.de>; Sun, 18 Aug 2019 11:53:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566154432; cv=pass;
        d=google.com; s=arc-20160816;
        b=HmUThNTK3bPDtINKTuIDPqLHSPF/iHSMFwzvNR+eQMywjnb3aJPZ51aCKFUbG4eytb
         uMNEPB0SWHe/4kwGWAYrrgItiQpM4apbRu4b057WBr3C4MKznMa0u2Z/LeGzEXGM/q4Y
         AhfUOtm5z9GJKlohqWBa5Llj8KedqbqVJAjqaidbCqddpEzawkb1g1W1MTWtLPDNU31u
         JkKZ4T/bPDW1qY2kjd3nmiu5h05+l2AIn1WgKwT4zhXT36obIlE/2DK50NoPhqKMhfUY
         eMonQCVstLWoSSJ/dnxkEPtyeGWT+4ikd8s967dtVA7WEjRYsfWM5ThVC/tsgG20hmEM
         /ZWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=rpw907U74uAMTuqgEatXZHSUL8D9J2cu8t+qILZ1mRg=;
        b=uTbpGy9s8sDeiGsTfox/gAYoBljCjjpwSlYfFltBmH+SVhGHXLW35ogbPexa0SwFSl
         AgosMEiqwZcW5zGK4rWuupA87R+lflR0ahQBCLomcMlhoQqwR9AUERv++QnY7KxAbVHL
         72pv+NbgHRtv4FAw3vEWjRgOHhReiLUKk+EFNUkxBSikAUKdM1jVpdi7IihSDP4rdcda
         FAFjnFLMHxygCe9tQ75pJ1p16R9xM6o+eSIfHNc6oO5POd2HTkg6JfSjM+xYeRG8HoH9
         OJRPA9A4Y2Kf1gbmYRzfo4u2CDOc04oyqY8b8IcXKAwlDFFUxbyljosTMfKfEK3X0KjL
         JbHw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rpw907U74uAMTuqgEatXZHSUL8D9J2cu8t+qILZ1mRg=;
        b=DyZKEpPIKWEjxu7hVuMUxUE8BEMzxOL97s8qcWD7EwbN7Mw8Q4N+S1ZsH3VkyiJGcB
         aZwpuyic94Cpdh2u0Fff1s/r+4vC9jJAfPdIfaPefVRlMmgrII6y1xycg7zeP4cTwzTU
         FGf6KIMi/Hh6nh50qakL8CErvWM+5wVhiU2JrZKDPG0YoF75Z9sUs7R17B4l5gBackPX
         n2QgZh1HQ+3AXEGTX4ZAbB/Uc0Ai/ekFRrMizgDe7k5WVOY+uO7d493mb/EsTsXSi7vy
         drlVyzTBOLxPTq3Lz6zc5/01673wvX9PwuprXmWxb36A/XKmIj0LvB2Ams/MMEohX0yC
         JIiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rpw907U74uAMTuqgEatXZHSUL8D9J2cu8t+qILZ1mRg=;
        b=Uj9KdxGZEaUAvfO7m/Xcx/lCwpqrKKYKH0XruEhVMzIul/TfOgCLcX3Mk0lHVTHmeJ
         dK5Kdmvi/eoi6xdkNRB2D/8A7DCQeB6VO6DWEsgw172lUuPv27LWdsL/vQ5VimVFNXgM
         aHwnreXNSusCfgsflfUXa6XFVQqsXkpYUGgqRfTjFOGeH9vuwpPOcKsICy0jJX66jJ04
         UZ2N2tb3ybWzg/DCeXrmbErI2irJSR5nlQFI/UwKXkEpl4NeGcU05cK2gce6l+8Ay6HR
         S28lFGu6AJRXStCohLfh+4Q0yosqfkTdaxHJYntNS6KUJLAQORFDlvbyRxz02/fVnPWF
         yrRg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX9oReRZB9u9n0agYaUh8jUcbd8pSS8kxfAPNtOVPqhCnVgSuBw
	0Kb82i0a/7JYUGgIRuoF8wQ=
X-Google-Smtp-Source: APXvYqzNoez3vcnhllAvR4YZzzWcKT/mqnSkLyTaXw2azn6td60cmz/3/pfHsizVYyAP8Nrw4CXbGg==
X-Received: by 2002:adf:e390:: with SMTP id e16mr12601786wrm.153.1566154432134;
        Sun, 18 Aug 2019 11:53:52 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a7b:c44b:: with SMTP id l11ls3219690wmi.0.canary-gmail; Sun,
 18 Aug 2019 11:53:51 -0700 (PDT)
X-Received: by 2002:a1c:411:: with SMTP id 17mr12169667wme.34.1566154431717;
        Sun, 18 Aug 2019 11:53:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566154431; cv=none;
        d=google.com; s=arc-20160816;
        b=AWKL2DEtLaMlUjJH+Hj0SXouhT7BVKGlx1RL2hQVvspOjx2NHWG8qQG70OG9CA+d57
         Bm53tkbmRDhdYVf2IPIqyg7IY/E+iU6E2k5RvvBPxhoB3LKRd5mPcAbp07oh1OersaXY
         2RxLQ+ovQ7hy9tt1x3kFav8Ty0JtaM2asckbSfzy1i9Tlg+8qzpDkyJlPp6Yx14vGWG0
         4xIfNjm1TWYFt3znVFFZQzc/QOQQ+pBD5y8rbcMDS4w+Fhz3/yy7N+nlUSMhks3tyxl3
         4WVveg0F2q/Ham9dCKcx8NE/EbQhZc1PFJ3OceItmbuJ7baKecazmgjXIvM2/G9lfTmg
         jdPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=p4VhrIIR7fs7Yfhp6vX++rPRmUah2bxQsRfcRHzIoN4=;
        b=jTkxb8nMzJ86tyaNX1OcwrQidgpj44ZpK5IDm2Ph6heL1wcb7TSQtWl9fuA317OyE0
         Cuk5nA5zzyC6KnTawcc9nK1h5MN5Ba7y/kBk6DVCug4WvkBp6oT+rDjUvGbWjhyGwyF5
         FGzwMKhw0NLM6o7ABVtNei9FOD/KwaPJWtOsijP/MeAgRbdGXO7zmdwb4q6rLsezYDBE
         BxNTH3F5S3mxm2BLpSSCvZCP7uv5EZ+SMGNt/jte/u9ssOZSRQSYjMybrKyh+0d4TlAK
         dV+uX4sgEntkM708wJqyq8izc1Zu+Z3+WYhmjJhQ37Kv9igJLZDrcEB3NY/o/QUTUj69
         GlpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) smtp.mailfrom=colin.king@canonical.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=canonical.com
Received: from youngberry.canonical.com (youngberry.canonical.com. [91.189.89.112])
        by gmr-mx.google.com with ESMTPS id g7si721617wmk.0.2019.08.18.11.53.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 18 Aug 2019 11:53:51 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of colin.king@canonical.com designates 91.189.89.112 as permitted sender) client-ip=91.189.89.112;
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
	by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.76)
	(envelope-from <colin.king@canonical.com>)
	id 1hzQJJ-0007nC-Eq; Sun, 18 Aug 2019 18:53:49 +0000
From: Colin King <colin.king@canonical.com>
To: Jon Mason <jdmason@kudzu.us>,
	Dave Jiang <dave.jiang@intel.com>,
	Allen Hubbe <allenbh@gmail.com>,
	linux-ntb@googlegroups.com
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] NTB: ntb_transport: remove redundant assignment to rc
Date: Sun, 18 Aug 2019 19:53:49 +0100
Message-Id: <20190818185349.15275-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
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

Variable rc is initialized to a value that is never read and it
is re-assigned later. The initialization is redundant and can be
removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/ntb/ntb_transport.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/ntb_transport.c b/drivers/ntb/ntb_transport.c
index 40c90ca10729..00a5d5764993 100644
--- a/drivers/ntb/ntb_transport.c
+++ b/drivers/ntb/ntb_transport.c
@@ -292,7 +292,7 @@ static int ntb_transport_bus_match(struct device *dev,
 static int ntb_transport_bus_probe(struct device *dev)
 {
 	const struct ntb_transport_client *client;
-	int rc = -EINVAL;
+	int rc;
 
 	get_device(dev);
 
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20190818185349.15275-1-colin.king%40canonical.com.

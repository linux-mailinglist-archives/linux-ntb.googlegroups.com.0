Return-Path: <linux-ntb+bncBDTZTRGMXIFBBJUDVP3QKGQEOIBIAMQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AFD81FDCB6
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:21:44 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id x18sf2879136pgk.23
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:21:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443303; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Lfh5X6z9Ns91dH9pBf7QI2ccF27982aL4gD6naqrqEAZxUYu1XFEDlXqcEx0B9PF1
         t+CZFOZeH7BjW4+Ak+fLmYLL702FvNC5vTedB+uzfIJJz/h6KajmDjDr8Fl0X6yqGY3I
         7aqX4yJVbkElXssjCbVoi5XzlIccZ1dDgKxRxxftZRZ94NBYPplf+u1uJ327flGxUAFo
         CUs3j0ATDeXpQ/SYqKBg9Ho7K7eqaLaIU/Luuxorz8pcrcvz1bejpyxDKZevTWGJ5g7D
         b6TIQoUClQeg6n0ONJRVw4QRZWeiCII96ZTUdri3XJJHNEcYs2s0dOFp5V8efR69CxlP
         96bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ZJlIwHEJHZcv1v0yeIF0al1wLpzRxE9p85ikQmNPeX0=;
        b=ydCm0g26lUb9zzZ7Tv3RL+eQTdcAs3fPnUdZ+K/3QV+sOjFpug5qgfur5msd3hGkeF
         EtD4E0c2QQpHNisKoV3FCwhfJBguwLikg6EplJ4QW4RY4uLwOk94hHcH8c1AgrdwaJG5
         vU5KjpIL3psfLfPNcvd/afYNzYZfJSoQD+FTjynu7VxbfKM1qWFnDMQXlRYI3CYBYEsg
         ormQnSPP/4QeDCMQqbi798QcuVKRlyyPEW4bOykOrGAIXZ9KPiowfEfw2pOH7wuxBioy
         hJG/7g0Ey4ejPlf37ndEyELo//E+vUHSXp7vohvaWtgDMS1XCz9a7RYEcNVsLQjAeQH0
         lvTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ctsi6t3q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZJlIwHEJHZcv1v0yeIF0al1wLpzRxE9p85ikQmNPeX0=;
        b=InXjuRcPS11+f6wwSnCuwL7K8fpoK3jZcglcq5EnY9krlcJbdG5p3OszxMsSSFy+nY
         w3pj39Y8+0d1LRUCLZK76ry6H9uJx2qrxIRKpC0kFih2qT8KT1XetTrtla2tws+zvWTS
         HZnUVD9+PZxBrvSPMdHOBR+4aP6f2myDOcrRbHtr3rGpy0/6C+Yo5Z0X657tfDW93hFY
         TwA3FopBM6854z2KDKqFt0jWj8GhkVtgKVCzLpdRD5PvjoJuLAaHRa4zu7JkOZdapzv0
         qwh3tWK63tJvZZbUOAn4sVoagagLmlakx9Nk7rT/WeBspgJxoAN6dC8G9kITsuR5+5pw
         Qvtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZJlIwHEJHZcv1v0yeIF0al1wLpzRxE9p85ikQmNPeX0=;
        b=t1oVssLPoI7rj2EyKaMADxvRtw1IWMY98rLVaO06UA5g5itcLa8zyjSizk4r3M30Un
         vOLPQTzSXrnkGC/XSgBYq0EE+p8de+Umia763GAv9EP/Daqd/YomDa4eYYWQAXL9Ifok
         RMGds5wM+zBR/IUZGfuxnXdaIalnsIueLl4403AAQ64NrqTkMcqaTxlmSiCeO/flooKm
         GTOH+zaMS4YIUDi9XUhpBupYMbLgU3AG50Cuj/Pnk5DYobVoRinJ2Yg1mY1nsVAO+P80
         BJI2BXJROCSowM+PGpNcVngNmWXTVKeIFbSwUYQmpQ9loC5+Hno4Jqx9dZ0wob4pgmT7
         oGhQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530hgL14LCRsSMRJuvSBgMjFaeTidE/qfEh92yw9akJMavn7LvH+
	8e+ykiO8+/KTI+MmtMPeTbQ=
X-Google-Smtp-Source: ABdhPJxjp9ZopiQH85f5BCjUuVyAm6nuAvr3QVA0q+UolnKAioJIRGf6hLy7b+qK9YAXenCA/IJHNw==
X-Received: by 2002:a62:2d0:: with SMTP id 199mr1455749pfc.4.1592443302908;
        Wed, 17 Jun 2020 18:21:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:dd4d:: with SMTP id w74ls1279528pff.4.gmail; Wed, 17 Jun
 2020 18:21:42 -0700 (PDT)
X-Received: by 2002:a63:7353:: with SMTP id d19mr1398279pgn.239.1592443302580;
        Wed, 17 Jun 2020 18:21:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443302; cv=none;
        d=google.com; s=arc-20160816;
        b=TPCOlIcJ8/y1MH1S+421mR6VqrNKF47mfhu9vQTAdpiC2UnKxlU3oubx4ikTQMOaqL
         Myv6rOWEe8ge4Ny30PsrHbD3wEaN31IGoenwq3/QStafjNaY6Z/D59hgdfglUyFEX2EA
         V8xlf8w9SFIaSt91ZuXd4pGuy8m3dXWsAVvAjozXtXJlPQCHUp+c7PfXc9UBIiztu1J8
         XJoJHTalMFe7ufMuJJXTCId7J7d7KJXBHCwuidtKB9mEKDUZfHxpZmJ7gBWRsQoL4WuK
         38wPjuWSUVhgydfhODf7+SWceAj4ncKzOh1YMxlS1Eh7oIEjnXPE+NycVho9pUyCIjMd
         CjGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=nzi7xWLdfghzuKlPhpYv3xJPOu6ORGtJImuQD6MMzjE=;
        b=vwIleF4z5xZkwskPoADMsoEu8Gf+c+EPElckwMfQ7Wx5W13b4aJBDduF3M6o9meMad
         NmeoBPIB9eLXFLr90pj0Q/QfaWPiAgM+c1VYx9Csh9WTlRu2/aEBVxpRaW9p/e7Yk3g1
         J9hUja7beOr365t+8NP2Vgksdz5Y5LfvVgPnn0Vj/FtHgTM880iSoLBekqtS8SmVQLY1
         AVrcrsTBQwO4opxwnx0bsxPI03c1lfOth/iTjQJu6O41m/TY7xBWLYBKdHbCV3qGivHd
         +GWnZ3GTPN0PtU3e47NbSiguJjrAcuwP1LakVXZCfB3YvJS1QSTq+wA8UT8WjgMcthL6
         y/gw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ctsi6t3q;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i17si370159pjv.1.2020.06.17.18.21.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:21:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7B47421974;
	Thu, 18 Jun 2020 01:21:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 241/266] NTB: perf: Don't require one more memory window than number of peers
Date: Wed, 17 Jun 2020 21:16:06 -0400
Message-Id: <20200618011631.604574-241-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ctsi6t3q;       spf=pass
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

[ Upstream commit a9c4211ac918ade1522aced6b5acfbe824722f7d ]

ntb_perf should not require more than one memory window per peer. This
was probably an off-by-one error.

Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Allen Hubbe <allenbh@gmail.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_perf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 52c29791fc02..3817eadab2cf 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -653,7 +653,7 @@ static int perf_init_service(struct perf_ctx *perf)
 {
 	u64 mask;
 
-	if (ntb_peer_mw_count(perf->ntb) < perf->pcnt + 1) {
+	if (ntb_peer_mw_count(perf->ntb) < perf->pcnt) {
 		dev_err(&perf->ntb->dev, "Not enough memory windows\n");
 		return -EINVAL;
 	}
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618011631.604574-241-sashal%40kernel.org.

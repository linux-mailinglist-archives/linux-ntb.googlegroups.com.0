Return-Path: <linux-ntb+bncBDTZTRGMXIFBBKUDVP3QKGQESYOX2VQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1624D1FDCB9
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:21:47 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id 205sf3308909qkh.5
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:21:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443306; cv=pass;
        d=google.com; s=arc-20160816;
        b=MgXHXddxgzZmsRsdwTssEZ11BE8FuHrLgimC53erL5/lWcf90jru9JRKFF+8Ful9wU
         c0lZjmNOJyO9NHttXQulAvOeSXLNgpKOPnwIMlApOODVTit/ifOaYMKGTV/gwvOJnl0Q
         sehEu1VtOfzNd786CCtWlcpKlm0+U6JPtygHk7tRZWYO3PRBkGRCMrrI/zIAAFhOdfkw
         X8Pg7aBEoiJPDtHmvGqZ35ohwRwrCq/C8o1KDe35gtC89EMpE3Aa2XPLk7ly0EUIURku
         b+mb6ALIggdfAF4T6S03ZMjYW8M4llysaTl/KCZ1cWGHsFD+2q0kxZHbwgKwUrPFfp8L
         DQDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=HRFhbWk99WspMb9xLzuzpwzvxo0DRvgSiI5AYHn+yA8=;
        b=yt4nxrDyzJojlaGLD/3uWB9TCldSotKBij99slK/lFxikEZH6rP4cBa2yhATZ6BAnP
         ZYZ97WSSrGLuwJoOIFtyxtfi3OnukHQeyH/kOmcbUTCCXvStzT9PVja9wXCOTskaPQun
         WgIDRoGpJt0R64eFVBBfseIchi36u76cj6KNcOjGQJyZJx+hqwnsPchi0ZmqcRNheQ4W
         2lEGNTUXNB1J8ZB8wc1eyDvjKs9diYuDryIh9zIWuHVmPhPSS9R9+AU6J3EzyIvH5MMB
         2zKW3IPqewMXDDRPfJnyxlvpVxMKG2+eVozy6w82hdCza6okmccZW8W6wz7FaOgvWvk0
         ZojQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nxftcRUx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HRFhbWk99WspMb9xLzuzpwzvxo0DRvgSiI5AYHn+yA8=;
        b=YNJuX9LER4V7Eapn/AkNe2+5L9OkW3SwfQpygQ0IM1R9Dkw1MQAxud6Ae/IPNKHp74
         dSipmMylILO11qoHZ83VdgBNUNiUkinsXm4KA4wAllWvnItyDJ9zBUuzicY4QuMLYR0d
         hpbJfNnVIlswFFeTSGREtT2d7Zn4ksr9vPFX0LUdQmLjZBCs1uaSYFtJOjowsIFxIJ/9
         2jXFakr5h3M3JotMW3XFf4oD31KUFEYDrYwYmI8QzV3p19QRlk1I/Slaq9rbvSXFYDBJ
         SUkuE3m8s5ojud5E+2jwwnAsAp6R2PvK2Bkby07ws6Pu0w/ebGZTsL4gFHnxZZPyGkr5
         jPcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HRFhbWk99WspMb9xLzuzpwzvxo0DRvgSiI5AYHn+yA8=;
        b=mbp8ROWJJrXOjflNg5JxY69LM2CUfPsJKP0RQ2U2oxnXJYyglZudgzNoI6SiAk+0j/
         5bwxGEOOjRT5F1LE3u2/E+WgLqj2mfkbQJ3yW3uETCi3kMDsnzujSpJkrdUDkQqGfgJn
         ZxqV+9Ny5cre1NdDLkF/2eKmLdteEs42iGMt0C6JLjxoo0tts+O34QkGlwNszYa6PdJz
         dQxciNTUHQ0byP+kVYwpO1gBavL1Gu7OF6ngrA8a0dxv9g7dBBasGkh09U0gLwhSZsY4
         jgYl4vHbxEKZ0ki1zfB2d+II/Fy1H2aZqvQ1Ur5lEKwXN8a+QvWVfOGZyNtzJ1e0xUMP
         2FWw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5316HqanvswQpPY9u4p5RTy1y+jaEuHR1LKlMu0Jm5nWowdVegrD
	0UvVYXyrkH2gLvlLBFyPjrw=
X-Google-Smtp-Source: ABdhPJxjs0G2VahotfWwvieGO8ZSjz2svg+yeRi8ewjxxTreWxX82MrWusNu/ZyfxvOXcgfZ9HKt+Q==
X-Received: by 2002:aed:2252:: with SMTP id o18mr2141345qtc.258.1592443306147;
        Wed, 17 Jun 2020 18:21:46 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:ac7:: with SMTP id 190ls1964205qkk.0.gmail; Wed, 17 Jun
 2020 18:21:45 -0700 (PDT)
X-Received: by 2002:a05:620a:21d4:: with SMTP id h20mr1518740qka.288.1592443305877;
        Wed, 17 Jun 2020 18:21:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443305; cv=none;
        d=google.com; s=arc-20160816;
        b=xBqOyUxHEixe9cdB9Aker2rBo4SadihmTrH5m125Rahl0YScswb9IS82JNhx9b7L93
         4BqM36wsQVyao0EMG5K17KDRL+K6QFPhFM/3TREiBsx3xCt5WIO3QwZsmsUHkeTDABHu
         4uAccUr5yreqOWiceBZaLCJjw6rjH9/mhiMoxV0WBmjEVBFCcs4R9aBiTGkDGkqHbR6h
         FqwrgJAAnWsuPxTfMGrq5mt2HaLdCKo97zub3EeKXkZZiHgtZH2x2ANNVymbt9ZrQUoD
         DCkFrBWcRjYFtGpb9aHAZQq2MfxZzNlh/xON1XjJpxE4Pkz//T4QyLk/NhsMqv7jhFWY
         FK3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Qws83AWSEL0F7ggXGtgtc+hsG+cneklFpy4Z72vCOLM=;
        b=QtdGbB0d6df0CStKznJS2QFPpzy+KwzHg2jDPewnr9WTlFdHN5Xbnxpc7/dbMQa0VI
         D1R0v5/wzYN6LEfTm/IZf96Zr4t8CdW7KqdG2B28u2lKBVMb0DVwQphOlz6+niCMILYk
         XvsilTjxPIrX6lbqy5fMDtllfx2+QjNLdzOwTtvRqIofmtSPioUPduiyZq+mfinxseHR
         jaVEbO7Rl7qg76Y5z6uxcGyUoxzTx3jTraEHP2UGxnZkHKPh+uOToaFRNvyGMOD0JAEI
         psi4tNgP1tM0+6H39cvv8C8enJJGJO8Yd56gWPJoBNPQRR/+DTGH8ogDwg82D04+EENo
         szoQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=nxftcRUx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z202si48213qka.6.2020.06.17.18.21.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:21:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1F27620776;
	Thu, 18 Jun 2020 01:21:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 243/266] NTB: perf: Fix race condition when run with ntb_test
Date: Wed, 17 Jun 2020 21:16:08 -0400
Message-Id: <20200618011631.604574-243-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=nxftcRUx;       spf=pass
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

[ Upstream commit 34d8673a01b053b6231a995a4eec9341163d63be ]

When running ntb_test, the script tries to run the ntb_perf test
immediately after probing the modules. Since adding multi-port support,
this fails seeing the new initialization procedure in ntb_perf
can not complete instantly.

To fix this we add a completion which is waited on when a test is
started. In this way, run can be written any time after the module is
loaded and it will wait for the initialization to complete instead of
sending an error.

Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Allen Hubbe <allenbh@gmail.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_perf.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 281170887ad0..5ce4766a6c9e 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -158,6 +158,8 @@ struct perf_peer {
 	/* NTB connection setup service */
 	struct work_struct	service;
 	unsigned long		sts;
+
+	struct completion init_comp;
 };
 #define to_peer_service(__work) \
 	container_of(__work, struct perf_peer, service)
@@ -546,6 +548,7 @@ static int perf_setup_outbuf(struct perf_peer *peer)
 
 	/* Initialization is finally done */
 	set_bit(PERF_STS_DONE, &peer->sts);
+	complete_all(&peer->init_comp);
 
 	return 0;
 }
@@ -637,6 +640,7 @@ static void perf_service_work(struct work_struct *work)
 		perf_setup_outbuf(peer);
 
 	if (test_and_clear_bit(PERF_CMD_CLEAR, &peer->sts)) {
+		init_completion(&peer->init_comp);
 		clear_bit(PERF_STS_DONE, &peer->sts);
 		if (test_bit(0, &peer->perf->busy_flag) &&
 		    peer == peer->perf->test_peer) {
@@ -1052,8 +1056,9 @@ static int perf_submit_test(struct perf_peer *peer)
 	struct perf_thread *pthr;
 	int tidx, ret;
 
-	if (!test_bit(PERF_STS_DONE, &peer->sts))
-		return -ENOLINK;
+	ret = wait_for_completion_interruptible(&peer->init_comp);
+	if (ret < 0)
+		return ret;
 
 	if (test_and_set_bit_lock(0, &perf->busy_flag))
 		return -EBUSY;
@@ -1419,6 +1424,7 @@ static int perf_init_peers(struct perf_ctx *perf)
 			peer->gidx = pidx;
 		}
 		INIT_WORK(&peer->service, perf_service_work);
+		init_completion(&peer->init_comp);
 	}
 	if (perf->gidx == -1)
 		perf->gidx = pidx;
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618011631.604574-243-sashal%40kernel.org.

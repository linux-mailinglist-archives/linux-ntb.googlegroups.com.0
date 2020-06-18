Return-Path: <linux-ntb+bncBDTZTRGMXIFBBP4AVP3QKGQESCKJVAI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD571FDBEC
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:15:44 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id a18sf1920014oib.2
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:15:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442943; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rm35z4BKoZ898Bd6T4w9jg3ZSvIMAx5KoOdvqegcAhKQIUQ28HLSQZuy5ccAjeOcVe
         kTUE2WyqN9nCM25dY2N9p3jSzcv/cFi575xk1laoDlNNUZAIq9RF8cO88+tKUTQgKBxu
         OZ/C/bO75LzBKX37JghBajgsTmwOAffQWFMxKw9fZB+CB375N3qzJwm81ZHnnxsvPJ4V
         0QtUDLCAsMLV3LzJ0PWbY1oT7fWQzVY4HNj4TMBKxZnR9IdrjfaeC1/x0DxvkPBlXW+g
         q9pWGQYSx6MkE0uta0xXqjObpRvP4/8G4ObjLr13MEfSMfcrulxU7GtFRENCt7UB5rEd
         Q/2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=OXTzvqvaAMs4gHzRm87hGgCIoULb3L0P/pb7MHcLz4U=;
        b=zRdqooiiUZrV2TO0bz8/dm9X03VfGmQ9WTCuMAqK787LXcpeYF8LVdQiSCz/VzVhWz
         9vFWX3O3rPVbMiMcMAzP15TyEV2j9SWyQbxUqK9w/FMpsBrIK6pNWKYFc3K3wM5QJD//
         g1Ur8fifaT1nTuHL7DUEQ+Ai09ba+AXQZqvay/ZCnFVm/55o5qhN4XO5j9JP8gMORyzg
         DebDLWmv32zFZzqnGTeZIL2FLc1tavzaufFNXYegi45L3NgQ3Gc16U+VgLscJ7vFffRs
         tbMBn5eBYs1HhFkR7vMsw6jGquGS9h+iD/eDWfDqu8ra9N0xkW/ulkPTfn59wfOlNN4T
         Yoww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u+AJcvb3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OXTzvqvaAMs4gHzRm87hGgCIoULb3L0P/pb7MHcLz4U=;
        b=oYMP40iAFumXMUvsbyGhVL69wcG9d0v9BN/lmgMp6xlMFRhLVKGpVYjQQrc31YUsKe
         y0fmp7u+vqHv/yx/692LmK1NaCSJrADHHqI+IIiWiVNKO+FP63Jb76J3IHjl7wgbPG8U
         V+qhtRcXp+gcvstYYBNiV73OkgsjGSnDbAnVJJvWwlAVONpmiA6tnH14x+nvJYRwY0I5
         ZlWnFQc6AmWBtG3YNXcyt8UCxzb3g+r6Hl9g+8gL6zGO+yHpDz11uBKPmrr0r2XjyJd3
         COtfllzW8PD4vEKfPQUVjtMAwagb07y5RExNecwJTfOSNI8+GuXkvhkUJaLTvjiOn8Bi
         bnxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OXTzvqvaAMs4gHzRm87hGgCIoULb3L0P/pb7MHcLz4U=;
        b=r2bh/BO3yAg1R7EzDiOxByVx2gpWSPhFQZSrceEVCa+JWwH5MNCBAGZi4YYpErTSrG
         srBsJo0AzAnBlfA7igZmT13a8VrtHPvGpNNNAkeakicef81BXvy7sQdbNGNMEckeNKoR
         dNT6gx8Uk2DF6qhAsjPOzn1l4VNwdedtjqiuafdF2jiVTjU/Iigc0o/hpsVAm7f3S01q
         hq07NmVT0KqCuI6KmwLSoQW/i0aUztudHndt02d6gcAksrfwdP2h1bQa0faI4of0mddb
         yY3+l3THmGe8bC+cpvo4RnkodNYN+fkh+PzgUHcWoDqr1SGJ9V5AMbTQJ0j2QnIqDMwg
         pYRg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533wt2iztBoDBruPB5nAZGxKIo8OhuYaNxNB+b51LAecX7xBN91Z
	oZb6pjgUiXAO/wOO1NWTFA8=
X-Google-Smtp-Source: ABdhPJw4cICVxOg8cvBMCgK3FUMRzI7WUoFvA1F/3kNOfPG1TyIyHnPIomiNgp74Tv0QCbeRbxqG2w==
X-Received: by 2002:aca:eb97:: with SMTP id j145mr699590oih.0.1592442943524;
        Wed, 17 Jun 2020 18:15:43 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:3851:: with SMTP id o17ls250271oof.0.gmail; Wed, 17 Jun
 2020 18:15:43 -0700 (PDT)
X-Received: by 2002:a4a:d292:: with SMTP id h18mr2012617oos.80.1592442943231;
        Wed, 17 Jun 2020 18:15:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442943; cv=none;
        d=google.com; s=arc-20160816;
        b=SUjHKI9ocBS3TV9rOFzDaKaIYy1MqvIWcMp7T6L/RfKR2HEBfAhqkVRXceszZvV1Eq
         KxITUI4kHWk7Qy2/3TWp8oLmTgpDB/XUfYkhr0mya0IR4Ygtavl4twlve48cWOMRmVMt
         rPGyFJbPdC+A1zNE3f5Ro9jqvj3L+aGSWvWEFdFSNUULKH3XWRuF0pHomKjFV0IJvlKK
         I1L/1+BvVWcEDUgsg7HHHeUA/teITXiXx7V34D9z4chVxvryrlp6NZXL9dWLZs45w4Ma
         BXhCR3j2FPbshNTjFbNOjdBllWGDdH/gAzYD/Rj3XG0A3xvD/78JhERVom8hGKvsDRME
         8wPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=b0N2/JqRUoVCkOUNKOJnY+iSI5IT8YjKG5cKcx2FUaw=;
        b=QtX75GtCgMCQoGcK613GZTud6p4vt+ydghoNDwcjimbiklPC5tT6M80y7JtpLZvtAK
         jfPn+ifhUF25G5Nu20td24HxJ9jtxS2GB+TlveyzZP1lOZGV0fz7k1FUH7mNN5stQ9jd
         1iazOIBwY4BZ+A+h/+bxmk193CAKI/Od/rYX7nASoE0wLGJQWGfknies/UdDvViD+c2P
         wly3vkXKjeY3NLtcuymv4TB0an4wl9w3y6LqW7VrKpl82fGIjMUZx4exg/b5znu4ivfk
         bXBtXmuB3/9r6QKfwY9SMJGaSzETaVgB3/KHhBjzBoQ/AXsNiVq4BqSXuwAhiTvUIMZ4
         cpEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u+AJcvb3;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c22si152180oto.3.2020.06.17.18.15.43
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:15:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AAE5321D79;
	Thu, 18 Jun 2020 01:15:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 353/388] NTB: perf: Fix race condition when run with ntb_test
Date: Wed, 17 Jun 2020 21:07:30 -0400
Message-Id: <20200618010805.600873-353-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=u+AJcvb3;       spf=pass
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
index 0b1eae07b133..528751803419 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -159,6 +159,8 @@ struct perf_peer {
 	/* NTB connection setup service */
 	struct work_struct	service;
 	unsigned long		sts;
+
+	struct completion init_comp;
 };
 #define to_peer_service(__work) \
 	container_of(__work, struct perf_peer, service)
@@ -547,6 +549,7 @@ static int perf_setup_outbuf(struct perf_peer *peer)
 
 	/* Initialization is finally done */
 	set_bit(PERF_STS_DONE, &peer->sts);
+	complete_all(&peer->init_comp);
 
 	return 0;
 }
@@ -638,6 +641,7 @@ static void perf_service_work(struct work_struct *work)
 		perf_setup_outbuf(peer);
 
 	if (test_and_clear_bit(PERF_CMD_CLEAR, &peer->sts)) {
+		init_completion(&peer->init_comp);
 		clear_bit(PERF_STS_DONE, &peer->sts);
 		if (test_bit(0, &peer->perf->busy_flag) &&
 		    peer == peer->perf->test_peer) {
@@ -1084,8 +1088,9 @@ static int perf_submit_test(struct perf_peer *peer)
 	struct perf_thread *pthr;
 	int tidx, ret;
 
-	if (!test_bit(PERF_STS_DONE, &peer->sts))
-		return -ENOLINK;
+	ret = wait_for_completion_interruptible(&peer->init_comp);
+	if (ret < 0)
+		return ret;
 
 	if (test_and_set_bit_lock(0, &perf->busy_flag))
 		return -EBUSY;
@@ -1456,6 +1461,7 @@ static int perf_init_peers(struct perf_ctx *perf)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618010805.600873-353-sashal%40kernel.org.

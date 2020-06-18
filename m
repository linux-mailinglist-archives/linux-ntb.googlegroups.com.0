Return-Path: <linux-ntb+bncBDTZTRGMXIFBBF4FVP3QKGQECYENFQI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E0EC1FDD44
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:25:44 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id g3sf3129827ioc.20
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:25:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443543; cv=pass;
        d=google.com; s=arc-20160816;
        b=0Q6S8jCZuZncTZR8/A6wMOseUde8Ib/EEEc6dlBhmtWug3yHa41Z05qO3E0AWnVtrY
         2j5jdSG0Qde1tkd5M2rYqnb3CjNmIKUWuX2WqPrWSDXNqHcjgZvxqukeGBK62ivmW+Vc
         SoL3S0BQKiqmbrBZ1ko7obtvTYlfmFdD33q241I+LgB7q7AV8cqY5Ya+xva0eZT9DB+j
         DthTKmO8zu7ZvcJ6t51flCeaP+CNSj4JKmTM8mXBIUscyfO81dG0lln9lZnmQQECJ7vm
         4MqU5u177TCMCSfdNWTZYqg65r+z2+YFQjG96dIz3nyd4MvxzRN37D1gj/Ja/xpwc8Ce
         mBKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=EYsKLqpMgc+4O8fcSb/C4QPy4VQ1qQ1FjfXpJMVQly0=;
        b=QVfLWLWEgTVtFTTAp7h9MlHsYcQDRXWiMoqyyorq6KN0tSSWAKnKuFPiKRlTjXSo4A
         8Z1SuUNKV9l+dCATa20AsmKvWfCdnD3byCSO7wTJgE94bUPk52Sm2WzSzy/eNFkVfmbJ
         eGJPpImf3C/ypp0EjZudIg1qF8iInhreWEos2LQv8gLX6YvQ3C5GO0ixpAsIeoLCXPXW
         Wjy8mUbnkqFVpAT2oB6yau6f/5KqLSVBxxkHRdLAiEEZsjmsXjv8A3JIbr5GePxMbFDi
         V5moxPfgUZr/KOBUtIy2Sir366p5V/s/IwvJMmiJbD3r3IiAWmz56PiKHgQxBwTby1cM
         ZxSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xf+tSSzL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EYsKLqpMgc+4O8fcSb/C4QPy4VQ1qQ1FjfXpJMVQly0=;
        b=SySE/NftVXsZ1mxRjhXv75DwHOzgvz/IhIxkObvyQ7ZLd721ec9D3GIr/+lunqQI7b
         spT/dOqsRVTOhfE+v+w7lcriNj9THxBAXjUm2CSa0fxRRZwFaOMb68jd17AhuZ/A3aTg
         tXsD4eONA7Mj7fjAqguJATxq6qgzxZ7X8z2ojjYs5k6Y63X2zyUHD0I0LRJ9GjcZMOWC
         6Dq1ZXc2N4Oz5FcQxxvNzLet8GXB9dCw7y4KcHZYMFB4IXKHJLzDzR7XbuYMUJ+N048T
         E4EO7SyW4h1y8lZte6ZuAAt+HGeGaSBY/Ncf14cKKEDnv/TbjaizlhhBRKZiWGbshJK7
         xcBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EYsKLqpMgc+4O8fcSb/C4QPy4VQ1qQ1FjfXpJMVQly0=;
        b=uBa+6NLwueg4TIjPfSyu5tlujRni7FYPgjuUnaZxuXIq9dcY+b0+Qca8KpGOHeM6+T
         bQ6ZxOShs+48KXfkgbc8BnAHeqsvn6Bwkm3ZwsOfAkgq6305+l4ikgr/pdaFMNaBOoNQ
         2MGdJ64WZ+BU9Yc6gwfuVkfJQ2+mZXnE85g5R2G9zF1KjFCWElqQBwNZV8YdC/Sv7kng
         h+naIU4CyUgHTQt1qNwLr+lnFDaiaI1/Ml+uTthomo+9fMX1YEG+iuJjoWM2NN+idZsO
         8YysEeFlBzHBtDtgnNRFsIuCskxuQejNytNFKmajT/dpNihp1jq44MIwzTf/2JNu4KRy
         vkLQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533theucZ3ISSnm0TTeY14FBTEsyO+t8GvZveg5GO6Zl2cdRqvK6
	r5ViK6f7rTSuuXqaYkqOWX8=
X-Google-Smtp-Source: ABdhPJyD+cOiTNQCkV8Pu7KFHayOzPQ5b7PnZE+n5NVqaYMovMYMCZgQ71lX1EG80HAvgJ6xbz2u2Q==
X-Received: by 2002:a5d:860a:: with SMTP id f10mr2463903iol.11.1592443543406;
        Wed, 17 Jun 2020 18:25:43 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a02:ba8c:: with SMTP id g12ls522383jao.6.gmail; Wed, 17 Jun
 2020 18:25:43 -0700 (PDT)
X-Received: by 2002:a02:cce1:: with SMTP id l1mr2032994jaq.89.1592443543064;
        Wed, 17 Jun 2020 18:25:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443543; cv=none;
        d=google.com; s=arc-20160816;
        b=TFBIq0ImRVFlYgA4HZ2CpdyDWbbeaHVWDnBOEbWbXh4vqTRL/etTtXGHUrlAfafQu+
         OS6JF4sZmCCgdbhrP8MKftTmBUBhRH7G/7y855o6f/y90JUMR2WuMkSY0h9sNPY2ceas
         h9REqvXM67AujMCW+IFg2fDnnr1yD4LBQH9t1/BQ+JXDbWW71SsfmLJOmPqoe9B0b997
         pFjWAyVoBqJV9uqNaPMHM4Voz1ldOaU/xC6EKqEegjlIRd8ct3t6aUqETJGp7mbeUAOQ
         IXSZBld83cRt/4Z+uiWpTbFR8oBHUvLnUJCrOnlrW/80ekPGBCrPP0oW8QWmAy2Vil4A
         kj3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zUewq+c5LXl5bUsajW3d2n5Zj0K9RWZ2PnUAuwKZkcY=;
        b=zm5Kg85TVRACOcF2K6H1vFvNc1WgEjIEPaugrq4JhJU/dOf1lwq3LT6rTjJMupQs90
         dJ0npHCoXPMa2h8dJHdz4mMQM8bx9Nt03Lh4CWka0xflRpS9h4hbWTYkuiTM5oCNxXBK
         b2Noxqn+yeUCmmurbMtUCi8cE7Tr55+Le1IRAR9zf6A8pFAKEmj0sHxU3UeKhnNBhf8K
         lf/nM9hW8M2VsBtLRp9V8oFIsxKMUghiV1UF/C8h7oji9bVyDXEWnCEA0Pd8Ci4EFuKI
         l15Dm75GqpQ/av4aVz7YcMZLyaSamlUzEs5N2C9HOFdanhOwHgzqECRuzTPTpRjFqCi2
         7woA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Xf+tSSzL;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b1si56302ilq.4.2020.06.17.18.25.42
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 967D12083B;
	Thu, 18 Jun 2020 01:25:41 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 159/172] NTB: perf: Fix race condition when run with ntb_test
Date: Wed, 17 Jun 2020 21:22:05 -0400
Message-Id: <20200618012218.607130-159-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Xf+tSSzL;       spf=pass
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
index 62a9a1d44f9f..ad5d3919435c 100644
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
@@ -549,6 +551,7 @@ static int perf_setup_outbuf(struct perf_peer *peer)
 
 	/* Initialization is finally done */
 	set_bit(PERF_STS_DONE, &peer->sts);
+	complete_all(&peer->init_comp);
 
 	return 0;
 }
@@ -640,6 +643,7 @@ static void perf_service_work(struct work_struct *work)
 		perf_setup_outbuf(peer);
 
 	if (test_and_clear_bit(PERF_CMD_CLEAR, &peer->sts)) {
+		init_completion(&peer->init_comp);
 		clear_bit(PERF_STS_DONE, &peer->sts);
 		if (test_bit(0, &peer->perf->busy_flag) &&
 		    peer == peer->perf->test_peer) {
@@ -1047,8 +1051,9 @@ static int perf_submit_test(struct perf_peer *peer)
 	struct perf_thread *pthr;
 	int tidx, ret;
 
-	if (!test_bit(PERF_STS_DONE, &peer->sts))
-		return -ENOLINK;
+	ret = wait_for_completion_interruptible(&peer->init_comp);
+	if (ret < 0)
+		return ret;
 
 	if (test_and_set_bit_lock(0, &perf->busy_flag))
 		return -EBUSY;
@@ -1414,6 +1419,7 @@ static int perf_init_peers(struct perf_ctx *perf)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012218.607130-159-sashal%40kernel.org.

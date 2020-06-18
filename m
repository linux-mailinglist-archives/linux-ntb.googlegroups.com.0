Return-Path: <linux-ntb+bncBDTZTRGMXIFBBPMAVP3QKGQEDTAYEOA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D34D1FDBEB
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:15:43 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id 59sf2753426pla.12
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:15:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442942; cv=pass;
        d=google.com; s=arc-20160816;
        b=ngRq/q/4yQMC6A3ypXPq3+xIdlhg5ak3/s0HTqqBhS5TheuevSpuOc8dwyr/Owex8I
         u2yZi415AojF+usencElQiicc9nS9//8Ba8Np5uM4G8QAOuZgN4HNx2gRoMaeqJ8pGEu
         FzUg3TKJUrV9W6MKuZPzgyhRk6hFktLJtwBOO2Ir7V5G+KXraw8zW2xFvES+ucxAvrv2
         dssHls16RV/7skHWokKzdjbtHRuARnfbhxmymmIcQDAGFqoJw0VYsuzKPOknB5o9UzWT
         FxDmq6vV3uqr1NV42m2TuC/nRDQ3rsKnUGC60KzEY2M/y8ygwNWll7fUmY1EeINiE2Lu
         oRPg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=c0d39TKqVSFi8aQ0X9SZZNcWNf9Y4b+THpkdiTHj2k0=;
        b=q8XXD2j9X3ZfHJd4kQ1ImROqXXF9A8RftlF6vvGVyDzhBlqEL/FxARu0NHfthH5eCA
         PX7u/WtcP0/WZ/Hv7wi9uDmah9fBpEDkp13nAOiWxxO79aAJr1UHl65jAp008VGO1Fqo
         iK5LP8yjKP3kej2nQ5PfOFeFYjBydL+RBFZ7wPFDwdwx69gdAvMV5vQ37sbNIpr0IFuu
         ABAfDgpQru9iRoA3TUZ10XDyXSND9xIXiXOiXn97cNcSAkJvf61s+H05TTKwhEW3wCTI
         EJsBoXNOOeZZIYJGPUieRI9jd8ROTzruIBbrHjFfuh5HKWA3Gi6/wGKlOnZOzsnEfnSY
         3uXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="NwvAD6k/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c0d39TKqVSFi8aQ0X9SZZNcWNf9Y4b+THpkdiTHj2k0=;
        b=jdTNx1C26GvvBdpzOJNafK9WOHygVDjP+mRreBJLXXpMKG2k9G/3/oVyXxCLDoSwx4
         TPzM8NQA+XC0NzDsM5QSfwmp+RehYnC66fUMN76NeitUOAyXX7sQTBt5e+F7VZbAK6yU
         bBO2s/oWvM+di7BBbiG7Tv1JBQjs6nbUpTgZ3HqllMo4VzDSIZS7MWyr4xLDDbvmNCzv
         AuR23rfjCseuCgkdvbb8H7xkTb7Ck9eahvZPX/u6Q9li1wwv6Dpvnk2+8lCDvgcJ3KUm
         G98VW6QmKvbJ3/ta80c1PGDTGlVx4MBmi4fMWmujXuzO/gjxTxLTJmwyX3igyxEwqece
         vp0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c0d39TKqVSFi8aQ0X9SZZNcWNf9Y4b+THpkdiTHj2k0=;
        b=ZSmHJh/cLeKBjtD34xYqS55Kp0zhHSQCxqEFxzB4wwoQXLNiymOE0D3sO+ocQa92jR
         lYg0Wxm+4aTF8T25mX0ns1qqavKQQjIjUYfbzU23DlOlIqQBb1xUhK65sF+h+ViVCpKE
         z/N7alsyjRv4n9qVzpbLNVxRJR0Q9J0kBoP4dyKsZZ98htb3pppXCspmSY3kOG+WQLbU
         qHzBcH6zj/W2X2h5SFTKT8eilvmnY1Ar5mGz8wA1OQpIHMzgnIcTOguC0vBxCTqbkB79
         CGxkDW+2Dt7XfqOMsD/ef42ueG1yRn63yqX+nhA3VofezxGctT7y9S74t/ufo6eI/4Zh
         700A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533pn3CetXpJHs3+wBdSFFydSRMCNGIVa0HM/Z9SOnwEwa8JnLCd
	QoX1qfJXIYwri/8UUYd87U4=
X-Google-Smtp-Source: ABdhPJzlGWiSO/gxtIhmOqRFMiVHoVa+LO7+tUtUmxkiI6wRLfFeJN9oXwfFGlbnhI9JIyGt02IUnA==
X-Received: by 2002:a62:1b82:: with SMTP id b124mr1372841pfb.172.1592442941991;
        Wed, 17 Jun 2020 18:15:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:3322:: with SMTP id m31ls1603171pjb.3.canary-gmail;
 Wed, 17 Jun 2020 18:15:41 -0700 (PDT)
X-Received: by 2002:a17:902:b107:: with SMTP id q7mr1661464plr.266.1592442941471;
        Wed, 17 Jun 2020 18:15:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442941; cv=none;
        d=google.com; s=arc-20160816;
        b=QGcCBlU+aXaNeOOh1IP2/qXytRtc1+TpreXc7hf4qgrN+hlZMVlHNW5XZr7/BHmcik
         2XgX69pI54w3Q7T5DJe4OO5ACDjSY7G7hQVFllq5GUdtRhK1LRs32gpZvTCLv0rcPrpx
         l5+xowAhG7i4cbNADSl6/AMeEbz4HU+tvnLa01O3WfHaFuvqUbaK1VzPa9Tb69DrY334
         /hFfHleltGmlpNYfTGpi4J9CpV9ZH3MKMvKhiw2+WPIzwkD68S20xdhE8xAavNpw0/KL
         cWUTFCBGK11eB6pBT3Xebzn/KSEDOK80kVtbW2uAW57aN1GUvXPstmOmfnvMK6UfrpHZ
         1D2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=EnWWaJtFAfxdrBj2wSeEzKYxjz3r5lVv/BB+T2wlJmc=;
        b=kVpKOhjllafTBox91wy/mFu9hSVMJ+boiLG49TVh0LtZ2K8WpatyTkg6MLMCMvuaNc
         lgd6EMyPS/W/UmB2hc9ppSngw1VIYXSpw3OkzeV3zvKVeBHes9YFVj7BwD4OS4L8sDjZ
         l5jMdpjJe1DsLMbfMq3KMcSvPYZeu6n7VJG2CSnsis6MQrTEiUNQw9hsZNXswioyIRJs
         hyBROZnpkZs9BDD8syLVZbWrXX2AFNQjs6urdOaa09JpZDAWeEsinBeb7bk/TsQMZ4jg
         NfDqtEi3cpBsXV9y6XKz18tFbt9OFKi3bqIWiByiU2Og7EMSK9tMwzvtX/SUkDp4jn+J
         T7tA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="NwvAD6k/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x132si121790pgx.4.2020.06.17.18.15.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:15:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5FBC021D80;
	Thu, 18 Jun 2020 01:15:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 352/388] NTB: perf: Fix support for hardware that doesn't have port numbers
Date: Wed, 17 Jun 2020 21:07:29 -0400
Message-Id: <20200618010805.600873-352-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="NwvAD6k/";       spf=pass
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

[ Upstream commit b54369a248c2e033bfcf5d6917e08cf9d73d54a6 ]

Legacy drivers do not have port numbers (but is reliably only two ports)
and was broken by the recent commit that added mult-port support to
ntb_perf. This is especially important to support the cross link
topology which is perfectly symmetric and cannot assign unique port
numbers easily.

Hardware that returns zero for both the local port and the peer should
just always use gidx=0 for the only peer.

Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Allen Hubbe <allenbh@gmail.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_perf.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 21c8a3bac1e0..0b1eae07b133 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -1460,6 +1460,16 @@ static int perf_init_peers(struct perf_ctx *perf)
 	if (perf->gidx == -1)
 		perf->gidx = pidx;
 
+	/*
+	 * Hardware with only two ports may not have unique port
+	 * numbers. In this case, the gidxs should all be zero.
+	 */
+	if (perf->pcnt == 1 &&  ntb_port_number(perf->ntb) == 0 &&
+	    ntb_peer_port_number(perf->ntb, 0) == 0) {
+		perf->gidx = 0;
+		perf->peers[0].gidx = 0;
+	}
+
 	for (pidx = 0; pidx < perf->pcnt; pidx++) {
 		ret = perf_setup_peer_mw(&perf->peers[pidx]);
 		if (ret)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618010805.600873-352-sashal%40kernel.org.

Return-Path: <linux-ntb+bncBDTZTRGMXIFBBFUFVP3QKGQEHYFU26I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id 440641FDD43
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:25:43 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id d14sf1458015uam.9
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:25:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443542; cv=pass;
        d=google.com; s=arc-20160816;
        b=0K6XUIrKgVQNGj/bHbN4sz//icH66D5qHD4f4lX7bh8AhMDvJR3eCX4TfHCFayPMAX
         BjauPffzufF41kDMEeRuuRxoHpFt7rNm6tp25goW+9sKwisOPglogNNaWM7cIYai4Ey6
         muV2snBVD5p0hAIJtwRcuKV6KZiMLXuHlkwiDUxgAOf9OjxWgWTB5nT4nhxUZMf5QJ14
         +vVQ0tf5E3BHLwr3OgbaGrIPMILwDVQPEd3DOlPDZjXQM44GXcSiVVMy2fB2hwAAdTWN
         GgqAzpxCzz6Fetu+BHhd/CirlbE8Ix3Z5/TnaUxNH9i7F0orxde/SS9/oD+aoTVD9mcp
         A6yQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=MYHtbLzeePHIbtAPl+u/WDgExbESPG+HaVw7vPa8qXw=;
        b=eeP7dWDLI7R4wqqWIBUkgSfSpYkKFJuDZDHIlBz2GxmA6TkQbFcrAJAtGodK0rIJVD
         5QI4LKMiGx+zqmOb6pXgPrEnkc2rmenTyE5EtoV3InFBD+whXk1TEr7VMGO3YP2FNdoV
         p/+OgL1mmnkkQvG59bv1l+Uc4tgsgtIxUG6TS6YIIvrrXx1tAdXWvhyjrKIlXLqpz0PC
         u26cBYLurBrnL5024B0EJtm7sI+ZLKhKhfbZY7vshmvCPsTCtBrIMNh5UVYMglEOLXaX
         vH9Q/KOFhVqJ06XjFLzjyVk+yUhsUy4Os3QDLhOaCT8dCBBfFt+FKu4nH3VbFFGwBJTs
         ImVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xpnFIAbT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MYHtbLzeePHIbtAPl+u/WDgExbESPG+HaVw7vPa8qXw=;
        b=rPYAf+GwZqtdO1zu/R3CVrKW8VinwYjKLs4NI7dQkjMC5HoiEem3zjWjzrShiVqWC2
         HRllZUehrxWPujeJOe0Dcu2/I+LydB2P6XSluQIS0umdI2WCk1KlgG0Y9Tgt6K3p6rRG
         L23GuXB5SefYvGFR4kG/QdvJ4UtYnbL0rt88O6WghNNGeEKtKfC95G0vG/ujKLAuvwPQ
         WA7dQgamCjn74cmCOyHNfgni/zBvkCYLo2aJM8rvYyT+tic4r8ecPoThSppYI56FY8xJ
         7hQx1+/YkxynJSo9Lys/QLLdc5Z0wk2xPKA2ksL2K9LWYxp51scDouoojU6LDj48bfUz
         JlaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MYHtbLzeePHIbtAPl+u/WDgExbESPG+HaVw7vPa8qXw=;
        b=mIKGdMkFRQ7lzILQmadYkbYtGwckXBuuFT8UlfFPWGXT1IKnF8heINFkQtovXv4C5u
         DVSuJt6bG2bkk1HkXCzZ2eQoD73NGjpZIzRtOyayDe92XpOIn0LQMVmlRG69ukEHmJd/
         FVvgIaeYxzzO8mVNFbwJVimKf8DnDuLphLeKO5gB98pNKXf5bMrbl3eO1fyy+tLLYXiZ
         jvaqjJG+OUWJzdjaZV1uZiH2OQXRnfe5PBsKME/dvhEwG/m1rMTHqnypNCGtwRZ3JLJi
         WM3sPAAtwDtPLZpvC5tEy047UK5fN1It0qNGkBbQHjQhwPquZIteBCKkVqCmnyM48RDD
         O3PA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5322YES/QIxglSE5cLsbwlSEshsbcuvsBhLZSImMOjtmJ37+dfwn
	VBV93d2dbNItkpt7MPhYsGI=
X-Google-Smtp-Source: ABdhPJwCwlVCk86bXlCZTQB1GUxvy9IhoBVcf98kqczsPxOsEfnP4azAj5E1tK9w7A2I8GTUEqdm+w==
X-Received: by 2002:a67:7c94:: with SMTP id x142mr1673346vsc.192.1592443542321;
        Wed, 17 Jun 2020 18:25:42 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:7001:: with SMTP id l1ls529579vsc.0.gmail; Wed, 17 Jun
 2020 18:25:42 -0700 (PDT)
X-Received: by 2002:a67:8c09:: with SMTP id o9mr1697206vsd.23.1592443542007;
        Wed, 17 Jun 2020 18:25:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443542; cv=none;
        d=google.com; s=arc-20160816;
        b=cgL4KNwuF9oa7dfjXBGU+2Ff+7CQmgg5/p5u08O0YvcPej8vYULLxlAKZ7m5diniF9
         DuwuiRCdaKgevdFcbeQQI0OkbioEkg1KuIbwhbcv64ASUnrbveR8LxB9F397NJEMoI9m
         O6tqAHT5WTIgaRRV1G4NgedwlumvOgDHKRnLlDqbtWMPXKUvMLWJq1q+724arHbLFrL2
         5VViXipw+3N/NIT6o2QNFq+PUmdSDEgNoqxTNtfs9BaoUJwuu0vS4Kafr7aQsdKDBWLZ
         FyKNRaE7588j48VR4UYYSf27DCdwQkM/ZmD0Z4qEQ//3O6FqG8TCMy3c3XNgwSqTm5i8
         jLng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ln7MgM3lw3YjOGUeErOnEy8CRcxxaPp/jMzJumLqkwk=;
        b=Cg8/1H7w8jq9J91SFzNSYFc4PPWeYbnnWBubojB0ClLebv0mz5zoNsjO/bIJbDZICR
         AYCfLLdw6zFuuy4Y/EfYd+cecEONsyagkEOPPng+jGRpypFr1J3ewJY+sOWLg4UyZcHV
         7Xkpd1RvnxnXe6Z1N6MfE08X795YuC2cOuSRAyIh/kNU5WeXDeclNLk6Dlvgpry3nhRO
         6QmTr+NHOkzhBHMFgY3Y7SlOV00bxoUdRN1ii22hGV6WOC+GlJuSuyzvfBI9DojMz7Xh
         7vbc4dlsl49BY7Du24bRUuSSRrFHW1goiDuH2qjVp4A0XorgGRv165TGJfWbIzTl9uKh
         PkVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=xpnFIAbT;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i11si141682vkk.2.2020.06.17.18.25.41
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4C2B020897;
	Thu, 18 Jun 2020 01:25:40 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 158/172] NTB: perf: Fix support for hardware that doesn't have port numbers
Date: Wed, 17 Jun 2020 21:22:04 -0400
Message-Id: <20200618012218.607130-158-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=xpnFIAbT;       spf=pass
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
index 28d288ff3bae..62a9a1d44f9f 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -1418,6 +1418,16 @@ static int perf_init_peers(struct perf_ctx *perf)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012218.607130-158-sashal%40kernel.org.

Return-Path: <linux-ntb+bncBDTZTRGMXIFBBFMFVP3QKGQETNU67XI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB1B1FDD42
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:25:42 +0200 (CEST)
Received: by mail-ua1-x93e.google.com with SMTP id e23sf1445303uan.18
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:25:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443541; cv=pass;
        d=google.com; s=arc-20160816;
        b=xaWzKFgQcbBdeaYyvp1RMHEfC4QN6P50T+rHZYM2w6P34Cw4qNtnPPL1EeJctM1euf
         OhGoSjPqpg0Y8orWAhxN5maRYCKFQbjNx6kexnsVu8f4ABNmXCJb63RyLZJOCGvuxVxf
         jsm8E3CfveD6/CqnlJ5X2PpzlUkYFxdCoWJTA9zNvG36McXWev+DVY63ytXFyHneA3gR
         YXCMkWh86sPHD0J2mimqQGIUPH+kItGdDlTgI2HqZwdityfJUX62L33ywr+FKl0Uqn2d
         2NvjAlIVh7tDhr5e0SSmgWn0H0uioVFk07dSNTTUUOJpiq2w7y1XpE3vV6Krx4Em8gxE
         55Mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=4cTz9a0sghbqnZOshfpDFSZ/a4lG2Ui8Vzz1aGIHpDc=;
        b=FCuOTZk+E9PfSdL2G2RxmKmGT8Rllr+K5RNcx7aN0J6qEmRrmOCMzZmM3JXkKzPTYa
         ES5yyMBa2OtJt8ZsZfV/gvlZPEgqE4AuTFjhvxtr8rr6xo4llO8CiLjAyuXvBygVfRdA
         AiRBgSLwmO6p+eExC55KP9gPLDfzIafhUmlUUB8jywVLwD0B8ktz005au6NK/vJq0Jds
         gd4lymPgk73ZhAfUyuKrJw53xgwJHlwHEogJC8ApS/FbqHnaqGquNiN667Hw1wBDeoF0
         NBYTK6+Tm804QU+OnUIHcbRyMbSPD4S98G4o6k4DiiVejaEA40OHvpjwQHTBZIeMufcR
         j70w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IQZyZdsr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4cTz9a0sghbqnZOshfpDFSZ/a4lG2Ui8Vzz1aGIHpDc=;
        b=fcIi5QOOu6lchxD0YYjTOj7LY7itQkWLo+TvouczJtNep3P7+tmtgce6RlJ6YdBdng
         lIztWZUPUvVjEQKKHyz2crDnVbh8tIfI+NHwAPjHgPLD67z42bfqief6T8gwCsHFlDua
         8m4yvGBKz+ZaUGsfsqauo+WEuDWZT+NnJaEmtrTiNmjNFabzJSkaPf1nbuwzeCzDsv89
         BfYHV9fekbKlyT5XVflRh/WrcV6yedHOmaKK0Ct3ukLDYbgOxLa2WDGp3eu/WUbzZpm+
         AfII5fcsZAoWJRNW831zPRlG1ahAjUsEt0bp4+hrJjNSF1Bi3bhjGgeUB069wxbU+3KN
         Ki9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4cTz9a0sghbqnZOshfpDFSZ/a4lG2Ui8Vzz1aGIHpDc=;
        b=mIaSy6geTVqMiVJDmIBgpEa1RtWia33jOMAvmNiEjUm5gXDYdQiur0te7q95W7oLHg
         VGWE1W6DGN9Kp1LrxTADj80lQOYlYsC6KKzmXVabFUzJagQqrRyxjkOY6FImJfurFcvk
         xvzFUsDKQ9lVu/qCwYES6yIeNLG1BKcsbELhyhQhVKZA/+cMSaWG1mj9M+hUQRdzbal1
         0hNmWk3QJSdbF5NexzpShth3VzkwmKXP2xSvqCefqbKpxfMwFnGqorQWuCE/sRgQvyd8
         K9UgXROvvAYZnk0zVT5npR4wdR+q8XLYLf5i1AK+G0AZHDkW4FLVUQmfguqVTZlqTdcY
         WFTw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530hj82vxNT3jaW4w2oL8hhXLZlJpooV+TlJ4V4IZr9XcZD6MM99
	ddNmTYWjb7Z1pDt5DSQDrM8=
X-Google-Smtp-Source: ABdhPJz0EqEHX2L7xrlSP8RLMfxfBRrGbNUwBRnXjAQcZ5FAod6jsEmHD+rrznxCXZrxS+SAVbRDUA==
X-Received: by 2002:a67:d612:: with SMTP id n18mr1672984vsj.67.1592443541179;
        Wed, 17 Jun 2020 18:25:41 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:e417:: with SMTP id d23ls524243vsf.8.gmail; Wed, 17 Jun
 2020 18:25:40 -0700 (PDT)
X-Received: by 2002:a67:fb49:: with SMTP id e9mr1552329vsr.231.1592443540821;
        Wed, 17 Jun 2020 18:25:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443540; cv=none;
        d=google.com; s=arc-20160816;
        b=FzeQdkwi4KVJFNx4Kgpv8LS90g4SSQOKiI4WP0cqsd6taKhfgpHmxj3s0hwJSPqCjo
         taaHmPjytOJE0FoMIjbucHXqb5jCK5u9TCiaq9SJjlwJDhX5rH9fk1xJ77X/avmVHXdT
         mzXIq+rZ62eaPQYBloAdRuJpF+JIN45CUzP0TIM3Q+/NwruOhmtm33wWH9gn0uo8jYxO
         0kVhIFFDM0Ec6aOpswBiPMm68ALSyfq+uYDpLqhv0BS/K24GfdMPTjMzk/w6YMx0EFcA
         9ZOw67vrVnSw0pUbr5wrwo7ASH0wY9LWKEDsz8gc0w215cRMeoLMs4dZr20DcNcRHlEl
         qf5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=wUgcZw4MCbFD1/1BcY+6DbGPeGkZXPGAMinppOLvQKo=;
        b=ZUa7La2GxbExZUbNgNqQFjwOKSRyR34Byaf2q9q0OpFAz4Rz6TunxaO+iymqyVB2uU
         IdYr6CTDkblot+d5pIBP1BsVDBPiUK7VUy2CT+Y03VWMKaEv6D3RFrmjJzPHnJAh57WC
         25JwWeU2K0mV0m52pIv3H+k2FLMiPwNorbB1M/NITJ6b2pHz79tbRI/6s6t/lItyfkfU
         ZZPJavTdTK9JM8YfxNGoD7FWnUVuJFPjl5n2PbzsS3WOnIdPOx1djsI39vW3qd1dIWk3
         urRgYMoUe/VEsSk4fbkWLsjcRceqBAC8B72gk8LXx46Z532k3ctylhL4iGIFxJ1cjSmS
         TxsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=IQZyZdsr;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q20si163342uas.1.2020.06.17.18.25.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0939C20776;
	Thu, 18 Jun 2020 01:25:38 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 157/172] NTB: perf: Don't require one more memory window than number of peers
Date: Wed, 17 Jun 2020 21:22:03 -0400
Message-Id: <20200618012218.607130-157-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=IQZyZdsr;       spf=pass
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
index 2ee41b988c5d..28d288ff3bae 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -656,7 +656,7 @@ static int perf_init_service(struct perf_ctx *perf)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012218.607130-157-sashal%40kernel.org.

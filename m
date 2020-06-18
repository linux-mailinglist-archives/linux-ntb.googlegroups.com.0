Return-Path: <linux-ntb+bncBDTZTRGMXIFBBPEAVP3QKGQEN2Z2ARA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 166921FDBEA
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:15:42 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id a16sf3137884iow.9
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:15:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442941; cv=pass;
        d=google.com; s=arc-20160816;
        b=kNyo81VSgwMB8Ll23mdyw6s6Rr3ga+9Q/ybYqby+FUD/w67qIK96UCxhEHZOiuS3aU
         Zb5Rwinmac4SNRpn1gLBHuklvxOV6g1shZWG5PGu9K5XwnV5eYtptm8ZhgLIffY1UKk4
         ZvCOEIEur2sD55aa6ya5DFxnzIq7G8yDq7llTLGiR2tmsc4q+Dl7Dnkr75LbTyv4pjIQ
         tszR7GTgFqRWe0VXGezPFh1tBHFGwym+75v6kpBhCGeX8A1kj1UQhJTX15ofqoJzgNRA
         aIcXWWMqDK8IHVA7VB74dyCzp3ZNKmWlWJo+lefuOtIoEgLEuyKI+qpCr7ma6AR3/L1n
         NtFA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=fMF9QSFaNDXlAJrBVWTiNZisT7Ol2Z28RpAnfEWCmY0=;
        b=RVNOy4eKUGls4f0lNwuc19yhjLAUMGzVXaSJLplMwLEzc+uZJqR5BobzFekSsIaaiZ
         KiayZ2EE5YF8XLglA+EcRezlsMHNPtsE4UQbjt6YBenAtgLsPa5KZApQ7AlkbQbf+zPv
         lhWKS+mjzNtaAxpHPBrvll4sDwx+3v/D8HcMqGTwPCtEAH3p71NZ4Bfi/f5CEPqR5Rnk
         JMJrpgit9ONhLlwZzJ8kk3/HX3yZmJ89a4bQoQRSVkSVF4PKOJMrQI6kjqV+Q2tkyX1h
         4Z5KY6rlb4ahMCcJ+ujGwNlJYnQOPd6GB0N0DTyHY7DohsYBpf8Hdcsi2g7j2KEv4kqD
         LBsA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="rYVpqm/E";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fMF9QSFaNDXlAJrBVWTiNZisT7Ol2Z28RpAnfEWCmY0=;
        b=dsZZlyMDQmG1ZKmzmtMRxI18HdLoyi+adGwy3HFTD2C/f2UBHUUfJJUvUdz8JEQjhn
         IV+poQCz5b08FB2aqnMmq6o3mJkCNstVNJNgLJBn24ljEz2MVgi8vG0w2evZTgPispbB
         wkek52kiP8C9bJzQyDptvrpztyr4NvpbzCLzF6NqIc6MTNJIBOPX4JO4cM7iUlh42iYc
         ecTLbMTOtqO9inQddtVn7d3UL/o0GFT2FjdNe5nmQPtKAClQPZDi8Jz5JfINIIF+lfgl
         GHx7awcjwXfv7n8/AdNoMs80mGKbeI3q5xnUJ85VKMM+7hJGiU+l6s1Wp1pFg1X0pyVH
         xhUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fMF9QSFaNDXlAJrBVWTiNZisT7Ol2Z28RpAnfEWCmY0=;
        b=NKkcaH5QLve8/FvHl5QdSfE9O+gDp/h4nRFQptiePMDMr8IbwZY/6spb0WHGJA01Mg
         HXitlS3HAGEelTq4xaV7d6a5zbBz8t3a9DGP/aqkMQSxMCA0AN2HsNNmtc/CzOlRb2Wr
         bSAcJAzGVJ7bVZ3UEl5t2PhfzsDotOBDWNexVDkeVTA99VzTG4/Pu95+z/nZ/yfwrwWK
         +jJw7MmGVB2bIdSS1/sKoUYxS/2tZaPLalCDx+0vBmlmDWrPS9FGAIkGkNN2VMYMBosS
         D3ULVh6jtXoF1GEPutJRGmGsb/iuq0bpTZK9ivvIuIlhqT8aLKE5lF76I2Lekgxj1Tsg
         FSPw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533azUgZD9k7WkLynGm0j+5FlsXqtzHbxb43zrfJDY4hF/S0dU4m
	SukBJ2xyJZQU8pQv6gqsZYU=
X-Google-Smtp-Source: ABdhPJyJa9O/vffahtcMKemHuEcvg6BpECMB0LJWTsgvevftg/fyMKfWNheN0ylVYnWUSbBnM3NgEA==
X-Received: by 2002:a05:6602:2e96:: with SMTP id m22mr2415220iow.165.1592442940858;
        Wed, 17 Jun 2020 18:15:40 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:c002:: with SMTP id q2ls1177007ild.4.gmail; Wed, 17 Jun
 2020 18:15:40 -0700 (PDT)
X-Received: by 2002:a92:4a04:: with SMTP id m4mr1911412ilf.228.1592442940570;
        Wed, 17 Jun 2020 18:15:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442940; cv=none;
        d=google.com; s=arc-20160816;
        b=AV/2Yu9KyiqGVbSQANFwTAEFhxmLNAgSXJcx1zqscWiES/BVaJJ5xTyat1oQ6e94r7
         xl0fcy+l2PHUJQRDXZFXap1Abxm5lCiqpZCRVFYZvbWPgL1Pvlkl2FQNm1b5cb9lrPGW
         IE0N+6yQ8av6+R5QZjnlBaT8Lm8Dh2Wx4rByZu5CKZBQZ32oh+wbloX0pU1Dz5LuRMas
         hXuRrCLLPwYZi7edAqr5wN6McRNlRy9a2V+DgyAiIbaK8bTItIJufQMgcCvEfntowTyz
         VIVPHqW738+GNzZs0LlNJzpcVgaABPFrasqtGdvdOyyrhc6u033lBjJYHFjIZ//BLlzm
         EWLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=i76X4FrXJ05EcAbE211X5pQQWr12dJ4JbcC+3saJNBk=;
        b=PzvWApQmv3rsgK8SQWqmZwfiSOBm7ln8LxZzikgtiKGZ0T0qLYTo4rHJ+cHNiWNclH
         /64qefWoqiO4dQUEHP9jCYPro8ncFNYAODynmfrcQUbhtazwWmMCsS1P8xmgO34kJ/oB
         eb1qsaP4u/wKMXAGxAxJKHyRfDeQcTrxpukDNNGxRXw2HU0BICuCJI4Lp1xUrLl2TSBB
         KylLS4UECyFzANA97lse1OHNIBcQDL4GCm6Po3+xHTLSY3dSY9AZXgSMXqx2k7Zb3niZ
         nxCBfyJxYHvBi3dLQZrO4xHqUzmRUlGzyudM2jo3dZEzhMNl//ZuGGi1sWpk58J/x2gN
         fNpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="rYVpqm/E";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z17si83673iod.1.2020.06.17.18.15.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:15:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1C93C2088E;
	Thu, 18 Jun 2020 01:15:39 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 351/388] NTB: perf: Don't require one more memory window than number of peers
Date: Wed, 17 Jun 2020 21:07:28 -0400
Message-Id: <20200618010805.600873-351-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="rYVpqm/E";       spf=pass
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
index 1c93b9f5c73b..21c8a3bac1e0 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -654,7 +654,7 @@ static int perf_init_service(struct perf_ctx *perf)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618010805.600873-351-sashal%40kernel.org.

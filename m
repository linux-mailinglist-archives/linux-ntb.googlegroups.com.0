Return-Path: <linux-ntb+bncBC5JXFXXVEGRBJ6X6KEQMGQEZEO23OY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id EEABD407716
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 15:14:16 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id 44-20020a9f24af000000b002b31f7f47e9sf3126476uar.14
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 06:14:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631366056; cv=pass;
        d=google.com; s=arc-20160816;
        b=A1L2Sb6jet3M5sJ8gclN21XC1wUHmWouOtqElJzujFJ8Q1YkEVVyvrRbJPumO0tZIl
         AAsqeIsDFX5ZChR1ki6OgRODmy64bfTWHOYNbSf7jyjK0HlKd1hp63Y2hecqDvUYGrSe
         MVNIo7L/y0P0Vs8IobzM6G118lx075wVt1tgJi5rShNCaZJ+GKbXXga24X5ELHEFWAUg
         ejdMT4QwPk5b8upG5iLZSAWJq7sAcS7MFOmVhXSBFTw9rCN4oqppDah3gsxmytFWZXfl
         1ovtRlixxXIlaoZGI8Dg7b4ZQ2KibJilKnB/axOrviApjwhnEYwjnV7trlowkuJrpN+v
         RGOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=m3fQK/maNmTm4klBvE2P7UyxKiEldsXS053nQS10Rdo=;
        b=SoxmELNDXnys+1BueLLrWhjzdAdCQJYbZLsFJr83RXiyakB6FH6pB757f5IzTHHm1Q
         TBD2nPJ5D48kjqxkFB1a6epqUjNJEmSOb3MUwX6D4O/3j/HmYo6VgCwNOo6Bcdoe4p+Z
         qgKVDM7HF9HVKANMenfE+BwUQ4KHgOyKYdOvP14+7Lxd0jFpagQNx9DOaHqJuwDnpZFU
         D5McAzSXE6eVaZCqFWK/MFDN5E5qDWF4WluypBqIym2XFJ1zm0p/zwn3UT8Nfl1LLui9
         crf7N6DZIXY1cOns/yAiF6TjJnEUj3bQetKdDHHt1vSditNT3f4dDYJIrGLPptvOYdu6
         x7pQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ir6ZEMSx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m3fQK/maNmTm4klBvE2P7UyxKiEldsXS053nQS10Rdo=;
        b=OOG2FfbaR2szKVvkmNgbOYIgJ3UA7Sj98Z/jPcnDZtAHkMzvC8eFbBPhqoGNJDCzBf
         Wam8fSXtbyKUSl41qjXQNJVfc/lMx3COmAem68400xQXjamNwWZuytYknhT0BltlbzM9
         /juljd42d+j3vNbRKtgcuNfv9491P+Shi/HBcvRgNulod4eri2JPCY+JmrKcybxiuNyP
         VksGHemJPaVXXrUrG/wydGwQ0KD2H1kFPAfp5i7NZp68IW2rvLBKr7mFOkhHmnL2iei4
         jyNSJRYdCnhJDib9m2yKEpjnGzLA0BTH8HlzfJV1OGx99W/wXgOFaxA5/k0oztQ++pPb
         gqBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m3fQK/maNmTm4klBvE2P7UyxKiEldsXS053nQS10Rdo=;
        b=EBK5VQHE1OiUGZMvxPag9v5RljMiJwVCUGLXLOsgvB/ZaIDbGvFwXgJIxG74ohjGVh
         vtUSWem/vPO/rLiw9E0kDB5MWRoe75Usa03/UHy/PfrtMQ6CTugZWOTJ83uuqJ3bHKxP
         LO8gm40yV5SQZmr327L8irnQo2Nq/gv6PF4MpcPqKW0UKpxXINyTThtq8JpUjNYsms7p
         X2ZE8ZrtvDrsbxViTv9XI+/sOPDQrk7Md73XiH7jsZqbiB8WUHp7f0L5y+M6ZWxTUYEv
         90e+zGdoaq86MHZFOVcplxrtVKa89wZxT8u9b3mSRp7sPg3h3xDG42+SkkESZMk25Uas
         +6sQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530i+yhJBm7TCYzaKC+isZg9KNs8nTPUb8rfkNqj8PWEjiR7leBs
	kps7yKUuU2cG6eyELZfcjKc=
X-Google-Smtp-Source: ABdhPJwO/2JKY1z9NqgawpM2HwJooyE99WCM+cw2AgxtG35/6Dm8rWqKpMYLmEt7AGlfSL6PSdtQlA==
X-Received: by 2002:a67:fa53:: with SMTP id j19mr917979vsq.54.1631366055847;
        Sat, 11 Sep 2021 06:14:15 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:d18e:: with SMTP id w14ls170337vsi.7.gmail; Sat, 11 Sep
 2021 06:14:15 -0700 (PDT)
X-Received: by 2002:a05:6102:34cd:: with SMTP id a13mr495541vst.56.1631366055332;
        Sat, 11 Sep 2021 06:14:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631366055; cv=none;
        d=google.com; s=arc-20160816;
        b=xJuiLBnuKFAdfYJQ6IGFsYtpY+cIJkNDULCWNz6K2zp6KT319OO5285cJIYCp85N+i
         axhwQIYeOIB82HBBtmtnW7XMJiLGlbO4HTHSlXIaPKNCrDN0x7Y+P0Gn/R4pYG+csTlc
         i7L/oH2liOTdmtZ/b54GheO6lIA0ym0H8hcsOfzyMwFsnCskddjj5nAV82PKVpO2xL+Y
         sR3K1ptD1xaYQGykVhpaQ5O4iUuH2DWCF3a4l6ix1ONbHpwVlplbmF6m1vBaGHL7ON9i
         hmriMIBVBkDKthGA/uZ/9gSKveX7F6pKNesQtdEab4p6Ag50UJoyrkGr0VNdfzjexqG4
         Wtfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zW1gdukssFOFzQYVie1/3hSkmHrhzxYDeeRPVXXbmkQ=;
        b=vjToeRQ20Ipjj88RlHIJp2XYXX2AZqxv/nTVqjr2mDY/4G4DPUsfH+MNdlVMg2/+SF
         ot5+TLtB9fXFX+Rn1rgH5ELN+WG5LRHTVOXMpkxx9bF3pQR9DpGAxBNBiv2WEDj0lUgd
         h/MK5SpVgqdI0ZrSNH2zKFTNH9plQFC5SCUG/2RqPPnGF/xwtppNOUog4pkfXP3NaVib
         XXH89adbdaUv3Y3xIrvnSJeVUiT3C3gcgzjoRfklcvbB9PTvXa6NERfnixpH6K5Fhxj/
         FbnUf/qOpmaImCBhsEOdgc0JMq6tupYgub5j956lULtu9idTwmz9Dpi7uaOI3utglq+Z
         MyUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ir6ZEMSx;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h4si60928vkf.1.2021.09.11.06.14.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 06:14:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 838DC61368;
	Sat, 11 Sep 2021 13:14:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 7/7] NTB: perf: Fix an error code in perf_setup_inbuf()
Date: Sat, 11 Sep 2021 09:14:04 -0400
Message-Id: <20210911131404.286005-7-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210911131404.286005-1-sashal@kernel.org>
References: <20210911131404.286005-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ir6ZEMSx;       spf=pass
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

From: Yang Li <yang.lee@linux.alibaba.com>

[ Upstream commit 0097ae5f7af5684f961a5f803ff7ad3e6f933668 ]

When the function IS_ALIGNED() returns false, the value of ret is 0.
So, we set ret to -EINVAL to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_perf.c:602 perf_setup_inbuf() warn: missing error
code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index ad5d3919435c..87a41d0ededc 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -600,6 +600,7 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 		return -ENOMEM;
 	}
 	if (!IS_ALIGNED(peer->inbuf_xlat, xlat_align)) {
+		ret = -EINVAL;
 		dev_err(&perf->ntb->dev, "Unaligned inbuf allocated\n");
 		goto err_free_inbuf;
 	}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210911131404.286005-7-sashal%40kernel.org.

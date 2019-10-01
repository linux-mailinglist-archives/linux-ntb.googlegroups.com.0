Return-Path: <linux-ntb+bncBDTZTRGMXIFBB3ECZ3WAKGQEX2GE7DY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 41986C3AD2
	for <lists+linux-ntb@lfdr.de>; Tue,  1 Oct 2019 18:40:18 +0200 (CEST)
Received: by mail-vk1-xa3f.google.com with SMTP id d64sf8249196vke.6
        for <lists+linux-ntb@lfdr.de>; Tue, 01 Oct 2019 09:40:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569948017; cv=pass;
        d=google.com; s=arc-20160816;
        b=Gp0NrxBTFIInsWHClQ3Pfjnv6RAb/yNCf+XpVTxEuDpOOTQ0hEltVUoJdInZC1W7ik
         Iltea/rtU8mnqeGprtuSdWxnPLZB5CU5HjWi1uSQifCIR/4e7w9S80QUpjMb6mCXuNYL
         5RpGxj9BFMpL2EXYD4lUsWLtpvkxE+FkPmc9rdxeko+9dM2+JIvwfdX/JIhBK8qA0gGS
         +Xmr7HOgs33Y1EUrsOeQqTuHC+dQN7c5/H6x+R0oqC6+u0XyPenPLBfoGUEYZYcDAeMK
         sDFQDSYGuIutAi1ZuZcoXCwGgxV1GAGCnv64X7thAiqwUNTsmB1gvLk+O8B4Sa7EAnc8
         PSkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QIQjkhv5568KEQV6pmLN5Am4tZDD7o7J/8POGilmLAI=;
        b=FoBijcC80I8ZTWoLpzWfwqvvqdIU4WqNnhHBeoRui1jL8B+A8HHl6/kDm9e5cMi8P7
         4Mulnd4gECpi3pB5mp65jL1Qz3U76aLJ55CMgZuAIGkbSxZKCACrfkTCPj0IO3qQSs5b
         tV92RaI2WaWZhNtxKsJt+XNpbnB8XYmAjH8H+iPHo0pHYFXEeX3MTNk95ysVkHqh2Rsh
         cYgkHVkolXbPLKAiYNq34bRgdMQs/JvFU0cENjby18D5+D2ejIIOZKkmNJTDdwWc6zS5
         owsRUWBpzKvwBtXzi0kUu/FUBqcuAxVNk4P06ujRVcJhsSKafYP2TFQI9qQ1qT241WPI
         OmcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="WQMk4ZZ/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QIQjkhv5568KEQV6pmLN5Am4tZDD7o7J/8POGilmLAI=;
        b=BZ2dl0hX3TGnerg0KjH9OGB3R/MYBMtHKQ5qJqAeY/qizDSUglcPtRHBY2HAm8sYi/
         U99rjdVowcE9Yk3q+oY4k3bjQJ36FVpIvicaNjjiOYKY9lE/hgIwVYk4yy7W57JCK+MT
         mB48fN+eNf77VDbkHnWkG1Aj3v+618Lfi4a3PNQ9NUdQ4kPV7BpwDz9GhBi4IQ3VSZwU
         xb60clnRk6aiIcmjI7XRuCtD+KmvvvCtMYlm6sG+DD7Mra4U61QXiWDJYnJIDDEZ1vKJ
         V4uEnfJUlLYTa1BsOEu2utKiCucDYd/+kjToOLx5wtYp9Ec8T1HO1TEbxTAndRNwEtEd
         u7Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QIQjkhv5568KEQV6pmLN5Am4tZDD7o7J/8POGilmLAI=;
        b=ZPGnBaDHONWtGfSInfA73Yz7UNGaSGV4MPexCK7reCfdz2buVX+8uMyh+UbZSsiM/+
         WQEtt2NFqY/1xz59PFl0MPBX6k8Is3wV56ughBwckY2Wd/VPt8MHik8EpCAjHYuGwJUg
         Jb3trziW7ec1PtiqLIqLh/igMEBKTu2rOKa+rbC3mFiUfs+nhxCxg4gG1pcp/3Yknbe5
         4hVXeCInDB1adigLF3tHnScG3c/M23pZLbc5ftFk3+WiJy/dxpx0QAF4D1zbQM2ZPjI5
         sU5yhSgxAbCLAb+ExvW3gg6PnQIXwuNSk7F13s7vvi5uRv8cFJsHz8zO1rrBXUzztcUB
         zPWg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAX8TRyIvnRiLUYwJO1egfb2DqTA9FUrLAoeGZ86/1/8saHDrq5J
	vnmgk3BgZT7CQdDsXzjuw94=
X-Google-Smtp-Source: APXvYqzLgR0NPcRh5uuSqk+XVENFFKPmLW5ifRfo+hUhNeHkbrS5MucdkM5okx+Ek93O52MtIqjuvw==
X-Received: by 2002:ab0:6897:: with SMTP id t23mr9341909uar.88.1569948016941;
        Tue, 01 Oct 2019 09:40:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:3dd8:: with SMTP id k207ls616495vka.14.gmail; Tue, 01
 Oct 2019 09:40:11 -0700 (PDT)
X-Received: by 2002:a1f:dc41:: with SMTP id t62mr3558144vkg.5.1569948011931;
        Tue, 01 Oct 2019 09:40:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569948011; cv=none;
        d=google.com; s=arc-20160816;
        b=qbxmO6ozdDidyB2XN8peR+ayRqKtIZjOEo6KXFXpHuYfK/96e5Ra5PeF4lB8lo86sV
         9xNUnqXSNxicah8t4VjsO1LNdR3qohHklA03ySqIfB9bLYIIfjTluq9v71CrAZgpk4eY
         aOxRjdOKXmACnV7lyr4tY2FFNnf/GOq2DZIAElFygz3YBdoX40W7QwkuZ9E5CLE9zG7n
         xOYqj2GRqy6p3se0b08cQX/U/3wjhfbz4Z7n4TLCNb1mwj/mom1/VI+Ryaj+deuwiIZS
         qj4Ndmgg6PZrV0sad4O2tW8alfWRkj1rSwX1xu0Mt/M1PPtK424sPsPbPq+t6a8cSsNC
         GA7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=P7XZ1s4BDB9pDstkNDPJ+ipvn6923n/YNd60F+r2wAc=;
        b=j/Ric5bso45eTTeq2ixAT2/JW+NbxhVUZ+M9megX52VdtfBhfa0Uv9aWQVisclzetd
         /T+FWVf7UdaZOdrRW/AEuqWjF9HOAaKKKgi607hs0XiYAjKk2KW5gWKYDKsH91lxffwi
         U+/0anEzQK8AqXUPJq8msdpVUekNFDkghVHJ2H7gG18XGwP2tWcAt1FtuShhhlnLfpqT
         rMdBMojusy6BbJkxT2hw1AvG10yp0F+ZXL8elV0Dj4iZm/YTZyBK9feKP+GMk4/FtChs
         fKP46aA6UwaO2N/Z6ls+J/e2ens2eP+vCTOCDAl4cs/Cv+7BcscX2khns6Qtppj8rK9r
         zFuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="WQMk4ZZ/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k13si135836vkd.1.2019.10.01.09.40.11
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:40:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3D21921855;
	Tue,  1 Oct 2019 16:40:10 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.3 32/71] ntb: point to right memory window index
Date: Tue,  1 Oct 2019 12:38:42 -0400
Message-Id: <20191001163922.14735-32-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001163922.14735-1-sashal@kernel.org>
References: <20191001163922.14735-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="WQMk4ZZ/";       spf=pass
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

From: Sanjay R Mehta <sanju.mehta@amd.com>

[ Upstream commit ae89339b08f3fe02457ec9edd512ddc3d246d0f8 ]

second parameter of ntb_peer_mw_get_addr is pointing to wrong memory
window index by passing "peer gidx" instead of "local gidx".

For ex, "local gidx" value is '0' and "peer gidx" value is '1', then

on peer side ntb_mw_set_trans() api is used as below with gidx pointing to
local side gidx which is '0', so memroy window '0' is chosen and XLAT '0'
will be programmed by peer side.

    ntb_mw_set_trans(perf->ntb, peer->pidx, peer->gidx, peer->inbuf_xlat,
                    peer->inbuf_size);

Now, on local side ntb_peer_mw_get_addr() is been used as below with gidx
pointing to "peer gidx" which is '1', so pointing to memory window '1'
instead of memory window '0'.

    ntb_peer_mw_get_addr(perf->ntb,  peer->gidx, &phys_addr,
                        &peer->outbuf_size);

So this patch pass "local gidx" as parameter to ntb_peer_mw_get_addr().

Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_perf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index d028331558ea7..e9b7c2dfc7301 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -1378,7 +1378,7 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
 	int ret;
 
 	/* Get outbound MW parameters and map it */
-	ret = ntb_peer_mw_get_addr(perf->ntb, peer->gidx, &phys_addr,
+	ret = ntb_peer_mw_get_addr(perf->ntb, perf->gidx, &phys_addr,
 				   &peer->outbuf_size);
 	if (ret)
 		return ret;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191001163922.14735-32-sashal%40kernel.org.

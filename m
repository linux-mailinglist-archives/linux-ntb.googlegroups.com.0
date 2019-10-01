Return-Path: <linux-ntb+bncBDTZTRGMXIFBBQUEZ3WAKGQE5DYRUKI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 543DEC3B50
	for <lists+linux-ntb@lfdr.de>; Tue,  1 Oct 2019 18:43:47 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id w8sf39467381iod.21
        for <lists+linux-ntb@lfdr.de>; Tue, 01 Oct 2019 09:43:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569948226; cv=pass;
        d=google.com; s=arc-20160816;
        b=PCZWpPBE+Y+zqAMGyU9Vnr3Oz3GLfx0VFt3Ti7E7fFBbh24C6hgUBMWtCKnX0xZWhk
         7YO0pRnXyzkUqNGGA+uDsR6hz1WboKlix2Fiq3zit8bYJaWHOgVQjMOIDC58oANc12bC
         cRKMipnRozp7G+sRAO65faHZXLvrOVHqXBDhA4bhp4qWEHEOq9nVArY6vGc+GdhF4ivn
         V9kZEJyNdtsK3r231rz8Bm6bFNOtPMt7qtPHnIN6jyO0jm5ynegzMGCqykwznCxP5xI6
         pHI0+PyyspBgJ6o/UXjbCGLGVMoZJXFV6FDOo+RrozylvV4rTo4sWdxYEbAau3iNC9OL
         pivg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=oBdxIzXyLOoYo8KIycrygK/xc5vb8cMf3gcAWDLV7m4=;
        b=fmWdpq1bAZ8e63ZozdpnfsLwS8FIFXOJR2uHPISZxe6n3nCgHm3tJbAjtNmSVWB6Q2
         ljPt6LkWlzZ7sQRB3Q65yccDtwRaCY1gOVOKAffF98Y+mW/yqOrvukRXZTs19qzj5gZt
         AHHkDjt9IQ51bYfDBRd2b8XIW29WqALGDsQgVDro3QwoJOjn3KqGy0/DRxdJwjoM0Vmi
         IiE7DUGVO4Vy0vpu2FkfZzGJGRRRtBPPKHWco6NjidI4LNwd9cKRUAwFYcgyIXgTzokC
         IDeb8E51RaGMxtdY8Cj1KL+vbqtEpkwhrP2c8pvjXQEkatbVLVmqILnofEXg9Z1Bu/zJ
         /v6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mMepMnnK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oBdxIzXyLOoYo8KIycrygK/xc5vb8cMf3gcAWDLV7m4=;
        b=NL/vHQa4iP9R8RaqlAOP/qjXc/t9s57bZrd1yJVIf2OlSvprojz5VDXq8fU0OLa0VJ
         b4H7X2wtjrffMMT6kRIDsg/1AvZ3rol32RofRkRTv9c7T939G3kNkEE50vRdcG1lg1U1
         JhrC3iDm4LmtNNGSqJKliGcszcZuf9Ati1oasEG9GHKTG2h45LCec8p8rtqBDs8Ddwh6
         1/pXuv6peP3Z2gUFMW4le9sSdSZZ54W0fYVxh3gtj8HM0CGSheUUARWwlv135Gtp2erL
         JEnAHctikjAhztJW1qXGFwidg6mo48e0LhbHAnucTxWnu0ZIpDlmRuM9VUzZTik2dNPG
         HEOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=oBdxIzXyLOoYo8KIycrygK/xc5vb8cMf3gcAWDLV7m4=;
        b=QVzN/T2j5+H0eCuJS0R93Oqrh2hW1gvYRizQDv49+a+rX+MXxW3ux2vGBZQVur1Ryb
         qiy2ldx4twM4DUcBJmgKL7JW3dSiX2nU6VLYw031QtGYNPeJzE01UPYdjqcWV5HEyZ3D
         P5kq1d/B8/kuNGPIYOw3ELgSe/duNF+MCYMlMGa9SzP04AXW68j9cVQtPsQf41qH7sTT
         9YtF6STSFZL1oY9nxscacOoLTAMsq8M9i439i3recQRkUp2doMmtPvVZ0KZKhnKC4k9b
         9N3UPX5uZEHUwJJDlvE5SMOkthvNOjvGqEnrE5phIMHAWUcHvz72waYq9lyPaF8RLMTr
         tHpg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAU1wwp9z0c10X3vbNb7R6Xpiey2bzBtmTTf1Y86YizYi2gF3tEq
	XkT1/MnXRx8B0o16LlvvGs0=
X-Google-Smtp-Source: APXvYqznZiLvVqpK8johTAGQfHMrRjA4HndneflLOjjYRMh/Xfhn5L53GZtURVKM/RpL6Ew+iSzfqg==
X-Received: by 2002:a5d:85cc:: with SMTP id e12mr16901497ios.243.1569948226284;
        Tue, 01 Oct 2019 09:43:46 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a6b:3b84:: with SMTP id i126ls3451975ioa.0.gmail; Tue, 01
 Oct 2019 09:43:45 -0700 (PDT)
X-Received: by 2002:a5e:de01:: with SMTP id e1mr5785069iok.195.1569948225967;
        Tue, 01 Oct 2019 09:43:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569948225; cv=none;
        d=google.com; s=arc-20160816;
        b=lP3+cB3pLpp9bLvemm/x9gAIamXB+B1Fece2XWgrfy2HeXbPkei04aeDR+DXIyWr+O
         brgRRt+tvgbWm/G+8Bb9qHUdiK9CzfJaf6RLZNqxN/BG6/2+6F3tA2TTNjj9GVvoh7j+
         TSGj8jmz9xWd3Tkh3I8jX2GqOMw4ZnyyzL01gUhuL0dczcwC1uVwgYWFSVlscBopAM34
         8oyfoCKtjSbk1w8d6fWMxfGc/r9bINo2HjIXTxaoD4JZGyqzCBTZPUgJGUoPBVOw+Xad
         1Gq3T+d4Zo6/FzNyHfKUbIktX+IPn0di0vEeZHRwRzlHoD7fz2/2w/eDUo9mf7ZJE98A
         yJ7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Eb0/vqPVWmEe6q3Nvb40k0nnML2FtnsYAgWL0YAmDVM=;
        b=mstHw37yvsjcvKjqKOH0AM39IUH5AG/FzdAATKGTKw1uXG08A9iHeR/LOeIg6pHnpG
         dv4R/GocgYnmkpei0GJJLscllsyLz/0SUMOw4yT6FDcMtGoM/1FlLjq28TUyy1I8OG9v
         a2UI625qyKO56NBeWNjoZfOJgXCyZmBLw8rK1ULQGpXUULF4i9/sWK7fPQhBkWtzeQAp
         XFJ5fospC9FMLd0yAobB0hDOxWvvOgcCM8AFrPCNswfgUJptwyYP67gowt/ieMEIsULs
         uUyMCUCR2XekEOxPQaH1FD6GztEH/4uSQvIK4eLQFMjoxxzjlgHe/cMuzGyKRlPur9Om
         wtng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mMepMnnK;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q207si907235iod.5.2019.10.01.09.43.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:43:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B03BF2168B;
	Tue,  1 Oct 2019 16:43:44 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 23/43] ntb: point to right memory window index
Date: Tue,  1 Oct 2019 12:42:51 -0400
Message-Id: <20191001164311.15993-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001164311.15993-1-sashal@kernel.org>
References: <20191001164311.15993-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mMepMnnK;       spf=pass
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
index 2a9d6b0d1f193..80508da3c8b5c 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -1373,7 +1373,7 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191001164311.15993-23-sashal%40kernel.org.

Return-Path: <linux-ntb+bncBDTZTRGMXIFBBYUDZ3WAKGQEJFZ3YOY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id CEF84C3AE4
	for <lists+linux-ntb@lfdr.de>; Tue,  1 Oct 2019 18:42:11 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id c205sf9875733oib.10
        for <lists+linux-ntb@lfdr.de>; Tue, 01 Oct 2019 09:42:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569948130; cv=pass;
        d=google.com; s=arc-20160816;
        b=lZb4rGcsXKKEpua8GrmRGvcgDRFqOlfbZWET1P6vmX2ik4B2u8XjaguUnXumD4fV+H
         vFyMFYeuaMAD719W5xGlJOB7MaOypsOKU+zndm5xcp7a1bOREC56qt/bFXdreRApBgNv
         cxPbrPYml1YAUv8Ja5Oi9jH90hegabbv1YC+xHd4pVulmVZfMBvMFoSgx1mMV9ZuWz8E
         U1ElYC3uR/HornU73XeVM9OGnFUgiR4K4zF9qNEvcxRKKo6JapZHP3nNw0VNykdJJIU1
         hGt62RTfLY+H1GC9WnJXIWWeT6R/cv+fsNkP6XiZ94CE7JhQNUHGo6lX31ujHxYCqShz
         UU9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=L6D1GWly/fbJo19tSkCBvkWwHWkX4DJ/6HkA2WJod6g=;
        b=VPY/rLDE2N5uj9wXHS8vYC/+W0BSOU1wYaJ7XTt0h7Hs7F758tp9Vop8Qa0jy9EXel
         vCQWmfeIfzo5UeInx8FcmvowYj9gTbamdwSm1MGXc5Q1PnimuOitGmjCrJCQDvfk0+ih
         yoJ99VjANRJ7tnNIW+mhMp1lvJ7iMluzaKiPGj5xT1a89sZ/syDgBEfd2kQMG7rH6er9
         hbE37bnHMqtHKIwqUJq4HCKvXgbmVfAF9ZvgSIMSeXER1Yu2D8Rv4Jee/wc2cDf+dMF1
         idQQPDFMpNDmtL5y/4R2bbqHgLJlCQbWQr1SDxCnyY83rKwB+2/6Z9VlC7HiwrnT8Urz
         Sl0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yBOCxhwa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L6D1GWly/fbJo19tSkCBvkWwHWkX4DJ/6HkA2WJod6g=;
        b=ej0YVYn9slZya5DGLahFwvzKRzKzVoNGfmKuUk3qjTlJ2Nb+HKCvan50tM2ArBTPwJ
         Ga5bWwiEEVcWDbZLMjQoZU4ttDV9kNITjjvFjfiRljzcNM+duwZ1ivJxOiaxP6qLxRaF
         CyDyGDi28zclVGI4fEWFhamWwRT49S55hQO/Vo3Mrlzyf2NMvZu/+lQDjxWXPAj8gZH+
         pHsyW9RP3EkLnXQK5ZP8hh6q4WBR5nfoBp1+vAlnHmTgzXxCvnN8xXdc99GpLOywaV/6
         ekGwMn6tf413qPRafbZnY15Z1DekEHZYTJZETjFs2vU2w0QT8WuV+6WmP1Aau+5J3ZRK
         JDuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=L6D1GWly/fbJo19tSkCBvkWwHWkX4DJ/6HkA2WJod6g=;
        b=d0BQSUiMyBvxsoS6HKirn0JKw0RxtfE3SHIbCfCAIyKBA2CwUE2xok/RqyKTEN+CUH
         fyCA14BfU5peLE6r5EPd2ebmqJ+0MtzPaDuRkPSWpw0K5ReOT+jpyTjcExB8GwlN75kK
         WPRbzP3RUBb5yF3QU8Tl0ZfrMEVvG+nDBeDbgEY2VSdrvXxbO8UF+ZqoiaSC1LdGUW8T
         /gX/ODclCDNzUNKQO9N++HFz+EB8K6z9YtdwMeO8m6nfoT6sfq+p3UPHcG9LGf7CmZKG
         7cQA+7L8P7queXGHR+u87a9PviYGlitJAeRFSDk8UWJdxdVAb9k5+PKa4qoFMKhVHjhl
         803A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAVfAHf59VJVLDW64Lt+iD5OsYS65WTwsBUdgaQP4xREetrOZc3s
	HTsghidxBVJb5QuVVp6UMdU=
X-Google-Smtp-Source: APXvYqw2nFKbr2OmND+GEGxMcUm5xjL/TwvriWOxrZ7BJWQpf+xjFoqcfodJ3CKOg3caZtoLeOChww==
X-Received: by 2002:aca:5252:: with SMTP id g79mr4587870oib.72.1569948130326;
        Tue, 01 Oct 2019 09:42:10 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6808:3cc:: with SMTP id o12ls3309461oie.0.gmail; Tue, 01
 Oct 2019 09:42:10 -0700 (PDT)
X-Received: by 2002:aca:c3c9:: with SMTP id t192mr4701489oif.174.1569948129576;
        Tue, 01 Oct 2019 09:42:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569948129; cv=none;
        d=google.com; s=arc-20160816;
        b=RQNh36yFssoUBO4hKbruG1K2cBtONE03eTNy4Epllob3yx1hpn5+v6OVctVXA6g4xB
         JIaLc3hd6bfwoPtYhmC2pIbNlW8kr3UUhXSFJk0oc5a7lJubVGB5u1sPe5BGE6PLudnM
         OXe87GbiLOsCsvTac8TdKIqlAMqFSZqXyYLOEb7AuQgvY5ptpBwkq/SkUzEva5+qBQ7H
         FijLlMHLEkL71fBNYHReQ3VmAn/MO0lEO+mFMFNebj/+rSKuS/Ip6G/eB3CpkRfV9JOp
         Tfce+zT2IJjqwMJgXV+jjByjkl5fDMYW8aQDVNV7JZ+a+LAEqCqgPBRxlsdh49IPa5Kb
         etTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=m2rSfYBzdAxsri3JIima7HszP0XzpPYLR1umoFKDEQU=;
        b=DtHMiabAHSW6Fohg1CPzEVCxOqgsGwLXv/qYqQI6h2cxUUsvAhlInYb3zcxVoKBEs6
         lPtv03wcnbpIRgE4F+i/B9n1Ob2nkBEgbHRuidnOjH2Jms+OQowsahSw0/oisV3gJaMQ
         dAsNW+y3FykaU2GVYbl2hM7aO+QfxkVnoArNffaScVnziEjGmffMarFvfzG5wt5MYsXh
         dA6VdVnYVOZR6AghU79aT6EMJGvVmt7uhNpgBi35rCvjR+kjC2U38R9De/glfCACyVTi
         O9jmam2R+xL+QXx5wVNJh6DfkT7CNBnO7s5BQ+D6t8mLRS+pOG7fRJ3gHq4USGnRlhlH
         lP4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yBOCxhwa;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k184si1026587oih.0.2019.10.01.09.42.09
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:42:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 26A4420B7C;
	Tue,  1 Oct 2019 16:42:08 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.2 29/63] ntb: point to right memory window index
Date: Tue,  1 Oct 2019 12:40:51 -0400
Message-Id: <20191001164125.15398-29-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191001164125.15398-1-sashal@kernel.org>
References: <20191001164125.15398-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yBOCxhwa;       spf=pass
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
index 11a6cd3740049..c6a1dee3c429b 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -1370,7 +1370,7 @@ static int perf_setup_peer_mw(struct perf_peer *peer)
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191001164125.15398-29-sashal%40kernel.org.

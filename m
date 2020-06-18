Return-Path: <linux-ntb+bncBDTZTRGMXIFBBEEFVP3QKGQEUVXPSYQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id CD2F21FDD3F
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:25:37 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id l62sf2787785pje.9
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:25:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443536; cv=pass;
        d=google.com; s=arc-20160816;
        b=U/EfiucFi+LThZUaifHuVT8UvJftJL3vAmYKkNSsmW/ZXbioBEqVfCrsz6k0s2tKAM
         AQ9/tDboC9PSnczxCx2J+Esyk8vNrWxmdRtOrF/OmsJqDua8vjYu/lp/84Bojthagl3f
         zbNSfSXkMUW5/vBEZSOyBmG6xHqeVhuQKtWoHsDSp2zNDC6S99kEZ35RGyisam9Nk34Z
         7Y5sCncC5TCuDqGq6Raj9Bf+RM6NVGWV763m9xhEXusM0LjH68QeLGxvWr9bmtvCZfyX
         PjCoei6MRKfCnIZznEAcawQlRZRfRkfM2ZsNqUsqq9aJ88lHKUUi4qUllCypAbvzz4i8
         4TMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/vWPp4hgd/fg9Z75/hvB3GpdoK8M2V8HsFQVr8sgDks=;
        b=0taHT3PIqNj+29ehBBQmgLQBHnoEe2+KKzr/w6j+q6utZauyXTqfjGncYe/WAoW1fI
         SIPy7i8KcH0W8z+V4qdpJhPfRJzQQz9vipuE9xe5z+QNB1jcAiOMh9GJCXYthUU1oD8X
         oX9eOd3FkpdgCB7Fkx+qOyanezHM3zyBPBkji0rPGsuJQOS2K6enNzifFFrzNgQ/WNiQ
         o/sMmImMB5VBlWQxQYH6lr4OIZxTsSPeXfrPrzM2CnwCm6aKsMgIDTkbzz0i4sApU9T2
         GqloNfUV2755x1UOXZxZDUj3V+W9ysRvAhPPY8cMM305R05C9XfEhJ2dvC8oxOzEy8wN
         dV/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0xfHs2wu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/vWPp4hgd/fg9Z75/hvB3GpdoK8M2V8HsFQVr8sgDks=;
        b=Q48l5xO2toylo1E1GVfM+zIxlREktyWc0Uwq4s7mCtYWHbANu/pry9aoMl+qEbki8V
         K1B8Ycp5iUg0PlZQHGIBjd60HMXf/Qz67D1s+ki8J1LXQDlFsl12Nc8iiPxMjNX+lver
         /vOGT9cwcKcpJOJcmO5MR7RAdDqrKhkDYnZi+7ShtZXo6B8p9HANg15iNFURhqCHKh9V
         74pQsG6VyfDL3g7jN1hZzoEl4BfvVc6LCJzyOY3hUfd9Vqjjivn/27ZC6cxOLP/an7c0
         4dUnLIzpiLiscMQoe7QEXfCAKq9mK/OGk8tR4MH4ihG5E6Ab10ZkUUpJjXhzTwF1YeZd
         qAgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/vWPp4hgd/fg9Z75/hvB3GpdoK8M2V8HsFQVr8sgDks=;
        b=rFIlIoZDG8F6ZeMQNgtLDZa6T7YRCDfH+8m5lWWk0v1N4e/lqgz+/eHxJstAdEGOpt
         d+tTV97mJ85GgDV+Ln8sEJgtfub7GdTWsTFWJV7CYjup32UasS+QSdXPRze0HO3RHtUt
         50NTqUXsyybEzpygugaApyyLHrtyfPMox5//gqjvL//z7V8QrTaX8YKZXnWXo7HWvTpJ
         k+pZBHDjW8kb9srESbHtFXsHvIcMo7yRvY5cYIizM/E6OWTLLhwgCLdUZYoizMjc2xsA
         wF0rPmoRo3xx909YxLFXMjMRzAwZwXAl1ZxcDxF7OveEGAXLShs0kgY27CDhfTbq38PL
         YuLQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530mc9sIcN00Yy0AiN2RPEvT/QnzZbfNuBjzpyhHHyaeIaF5siWM
	zv1OqEHESGCIZcqL+Y7dPpo=
X-Google-Smtp-Source: ABdhPJziBicAa3rNAic5GDfv4gYYcok79IsBuxLSuQkzPf/59TXFepH6d+e500oY1uzKZrpKwSvj3A==
X-Received: by 2002:a17:902:aa4c:: with SMTP id c12mr1658082plr.280.1592443536569;
        Wed, 17 Jun 2020 18:25:36 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:788c:: with SMTP id t134ls1280548pfc.8.gmail; Wed, 17
 Jun 2020 18:25:36 -0700 (PDT)
X-Received: by 2002:a63:2f43:: with SMTP id v64mr1367467pgv.232.1592443536139;
        Wed, 17 Jun 2020 18:25:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443536; cv=none;
        d=google.com; s=arc-20160816;
        b=0b6QLplC0UEQu9WRPY66J1pjdNaEmvcPQpAw7KVNMsSlwwvrAzpFDzIBPIMYTwUi3q
         L24WPfqH3PSVSBcd+mtZ8tFE205BBjmELiQQiYAlFSNjffFHgaeVYtCJ0CJhIdBpgX3O
         xGHDgy2F4xDQ+HwI7sE6Vxf7PJjBYY5q3Bq/7AxrX/m8HLUPhavLHN40Q3sVo/ZVauem
         TA+4tNCR5JWNkrKUOCUpeMkbjRzt7LzTMLQs35wuNaPolrKz6nLXJYegkc3FueCOpiOV
         pbuXaYYxSN6A8crj3Car/XHmGCJptXzC6CFIQ//MV3SpMRixhkwAACIUyNpzgXvg6jbe
         ylmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fJ5PhmiDFh2CBUABDfHHfDK8oAxY33PIEWP/pVq5xkw=;
        b=kaSx1GtBB3JHolP+z2RKOQYXf5BleGR9nIUH1dW2m6Bbw5U8IGTjbAr8TLTxyfKpe/
         o2dac2oBCqMxA8vrvXLhCPSr5hfyFNkg/yaW1z8tXhnflF18vx4cnS01nQoMnhJ3RUZi
         PxRJiHbuimrdmFOM5nzC3DF3VKBZmJo8LZiUHsWyR2yi9IVMH3GlP2ZUqOTE4t3igJwf
         jIWw6YnMb2i7cTkIyq6GUi2vH4zMilcZOCj9DxSoruN+kqqh3TsH55JV+HgT4PXjEAwc
         xoMz+ZbwL8hW6f+VgYMONbfVlYiS5ZtcjITK0UhIr1lR6HFYI8x6K7yh8TDTA+Tp3YhV
         q6fQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0xfHs2wu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l137si103037pfd.3.2020.06.17.18.25.36
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 218802083B;
	Thu, 18 Jun 2020 01:25:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Sanjay R Mehta <sanju.mehta@amd.com>,
	Arindam Nath <arindam.nath@amd.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 154/172] ntb_tool: pass correct struct device to dma_alloc_coherent
Date: Wed, 17 Jun 2020 21:22:00 -0400
Message-Id: <20200618012218.607130-154-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0xfHs2wu;       spf=pass
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

[ Upstream commit 433efe720674efd9fdbcef78be75793393cf05db ]

Currently, ntb->dev is passed to dma_alloc_coherent
and dma_free_coherent calls. The returned dma_addr_t
is the CPU physical address. This works fine as long
as IOMMU is disabled. But when IOMMU is enabled, we
need to make sure that IOVA is returned for dma_addr_t.
So the correct way to achieve this is by changing the
first parameter of dma_alloc_coherent() as ntb->pdev->dev
instead.

Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Sanjay R Mehta <sanju.mehta@amd.com>
Signed-off-by: Arindam Nath <arindam.nath@amd.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_tool.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index d592c0ffbd19..025747c1568e 100644
--- a/drivers/ntb/test/ntb_tool.c
+++ b/drivers/ntb/test/ntb_tool.c
@@ -590,7 +590,7 @@ static int tool_setup_mw(struct tool_ctx *tc, int pidx, int widx,
 	inmw->size = min_t(resource_size_t, req_size, size);
 	inmw->size = round_up(inmw->size, addr_align);
 	inmw->size = round_up(inmw->size, size_align);
-	inmw->mm_base = dma_alloc_coherent(&tc->ntb->dev, inmw->size,
+	inmw->mm_base = dma_alloc_coherent(&tc->ntb->pdev->dev, inmw->size,
 					   &inmw->dma_base, GFP_KERNEL);
 	if (!inmw->mm_base)
 		return -ENOMEM;
@@ -612,7 +612,7 @@ static int tool_setup_mw(struct tool_ctx *tc, int pidx, int widx,
 	return 0;
 
 err_free_dma:
-	dma_free_coherent(&tc->ntb->dev, inmw->size, inmw->mm_base,
+	dma_free_coherent(&tc->ntb->pdev->dev, inmw->size, inmw->mm_base,
 			  inmw->dma_base);
 	inmw->mm_base = NULL;
 	inmw->dma_base = 0;
@@ -629,7 +629,7 @@ static void tool_free_mw(struct tool_ctx *tc, int pidx, int widx)
 
 	if (inmw->mm_base != NULL) {
 		ntb_mw_clear_trans(tc->ntb, pidx, widx);
-		dma_free_coherent(&tc->ntb->dev, inmw->size,
+		dma_free_coherent(&tc->ntb->pdev->dev, inmw->size,
 				  inmw->mm_base, inmw->dma_base);
 	}
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012218.607130-154-sashal%40kernel.org.

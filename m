Return-Path: <linux-ntb+bncBDTZTRGMXIFBBHVLQLYQKGQE6WHY7PY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5B313E254
	for <lists+linux-ntb@lfdr.de>; Thu, 16 Jan 2020 17:55:59 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id x199sf13274988pfc.10
        for <lists+linux-ntb@lfdr.de>; Thu, 16 Jan 2020 08:55:59 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579193758; cv=pass;
        d=google.com; s=arc-20160816;
        b=NnT0Ixi40XUa0brL51D25zN6vgB5azubkEve8ewPvbL2XoXwfq8mIwGQmS4GGSYF0j
         7Ii+KgklUe6IAQYiR8IrEmVlkyyBkebSC2O44zSpe9mpmSxcxMhe8rLAWEZWlz8SFA2p
         K9xNtQ9xzebsT3A2XpLnbvJaBQv5xFoFSUkmFi1Y/RNwGdI1Jkbu2rEY/TsLZMLYNxje
         xhYo/mwlc9K7YZzQXyGBIe25rvXLvjJKx8B7epc6GpuIng9i7smk0HQgPVWb37by/b59
         4NsXysGF3g8UPgreC1mKaSaNQHxMEoupNmEuPJnJzDgC3V0mD5n99oik5u+Qi+ex806c
         mICw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=k9ctz54vFr+ykneKK73SIA9b8S/Nhj6FhTJEaNt06Oc=;
        b=BnMIOcBTM2O0f4VZRhcQW7x+F/Wxdhgzf3MvBTUq0iX0tyeUDySDhjoQB65mYfBYwc
         BR6+27q6fPFcLs22UcbH/lihSolmML0+eIP6Hjwqeg68ruyM266ppHXI69wJaqIFvBFZ
         +38vVucRg0WNqHqkNi9epBkr5JdLf697HOLkpMxjkTfGfG/+FHe8gMUrYO48BbM6JPh7
         8F3/qRCUJebw9sGnFGA72+1gFe/FhBrhTbCtkxDpBOvv9wqCjm2oQpLXXdly2P2UTrjv
         zU5WLRqamZjujIT5iEraXhTYhpTzBL87V8tEe8A2t4w5HXZXa8u4Gq8N6jB6F6ladRjs
         Ql9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ib2muong;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9ctz54vFr+ykneKK73SIA9b8S/Nhj6FhTJEaNt06Oc=;
        b=DE/P//wr2xmZM4mHFq47AYZcXzs3m11VlswC9qjY5kGN0jnYlL7vmJXuiINBaWKKkN
         qRSKjl+e7Ybzdx65M2JULOFurNkJrdrIg1v5f78auN6lsnf3EZ5EeNAC2l8hcPf00UcL
         654UXuo4zBHb/8JrGvQ/0G1u8W0H2vycjPF2MPYYJCJnQf4vP7zSnC3fC9INucKQ4g2B
         3GlmGEAUgsnUrAlfaRrP2AY7rnk1IoJlo6pFL65aD5cqMCP6yTVdvtzdjrei0F75AbOn
         kxN/Tb/tj8UERbOzIIdKEoYGV+nic0g80v6zVSbEOx6PUMQfBxCA2qEqSWKoxA7hTR7q
         bMeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=k9ctz54vFr+ykneKK73SIA9b8S/Nhj6FhTJEaNt06Oc=;
        b=pmiT0sT31cxzYaUf6iKFlNGtu/XE7jJToDJ3ZdDM7gSv8cPlrkCPIQEIn+D2mjVf7C
         NGhXsN0aNjkFOHJYQalwxPtDeO9xtpzsQ/9Umiv1x2X1fbxbyy9ewrd9rKg8I/ft+zi3
         cZklIpRwnx8hBZAlKHCrBBZ0xRJus9bLZhIxoYI87vlYkAjr3UiuDuvYElnasCMjk6Cf
         topEJToDHQak/NRBv4JaK3vGKM2ji6EKulC3hXOEbFHIZcDPdPLgscuVL8k7Dg150jhi
         tofqG1KYgIq+aSH9WLr4p898NydhQPDzPULwE4WeouhWInns7sDx4ohdCDU3vjz9JSyh
         vuMQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAU+ZNQEC2bpRu5WoeKKcdt/vmykE5JLWsSqlGsOkcyLXKv583If
	jMYEEqWQoNyn4nt2x1qIod4=
X-Google-Smtp-Source: APXvYqzZ6pW93V3b3hh6BWOPpp+HtM0s+lqtjrYTm4zFJfv9X8Ko1VVSsErZjFycLwBCsCDQ0mAgSQ==
X-Received: by 2002:a17:90b:110d:: with SMTP id gi13mr7957949pjb.123.1579193758139;
        Thu, 16 Jan 2020 08:55:58 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a63:cf4a:: with SMTP id b10ls6114376pgj.0.gmail; Thu, 16 Jan
 2020 08:55:57 -0800 (PST)
X-Received: by 2002:a65:6842:: with SMTP id q2mr41434935pgt.345.1579193757721;
        Thu, 16 Jan 2020 08:55:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579193757; cv=none;
        d=google.com; s=arc-20160816;
        b=axbFanwccCYRgKTpX1HrSiOshImhbQWY1HpIGUQm2YMF09vwROn/kJXA+GEkjMBsqz
         tcAt1NJcnMaWKOSgliR5iOIJCOCuX3/IJEZ/Nh6U1A55kh1yW6sIFxPQ+LVfQ5q/7s2n
         ru1Qf3fKhWPixTzhQA2HnZfJuYjPMYFsInuzQaMNXCzjJCsUMoQGGG4huB40ZhFKrDwZ
         9rZkPKJAkCFLC6lBl3wHeXy9VcKtxNXgFUU+lxjzconnpzlq9Jbku0X+5BXm49oaiZN3
         Dzs4ZyVSgOOA6qtnM59XK4LCv6VeJuszvBltsJaEMvuwAefVZ3kzHIq+2vKkQaD21lX9
         hJKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=p9/Uh9aByvXJ7duIE8kJjZYk+y0qXg6iX5148gOQA2w=;
        b=HGl79KMHhZTbcCvm+gi2bmOgTppkDoNmBlSvqq7bcVAFuGhUDPTpDU5qB6chP1w06q
         3U+S6jDRkgAfUxQ+U0GeSWZxX2HfOwm/6Ss9xEY+0J18BhgwDu28E0iOXPAxDqBWeNnH
         g7bGFmabElzz6matgVX+hyST/8Xttg+7uUWR73UNa4JRvjgQWmwZCQnuCi4vKCbWXq46
         ltpmEzbcl9QYxgLWew3NEC7rz0RpK9o6bEW6tndX+Htu5DVpJDjP8AVVKgTk/wPQMgv7
         fAzYp+3Q7SNPTjY1jC6g8cfRonBlAN5f2MAzNdvUYwpmvsD+dkElSLZA5/yJowusJhlX
         XUSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ib2muong;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c4si882332plr.4.2020.01.16.08.55.57
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 08:55:57 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AE8B621D56;
	Thu, 16 Jan 2020 16:55:56 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 045/671] NTB: ntb_hw_idt: replace IS_ERR_OR_NULL with regular NULL checks
Date: Thu, 16 Jan 2020 11:44:36 -0500
Message-Id: <20200116165502.8838-45-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116165502.8838-1-sashal@kernel.org>
References: <20200116165502.8838-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ib2muong;       spf=pass
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

From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>

[ Upstream commit 1b7619828d0c341612f58683e73f279c37e70bbc ]

Both devm_kcalloc() and devm_kzalloc() return NULL on error. They
never return error pointers.

The use of IS_ERR_OR_NULL is currently applied to the wrong
context.

Fix this by replacing IS_ERR_OR_NULL with regular NULL checks.

Fixes: bf2a952d31d2 ("NTB: Add IDT 89HPESxNTx PCIe-switches support")
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/hw/idt/ntb_hw_idt.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/ntb/hw/idt/ntb_hw_idt.c b/drivers/ntb/hw/idt/ntb_hw_idt.c
index dbe72f116017..a67ef23e81bc 100644
--- a/drivers/ntb/hw/idt/ntb_hw_idt.c
+++ b/drivers/ntb/hw/idt/ntb_hw_idt.c
@@ -1105,9 +1105,9 @@ static struct idt_mw_cfg *idt_scan_mws(struct idt_ntb_dev *ndev, int port,
 	}
 
 	/* Allocate memory for memory window descriptors */
-	ret_mws = devm_kcalloc(&ndev->ntb.pdev->dev, *mw_cnt,
-				sizeof(*ret_mws), GFP_KERNEL);
-	if (IS_ERR_OR_NULL(ret_mws))
+	ret_mws = devm_kcalloc(&ndev->ntb.pdev->dev, *mw_cnt, sizeof(*ret_mws),
+			       GFP_KERNEL);
+	if (!ret_mws)
 		return ERR_PTR(-ENOMEM);
 
 	/* Copy the info of detected memory windows */
@@ -2390,7 +2390,7 @@ static struct idt_ntb_dev *idt_create_dev(struct pci_dev *pdev,
 
 	/* Allocate memory for the IDT PCIe-device descriptor */
 	ndev = devm_kzalloc(&pdev->dev, sizeof(*ndev), GFP_KERNEL);
-	if (IS_ERR_OR_NULL(ndev)) {
+	if (!ndev) {
 		dev_err(&pdev->dev, "Memory allocation failed for descriptor");
 		return ERR_PTR(-ENOMEM);
 	}
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200116165502.8838-45-sashal%40kernel.org.

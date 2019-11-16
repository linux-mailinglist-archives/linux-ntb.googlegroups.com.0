Return-Path: <linux-ntb+bncBDTZTRGMXIFBBMVVYDXAKGQECQUTG6I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id AB629FEE38
	for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 16:50:11 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id f4sf9839068yba.22
        for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 07:50:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919410; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xqrug2dDvTOW1t28jGIhMcWZxHoRVECs15CrPSr3AGIXzb8D3wZ/aowSPBsyc0L2Pw
         HfH1gZE3Z6YagjG4e0YxkTMCbbvpo6DAI3uX2sR1xAWWEOvMk/PrDX7OQHEHU13W0t6w
         wUrx1UNcjvAj3X6e1lO+blzJbOJVv5KQ221+QPbWCk1Ader3LzaojBmRUyojLhtiXV8M
         un+kMWXMghnky1GETw37m1bblejfegH0LoKMfogbS8hPTuqqPWf/rxjwc1QTRQZeXa/s
         p4j5NewQFo8+IcrZ3UXfflAtNuh8lSNmuvJ11/REsqOWPNoosdr5s8MX3zOQrBmW1zoh
         /t1Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=eiTR+uImjH7oh0a6aCh7dN109/FINfBgmA+MuoWXo+w=;
        b=dZBZo5ubG8wzR6QMYqFPkTgVIoO5ulIL+59Vto+QZINhkjsExG7JP42gDOHpvg7b7y
         xs7SyyineH1Gu89RypcY9H1P9ZTz7p/5R5Wicirjv1JTSMj4m9zvTy3xbArzO1RP6ngv
         l8MPACjZQfOSqQpYUr485uDDFdDt7/hPrcOIwYWJgj9Hu7vZHZI7p1rFQKSi6Lw5J4cB
         ADUeGrdgoTN5dpEGfCO9scXLoODSh8vJXDVQFPbavP7I+Cde/03MzkMWwsmLSIHXRCDQ
         oUf3ncQw/9uDJB5BHUz541wGsJ+DkDrvI5n8QD/jKHrcTTSGJYrZ5ZaiuuIl7SyC3c0v
         ft5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Eg0WVi8n;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eiTR+uImjH7oh0a6aCh7dN109/FINfBgmA+MuoWXo+w=;
        b=aTkorwdoAU1qASJf/zl2ZNQIZAwIyzjWNes7PJXZAFNcVcVS/EFF80h0qY6HjBDwfa
         BK7neURrE7YF9bhAWw0dcoiI6A68IPgPPoSuLZlB4iMLLN6PyO0CAN8khKS+artrShHe
         eAa+5XUTiJ6hyeQvCQMCj38eTCbCde6J2lKyjzyovvmq17yrSqqOpulhh7C2vqMHjnxs
         Xr5rmm+wu8dYFMziYsQct7teHOzjjgCFq1o9Ki+a7/cBwcYtYWC9tAPUQSTuOhvDcDRU
         EGdGwCSeuNmYT7G4tOC9eB6V5kTRe+4x28BttjsF46rmejpWabqN015m3g9BxkBb6Ww4
         n3Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eiTR+uImjH7oh0a6aCh7dN109/FINfBgmA+MuoWXo+w=;
        b=LaCUJIJR+3RvExiCJzpxXwZSO3r4R/UzVTjwXzD0lTjLN85zib9M1Ya0D+Ukvq0Ilv
         /5kvmbFpCPi1EZRK3b+ZyShim3nOI+j6lDtdx2DreA5KC8hIb3O4sf90/IusqgFkChOa
         v/F7Lur3HiFR/Yd+U8bZfnIEkw8rDTLn1atLy9HE3Rkv6SbLyo/X7Q8DuWESdACJkrPE
         q3VRSB6nYkVzqM1weIbQKzDJLePnk23G2U+zPArcqNsVS+gk7trO8O5iIQVyIOujSpW1
         LCc+dXvAAkobzL1aKxhAMeZsdHJnLJC7CCop3oeccSDuRTEe3YwqNNcsJKXf9p8jFqWU
         Zc9A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUYptVesjmNKCQ+JdR1lUcl2q/x9zKJsxr7TL5PvP42jlGT3wwY
	dbjP0dB7x/zmRCKVcHaPJuk=
X-Google-Smtp-Source: APXvYqz9X59k6UDKIvKhqlMOB40Ul2j52PogI7Bcdi03wgLpnZRDr9LAQNt+Ban3xA3vUi7RuWEq9g==
X-Received: by 2002:a25:d308:: with SMTP id e8mr16960982ybf.48.1573919410632;
        Sat, 16 Nov 2019 07:50:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:abb2:: with SMTP id v47ls1554220ybi.0.gmail; Sat, 16 Nov
 2019 07:50:10 -0800 (PST)
X-Received: by 2002:a25:5602:: with SMTP id k2mr17594672ybb.0.1573919410276;
        Sat, 16 Nov 2019 07:50:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919410; cv=none;
        d=google.com; s=arc-20160816;
        b=abElxvBSCSwHXgjocvjplgD+PPpAdWaXONNtgMgfB8RfRfkTVXbdXxsUhBtCcFxh9u
         SOHNefoFkmrWQlbOZcUqRDixXGmRJazEUlBBHXJbdhI6yQpwbCK5LKBwypHMBD+HEROU
         5/34t/Jiv/cXSglvts7asSrVZxdymKSeVwI33y80YzVBYi5PVEnwjtBtYHd5fTcpu2d+
         MxBTyaqvsagQzEF2Poq9H9n/R0+AWhCJ+4xXuSvZL1LOm5kWjNQpYdgZzfvoSoBaQhAS
         tNQtTngVbuLJKPYPsc16GpeKoT7HS3qW1atUx7BMfpRoVDAmcmjUM2WGLtMdEtVuiGc7
         7IcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=YtMMD3FG7IOtbDc41ij249x6BxD+5tk2wV1zOXkF0Uk=;
        b=EVU5SJLvUdjymmI9m4AI4KpCH+Ag/of8rW97YUYo7mkfOrxi/nntTkXqCI9H+azaa0
         JRJYuEob/rO78wzbXEQxZq4u70CGkhyVThE6azMFGIXMKXHibk6qzn8+Uw9dIJ9oSppx
         XO+FiKrZwgUKD19JCVmRhqdTXWaFmQvGZ7w7CBxstkub0gGNEomkYFRduReKU/mi0gLw
         BQQrVb7ZxEwERxTmXXEZ0fKwQLe7cUZr4sDtaciHd9gg/xxoWU8ExyhK/wQjRImXi71L
         LYfcOZLPHJ4MLVm3Jyc6qNEkbH4En17FhzMN7zef0AtOkKgqX6PvGmaI5vTu/vRG6wga
         xKJQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Eg0WVi8n;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x9si603915ybd.0.2019.11.16.07.50.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:50:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id F068F208CE;
	Sat, 16 Nov 2019 15:50:08 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jon Mason <jdmason@kudzu.us>,
	"Gerd W . Haeussler" <gerd.haeussler@cesys-it.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com,
	netdev@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 107/150] ntb_netdev: fix sleep time mismatch
Date: Sat, 16 Nov 2019 10:46:45 -0500
Message-Id: <20191116154729.9573-107-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116154729.9573-1-sashal@kernel.org>
References: <20191116154729.9573-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Eg0WVi8n;       spf=pass
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

From: Jon Mason <jdmason@kudzu.us>

[ Upstream commit a861594b1b7ffd630f335b351c4e9f938feadb8e ]

The tx_time should be in usecs (according to the comment above the
variable), but the setting of the timer during the rearming is done in
msecs.  Change it to match the expected units.

Fixes: e74bfeedad08 ("NTB: Add flow control to the ntb_netdev")
Suggested-by: Gerd W. Haeussler <gerd.haeussler@cesys-it.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Acked-by: Dave Jiang <dave.jiang@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/ntb_netdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ntb_netdev.c b/drivers/net/ntb_netdev.c
index 0250aa9ae2cbc..97bf49ad81a6d 100644
--- a/drivers/net/ntb_netdev.c
+++ b/drivers/net/ntb_netdev.c
@@ -236,7 +236,7 @@ static void ntb_netdev_tx_timer(unsigned long data)
 	struct ntb_netdev *dev = netdev_priv(ndev);
 
 	if (ntb_transport_tx_free_entry(dev->qp) < tx_stop) {
-		mod_timer(&dev->tx_timer, jiffies + msecs_to_jiffies(tx_time));
+		mod_timer(&dev->tx_timer, jiffies + usecs_to_jiffies(tx_time));
 	} else {
 		/* Make sure anybody stopping the queue after this sees the new
 		 * value of ntb_transport_tx_free_entry()
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191116154729.9573-107-sashal%40kernel.org.

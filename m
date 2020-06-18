Return-Path: <linux-ntb+bncBDTZTRGMXIFBBEUFVP3QKGQEH65LBHI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED0D1FDD41
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:25:40 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id ge4sf2793173pjb.7
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:25:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443539; cv=pass;
        d=google.com; s=arc-20160816;
        b=sFcWJNTTRDBhtSQsODEmQUsMjBgKko14f5ad1+lgWIw4k1dBuY0O6i7EIkyAgeLSeA
         IafYWdEvySIAU/0clLyHL7kesZAfW/8R0KWpXNUJF/LABKMoXPdIYiSj7PpeZILB5Sb1
         1bQFdK0gLax8kP73rw6vWXOpKHzTYioq4E9Hve86zkOfh+tlMZypI1COp8lHO37cKXfv
         O8Wf+BQvQOyfOhcCqEoIOl9STyKhMJymjHUb16ZA/mHiSMtxR7QNAsOI4MOwxZKHaFgU
         Dcao9Qw66pJrheuL7+bh7k/qaYJgqlSeUp2V3cIBUqDK9wDsoHCANi3epJZh4N6B5DbV
         phJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=yNSYPKTvrocsMniRCoDFqfWatK4VyTUKNa+k5BLRSno=;
        b=brqbv/AWsa1+S0ayhQOCd1gS1E7K6QdsphXFFTM79g4T14ZRHC7jdGxuBM7FakDcD9
         zeRZFE52atgiR9wqkzG3eGUjVkiCeVdwzreVAKlL4ZNcUemQzFZCaxNbKJ54UB+6yF0q
         lROSyejIGTwjEtw+5f0ZZ2AnJuh7SyFy0vbKroyzfipB3Cnq9mZ4nwnfzo9WzZWu+GGv
         W1FyaZSvZCt66OtTMW49jJviAYmodGZ/5tNNuV8mIkr9CbGNY9uU4gM7wXbC8aTScSLc
         G3xKpU2EB36j/DiN2rSQgOpl4k0TsnnsrR1P3weRwVQ8DzydYf2wKOBRwTNJV7gEJGfc
         V44A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=asKxOOlU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yNSYPKTvrocsMniRCoDFqfWatK4VyTUKNa+k5BLRSno=;
        b=tQ535KX4UXe8Upsi89vROYY6Tr5gRPfztWHAZhgg+FbFmUGW4zOekFKKtbS4jud3GR
         drn8HlPcsXVQOalCAJFa/1m+Jojogl2TeQ6y2p+hN6JAWj5U8eho7LCpB24x6/jG4FAe
         wkwL35vAVjuIPmhVeUKZuVkkGhW6wSDckoBFlPrDceodOLtf41Lqs8gVmdZZhxsu4Wiy
         roM6qXu5qKIu1vnO/9Lu5dIh1GdJCzrp0uv58bu+NKbFSg0MgE1uRboXwj0N1FJNO580
         NYgr8F5RIs9yItlpUfSPrJ1XHOAbp+ZKxvJ1sLdkkiQqu3GUngJQlXXCFhsbBs6jBZvk
         5/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yNSYPKTvrocsMniRCoDFqfWatK4VyTUKNa+k5BLRSno=;
        b=pOLzfyKrAK1eJ0nX6LmMGFNtxEPU4MDHurAlRyygMHlnbrzn2c4smvpNbnVz8EVsUJ
         UOhYrZWLgwpOfaqhu2OLvl7WIdurxvwaGn1utzb6p6T91k3scYpn/1zdULewpGIl+Umg
         jiEQZEaO3GYd+fQNDTG1d7KY6qOyNlSpLCh9H9CBMFZvS0rIaztJIfjZvM6ZBhgrJCsd
         3lh4NTLg9+yeLJr76R1+pCCH89v8vE5cGjY2AdI+sBvAVTLbZJXefKoVlzntgrfbE1jg
         sMY1cC0uOcIeUMSBRBhgxlCHu3yUEPaxK67LfpeI3gPSyHgMVtM9AmW7a2IOkwI0ZXAF
         z5/g==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533AMLHbK3Qj2+BBnItSSkKEsv/FSADmtHByjXoqDXIa36QJZS7b
	0wKQxzSvbQRdMW3jwPApwh8=
X-Google-Smtp-Source: ABdhPJyzWfhqTJS/7C/m9B1f2Fuv9R4bGacXgcSY2O/GqvjIf9PhoRR8N5JzLfknHZ2TkHjLZVv5RA==
X-Received: by 2002:a17:90a:e801:: with SMTP id i1mr1695248pjy.79.1592443538942;
        Wed, 17 Jun 2020 18:25:38 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:e28d:: with SMTP id d13ls1611119pjz.3.gmail; Wed, 17
 Jun 2020 18:25:38 -0700 (PDT)
X-Received: by 2002:a17:90a:294f:: with SMTP id x15mr1671984pjf.97.1592443538689;
        Wed, 17 Jun 2020 18:25:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443538; cv=none;
        d=google.com; s=arc-20160816;
        b=s97LJInuuKdmndkPF4mzZZzrpHpTLGbmXmW6rxtbvgceLmI+pQm2oLP26ksJX7CH5R
         lNDrBr/CMFTksGxjzSz9+Gsmtz+Z14WKpXI/mGeYB2UfeM7N7NY9NwNDqDYvZjzCUW3I
         lXZ0vZ2mcqZTAx3pYBmKZ7HoiabfPry5+bHTUSPT21KIidK5ivwzIwvtA4HW/YIQIvHM
         pzClQWXfmv6mN6gMHBIY0U+v/FamuHPt544lj02krFKywilfZQ4ulozX5/GMlxz3eZhO
         qL9eROZ87LP6XJHud6p5JICK7b8ZvztdIvH4jyIEQMFTBUrqk1TJI4ogB8tVHQFOj2xv
         tJpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zrCUwqDt2qOtCRUG2WgXiyELaMjjAOQeeGpK9Pr4emY=;
        b=gCTNPK/fUAA+mKuwIxLv5+Ltm1gzO7nSz7ZNEU2TCxD/UPejn0c6ktlpOMaA548otG
         yeWYWHo5hs1qs1rgz2Bau9paVaCn/Lf3Q9U1SRwAT+zfLlaPWsZ4ovNuyBalU7r8VG7K
         N/cwlA7Z7O5zDwomRck7XSb0iMU9ZPJS6/hq7u91kTY7ozglZBqbdSNC1dH9iqqgOows
         pGaFzOJ6AAPwXo1CKC6vZODCk9niuYkHUTJ+/0UhwNbUXIwQhK45270LfN2EY1/wZYyF
         GmYeoMH3EI5tIgODw1IzvtdGo4estS0OCx30Ao6YhVGp3Nfmb6aJGbJOXaq1Jofp618o
         Ez/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=asKxOOlU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i17si370690pjv.1.2020.06.17.18.25.38
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:25:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A566C2075E;
	Thu, 18 Jun 2020 01:25:37 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 156/172] NTB: Revert the change to use the NTB device dev for DMA allocations
Date: Wed, 17 Jun 2020 21:22:02 -0400
Message-Id: <20200618012218.607130-156-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=asKxOOlU;       spf=pass
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

[ Upstream commit 40da7d9a93c8941737ef4a1208d32c13ce017fe1 ]

Commit 417cf39cfea9 ("NTB: Set dma mask and dma coherent mask to NTB
devices") started using the NTB device for DMA allocations which was
turns out was wrong. If the IOMMU is enabled, such alloctanions will
always fail with messages such as:

  DMAR: Allocating domain for 0000:02:00.1 failed

This is because the IOMMU has not setup the device for such use.

Change the tools back to using the PCI device for allocations seeing
it doesn't make sense to add an IOMMU group for the non-physical NTB
device. Also remove the code that sets the DMA mask as it no longer
makes sense to do this.

Fixes: 7f46c8b3a552 ("NTB: ntb_tool: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/ntb.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/ntb/ntb.c b/drivers/ntb/ntb.c
index c9a0912b175f..f8f75a504a58 100644
--- a/drivers/ntb/ntb.c
+++ b/drivers/ntb/ntb.c
@@ -311,4 +311,3 @@ static void __exit ntb_driver_exit(void)
 	bus_unregister(&ntb_bus);
 }
 module_exit(ntb_driver_exit);
-
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012218.607130-156-sashal%40kernel.org.

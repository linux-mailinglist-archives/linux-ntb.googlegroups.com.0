Return-Path: <linux-ntb+bncBAABBIP546CQMGQERJCEMMA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id E158739B6E6
	for <lists+linux-ntb@lfdr.de>; Fri,  4 Jun 2021 12:21:22 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id q3-20020aa784230000b02902ea311f25e2sf3896359pfn.1
        for <lists+linux-ntb@lfdr.de>; Fri, 04 Jun 2021 03:21:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622802081; cv=pass;
        d=google.com; s=arc-20160816;
        b=WNVdr3xQ0/4rmetYNcptRAvunAwYIeppYMCG3KoHY7xfKFqgHXwewPgn4kN+oJgNmb
         KRz0iouQpCCxeWAzmKbE+Jpz8ZLm9HEbIxI0V6B4NFZSy4SxPw3pIhQ0qw4Mde+yvJry
         XplWJyaXsxLX+vmUrhT2SPXl4DiaumJz4DAUe/BHr9vfZgzxqdCemyFQ2beZ7rk/iuDe
         RohpJ0kjStk2nrp1yaP/EbcF52SSgMz05qas1cr9CTJ9PUm/HmBBRQnR3QdlVCPDhgMJ
         0iPB4+I+WeQY+MkjHkBuaM75uZYEeGAQadARMZmL4KNQ6BFXOLZYFEvxjR7xHrrpljWi
         GP4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:date:subject:cc:to:from
         :mime-version:sender:dkim-signature;
        bh=w7ZOVVq/UWgV4hTLik2D7+TM6TAplC5SW2f1VfKlScU=;
        b=uCX5oQhxGjPXgj1MslJsUy1qmi3M1z2EMdVeimsdeEZlxH3ziw1f1anPd6ljM0FaJ8
         YgdchrurAoTa1iqTw+hYh73yJU6fW5XX8dJ8fd63AhykxvOTx7pfREn6WJ8VfGGBPJgK
         gcjfzRz2ZE4jLRq3iDpvXPi/JqhTgsQ056t0Obs+fqWGNx4oLYJF5fBuJ+aZWVqB6lph
         CPnMXgJ3hyFXLizWbTmfTtMzklVaoDBXXGKDIqBEb3I1hHIovmHXbZ36+qeeFHJ8ND7X
         5ywkajsjxQvJ8ngJXGRpQS66P30GRy8ySLCHLTHp2w79iJeBRgIE21DCIuvBmCP1XSP6
         i5Lw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=w7ZOVVq/UWgV4hTLik2D7+TM6TAplC5SW2f1VfKlScU=;
        b=pkBtXryY7b9o/I3iX5C8ZDncSD0Ws1JCpDBX3+Z1IwlVgsZ21fP3QIHV/NswH0Km0U
         MKFBPLP7pMLmIhXbz9DIBcPi+sssDhLQSa34bM3IG9NCuz4mrDRHqiLhAuACpvedpQx8
         lwIj3YhTjm4D3zyTfU9KfpGeisycfWR0EFGmNzJwVRAb/2EZZAULvetQSsIPDm4XMFlz
         xxAfN6lbqbxDviPl9rvgSr+0OK8BtJ1PtTT4QNu/+ZBllIekAxWuN++e+l+G55DXvcML
         MHEFOyQ2OftpYR6HrtCh+IRbvt7ET4YVi4DX1QdnwgTh0yc+Audc2OilBRSXdBxxhPPQ
         SxSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w7ZOVVq/UWgV4hTLik2D7+TM6TAplC5SW2f1VfKlScU=;
        b=UOtjkAj7QBkTEBnQTHuwg4EROX/G0SwSkBNZSvkiHcNNCwzJIU8MRrHMWqsYWbhg5O
         jJVyF1EQgS+6ppU1vY0s7iOoHjeohjyzg31a044WvnSa8Epmg2/FxTgkxwT4YYQ8j6LQ
         djbGSo44vdLr4LtfQfJJl2NKzz7f4T14hOUF8vbFc/kbgfamNvyGWV2PKExxz/gIAjN7
         +jZYwRjf2anWoH38/DpsJCPbLe0rKmRTxdgYSyaz3Y9WrO4W1qJL2r0Rluh5Ze/hWm5U
         mqNQivd8G5myXFxG5Un9CpSizOqb2Me39mY5KafTHCl2d4s85WkDMp55PuWiwL7Mkk+k
         kmuQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533fqozCvMPecO8eBFW87VZ2asJeV5V90zUg9wJeF0vP5C6aieKG
	sS3dWVgKurPbRnkpiWGUya4=
X-Google-Smtp-Source: ABdhPJwLAm0DZhixy7jRt/oIjJviTd0I9/h1PuL9gW2Zu1KtFZL1PrPFpvyMM9yHe3pJmAApEKfsew==
X-Received: by 2002:a05:6a00:c91:b029:2dd:4fff:204 with SMTP id a17-20020a056a000c91b02902dd4fff0204mr4035537pfv.46.1622802081375;
        Fri, 04 Jun 2021 03:21:21 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:1dd4:: with SMTP id d203ls3104251pfd.2.gmail; Fri, 04
 Jun 2021 03:21:21 -0700 (PDT)
X-Received: by 2002:a62:5547:0:b029:2ec:8f20:4e2 with SMTP id j68-20020a6255470000b02902ec8f2004e2mr1816956pfb.71.1622802080891;
        Fri, 04 Jun 2021 03:21:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622802080; cv=none;
        d=google.com; s=arc-20160816;
        b=RAst+/wjLCrXasJj3Stf3r9T1aduSODude8efCQ1Ae0m/Ht3UlMGtjAtJbIl9LyEQB
         r9skW2eGjv3y+AEM3zbuNtcYmhtS+0arRh+rm2QDoiKOtQXjL0pLOnuPZJb8xODZUjMr
         bLEh0zGu3LPdfQOUt+de/1/nuEqTPQz115HbRf/Aidc4u9/3hW9mbA9RI2CkJYcVEYT5
         OAfY4Xz97kUNzqHphQksKLPGQ8A0i0yX6miaZL7+lq/DC8YDXwSjXRFRAhNMi7/nrXTZ
         pEsC+uqcl2pmkdkTCvEU4QxhdYOBjsSiaY2DLpoicjlrEU4UTrfF2Bf3jR0Y26AUqJ2p
         +faQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from;
        bh=/ozZ/cRVqDA5WZ1WaOVqlLurD1jW/ILhD1bOWsRUbwg=;
        b=Oxs6Mb/d3U6rRGVaY5av17s5gB8K+oltSgdGntXQ6CmneVY5yfaAtO815Uf8J+OBqV
         0JW9YPzo8gTf4/EE9o7TADamOK++GTFXaidZxgYxRc0cvORH5qIPAvESgxLHo3GdfEKW
         asb2kwtguVLwRrJVQjnw3QZJI/HYCFErQ6XQSNVsB7qKLgaxA2e3h8KqDVqEHSn2LL6F
         vOAm0b7o76UwAf4xcYpPRZFNcbkW9vMc37wITTwtvYqp99Mh7o4oJ+POiNvY906iq2ou
         szVlHyDbNOFePlzuK2n/WebN5b7MCxQz2nRa4FbxMniJdD7wOXQrRkheE3kaPASDsoSp
         Xhjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out30-56.freemail.mail.aliyun.com (out30-56.freemail.mail.aliyun.com. [115.124.30.56])
        by gmr-mx.google.com with ESMTPS id f3si436080pjs.3.2021.06.04.03.21.20
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 03:21:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as permitted sender) client-ip=115.124.30.56;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R101e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04426;MF=yang.lee@linux.alibaba.com;NM=1;PH=DS;RN=6;SR=0;TI=SMTPD_---0UbFb0BY_1622802077;
Received: from j63c13417.sqa.eu95.tbsite.net(mailfrom:yang.lee@linux.alibaba.com fp:SMTPD_---0UbFb0BY_1622802077)
          by smtp.aliyun-inc.com(127.0.0.1);
          Fri, 04 Jun 2021 18:21:18 +0800
From: Yang Li <yang.lee@linux.alibaba.com>
To: jdmason@kudzu.us
Cc: dave.jiang@intel.com,
	allenbh@gmail.com,
	linux-ntb@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Yang Li <yang.lee@linux.alibaba.com>
Subject: [PATCH 1/2] NTB: perf: Fix an error code in perf_setup_inbuf()
Date: Fri,  4 Jun 2021 18:20:50 +0800
Message-Id: <1622802051-43464-1-git-send-email-yang.lee@linux.alibaba.com>
X-Mailer: git-send-email 1.8.3.1
X-Original-Sender: yang.lee@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yang.lee@linux.alibaba.com designates 115.124.30.56 as
 permitted sender) smtp.mailfrom=yang.lee@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

When the function IS_ALIGNED() returns false, the value of ret is 0.
So, we set ret to -ENOMEM to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_perf.c:602 perf_setup_inbuf() warn: missing error
code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
---
 drivers/ntb/test/ntb_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 89df135..c20b375 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -598,6 +598,7 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 		return -ENOMEM;
 	}
 	if (!IS_ALIGNED(peer->inbuf_xlat, xlat_align)) {
+		ret = -ENOMEM;
 		dev_err(&perf->ntb->dev, "Unaligned inbuf allocated\n");
 		goto err_free_inbuf;
 	}
-- 
1.8.3.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/1622802051-43464-1-git-send-email-yang.lee%40linux.alibaba.com.

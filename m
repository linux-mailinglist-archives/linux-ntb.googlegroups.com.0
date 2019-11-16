Return-Path: <linux-ntb+bncBDTZTRGMXIFBBXVXYDXAKGQECWZFFQA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E49FEEE2
	for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 16:55:11 +0100 (CET)
Received: by mail-pf1-x43d.google.com with SMTP id 2sf10275900pfv.21
        for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 07:55:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919710; cv=pass;
        d=google.com; s=arc-20160816;
        b=nBO7LELyTLtyHGdTelVyaxFUuF4g2d4BEQcfF12iwbeeCV2/0/q/VSqNsq2kIZcjks
         MVeQd+Uz7XasOvxsReaX1izUi0PmLOnPoYcUsvVePxBuB+Z/+MZKkVXDSGLSPY3ctI67
         Ojrg3OouLNA0UI+r9FwkccWgeVrlXDMvvNbRG+3VhKRLDnq0exb7z0KL20Xqi3lvy8e4
         mRKYrOaO2pDgpsmtgkbK4wL1qeN0rrh1PrBTVh/DVgJNuMdyWWmb4A0Do7gjUZAUMK9R
         oAjFhCNSicRFqOMR46Pdg454+xK2DIVGWuYYAY0VBk+wfL68tZMTg4OunJy5mnvXSU/Q
         nIBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=q4mlqwcdzGonxBNb3pN2kVw4ZG2FNT0Es32qVAIt9B4=;
        b=fpDBSQJ3YgnORyIh5zqxmfJV+h7c3Z6qp6zLIPht9wmOl+v1tDFKu/BdqD93zjTwYr
         b6FHV+IN1f5pXUAQhuojajgqUUYV13aUkn5VyLPesMaAic2VDBVGqcLO0ru2xpEk0R4v
         35Nb5KeWG5IAnocmBTws6rsmLt6PO85Z0JCbnqphNiiy3Lv35y1FrKftsqKiehY9IsT9
         owK3JRCYqwm+5oRpjI2dlaezDBXMyGp4yN1iEmmdisOR70dT3SXTOtr/sDWHHj6GGf12
         HjVTjTmIt0BLCRy2cE+AGAFv7m+uB9ZB9owqOU5tt2oM3AgE24n1FMGLXMlygunEAkKU
         YsBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="df+gwyF/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q4mlqwcdzGonxBNb3pN2kVw4ZG2FNT0Es32qVAIt9B4=;
        b=drHYhHVsk8idiOM9/Ruajk6jb09EPUrgdLL08y6aHMi/ufRVq3w3fQA8afoSBN2Iw0
         zIe/M+DtVdti8Loz/20PB4H6BbWJdx3+BLfEc3q1h7Kxws8LizCAwmLncAHXVkWEpxfm
         AKbrystPpQBJnoKZyOsBVfv6grcsIeDT1FwKNUollrAb2D2ZEbathLw9UaaT+3RF8K7Z
         vlMu47I5tR9X5g5Av970ZBPpvmoyFlZAH29WTCZ52OoTi0En+IMsqJIVTdfcgOi6834U
         +x5RaHLAkIOL/ODile9yD0U3+VIzGmKSRjDR4dRLEZzMtVNHX2UUeGzVkUrBa0B+fGEx
         b+3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=q4mlqwcdzGonxBNb3pN2kVw4ZG2FNT0Es32qVAIt9B4=;
        b=TBGCo0pFeiWq0YApW6HNHAUI5fXKoD57hVrW9aosyyRjR8XnuX8Rvp0N2Whh+SOhDa
         I9Jj+BYo2x55pXX9KNTk4BpdwzidnHVfOsoARD/vX0Tr5ODGllbCtulDBHofYtRSxksI
         3luW9spFJRYCfLoxqkAzWtCp/18dpYVY26UW5INe/MB+OW5qBn1E0t2PFdn9FwySVgzS
         xGksZ4EuVJQq/PXTA/nHZgoHvmSuucan3MFtrHLTluoc05qyJ01CmKj599aLRkaSSE7W
         LD1MVE4R8fYoei0hj9RVFcNVpr9kUzZKGUZW7PhYqUWHCSq70h8vGUPiWMFX5WEIr6SK
         I3nw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXGHP49siTTesE43Bs0dPlSExwLz2CDuqFpDL2Fgjes1JE7ucsQ
	YFdMohUY0tNh5aaV7JZKrBg=
X-Google-Smtp-Source: APXvYqxijLifjpo7Hqz4xS2iwdVlFuDNHhBeRjiuf/hj13AH8rwj+EP8sdaKlT9Mr3zcP9uteTH8jA==
X-Received: by 2002:aa7:8753:: with SMTP id g19mr24828874pfo.183.1573919710443;
        Sat, 16 Nov 2019 07:55:10 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:a982:: with SMTP id bh2ls2828613plb.9.gmail; Sat, 16
 Nov 2019 07:55:10 -0800 (PST)
X-Received: by 2002:a17:90a:5aa3:: with SMTP id n32mr27272894pji.97.1573919710113;
        Sat, 16 Nov 2019 07:55:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919710; cv=none;
        d=google.com; s=arc-20160816;
        b=eKkwrdjC5FBUrYZUrEEU18AeTR3Mv8WSiawg7MgT+BhhibD0dShmVqZ2He4JTdkkaC
         DosZYfdzwjLD/2nGd1JNx3v9rftPk98T168Lt3beBb8c+QzIc0ZiTr1NYEl+EsYpCfsu
         sfB5luqBVBIc7q6iReJIB/GmKl624Dg5dF4wr3pzhX31l2ZHe5XWtrrSIduQXDaabCNy
         54s2oflUbmb5r1OpmUuGuwWPrfILe3s1UkjcQ/w9JmO3+SHj0WV6X2k2KYHBzK7ZNgKJ
         jy3EK4voSoIwjsAaAcqFMeAT8+MLWPFt2Gsxz/vcNIKjBoVORDPHUD96zURFDz/KyE+x
         BRhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=F1hHBwiCJqh96ny5WDuDomsgG69DRhjjUllzVxdH7D0=;
        b=vNNWsXzFLFwa0wxczHBBgxo9Enrp9jHeyOQnGe7IHNjjOpPMhE0qvoeZxREz67UMb3
         bEiSOyo7GROljc7RHtoVJCvNmJwlY4A1wiP7uD+r5bRdHTxxTo27mvB1JRLReMJIjkdg
         RuIHmkGdiSDrBUfSqdzmgHF6Pgi0xtoDoNQROmtx2vSoYu3V8FS3RciatNXPsEjqztRs
         EgXPXsDdo+da4Pnj9UTdcjmE9uZpVga7/t/kioXUTQZoTqouPI7ICq7VSSnTMVcgqHCc
         QCy4yhVA7SaK0OUEsjAOWQ90x9nsFZDUe3NyHXrDecH8K6kGAFMY8CLzmi5q1uM7VPMb
         0pZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="df+gwyF/";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b15si735513pgw.5.2019.11.16.07.55.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:55:10 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 8A739218AE;
	Sat, 16 Nov 2019 15:55:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jon Mason <jdmason@kudzu.us>,
	"Gerd W . Haeussler" <gerd.haeussler@cesys-it.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com,
	netdev@vger.kernel.org
Subject: [PATCH AUTOSEL 4.4 54/77] ntb_netdev: fix sleep time mismatch
Date: Sat, 16 Nov 2019 10:53:16 -0500
Message-Id: <20191116155339.11909-54-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155339.11909-1-sashal@kernel.org>
References: <20191116155339.11909-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="df+gwyF/";       spf=pass
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
index a9acf71568555..03009f1becddc 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191116155339.11909-54-sashal%40kernel.org.

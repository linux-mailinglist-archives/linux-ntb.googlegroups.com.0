Return-Path: <linux-ntb+bncBDTZTRGMXIFBBW5WYDXAKGQENW673EI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 33A68FEE8A
	for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 16:53:01 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id l67sf6681577oih.4
        for <lists+linux-ntb@lfdr.de>; Sat, 16 Nov 2019 07:53:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573919580; cv=pass;
        d=google.com; s=arc-20160816;
        b=MIkSCa6BbEfIy9vqash9gdvfoNPrCsjbLESwr59gtwGglQBmR797UgU91aNve1ET6W
         DIL7HZ/r90YTI74CAe0FnTBYQHI6ciq5+Hd931YXyLMkg2ywskMSNiujv1dR12KqKNce
         HKbsLH5NmH4AzGjtuDRPlP7/IrU0Det/UzdozUEDfDOSjd9gd2Ba/a8zrYCgj9UDwEcV
         6twsSb+9d0BvmFSFeWxJmHGlkZUI/LpmxDWVs3yeGSrAotu9+VhIvIleqbsvcb+vspkM
         wbGnC9+GzYMIUY1MAbvR2L6El8C8uDiNOZn8RhzdCo/SGmPyjeFHFzEaYVzZEZgkDdxJ
         NF/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=m1y+xBRx0kV32D4KipX0+GF9lzkQ2wBc05QPH4xe91c=;
        b=EIH0NX6w6sbm/bN/SlOQdWH9ZskW0abMSATRVnEMoRtRM+VMg+z6d6t5axkcTaoGXb
         36KFXw7PmExTk3H1NwkmcpLGakcwmhHUaa5FpuCkNW8J+kkeTEhMiCv7E4R6VYpx1Iko
         91C8a01yiJVEtz95unRYpVpec+paWeup277bphtiMZRPJrGVrF127VE7hwt8J8C2D7MR
         5ounaZ835GyQJ8Pz27ZcrXZf1XggwFPUK2JUxOKEjBgsKxdp5RD51tHjnZEYL6JzoK0v
         1aCvBkrezvQ8Detvjq6UmMOzo5q0sXqgwNgd3X9bo/h8Hw7UYoA13GYBLvvVPOEavoFE
         V9PA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="tXZ/80a+";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1y+xBRx0kV32D4KipX0+GF9lzkQ2wBc05QPH4xe91c=;
        b=cadmZnqcjiJybO94Q3y82/IXzUEQhJ1mdOMAKCp44jW+y7TGql1MZVDVblIBiqJtIW
         57ooKy8SWVlxmIPM1Ee0xHR3ekLyBZKGgfQsip59TYBRrXq6Fo7xKBmwiOsiY8doWuDg
         pcoEfh4XAHG91FXpq1P9LzFsRTzS734/trNPS0O+eLMEpZEx6PHS2IWRdkct59hHvBDV
         FD0GGEMOKC+Uaj21UdKYkG+qTNj4l7BS2xl/Sqs24GXxkBZd64iB0AOme6+R33Tv9yB3
         GRuyyXM2Veegx3TuZVxCZY4ERFP6XUZBHhGziPmqu/Z67zRsx0xXbiTa95edmpYwyMRY
         941A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1y+xBRx0kV32D4KipX0+GF9lzkQ2wBc05QPH4xe91c=;
        b=IG0BkEcwv8KZPlsejkrsOg6q6RnKSA+o58kOBMwO5zqhXtEFnOxkW4j7x3VsOZ4yIv
         Tx1atw4VeJcthoPK2o2caC8bV1sVS6JGHEo14fI7hzpe7TKONz1VrRFvmj5905gNgxxe
         +fdltw+Q+65kWaby9TMQ472POtJAyALzJgYhtIpq1P7abS8jQcC5/k2YQvWbp7pjMbDW
         m8kVqAWCKQ2HzerlauOXa42XkO/AkuHtkWb4PCNGa48rI1ZN5rcLjM6su3VTO4TfVO9V
         EdAeGTEuRiq28iQYxmrjff5CZxMt5N8oVrKEAGhH9juFCIH8vKaITcSXgvBpry5IdatL
         MHDA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAXwGoCzkDUrJCVKAKs3C2vQ8yjPFZ+EwEpQ8DZF8ACuBDiIs/8R
	EpLSuz3wJ5obh2sKv24uotg=
X-Google-Smtp-Source: APXvYqwBopmP0t0aPwOgIOyF6o/bvp+ew7PzmP27p4V51T+8FTt0xB1tNNTfMkOglheZ+Fir/r28AQ==
X-Received: by 2002:a05:6808:8f9:: with SMTP id d25mr12642670oic.49.1573919580015;
        Sat, 16 Nov 2019 07:53:00 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:aca:c490:: with SMTP id u138ls3666494oif.6.gmail; Sat, 16
 Nov 2019 07:52:59 -0800 (PST)
X-Received: by 2002:aca:4b86:: with SMTP id y128mr4822439oia.179.1573919579661;
        Sat, 16 Nov 2019 07:52:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573919579; cv=none;
        d=google.com; s=arc-20160816;
        b=krJDn7lK+MqdVKMMZV7b05q8NpAQcMXa4c0PWJgY6bwaas4RxAJBJzkmXSkp9V0bdx
         DAvB50RCkAiLVLAvHCa4Dtafiq/KWf/xaWK3PrCxgsplMWWNu1lQtOUcJF3/4mcJvQS8
         Gh9visT2uet+0FP6YOVyEsulB7W6Kx3v7oqHNGBLKHdPOlk5S9YKOF1UjgvZL7HfEFe6
         wcrd7XfYJct1Z5PM0SZikBs9w6/Sj2ESe8zo44hRIn5hUoTXUH8rhDmPcm14Lu4HMbsD
         EVwuekW53RC3a8lbv2dnJL6i4svyAeh2pllaJF4G1VqYUcHBiVccbaGTmvZAUN5ZzTH0
         jz5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=F1hHBwiCJqh96ny5WDuDomsgG69DRhjjUllzVxdH7D0=;
        b=BOhLTyNclMdmmgaZqi4HukwXwgtWP8VMdEg3L2reVPubZ/smdjLeiZXTpSJGzSGnI2
         h0dZDlnbmvKkSfopxHsHRRPMaI01i8V0tt1jRSM1TkgT+4/BlynpNh+HWDfXxW7kbUbC
         n48JaqzdbLqijbSzOE7u/QEoBSvGFX9bKThfoLlnN11CVNr60O29IWpRglxuF2kSj909
         3I5ECoECGdQp0KrPkXdSyecWYihVWA6q6zggG+ZRvRNNnqgY2usvrekDxhs6prJAGUJM
         t1gphyWmZvpxBgqvNmi4sNkqyBPa8+GIF79JZ+ONOiVC37nV+Hmdw6Xj8qbk6UMAFRPr
         mYDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="tXZ/80a+";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p16si872500ota.3.2019.11.16.07.52.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Nov 2019 07:52:59 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [50.234.116.4])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5528B214DE;
	Sat, 16 Nov 2019 15:52:58 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Jon Mason <jdmason@kudzu.us>,
	"Gerd W . Haeussler" <gerd.haeussler@cesys-it.com>,
	Dave Jiang <dave.jiang@intel.com>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com,
	netdev@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 70/99] ntb_netdev: fix sleep time mismatch
Date: Sat, 16 Nov 2019 10:50:33 -0500
Message-Id: <20191116155103.10971-70-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191116155103.10971-1-sashal@kernel.org>
References: <20191116155103.10971-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="tXZ/80a+";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20191116155103.10971-70-sashal%40kernel.org.

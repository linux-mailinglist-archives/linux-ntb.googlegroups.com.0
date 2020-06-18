Return-Path: <linux-ntb+bncBDTZTRGMXIFBBBMEVP3QKGQEO7US4II@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B7B61FDCD7
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:23:18 +0200 (CEST)
Received: by mail-qk1-x73b.google.com with SMTP id x68sf3324196qkd.1
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:23:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443397; cv=pass;
        d=google.com; s=arc-20160816;
        b=BnQXfsYP74fsnodnxkq3hk46BoMJvDL48qmQp3QyGWdA8bFfvYUdCXxigWqN2bRPyN
         URB4/gRB5ccoq446pQ7MoYefeoo07t3HBPo35m5EG2ivexgA42/TjheI6CwXwTb/LWKc
         yv/a9KEp7vQHVR1YGaUMJSkyu/+fc5grKC9rF9VJM1yJTMuQu9w0Ez28UwSPTzg7Yczk
         1dAtttW4SoChDwdAPyIndrONEgNbAme8u5wgL1QadL0Q6lhrchU+Nv/BL0MZw9dEuMhH
         CQ3VH8CUHuFviA4oWLtDd3X1iOxvb9Gke3F4D+AK38OCPhJ9NvcFCSGA/JM9svokMmUi
         uoaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=t8M22tP7zzYCrB5GvqTsw/zdKREG9I1vPqCx5/IhQNw=;
        b=WvwwNNm9qP2dhHNik/V5FaUuqLOVLoetLeFBgNk9JAbnIg2UA/5yGrP5w/LSTCE1l8
         nF+oUuEseEtVdeV/JAiuNS5YZZIDYMaO3LQdEbqE0rumXYxfkrq3st4odAR/vKF+4TrV
         06qCCbFjI83j7nQ1jGNHF58Jcko6KhhcWnPcwI+OFmm3Y4D2zK83cPLkwHFWS8WRISNf
         CNqDDT7WedFHDPfSrHiuRlXGGPNb+sUS6SehEVksbH1qtAswQp+/Z7ePe2iEf1YB7hoS
         uZ63ehAa4WxKlMVOX4HLkeI1jaNI7AuhhNHnL/fII+em2ch4OYfuRzg78vDzWJ+1l1KH
         bwDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pzYbYkFt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8M22tP7zzYCrB5GvqTsw/zdKREG9I1vPqCx5/IhQNw=;
        b=AIn1lCSEKNmQNfXBVWQ+eoLQlKwMtClOUrDvnLIfaVWVtMfCWQDqs3P7rJvFFBJTFB
         AFwOP6H0FpP5yyX0ZvekZdx5664SArqB0mJGJJWeKg5GP6Qxy1q+lnfkKWcSzFI0VMkg
         8Eh5JBeXzsCoiPjpwFK9+QhzGihNAiIa5HM/Okn/9teW5EMq/BuSeT6eamOvlEGCXwOp
         wGkRP0cLri/M2v1hfXSDR1aH0CaSyocWg4mQ3f4ppi0jlkPdgkBvAbLJrfSQ2k60BrCu
         cPSXUqn0JcWNpt2gh4ubY1mV4TkgYR+W1YNoCPaQatfs8TJIl+JrpppNQ3S9wqDuVEvb
         6jsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=t8M22tP7zzYCrB5GvqTsw/zdKREG9I1vPqCx5/IhQNw=;
        b=KLVkxX2q/3UTwr8MwvXQrESFFKGX5IPjTz3oU1gNaBFxa+mTq4257NpuWXquk0vuim
         /CVh3xPf+xcSCp0nIhbGW5Yf5sC0XDBFGdOdFkKO+/LYzZ2OOtqXOLQBXa99Da4p23Gs
         H+phx3L1q05Ef6jVJ1RXdJlPqYLC2xoesAJS6gal7VY3byaT1k0Lwy7frNhVbCy/FPzu
         zFkztiM45oiQASaNSWxm6yspsyjtBQMk0KcMZSj+WzlAfXhP8PQRCO+iPOIpqrRuwWoU
         tKW2MVBYFYiFawFN6AB3ObDf/188alBCZevmXwlXPvo895ENZ0EFIMnyzsFW/9aRSwH9
         SEmA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533kSv38WMoPcqrVdlJTNPz5640Ss9CvDM0lbvECqhi/0VSX+PcI
	7aR48IdBqvoX0MNYuNDkvxM=
X-Google-Smtp-Source: ABdhPJzgwYFqIfV5rzyfpW7LehQyY7Zd3Ez+34hsMW2vmGE/m5wwygeRnpzh9wpfHr0jxiTYO4lTDQ==
X-Received: by 2002:ad4:4baa:: with SMTP id i10mr1488250qvw.163.1592443397231;
        Wed, 17 Jun 2020 18:23:17 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a37:2756:: with SMTP id n83ls1966182qkn.1.gmail; Wed, 17 Jun
 2020 18:23:17 -0700 (PDT)
X-Received: by 2002:a37:4a90:: with SMTP id x138mr1571762qka.74.1592443396972;
        Wed, 17 Jun 2020 18:23:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443396; cv=none;
        d=google.com; s=arc-20160816;
        b=FnY8O9iUYvBNAYJJjuEG3j0ww6tK0Okjp+qgRcQkziths1uPls0IKqRkUc4GSumBfk
         gA6VPpNTfocLjirhqVQD6Am5F+bRz3H/o66q0t0E1P7KR2jXz4el4GjHGyPjzH1RwVdc
         xelPkqkg+mlxSLBUHdwsMhyZfQrYNBsU1PiN7ig4ZVrqWh36dgwviU4rYi1Q6FVpn/+x
         QNBdjrhq3OARwqt2ZFaScdmiaVD6MkGtlLhd1PH1o+RCk5ZPJLPiwqJyExks7CqVR5Zp
         hjtbQ1g/EjCXizyYHAzugf2rLnvzYc2x+DllOBYft0t6WQeVjIPhszVZP/fI50ODwKQb
         jlnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VbP/gDnBV+uhcbekMn1Ga3uktdTc82KV2bSgv8S9rIs=;
        b=MmvOhy1fv+3Qxkb44INoafAWgYdebypIK6tGC4HaDlpOnIaX2JokE8yeHkqY9HNj1c
         ji9o94/ZqedDMxQnX+H7rCUQI/BnEZWqIzS1O9IIovWbtzADSjwzRgU1ZexQBNr/9tuF
         eIT4zFyboJGZV1Wbj15kxad8f9BBVzkP1uaXtdxZi0a5cnBLQ77wc20hpfIvQpdRAdCS
         HAaSytyI5Z7DkUJAXkao17L3LoTIjJuCwXZbx3Wmdw8ugaYka59XFj0AH9FU7sXBzYd5
         a4ERdYBeljvVMIyHy+bupiMxTtFzpdAHKGLLeTs8ozxXqLYgIsz8egHyOza+ECBHvZjE
         dRnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pzYbYkFt;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id a72si71266qkb.0.2020.06.17.18.23.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:23:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4BA3F21927;
	Thu, 18 Jun 2020 01:23:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 042/172] NTB: ntb_pingpong: Choose doorbells based on port number
Date: Wed, 17 Jun 2020 21:20:08 -0400
Message-Id: <20200618012218.607130-42-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pzYbYkFt;       spf=pass
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

[ Upstream commit ca93c45755da98302c93abdd788fc09113baf9e0 ]

This commit fixes pingpong support for existing drivers that do not
implement ntb_default_port_number() and ntb_default_peer_port_number().
This is required for hardware (like the crosslink topology of
switchtec) which cannot assign reasonable port numbers to each port due
to its perfect symmetry.

Instead of picking the doorbell to use based on the the index of the
peer, we use the peer's port number. This is a bit clearer and easier
to understand.

Fixes: c7aeb0afdcc2 ("NTB: ntb_pp: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Allen Hubbe <allenbh@gmail.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_pingpong.c | 14 ++++++--------
 1 file changed, 6 insertions(+), 8 deletions(-)

diff --git a/drivers/ntb/test/ntb_pingpong.c b/drivers/ntb/test/ntb_pingpong.c
index 65865e460ab8..18d00eec7b02 100644
--- a/drivers/ntb/test/ntb_pingpong.c
+++ b/drivers/ntb/test/ntb_pingpong.c
@@ -121,15 +121,14 @@ static int pp_find_next_peer(struct pp_ctx *pp)
 	link = ntb_link_is_up(pp->ntb, NULL, NULL);
 
 	/* Find next available peer */
-	if (link & pp->nmask) {
+	if (link & pp->nmask)
 		pidx = __ffs64(link & pp->nmask);
-		out_db = BIT_ULL(pidx + 1);
-	} else if (link & pp->pmask) {
+	else if (link & pp->pmask)
 		pidx = __ffs64(link & pp->pmask);
-		out_db = BIT_ULL(pidx);
-	} else {
+	else
 		return -ENODEV;
-	}
+
+	out_db = BIT_ULL(ntb_peer_port_number(pp->ntb, pidx));
 
 	spin_lock(&pp->lock);
 	pp->out_pidx = pidx;
@@ -303,7 +302,7 @@ static void pp_init_flds(struct pp_ctx *pp)
 			break;
 	}
 
-	pp->in_db = BIT_ULL(pidx);
+	pp->in_db = BIT_ULL(lport);
 	pp->pmask = GENMASK_ULL(pidx, 0) >> 1;
 	pp->nmask = GENMASK_ULL(pcnt - 1, pidx);
 
@@ -435,4 +434,3 @@ static void __exit pp_exit(void)
 	debugfs_remove_recursive(pp_dbgfs_topdir);
 }
 module_exit(pp_exit);
-
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618012218.607130-42-sashal%40kernel.org.

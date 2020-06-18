Return-Path: <linux-ntb+bncBDTZTRGMXIFBBKEDVP3QKGQEILU752I@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id E3C951FDCB7
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:21:45 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id d13sf1448007uav.14
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:21:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592443305; cv=pass;
        d=google.com; s=arc-20160816;
        b=dXPpJ9oLncWZ8hAfJXwVBwVnCiPXRKCGd+WWHddnilaFV3hc0d7wZINqLytrjQ8fvq
         OjBL+1G7Yzoki2O0yfC9DCeYNH9OEvnfaXKCnS465lkAmw5KIpBUA3LLZTaU0IStlwRO
         Yv3WDCVCSL5C7XER+KOybun0osUPzS79Oco2neKZWp+lcH7KLqf7mSThoaYTEGTzvHRt
         OAAFuUMBwHH9ZMdaAekDu883nWlqTO2JDKAfYIBA7G/tXinpVVJrgCroYP0lgzgcXrkL
         SxUFShYgguImhnb6o5ZO2O7GpYd3O0pWQvauczjvX9VUgEX5GC+OBzqraO4c9Rbgmtce
         PWbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Y9XkPFEV/ucHN1subY8MFJLL1D8U5TX9iSMy4q/Vw/s=;
        b=TddUsXpi2RbuQb6rTO1C6McUi7XwOkydj1PUp9c/Sx7v2N41IlG37oiJTQAlPqUmnj
         DNQkK4bR4mZDig/E9UmOQJzLzsikavfUM4PZ8dSCzfJ/6qbWp4RKAcs3S/HJY8MA9B3x
         BgozNTyLYHwVoQY4E2h/6cwpeDeOP6U4zzMNdlxw9z8Bt5Zeq43r5RWP+EK13SPkyR+i
         a3w4Fz/9hn+J/tl0MsALWLbVAZtid9XNpOUo4tgPjNJFJAIWEfixnlhI9zequkR5y2w6
         X8IKtbcfXbBGU6eL1nLOAVkFk/8DzgqwPmybCNpddH/+r/Tma9Wv3BMjwRcB+7Bd7/Ux
         fTKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XHIzBx9A;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y9XkPFEV/ucHN1subY8MFJLL1D8U5TX9iSMy4q/Vw/s=;
        b=nJRb4VzPRsW+CQpiUw6TnSCEWOH7rdKdphdgtyutiPkCKurtoPh29NAXVIKbNAcVm0
         3/fjrz0LaI5QAS/6CHyuYokA4wTgas0objWGkvJ0X8K5eGYPlzw3S/xDNFit+H2AKv7a
         XQrGOcQEPA4O4tVc6NcmmwjFWiPPFiDrKwloiHpPMQkR0tdAm081i09nWRh/o+CpogvV
         sC/BL1QgQzImlTGu3aorx3pdDGWJ0iK+QdF9D+cGRb9F1q2or/oDQHCjChPu+Srg9gyZ
         HHq8oVlE+Y3rsZql/+Az6otmogtznIrpk/Lw/AeosFI8YuqUGBuP6JLxgbTW9fVaaF7+
         UgZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y9XkPFEV/ucHN1subY8MFJLL1D8U5TX9iSMy4q/Vw/s=;
        b=C5IEwDK5gndTYCd1NzWfE3+5NWCfzkaUoy6wgpvQRdNfStHNlDAhXnvWU1bOf0mi5K
         sZuF+IqHWxMIK8bpX595TkhCgKwiZmRDXEZUqrgou0puSItSHufaDoux6/0+ALOF97Ku
         fCXtRGEitUeVkycjyRfCrUP+RrP802vH2PT2a+pvXxVHH6TzMD0Yc+b5VGVF1cIYyzDC
         zHbHBKqyyP3cdu1+A4criA0FeMBLQOdik+H9LDCuK+FmoUWgq2e+CM8J9JPKUg+RQt5v
         I4r2O3AWvf4gVj9C6w2Q/ZhFkVaoh4O+O7C2vzjPhL+/d4Mowiw0emhYVBHTgyCXry5O
         QFWg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM5313IKwzknvZ7OxW05EYikYZqJs5Ql6wdnxpeT9uRvaT4Sy2JVKS
	XJ8Mv4loo8x9YTOXQOr1MGk=
X-Google-Smtp-Source: ABdhPJwbAyxysmGqURcExA9pJeDUkqfRKIwqLXajFU3nlIyARRxrm3qLJTyjdwDAjJVSBimyCVOSgA==
X-Received: by 2002:a1f:f28f:: with SMTP id q137mr1744393vkh.79.1592443304967;
        Wed, 17 Jun 2020 18:21:44 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a67:c093:: with SMTP id x19ls525993vsi.6.gmail; Wed, 17 Jun
 2020 18:21:44 -0700 (PDT)
X-Received: by 2002:a67:8e45:: with SMTP id q66mr1779079vsd.62.1592443304599;
        Wed, 17 Jun 2020 18:21:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592443304; cv=none;
        d=google.com; s=arc-20160816;
        b=TA7NO9E1minHJV2MtYq3aYYhditG3M62t5YiksD0saeZdxSZNHRk/WQxQ6NxvvNPu+
         Wpm9Mv0J1gU3fm8MxQGAjulcdANP52tuJ5GzIt2AOGgP8utocG2L13ps3MxhJthGb8C2
         FHwDfmQ6WfbLHLiwjRAtE6tsKibgI1lQ4B40EB4/3v+4dl2qPKyfOxD6R6ImcawkNVDP
         KzdfZBr+r2PlIlbbt2TAOvRf2tumPuSDOjN7PU78V69gKTAlITfgRCkcjYm5NxdQfUyR
         Bs2aVDuRWntz1bZhq1fu4rOb/lYEAKPggOO68y5tHu7jhueUqqGwJ/7FeFb6eBUqPMEB
         asBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PsozNQp03MRvgodNBRDkeotsuAN1EIVg3GX8VSseob0=;
        b=D19Co3XhVOd0S1dnktx/SnhZBeTQD5xups0ZlEiFU/m24CCZnLQlp5IvwXXhm9ENKD
         y1xvwvg1rma5mKEjnIjKig/pOrOB2jcoUP8BzfPdNS5XiHUI3JWCPWB9ggWKTdrsvkOW
         w5nWkxcl40S0a01QoBN+jbQ9P7AL45njyMFODiyHUJa0+U749Gs1UOtp9ZI4TRi0jwlH
         QHd5I2vt2ysRN2gNNhs1nudkCsErWpgsf0pSw9PCcrf30W9yk4akzPFQjLk7iPEuV4ZN
         4J+tz+wG1uAmIPVkY7ZKTCnhFRZERMBVzdNlYzI9s+dqVQusvOAFoUEMus8lO3wd24M5
         FoFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XHIzBx9A;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i11si141033vkk.2.2020.06.17.18.21.44
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:21:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C754A214DB;
	Thu, 18 Jun 2020 01:21:42 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 242/266] NTB: perf: Fix support for hardware that doesn't have port numbers
Date: Wed, 17 Jun 2020 21:16:07 -0400
Message-Id: <20200618011631.604574-242-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618011631.604574-1-sashal@kernel.org>
References: <20200618011631.604574-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XHIzBx9A;       spf=pass
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

[ Upstream commit b54369a248c2e033bfcf5d6917e08cf9d73d54a6 ]

Legacy drivers do not have port numbers (but is reliably only two ports)
and was broken by the recent commit that added mult-port support to
ntb_perf. This is especially important to support the cross link
topology which is perfectly symmetric and cannot assign unique port
numbers easily.

Hardware that returns zero for both the local port and the peer should
just always use gidx=0 for the only peer.

Fixes: 5648e56d03fa ("NTB: ntb_perf: Add full multi-port NTB API support")
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Acked-by: Allen Hubbe <allenbh@gmail.com>
Tested-by: Alexander Fomichev <fomichev.ru@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_perf.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 3817eadab2cf..281170887ad0 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -1423,6 +1423,16 @@ static int perf_init_peers(struct perf_ctx *perf)
 	if (perf->gidx == -1)
 		perf->gidx = pidx;
 
+	/*
+	 * Hardware with only two ports may not have unique port
+	 * numbers. In this case, the gidxs should all be zero.
+	 */
+	if (perf->pcnt == 1 &&  ntb_port_number(perf->ntb) == 0 &&
+	    ntb_peer_port_number(perf->ntb, 0) == 0) {
+		perf->gidx = 0;
+		perf->peers[0].gidx = 0;
+	}
+
 	for (pidx = 0; pidx < perf->pcnt; pidx++) {
 		ret = perf_setup_peer_mw(&perf->peers[pidx]);
 		if (ret)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618011631.604574-242-sashal%40kernel.org.

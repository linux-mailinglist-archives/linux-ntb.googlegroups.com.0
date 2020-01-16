Return-Path: <linux-ntb+bncBDTZTRGMXIFBBFNRQLYQKGQEJ3FCVJQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 817E113E470
	for <lists+linux-ntb@lfdr.de>; Thu, 16 Jan 2020 18:08:38 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id i68sf16526187ill.23
        for <lists+linux-ntb@lfdr.de>; Thu, 16 Jan 2020 09:08:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579194517; cv=pass;
        d=google.com; s=arc-20160816;
        b=TsiakVroZFKptcLLmj3oTlxFuvB6gbxr7POtTChCXf3TjveUTHWae3k1ZgX2sneCJg
         UTKHYy5NYUP+YJfR6u/D+PGt0QBfSmAdNMTirR1CQ2Aw1CuyfkRDbimSk+ugCp38+g9V
         yTXPnRLqYenwPsG96jlzitJj3KuQe018B2PpwNnJBG7Mn8f4bVx2xzTaklXYt69jDwtT
         Zbd3zBbE+F3xT9bxFcZxdjXq7Zj26C1mxJ0hoiu1EACRCr3OVAcSXCEpx/pawGW8Wf2w
         zUnXXA//PGYPl/98Qd1qU4DQj+AYJ6Z1spCcDuxbAYunCNtJ0HI+3lio7/UJ20h66cP1
         ksDQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8Hm/HHwCL8N+3dMudgvy7IOCp54PsYVzFHfkJ2YuaU4=;
        b=ec16GN5kfxctHIRilPLXIMb53jDqL9/g15H1hXfC2kl/d4PzhqRbbTXav8IuZ3EK0n
         HdFhHndtQldUOiEojmtWmtClJ6neuD8XsqXSIbXp6rw3d3AVNdLyf9Nii04eH1xMX7Es
         /f5Q4XhROqHC8DC6Z7sVbDziF26VKCj1j2Rbzh2QDm4ahLi2IhPCU9rOz47dxKWUkec5
         TsSJ9JCrFIvOQmNQFEWlyeQ4dqAOWUtj195Xx5PDqlizEwvc76r/KgEEsrEXSMUcSaiW
         niJAdYBH6K/zt/sDY0CAiaTGrkVneulvrhwgZxOXVk1RsAMx7EuJN13YJUrB9DtyRXPk
         mwKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="WVe/z2gN";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Hm/HHwCL8N+3dMudgvy7IOCp54PsYVzFHfkJ2YuaU4=;
        b=p+GY74CNmbv7JG06VB6Zjx8mdf58ED8qaelCUpmYHLwP/S68hgYUQQ3rBpgIbSJl1D
         v1vAd7OQo+Y+ZTZwF/I5DEaDcdeH/Uzb0/ufBhJiHltGok+dgEPTYgSl9rN3kstdYI0V
         oZo/7KLxnQ5ttGFJHYhBuc0STe3USiF+EusL/vHkMyoB7GWQ8xFra+9FpHuZdWA3BsR6
         h1TkG+01JJDxzMFQm1HVf4K8rMMM03SUznXW/LRK/hV++sFnX2+pG19ZbVXWr6TKuU9E
         yIsJ8DOmngad/1416I0Julo2R0mTP9KtB57/abxvShANm+c2yBKSps4V6tVDBduwGk/C
         bEsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8Hm/HHwCL8N+3dMudgvy7IOCp54PsYVzFHfkJ2YuaU4=;
        b=VGtXg584YeGHkKvRVQpf/WI8xM4o3ozOxS0VMvBhZGesoEv7mcjCmlQ6ujJdKNEJ6B
         mBgzbIto2p12UhZA6S8J+Tv6nDzCbSzxMdSppIBJhHGd8WKTXHvGZ6EfgQEOZlHBpxe5
         kk2ngQriAnGJ/3MLyAXh8hEwvQOc6p4spjU1MA1cPqmFD/j+mmbBFDkuRPnzWh9hYMAl
         Gkt3ZSuzoRJVk6to3ImiXYufAmSKFk5jaAZPjfmmlOm3xoxkjLFJba+edc61gFUyPvy/
         dIqJGCtzJYOJB5QsP4BLG19qy3WN8Lc/ZLvBVCNoN45jvCQ6O1sBa+55e+0HlXxh8j7n
         6cEw==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: APjAAAUFuc1QBn6SDddMgSZTfPSAWlV/gqUzIYtx21NFCwAKy6voUekp
	CIvFSQzTRfTSS8dt4V9WUYQ=
X-Google-Smtp-Source: APXvYqwz8BpaRSDLxkoy2JkRJKjv6nZUUwcYaIV+oNUEJ7yT4dTpmo6bL5m1FYLw8bBK2w+uENwxWw==
X-Received: by 2002:a92:9e97:: with SMTP id s23mr4733094ilk.139.1579194517502;
        Thu, 16 Jan 2020 09:08:37 -0800 (PST)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a92:ba5b:: with SMTP id o88ls4062146ili.2.gmail; Thu, 16 Jan
 2020 09:08:37 -0800 (PST)
X-Received: by 2002:a92:d2:: with SMTP id 201mr4637173ila.22.1579194517140;
        Thu, 16 Jan 2020 09:08:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579194517; cv=none;
        d=google.com; s=arc-20160816;
        b=kvN6hUXT1THeUElvbIxp9j6jLijGiH3dGAotWEgglvfWy4eLAlIhqJweBTSrQSjxL1
         oVQLtM9ApBgSnpMV37Mhl1+75EEYgRjYTk8NX4HuBdeX+AsK+hyL9p8UID3DXzYbnYzQ
         9UEdNMIt+q7H4aaEK8Gd9tyC6ZJv6jozY/mmtvOYV0oYZ2zNAwZS3U/gB5ECsZt6iQMo
         Vp+72QIoiH3Guzl7Niak6SYYE3S5ehxNYryvMlWovsa1IPlhADW8XVLXN71qWnD/FeyI
         N6qUktfdHPLzK5i3q3brTkvMvZuiAV7t6PdL3Rv24bmOE/6pBGdwf+ocHdjsUH7UK7GA
         TDdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=OUWjqWDPMB7u3jWNrIWL3uBbsT8AwZQh8/L5QrASf8g=;
        b=ULCtV4ryyuHByLCxgZrqvQB1/XqmftZpf8ybgAOZOvUI6zDTfIucSOg52qkSBH+Vg5
         sLkkKKnLA/Awx4flmPOzJR6H+GMH8dkufkNMab53ejxSgYuejzImM6FKGKJXZp9KeIe1
         ALHnXjvt6kzAftqK+3Bww7glYL2Tr1thcvwY2/JU+068hIwGQuAcwWfwXD+oESBH5Pl9
         knTlGLPY0SxkiRsjxyt55p6ueFf37XX5JSvcCiaYdyj4jZ4/BVCrawaMy5C4hMYOWPRl
         bHKxnQYHLKi9qNG45fn4urWeEGW3VLVrrt0Ipr32FZ1TA/9sibISof0hrOnaj27BOfmb
         W7+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="WVe/z2gN";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f85si1077771ilg.2.2020.01.16.09.08.37
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Jan 2020 09:08:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 51ED7217F4;
	Thu, 16 Jan 2020 17:08:35 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-pci@vger.kernel.org,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 409/671] ntb_hw_switchtec: potential shift wrapping bug in switchtec_ntb_init_sndev()
Date: Thu, 16 Jan 2020 12:00:47 -0500
Message-Id: <20200116170509.12787-146-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116170509.12787-1-sashal@kernel.org>
References: <20200116170509.12787-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="WVe/z2gN";       spf=pass
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

From: Dan Carpenter <dan.carpenter@oracle.com>

[ Upstream commit ff148d8ac53e59802645bd3200c811620317eb9f ]

This code triggers a Smatch warning:

    drivers/ntb/hw/mscc/ntb_hw_switchtec.c:884 switchtec_ntb_init_sndev()
    warn: should '(1 << sndev->peer_partition)' be a 64 bit type?

The "part_map" and "tpart_vec" variables are u64 type so this seems like
a valid warning.

Fixes: 3df54c870f52 ("ntb_hw_switchtec: Allow using Switchtec NTB in multi-partition setups")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/hw/mscc/ntb_hw_switchtec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
index 9916bc5b6759..313f6258c424 100644
--- a/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
+++ b/drivers/ntb/hw/mscc/ntb_hw_switchtec.c
@@ -899,7 +899,7 @@ static int switchtec_ntb_init_sndev(struct switchtec_ntb *sndev)
 		}
 
 		sndev->peer_partition = ffs(tpart_vec) - 1;
-		if (!(part_map & (1 << sndev->peer_partition))) {
+		if (!(part_map & (1ULL << sndev->peer_partition))) {
 			dev_err(&sndev->stdev->dev,
 				"ntb target partition is not NT partition\n");
 			return -ENODEV;
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200116170509.12787-146-sashal%40kernel.org.

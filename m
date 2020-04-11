Return-Path: <linux-ntb+bncBDTZTRGMXIFBBTU4ZH2AKGQEJSZJRGA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id E24701A5536
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Apr 2020 01:10:07 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id e22sf4819596pgm.22
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Apr 2020 16:10:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586646606; cv=pass;
        d=google.com; s=arc-20160816;
        b=heOSvJnW+N8TYc4mn81nBM2Y8sr5IP2QykrO8RlBgtevpJLpfOHgZLxQN3O7zyIOay
         RvK+eaOLFRLvI8tU7dTZK8SwQmj/zMO8KiqwFGCpeTsOyMFQ9YYnfL84KR17YiiOlHPf
         u9Owclli8Px4H5lvMqTZjAOW+oioqykIV5QL5s2j6Z8Z4/9kY9mRa+/uImFVJoSgpk0C
         cnmvyoIGLzLDPRN7tniK9SUxglvE4sXxXE5rFLOBZOCYhuuii5OHa+eCZDYbTTTtZxr3
         M+QVuqYxwnVlfvFZsvZg1S1dUHCzJUvuRLT0C/fXR4wsHURu9YflkNzVk3iVYFvAFOym
         Soug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zLpPEv0Di9upzdth0+DN3dt1k+Kf/0gYp+/vgUKVXPw=;
        b=f+48kv2ecFXR4ROAOeG81JwrIEtDV13h6UTH+nMAQvddojQ3rrn+BAiMhydmmBpmx7
         T7DN9NWU/Y2G7TlEjF/bGqXY3PDfknqDW27xvuy7IqAYnHN70zfufvcIgg735kLTxKo2
         uEYSGkT3Z4xJ3P4hmjjMd2Chp0ScxcrCv659Haq+bmiFuX5C0EoUksYEfj2GyBJvZm/s
         gmgbbcPNqZIuX8WBAypnrNb6PVxoFPXaa3gLKz8LBcjfXoEHsZkXiecBXvu3Amv0fcMs
         8GTTLMWi6N/e/bq8gRUPiLcT0CTqalsRGtyvxhx+lxwzCTYViCUBRy9BlHOulZTfWH0k
         c+1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ekPfmPpl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zLpPEv0Di9upzdth0+DN3dt1k+Kf/0gYp+/vgUKVXPw=;
        b=HvNdKBe4/r/2zUI9NuXhNSev4bHILx/7htCRLTRQ9kjmRDhdGkYKXATnHOG23B2v/z
         HBR7cKZhXdMj5R6EbNCHBcm7YVBC6nJmU6eP7tTgwuwtCbS7uNH0+nPoqODIw4lEFtII
         tEhLiallHAqT7FUwuTpUTi7NhKSPKmJJr5UinzIIQgfJ677BaehPvXKOzf8xxYCl4P4T
         cNpvN9OFbOh4wp3q2mjKDp2GVRqDEAluagZ+LkcY/76FtfFHiq28zN3eV6lWZalqkhz8
         GMIzjLOY6w/F4+eXxbv5hvbskqs3XUToMTCryJaM72NE/7zb6fzjoeTnnu66RhOPPo3Z
         d5Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zLpPEv0Di9upzdth0+DN3dt1k+Kf/0gYp+/vgUKVXPw=;
        b=ClVYT+eaDFJOVhkRYsrZxijLRF5txB7TDDDiALS828wD5tro7Y3JPpMEyRMWvAbE6S
         6XopbFdfZjF7gvjqOw5yDL9PFowXTOsojLtVYA5TNOacjwiNR9tQuZ2QmLNitE3/uuPM
         LHfUahbEY7lXeYorN0E/0ps6Co/Fo0mw75z0pSOqwndy0FAh81QY6H9sCz9wUSIYmkIX
         RdwLTC9Lh7GhkFQ89WzHZ0bfxaBc+EheRLzJGZbEYMx3eAmhwVVQyqUamjCTyKFtQG3e
         cLLOjhy3hiz3LLp2+jyg98p68SwiwVqa41vja/BtWnC4nDTfLf3rfyVYmoXcTr8rh714
         QIXA==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuYz8qmkVahD6Un8qq0Bd4bOqq4GxJ/MS+Cfj8cqpJCsNBAHRxVb
	nJSWq4ZXfkoxEWhTOEWlmW0=
X-Google-Smtp-Source: APiQypKvvHkM6nju9wG0U9/i4nQJ+cZkSvr3khdMgRW1xL+gTrMG2nK25DJPZoqTr4X5jOL5DSv1Hw==
X-Received: by 2002:a17:902:59c1:: with SMTP id d1mr11293197plj.215.1586646606560;
        Sat, 11 Apr 2020 16:10:06 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:902:b58d:: with SMTP id a13ls8823181pls.0.gmail; Sat, 11
 Apr 2020 16:10:06 -0700 (PDT)
X-Received: by 2002:a17:902:968f:: with SMTP id n15mr10545844plp.11.1586646606138;
        Sat, 11 Apr 2020 16:10:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586646606; cv=none;
        d=google.com; s=arc-20160816;
        b=fmCqZjFt7wiHn8YV/KGWfNz1Xx4E++0DdiAgei/KjA/8v+0n2LmCxGtUkYS4MyHEE7
         hU9oqPCGLb5Advya3ZkoIwLpLGpPQzQhfgLrEShvppaXeHpxpFIHe0plcF4XA87s/H2I
         Adhi+qmFQO6M9t3B7PjERRzQOlUaoUYnJMoJL+wPWnU9kI7USAdwWD3EXCClw3j0zD13
         cy42E8tSreIPoNHwFc17Rcu31pScWn8v+DAdBpykEe09tGXz6N2cKJjAXeyx2J7cgTPH
         GwiT5i7roijkl8plSz/PYQcTivOElz5yp3N4IiIB+77SvXQK4CfzLbKzwIUMsk1+cR7y
         qGHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fEIskD/siRj2TQyCBUNEB6lAJATfCXlWO4lDJ1EiraI=;
        b=mOSgWxQmTy3txuu8s/f0D0s70xObCNt7krrs05KM+Aqz5iF8UkJXj6HYjQxPTCdPTj
         cvhlvK/ynEl04kOh9Paf9ZvZggAH5npwOTjWcjftu26HjB59tQmOOvonD8QSk1z82QAG
         5PAmYOaL7rjQvWfmex4xPHUOSnkwLK03faLYviBYt7aafNSUeion27erEapfrUDeK6OX
         lTRJSL0mYLo6jKM2s6dLv7BxLa727nAf9ScL2bmVFfNwnb/5BOKy6QLKzMt6fjmjawBE
         FKOuLrq9XAO1CLsBTACqzAEO3KNyeE9d83TCSMxSWdTJcN6pKjwV3IP5rrztJAb6HAYi
         kiSQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ekPfmPpl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 194si362774pgd.0.2020.04.11.16.10.06
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Apr 2020 16:10:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4226020757;
	Sat, 11 Apr 2020 23:10:05 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Helge Deller <deller@gmx.de>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 018/108] ntb_tool: Fix printk format
Date: Sat, 11 Apr 2020 19:08:13 -0400
Message-Id: <20200411230943.24951-18-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230943.24951-1-sashal@kernel.org>
References: <20200411230943.24951-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=ekPfmPpl;       spf=pass
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

From: Helge Deller <deller@gmx.de>

[ Upstream commit 2ef97a6c181eba48f14c9ed98ce4398d21164683 ]

The correct printk format is %pa or %pap, but not %pa[p].

Fixes: 7f46c8b3a5523 ("NTB: ntb_tool: Add full multi-port NTB API support")
Signed-off-by: Helge Deller <deller@gmx.de>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_tool.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/ntb/test/ntb_tool.c b/drivers/ntb/test/ntb_tool.c
index d592c0ffbd198..69da758fe64c8 100644
--- a/drivers/ntb/test/ntb_tool.c
+++ b/drivers/ntb/test/ntb_tool.c
@@ -678,19 +678,19 @@ static ssize_t tool_mw_trans_read(struct file *filep, char __user *ubuf,
 			 &inmw->dma_base);
 
 	off += scnprintf(buf + off, buf_size - off,
-			 "Window Size    \t%pa[p]\n",
+			 "Window Size    \t%pap\n",
 			 &inmw->size);
 
 	off += scnprintf(buf + off, buf_size - off,
-			 "Alignment      \t%pa[p]\n",
+			 "Alignment      \t%pap\n",
 			 &addr_align);
 
 	off += scnprintf(buf + off, buf_size - off,
-			 "Size Alignment \t%pa[p]\n",
+			 "Size Alignment \t%pap\n",
 			 &size_align);
 
 	off += scnprintf(buf + off, buf_size - off,
-			 "Size Max       \t%pa[p]\n",
+			 "Size Max       \t%pap\n",
 			 &size_max);
 
 	ret = simple_read_from_buffer(ubuf, size, offp, buf, off);
@@ -907,16 +907,16 @@ static ssize_t tool_peer_mw_trans_read(struct file *filep, char __user *ubuf,
 			 "Virtual address     \t0x%pK\n", outmw->io_base);
 
 	off += scnprintf(buf + off, buf_size - off,
-			 "Phys Address        \t%pa[p]\n", &map_base);
+			 "Phys Address        \t%pap\n", &map_base);
 
 	off += scnprintf(buf + off, buf_size - off,
-			 "Mapping Size        \t%pa[p]\n", &map_size);
+			 "Mapping Size        \t%pap\n", &map_size);
 
 	off += scnprintf(buf + off, buf_size - off,
 			 "Translation Address \t0x%016llx\n", outmw->tr_base);
 
 	off += scnprintf(buf + off, buf_size - off,
-			 "Window Size         \t%pa[p]\n", &outmw->size);
+			 "Window Size         \t%pap\n", &outmw->size);
 
 	ret = simple_read_from_buffer(ubuf, size, offp, buf, off);
 	kfree(buf);
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200411230943.24951-18-sashal%40kernel.org.

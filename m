Return-Path: <linux-ntb+bncBDTZTRGMXIFBB5UZZH2AKGQEFQYUQMY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A1B1A541D
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Apr 2020 01:04:23 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id o17sf2276216uaj.16
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Apr 2020 16:04:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586646262; cv=pass;
        d=google.com; s=arc-20160816;
        b=AsPVSuy/DLEmzzOoVqCo0a6t+qmr44UiOev9C4BW9+Vt0ohAcpCVQOFDhs0WsIC0te
         8MZ2JxzujntCmd/ZTNGivAuX9jm+61Jai2aRO3LCdRyr0/VaGFyTHvcNv3I3ydmXuz10
         HUrTgJzISuhn1XQCiuGFdjf2ZvQWVKzTD+E17LNswDiBCDX4BK3fq6vkQvpFCssPbQ33
         KyRiGLro0sULRicMnn0iD5JSg9Pk0OdoOpWsoIXP08ixNZyCp9CFPPDRFPxY+yDDfLDj
         sIARny7s66FQxwcZFQyv8vYsPhWaPwa0ZqTfYy2Evs3TDasBwkkD2cv6tqZJ4qgsPRUm
         /w5g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ayzwfa4hTYkxBLlLCN7DoEk4weaLnOn7+VEW+cLw+rg=;
        b=hgcWbQ5lgnL52BnrGpFumTjEbabZmDkirCs/3h6F0zYjQSoVQqfDXtXkOETHUABR+i
         maoSgEDCdyBJ316EIuWa0XfX+DwNGYNNnRWxqzGahfPtR4uyvSXemv0Ir6EUvZ9EqhhI
         cngAnZjTXy1oxfUr+VOArDbll6MrzIPta6FEx7OR2X+2TcMocKnCeL5Vwal3SzOhrlpG
         TsCfyYOBbwUbrVrZ8wBaeuTaqPfOTJUy2k4OdXg0MmIRby2ydc2Rl4oP/4eL5a5O3uDj
         olS86IIMcAXtFk7d6zF8D2Ze9eX8AyFgIGauU3sJsZnLnwy6oxpnoB0sFr6tE14OsqVb
         vqxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mwlP2+hq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ayzwfa4hTYkxBLlLCN7DoEk4weaLnOn7+VEW+cLw+rg=;
        b=Qlk1BEl0YtYWO03vx7GOE952nFgxXT46v3Do8N5Iqi8Y4z6Hk61lT3x2Qm4I298dfh
         baArd24aQCN8XJgytn0RPXysojIgpvlOOqm8On75cuu7JZVNiPl+mE+axq3DU8I+gkQo
         gXPYV1EbfEuXHkHi1ZDdRN9tdAy8l2MAtb2UepfKX1hLOmkYWLx4wKIdceJbI/4rVZs4
         HMRNcLQlwXNCEJzmVLkUHAStXpzZZgxTn0U6WEjl9BSSzSD6BUm0aCtI6If0jsDFhyyo
         RkYGT5shkWyUtUA61mcJMicoxpMu5kjwxYoVk277h1ZgVvjEXPwIrq5ZOj//JmZUS6Xw
         3LhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ayzwfa4hTYkxBLlLCN7DoEk4weaLnOn7+VEW+cLw+rg=;
        b=WehJ31Oi4KLz9wOe7GRIelgcXFmWUc4IDu9tT7249l+tjZL+fO55a00kXLVYSAYzMa
         fH4tqDETrA7KkJQUoS8VyCcYcJKv9csNt+D+b1WXBlKO+MYb1Hh+M8uBHVyyPETuzqI7
         RQu8Emktxi4g2+yDxcx+SlKpCFftne2bJYGeXfxcHhmO6KE/y2kd10hLFqlOFEsCQbxM
         cfPeSDCwGD78dyKfbngYLyJZ8uK5kmxDfyn9KjC/F6ZNykxAfsdvNgi5QcG/FGC9qI1r
         KrbhMwuO7dngoItK+scxDk0pPAF8yWNe1Kip6BFRR/2pQ4i3J4n4kGv1q2PZfAKZTInP
         qJhg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuYSrDT5Ow7LzxCt/OY1THOknQmNr56qO2WrH6fedM7dIsT9nQvd
	MtlLQynB/XExnt7W/k8n9Qc=
X-Google-Smtp-Source: APiQypJBY/u9zQ2+pOC/mFIvEZFqGg+taEUZ3a4ilShXIAx8iollI7pmle5lY0NIBIuBkzt7YMtY+w==
X-Received: by 2002:ab0:2852:: with SMTP id c18mr7125502uaq.27.1586646262816;
        Sat, 11 Apr 2020 16:04:22 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ab0:7451:: with SMTP id p17ls293618uaq.8.gmail; Sat, 11 Apr
 2020 16:04:22 -0700 (PDT)
X-Received: by 2002:a9f:378a:: with SMTP id q10mr7195274uaq.47.1586646262472;
        Sat, 11 Apr 2020 16:04:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586646262; cv=none;
        d=google.com; s=arc-20160816;
        b=0dxL4mUb6DII+lf3icYaVusDY7zRXjeELnnhImaBNE3O6qilysJKrIQl+/xZGFZO0O
         pbcF/0Vluvn+slrOxa1gKRz2c+j6yQoatBkwofKPGXZkF9DrpEUKxsMAcLBb0K8OyLh1
         kMA72uMKcVcysZBM1HElwuE1+J2GX/sLbVoORwqX87aftJag6FLyrECTy6xsvAWJEdu3
         zYYgUl1n3Ijg42oKUzu63ucM60/5aaa6husEUcGadQm27jc8vo8z5YqiDPQTbaelM65W
         w0ilgI2jPN9VF2CJDGLLT7UesyirjWvKxLScwxOQNY1rzxe6JpBvdg8MQWf3YGfvavfl
         66MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fEIskD/siRj2TQyCBUNEB6lAJATfCXlWO4lDJ1EiraI=;
        b=rjWaJneU/rLw32n5Nx/4M6fTNiufXkbZw1eI7bBcm4FJoCM+xMLfDWE45I9mAc8dwP
         wtRgqXqWG7w7NNB/yg4z8TnlfMzQj4OfqKfP62IPHrr3Barjfnej4KZQYhgEL2JhG+5+
         RzbPSg/ZpBysfwMnAwgbiaYwSqllA4LBhgfncF0it+pDooLdaHpqEzSf3vS3uZiJA1zp
         RND9/8A3wzaQV5jgX+DDVqqpNY923fw8R0VYDTpgscYMy8AlLS7HDhJTYXsU1tyPvnma
         OU39Y5E9Bjyfi7x2k7NyxoPzDXS/NM0cjBBGZcykGiv6KvM4tfNt6fjZ+/Ok1bCBDRa+
         u6aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=mwlP2+hq;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f17si307073vka.5.2020.04.11.16.04.22
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Apr 2020 16:04:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C6636215A4;
	Sat, 11 Apr 2020 23:04:20 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Helge Deller <deller@gmx.de>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.6 027/149] ntb_tool: Fix printk format
Date: Sat, 11 Apr 2020 19:01:44 -0400
Message-Id: <20200411230347.22371-27-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230347.22371-1-sashal@kernel.org>
References: <20200411230347.22371-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=mwlP2+hq;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200411230347.22371-27-sashal%40kernel.org.

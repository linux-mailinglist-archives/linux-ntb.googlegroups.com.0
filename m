Return-Path: <linux-ntb+bncBDTZTRGMXIFBBNE3ZH2AKGQEDQON7DA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D2EA1A5483
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Apr 2020 01:07:34 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id 18sf2037905pfu.22
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Apr 2020 16:07:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586646453; cv=pass;
        d=google.com; s=arc-20160816;
        b=Mx0zzNpboYVYohm0xeKeiouhTS/hmQ9ZsxSJsFqVwlxhEF5/iXRMCbToz76c2gWtk3
         I59pq7sbUew9WU1J7hedaAWRvhJ5O/doTyylLHT/GyaNIcbKrdvPJ95Bj3Q5tllyw+7M
         J98xApFdZ4rGbG4xWImO0rRqHD7qvRvLTbDLFo9TWpWCOPwnehVAwij10XMB2sQuYyqP
         p5oa+ReCzK+U/CjdInhpzK5QanSXD7wZbOLLBvQ9OtT89Onif70+ugZYQRKrJfjplcey
         m19z2qPCMoj5SJn4p4QuZQ1eWHBgA6zdiT9LFBHVoj7DK4RdOWxiaEVy6Bt9ALPzQBn0
         Ll5A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=wIbcIfDbpHd9agjVLrBKVejPyQRoaGltn+fZLM2IU8c=;
        b=AOA9iBgH0lt9NU+8s8eMhkSXqHruDDmehpb2YJ6ANWOPYWm7pp7zxAm0hfuv2zmeUd
         mbZ691uaQ4wAYO3rurREnvsnE/n26FLUI3waMYv+iejaPr3QIFbu31K3l1NyVsVfNbwr
         RevTuauoFcSyM7TpWSpU27fPBKxCP+FxA1qIlgaQDZ9VhPpaNgOjXxoyobhw9e+5rrpP
         zdHagmoS3GAfShJy4qo6s5IuqmnZ7NRBgmlNUB8Wo0owX/UEtdrjsE1e6+A7WUZ9G4r0
         3qIvPgRVrGzdwnzX9gj8JofpXljboC731TsVwV0SbynW5NGD8HYwLYZjvIReCBvBXn4c
         nciA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WAtMGdyf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wIbcIfDbpHd9agjVLrBKVejPyQRoaGltn+fZLM2IU8c=;
        b=bn5wuelzgtoYD4kqFNa/YBhC+7mf4QfuRBf368ETRmLf/nkOgO0UTuJvSEM/AW2gVn
         HrZArvdQMKdk9Cp8Fo7aGGvWq2xR2mIcTBkpLeezrY38b2pZivtihNaYMbUwOObqNZML
         yfkwy61y4S7oss8JZTEaM4UZQiGZgAe4YZcap/RDwpufZhPYlDLCnhldiAwNxWYR7Qn4
         5Q5Q4FwAOSDC6VEsyum6rMt+NixSlD1izT+FWvWMAunsiTa7ll2mO+Hm9MOuvpNBpwDg
         OBYJTSi6cJj+NFpc7a0SCMcgRxSf3dFh92WUQNWVyM25li4OJQiqU8GIFiC75D2djxLi
         XUXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wIbcIfDbpHd9agjVLrBKVejPyQRoaGltn+fZLM2IU8c=;
        b=LmC/ck0sE3AAVmL8N9uxhHCTQEtOb/KPQ1cJX2zxJQjrV7QRCUaVdyAgRjoGDiT4Ju
         RCMPfaOuaw1usqm/qILLLrvhMbNcLUodLtGt6pOvJTIcg065fNrNlQpbj85sErAriN2X
         41siy7BDiKJajGN6WE42SWto7BAX36PoiQ0/BCIcKBxvguBlu7WuuTTMABGxZZi+txhr
         ybQWMqjnaI4I7CzI53OPEY8BnJUWLb6LTk0hbjvKCBcDK76XVH7WioQb5JnrVJxwx6Z2
         ul7hCAoQM/nlLzoE8EIgESC866e/5oYDET1jB9YPu7hmFkLDS/CP/kUXLR4iP6z32tHl
         lF0w==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0Pub3CfPA9Wt/LGk9MyWRJ2eMrJ5/5mVsXooGwhEDtFBz0vXRBSMP
	FPrIKdciyuORskF3fzJd4+c=
X-Google-Smtp-Source: APiQypLiDdBsN9gYPx6dYRzZGVgth8do0xmvETR/t2MQVWtUp9yRXJhYgEexKCmWs20JItbDW20OUw==
X-Received: by 2002:a63:5645:: with SMTP id g5mr11333427pgm.268.1586646453015;
        Sat, 11 Apr 2020 16:07:33 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90a:5d97:: with SMTP id t23ls10156145pji.0.canary-gmail;
 Sat, 11 Apr 2020 16:07:32 -0700 (PDT)
X-Received: by 2002:a17:90a:3726:: with SMTP id u35mr13386160pjb.162.1586646452690;
        Sat, 11 Apr 2020 16:07:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586646452; cv=none;
        d=google.com; s=arc-20160816;
        b=MkZGwQtwRIW4edpPiGc5dM7Mkrl7DqEw23ZPH/efqOQFnjpApLzetwx/dQmZ+Wo/Lq
         aLeaYw7CTO/1qH/E/PaeCNYpnf0kCXliophVelFCSRJnXH8152GdLarl3XXeRq+1RzIq
         Ue5N30npkckyIndpHKGgkmSa04HROIaTaq9NP8x2Ykt2VCTwblvFsgHc62nOI/Z5F0ot
         JyIiJpHuFESocjckw9VUab5QK9AuwfDA7YNmPnPsKw7KyEE0UM5/MFqtdm+hkDsXfomG
         d61C+zVca1pARD0G5mM55ZTG6eZCyZOZJztObv283R1CVuOlFyvR3WFUsFG1suRgUxju
         bFrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fEIskD/siRj2TQyCBUNEB6lAJATfCXlWO4lDJ1EiraI=;
        b=oNM62SaQ9WIILh19eTvZvRMdx1a7AxIAu/Knw+ZRcbceUm+xMH5bEcOgcgqvCUZaLr
         UKfvYVizQy5nJmH4KeIOz+keJjiRSEutQY1/w3KxarxJlRfULpR/OZUXWosruudr0DH3
         gXBsbI5fO+BekuSHSaC2Xi2pDAPJjhcblAge4KIMu1GAXIPzurh9fHjm6ToVH3oEQaTk
         1Sfblf1wH9o1mTAbzV+Omie9Mu+10m0RlT+1I7VkSKzTr/tyc2/1z1N9cYwpOKogrzWg
         Y+IHPvVn16HaGzb+yIFZjYk3gorTN2CBkmoxT7qeA3gBK0eC1Cy55rwlrkSIrW1xxmPy
         sjQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=WAtMGdyf;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id np5si191719pjb.2.2020.04.11.16.07.32
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Apr 2020 16:07:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D105220708;
	Sat, 11 Apr 2020 23:07:31 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Helge Deller <deller@gmx.de>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.5 022/121] ntb_tool: Fix printk format
Date: Sat, 11 Apr 2020 19:05:27 -0400
Message-Id: <20200411230706.23855-22-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411230706.23855-1-sashal@kernel.org>
References: <20200411230706.23855-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=WAtMGdyf;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200411230706.23855-22-sashal%40kernel.org.

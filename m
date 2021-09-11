Return-Path: <linux-ntb+bncBC5JXFXXVEGRBG6X6KEQMGQEQQFN7FQ@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B270407713
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 15:14:04 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id g15-20020a63564f000000b00261998c1b70sf3764623pgm.5
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 06:14:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631366043; cv=pass;
        d=google.com; s=arc-20160816;
        b=nRrV5BpObvV6mNlkjr5S7OavHtrzEBhu3YEtofXcLk9pzvP80yD4nfc9L5WAnrwfT7
         mDJYAY3JNMiDeDLzD9iMV/i6IPvMbjBQCseW6MCh8ggnioHKR4aI7jY4232zmy0qsu6D
         Rj5sd0BZKcM/O8DsxcTsIRjTCx5Askn+87c34T2nOPp1JicaLix/9nR4pCGfds1X3Ctm
         lMMiD0QG9KLVetXAo8N1WwI1lBYc+jSpf01Psj31Ubh9hNQYiPArfrM1QNov0YSaQmL2
         Pf0ToAx35HVNlifpBjK6l3s/UiMRTaf4V9FNl5HiHT7voRFXqPnYu1MmVSCAUQV7kBlT
         n1VA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=6rs3fsDs82foLYs1qnwYQXrONLNPStmYEz6lRWB5zEU=;
        b=jxw/8egaaI4PyRUNZztIKbDgZOI9jId18jAP29hKEwDW4vNR7w1b4UuR533935Q5cH
         i4ZJ8AVprvVWTB08iDoHz4Wt1nL69TQyZTAj1upqjkhGT2bIQSdSSyzie8l7oJlO3dlc
         9pVcsRU1Au6wNFRBTGpDXOrHCzkW1P//aTEc2J//xQRa1S52JLTvL9UBcvD92hTF7RQU
         Kj/NQ/PTkdHXv+fFeKuWmK9FjpV6ib3S/PQ0mbfU5kj5WUXSAKdsvFZ+cayO8vA35x13
         7v7zJUb25iy9YnMIwDaA76ZHxrKtsqGEgNdvBJuajk1Xwe6i68tTscp/Edhf2NNXjayR
         O3CA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sXgfWvcl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6rs3fsDs82foLYs1qnwYQXrONLNPStmYEz6lRWB5zEU=;
        b=Q0SpzyyFzui3u2mnPLeIJ6/0eQ6aXoBu9C62X6DhNDuq1Usb0HiwC5mwW2al4f4rR3
         /ngpjaUq+pI8XR5WTHV9+VTXapqLsTMMd0OHat4JUnPJe64TwLWLv56F9J4w/fYYW/N5
         mDo9EfNYgp6tEhAdhGncqhp6v657o4ta3lPklyyYIGys3/GLRftA2KUyNyE/VxOdlQLb
         IUaLJf4eomafqxzUmBycytXH3k8S973R6erx+zc1dJkzsAPttlS9yzrgxmVLitQUhCTr
         b8C98iitVUUMemmTt9FPDCtDu+VTqwLAEsNK6PaKngWmATKBXZVil/sOalGcZHCzTUXj
         G9eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6rs3fsDs82foLYs1qnwYQXrONLNPStmYEz6lRWB5zEU=;
        b=knGuMnMWW1kvDLmuSNjk4bi55GUO3reNxmV7NgnWVYXCM0wmGnbL+20q0enP2UlSnj
         NoYoyVcOt1/EWqxczeAO254+ixmqMGOH+bzFETuLa/MDDmWjyjS85ifmgZyn2vGD31i0
         BxyT6c27bwfDpJmWScsDX6pVln6l+CfeREgNCr1qSIfnNAmNhWFNfHBTsbnzuocsaSpm
         K+zweW8bO/JCx1OxgKaiGDT46svFunDFToFumykyBRQVQ7x7O7CrpvcHiVBtyuYGTPyD
         HUyryfJNNZdqxZ4YHMLU6MhZ2kq4x/qHh3/AkVjer07YECxp7MUKcFeRF5cDGsY3SYV/
         8nnQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530RyQCCjE7p9oZIpl+/b3UrlSN/GHEzJJhy35xY9oSgkW1kdcnF
	iz9feO5K/NtRPa7uvDMGqXc=
X-Google-Smtp-Source: ABdhPJyl8cW2h0qdCKqssAB43ME4od9o+Zc/6mDDsN9z8Y3zpTKIcSMZ+U61co0xdWjWGh2tF0rZsA==
X-Received: by 2002:a62:e302:0:b0:3f2:628b:3103 with SMTP id g2-20020a62e302000000b003f2628b3103mr2525060pfh.39.1631366043175;
        Sat, 11 Sep 2021 06:14:03 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:cec4:: with SMTP id y187ls611488pfg.1.gmail; Sat, 11 Sep
 2021 06:14:02 -0700 (PDT)
X-Received: by 2002:a63:6e03:: with SMTP id j3mr2452887pgc.465.1631366042506;
        Sat, 11 Sep 2021 06:14:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631366042; cv=none;
        d=google.com; s=arc-20160816;
        b=S3kTDfOELflMCfLgbwM15L69wc8ZjqWCyjWt6HFX0qijaRPWyS6cMHQrhqj15kNIbf
         de0SRl9eZgP+DZ7aDTPOk4GUDE9HS8cuPydmpwyyGxsLty9ETIMexyvfTmphGjpbNKHm
         dSaTjU/3JQcWpI6CaPIQInTXDfz7f4D4qFA/vNm5FcMWhDZoDxKlzyEZ+tJrTx5QwbFo
         X7x6WGSs3sc37ibtftt8lNfSYPKHz9KkkLV+HvR94JK0EDNj9XebspjPrbIJTh2Pumt+
         QttQQJM/S8OhE3Ddawx8zX0fDf22G36jvjPcmt6Cw8skZDpijDOERjp0RY9VAhzKCwfX
         QIuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9/R/TcPPlDoUjGXbFAnbCMCxLS8xB6PjWQ03hQkPibw=;
        b=0atVYFYvMkFj2SzzLL4SIhvNbQLq9cVfwSaWbYrGxS6R2qkgUrZTmjd2hTqSUYpqlG
         Dcrf3oe5e4kxfpWAR/nTmiJVJICnP090bSJoQHNuVix8B9kc8EVjo3KqQlC0yhisAXbH
         J3vG77XH9ZgTTlEdc2Rn+0TVj7o3ilSgyHrOKQsrfNUj3kHrGST9WsvVl59v4y3IH2wh
         o60V3wED12x93KAkd2wmKN7/vXPjt0q4eHU/9b4CgWEY4AzVYn6Rx7QDBFgO0DF35IZt
         qzZcJa6SWRulpNriOnGvNrhLStVKTTS0l9Jnrtz/Ru0bmWwRfsM2Hh8WoX/f4Wc7LIdW
         8USA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=sXgfWvcl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u14si117939pgi.5.2021.09.11.06.14.02
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 06:14:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 62DBA6135E;
	Sat, 11 Sep 2021 13:14:01 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Logan Gunthorpe <logang@deltatee.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.4 13/14] NTB: Fix an error code in ntb_msit_probe()
Date: Sat, 11 Sep 2021 09:13:44 -0400
Message-Id: <20210911131345.285564-13-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210911131345.285564-1-sashal@kernel.org>
References: <20210911131345.285564-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=sXgfWvcl;       spf=pass
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

From: Yang Li <yang.lee@linux.alibaba.com>

[ Upstream commit 319f83ac98d7afaabab84ce5281a819a358b9895 ]

When the value of nm->isr_ctx is false, the value of ret is 0.
So, we set ret to -ENOMEM to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_msi_test.c:373 ntb_msit_probe() warn: missing
error code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_msi_test.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/ntb/test/ntb_msi_test.c b/drivers/ntb/test/ntb_msi_test.c
index 99d826ed9c34..662067dc9ce2 100644
--- a/drivers/ntb/test/ntb_msi_test.c
+++ b/drivers/ntb/test/ntb_msi_test.c
@@ -372,8 +372,10 @@ static int ntb_msit_probe(struct ntb_client *client, struct ntb_dev *ntb)
 	if (ret)
 		goto remove_dbgfs;
 
-	if (!nm->isr_ctx)
+	if (!nm->isr_ctx) {
+		ret = -ENOMEM;
 		goto remove_dbgfs;
+	}
 
 	ntb_link_enable(ntb, NTB_SPEED_AUTO, NTB_WIDTH_AUTO);
 
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210911131345.285564-13-sashal%40kernel.org.

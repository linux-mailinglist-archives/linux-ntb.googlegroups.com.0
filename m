Return-Path: <linux-ntb+bncBDTZTRGMXIFBBUE5ZH2AKGQER3QXE2Y@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id D11421A559B
	for <lists+linux-ntb@lfdr.de>; Sun, 12 Apr 2020 01:12:17 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id f85sf6125606ybg.12
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Apr 2020 16:12:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586646737; cv=pass;
        d=google.com; s=arc-20160816;
        b=QblqFrwKIqHAAsyFTFWQP7HRaGdt+TGRMlI+ZotyT6UEB2yf2WKYMRj9djEldVL87O
         dQlmRFBlBEp26ztre7xKwWL5cuOXas+mEeMV1075/Y+v2KiUxtA0iwYp7SQrUjJ2XaWC
         WRmIZNJnnJ/QrTGdMUBaHHOukxD31Qv7ZH2Uuq3GinexTzudSELM82GOxXQu3h/sJo2a
         oTKJgBpQYKGC544ENdCBPW9WQ3KRLszMbxpd7lkj5CpCWglMNEtY1HpbSMpNBBrlVM00
         22cf1oOY/eJ+cwN9puQHjHMz9Yg23aZoj10NvcyPLZHTpvelsd8Fjfbq/1BQIgFSDmbB
         /fjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=QSfqP90oXM82MqLzDAvbvpk6nfCpxGtxCl/2rn59aXo=;
        b=vYpDMODSoG3PsVNWNPUk/6BYySujMc6wPqbmkPVpvKZmClq+P/5Trv9bAlf0wFLtJw
         10FvkuhSOyezStuLgsWILrsNp0Qb5vJpI35IHGF7loESj/aWmdSQoHT8ovLcYJYKk6Jy
         9BWjUZBO+x8H8WGnxT93IeYjPn3tYIM/uGZPsOF/nPofo9vx8AnS5Y5JyuIrEMS5aXDW
         AUSI49LruGA1/qoNVeE0W8pK2fi7SrD7hNQcvC7zwPmMW5QPtNHDupYZVUUmlXDCp8wN
         0GvveYzaKls3sQ7L5338I6lQepWNwm7KsnpqQ4cwAPnDLHtFTY2YVsK6rg6/WkkaXlsZ
         M3mA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0KAcJ27F;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSfqP90oXM82MqLzDAvbvpk6nfCpxGtxCl/2rn59aXo=;
        b=JIYF5kCaGvdsWLeBm1zO59rK3rbnUqrAS5NUSZIPSMNYr6jFdFVKGcnsP/6Q5M12sQ
         mwnxwusIGWBeC+WAK5q8dxA7Li7YnyroqyIYtKl/fFExkqYz6M1hpKgTVItTB7MxyvF5
         oAjUps6za3X16YDDfvjuHcDo3TKk8Gyw4mNwDOkfSvmaLUYe31v/F9wpjv83zA7KRxw2
         5rndLHdzaxJR7wM0xAWwsfev6SbYRO8FImId+1KZSvsZOaFPS1oWzJSdQin1vyfaN24W
         GY35YF+OCBarK9cD7SZA4TKm/Cj7Q9M4LuQgQrImLtNu77/U3exyc1Y9NBXxZLqMuqKa
         2mug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QSfqP90oXM82MqLzDAvbvpk6nfCpxGtxCl/2rn59aXo=;
        b=linGyUUTquVqlKPJUpFqGDdYjnKHyoK5j9QwzdJpU5pGXEniCiUZDtoAioqhSgGiJI
         dU+Ti2+dbi25YybjkNmIYT10S+wBZYVY3AzKaNQvdPFbfv4DUCGbK30nruaO4cj5Iczh
         sTJZtVsPCchpKDDgzK6rGrO3cqU6SeCAjXTO+3fTZe7mJWuxeJs5syO6r0TdtoZ2WQrF
         vPhNP7S4EgekL2yA3ZjXymtez+MkN7KkBdgLA6Vrw8/PMno38G2Afo28eBcTeBiI5qO6
         ASHBsO5Q1t/F4olhsfHfVAfsKMhT/XliSHYx2OKw6ZbMKJeh92LqjLQV0C4eHxCi+AxU
         Xz5A==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AGi0PuY3XsQdTshqPmlPvzg94LSsnfBH7o3pEuZids8RKaB3Z4oihLxb
	qBlsK4AK4q6yeW5u3IGwld4=
X-Google-Smtp-Source: APiQypIDy4pnr3iTOHyzXfVsktbDVudNtzAzOKZmrtGpKoP2VOl6s0l/bY404vCuaKjXYXBg4gCrkw==
X-Received: by 2002:a25:f308:: with SMTP id c8mr12894023ybs.261.1586646736924;
        Sat, 11 Apr 2020 16:12:16 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:15c9:: with SMTP id 192ls6904369ybv.6.gmail; Sat, 11 Apr
 2020 16:12:16 -0700 (PDT)
X-Received: by 2002:a25:446:: with SMTP id 67mr18263894ybe.478.1586646736574;
        Sat, 11 Apr 2020 16:12:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586646736; cv=none;
        d=google.com; s=arc-20160816;
        b=jM7CMiQFhopw58VisP0D5dvTzlSpu2AfZHvlM1hE9F7flbizeazF4/6BVII+/aZMRx
         UOsXXnIj24/z8HiFNaKWjDCwS+AEMapgVjlI49IFm2dG1Ot1t+qKivnvc8XWP5jW7AsZ
         N+5VOIVn1DNC+i3tClLoQ+zLqAwkgCiwuKGZNv1lIu/+cFQxUsm6CvxWtZAQcW+1Qip/
         YZqyW4hZAGllOhCLYXVMcXjK30NKfvpBNZJhsxXhgTMecUZtZ/afWYNDbscmdW7w7wzu
         kDj3qcgyuMGaq6jHJ/a60L4hX+leYY0CqqSdo9QanJr15X60QgEhtyVc0oPsKxDX/W8x
         4L/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fEIskD/siRj2TQyCBUNEB6lAJATfCXlWO4lDJ1EiraI=;
        b=Frs6C794lTZbBSNoii/S3vUe+xJ5O1Rd2kRM+0joum/xk759cPjs/KUJt3JSUX1tpy
         /1Wyw4IBA1TqEAIn8RwixtBGWBCdN0xB4zhm2FpGBW9gfygaxIX3YKtaH/t9jQPt0OyE
         gNOdRfRtHv2zE7vqfr69uFrfMsTKMDIJs8CXoiGI36vtYN810c/Dq8vhIfhnslXyA3I2
         Pquz1gCoUDQ6E4XwE4phLilLPaKLvzC85NXL19QBnhRffDUWvvI4ri+KMDJi2mwAunHE
         MeSylBuNeUvHeVkGPUyqK7UgY5gZUnwSC5tIyYuqTI1KmgjvP8c4VyQXUfUxyPfuM05r
         pRBA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0KAcJ27F;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y140si355999ybe.1.2020.04.11.16.12.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Apr 2020 16:12:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2111220CC7;
	Sat, 11 Apr 2020 23:12:15 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Helge Deller <deller@gmx.de>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 4.19 10/66] ntb_tool: Fix printk format
Date: Sat, 11 Apr 2020 19:11:07 -0400
Message-Id: <20200411231203.25933-10-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200411231203.25933-1-sashal@kernel.org>
References: <20200411231203.25933-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=0KAcJ27F;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200411231203.25933-10-sashal%40kernel.org.

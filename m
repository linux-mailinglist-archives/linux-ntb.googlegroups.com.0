Return-Path: <linux-ntb+bncBC5JXFXXVEGRBZ6W6KEQMGQEA3ZRYXI@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 5863E4076E7
	for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 15:13:12 +0200 (CEST)
Received: by mail-ot1-x33e.google.com with SMTP id k21-20020a0568301bf500b0051b1dadc0a4sf3079923otb.15
        for <lists+linux-ntb@lfdr.de>; Sat, 11 Sep 2021 06:13:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631365991; cv=pass;
        d=google.com; s=arc-20160816;
        b=LytWFQzITyj7cFcrTgbqGboyUOtzm2NvHMj8RajdK7IbOqUA4W5Tcn2Z52ZarUCcy6
         IApu+Ig37k7FS/2KVJ//h6p/ZNaklb/gu4T7EO/Wt2lvs+NYPp7LoasKUhbVtGXRj0lv
         yq5WCtc7O4iioGwzrkyVuHxPDQz4JNvqLMgALloDgvqqDCvitHEgv3AH+ve9PqjEzUAN
         QXK6v/QC6btUwSR8NSPwj5xEJ6q4oOUruq3xi9X8gNN+s0TC2xB2kIUtW7dKM0yIr9bE
         ksgi1pLjT6JLg0g+dO3z+VJj8fx3EjOI/+vfrXgue7sYe0oLYdJMxJ394v1Sg7Q7KBvw
         GO4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DXXe50V6gW4vnM/j7HJ3m7ao2UGWB2SU2k4cbviNOXo=;
        b=DgS4r9FmBVoauYZ5Q/gxJKfqd5cAy244g1g3bFcPEUdIHe9I8DRuEB199IzCDsUCN/
         KGz9waxkPcjXQglY/68113TfBqDLmyxzwt1LGp6gH6QgssnFU8u5z7UOG0dgvvJWc4CW
         Zbcd+UesSDhipI4Hb0rtuevJBwoTZvJfoWKOmdMG2MzzNwXMLXTyZpGNvDH3cJ5kZ6cs
         XoRZUU5KjbU1cUtkoCn70ZyVtMRmJM/vv3Y573ykCzmcOV9UOff/c7xTxL/rRVeCxxEv
         5yee21l18q7RyTigQbcC4z6eErcLR/hVjAmddXwS8UudUhHsDBJy525fpmQT1IERkheB
         Ozew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uZGyPAPU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DXXe50V6gW4vnM/j7HJ3m7ao2UGWB2SU2k4cbviNOXo=;
        b=PjEEycXWQWx06l3D+Abk45AvrbIz8eCA0A8mwABzllqONYi/ZTu1U92ZBQ7ngQ9r+N
         j38e41sRBGdOslvM2sPbfcmIftNx9MhTHNi3SUMKB6crRi/K7xsTNL4VzONlzQhJ02Ck
         XT3LsP2rMeRRcDP4Kc1Dsw988ROOqpQ9LyVJTH8cSiemTsUcSSOyBUB2mVyvPYOVCswt
         d5Js6FzT6rXG+GpRQwFZvKrGpJSmoUpJYk1gpmWFXZDB76cTcHX/74ppAJDs3C6U2sLC
         3sCVbzdyduoZxh0kEIJVioz0qrGSS7FKiHN3cWBNSvh94GRPQG2JEA4tvQCTcOHYk1l3
         QsVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DXXe50V6gW4vnM/j7HJ3m7ao2UGWB2SU2k4cbviNOXo=;
        b=JuUJzAYUh28KNqTpYWxVUEf+yiqHexBFXtgIf9xfwVhzEcCXONyXGrWAfsFMmoC4qf
         8vuGmC+eQYWHkWi1FRCXdnsKViAikfWfZbIggC4OR1a2DtEYoRwqW5IXIyRhOy9mNN5n
         gvkUcAoCyRNVzBNQoL384o6+QVpM9LI8TAlLniU4+2gmJx/mXg03BLv76mXq6V44Zffv
         qa+X4H716jxt52Pvhu71WImVnAhiI14ffFdzHJkkVZSbMDNmj+txQ6Zi8kkrNFvkJQtR
         S8zYSbNHS7aFceL2qsGt3h5nMH2EIQiI/WqpI+27nlTW8z1NiU2VmwiM3UQ8XzkXD9cV
         r21Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM533jrqc3jAiuWL8zy6ZFVxvg3hOkHHEv55K3MF066uZFTTLyWXZA
	9ekblM5s/K2o8o3LQTF+qdg=
X-Google-Smtp-Source: ABdhPJxKH45RvUM1Fh9Cxz5uqD8J2MabIYKtvgfkB1huGHJjcj7XgYkJKdEAO/ufHKMB2Dtb5OML5Q==
X-Received: by 2002:a9d:309:: with SMTP id 9mr2276387otv.365.1631365991115;
        Sat, 11 Sep 2021 06:13:11 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a4a:bf03:: with SMTP id r3ls98551oop.8.gmail; Sat, 11 Sep
 2021 06:13:10 -0700 (PDT)
X-Received: by 2002:a4a:e792:: with SMTP id x18mr2140557oov.53.1631365990722;
        Sat, 11 Sep 2021 06:13:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631365990; cv=none;
        d=google.com; s=arc-20160816;
        b=ouJFUHGaYUED1aC1KRwQ70p8+ApyT+yNdKyGk+gVI2rsgQouGjeXcXXSzVhlU7Xcn5
         ddT8/hWw7WcRptzCYf7JzDtaqz28Fcy9SWQSoHJQWxoFKh8hEw5GaCs/sESACwEwaQr8
         FiEbY/DiR3f4spbLb4YpSdn3ru1J9rBjg+s/EzYqhcDvOaN4BSehtoOCZnIENWGzNvUT
         A2SchbseLYfSkpRBDZ1RNM7SO7XP2A5dSD0YBV39N0RBiDvtRTcMORaBXlBl94Efi457
         u21wwYrKAgNqIVaPmUQqJUDBf+HxR3cuRWoIu6MZ2qhdvthpshVUuXMTgW54jTtcLySM
         C3xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=82D2tQnPZtrclkJU4nis6AIQJVpse4IZIU3/9KO6uUY=;
        b=ulp6yrmoxsDtk5uc9qUM4qvyG2u2t8daDyHfFz7QHBpvpJdQL8ON9jqnoXFXCQfxOh
         POtu6JbWUpUT9j6umNIu1E9qcVFmJEXTCtA4LLpk6CAOTTTQKO3KeV4J8kzcY/FOrO0b
         1pt0+VdlU6SHpIGHCavoQHfjNb+WCXw9LBI1nqsZLEMMeQdyVShZrff0p8aKBGvljnhB
         G9ArIYApK0ymaBuoLxSdLYIeqdZIS23wp0nKNT7iqRmOIqAxeEwHfT5dFAfWzbYADn0V
         pkgDfEgOnH+KIldEQR+z+JXH+dTuRcBkzXTGtx4Gy7Lt2eATjgX9cgLo+LlEf7bgvm3x
         hOnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=uZGyPAPU;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h24si169394otk.1.2021.09.11.06.13.10
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Sep 2021 06:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 31B6461215;
	Sat, 11 Sep 2021 13:13:09 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Yang Li <yang.lee@linux.alibaba.com>,
	Abaci Robot <abaci@linux.alibaba.com>,
	Serge Semin <fancer.lancer@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.13 28/29] NTB: perf: Fix an error code in perf_setup_inbuf()
Date: Sat, 11 Sep 2021 09:12:32 -0400
Message-Id: <20210911131233.284800-28-sashal@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210911131233.284800-1-sashal@kernel.org>
References: <20210911131233.284800-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=uZGyPAPU;       spf=pass
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

[ Upstream commit 0097ae5f7af5684f961a5f803ff7ad3e6f933668 ]

When the function IS_ALIGNED() returns false, the value of ret is 0.
So, we set ret to -EINVAL to indicate this error.

Clean up smatch warning:
drivers/ntb/test/ntb_perf.c:602 perf_setup_inbuf() warn: missing error
code 'ret'.

Reported-by: Abaci Robot <abaci@linux.alibaba.com>
Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
Signed-off-by: Jon Mason <jdmason@kudzu.us>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/ntb/test/ntb_perf.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/ntb/test/ntb_perf.c b/drivers/ntb/test/ntb_perf.c
index 89df1350fefd..65e1e5cf1b29 100644
--- a/drivers/ntb/test/ntb_perf.c
+++ b/drivers/ntb/test/ntb_perf.c
@@ -598,6 +598,7 @@ static int perf_setup_inbuf(struct perf_peer *peer)
 		return -ENOMEM;
 	}
 	if (!IS_ALIGNED(peer->inbuf_xlat, xlat_align)) {
+		ret = -EINVAL;
 		dev_err(&perf->ntb->dev, "Unaligned inbuf allocated\n");
 		goto err_free_inbuf;
 	}
-- 
2.30.2

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20210911131233.284800-28-sashal%40kernel.org.

Return-Path: <linux-ntb+bncBDTZTRGMXIFBB6H5VL3QKGQEFYZDA4A@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B5C41FDB18
	for <lists+linux-ntb@lfdr.de>; Thu, 18 Jun 2020 03:10:18 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id c3sf4692788ybi.3
        for <lists+linux-ntb@lfdr.de>; Wed, 17 Jun 2020 18:10:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592442617; cv=pass;
        d=google.com; s=arc-20160816;
        b=mlLhqx6o34uK7jJtl2v8hRV3zw+7TlTETv1aH7edHMResFDYN7iD8h+N+Z0L0A5yW5
         xGq0E8rrUBHYku1ImbF/kAshgoP2p1VqlmK3NLDGhGSYgwebveNiIbD+82ql8h8n3X/9
         E05bXpRVnVzTrsm3EqxD1ARiQAv1pu4nNXYzQAUb8TAcIeaBUWJHq2yZosOmzdktBw1F
         L3Bkcj9V+yaxg0rreI7XqHhMYZWfVxb3H6AUCQgGetqGUkY3DfQmHAvVEMUr76oixXdV
         z0owajtB8aUQCTBUdf0Cfn+3OhObO8rueC05HSKhK0gM7t/gpXGFihhERMwYL7dDzZHl
         JI3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=kkP12aprusqJ2rjM5Ftc4wO2CQldxGtRJ66CgYaLoJM=;
        b=cYuAAQZ1hXE7LvfBag71SBIEk+CWBxzCtPCabyzrMcyLPuFSfIhAxLJW/5FoPaCgPo
         5Kd9Q8YI+WwEwl813O9GUzOL30H7zYX3Z1hnoaROHvEsG1IFMXRFqKNR+oxNxzJ+m366
         1tScIFXmFvI/hTu12mNSop8+B2h38fjSEcdNy/zxXwkQC9jCaYN6icPd0xHdMnEhtTtW
         dOjxJl38QUzbcAmptOgNuwLyW6L393mgst8uicgml9rLtU7IWqS+GE9s18eU0HxtMikh
         KuIksc1zKzljJlplQfO8mx4FaG67XEs36JL7aoetL865wR5EbM0q80XocGfRA1Qv14+i
         LqIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wVjbK6OX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kkP12aprusqJ2rjM5Ftc4wO2CQldxGtRJ66CgYaLoJM=;
        b=d2eMQWKa4/pgwJyhputhVJVuCSlmO6nAj9BBTRuj5lNyW2fI/Q7T6ODc+jcgG9O+Xm
         xukEOpWJWHpv7hL8f2uklk66e+E1DMCOTuh3GPVjORUl2JA2NhQCQGmR75iFWbFqXW0o
         yFfXaEPSND13cJOQXy9KrBqFOtIw1PuQxXA7GzOrYcqiSh4/wics37cypEjFUhyG/JAP
         di//AzX0Wkj0Ii4zEXOmFOvfYz3so5ym+gANvy9JOa80syILGoJ6NUytdnlSGK1NrZq2
         nD87bb73uQehivjgqAZSk+vtAsq3OvF3JRjFMaSelUnfS3mCwjhZFIPz6C6MPYT8kaXF
         DTGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kkP12aprusqJ2rjM5Ftc4wO2CQldxGtRJ66CgYaLoJM=;
        b=CewuAz5e0OCMz8POf0W80YIQXqQyqeX9MKU90jJE/F77iy2IsnPm1EXra2iuCfsC/w
         cJe4prFNUT8mDdfOOku22Wd6FwUQ+1kyHuoUX3+nisJJSThAWGRIcsNdOJ9nMskLYSWY
         Ux4uZfZOWDqnbPL/vqbrmfdZh64rg0jGF3OSJFmjFZI4OwzkSfDHjBKk7mVXX3F73SWl
         5SXJ8erqgY5V6zUciVa5wW5l0cpw8SvmBgEPL2OWBloLNNLH4Xf/gbeuZe21KhLcWFYH
         5LxqldcsDTL0zwv+SRjugDu9tc7+yZ/b/+OyxIwdHg312sF9J/Opq7s97OMklHLBvZxW
         ujdg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530ePw7vPuhNbGHCe4uvpwb0sbdWPC7l9kpENUcSX4PfzonnOH7c
	aEQv/QLBpIpdZWEPWCdX6DI=
X-Google-Smtp-Source: ABdhPJzlUlTfWjidjnNT6NEERQrU0o8NA9cjxi4vyP8ABSxI6Cdv8a1WKn1Ji8Lj0qN4JGQ3JHzxpw==
X-Received: by 2002:a25:2e43:: with SMTP id b3mr2795805ybn.190.1592442617022;
        Wed, 17 Jun 2020 18:10:17 -0700 (PDT)
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a25:d603:: with SMTP id n3ls1649620ybg.3.gmail; Wed, 17 Jun
 2020 18:10:16 -0700 (PDT)
X-Received: by 2002:a25:354:: with SMTP id 81mr2871973ybd.257.1592442616680;
        Wed, 17 Jun 2020 18:10:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592442616; cv=none;
        d=google.com; s=arc-20160816;
        b=Wl1IHPcgpPDyBBqXPQN+NiL/ZGNbtFFDV4i2NFVL0oVvT8LxT40NzmHZVImYkNhl8r
         iKCmM5HLX144RflzlAEhnVjiHzQYDJ74pFbhx1hvG5HKTaNDTg5hHV/8pOlrEigjJFmO
         V8VMw3ePYx+GpGFgj9XLx8qgCeVA6kNKwl2LlLnjoPI+39v2ZjCho8VlUbg4foX5eChs
         TQsGDOpwgviHOGNEaVr1/kwzmzJ+y3ahNIu1Uym1i856evP8/P12cbTttKp4Pzi9JPri
         mhHbMcUHAL+9ihSkkKRGSct/wkvHlWPgK39gtLSO70+pPx3U0CRlT0LbSps/Ozkrl4In
         RqzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=JEuC2CYhIE53tttYiOcNXdHtvEq0v3qL4Lwf/cpI3AY=;
        b=EW+Qb6zRtpbcp5obriYUOMvn1Ay8k/yoUCenW0CttGy6xi0q3irAuVXswTNjJv0SGx
         k4kZupt7K8di1jC04oAX2wEoHt3qwQQOoLHlx0jCEqHNlXaFulfnjCYeCg3kOBEK8LOG
         nyphAzheNWCI3HXEdnw1lDIu3H2q163bSrIqWIE+V7Z6SXhzf5NgDDHaYVSrOQdufX1N
         sidaoN85re4xRLWMLWxjWnlONc7WPYhTXjoONl3nVzvDX6CPW//4ugLP+0q2Vb2yB53E
         li6HjJa3ct81/3pn1aUs5gFLTJvxAoEYNVFrP8KtICGqac7lVyv+6aQC+cNuUj+jHM+x
         FKNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wVjbK6OX;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u126si108281ybg.0.2020.06.17.18.10.16
        for <linux-ntb@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Jun 2020 18:10:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id DBE7C21D92;
	Thu, 18 Jun 2020 01:10:13 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Logan Gunthorpe <logang@deltatee.com>,
	Allen Hubbe <allenbh@gmail.com>,
	Alexander Fomichev <fomichev.ru@gmail.com>,
	Jon Mason <jdmason@kudzu.us>,
	Sasha Levin <sashal@kernel.org>,
	linux-ntb@googlegroups.com
Subject: [PATCH AUTOSEL 5.7 095/388] NTB: ntb_pingpong: Choose doorbells based on port number
Date: Wed, 17 Jun 2020 21:03:12 -0400
Message-Id: <20200618010805.600873-95-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618010805.600873-1-sashal@kernel.org>
References: <20200618010805.600873-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=wVjbK6OX;       spf=pass
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
index 04dd46647db3..2164e8492772 100644
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
 
@@ -432,4 +431,3 @@ static void __exit pp_exit(void)
 	debugfs_remove_recursive(pp_dbgfs_topdir);
 }
 module_exit(pp_exit);
-
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200618010805.600873-95-sashal%40kernel.org.

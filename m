Return-Path: <linux-ntb+bncBCFYTA5O7QNRB64W5H4QKGQENIQZSYA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id E03B92462B0
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:18:52 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id s82sf5988677oih.5
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:18:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655932; cv=pass;
        d=google.com; s=arc-20160816;
        b=qsHULNEv8aVdK2PFOGBxTaFptIjVBnReDdo43Hqpb0sjqVrTj24wZmPP5SBen0ZcWA
         4QP8IuvtOtAp2zVTaL0h21fp+/ideNJ4Sl8ZmxaIUJzHHPfpKj/Qr6TaTRZTB55+CRAy
         FgN9ri8FuwsZJEKWIV6J7dXBJfKc2BqaoSdnh3K7Px+UiNTUEKbmNkn6B1cwI/ZlPeFu
         UcPfSih9YXgVhJt38t7EDKpFm/QSVrcsYS3bBDKBk9A3pfK5rYB2L3UqUXXwIOHLRSZU
         eWzYTwt1AlxKSeKsW2nXmYQNo6JQQHIc4I1O4sEH9f3L7GoTg+/G0XfrUFZdH7DQ4BAz
         h27Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NNnzI3O0V178eMpmrS2gjscc7pQwxRLrYYHgM+uj5zA=;
        b=pBTDLZDJkSs7MQ1B/VilTQUIEjv8rO7E+oSsqMrfZiDBnjvQVCYf60HaMV/c3ZmA0j
         L+8OpHJunZXUwOxtHYtQYyAn5IqfZ89ZemSqkTufExvbEnOdBF/3xav8EB5Kqc/36uA+
         Z656+WJCJQrTGmR8dF2jVSHsw6jXUhNRMX7u3+K/9kHYqXpIbKgXsD/NFx84nyoTF5RU
         o5jvnhnGrUuttklVm1bpBjKr360TJaTYFnSv1yJmf/fbMKvKOPSgd2zp9sy/frSg4AwF
         i+Rqcyw48qhKx2zcdNVUwKHzSH2/GpKpGqE7QRfOEpuLXOI0SgyUfh64WNgpa0HLmZu6
         8W2w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DXgG1thd;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNnzI3O0V178eMpmrS2gjscc7pQwxRLrYYHgM+uj5zA=;
        b=m0s6baKGR6katfByVM9iT/ndh6VnpcQdwCrlK4Vu1JFbdUVRLNIPzDYKjO1IoO95hF
         LScp6R9e6oS2yfUf/r5X6XmZBNGzEfiEBWjSG9d+hZ+oNMgBugWIS9sOtvcAJkamaKP9
         CIKBU/grOHWt/iT247elhPItpqmoZHoC3LkmMYUbIcX0XUBkCKjtHFGw0HVAEZI7SAjA
         4GdqcElLjdLKH3NMXfsSAP0p3+n2FVG3+DCYyRyEYio6hIW//tECs1oOwLPsxQ33Ycgz
         SVL1NmrDZdzYzdLqMy0VSKd5awPLKb9GbT4nyRpYVz4wAP5gfuky25O5BaNRm3xZPC6Q
         Pe6Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNnzI3O0V178eMpmrS2gjscc7pQwxRLrYYHgM+uj5zA=;
        b=IecXwe6PvjhBfZ2qm2TwhMs+GjwsT9SfXIq7sGEI8LKDMX2b54ZIoAU6GaguK2oBIm
         0kVi/GgP5WTDnyT89I5Ct0hqTb/bPpxVCfEnZdQtTLRVrxV7jHjMVjChzBaVqMh7N1dW
         d4eO5PqLzYk7uSwUW8ijZ/BfcuGZDp4rgvzP0n8IZHlPsNcLUZmktiOT28QgXs+Av0XA
         ZO1pqu0h9ypG+i7LsY2H6yiCyDRvn1SzejbrWOJtGTC8IXfJIi9m3x/kwclQcW9DSO1A
         V1rAP1nZGu8rHhB36NPBJ/2EXOGzlvZ0fHjI3upQ1DsBbcjfsEyKLbclYQqZtxuNFa2o
         jOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NNnzI3O0V178eMpmrS2gjscc7pQwxRLrYYHgM+uj5zA=;
        b=dADWh5JFDBYrSJsvnYYikpsw2YFKn85xV8WpGroyIwPD12Yvkruq97V+teKDwtGPQ8
         qXRgQC1byX7d+SjqFJdtQ8tMJ1yedKzhFWnTPlF/CDncoev0euTn4fLfcfWRkHsHctyQ
         MeVX7LhO5BsMuWTEBv5eOuemgc/dEoZJsPCtub+DWdlYflsjPMxFavuhlK9kFAT4y3mA
         OU4CTIj8myLcE2L2NSppTtqpKUs67qI9P5QeipQDR0Yv4D/UnHpglAbu/I7o98LEH+Jy
         AdzvB+unpFe4lJL/V+SQ08zk3ivg5C1Mnyjl/OQFV8HhznulfDrb0YLCh5K8zij0Yynp
         8iIg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531iv70dwSl+/z/6tzzodbF03+HeUMlnm7hrpCKFfR1X0JowzpG5
	SWulPPBPg9w29Gt2gRkNnIE=
X-Google-Smtp-Source: ABdhPJx5rKt5w5cfXfcdhSZj6fn5C0Ku/YSF1n7MN+M98+CBtAaCCDUq1LVVCgRcWYP+wtl2Dly/AQ==
X-Received: by 2002:a9d:d30:: with SMTP id 45mr10207124oti.101.1597655931747;
        Mon, 17 Aug 2020 02:18:51 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a05:6830:1dc3:: with SMTP id a3ls3423506otj.8.gmail; Mon, 17
 Aug 2020 02:18:51 -0700 (PDT)
X-Received: by 2002:a05:6830:1e03:: with SMTP id s3mr10782864otr.187.1597655931470;
        Mon, 17 Aug 2020 02:18:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655931; cv=none;
        d=google.com; s=arc-20160816;
        b=hpZARy7vu/rF1DBsRTvQmZpQPXK1zJbJatTXrWkGmVyt8rYySfM1nTF+CdiKMvTQhR
         oTZ/V/+mAoEYuFAtZkQweqBPoclMFsJ8WzVXDOr4rO8J6+WXLZMcoyccjS3T4Hth/ihW
         TWjX9NHIBocCmSRKX9hkXMN7Uzl9EIOET9xHzL7o5ueGS/xQrDRH1IN0n2hn8Te8qyXE
         QddvQT/aGCoFsusNxM90Dq14ibVpwbqEQTaZaAIy/PuPwVt0myQSZqIego0OsScPJknL
         7ToDMCnBQB6HaNkYM5d+hxD3RIX8wGjPXAFNPiZfYqWeiwFeVvr1YJv8fzQRACV6eG4U
         5aCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=Y/Lyd9iyb+e3Iwz9Po/fyIeEqiW8mHah9rIvstjO+PU=;
        b=Er1/erJu5Gq99KStFIHv3hR/DMVNSu2truJ8tX0SY4MX2gEFpE2Q1V0dVoFv4uMDE8
         LnlTMcGHofZmITzle/LVMaQfhKkgCHridNhs0Sgg+1lhC/n7gLhkq9QBuhKu2TuICT0e
         rGGaaFRbE8Ef1PAHB+2L8VFF0SLV68YLSAOaX6pF4bLYAA+txVJrTsMI66hj/baVTxDf
         BUfeWukoF+1Uol/b2ODZaWC0szH3+3oYKWABwvc+07/XYZi3oAsWZIiwDKzcCSrsFekk
         rbpm+KvJgVZmYkWaNrB43FlN5n9IYBBUQPZfsQHdp+V/6b2o2xDUq+1jM4AnBjFhrKJn
         zg3w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DXgG1thd;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id c5si395461ots.0.2020.08.17.02.18.51
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:18:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Received: by mail-pj1-x1042.google.com with SMTP id c10so7693154pjn.1
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:18:51 -0700 (PDT)
X-Received: by 2002:a17:90a:2525:: with SMTP id j34mr12831046pje.208.1597655930802;
        Mon, 17 Aug 2020 02:18:50 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.18.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:18:50 -0700 (PDT)
From: Allen Pais <allen.cryptic@gmail.com>
To: jdike@addtoit.com,
	richard@nod.at,
	anton.ivanov@cambridgegreys.com,
	3chas3@gmail.com,
	axboe@kernel.dk,
	stefanr@s5r6.in-berlin.de,
	airlied@linux.ie,
	daniel@ffwll.ch,
	sre@kernel.org,
	James.Bottomley@HansenPartnership.com,
	kys@microsoft.com,
	deller@gmx.de,
	dmitry.torokhov@gmail.com,
	jassisinghbrar@gmail.com,
	shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	maximlevitsky@gmail.com,
	oakad@yahoo.com,
	ulf.hansson@linaro.org,
	mporter@kernel.crashing.org,
	alex.bou9@gmail.com,
	broonie@kernel.org,
	martyn@welchs.me.uk,
	manohar.vanga@gmail.com,
	mitch@sfgoth.com,
	davem@davemloft.net,
	kuba@kernel.org
Cc: keescook@chromium.org,
	linux-um@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-atm-general@lists.sourceforge.net,
	netdev@vger.kernel.org,
	linux-block@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	openipmi-developer@lists.sourceforge.net,
	linux1394-devel@lists.sourceforge.net,
	intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org,
	linux-hyperv@vger.kernel.org,
	linux-parisc@vger.kernel.org,
	linux-input@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-ntb@googlegroups.com,
	linux-s390@vger.kernel.org,
	linux-spi@vger.kernel.org,
	devel@driverdev.osuosl.org,
	Allen Pais <allen.lkml@gmail.com>,
	Romain Perier <romain.perier@gmail.com>
Subject: [PATCH] firewire: ohci: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:05 +0530
Message-Id: <20200817091617.28119-11-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=DXgG1thd;       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1042
 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

From: Allen Pais <allen.lkml@gmail.com>

In preparation for unconditionally passing the
struct tasklet_struct pointer to all tasklet
callbacks, switch to using the new tasklet_setup()
and from_tasklet() to pass the tasklet pointer explicitly.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/firewire/ohci.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/firewire/ohci.c b/drivers/firewire/ohci.c
index 7dde21b18b04..6298ff03796e 100644
--- a/drivers/firewire/ohci.c
+++ b/drivers/firewire/ohci.c
@@ -921,9 +921,9 @@ static void ar_recycle_buffers(struct ar_context *ctx, unsigned int end_buffer)
 	}
 }
 
-static void ar_context_tasklet(unsigned long data)
+static void ar_context_tasklet(struct tasklet_struct *t)
 {
-	struct ar_context *ctx = (struct ar_context *)data;
+	struct ar_context *ctx = from_tasklet(ctx, t, tasklet);
 	unsigned int end_buffer_index, end_buffer_offset;
 	void *p, *end;
 
@@ -977,7 +977,7 @@ static int ar_context_init(struct ar_context *ctx, struct fw_ohci *ohci,
 
 	ctx->regs        = regs;
 	ctx->ohci        = ohci;
-	tasklet_init(&ctx->tasklet, ar_context_tasklet, (unsigned long)ctx);
+	tasklet_setup(&ctx->tasklet, ar_context_tasklet);
 
 	for (i = 0; i < AR_BUFFERS; i++) {
 		ctx->pages[i] = alloc_page(GFP_KERNEL | GFP_DMA32);
@@ -1049,9 +1049,9 @@ static struct descriptor *find_branch_descriptor(struct descriptor *d, int z)
 		return d + z - 1;
 }
 
-static void context_tasklet(unsigned long data)
+static void context_tasklet(struct tasklet_struct *t)
 {
-	struct context *ctx = (struct context *) data;
+	struct context *ctx = from_tasklet(ctx, t, tasklet);
 	struct descriptor *d, *last;
 	u32 address;
 	int z;
@@ -1145,7 +1145,7 @@ static int context_init(struct context *ctx, struct fw_ohci *ohci,
 	ctx->buffer_tail = list_entry(ctx->buffer_list.next,
 			struct descriptor_buffer, list);
 
-	tasklet_init(&ctx->tasklet, context_tasklet, (unsigned long)ctx);
+	tasklet_setup(&ctx->tasklet, context_tasklet);
 	ctx->callback = callback;
 
 	/*
@@ -1420,7 +1420,7 @@ static void at_context_flush(struct context *ctx)
 	tasklet_disable(&ctx->tasklet);
 
 	ctx->flushing = true;
-	context_tasklet((unsigned long)ctx);
+	context_tasklet(&ctx->tasklet);
 	ctx->flushing = false;
 
 	tasklet_enable(&ctx->tasklet);
@@ -3472,7 +3472,7 @@ static int ohci_flush_iso_completions(struct fw_iso_context *base)
 	tasklet_disable(&ctx->context.tasklet);
 
 	if (!test_and_set_bit_lock(0, &ctx->flushing_completions)) {
-		context_tasklet((unsigned long)&ctx->context);
+		context_tasklet(&ctx->context.tasklet);
 
 		switch (base->type) {
 		case FW_ISO_CONTEXT_TRANSMIT:
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-11-allen.cryptic%40gmail.com.

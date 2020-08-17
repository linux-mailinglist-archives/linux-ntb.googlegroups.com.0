Return-Path: <linux-ntb+bncBCFYTA5O7QNRBMUX5H4QKGQEI2Y5SUY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6C72462E6
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:19:47 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id q12sf10562400qvm.19
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:19:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655986; cv=pass;
        d=google.com; s=arc-20160816;
        b=YMg43FHxyCjPep7DyFx1Qv4zx23hKrLijcGzylPjnvTpRgs4HvxWJbrwvQOvlG2XU6
         ybqnZixdna+yT6PdJ/SdW/rBCkiYW1P9owx7qYgZH82ltUCVpp5SIsBYT+vUite7eDe0
         QfpqC1yfwSNzgr/R3q/GsR2dlI4MV95LJP0GccwNI8yCJ1iGf/BA0bXQ97NxeEFL79Q6
         F5vyyqC78a4fBxpcto47mxxZz28gwkr2GGzUBJMCps+s5qKmHNCEAJHwXP3iNVS5LA9l
         bV2wBa3t8gG/Txv9/QssBd3nxMXuIFroDukFCNj13ePGFL5wrLe1cNZGbzWDh3WKvJdL
         +PyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=rqbho0D6VuCe87FTW3XoGEc9EVcb/TlWUJllh9sdBgo=;
        b=wSKXsXkHhfm43tukAgiozKdah8HDYxyxtiXpTaN9FNrbtASHXqq/JblwScZjyyBKiz
         /Z99SeiKKRCI5L3yee6+qIWMsIo4oi+xMsumF85jEb2Ee02NqtThvuryFgb456I9cJgp
         1szv+2y4olac/IQeFmKVpELcTCHm2CeJy1V9EHS5O6oIn4obDL/UP0O/CnqRTefsEMgd
         xkVvGnTZHHn9zxiiPrxrCL29JHr63Xctv4jUeYIB/pUgZ0FRSW8P2JainCx4iPTv8bCN
         aI79zuw72YRCe5GnzBwybj6dWbfart8iSq1NnXrXuqjBI6ODdnVNdhu5E341zZtJtKV0
         xiMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WvuNpwFG;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rqbho0D6VuCe87FTW3XoGEc9EVcb/TlWUJllh9sdBgo=;
        b=tcdm6Z2bE+W+aBc44w689POVlDGD7cN9Pj1S6UG3/7RZlEl9Mszf6t0QkPd8ubSsno
         mTvxb3hiid3swzlmIxaMXxgAFaS1oAiMwSYQc7S7jR8u4HIOc1Y/41WjgXoMfXdxs/39
         BfOxArDHE78ATVXjQa0NJ4DWSO7d47i7GQABPqkBF2JqwOmHpBNvqHvQsn0I+W5LmYAP
         8uBa7MfjftKesqR5/4eJJkly9HANWO5Jqgk+JgTyhnPs8BGs1o8pLcRx32Qr/em84hRS
         vOZNlRty2F3TGzvBIUiXqoic5bFRJry4dlK54DQXA1R7cJVrHDuqHqqgLnkmlmEOkK1Z
         Hxhw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rqbho0D6VuCe87FTW3XoGEc9EVcb/TlWUJllh9sdBgo=;
        b=gNHaHIO90YmJWFqPSijsuc3+7Wy7KyymcwRadbAEA3oa2DrcA84OnwMr3sn3M2fGGr
         2J13Bw/eE7u1yc3usgozNebhPrONhH0U2i5PCPxwOCuKwOhQG8UhtDOuaVGZxpXdcxX2
         /qTS5WQu0Z6Fc6muEOVkryQ/suFV/6nWkhApxQO+PK6q9bmACTtNgp7jAUg0TofGOGXo
         cyX0pv53FMRNMiQFv14sglyTgnpPGynEEbw8s1pEGZrEcHppUnNELm1oaB9SYQ4ChE41
         XV+jYKqFyUPV1OrGjV9c8htjBf8gVTdp5PPdfkgAVwx1ZC5H8WdMH873KD044lhO+BFj
         usqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rqbho0D6VuCe87FTW3XoGEc9EVcb/TlWUJllh9sdBgo=;
        b=rSGw77g6/IDk2Mp3CvbZ017eUmFhPYj2X0MSm18inn3K754YSvIuyye0HOzjWRAaiC
         4BPBXXFaK7ARSEE6qQ6Mko2O75uW4V/rQll8QA6f8aQGtbZ5pI6+es54PljB08ylxyAR
         tj7eRvkb1xprDLh4YRdnte+i+QZJEREz92EuA4wt1v6C0plK21q5llofx6EhdKV/Iyng
         NMNJf7Dy9bK28qMsgNuKCQkNhbiwE6J5qPwsiHB5mPIJZPeRVlqCNNXG2Asofov544ir
         dXDtUXjnJYPp+4iS4kIS1MC0FcfK/rp4pd9srk/6E71srCRTpcfBjVJKyzSVbkwrRYS1
         vGQQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM532/ZE6eRaHdUTXQ01PQ3AcvabeGQ6EVyq1V4tiGhTRg6ab2dv3P
	Wgbnz1/vbRlHJrR9UHdLYaY=
X-Google-Smtp-Source: ABdhPJyFB/ZPUZIikN9C7WSOpaixRUC0L4cJN1CwLwLj5NLIhLU9rt82wkxE68utVZUFSM5/n7gV4w==
X-Received: by 2002:a0c:d64b:: with SMTP id e11mr13210863qvj.169.1597655986271;
        Mon, 17 Aug 2020 02:19:46 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:ac8:4c9e:: with SMTP id j30ls6277396qtv.0.gmail; Mon, 17 Aug
 2020 02:19:46 -0700 (PDT)
X-Received: by 2002:ac8:5546:: with SMTP id o6mr11991404qtr.211.1597655985960;
        Mon, 17 Aug 2020 02:19:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655985; cv=none;
        d=google.com; s=arc-20160816;
        b=KbBLUj6KFz90e2EZb2YTFDdHgGlZWPhAcOMD3JCNlPEYJAiIesPIV4YqXUPvARcxLM
         sRPoIJD8VoATOB/5hnSTeuVeHhbFL+r9gwDyJX+6hDVxhPZjzdRgxLeufG0BHQpGVhqZ
         3Am6OcDV+QOml9q20reUwBMHxmJ3H1XcILih1L5SRqKehH9H5z7JhOJFfgGnNIqpgp+y
         6djUJrkiGgart112WuEMEE5aOu2IFsfdFtW+oq6Zeh5CUaBevM0Prtm3iiC2fqRavNPI
         iBghaDoR28EA8DSj7fwnAn9wHSSNG4ZC8pKt1yd3t0Yu+ua+U6WJOxBxoc/PsU+f5Wsc
         WVqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=rg9O+UuIrcRklqdLDyvqN900SVFxVyljAa/s7srCNnQ=;
        b=Hh/N150xSg8HEceCNyV/nMz1E3xnOjsnluvfQfbWUAo3L4OKCV6lUYRW/eTRUyX+rf
         LMh5GMQ7Nz6sdfjLitGuz6FwDdqfrzfxKE1w44KybSGUj2n1LpdjkHiwuzH+gj2i8tuA
         n/ekVGf3bi7KWeVy9ExUn6kBjnaoaRYJuOg+DsY7X5Qd16H45KKP9sXCdyiEJoSILe0P
         oPCMww1LmpGuSjEznY7/N95Dlovjy6Vnnp8zh/kyJpdeIuXV9e/cTfZUoEGTEWf2LypM
         az8j95TNB4SUTkknH9bLTEPSz495OdvU5f+N8jzHBnb2UvtFuHOGYtxoMHGXgekeayZW
         MTog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WvuNpwFG;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id b21si895902qtq.1.2020.08.17.02.19.45
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:19:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id f10so7191152plj.8
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:19:45 -0700 (PDT)
X-Received: by 2002:a17:902:6b05:: with SMTP id o5mr10459515plk.173.1597655985094;
        Mon, 17 Aug 2020 02:19:45 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:19:44 -0700 (PDT)
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
Subject: [PATCH 1/2] memstick: jmb38x: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:09 +0530
Message-Id: <20200817091617.28119-15-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WvuNpwFG;       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::642
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
 drivers/memstick/host/jmb38x_ms.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/memstick/host/jmb38x_ms.c b/drivers/memstick/host/jmb38x_ms.c
index 4a6b866b0291..2bcf5ce113bd 100644
--- a/drivers/memstick/host/jmb38x_ms.c
+++ b/drivers/memstick/host/jmb38x_ms.c
@@ -603,10 +603,10 @@ static void jmb38x_ms_abort(struct timer_list *t)
 	spin_unlock_irqrestore(&host->lock, flags);
 }
 
-static void jmb38x_ms_req_tasklet(unsigned long data)
+static void jmb38x_ms_req_tasklet(struct tasklet_struct *t)
 {
-	struct memstick_host *msh = (struct memstick_host *)data;
-	struct jmb38x_ms_host *host = memstick_priv(msh);
+	struct jmb38x_ms_host *host = from_tasklet(host, t, notify);
+	struct memstick_host *msh = host->msh;
 	unsigned long flags;
 	int rc;
 
@@ -868,7 +868,7 @@ static struct memstick_host *jmb38x_ms_alloc_host(struct jmb38x_ms *jm, int cnt)
 	host->irq = jm->pdev->irq;
 	host->timeout_jiffies = msecs_to_jiffies(1000);
 
-	tasklet_init(&host->notify, jmb38x_ms_req_tasklet, (unsigned long)msh);
+	tasklet_setup(&host->notify, jmb38x_ms_req_tasklet);
 	msh->request = jmb38x_ms_submit_req;
 	msh->set_param = jmb38x_ms_set_param;
 
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-15-allen.cryptic%40gmail.com.

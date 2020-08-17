Return-Path: <linux-ntb+bncBCFYTA5O7QNRB4MW5H4QKGQEFYHFTDA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A28E2462AC
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:18:42 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id k5sf3513801ual.20
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:18:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655921; cv=pass;
        d=google.com; s=arc-20160816;
        b=X4bbqMG4ZS1O/oF3y4HezBmYGH5I6PkGU6XAnG+qoKxCM096bI5IC6Nb7rU/SFI1kb
         9/EumzcHkqSPUwAbuzIgimo7mKIkJ9gZuMqPOVGuxs6V9J3ibE/n/rNId6MCIUSx8Wjp
         C9taT58n07iD08LpjLdNosEkN1mnYPyuR96FMz9zLb2CfgDVT1S5gdGtOCr03OQ1oC04
         MxH62EfQ9JzARWl1c2tTVK66ltHPjCw7yIpodyuxIp2XuytfhO2yegcjmJrnXoNIxFQ+
         QbeXry1znsO3nYQ3U28vpJLuK50pb8uUXLwi2INiI03vDCJkKt6PFK/Ea2IYCQ+BTi/+
         8OQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Oj2scqRYJ4VdjZXQAE3E08YL9NybUsnYv+ns38Zd1Po=;
        b=ilUwd+aCDFdpHZDjvljvD721heh1Lr7dGvy7i1WVXgVRzIhSpM4vmz2jMH7YwIpviv
         6qKA0Xcyx+dvbZMzL8O+uAUfza8CWvxJLZbbUXJDawuV0yIAjn6KOa3oYyhFKDYaFItt
         AvWvEn4Z0CetKdBq3uLyeYF779EuqpQp4G9vrd7Ioj1v6qN3s6KUAyRNje7C2kdR6X8S
         Vmx9Pbr4mdObnQjkc9a4CMRXCgulUvvEW5See3UOUPPsVjkZgH5bvEbUqwYDb7QmO61w
         N44ojgvRRiwUgWwZl2Tj966ntDvfpWVyNFzqWLvGiK45zc1xYqK2Pu5ysqTLZkxM26FE
         qDeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SB1by7Ka;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oj2scqRYJ4VdjZXQAE3E08YL9NybUsnYv+ns38Zd1Po=;
        b=q8Hoy5eKWZM7Q3nN2lItwlgVUWonXy0Cdx8Q3o0p1sPrThM6WdRw8faemI+TPFotKa
         06mn0JD7XUSSIUFi4gMgnr5BgOVq9o8yDQMK/Una67ypC+TAa1PgHF5nna52d7dRBIXF
         FBxb0biIt9aLf1TaAo+lIJBoRaGPJ45XiN5MwZTe6moEewn2qG1p10v5HG7BvZN12TE+
         6hGxvamIRmSIEXuwNCF9Au14VTUjH4P0EbalJNMaaM0PsVi0JyRUSvl7hNhx36C1BD/T
         GAtdzLO70FIaFVJoBbTKku9e4Yj2TrZhjW+RiPMuiv34MY4azUL2pDGysK6coQN1T51x
         zfwg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oj2scqRYJ4VdjZXQAE3E08YL9NybUsnYv+ns38Zd1Po=;
        b=kcrq4JWpympzo8HuStgC8qfRsBr0uSAtD0wwsrjFVwKTM4+FXhJJnhR3H3c+lYqePu
         P74+IIfCKDEZgGX4XK3EbQa93CjQGYnFPlbZpiI0KShqduGFH9offQAt1d9W44UyYYWz
         akugqbGtjrAUz3dCrg4BXcZr7qTvtRhzppPa3bp8ZrlZ53bXK399m7+a7ErXtjpHuz1z
         FtzjLiHdYtoBk8h/UZRe/LJQxjQpB1PWBFaSjYLaWxV12eYz3dtetrnr5VMSeUPMgc+P
         8FdGTbSaoYotZlxOmKXDuQA9F9toQYCKs29Gr0UIzZCotm7On4o645DPSsglwE3kwEmj
         pTrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oj2scqRYJ4VdjZXQAE3E08YL9NybUsnYv+ns38Zd1Po=;
        b=eiBSHMvh7GMa0knAUYkw703GMyvgtXRu5ISFGVHCVZRDnryoBkorVDDSkaz8Sgix6f
         fYCgdqeIIf7IMHvVL04YTptkbjsV0xPDfm/z8+kJe23fS2WsifTyk9ybDcq18J72ed4s
         M16hnR/bLjTmZLC4/lyOGEbEIBSfkWdOpqB63R81s27MEeYU79sDb8zGXyCowZ3dcjUF
         n+dHGxQWdKUL4xPWbktMVqeTb3RMB/zB28nTiNBaZhXb+E9FwQNjJoH/JFz+w5/5Ap0m
         gWimEZFxQeF0Y6y7iLNJuWvEgSmIvEdZoJPiU3swh4NRiH99y37WFQ3A2TQx+GTRbchf
         Q24Q==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531w388uiiKo8VPBrx5oTTHqP3yDUlBtbjx7cjLg76oXJI27odPK
	ABfUAujnNLBRNgzr28tV/QQ=
X-Google-Smtp-Source: ABdhPJwhxQ70pbExS5dKC1scz/U23PiU+CAa8X7dmeNZbFjsdWSmhJWmSwdXp4QQCUnaWcKw7QRXzw==
X-Received: by 2002:a05:6102:311a:: with SMTP id e26mr7607333vsh.86.1597655921229;
        Mon, 17 Aug 2020 02:18:41 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:5d84:: with SMTP id r126ls748335vkb.11.gmail; Mon, 17
 Aug 2020 02:18:40 -0700 (PDT)
X-Received: by 2002:a1f:3612:: with SMTP id d18mr611266vka.21.1597655920254;
        Mon, 17 Aug 2020 02:18:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655920; cv=none;
        d=google.com; s=arc-20160816;
        b=b4zNRdf8Sznwv/s1rjK/TLsCvYyxHuN2pAjBsB3xyNvRIoD34BbR9MizbJxd7x1pmt
         bzhyn9jY7MkDGo2vXVw0XyxSUzVyxbWNhFVdoGgfdV2dQSsmaiP+7Anwbd5RWYhp2zdT
         HZCoy/iLnmTc4QZeK3g7/Vs2nTGNkmU6NkphOAU+PrmUXfyOAj3vDlwiS6ScVZYM94GK
         rm/5D492Y5/HjyHiy61vuMPpwEkfVMOW346idRFdiefkM4KM6L90hY1lxJcXJFf6gK9v
         i5oGRGBsFL5zXX3inRt519b82Um56zw1U4+NVqLOqWHfzWY9ZfB3CbEjEDCAFQGxmIkz
         uFnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=XewQeBy6WMQV1RzMvwbB0P7og4UUzSYm8rIudQOA7EQ=;
        b=i3ichjWrRxf3UnpcWR3ZP5Wzx0DvByCpSAKenu43MwikNi+3L7+nYRvJwUoggsS6ev
         EulLD1mRpQBUMm9V2qMBriEJ7S5izZjHY3PeLXzmq78KWAHErfnraAgoEy36nMORKPsN
         O5ShdtiVBGNT+He0ObL+ZoAaJpYVN5UzkSkxu4ND8xgpwsMurqnSvCMkfMPQr2ZXWhZz
         l9qnbjrjJZAaIWDI7ZxZIcCA4OVO6K3FEmxX5vlLbqq3aOpUt2uQ1tPQoeOEoZcDvGYI
         m9NVtNSfqsGGcRgwPF+Wjn6pBs+FqACG3fgLTLvpBvmVwL0ZeQ9o5WaagqGWgG4+4BJX
         Es2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SB1by7Ka;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id p197si906155vkp.0.2020.08.17.02.18.40
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:18:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id ha11so7406377pjb.1
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:18:40 -0700 (PDT)
X-Received: by 2002:a17:90a:36ee:: with SMTP id t101mr12384566pjb.47.1597655919356;
        Mon, 17 Aug 2020 02:18:39 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.18.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:18:38 -0700 (PDT)
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
Subject: [PATCH] drm: i915: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:04 +0530
Message-Id: <20200817091617.28119-10-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SB1by7Ka;       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1041
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
and from_tasklet() to pass the tasklet pointer explicitly
and remove the .data field.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 drivers/gpu/drm/i915/gt/intel_lrc.c           | 31 ++++++++++---------
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  8 +++--
 2 files changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
index 24322ef08aa4..c45e42b9f239 100644
--- a/drivers/gpu/drm/i915/gt/intel_lrc.c
+++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
@@ -3130,9 +3130,10 @@ static bool preempt_timeout(const struct intel_engine_cs *const engine)
  * Check the unread Context Status Buffers and manage the submission of new
  * contexts to the ELSP accordingly.
  */
-static void execlists_submission_tasklet(unsigned long data)
+static void execlists_submission_tasklet(struct tasklet_struct *t)
 {
-	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
+	struct intel_engine_cs * const engine = from_tasklet(engine, t,
+						     execlists.tasklet);
 	bool timeout = preempt_timeout(engine);
 
 	process_csb(engine);
@@ -4306,9 +4307,10 @@ static void execlists_reset_rewind(struct intel_engine_cs *engine, bool stalled)
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
 
-static void nop_submission_tasklet(unsigned long data)
+static void nop_submission_tasklet(struct tasklet_struct *t)
 {
-	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
+	struct intel_engine_cs * const engine = from_tasklet(engine, t,
+						     execlists.tasklet);
 
 	/* The driver is wedged; don't process any more events. */
 	WRITE_ONCE(engine->execlists.queue_priority_hint, INT_MIN);
@@ -4391,7 +4393,8 @@ static void execlists_reset_cancel(struct intel_engine_cs *engine)
 	execlists->queue = RB_ROOT_CACHED;
 
 	GEM_BUG_ON(__tasklet_is_enabled(&execlists->tasklet));
-	execlists->tasklet.func = nop_submission_tasklet;
+	execlists->tasklet.func = (void (*)(unsigned long))
+				  nop_submission_tasklet;
 
 	spin_unlock_irqrestore(&engine->active.lock, flags);
 }
@@ -4986,7 +4989,8 @@ void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
 {
 	engine->submit_request = execlists_submit_request;
 	engine->schedule = i915_schedule;
-	engine->execlists.tasklet.func = execlists_submission_tasklet;
+	engine->execlists.tasklet.func = (void (*)(unsigned long))
+		execlists_submission_tasklet;
 
 	engine->reset.prepare = execlists_reset_prepare;
 	engine->reset.rewind = execlists_reset_rewind;
@@ -5113,8 +5117,7 @@ int intel_execlists_submission_setup(struct intel_engine_cs *engine)
 	struct intel_uncore *uncore = engine->uncore;
 	u32 base = engine->mmio_base;
 
-	tasklet_init(&engine->execlists.tasklet,
-		     execlists_submission_tasklet, (unsigned long)engine);
+	tasklet_setup(&engine->execlists.tasklet, execlists_submission_tasklet);
 	timer_setup(&engine->execlists.timer, execlists_timeslice, 0);
 	timer_setup(&engine->execlists.preempt, execlists_preempt, 0);
 
@@ -5509,9 +5512,10 @@ static intel_engine_mask_t virtual_submission_mask(struct virtual_engine *ve)
 	return mask;
 }
 
-static void virtual_submission_tasklet(unsigned long data)
+static void virtual_submission_tasklet(struct tasklet_struct *t)
 {
-	struct virtual_engine * const ve = (struct virtual_engine *)data;
+	struct virtual_engine *  ve = from_tasklet(ve, t,
+						   base.execlists.tasklet);
 	const int prio = READ_ONCE(ve->base.execlists.queue_priority_hint);
 	intel_engine_mask_t mask;
 	unsigned int n;
@@ -5724,9 +5728,8 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 
 	INIT_LIST_HEAD(virtual_queue(ve));
 	ve->base.execlists.queue_priority_hint = INT_MIN;
-	tasklet_init(&ve->base.execlists.tasklet,
-		     virtual_submission_tasklet,
-		     (unsigned long)ve);
+	tasklet_setup(&ve->base.execlists.tasklet,
+		     virtual_submission_tasklet);
 
 	intel_context_init(&ve->context, &ve->base);
 
@@ -5748,7 +5751,7 @@ intel_execlists_create_virtual(struct intel_engine_cs **siblings,
 		 * layering if we handle cloning of the requests and
 		 * submitting a copy into each backend.
 		 */
-		if (sibling->execlists.tasklet.func !=
+		if (sibling->execlists.tasklet.func != (void (*)(unsigned long))
 		    execlists_submission_tasklet) {
 			err = -ENODEV;
 			goto err_put;
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index fdfeb4b9b0f5..3013ff54431c 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -344,9 +344,10 @@ static void __guc_dequeue(struct intel_engine_cs *engine)
 	execlists->active = execlists->inflight;
 }
 
-static void guc_submission_tasklet(unsigned long data)
+static void guc_submission_tasklet(struct tasklet_struct *t)
 {
-	struct intel_engine_cs * const engine = (struct intel_engine_cs *)data;
+	struct intel_engine_cs * const engine = from_tasklet(engine, t,
+							     execlists.tasklet);
 	struct intel_engine_execlists * const execlists = &engine->execlists;
 	struct i915_request **port, *rq;
 	unsigned long flags;
@@ -591,7 +592,8 @@ static void guc_set_default_submission(struct intel_engine_cs *engine)
 	 */
 	intel_execlists_set_default_submission(engine);
 
-	engine->execlists.tasklet.func = guc_submission_tasklet;
+	engine->execlists.tasklet.func =
+				(void (*)(unsigned long))guc_submission_tasklet;
 
 	/* do not use execlists park/unpark */
 	engine->park = engine->unpark = NULL;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-10-allen.cryptic%40gmail.com.

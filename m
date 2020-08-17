Return-Path: <linux-ntb+bncBCFYTA5O7QNRBXMX5H4QKGQEDWT4YMY@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2F424630E
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:20:30 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id t11sf10483711pfq.21
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:20:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597656029; cv=pass;
        d=google.com; s=arc-20160816;
        b=ddbh+qkDqmatC2JECRdSQcbugLqsYBwJKTf51dkjAvgi554Ak0sagCTKr7L7vG4gCL
         l4EvIumMpbJuomcUIPTcvZDgm7d4pi8loT0j5YXuRVRZXjPuVW9fMNM+yrQEXaG7qTZa
         7gLZyk4eZFuEjbRH0qopVkDAd5i2mA3KpyMdlCrDbayd864ePypbnwmg/dYwDKPYv1RT
         mp1NU7fWlGCU9MipCIVO/LHyqtTEeETEFd1HUmF+/E5qbQN11Z5pIBuTEf7bXl1GmKeI
         oOhrBMDdDJhzBkIFe4GoBRBj4mtaYUrNaYIzAb8Jv8sbrM1PTpDeQmqiyYpk/UuG9rTs
         gOJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6B3CMBkhkB0HjSQMc3TscIaS4J6bPoqQoajsTsGPkNk=;
        b=sSKWR1qfnMsbGurtNXnoOJXBHdyyZr9hY6Fjtzd7MRqdGWw7mE75GMO8ImmYwoya4j
         oicU9vUVfHix+pIzPcOq23RPO0Jj3dZfU2duWCI4qKxNdk6StNMDxWtS4T8y4HsYauNF
         Zk/gGlr6m/KN3TnhKVakXMXWcP8d1KuyztwIQeqJpP17slpa0+El4/GIuJ/6OC5jV0C3
         YMTwpLWIlF6xII9JQr3A50RxA7Jwv7aNQvrWNqib/Fw7hmDCARG7T6xosI3KlCn/SYDP
         NSbHhWpGgEEcc/kc8KNzaXkkytseKRKk+iczJ9kqU84wTKK6j04kvZwZcZnMCc7BKiJh
         XxPw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cTZNXtt7;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6B3CMBkhkB0HjSQMc3TscIaS4J6bPoqQoajsTsGPkNk=;
        b=TGFlB34juYX+yMXWOveZhOUjMrBY5Gg8jpJf9U1TbCRgXl7qDtmV3YFgZQ2DAvBHIZ
         WSszooTNvMZRJXcKtxsWjhhSLbnxUTzvbaVJ1Fr3qpIUUsiEyIVzqs5LX0/XOspOQTzQ
         ZtVMS+z+4yPLR4S9JIdbAmB2LCdpp8vki/ljqYO2QNtG+PZsVTlx52IYksEeqDwBWGQ3
         0KnH1Z36MeM1Nujc+VOm+/be9jXERpMuYKVFpzlZMu7cxvBQU6mgENUIQ+xJOVdNZOHT
         RA27j3Wm6unLIF2a5gEhWJpDVXwCph7xorzjJbdO1SmHwUN8hzXs7V3Q67Js4jp3G63q
         EwOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6B3CMBkhkB0HjSQMc3TscIaS4J6bPoqQoajsTsGPkNk=;
        b=jcu6whWPfrYlhYYrMoa/EN5b+/lgICap96N1YIO5cDom/9fvihDn4sx936hP1fsnH4
         8sqH4+fQiefppCegCswtk2u+FuzlMaH3eINmtCsAH/10KbMCk29RRuxYNDpenugL/GA1
         8ORnZU1gxSR4R+MnZqPNKTF/imHmBtAM2o3E/fPFcra9knwJvKdJbyx0fmNqSnK3q+eO
         jVUNi0kNu2QCmHmPHfk/vTxAYZ+wIGohnS7dpiMWHtry1+kYXZJ7n8TXfTgTmkCJfPjI
         ELmHTYVHnbdfINvsR7LTxQ3Rv3j7KjkoVIJ2jIVlL76rlPcK86OoKsWblHl4vIto7hBM
         G3ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6B3CMBkhkB0HjSQMc3TscIaS4J6bPoqQoajsTsGPkNk=;
        b=r262WgIxCy6A3YE4Dv19itx4brFwMH0WSxx2tc++muhTOShrs2dIZBWHxG1JaVzpOk
         se/kiqoYMUrI2DCtjpHyjtpVi8IQdXreV6oLIQEHcoZGg+b9ghuR4MWbxESgBnT2l53i
         gDtgEx6SZ3sVSQ6Q54fN+MJYdVHv9yi6KEyUl7TbCLK0HF7SmTOgpaiTzQ813/tzDk3H
         u4xzoF85M8GNrD+mHzUpaIZEQAlg+XfjBZ5nx67DaM7BiRrEOuqiav3uQNSg01vfLyA2
         dsgy6YITfbVc0R1iUhjUAn3JvO1Fsr+btBHTcOhHpZrhrWsP8ReTMKh+YbpBGFDDo/Fh
         kRSQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530QchaLw3OX4HI5Y7JPDRZJrfr9xr/Yqtu5oxKfawzjxzJ1VUkH
	otULzQ2ek94h7C4SAcl+6ak=
X-Google-Smtp-Source: ABdhPJzv9bvmIREgZqKi6crpLWbWBKtAbeKUDDCNtvkWsG1cG72I84EcSjHQzOwKBdxoZK7xJCWaDA==
X-Received: by 2002:aa7:84d1:: with SMTP id x17mr10328113pfn.87.1597656029377;
        Mon, 17 Aug 2020 02:20:29 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a62:4ec4:: with SMTP id c187ls5618339pfb.7.gmail; Mon, 17
 Aug 2020 02:20:29 -0700 (PDT)
X-Received: by 2002:a05:6a00:c9:: with SMTP id e9mr10652944pfj.224.1597656028903;
        Mon, 17 Aug 2020 02:20:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597656028; cv=none;
        d=google.com; s=arc-20160816;
        b=Lvmv/h93SftS/OggSG8PuE/iwHu8g7p6up0zbR4zBaUKmyPRjpA0XTgxA7XO6yYBOm
         vG4EcPD68FgDxlqJkFKgINAe/857Ckb7uY3xr+c0HQO0qAIneFISmmVKggbD4wv3py4P
         uQ+ySUwP1DDBQGUkAs0zN4xExX0UAypFe/GeJMKARwQQYMDQlteDQ2ohAKNF5RZnDwR+
         nx+p3x9pdig0gkxl9o9KCkAwr6uqhZgF+7Je2n1M2HDWkaqcFM2mo2+ciHhNqPSHNKvT
         4dq3yrt4MKSTLbYhQK3BGe9lHLb33DTUNYH7d5Mk9enjQVRHKRAi92TVUhb6Oft3Iv+E
         LhIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=QhPrNAdoeJw7hjMh0pGw+sjN4I+tDKGZ699gTXbu9Pc=;
        b=H64MywueCFTDBdgL7LUQVqE5i1OhPHjIFzoRYMvf5BYV5T13GcNKnEZ1k05oi7Qeqi
         4Ly+ARAbK90K02kbtHTD84QCyHrDnLKqyHGhCofUacl81DJtMeCwQIH1T/IJ0wY2yUr1
         X1FwT7gZqNp51AFE1B4EDJ08lrQg6qiRk80GArb60PaNQyJaUOpui400k5ME0lj4mML3
         +VzCkYWR0oA79v4SI33ZlABQBI4VIZkj5SgSV+WyXNDYBTosXttTLK2iouw3qLX7hIxi
         dOPvHAG6g9Dc7ESvMXqu6zdELbJll/f3Ta8yRNvJMRrmV1sFzotOYLWwG9KM2DqEErG6
         CyCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cTZNXtt7;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id t75si889724pfc.3.2020.08.17.02.20.28
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:20:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id p37so7829687pgl.3
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:20:28 -0700 (PDT)
X-Received: by 2002:a63:4545:: with SMTP id u5mr9191366pgk.229.1597656028627;
        Mon, 17 Aug 2020 02:20:28 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.20.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:20:28 -0700 (PDT)
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
Subject: [PATCH] platform: goldfish: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:12 +0530
Message-Id: <20200817091617.28119-18-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cTZNXtt7;       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::543
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
 drivers/platform/goldfish/goldfish_pipe.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/platform/goldfish/goldfish_pipe.c b/drivers/platform/goldfish/goldfish_pipe.c
index 1ab207ec9c94..b9bead07760c 100644
--- a/drivers/platform/goldfish/goldfish_pipe.c
+++ b/drivers/platform/goldfish/goldfish_pipe.c
@@ -577,10 +577,10 @@ static struct goldfish_pipe *signalled_pipes_pop_front(
 	return pipe;
 }
 
-static void goldfish_interrupt_task(unsigned long dev_addr)
+static void goldfish_interrupt_task(struct tasklet_struct *t)
 {
 	/* Iterate over the signalled pipes and wake them one by one */
-	struct goldfish_pipe_dev *dev = (struct goldfish_pipe_dev *)dev_addr;
+	struct goldfish_pipe_dev *dev = from_tasklet(dev, t, irq_tasklet);
 	struct goldfish_pipe *pipe;
 	int wakes;
 
@@ -811,8 +811,7 @@ static int goldfish_pipe_device_init(struct platform_device *pdev,
 {
 	int err;
 
-	tasklet_init(&dev->irq_tasklet, &goldfish_interrupt_task,
-		     (unsigned long)dev);
+	tasklet_setup(&dev->irq_tasklet, &goldfish_interrupt_task);
 
 	err = devm_request_irq(&pdev->dev, dev->irq,
 			       goldfish_pipe_interrupt,
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-18-allen.cryptic%40gmail.com.

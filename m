Return-Path: <linux-ntb+bncBCFYTA5O7QNRBSEW5H4QKGQEASIUINA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id A16D124628C
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:18:01 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id b136sf9930156pga.0
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:18:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655880; cv=pass;
        d=google.com; s=arc-20160816;
        b=VS8VJUdl+iejo7bqgUWoz/BbRnOpakc4tAld5n+YOhW8z0erw3EE5Qj3NUU5sM7VO+
         2XfQWgzxcv+2aLqyP2Xy1M2wMIOu5Tpk4KsVKzfKuMiWS2CltO7rBGiy0KUQiGFpMPMh
         F+8pESZLk7vfo7lkTb1kRTEQV/0+dDJAfp6fOuxn4lO9AXg38CnKfTdjnwDSVfc873EZ
         EZkZ0yucsvt1RczOmqWHqpm6UbkxpcV7Bs0XGE5D5K20lbio/adoF1/W2P7nAxsQ4n+m
         S0xLZ66oT2qWiuYPSstqOC9x4+uc0x+2qwwYKWtE05gG/b4E5fVSkH0v8lGH60Y5laQj
         JOpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=m1otwwb1KgW8sfiNnyp8qaKR1weTob1E54GIG4AkLxQ=;
        b=BcqqVp0zOLBKulJeJYFvxsM3Ja43ySurkCvE9u6WoY1bYrVNzbAbEdAvZuqQjTSNhf
         Z/+HFEgGfNHqLM+pAL6YMBQWpStXXnH11ibkpKdaySjoJA6SWk5xuUqgJTMg9Z4G33z5
         Aqe+qv7mLGshq7Ti7ZxCECJUM5N8157ooQr2ohQgJkFvu4HCRzM+FcfR9NdY5IuqhPrb
         YU9QevArlIq2jcOrTwaE1GaswPq2PJmKvQ/JDsFDXN3tTzJu7rDVkqqRcEgXUPu6dZF/
         GsQd5kBzaJ1OagXuwGTXRuobskLVX21+fIM3uAYbyjHKQMWjfb/IPaJH/5VZFov02uZ3
         1a/Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PyMcWayB;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1otwwb1KgW8sfiNnyp8qaKR1weTob1E54GIG4AkLxQ=;
        b=EHMrQhoSf0Moxy6201GZaoefmkn6FrVuGuOZYDGhcWWCjL5KKZCSqBhFIcvt9LGmG/
         /NCuPJuDxPbszjEOU/H/IXOCPQOz2KAF9KbmT3y+u5iz0DTDGDT4nxz/c+Wt98rAHW6T
         DvSMxttvxoMFLPIDCwB+LMEuZyYYorAPb4PDl8kn4sRqzlxbs8ViRyQQjapt275l9oba
         kM2Htb2vqP0f1xHWAk69OK+n9eYpEhx5d1BkihjGLXlVpNqeGpshoui6MwAL9CbuA9+E
         BsjUEbb22L3Dy/ZoTbrTPXROW1+GRcowRGgVsxsis8VpEqUOy1gCeGHFEyZZU4dWd7QA
         VQQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1otwwb1KgW8sfiNnyp8qaKR1weTob1E54GIG4AkLxQ=;
        b=Oyyal5vEQGer46JdVqRFA7Bi2+JY0QuVm263VHtC3sr6BL9RhRQ6r91UD8FdAlsEYE
         m4FvTHuRjH6e8OZEcbCuuLGQjCDjNeAAGRyhiG1Nx/XK+fP436a3PpImhtc0DYftAOJj
         cI7BkTnSM1U3xTw3MwoVtCKhFjocpHBJsDpQfqg08J66g6Bkn0MpiAXNI2NmaeTxTepb
         M/PiIrWlQ8XWQByY7/m+VWFNntR0yyydZ1MY6pos4l1g+k/qbWw3T0DBAuy8r+iXEEhJ
         TDItcMgIsBlFEQEcmreDGx0SRMSXD7ET8pYMpB5r6T/TW6gk3NNByCxIWMeCFtlKAs8B
         VxEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=m1otwwb1KgW8sfiNnyp8qaKR1weTob1E54GIG4AkLxQ=;
        b=EpWvmHFClRYRd2KNBaOQwkrUTt5sMoXoM9xoEXsxmn9f5CA4GHl4mQLJAsah6XXrAT
         8AntO1XJDpsZXLUFzyFbXkxHonFGAwDp8paoC06o+t7EKbBlU+utQK1BVdd0Cl7eJ9kI
         wqEQ8hPfXQi75XtQDcaP2bIKL468LJGbM/bEzUqUigW7hvmREmqAXw34fk3vAmaKE9bb
         kcPH9VO2S/aYgeTP24q4w4vdJwUxbOi9MPvs32PrzwnwQqLusLNQmpzm0abC2eTCtlAX
         bV0AtzjrFlmFGXbvpM+LCGzv2xX5ljoe6yVPENmOqJON8wK5F2rSgQQqxdf3r+BBmjyp
         wdsg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM531JJ2BBfriEWTe1Skwr43S7sSBB/BTke82XnWAZipAFfckcpqoc
	PLnwqQXwVrW8Bll3Taa1l1U=
X-Google-Smtp-Source: ABdhPJxUo6TgRfmtdVmN1Fhw7VUHpfv1KbAqVRn8RO1PekpbEtltCGoyPi2dKZRxIoiwizjd51zEcw==
X-Received: by 2002:a62:5c84:: with SMTP id q126mr10787121pfb.324.1597655880367;
        Mon, 17 Aug 2020 02:18:00 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:1988:: with SMTP id mv8ls6616122pjb.0.gmail; Mon, 17
 Aug 2020 02:18:00 -0700 (PDT)
X-Received: by 2002:a17:90b:110a:: with SMTP id gi10mr11976082pjb.206.1597655879972;
        Mon, 17 Aug 2020 02:17:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655879; cv=none;
        d=google.com; s=arc-20160816;
        b=uvV7eXz+VoBeoJASgoGXe8vjGWQiMnfu3X1UJVYgnxo/jG7zereAdfCiq6a1vTkjUg
         Gd2THdtsieC/32M2tgq6NCjCbyxPUKW5pQPhFSQcgKhzBAj02OZjR6oyJAwzlkCpcc7b
         F1XeAeIuAfYhVsKntrQeXyZsYJEWZPcgPN3fbDh/BG3ciIcMLZensPK+7L9kCkq4i21W
         v/Pr46OI7sZIlm/yu36n0bOJ6iqID/40fQc+jYMq9Y+r8w++ytYi4qlf98IWOpdYGDEf
         8Q6505WQq3mOV1iEeS7mdgYDFpoMSBuc8bs/ytclQFNrNx5sUNtPOLzHSzkHvDxszDHv
         hiug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=b4rgdbawNMIYfrAuQkyVo4UViOG64WWeDycX+5MFQIw=;
        b=w+slYVfrmp4b2t/XOc65hR9M9pDj59qZ2VJa55qk2dfG9T7/gxb+mqsiRIYvc1MSt4
         Yod8u7GrgdukyCFnjQnhSAdxGse6QcK1b23tSgLq4JbahKwCpATgdMmtEvd9FcizHs7t
         GvfAbWOJOXYpme5XMVSVCTdaS6z/HiuiUDmL1row7dumQsRMp6iNBWMpAonTxY0+9AwB
         i2YWT1322D9wqVrLiOXdwD6CUP+hHHJu3jdv8zPbcNbW58am/IA5z8U0J4QTU92jK3/H
         8NPo+xqLj8ik1k5qA65qfBnjdcHjK5gnvuYcx7grg8plIAv7znvIm1vK0xfuy8/1owu8
         jNnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PyMcWayB;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id q137si816761pfc.4.2020.08.17.02.17.59
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:17:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ep8so7403576pjb.3
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:17:59 -0700 (PDT)
X-Received: by 2002:a17:90a:a65:: with SMTP id o92mr11920119pjo.104.1597655879719;
        Mon, 17 Aug 2020 02:17:59 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.17.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:17:59 -0700 (PDT)
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
Subject: [PATCH] drivers: rapidio: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:01 +0530
Message-Id: <20200817091617.28119-7-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PyMcWayB;       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::1044
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
 drivers/rapidio/devices/tsi721_dma.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/rapidio/devices/tsi721_dma.c b/drivers/rapidio/devices/tsi721_dma.c
index d375c02059f3..4a2bb6d7c692 100644
--- a/drivers/rapidio/devices/tsi721_dma.c
+++ b/drivers/rapidio/devices/tsi721_dma.c
@@ -566,9 +566,9 @@ static void tsi721_advance_work(struct tsi721_bdma_chan *bdma_chan,
 		  bdma_chan->id);
 }
 
-static void tsi721_dma_tasklet(unsigned long data)
+static void tsi721_dma_tasklet(struct tasklet_struct *t)
 {
-	struct tsi721_bdma_chan *bdma_chan = (struct tsi721_bdma_chan *)data;
+	struct tsi721_bdma_chan *bdma_chan = from_tasklet(bdma_chan, t, tasklet);
 	u32 dmac_int, dmac_sts;
 
 	dmac_int = ioread32(bdma_chan->regs + TSI721_DMAC_INT);
@@ -988,8 +988,7 @@ int tsi721_register_dma(struct tsi721_device *priv)
 		INIT_LIST_HEAD(&bdma_chan->queue);
 		INIT_LIST_HEAD(&bdma_chan->free_list);
 
-		tasklet_init(&bdma_chan->tasklet, tsi721_dma_tasklet,
-			     (unsigned long)bdma_chan);
+		tasklet_setup(&bdma_chan->tasklet, tsi721_dma_tasklet);
 		list_add_tail(&bdma_chan->dchan.device_node,
 			      &mport->dma.channels);
 		nr_channels++;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-7-allen.cryptic%40gmail.com.

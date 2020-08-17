Return-Path: <linux-ntb+bncBCFYTA5O7QNRBT4X5H4QKGQEGP2O3PA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id E24D2246303
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:20:16 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id b136sf9933072pga.0
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:20:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597656015; cv=pass;
        d=google.com; s=arc-20160816;
        b=dsOpdU8+XvTUpUm4PvrOomnQdipMz4o6Pgs8SkqfaLkPXQPNK43WpiMH/Yg+yEL209
         +RguvIu4CtojxKhZ8cfW4iDif5QMw3COjq+GfzBCuBQseWm517Ww2Aea3zlKXkpA4eVP
         KNvHt3e0H//py+qCOmjnV1MozqXws5tl12yZQJfS2NEazoQvnOKdkaRwRKg80mJ0Vezw
         KE+NPx4o9FSrs7KR/9gjqmm3FHtPT7MsgpVCRSrtsMhtsx9dgiqsmsK5NiWtpbEFx5dk
         /hkFKDgFo5fkF3VHnqmXgIZLYBvK9I5qws/28dEw+d+yFIDPPBn/9jaK0vk6Rzfsuxi2
         Jt6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=8YIRZ9aoDIQVpYHTqU+Z8GRMjfECUqzt91fh/A7uIbM=;
        b=a3ni/gR3ozs8COxfTeJKoGVeC9DFP4c8IbTwsGRBTwrVelo6UOzncTq1RYLdkNzZ4B
         m7g/Xwn6pntcqDxwltJOz/qcK7zZ2UxB72/3q4QsR9umdqZOhr0uuFhR1oSUL0+nQ1g+
         +KBXZ32SUgjYfs7UOHndEdvYpcNT0UmO1QVNtQtRmgK8FzXamPprGubtWIJiHE9RcGdj
         LDuw5jrwjWN0Lxkgg69SuDniUNGQLgTixVTHz9giaFuwjnHNfwLrWnQd2mJ6Scl9F3xF
         l9yAACujueNzJy23+zbCfyYFcWfC52+wNAlnVSFaoVEIGYbDvkrVXxRK0az+AXXrWuuU
         kyUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FoufY+wC;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8YIRZ9aoDIQVpYHTqU+Z8GRMjfECUqzt91fh/A7uIbM=;
        b=ezNIaNaqy+Jm9SMiE+vE1fWhUiqInF9IW+4bgJigvzDJRYb6wDdPHE4O7ziQiD18xh
         Xl5ZinGYpxWX+GftoNbB2G+MYDW7gb/dvzPJS5Fri99BznlKWFpz90tV334VEXM+vegU
         cE/VPikD4V8++RX8uAMakv3pMo6E/8oDQgCi0/Zy/WRGMQIR1IoM0H1RFHi2RKgUP/CW
         hfKQQhnVEjv9VOCjrCOpF40x7q7twt/ztvyhwMttE1zruwrpGnk9CVOWfBALbRLdse+H
         zAo3Bz6tWXjqmVG/Kdvs0avcAz14VjRdPuLE73NJJqSWDTLYZKy6N5JzxaPsv6gjhAne
         D5fw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8YIRZ9aoDIQVpYHTqU+Z8GRMjfECUqzt91fh/A7uIbM=;
        b=Eg1HXxzzu1+DB4po1m44KzpwebNm/k44le/32T2zZJM4NPtK/vNA/Vt9sUGhQPmKlQ
         +b0Y+9Xj8LYqTJVsQVwRyHrwGF6DCBDAbtank8iWEP8gmO2TfJhE4h/Fn69/dX4HND9M
         d9s6qeAy8+84wDpywXCvmF8nO2h+WjLR7ZTwLlzHrLjhdq04VVXP73yOTHPaaYYJUR5m
         AeTxEyY9/M3RlW5V2HmjwlKiyFAUYh9vJZEM4JAIEQ01x2+YctfzFDJzYcCk1q8v+HGE
         g73POkGS7qfof8DmHkmsey/O8lDmxNS4lwDqjPClijnu6ov5t13wbqaozM79WwZ+Cici
         C82Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8YIRZ9aoDIQVpYHTqU+Z8GRMjfECUqzt91fh/A7uIbM=;
        b=l93i2DGlFYw8ooTkc66B1VCF9+gZl2wmwbun9vnJq1pQ9M328EIPQc7xwVwMO9RtCs
         /s4hZok/PFF9jzNYr6eSx7leUeiDCbten9cVIS93+81UT/1xW+xe9Ru/0V5nFj55NJeu
         7yhKZpDD59iJm6gRu2gb+7x7lYXY5up3b/RWzjOKoGs4gIG/KKs9qWpVzcG/zPu31WfD
         JilkchrFWG7t19mkQDkCvwRbEWqG6uIz2mXYJmmtjKSoVxE4g3cYIbaVvJPz7YvjFSgC
         yvRHVJqMYQcW3X7RgUckOa0DhqHeAIoOfyOKM8enLZUiEikfi0Mzvsy9sra80Je8R29c
         TMjg==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM53164ahiW5o8UrqQlkD4JZUloqtN63yOIdRZkpgMrvZnuR9oOcw0
	FMtZM+BUc5WNyYqCthWyoFs=
X-Google-Smtp-Source: ABdhPJzj5qLfBCsEikPyNuDmFd4VDMCPvVZrXhiyUvjZVFq8RLcgBaef0ZEI+R6eQ1BOJcrpzCenWg==
X-Received: by 2002:a05:6a00:1515:: with SMTP id q21mr10758427pfu.126.1597656015627;
        Mon, 17 Aug 2020 02:20:15 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a17:90b:358b:: with SMTP id mm11ls6613429pjb.2.gmail; Mon,
 17 Aug 2020 02:20:15 -0700 (PDT)
X-Received: by 2002:a17:902:6a88:: with SMTP id n8mr10961644plk.261.1597656015190;
        Mon, 17 Aug 2020 02:20:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597656015; cv=none;
        d=google.com; s=arc-20160816;
        b=mTAm/cTDn5RCBTbVw96ZPXjLcUDYN0fp1fmT7F5K1i7Q209dddeuOzeuTABaxvcbEo
         zdKoBT3fjUjZ1K4Y6Gz29z7+H9F8YzcwbkBkJr8pFcFEgOGGfDdAwq9CymDRxqYndWwX
         PbTIFn7yy3U7H8wJ3iclYqPYouKGh7LiIt2zYAuycisZPWP/mDA4RkOjXDTv4iYaLRCk
         KQ/e7m4psxoGk0E5mjQVqyxgV3bqXzqDxRC0QGej/zCEliBtAghFJnVS6ktogIEgRZJY
         MWh/qegSAVKruPXMm9rooOnDmcxLQ7i8qcYGviOjloS1ZjLgAPaz8bf6w+i6wPlub9Qa
         v+RQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=48ZUy5TmzQBYUzPrjZvYPJeHWlYkLbZYovshPbclrcg=;
        b=OCNj1iTawigBbRf9LTPLV796FB4uPQ3sKrEVYcbnXWJyp8DrrBG3fc/CTm/D10NDR/
         qUejV/e4ldjUJ3hbFqXtybKBfC1APA8+NVu9JCzpZD4rx7syI1K1vgHr7ApBuapXA/YP
         yhQLkSNkE79Lvc0r2lSTusUhU4U/ZUkbsMyEfTLqnOtspTAAmT3wwQljJfwHq10XlnRs
         qakXDydWkOZ4oXv3DR3BU+RMHVn/yW+ZpcCLlhyzwluSir99ZLNDibuVoAeLBgY0anaa
         wuEwfsru5r/mSFollQiO9PbTMdMkHOBgnnFXOw3WZ1WJcKnXlLM8wLXRyBmmMXArXC9i
         /sQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FoufY+wC;
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id c11si851510pjn.0.2020.08.17.02.20.15
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:20:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Received: by mail-pl1-x642.google.com with SMTP id t10so7189159plz.10
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:20:15 -0700 (PDT)
X-Received: by 2002:a17:902:bd85:: with SMTP id q5mr9922465pls.99.1597656014891;
        Mon, 17 Aug 2020 02:20:14 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:20:14 -0700 (PDT)
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
Subject: [PATCH] net: atm: convert tasklets callbacks to use from_tasklet()
Date: Mon, 17 Aug 2020 14:46:11 +0530
Message-Id: <20200817091617.28119-17-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=FoufY+wC;       spf=pass
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

Update all the callbacks of all tasklets by using
from_tasklet() and remove .data field.

Signed-off-by: Romain Perier <romain.perier@gmail.com>
Signed-off-by: Allen Pais <allen.lkml@gmail.com>
---
 net/atm/pppoatm.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/net/atm/pppoatm.c b/net/atm/pppoatm.c
index 579b66da1d95..3803be8470f7 100644
--- a/net/atm/pppoatm.c
+++ b/net/atm/pppoatm.c
@@ -416,7 +416,6 @@ static int pppoatm_assign_vcc(struct atm_vcc *atmvcc, void __user *arg)
 	pvcc->chan.mtu = atmvcc->qos.txtp.max_sdu - PPP_HDRLEN -
 	    (be.encaps == e_vc ? 0 : LLC_LEN);
 	pvcc->wakeup_tasklet = tasklet_proto;
-	pvcc->wakeup_tasklet.data = (unsigned long) &pvcc->chan;
 	err = ppp_register_channel(&pvcc->chan);
 	if (err != 0) {
 		kfree(pvcc);
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-17-allen.cryptic%40gmail.com.

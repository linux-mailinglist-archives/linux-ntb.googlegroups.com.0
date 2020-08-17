Return-Path: <linux-ntb+bncBCFYTA5O7QNRBFMX5H4QKGQEVMVFZTA@googlegroups.com>
X-Original-To: lists+linux-ntb@lfdr.de
Delivered-To: lists+linux-ntb@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id A3F832462D1
	for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 11:19:18 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id e26sf366175uam.16
        for <lists+linux-ntb@lfdr.de>; Mon, 17 Aug 2020 02:19:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597655957; cv=pass;
        d=google.com; s=arc-20160816;
        b=yrFXichZ7MYADIjxUDJEAgEQB3qwZmFGJJWddJYmliyLYDsTeGBedc3MvcCixrH2F/
         ptqZAvfZEt1ro9NxdzwFRGeyiNkzxF5bdxGO+z8qh8C9k16Q3rKUi00rf4+F8T8dsKu6
         nwIJ12FCP8LIxGwf0cwJ5RLcAgjqTB35flZqF+trzhOduKIQAdGg9u8ud2872MAzeEW0
         lhd5XibhVQWMMNZ9+sV96/7wgw97hbCXn9+Hss+mY+o8k1q7KsfB/tH+5zSHrZRNOunW
         N0p7l68M20qLDzBmVKRGTs91NkzIUIajirwwP1lkJylojPx17xcGR9r/bQ+eEjWbiPUZ
         Pf8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:references:in-reply-to:message-id
         :date:subject:cc:to:from:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=qTTkvUsY5PEJDMmGIbEZfXL+Jwf2lUjGHYiJ5sJXvdg=;
        b=mmfG9StYRjxTFKLm2Mu1h3JuawHDbWEtArLRp/PG9P240P7JGG2gJVteQlyhjgTkHf
         Pza0nlle1VH4vKUwdNqARRHpAZpGiSu4lpla5VN/ScmhNuja/qUT2pqPf5Uy4CEkL7H/
         Aav7bI/5Q7Iv32CFURW4SDcbdJGBXkWTqeoUGnMdOerq0V+QuLlRZr879/dFm5x5xASq
         xevHRF83jZ180URe/trk+QjfFfSHYs6mjCRxq31aI51BsZLRqHOlyf63pfmAKjgDfDze
         CGaJOe3vs8NpjxCoFVV+bMRLdB5qdyDskgsZ+Vf65Wn2H1Ho4Dj/wSjrtvRm5uVEJvgj
         iFXg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pH1u/a65";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qTTkvUsY5PEJDMmGIbEZfXL+Jwf2lUjGHYiJ5sJXvdg=;
        b=amHGtYspF1bA7iFYXUd+xvRao6VlN1caxqyEpa8zMvqpSGTzbmxpu/DyvF6TrgcIVp
         Aq5VDlCH206BKktIQ58t+kCo+B1/QW7IdL5h976JpkTAnp+pR6zOrP4fLD+RTC/+4mcS
         nicxuObvOnsJhAEjejr9nID4NESbn7XjdWZsX4qQSxgbMt9BFCGX6ZGlXOYrXEEIZJpv
         1be5eupC/1ZxOf6n6ohy9I3ooQZzP8MRNjHOOdzmeWhLtQRW+EwQK6gKTFOMaN0psm7W
         zD0YYvIBZRvA2WqHNrF+YgAzQz564zWyhqfkU3wnl7dG2/GyjpTeh/YIywDNY7JBT1Ai
         l8mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:to:cc:subject:date:message-id:in-reply-to
         :references:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qTTkvUsY5PEJDMmGIbEZfXL+Jwf2lUjGHYiJ5sJXvdg=;
        b=AP/z/4OcoM7qQNz02GBQTHgELSRctGD9KWSR4bXTfCPp3vA/9QVRmiRglDfNDbCS6t
         tBOnIEdQZeLpLjuaZ4mMfXueSZ8Hn56JIrRbzhtK1oYzgS320LLmaIbaVVu9RGdd2a8N
         Wr3rKL7A1Fbkg/wGWOdk6KP+3fELjp//Cpb5+Y/iCchSuLpGBUfn/gHBDvh32MpeUvUZ
         z5nkWdZmjsrd8tetc/NievWTvuOvTN6WJZ+TU2Nd9Nizp6bYLZXH1E/5h+4e7fkfTDKD
         B+NaL618v0qjxDyspz3nJorgBUsjtE8QM8FTH6qyWvJhL/mxAN1jXbdUSjQt7AkNgI5x
         28NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:from:to:cc:subject:date
         :message-id:in-reply-to:references:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qTTkvUsY5PEJDMmGIbEZfXL+Jwf2lUjGHYiJ5sJXvdg=;
        b=GsORZrO2c8811YZqXxycot/nZW92Mpj7w6CYJwBD6ZycpWy4HqctDb7Ut49vL/Bz1N
         lPNr//EzYmv0MoPyCjLy1mB0SI5LnQnHWSuNPUUa5zapWIh4t8ck9aB5U4g62FC48T6X
         asEQgldkIocYdJj9OTjHibwVNoPyh0TcL49et9Uap3vze/cq40ZH2/QMH7utIHC0aZyM
         A8WFKlGUHT5P3yn/yGFIs6MeRUYGh9tLJRCVqbnT2bWIGJQqlLqk2gJQSV41enMOA6tC
         l+v3fTkVs7FRKZHWmggQKs5jP5/yOVnW71Sa3aSVP4tYDBpn3g/d9Dafqrcs5KcSg8U/
         QyWQ==
Sender: linux-ntb@googlegroups.com
X-Gm-Message-State: AOAM530zfmMqj9YGbxQcRMw7OGsO1WXc648ALE1eRwBDtfN7sW/4vmD/
	FRPfwF1jgk367B3lpj4WGQE=
X-Google-Smtp-Source: ABdhPJwqJPplx1Y1vDQ6H8VRt7YD8BI4TIgKwmZvEeNpAiIncL6MMIkCcwGq6T0eko5UwBns5cjXpg==
X-Received: by 2002:a67:3242:: with SMTP id y63mr7029317vsy.72.1597655957729;
        Mon, 17 Aug 2020 02:19:17 -0700 (PDT)
MIME-Version: 1.0
X-BeenThere: linux-ntb@googlegroups.com
Received: by 2002:a1f:2254:: with SMTP id i81ls748607vki.6.gmail; Mon, 17 Aug
 2020 02:19:17 -0700 (PDT)
X-Received: by 2002:a1f:60d1:: with SMTP id u200mr7028839vkb.47.1597655957387;
        Mon, 17 Aug 2020 02:19:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597655957; cv=none;
        d=google.com; s=arc-20160816;
        b=aTONZkHy4RbniwLwP3j187DbezTB7rUdqq6nIuAz+rc+pMxb/N3WulcojRrPwR12Pb
         wcOVx4OmQiU7rVhyDfQydew0AO+l/9VKjY82g1+BS1nQ/XVurTUpFL50KivsWKLkybq0
         HS1sLTgQziloLeXYUuZHbR6zThH7I2MeMe0IPogLR3IdUtt1kNzQ5vwug/3x7Hk8YpnJ
         4tp2enxxD/UM9PO99v3jtOBjwXxGAzCC5Y/hCJeo2R9CcUB5sbQgginQZiyV8B1n4wlN
         T+wL4qKgicA986E3D/r4o1c/gYvz4yRAfqzwKJsK+s1Q2YcRXCt85fupvucdw34C8RDI
         3PPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=BhmC2dfR9Z2FpcZrdiI/rF+di1B3O2m2kCZjxi0Nzus=;
        b=GDOiWIP/54dezjd3PWVX0QKbR0Vxu4n93V4gvNMnZ5v+7MsBIwjDuT9gGipLD1DYhU
         jM6mkcO0iuDKLw+l4vSCgSDdHRLfrvT+5mxYGPeHh8AnAjKqDgyAoRuxH0TeFQ22x91S
         dqWcxuJafEY9jqnhDat3q1zFoWk5dGvSv6V2GbsjAf8OlFP+CuTxG0lr3NzP0OmpYJRu
         f7ZCF+USesc4D37aAT4JwCFqHCQ1Qfud3NFIU1JmSkRdQqHdf6t2pf4BvekU0L6elvd8
         FECRk41/J46lWylD/LgoJHObrx4htbF8y9yuwEpbrUPnFc7We98MxrnXBuX9Wqq3bEIz
         PaDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="pH1u/a65";
       spf=pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=allen.cryptic@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id p19si1130123vsn.2.2020.08.17.02.19.17
        for <linux-ntb@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Aug 2020 02:19:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Received: by mail-pf1-x444.google.com with SMTP id k18so7919350pfp.7
        for <linux-ntb@googlegroups.com>; Mon, 17 Aug 2020 02:19:17 -0700 (PDT)
X-Received: by 2002:a63:2e87:: with SMTP id u129mr9420810pgu.347.1597655956522;
        Mon, 17 Aug 2020 02:19:16 -0700 (PDT)
Received: from localhost.localdomain ([49.207.202.98])
        by smtp.gmail.com with ESMTPSA id r25sm15971028pgv.88.2020.08.17.02.19.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 02:19:15 -0700 (PDT)
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
Subject: [PATCH] input: serio: convert tasklets to use new tasklet_setup() API
Date: Mon, 17 Aug 2020 14:46:07 +0530
Message-Id: <20200817091617.28119-13-allen.cryptic@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200817091617.28119-1-allen.cryptic@gmail.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
X-Original-Sender: allen.cryptic@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="pH1u/a65";       spf=pass
 (google.com: domain of allen.cryptic@gmail.com designates 2607:f8b0:4864:20::444
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
 drivers/input/serio/hp_sdc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/input/serio/hp_sdc.c b/drivers/input/serio/hp_sdc.c
index 13eacf6ab431..91f8253ac66a 100644
--- a/drivers/input/serio/hp_sdc.c
+++ b/drivers/input/serio/hp_sdc.c
@@ -301,7 +301,7 @@ static irqreturn_t hp_sdc_nmisr(int irq, void *dev_id)
 
 unsigned long hp_sdc_put(void);
 
-static void hp_sdc_tasklet(unsigned long foo)
+static void hp_sdc_tasklet(struct tasklet_struct *unused)
 {
 	write_lock_irq(&hp_sdc.rtq_lock);
 
@@ -890,7 +890,7 @@ static int __init hp_sdc_init(void)
 	hp_sdc_status_in8();
 	hp_sdc_data_in8();
 
-	tasklet_init(&hp_sdc.task, hp_sdc_tasklet, 0);
+	tasklet_setup(&hp_sdc.task, hp_sdc_tasklet, 0);
 
 	/* Sync the output buffer registers, thus scheduling hp_sdc_tasklet. */
 	t_sync.actidx	= 0;
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "linux-ntb" group.
To unsubscribe from this group and stop receiving emails from it, send an email to linux-ntb+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/linux-ntb/20200817091617.28119-13-allen.cryptic%40gmail.com.
